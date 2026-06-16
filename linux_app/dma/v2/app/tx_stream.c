/*
 * tx_stream.c - Continuous, gap-free RFDC playback from a file on the SSD
 * via /dev/t510_dma_stream.
 *
 * The t510_dma_stream driver runs the TX AXI DMA channel as a single cyclic
 * descriptor chain over a multi-period ring buffer (mmap'd at offset
 * ring_bytes, PROT_READ|PROT_WRITE). Once started, the hardware plays
 * period 0,1,2,...,N-1,0,1,2,... forever without ever stopping -- there is
 * no terminate/restart gap between periods, only between START_TX and
 * STOP_TX.
 *
 * This tool pre-fills the entire ring from the input file before starting
 * the DMA, then for each period the hardware finishes playing
 * (T510_DMA_V2_IOC_WAIT_TX / GET_STATUS tx_hw_periods advances), refills the
 * period that is now furthest ahead of the play pointer with the next chunk
 * of the file. As long as the SSD read throughput keeps up with the period
 * playback rate, every sample is replayed with no gaps.
 *
 * If the refill falls behind (the hardware plays a period before it is
 * refilled), this is reported as an underrun: stale data was replayed. The
 * tool resyncs and continues (underruns are counted and written to the
 * --meta file, but do not stop playback).
 *
 * --loop wraps the input file at EOF for indefinite playback. Without
 * --loop, playback stops once every period filled from the file has been
 * played through once (the ring then contains only zeros at EOF).
 *
 * --sample-rate, --lo-freq and --adc-bits are recorded as metadata
 * describing the playback configuration; the actual RFDC sample-rate/
 * interpolation/NCO configuration is performed by the separate t510_rf_init
 * tool. --adc-bits is a placeholder for a future bit-unpacking stage; input
 * samples are read as raw int16.
 *
 * On SIGINT/SIGTERM, playback is stopped (STOP_TX) as soon as the current
 * refill step completes; the in-flight period may be cut short.
 */

#include <errno.h>
#include <getopt.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <time.h>
#include <unistd.h>

#include "t510_dma_stream_ioctl.h"

#define DEFAULT_DEVICE         "/dev/t510_dma_stream"
#define DEFAULT_DURATION_SEC   0.0     /* 0 = until EOF (or Ctrl+C if --loop) */
#define DEFAULT_SAMPLE_RATE_HZ 122.88e6
#define DEFAULT_LO_FREQ_HZ     1.5e6
#define DEFAULT_ADC_BITS       14U

static volatile sig_atomic_t g_stop;

static void on_signal(int signum)
{
    (void)signum;
    g_stop = 1;
}

static void install_signal_handlers(void)
{
    struct sigaction sa;

    memset(&sa, 0, sizeof(sa));
    sa.sa_handler = on_signal;
    sigaction(SIGINT, &sa, NULL);
    sigaction(SIGTERM, &sa, NULL);
}

static void usage(const char *prog)
{
    fprintf(stderr,
            "Usage: %s --input PATH [options]\n"
            "  --device PATH        DMA stream device (default " DEFAULT_DEVICE ")\n"
            "  --input PATH         input raw IQ file to replay (required)\n"
            "  --loop               wrap around to the start of the file at EOF\n"
            "  --duration SEC       total playback duration, 0 = until EOF\n"
            "                       (or until Ctrl+C if --loop) (default %.1f)\n"
            "  --sample-rate HZ     DAC sample rate, recorded as metadata (default %.0f)\n"
            "  --lo-freq HZ         TX LO / NCO frequency, recorded as metadata (default %.0f)\n"
            "  --adc-bits N         source data bit width, placeholder for future\n"
            "                       bit-unpacking (default %u, samples read as int16)\n"
            "  --meta PATH          write a key=value metadata summary to PATH\n",
            prog, DEFAULT_DURATION_SEC, DEFAULT_SAMPLE_RATE_HZ, DEFAULT_LO_FREQ_HZ,
            DEFAULT_ADC_BITS);
}

static double now_monotonic(void)
{
    struct timespec ts;

    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (double)ts.tv_sec + (double)ts.tv_nsec / 1.0e9;
}

static int write_meta(const char *meta_path, const char *input_path,
                       double sample_rate_hz, double lo_freq_hz, unsigned adc_bits,
                       double requested_duration_sec, uint32_t period_bytes,
                       uint32_t num_periods, uint64_t periods_filled,
                       uint64_t bytes_from_file, uint64_t underrun_count,
                       double elapsed_sec, const char *status)
{
    FILE *fp;

    if (!meta_path)
        return 0;

    fp = fopen(meta_path, "w");
    if (!fp) {
        perror("fopen(meta)");
        return -1;
    }

    fprintf(fp, "input_file=%s\n", input_path);
    fprintf(fp, "sample_rate_hz=%.3f\n", sample_rate_hz);
    fprintf(fp, "lo_freq_hz=%.3f\n", lo_freq_hz);
    fprintf(fp, "adc_bits=%u\n", adc_bits);
    fprintf(fp, "requested_duration_sec=%.3f\n", requested_duration_sec);
    fprintf(fp, "period_bytes=%u\n", period_bytes);
    fprintf(fp, "num_periods=%u\n", num_periods);
    fprintf(fp, "periods_filled=%llu\n", (unsigned long long)periods_filled);
    fprintf(fp, "bytes_from_file=%llu\n", (unsigned long long)bytes_from_file);
    fprintf(fp, "underrun_count=%llu\n", (unsigned long long)underrun_count);
    fprintf(fp, "elapsed_sec=%.3f\n", elapsed_sec);
    fprintf(fp, "status=%s\n", status);

    fclose(fp);
    return 0;
}

/* Read one period from the input file into tmpbuf, zero-padding on a short
 * final read. Returns the number of real (non-padding) bytes read, or -1 on
 * a read error. On EOF with !loop_input, *eof_reached is set to 1. */
static long fill_one_period(FILE *in_fp, uint8_t *tmpbuf, uint32_t period_bytes,
                             int loop_input, int *eof_reached)
{
    size_t got = fread(tmpbuf, 1, period_bytes, in_fp);

    if (got == 0) {
        if (ferror(in_fp))
            return -1;
        if (loop_input) {
            if (fseek(in_fp, 0, SEEK_SET) != 0)
                return -1;
            got = fread(tmpbuf, 1, period_bytes, in_fp);
            if (got == 0)
                return -1; /* empty file */
        } else {
            *eof_reached = 1;
            return 0;
        }
    }

    if (got < period_bytes) {
        memset(tmpbuf + got, 0, period_bytes - got);
        if (!loop_input)
            *eof_reached = 1;
    }

    return (long)got;
}

int main(int argc, char **argv)
{
    static const struct option long_opts[] = {
        { "device",      required_argument, NULL, 'd' },
        { "input",       required_argument, NULL, 'i' },
        { "loop",        no_argument,       NULL, 'L' },
        { "duration",    required_argument, NULL, 't' },
        { "sample-rate", required_argument, NULL, 'r' },
        { "lo-freq",     required_argument, NULL, 'f' },
        { "adc-bits",    required_argument, NULL, 'b' },
        { "meta",        required_argument, NULL, 'm' },
        { "help",        no_argument,       NULL, 'h' },
        { NULL, 0, NULL, 0 }
    };

    const char *device_path = DEFAULT_DEVICE;
    const char *input_path = NULL;
    const char *meta_path = NULL;
    int loop_input = 0;
    double duration_sec = DEFAULT_DURATION_SEC;
    double sample_rate_hz = DEFAULT_SAMPLE_RATE_HZ;
    double lo_freq_hz = DEFAULT_LO_FREQ_HZ;
    unsigned adc_bits = DEFAULT_ADC_BITS;
    int fd = -1;
    FILE *in_fp = NULL;
    uint8_t *tx_ring = MAP_FAILED;
    uint8_t *tmpbuf = NULL;
    struct t510_dma_v2_status status;
    size_t ring_bytes;
    uint64_t local_count = 0;
    uint64_t bytes_from_file = 0;
    uint64_t underrun_count = 0;
    int eof_reached = 0;
    double t_start;
    int finished_ok = 0;
    int opt;
    unsigned i;

    while ((opt = getopt_long(argc, argv, "d:i:Lt:r:f:b:m:h", long_opts, NULL)) != -1) {
        switch (opt) {
        case 'd': device_path = optarg; break;
        case 'i': input_path = optarg; break;
        case 'L': loop_input = 1; break;
        case 't': duration_sec = strtod(optarg, NULL); break;
        case 'r': sample_rate_hz = strtod(optarg, NULL); break;
        case 'f': lo_freq_hz = strtod(optarg, NULL); break;
        case 'b': adc_bits = (unsigned)strtoul(optarg, NULL, 10); break;
        case 'm': meta_path = optarg; break;
        case 'h':
            usage(argv[0]);
            return EXIT_SUCCESS;
        default:
            usage(argv[0]);
            return EXIT_FAILURE;
        }
    }

    if (!input_path) {
        fprintf(stderr, "error: --input is required\n");
        usage(argv[0]);
        return EXIT_FAILURE;
    }

    install_signal_handlers();

    in_fp = fopen(input_path, "rb");
    if (!in_fp) {
        perror("fopen(input)");
        return EXIT_FAILURE;
    }
    setvbuf(in_fp, NULL, _IOFBF, 1U << 20);

    fd = open(device_path, O_RDWR);
    if (fd < 0) {
        perror("open");
        fclose(in_fp);
        return EXIT_FAILURE;
    }

    if (ioctl(fd, T510_DMA_V2_IOC_GET_STATUS, &status) != 0) {
        perror("ioctl(get_status)");
        close(fd);
        fclose(in_fp);
        return EXIT_FAILURE;
    }

    ring_bytes = (size_t)status.period_bytes * (size_t)status.num_periods;

    tx_ring = mmap(NULL, ring_bytes, PROT_READ | PROT_WRITE, MAP_SHARED, fd, ring_bytes);
    if (tx_ring == MAP_FAILED) {
        perror("mmap(tx_ring)");
        close(fd);
        fclose(in_fp);
        return EXIT_FAILURE;
    }

    tmpbuf = malloc(status.period_bytes);
    if (!tmpbuf) {
        fprintf(stderr, "tx_stream: out of memory\n");
        munmap(tx_ring, ring_bytes);
        close(fd);
        fclose(in_fp);
        return EXIT_FAILURE;
    }

    fprintf(stderr,
            "tx_stream: device=%s input=%s loop=%d duration=%.3fs sample_rate=%.0fHz "
            "lo_freq=%.0fHz adc_bits=%u\n",
            device_path, input_path, loop_input, duration_sec, sample_rate_hz,
            lo_freq_hz, adc_bits);
    fprintf(stderr,
            "tx_stream: ring = %u periods x %u bytes (%zu bytes); press Ctrl+C to stop\n",
            status.num_periods, status.period_bytes, ring_bytes);

    t_start = now_monotonic();

    /* Pre-fill the entire ring before starting the DMA. */
    for (i = 0; i < status.num_periods && !eof_reached; i++) {
        long got = fill_one_period(in_fp, tmpbuf, status.period_bytes, loop_input, &eof_reached);

        if (got < 0) {
            fprintf(stderr, "tx_stream: error pre-filling ring from input file\n");
            goto fail;
        }
        memcpy(tx_ring + (size_t)i * status.period_bytes, tmpbuf, status.period_bytes);
        bytes_from_file += (uint64_t)got;
        local_count++;
    }

    if (ioctl(fd, T510_DMA_V2_IOC_START_TX) != 0) {
        perror("ioctl(start_tx)");
        goto fail;
    }

    while (!g_stop) {
        uint64_t hw_count;
        uint64_t since;
        uint32_t idx;
        long got;

        if (duration_sec > 0.0 && (now_monotonic() - t_start) >= duration_sec)
            break;

        if (ioctl(fd, T510_DMA_V2_IOC_GET_STATUS, &status) != 0) {
            perror("ioctl(get_status)");
            goto fail;
        }
        hw_count = status.tx_hw_periods;

        if (eof_reached) {
            if (local_count <= hw_count)
                break; /* every filled period has now played */

            since = hw_count;
            if (ioctl(fd, T510_DMA_V2_IOC_WAIT_TX, &since) != 0) {
                perror("ioctl(wait_tx)");
                goto fail;
            }
            continue;
        }

        if (local_count <= hw_count) {
            /* We fell behind: the period at index hw_count % num_periods is
             * either stale (local_count < hw_count, already replayed old
             * data) or is being played right now (local_count == hw_count,
             * refilling it would tear the in-flight period). Resync past it
             * so the next fill targets the period after the one currently
             * playing. */
            uint64_t lost = (hw_count + 1) - local_count;

            fprintf(stderr,
                    "tx_stream: underrun, %llu period(s) replayed stale data "
                    "(total underruns=%llu)\n",
                    (unsigned long long)lost, (unsigned long long)(underrun_count + lost));
            underrun_count += lost;
            local_count = hw_count + 1;
        }

        if (local_count >= hw_count + status.num_periods) {
            /* Ring is full; wait for the hardware to play another period
             * before refilling further. */
            since = hw_count;
            if (ioctl(fd, T510_DMA_V2_IOC_WAIT_TX, &since) != 0) {
                perror("ioctl(wait_tx)");
                goto fail;
            }
            continue;
        }

        got = fill_one_period(in_fp, tmpbuf, status.period_bytes, loop_input, &eof_reached);
        if (got < 0) {
            fprintf(stderr, "tx_stream: error reading input file\n");
            goto fail;
        }

        idx = (uint32_t)(local_count % status.num_periods);
        memcpy(tx_ring + (size_t)idx * status.period_bytes, tmpbuf, status.period_bytes);
        bytes_from_file += (uint64_t)got;
        local_count++;
    }

    finished_ok = 1;

fail:
    if (fd >= 0)
        ioctl(fd, T510_DMA_V2_IOC_STOP_TX);

    {
        double elapsed = now_monotonic() - t_start;

        fprintf(stderr,
                "tx_stream: %s after %.3fs: periods_filled=%llu bytes_from_file=%llu "
                "(%.3f MB) underruns=%llu\n",
                g_stop ? "stopped by signal" : (finished_ok ? "finished" : "aborted on error"),
                elapsed,
                (unsigned long long)local_count,
                (unsigned long long)bytes_from_file,
                (double)bytes_from_file / (1024.0 * 1024.0),
                (unsigned long long)underrun_count);

        write_meta(meta_path, input_path, sample_rate_hz, lo_freq_hz, adc_bits,
                   duration_sec, status.period_bytes, status.num_periods,
                   local_count, bytes_from_file, underrun_count, elapsed,
                   g_stop ? "stopped" : (finished_ok ? "complete" : "error"));
    }

    free(tmpbuf);
    if (tx_ring != MAP_FAILED)
        munmap(tx_ring, ring_bytes);
    if (fd >= 0)
        close(fd);
    fclose(in_fp);

    return (finished_ok || g_stop) ? EXIT_SUCCESS : EXIT_FAILURE;
}
