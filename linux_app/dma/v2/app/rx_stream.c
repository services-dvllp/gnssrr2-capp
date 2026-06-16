/*
 * rx_stream.c - Continuous, gap-free RFDC capture to a file on the SSD via
 * /dev/t510_dma_stream.
 *
 * The t510_dma_stream driver runs the RX AXI DMA channel as a single cyclic
 * descriptor chain over a multi-period ring buffer (mmap'd at offset 0).
 * The hardware fills period 0,1,2,...,N-1,0,1,2,... forever without ever
 * stopping -- there is no terminate/restart gap between periods, only
 * between START_RX and STOP_RX.
 *
 * This tool mmaps the RX ring read-only and, for each period the hardware
 * finishes (T510_DMA_V2_IOC_WAIT_RX / GET_STATUS rx_hw_periods advances),
 * appends that period's bytes to the output file. As long as the SSD write
 * throughput keeps up with the period completion rate, every sample is
 * captured with no gaps.
 *
 * If the consumer falls behind by a full ring (num_periods periods) before
 * draining a period, that period has already been overwritten by the
 * hardware: this is reported as an overrun. The tool resyncs to the oldest
 * still-valid period and continues (overruns are counted and written to the
 * --meta file, but do not stop the capture).
 *
 * --sample-rate, --lo-freq and --adc-bits are recorded as metadata
 * describing the capture configuration; the actual RFDC sample-rate/
 * decimation/NCO configuration is performed by the separate t510_rf_init
 * tool. --adc-bits is a placeholder for a future bit-packing stage; samples
 * are stored as raw int16 (14-bit ADC data, sign-extended).
 *
 * On SIGINT/SIGTERM, the period currently being written is allowed to
 * finish, RX is stopped cleanly (STOP_RX), the output file is flushed and
 * closed, and a metadata summary is written.
 *
 * --flush-periods N (default 0) discards the first N periods captured after
 * START_RX instead of appending them to --output, since they may contain
 * stale backlog left over in the PL's RX FIFO from before START_RX (v1's
 * driver discarded 3 such periods unconditionally; v2 makes this opt-in and
 * app-side). These periods are still read off the ring (so local_count stays
 * in sync with the hardware) -- they are just not written to --output. If
 * --dump-flush PATH is also given, the discarded periods are written to that
 * separate file instead of being thrown away, for debugging/inspection.
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
#define DEFAULT_DURATION_SEC   0.0     /* 0 = until Ctrl+C */
#define DEFAULT_SAMPLE_RATE_HZ 122.88e6
#define DEFAULT_LO_FREQ_HZ     -1.5e6
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
            "Usage: %s --output PATH [options]\n"
            "  --device PATH        DMA stream device (default " DEFAULT_DEVICE ")\n"
            "  --output PATH        output raw IQ file, or '-' for stdout (required)\n"
            "  --duration SEC       capture duration, 0 = until Ctrl+C (default %.1f)\n"
            "  --sample-rate HZ     ADC sample rate, recorded as metadata (default %.0f)\n"
            "  --lo-freq HZ         RX LO / NCO frequency, recorded as metadata (default %.0f)\n"
            "  --adc-bits N         stored sample bit width, placeholder for future\n"
            "                       bit-packing (default %u, samples written as int16)\n"
            "  --meta PATH          write a key=value metadata summary to PATH\n"
            "  --flush-periods N    discard the first N periods after START_RX instead\n"
            "                       of writing them to --output (default 0 = disabled);\n"
            "                       use to drop stale PL-FIFO backlog at capture start\n"
            "  --dump-flush PATH    write the N discarded periods to PATH instead of\n"
            "                       throwing them away, for debugging/inspection\n",
            prog, DEFAULT_DURATION_SEC, DEFAULT_SAMPLE_RATE_HZ, DEFAULT_LO_FREQ_HZ,
            DEFAULT_ADC_BITS);
}

static double now_monotonic(void)
{
    struct timespec ts;

    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (double)ts.tv_sec + (double)ts.tv_nsec / 1.0e9;
}

static int write_full(FILE *fp, const void *buf, size_t len)
{
    size_t done = 0;
    const uint8_t *p = buf;

    while (done < len) {
        size_t rc = fwrite(p + done, 1, len - done, fp);
        if (rc == 0) {
            if (ferror(fp) && errno == EINTR) {
                clearerr(fp);
                continue;
            }
            return -1;
        }
        done += rc;
    }
    return 0;
}

static int write_meta(const char *meta_path, const char *output_path,
                       double sample_rate_hz, double lo_freq_hz, unsigned adc_bits,
                       double requested_duration_sec, uint32_t period_bytes,
                       uint32_t num_periods, uint64_t periods_written,
                       uint64_t bytes_written, uint64_t overrun_count,
                       uint64_t flush_periods, uint64_t flush_done,
                       const char *dump_flush_path,
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

    fprintf(fp, "output_file=%s\n", output_path);
    fprintf(fp, "sample_rate_hz=%.3f\n", sample_rate_hz);
    fprintf(fp, "lo_freq_hz=%.3f\n", lo_freq_hz);
    fprintf(fp, "adc_bits=%u\n", adc_bits);
    fprintf(fp, "requested_duration_sec=%.3f\n", requested_duration_sec);
    fprintf(fp, "period_bytes=%u\n", period_bytes);
    fprintf(fp, "num_periods=%u\n", num_periods);
    fprintf(fp, "periods_written=%llu\n", (unsigned long long)periods_written);
    fprintf(fp, "bytes_written=%llu\n", (unsigned long long)bytes_written);
    fprintf(fp, "overrun_count=%llu\n", (unsigned long long)overrun_count);
    fprintf(fp, "flush_periods_requested=%llu\n", (unsigned long long)flush_periods);
    fprintf(fp, "flush_periods_done=%llu\n", (unsigned long long)flush_done);
    fprintf(fp, "dump_flush_file=%s\n", dump_flush_path ? dump_flush_path : "");
    fprintf(fp, "elapsed_sec=%.3f\n", elapsed_sec);
    fprintf(fp, "status=%s\n", status);

    fclose(fp);
    return 0;
}

int main(int argc, char **argv)
{
    static const struct option long_opts[] = {
        { "device",      required_argument, NULL, 'd' },
        { "output",      required_argument, NULL, 'o' },
        { "duration",    required_argument, NULL, 't' },
        { "sample-rate", required_argument, NULL, 'r' },
        { "lo-freq",     required_argument, NULL, 'l' },
        { "adc-bits",    required_argument, NULL, 'b' },
        { "meta",        required_argument, NULL, 'm' },
        { "flush-periods", required_argument, NULL, 'F' },
        { "dump-flush",  required_argument, NULL, 'D' },
        { "help",        no_argument,       NULL, 'h' },
        { NULL, 0, NULL, 0 }
    };

    const char *device_path = DEFAULT_DEVICE;
    const char *output_path = NULL;
    const char *meta_path = NULL;
    const char *dump_flush_path = NULL;
    double duration_sec = DEFAULT_DURATION_SEC;
    double sample_rate_hz = DEFAULT_SAMPLE_RATE_HZ;
    double lo_freq_hz = DEFAULT_LO_FREQ_HZ;
    unsigned adc_bits = DEFAULT_ADC_BITS;
    uint64_t flush_periods = 0;
    uint64_t flush_remaining;
    int fd = -1;
    FILE *out_fp = NULL;
    FILE *dump_fp = NULL;
    uint8_t *rx_ring = MAP_FAILED;
    struct t510_dma_v2_status status;
    size_t ring_bytes;
    uint64_t local_count = 0;
    uint64_t bytes_written = 0;
    uint64_t overrun_count = 0;
    double t_start;
    int finished_ok = 0;
    int opt;

    while ((opt = getopt_long(argc, argv, "d:o:t:r:l:b:m:F:D:h", long_opts, NULL)) != -1) {
        switch (opt) {
        case 'd': device_path = optarg; break;
        case 'o': output_path = optarg; break;
        case 't': duration_sec = strtod(optarg, NULL); break;
        case 'r': sample_rate_hz = strtod(optarg, NULL); break;
        case 'l': lo_freq_hz = strtod(optarg, NULL); break;
        case 'b': adc_bits = (unsigned)strtoul(optarg, NULL, 10); break;
        case 'm': meta_path = optarg; break;
        case 'F': flush_periods = strtoull(optarg, NULL, 10); break;
        case 'D': dump_flush_path = optarg; break;
        case 'h':
            usage(argv[0]);
            return EXIT_SUCCESS;
        default:
            usage(argv[0]);
            return EXIT_FAILURE;
        }
    }
    flush_remaining = flush_periods;

    if (!output_path) {
        fprintf(stderr, "error: --output is required\n");
        usage(argv[0]);
        return EXIT_FAILURE;
    }

    install_signal_handlers();

    fd = open(device_path, O_RDWR);
    if (fd < 0) {
        perror("open");
        return EXIT_FAILURE;
    }

    if (ioctl(fd, T510_DMA_V2_IOC_GET_STATUS, &status) != 0) {
        perror("ioctl(get_status)");
        close(fd);
        return EXIT_FAILURE;
    }

    ring_bytes = (size_t)status.period_bytes * (size_t)status.num_periods;

    rx_ring = mmap(NULL, ring_bytes, PROT_READ, MAP_SHARED, fd, 0);
    if (rx_ring == MAP_FAILED) {
        perror("mmap(rx_ring)");
        close(fd);
        return EXIT_FAILURE;
    }

    if (strcmp(output_path, "-") == 0) {
        out_fp = stdout;
    } else {
        out_fp = fopen(output_path, "wb");
        if (!out_fp) {
            perror("fopen(output)");
            munmap(rx_ring, ring_bytes);
            close(fd);
            return EXIT_FAILURE;
        }
        setvbuf(out_fp, NULL, _IOFBF, 1U << 20);
    }

    if (dump_flush_path) {
        dump_fp = fopen(dump_flush_path, "wb");
        if (!dump_fp) {
            perror("fopen(dump-flush)");
            if (out_fp != stdout)
                fclose(out_fp);
            munmap(rx_ring, ring_bytes);
            close(fd);
            return EXIT_FAILURE;
        }
        setvbuf(dump_fp, NULL, _IOFBF, 1U << 20);
    }

    fprintf(stderr,
            "rx_stream: device=%s output=%s duration=%.3fs sample_rate=%.0fHz "
            "lo_freq=%.0fHz adc_bits=%u\n",
            device_path, output_path, duration_sec, sample_rate_hz, lo_freq_hz, adc_bits);
    if (flush_periods > 0)
        fprintf(stderr,
                "rx_stream: discarding first %llu period(s) after START_RX%s\n",
                (unsigned long long)flush_periods,
                dump_flush_path ? " (dumping to --dump-flush file)" : "");
    fprintf(stderr,
            "rx_stream: ring = %u periods x %u bytes (%zu bytes); press Ctrl+C to stop\n",
            status.num_periods, status.period_bytes, ring_bytes);

    t_start = now_monotonic();

    if (ioctl(fd, T510_DMA_V2_IOC_START_RX) != 0) {
        perror("ioctl(start_rx)");
        goto fail;
    }

    while (!g_stop) {
        uint64_t hw_count;
        uint64_t since;

        if (duration_sec > 0.0 && (now_monotonic() - t_start) >= duration_sec)
            break;

        if (ioctl(fd, T510_DMA_V2_IOC_GET_STATUS, &status) != 0) {
            perror("ioctl(get_status)");
            goto fail;
        }
        hw_count = status.rx_hw_periods;

        if (hw_count == local_count) {
            /* Nothing new yet: block until the next period completes. */
            since = local_count;
            if (ioctl(fd, T510_DMA_V2_IOC_WAIT_RX, &since) != 0) {
                perror("ioctl(wait_rx)");
                goto fail;
            }
            continue;
        }

        if (hw_count - local_count >= status.num_periods) {
            /* We fell behind by a full ring: the oldest unread periods were
             * already overwritten by the hardware (or are being overwritten
             * right now -- the period at index hw_count % num_periods is the
             * one currently being written by the DMA). Resync to the oldest
             * period that is guaranteed complete and not concurrently
             * written: hw_count - (num_periods - 1). */
            uint64_t lost = (hw_count - local_count) - (status.num_periods - 1);

            fprintf(stderr,
                    "rx_stream: overrun, lost %llu period(s) (total overruns=%llu)\n",
                    (unsigned long long)lost, (unsigned long long)(overrun_count + lost));
            overrun_count += lost;
            local_count = hw_count - (status.num_periods - 1);
        }

        while (local_count < hw_count && !g_stop) {
            uint32_t idx = (uint32_t)(local_count % status.num_periods);

            if (flush_remaining > 0) {
                if (dump_fp &&
                    write_full(dump_fp, rx_ring + (size_t)idx * status.period_bytes,
                               status.period_bytes) != 0) {
                    perror("fwrite(dump-flush)");
                    goto fail;
                }
                flush_remaining--;
                local_count++;

                if (duration_sec > 0.0 && (now_monotonic() - t_start) >= duration_sec)
                    break;
                continue;
            }

            if (write_full(out_fp, rx_ring + (size_t)idx * status.period_bytes,
                            status.period_bytes) != 0) {
                perror("fwrite(output)");
                goto fail;
            }
            bytes_written += status.period_bytes;
            local_count++;

            if (duration_sec > 0.0 && (now_monotonic() - t_start) >= duration_sec)
                break;
        }
    }

    finished_ok = 1;

fail:
    if (fd >= 0)
        ioctl(fd, T510_DMA_V2_IOC_STOP_RX);

    {
        double elapsed = now_monotonic() - t_start;

        fprintf(stderr,
                "rx_stream: %s after %.3fs: periods=%llu bytes=%llu (%.3f MB) overruns=%llu\n",
                g_stop ? "stopped by signal" : (finished_ok ? "finished" : "aborted on error"),
                elapsed,
                (unsigned long long)local_count,
                (unsigned long long)bytes_written,
                (double)bytes_written / (1024.0 * 1024.0),
                (unsigned long long)overrun_count);

        write_meta(meta_path, output_path, sample_rate_hz, lo_freq_hz, adc_bits,
                   duration_sec, status.period_bytes, status.num_periods,
                   local_count - (flush_periods - flush_remaining), bytes_written,
                   overrun_count, flush_periods, flush_periods - flush_remaining,
                   dump_flush_path, elapsed,
                   g_stop ? "stopped" : (finished_ok ? "complete" : "error"));
    }

    if (out_fp && out_fp != stdout) {
        fflush(out_fp);
        fclose(out_fp);
    } else if (out_fp) {
        fflush(out_fp);
    }

    if (dump_fp) {
        fflush(dump_fp);
        fclose(dump_fp);
    }

    if (rx_ring != MAP_FAILED)
        munmap(rx_ring, ring_bytes);
    if (fd >= 0)
        close(fd);

    return (finished_ok || g_stop) ? EXIT_SUCCESS : EXIT_FAILURE;
}
