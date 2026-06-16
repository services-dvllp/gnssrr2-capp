/*
 * tx_stream.c - Continuous, gap-free RFDC replay from an SSD file via
 * /dev/t510_dma_stream, with a self-describing 512-byte RTXconfigInfo header.
 *
 * Lineage: the DMA ring-filling core (pre-fill, START_TX, GET_STATUS/WAIT_TX,
 * the underrun detect-and-resync, the per-period refill with zero-padded EOF
 * handling) is preserved from linux_app/dma/v2/app/tx_stream.c. The changes
 * required by this task are:
 *
 *   1. RFDC bring-up runs IN-PROCESS at startup via rfdc_init() instead of
 *      relying on the user running t510_rf_init by hand.
 *   2. Positional-only CLI (up to 15 parameters; see usage()).
 *   3. Two configuration modes:
 *        Case 1 (all 15 args): full CLI override; the file's 512-byte header
 *                 is skipped, not parsed.
 *        Case 2 (fewer args):  the first 512 bytes are read as an RTXconfigInfo
 *                 header and the capture parameters are inherited from it; any
 *                 parameters also given on the CLI override the header.
 *   4. IQ replay begins after the 512-byte header (plus Start_offset_sec).
 *   5. Auto_replay maps to the existing v2 loop-at-EOF behavior.
 *   6. The SIGINT/SIGTERM stop flag is named `stopg`, per the task.
 *
 * As in rx_stream, the RF parameters are stored/echoed only; they are NOT
 * pushed into the RFDC hardware (the vendored rfdc_init hard-codes its own
 * NCO/rate/gain and exposes no override API). Samples are raw int16 IQ.
 *
 * Start_offset_sec is converted to a byte offset using the verified DMA frame
 * size (RTX_FRAME_BYTES = 8 bytes/frame, from linux_app/dma/t510_dma_tool.c)
 * and the effective Fs (header/CLI). offset_bytes = floor(Start_offset_sec*Fs)
 * * 8, so the seek lands on a whole IQ frame.
 */

#include <errno.h>
#include <math.h>
#include <signal.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <time.h>
#include <unistd.h>

#include "t510_dma_stream_ioctl.h"
#include "rfdc_init.h"
#include "rtx_config.h"

#define DEFAULT_DEVICE   "/dev/t510_dma_stream"
#define TX_NUM_POS_ARGS  15   /* full positional argument count (Case 1) */

static volatile sig_atomic_t stopg;

static void on_signal(int signum)
{
    (void)signum;
    stopg = 1;
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
        "Usage: %s <Mode> <File_path> <Log_duration_sec> <LO_Hz> <LO_Hz_2>\n"
        "          <BW_Hz> <BW_Hz_2> <Fs_Hz> <Fs_Hz_2> <ADC_bits> <ADC_bits_2>\n"
        "          <Gain> <Gain_2> <Start_offset_sec> <Auto_replay>\n"
        "\n"
        "  Positional arguments only. Two modes:\n"
        "   Case 1 - all %d args: full CLI override; the file's 512-byte header\n"
        "            is skipped (not parsed).\n"
        "   Case 2 - fewer args (>= 2): the first 512 bytes are read as an\n"
        "            RTXconfigInfo header and the capture parameters are\n"
        "            inherited from it; any args you DO pass override the header.\n"
        "\n"
        "  Mode              integer, stored only (not interpreted)\n"
        "  File_path         input replay file (REQUIRED; has the 512-byte header)\n"
        "  Log_duration_sec  replay duration; 0 = until EOF (or Ctrl+C if looping)\n"
        "  LO/BW/Fs/ADC/Gain per channel; stored/echoed only, not applied to HW\n"
        "  Start_offset_sec  skip this many seconds of IQ before replaying\n"
        "  Auto_replay       non-zero = loop the file at EOF (continuous replay)\n",
        prog, TX_NUM_POS_ARGS);
}

static double now_monotonic(void)
{
    struct timespec ts;

    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (double)ts.tv_sec + (double)ts.tv_nsec / 1.0e9;
}

/* ---- validated positional-argument parsers ---- */

static int parse_double_arg(const char *s, const char *name, double *out)
{
    char *end;
    double v;

    errno = 0;
    v = strtod(s, &end);
    if (end == s || *end != '\0' || errno == ERANGE) {
        fprintf(stderr, "tx_stream: invalid value for %s: '%s'\n", name, s);
        return -1;
    }
    *out = v;
    return 0;
}

static int parse_u32_arg(const char *s, const char *name, uint32_t *out)
{
    char *end;
    unsigned long v;

    errno = 0;
    v = strtoul(s, &end, 10);
    if (end == s || *end != '\0' || errno == ERANGE || v > 0xFFFFFFFFUL) {
        fprintf(stderr, "tx_stream: invalid value for %s: '%s'\n", name, s);
        return -1;
    }
    *out = (uint32_t)v;
    return 0;
}

static int parse_i32_arg(const char *s, const char *name, int32_t *out)
{
    char *end;
    long v;

    errno = 0;
    v = strtol(s, &end, 10);
    if (end == s || *end != '\0' || errno == ERANGE || v < INT32_MIN || v > INT32_MAX) {
        fprintf(stderr, "tx_stream: invalid value for %s: '%s'\n", name, s);
        return -1;
    }
    *out = (int32_t)v;
    return 0;
}

/* Inherit the capture/RF parameters (not the replay-control ones) from a
 * validated file header. */
static void inherit_from_header(RTXconfigInfo *cfg, const RTXconfigInfo *hdr)
{
    cfg->mode       = hdr->mode;
    cfg->lo_hz      = hdr->lo_hz;
    cfg->lo_hz_2    = hdr->lo_hz_2;
    cfg->bw_hz      = hdr->bw_hz;
    cfg->bw_hz_2    = hdr->bw_hz_2;
    cfg->fs_hz      = hdr->fs_hz;
    cfg->fs_hz_2    = hdr->fs_hz_2;
    cfg->gain       = hdr->gain;
    cfg->gain_2     = hdr->gain_2;
    cfg->adc_bits   = hdr->adc_bits;
    cfg->adc_bits_2 = hdr->adc_bits_2;
    if (hdr->frame_bytes != 0)
        cfg->frame_bytes = hdr->frame_bytes;
    /* log_duration_sec / start_offset_sec / auto_replay are replay-control,
     * taken from CLI/defaults rather than the source recording. */
}

/* Overlay the CLI-provided positional args (positions 1..nargs) onto cfg, so
 * anything the user typed wins over header/defaults. Position 2 (File_path) is
 * a string, handled by the caller. Returns 0 / -1. */
static int overlay_tx_cli(int nargs, char **argv, RTXconfigInfo *cfg)
{
    if (nargs >= 1  && parse_i32_arg(argv[1], "Mode", &cfg->mode) != 0) return -1;
    /* argv[2] = File_path (string) handled by caller */
    if (nargs >= 3  && parse_double_arg(argv[3],  "Log_duration_sec", &cfg->log_duration_sec) != 0) return -1;
    if (nargs >= 4  && parse_double_arg(argv[4],  "LO_Hz",      &cfg->lo_hz)     != 0) return -1;
    if (nargs >= 5  && parse_double_arg(argv[5],  "LO_Hz_2",    &cfg->lo_hz_2)   != 0) return -1;
    if (nargs >= 6  && parse_double_arg(argv[6],  "BW_Hz",      &cfg->bw_hz)     != 0) return -1;
    if (nargs >= 7  && parse_double_arg(argv[7],  "BW_Hz_2",    &cfg->bw_hz_2)   != 0) return -1;
    if (nargs >= 8  && parse_double_arg(argv[8],  "Fs_Hz",      &cfg->fs_hz)     != 0) return -1;
    if (nargs >= 9  && parse_double_arg(argv[9],  "Fs_Hz_2",    &cfg->fs_hz_2)   != 0) return -1;
    if (nargs >= 10 && parse_u32_arg(argv[10], "ADC_bits",   &cfg->adc_bits)   != 0) return -1;
    if (nargs >= 11 && parse_u32_arg(argv[11], "ADC_bits_2", &cfg->adc_bits_2) != 0) return -1;
    if (nargs >= 12 && parse_double_arg(argv[12], "Gain",     &cfg->gain)      != 0) return -1;
    if (nargs >= 13 && parse_double_arg(argv[13], "Gain_2",   &cfg->gain_2)    != 0) return -1;
    if (nargs >= 14 && parse_double_arg(argv[14], "Start_offset_sec", &cfg->start_offset_sec) != 0) return -1;
    if (nargs >= 15 && parse_u32_arg(argv[15], "Auto_replay", &cfg->auto_replay) != 0) return -1;
    return 0;
}

/* Read one period from the input file into tmpbuf, zero-padding a short final
 * read. On EOF with loop_input, wraps back to payload_start (the first IQ byte,
 * after the 512-byte header + Start_offset). Returns real bytes read, or -1 on
 * error; sets *eof_reached on EOF without loop. (Same logic as v2, except the
 * wrap target is payload_start instead of 0.) */
static long fill_one_period(FILE *in_fp, uint8_t *tmpbuf, uint32_t period_bytes,
                             int loop_input, off_t payload_start, int *eof_reached)
{
    size_t got = fread(tmpbuf, 1, period_bytes, in_fp);

    if (got == 0) {
        if (ferror(in_fp))
            return -1;
        if (loop_input) {
            if (fseeko(in_fp, payload_start, SEEK_SET) != 0)
                return -1;
            got = fread(tmpbuf, 1, period_bytes, in_fp);
            if (got == 0)
                return -1; /* empty payload */
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
    RTXconfigInfo cfg;
    const char *input_path = NULL;
    const char *device_path = DEFAULT_DEVICE;
    int nargs = argc - 1;
    int full_override;
    int header_inherited = 0;
    int fd = -1;
    FILE *in_fp = NULL;
    uint8_t *tx_ring = MAP_FAILED;
    uint8_t *tmpbuf = NULL;
    struct t510_dma_v2_status status;
    size_t ring_bytes = 0;
    uint64_t local_count = 0;
    uint64_t bytes_from_file = 0;
    uint64_t underrun_count = 0;
    int eof_reached = 0;
    int loop_input;
    double duration_sec;
    double t_start = 0.0;
    off_t payload_start;
    off_t file_size;
    uint32_t frame_bytes;
    double fs_used;
    int finished_ok = 0;
    unsigned i;

    if (argc >= 2 && (strcmp(argv[1], "-h") == 0 || strcmp(argv[1], "--help") == 0)) {
        usage(argv[0]);
        return EXIT_SUCCESS;
    }

    if (nargs < 2) {
        fprintf(stderr,
            "tx_stream: need at least <Mode> <File_path> (tx must know which "
            "file to replay)\n");
        usage(argv[0]);
        return EXIT_FAILURE;
    }
    if (nargs > TX_NUM_POS_ARGS) {
        fprintf(stderr, "tx_stream: too many arguments (%d > %d)\n",
                nargs, TX_NUM_POS_ARGS);
        usage(argv[0]);
        return EXIT_FAILURE;
    }

    input_path = argv[2];
    full_override = (nargs == TX_NUM_POS_ARGS);

    rtx_config_set_defaults(&cfg, 1 /* is_tx */);

    /* Case 2: read and inherit from the 512-byte header (Case 1 skips it). */
    if (!full_override) {
        FILE *hf = fopen(input_path, "rb");
        if (!hf) {
            perror("fopen(input for header)");
            return EXIT_FAILURE;
        }
        RTXconfigInfo hdr;
        if (rtx_read_header(hf, &hdr) == 0 && hdr.magic == RTX_MAGIC) {
            inherit_from_header(&cfg, &hdr);
            header_inherited = 1;
            fprintf(stderr,
                "tx_stream: inherited capture parameters from 512-byte header\n");
        } else {
            fprintf(stderr,
                "tx_stream: no valid RTXconfigInfo header in '%s' (magic mismatch);"
                " using defaults for parameters not given on the CLI\n", input_path);
        }
        fclose(hf);
    } else {
        fprintf(stderr,
            "tx_stream: Case 1 - all %d args given; full CLI override, header "
            "skipped\n", TX_NUM_POS_ARGS);
    }

    /* CLI overlay (wins over header/defaults for whatever was provided). */
    if (overlay_tx_cli(nargs, argv, &cfg) != 0) {
        usage(argv[0]);
        return EXIT_FAILURE;
    }

    duration_sec = cfg.log_duration_sec;
    loop_input   = (cfg.auto_replay != 0);     /* Auto_replay -> loop at EOF */
    frame_bytes  = cfg.frame_bytes ? cfg.frame_bytes : RTX_FRAME_BYTES;
    fs_used      = cfg.fs_hz;

    fprintf(stderr,
        "tx_stream: effective config (%d args, %s)\n"
        "  Mode=%d  File_path=%s  Log_duration_sec=%.3f\n"
        "  LO_Hz=%.3f LO_Hz_2=%.3f  BW_Hz=%.3f BW_Hz_2=%.3f\n"
        "  Fs_Hz=%.3f Fs_Hz_2=%.3f  ADC_bits=%u ADC_bits_2=%u  Gain=%.3f Gain_2=%.3f\n"
        "  Start_offset_sec=%.6f  Auto_replay=%u  frame_bytes=%u\n"
        "  (RF params echoed only; not applied to RFDC hardware)\n",
        nargs,
        full_override ? "Case 1 full override"
                      : (header_inherited ? "Case 2 header-inherited" : "Case 2 defaults"),
        cfg.mode, input_path, cfg.log_duration_sec,
        cfg.lo_hz, cfg.lo_hz_2, cfg.bw_hz, cfg.bw_hz_2,
        cfg.fs_hz, cfg.fs_hz_2, cfg.adc_bits, cfg.adc_bits_2,
        cfg.gain, cfg.gain_2, cfg.start_offset_sec, cfg.auto_replay, frame_bytes);

    /* Compute where the IQ payload to replay starts: after the 512-byte header
     * plus Start_offset_sec converted to a whole-frame byte offset. */
    {
        double off_sec = cfg.start_offset_sec;
        uint64_t frames, offset_bytes;

        if (off_sec < 0.0) {
            fprintf(stderr, "tx_stream: Start_offset_sec < 0; treating as 0\n");
            off_sec = 0.0;
        }
        if (fs_used <= 0.0 && off_sec > 0.0) {
            fprintf(stderr,
                "tx_stream: Fs_Hz is %.3f; cannot convert Start_offset_sec to a "
                "byte offset. Aborting.\n", fs_used);
            return EXIT_FAILURE;
        }
        frames       = (uint64_t)floor(off_sec * fs_used);   /* floor -> whole frames */
        offset_bytes = frames * (uint64_t)frame_bytes;
        payload_start = (off_t)RTX_HEADER_BYTES + (off_t)offset_bytes;
    }

    /* Validate the file actually contains data at/after payload_start. */
    {
        struct stat st;
        if (stat(input_path, &st) != 0) {
            perror("stat(input)");
            return EXIT_FAILURE;
        }
        file_size = st.st_size;
        if (file_size < (off_t)RTX_HEADER_BYTES) {
            fprintf(stderr,
                "tx_stream: '%s' is %lld bytes, smaller than the 512-byte header\n",
                input_path, (long long)file_size);
            return EXIT_FAILURE;
        }
        if (payload_start >= file_size) {
            fprintf(stderr,
                "tx_stream: Start_offset_sec lands at byte %lld, at/after end of "
                "file (%lld bytes); nothing to replay\n",
                (long long)payload_start, (long long)file_size);
            return EXIT_FAILURE;
        }
    }

    /* --- RFDC bring-up in-process (before installing the streaming handler). --- */
    fprintf(stderr, "tx_stream: running RFDC init (tiles=%d, skip_mts=%d)...\n",
            RFDC_INIT_NUM_TILES, RFDC_INIT_SKIP_MTS);
    if (rfdc_init(RFDC_INIT_NUM_TILES, RFDC_INIT_SKIP_MTS) != 0) {
        fprintf(stderr, "tx_stream: rfdc_init() failed; aborting.\n");
        return EXIT_FAILURE;
    }

    install_signal_handlers();

    in_fp = fopen(input_path, "rb");
    if (!in_fp) {
        perror("fopen(input)");
        return EXIT_FAILURE;
    }
    setvbuf(in_fp, NULL, _IOFBF, 1U << 20);
    if (fseeko(in_fp, payload_start, SEEK_SET) != 0) {
        perror("fseeko(payload_start)");
        fclose(in_fp);
        return EXIT_FAILURE;
    }

    fd = open(device_path, O_RDWR);
    if (fd < 0) {
        perror("open(/dev/t510_dma_stream)");
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
            "tx_stream: ring = %u periods x %u bytes (%zu bytes); replaying from "
            "byte %lld; press Ctrl+C to stop\n",
            status.num_periods, status.period_bytes, ring_bytes,
            (long long)payload_start);

    t_start = now_monotonic();

    /* Pre-fill the entire ring before starting the DMA. */
    for (i = 0; i < status.num_periods && !eof_reached; i++) {
        long got = fill_one_period(in_fp, tmpbuf, status.period_bytes,
                                    loop_input, payload_start, &eof_reached);
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

    while (!stopg) {
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
            /* Underrun: hardware reached a period we hadn't refilled. Resync
             * past the currently-playing period. */
            uint64_t lost = (hw_count + 1) - local_count;

            fprintf(stderr,
                    "tx_stream: underrun, %llu period(s) replayed stale data "
                    "(total underruns=%llu)\n",
                    (unsigned long long)lost,
                    (unsigned long long)(underrun_count + lost));
            underrun_count += lost;
            local_count = hw_count + 1;
        }

        if (local_count >= hw_count + status.num_periods) {
            /* Ring full; wait for the hardware to play another period. */
            since = hw_count;
            if (ioctl(fd, T510_DMA_V2_IOC_WAIT_TX, &since) != 0) {
                perror("ioctl(wait_tx)");
                goto fail;
            }
            continue;
        }

        got = fill_one_period(in_fp, tmpbuf, status.period_bytes,
                               loop_input, payload_start, &eof_reached);
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
        double elapsed = (t_start > 0.0) ? (now_monotonic() - t_start) : 0.0;

        fprintf(stderr,
                "tx_stream: %s after %.3fs: periods_filled=%llu bytes_from_file=%llu "
                "(%.3f MB) underruns=%llu\n",
                stopg ? "stopped by signal"
                      : (finished_ok ? "finished" : "aborted on error"),
                elapsed,
                (unsigned long long)local_count,
                (unsigned long long)bytes_from_file,
                (double)bytes_from_file / (1024.0 * 1024.0),
                (unsigned long long)underrun_count);
    }

    free(tmpbuf);
    if (tx_ring != MAP_FAILED)
        munmap(tx_ring, ring_bytes);
    if (fd >= 0)
        close(fd);
    if (in_fp)
        fclose(in_fp);

    return (finished_ok || stopg) ? EXIT_SUCCESS : EXIT_FAILURE;
}
