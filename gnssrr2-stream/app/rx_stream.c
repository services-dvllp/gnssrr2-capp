/*
 * rx_stream.c - Continuous, gap-free RFDC capture to an SSD file via
 * /dev/t510_dma_stream, with an embedded self-describing 512-byte header.
 *
 * Lineage: the DMA ring-draining core (START_RX, GET_STATUS/WAIT_RX, the
 * overrun detect-and-resync, the period copy-out) is preserved from
 * linux_app/dma/v2/app/rx_stream.c. The changes required by this task are:
 *
 *   1. RFDC bring-up is run IN-PROCESS at startup via rfdc_init() (vendored
 *      from main_linux.c / t510_rf_init) instead of relying on the user
 *      running t510_rf_init by hand.
 *   2. The CLI is positional-only (13 parameters; see usage()), not getopt.
 *   3. The output file is self-describing: a 512-byte RTXconfigInfo header is
 *      written before any IQ, and rewritten on exit with the final IQ byte
 *      count. (v2 instead wrote a separate text --meta file.)
 *   4. The SIGINT/SIGTERM stop flag is named `stopg`, per the task.
 *   5. The SSD write path uses O_DIRECT instead of a buffered FILE*. At the
 *      ~983 MB/s DMA rate the page cache fills faster than NVMe writeback can
 *      drain it, so the kernel throttles the writer (dirty-ratio balancing);
 *      that back-pressure stalls the drain loop, the ring overruns, and the
 *      capture file ends up far smaller than expected (only the periods that
 *      were actually written survive). O_DIRECT bypasses the page cache so the
 *      write cost is bounded by the SSD itself, and completed periods are
 *      coalesced into one large write per drain to cut syscall overhead.
 *
 *      O_DIRECT requires block-aligned buffer / length / file-offset and a
 *      pinnable (GUP-able) source buffer. The DMA ring is a dma_mmap_coherent
 *      mapping (VM_PFNMAP, non-cacheable) which O_DIRECT cannot pin, so periods
 *      are memcpy'd from the ring into a page-aligned RAM bounce buffer first
 *      (the old buffered FILE* did an equivalent copy into its stdio buffer).
 *      The 512-byte header keeps the IQ payload at file offset 512; that is a
 *      multiple of a 512-byte logical sector, so O_DIRECT works on the usual
 *      512e NVMe. On a 4Kn device the 512-byte header write returns EINVAL and
 *      the code transparently falls back to a buffered (page-cache) write.
 *
 * The RF parameters (LO/BW/Fs/ADC-bits/Gain, per channel) are accepted and
 * stored in the header for self-description only. They are NOT pushed into the
 * RFDC hardware: the vendored RFDC init (main_linux.c) hard-codes its NCO/rate/
 * gain configuration and exposes no API to override it per-call, so applying
 * these CLI values would require inventing driver behavior that does not exist.
 * The samples are always the raw int16 IQ stream the DMA delivers.
 */

#ifndef _GNU_SOURCE
#define _GNU_SOURCE   /* O_DIRECT */
#endif

#include <errno.h>
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
#include "rfdc_init.h"
#include "rtx_config.h"

#define DEFAULT_DEVICE       "/dev/t510_dma_stream"
#define DEFAULT_OUTPUT_PATH  "rx_capture.bin"
#define RX_NUM_POS_ARGS      13   /* full positional argument count */

/* Global stop flag (task-mandated name). Set from the signal handler; the
 * streaming loop polls it and exits only after the current period completes. */
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
        "          <Gain> <Gain_2>\n"
        "\n"
        "  Positional arguments only (%d total). Provide them left-to-right;\n"
        "  any not supplied keep their built-in defaults. With fewer than 2\n"
        "  arguments, all built-in defaults are used.\n"
        "\n"
        "  Mode              integer, stored in the file header (not interpreted)\n"
        "  File_path         output capture file (default: %s)\n"
        "  Log_duration_sec  capture duration; 0 = until Ctrl+C (default 0)\n"
        "  LO_Hz/LO_Hz_2     LO/NCO per channel  (stored in header only)\n"
        "  BW_Hz/BW_Hz_2     bandwidth per channel (stored in header only)\n"
        "  Fs_Hz/Fs_Hz_2     sample rate per channel (stored in header only)\n"
        "  ADC_bits/_2       ADC bit depth per channel (stored in header only)\n"
        "  Gain/Gain_2       gain per channel (stored in header only)\n",
        prog, RX_NUM_POS_ARGS, DEFAULT_OUTPUT_PATH);
}

static double now_monotonic(void)
{
    struct timespec ts;

    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (double)ts.tv_sec + (double)ts.tv_nsec / 1.0e9;
}

/* ---- validated positional-argument parsers (report, never silently ignore) ---- */

static int parse_double_arg(const char *s, const char *name, double *out)
{
    char *end;
    double v;

    errno = 0;
    v = strtod(s, &end);
    if (end == s || *end != '\0' || errno == ERANGE) {
        fprintf(stderr, "rx_stream: invalid value for %s: '%s'\n", name, s);
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
        fprintf(stderr, "rx_stream: invalid value for %s: '%s'\n", name, s);
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
        fprintf(stderr, "rx_stream: invalid value for %s: '%s'\n", name, s);
        return -1;
    }
    *out = (int32_t)v;
    return 0;
}

/* Parse up to RX_NUM_POS_ARGS positional args into cfg/out_output_path.
 * Returns 0 on success, -1 on a malformed value or too many args. */
static int parse_rx_args(int argc, char **argv, RTXconfigInfo *cfg,
                          const char **out_output_path)
{
    int n = argc - 1;   /* number of positional args */

    if (n > RX_NUM_POS_ARGS) {
        fprintf(stderr, "rx_stream: too many arguments (%d > %d)\n",
                n, RX_NUM_POS_ARGS);
        return -1;
    }

    if (n < 2) {
        /* Task rule: fewer than 2 arguments -> hard-coded defaults. */
        if (n == 1)
            fprintf(stderr,
                "rx_stream: only 1 argument given (< 2); ignoring it and using "
                "built-in defaults\n");
        return 0;
    }

    /* >= 2 args: fill left-to-right; unspecified fields keep defaults. */
    if (parse_i32_arg(argv[1], "Mode", &cfg->mode) != 0) return -1;
    *out_output_path = argv[2];
    if (n >= 3  && parse_double_arg(argv[3],  "Log_duration_sec", &cfg->log_duration_sec) != 0) return -1;
    if (n >= 4  && parse_double_arg(argv[4],  "LO_Hz",      &cfg->lo_hz)     != 0) return -1;
    if (n >= 5  && parse_double_arg(argv[5],  "LO_Hz_2",    &cfg->lo_hz_2)   != 0) return -1;
    if (n >= 6  && parse_double_arg(argv[6],  "BW_Hz",      &cfg->bw_hz)     != 0) return -1;
    if (n >= 7  && parse_double_arg(argv[7],  "BW_Hz_2",    &cfg->bw_hz_2)   != 0) return -1;
    if (n >= 8  && parse_double_arg(argv[8],  "Fs_Hz",      &cfg->fs_hz)     != 0) return -1;
    if (n >= 9  && parse_double_arg(argv[9],  "Fs_Hz_2",    &cfg->fs_hz_2)   != 0) return -1;
    if (n >= 10 && parse_u32_arg(argv[10], "ADC_bits",   &cfg->adc_bits)   != 0) return -1;
    if (n >= 11 && parse_u32_arg(argv[11], "ADC_bits_2", &cfg->adc_bits_2) != 0) return -1;
    if (n >= 12 && parse_double_arg(argv[12], "Gain",     &cfg->gain)      != 0) return -1;
    if (n >= 13 && parse_double_arg(argv[13], "Gain_2",   &cfg->gain_2)    != 0) return -1;

    return 0;
}

static void print_effective_config(const RTXconfigInfo *cfg, const char *output_path,
                                    int nargs)
{
    fprintf(stderr,
        "rx_stream: effective config (%d/%d positional args provided)\n"
        "  Mode=%d  File_path=%s  Log_duration_sec=%.3f\n"
        "  LO_Hz=%.3f LO_Hz_2=%.3f  BW_Hz=%.3f BW_Hz_2=%.3f\n"
        "  Fs_Hz=%.3f Fs_Hz_2=%.3f  ADC_bits=%u ADC_bits_2=%u  Gain=%.3f Gain_2=%.3f\n"
        "  (RF params are stored in the header only; not applied to RFDC hardware)\n",
        nargs, RX_NUM_POS_ARGS,
        cfg->mode, output_path, cfg->log_duration_sec,
        cfg->lo_hz, cfg->lo_hz_2, cfg->bw_hz, cfg->bw_hz_2,
        cfg->fs_hz, cfg->fs_hz_2, cfg->adc_bits, cfg->adc_bits_2,
        cfg->gain, cfg->gain_2);
}

/* Buffer/length/offset alignment used for O_DIRECT. 4096 is a multiple of the
 * 512-byte logical sector of the usual 512e NVMe, so an aligned buffer / length
 * here is always valid; it also covers 4Kn devices for the period writes (the
 * only write that is not a multiple of 4096 is the 512-byte header, which the
 * EINVAL fallback handles). */
#define RX_DIRECT_ALIGN   4096u

/* pwrite() the whole buffer at an explicit offset, looping over short writes
 * and EINTR. Used for both the header (offset 0) and the IQ payload, so the
 * file position is never relied upon. Under O_DIRECT every short write returns
 * a block-aligned count, so the remaining (buf, len, off) stay aligned. */
static int write_all_at(int fd, const void *buf, size_t len, off_t off)
{
    const uint8_t *p = buf;

    while (len > 0) {
        ssize_t rc = pwrite(fd, p, len, off);
        if (rc < 0) {
            if (errno == EINTR)
                continue;
            return -1;
        }
        if (rc == 0)
            return -1;
        p   += rc;
        off += rc;
        len -= (size_t)rc;
    }
    return 0;
}

/* Write (or rewrite) the 512-byte header at file offset 0, through the
 * page-aligned scratch buffer so the source is valid for O_DIRECT. */
static int write_header_at(int fd, const RTXconfigInfo *cfg, void *hdr_buf)
{
    memcpy(hdr_buf, cfg, sizeof(*cfg));   /* sizeof == RTX_HEADER_BYTES (512) */
    return write_all_at(fd, hdr_buf, RTX_HEADER_BYTES, 0);
}

int main(int argc, char **argv)
{
    RTXconfigInfo cfg;
    const char *output_path = DEFAULT_OUTPUT_PATH;
    const char *device_path = DEFAULT_DEVICE;
    int nargs = argc - 1;
    int fd = -1;
    int out_fd = -1;
    int direct = 0;                 /* 1 while the output fd is O_DIRECT */
    void *bounce = NULL;            /* page-aligned RAM staging for O_DIRECT */
    void *hdr_buf = NULL;           /* page-aligned 512-byte header scratch */
    uint8_t *rx_ring = MAP_FAILED;
    struct t510_dma_v2_status status;
    size_t ring_bytes = 0;
    off_t payload_off = RTX_HEADER_BYTES;   /* IQ starts right after the header */
    uint64_t local_count = 0;
    uint64_t bytes_written = 0;     /* IQ payload bytes (excludes 512 header) */
    uint64_t overrun_count = 0;
    double duration_sec;
    double t_start = 0.0;
    int finished_ok = 0;

    if (argc >= 2 && (strcmp(argv[1], "-h") == 0 || strcmp(argv[1], "--help") == 0)) {
        usage(argv[0]);
        return EXIT_SUCCESS;
    }

    rtx_config_set_defaults(&cfg, 0 /* is_tx */);
    if (parse_rx_args(argc, argv, &cfg, &output_path) != 0) {
        usage(argv[0]);
        return EXIT_FAILURE;
    }
    duration_sec = cfg.log_duration_sec;
    print_effective_config(&cfg, output_path, nargs);

    /* --- RFDC bring-up in-process (before installing the streaming SIGINT
     * handler, so a stuck bring-up stays killable with the default Ctrl+C
     * disposition, matching the standalone t510_rf_init). --- */
    fprintf(stderr, "rx_stream: running RFDC init (tiles=%d, skip_mts=%d)...\n",
            RFDC_INIT_NUM_TILES, RFDC_INIT_SKIP_MTS);
    if (rfdc_init(RFDC_INIT_NUM_TILES, RFDC_INIT_SKIP_MTS) != 0) {
        fprintf(stderr, "rx_stream: rfdc_init() failed; aborting.\n");
        return EXIT_FAILURE;
    }

    install_signal_handlers();

    fd = open(device_path, O_RDWR);
    if (fd < 0) {
        perror("open(/dev/t510_dma_stream)");
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

    /* Page-aligned staging buffers for O_DIRECT: a header scratch (one block)
     * and a bounce buffer big enough to coalesce a full ring's worth of
     * completed periods into one write. Both are valid GUP-able RAM, unlike the
     * dma_mmap_coherent rx_ring. */
    if (posix_memalign(&hdr_buf, RX_DIRECT_ALIGN, RX_DIRECT_ALIGN) != 0 ||
        posix_memalign(&bounce, RX_DIRECT_ALIGN, ring_bytes) != 0) {
        fprintf(stderr, "rx_stream: failed to allocate aligned write buffers\n");
        hdr_buf = NULL;   /* posix_memalign leaves the ptr undefined on failure */
        bounce  = NULL;
        goto fail;
    }

    /* Open the capture file with O_DIRECT to bypass the page cache (see the
     * file-header note). Fall back to a buffered open if the filesystem rejects
     * O_DIRECT outright. O_TRUNC|O_CREAT replaces the old fopen("w+b"); the end-
     * of-run header rewrite uses pwrite(offset 0) instead of fseek. */
    {
        int oflags = O_RDWR | O_CREAT | O_TRUNC;

        out_fd = open(output_path, oflags | O_DIRECT, 0644);
        if (out_fd >= 0) {
            direct = 1;
        } else {
            out_fd = open(output_path, oflags, 0644);
            if (out_fd >= 0)
                fprintf(stderr,
                    "rx_stream: O_DIRECT open failed (%s); using buffered writes\n",
                    strerror(errno));
        }
        if (out_fd < 0) {
            perror("open(output)");
            goto fail;
        }
    }

    /* Lay down the 512-byte header before any IQ (payload_bytes filled in at
     * the end). */
    cfg.period_bytes     = status.period_bytes;
    cfg.num_periods      = status.num_periods;
    cfg.capture_unixtime = (uint64_t)time(NULL);
    cfg.payload_bytes    = 0;
    cfg.start_offset_sec = 0.0;   /* rx does not use these two */
    cfg.auto_replay      = 0;
    if (write_header_at(out_fd, &cfg, hdr_buf) != 0) {
        /* The 512-byte header is the one sub-4K write; on a 4Kn device O_DIRECT
         * rejects it with EINVAL. Demote that fd to buffered and retry once. */
        if (direct && errno == EINVAL) {
            fprintf(stderr,
                "rx_stream: O_DIRECT needs >512B alignment on this device; "
                "using buffered writes\n");
            close(out_fd);
            out_fd = open(output_path, O_RDWR | O_CREAT | O_TRUNC, 0644);
            direct = 0;
            if (out_fd < 0 || write_header_at(out_fd, &cfg, hdr_buf) != 0) {
                perror("write(header)");
                goto fail;
            }
        } else {
            perror("write(header)");
            goto fail;
        }
    }

    fprintf(stderr,
            "rx_stream: ring = %u periods x %u bytes (%zu bytes); 512-byte header "
            "written (%s); press Ctrl+C to stop\n",
            status.num_periods, status.period_bytes, ring_bytes,
            direct ? "O_DIRECT" : "buffered");

    t_start = now_monotonic();

    if (ioctl(fd, T510_DMA_V2_IOC_START_RX) != 0) {
        perror("ioctl(start_rx)");
        goto fail;
    }

    while (!stopg) {
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
            /* Fell behind by a full ring: oldest unread period(s) overwritten.
             * Resync to the oldest period guaranteed complete and not being
             * written right now: hw_count - (num_periods - 1). */
            uint64_t lost = (hw_count - local_count) - (status.num_periods - 1);

            fprintf(stderr,
                    "rx_stream: overrun, lost %llu period(s) (total overruns=%llu)\n",
                    (unsigned long long)lost,
                    (unsigned long long)(overrun_count + lost));
            overrun_count += lost;
            local_count = hw_count - (status.num_periods - 1);
        }

        /* Drain every newly completed period in one shot: copy them out of the
         * cyclic ring into the contiguous bounce buffer (at most two memcpys --
         * one up to the ring end, one for the wrapped remainder), then issue a
         * single write. After the overrun resync above, (hw_count-local_count)
         * is always < num_periods, so the batch always fits in the bounce
         * buffer (sized to a full ring). Only whole periods are ever copied, so
         * a concurrent SIGINT/duration stop never truncates a period mid-write.
         */
        {
            uint64_t batch = hw_count - local_count;
            uint32_t idx   = (uint32_t)(local_count % status.num_periods);
            uint64_t first  = status.num_periods - idx;   /* periods to ring end */
            size_t   nbytes = (size_t)batch * status.period_bytes;

            if (first > batch)
                first = batch;
            memcpy(bounce,
                   rx_ring + (size_t)idx * status.period_bytes,
                   (size_t)first * status.period_bytes);
            if (batch > first)
                memcpy((uint8_t *)bounce + (size_t)first * status.period_bytes,
                       rx_ring,
                       (size_t)(batch - first) * status.period_bytes);

            if (write_all_at(out_fd, bounce, nbytes, payload_off) != 0) {
                perror("pwrite(output)");
                goto fail;
            }
            payload_off   += (off_t)nbytes;
            bytes_written += nbytes;
            local_count    = hw_count;
        }
    }

    finished_ok = 1;

fail:
    if (fd >= 0)
        ioctl(fd, T510_DMA_V2_IOC_STOP_RX);

    {
        double elapsed = (t_start > 0.0) ? (now_monotonic() - t_start) : 0.0;

        fprintf(stderr,
                "rx_stream: %s after %.3fs: periods=%llu IQ_bytes=%llu (%.3f MB) "
                "overruns=%llu\n",
                stopg ? "stopped by signal"
                      : (finished_ok ? "finished" : "aborted on error"),
                elapsed,
                (unsigned long long)local_count,
                (unsigned long long)bytes_written,
                (double)bytes_written / (1024.0 * 1024.0),
                (unsigned long long)overrun_count);
    }

    /* Update the header with the final IQ byte count (on normal completion,
     * duration expiry, SIGINT, or error) so the file stays self-describing.
     * Rewriting offset 0 is one block, so it stays valid under O_DIRECT. */
    if (out_fd >= 0) {
        cfg.payload_bytes = bytes_written;
        if (hdr_buf && write_header_at(out_fd, &cfg, hdr_buf) != 0)
            fprintf(stderr, "rx_stream: warning: failed to update header byte count\n");
        if (fsync(out_fd) != 0)
            fprintf(stderr, "rx_stream: warning: fsync failed: %s\n", strerror(errno));
        close(out_fd);
    }

    free(bounce);
    free(hdr_buf);

    if (rx_ring != MAP_FAILED)
        munmap(rx_ring, ring_bytes);
    if (fd >= 0)
        close(fd);

    return (finished_ok || stopg) ? EXIT_SUCCESS : EXIT_FAILURE;
}
