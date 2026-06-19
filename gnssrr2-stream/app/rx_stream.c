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
 *   6. The capture path is split into two threads so the (slow) read out of the
 *      non-cacheable DMA ring and the SSD write no longer run back-to-back in
 *      one loop:
 *
 *         producer (DMA -> RAM): polls GET_STATUS/WAIT_RX, does the overrun
 *             detect-and-resync, and memcpy's each batch of completed periods
 *             out of the coherent ring into a free RAM staging buffer.
 *         consumer (RAM -> SSD): pwrite()s each filled staging buffer to the
 *             output file.
 *
 *      A small bounded pool of page-aligned staging buffers connects them
 *      (mutex + two condvars). In the old single-threaded loop the per-batch
 *      cost was memcpy_time + write_time *in series*, so the loop only kept up
 *      with the DMA if that SUM stayed under the period interval; while a write
 *      was in flight nothing drained the ring. Overlapping the two makes the
 *      DMA-racing path cost max(memcpy, write) instead, and the SSD write no
 *      longer blocks the ring drain. This does NOT speed the memcpy itself: if
 *      the read out of the non-cacheable ring alone cannot sustain the stream
 *      rate, overruns still occur (and are still detected/counted/ logged
 *      identically). The on-disk format, CLI, overrun semantics and shutdown
 *      behavior are unchanged; only the internal pipelining differs.
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
#include <pthread.h>
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

/*
 * Number of RAM staging buffers shared by the producer/consumer pair. Each is
 * sized to a full ring (the worst-case single drain after an overrun resync is
 * num_periods-1 periods), so total extra RAM is RX_NUM_WRITE_BUFS * ring_bytes
 * (e.g. 4 * 64 MiB = 256 MiB at the driver defaults). 2 is the minimum that
 * allows the producer to fill one buffer while the consumer writes another;
 * the extra slots give the consumer slack to ride out SSD write-latency bursts
 * without stalling the ring drain. This is ordinary anonymous RAM, separate
 * from the driver's coherent DMA rings.
 */
#define RX_NUM_WRITE_BUFS    4

/*
 * Verified DMA payload byte rate: the frame rate equals the per-channel complex
 * sample rate (122.88 MSPS) and each frame is RTX_FRAME_BYTES (I0,Q0,I1,Q1 = 8 B).
 * Source of truth: top-level README.md "Expected output size calculation"
 * (983,040,000 B/s) and rtx_config.h (RTX_DEFAULT_FS_HZ, RTX_FRAME_BYTES). Used
 * only to pre-size the output file for a fixed-duration capture.
 */
#define RX_STREAM_BYTES_PER_SEC  ((uint64_t)RTX_DEFAULT_FS_HZ * (uint64_t)RTX_FRAME_BYTES)

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

/* Monotonic nanoseconds, for per-stage (copy vs write) throughput accounting.
 * Sampled once per drain batch (not per period), so the overhead is negligible
 * relative to the work it brackets. */
static uint64_t now_ns(void)
{
    struct timespec ts;

    clock_gettime(CLOCK_MONOTONIC, &ts);
    return (uint64_t)ts.tv_sec * 1000000000ull + (uint64_t)ts.tv_nsec;
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

/* ------------------------------------------------------------------------- *
 * Producer/consumer plumbing.
 *
 * cap_pipe is a bounded pool of page-aligned staging buffers handed back and
 * forth between the two threads. Empty buffers sit on a free stack; the
 * producer pops one, fills it (memcpy out of the coherent ring), and pushes it
 * onto the filled FIFO; the consumer pops the filled FIFO, writes it, and
 * pushes it back onto the free stack. One mutex guards all queue state; two
 * condvars signal "a buffer became free" and "a buffer became filled".
 * ------------------------------------------------------------------------- */
struct cap_buf {
    void  *base;   /* page-aligned, buf_bytes capacity                       */
    size_t len;    /* valid bytes the consumer must write (set by producer)  */
};

struct cap_pipe {
    pthread_mutex_t mtx;
    pthread_cond_t  can_produce;   /* a buffer returned to the free stack    */
    pthread_cond_t  can_consume;   /* a buffer was pushed to the filled FIFO */

    int            nbufs;
    struct cap_buf bufs[RX_NUM_WRITE_BUFS];

    int free_idx[RX_NUM_WRITE_BUFS];  /* stack of free buffer indices         */
    int free_top;                     /* number of entries in free_idx[]      */

    int filled[RX_NUM_WRITE_BUFS];    /* FIFO of filled buffer indices        */
    int f_head, f_tail, f_count;

    int producer_done;   /* producer will push no more buffers               */
    int abort;           /* fatal writer error: tear everything down         */
};

/* Allocate nbufs page-aligned staging buffers of buf_bytes each and init the
 * queue state. Returns 0 on success, -1 on allocation failure (partial allocs
 * are freed). On success cap_pipe_destroy() must be called to release them. */
static int cap_pipe_init(struct cap_pipe *pipe, int nbufs, size_t buf_bytes)
{
    int i;

    memset(pipe, 0, sizeof(*pipe));
    pthread_mutex_init(&pipe->mtx, NULL);
    pthread_cond_init(&pipe->can_produce, NULL);
    pthread_cond_init(&pipe->can_consume, NULL);

    pipe->nbufs = nbufs;
    for (i = 0; i < nbufs; i++) {
        if (posix_memalign(&pipe->bufs[i].base, RX_DIRECT_ALIGN, buf_bytes) != 0) {
            pipe->bufs[i].base = NULL;   /* undefined on failure */
            while (--i >= 0) {
                free(pipe->bufs[i].base);
                pipe->bufs[i].base = NULL;
            }
            pthread_mutex_destroy(&pipe->mtx);
            pthread_cond_destroy(&pipe->can_produce);
            pthread_cond_destroy(&pipe->can_consume);
            return -1;
        }
        pipe->free_idx[i] = i;   /* every buffer starts free */
    }
    pipe->free_top = nbufs;
    return 0;
}

static void cap_pipe_destroy(struct cap_pipe *pipe)
{
    int i;

    for (i = 0; i < pipe->nbufs; i++)
        free(pipe->bufs[i].base);
    pthread_mutex_destroy(&pipe->mtx);
    pthread_cond_destroy(&pipe->can_produce);
    pthread_cond_destroy(&pipe->can_consume);
}

/* ------------------------------------------------------------------------- *
 * Parallel ring->RAM copy pool.
 *
 * The single-threaded memcpy out of the non-cacheable dma_mmap_coherent ring is
 * the measured bottleneck: each uncached load has full memory latency and one
 * core can only keep a few in flight, so a single core saturates well below the
 * DMA stream rate. Spreading the copy of one batch across several cores lets
 * each core issue its own stream of outstanding uncached reads, aggregating
 * far more memory bandwidth. This is a persistent fork-join pool (created once,
 * one job per drain batch) so there is no per-batch thread-creation cost.
 *
 * The job is split by whole periods: worker w copies the period sub-range
 * [w*batch/W, (w+1)*batch/W). Destination offsets (j*period_bytes) are disjoint
 * per worker and the ring source is read-only, so the workers never touch the
 * same bytes -- no locking on the data, only on job dispatch/completion. The
 * bytes produced are identical to the old two-memcpy path; only the work is
 * parallel. With nworkers == 1 the producer copies inline and no pool is used,
 * exactly reproducing the previous behaviour.
 * ------------------------------------------------------------------------- */
#define RX_MAX_COPY_THREADS  8

struct copy_pool;
struct copy_worker {
    struct copy_pool *pool;
    int               id;
    pthread_t         tid;
};

struct copy_pool {
    pthread_mutex_t mtx;
    pthread_cond_t  start;     /* a new job is available             */
    pthread_cond_t  done;      /* a worker finished its slice        */
    int             nworkers;
    struct copy_worker workers[RX_MAX_COPY_THREADS];

    /* current job (valid while remaining > 0) */
    const uint8_t  *ring;
    uint8_t        *dst;
    uint32_t        idx;
    uint32_t        num_periods;
    uint32_t        period_bytes;
    uint64_t        batch;

    uint64_t        gen;        /* incremented once per dispatched job */
    int             remaining;  /* workers still busy on this gen      */
    int             quit;       /* teardown signal                     */
};

/* One worker's portion of the current job: copy its disjoint period sub-range. */
static void copy_pool_do_slice(struct copy_pool *pool, int id)
{
    uint64_t batch = pool->batch;
    int      W     = pool->nworkers;
    uint64_t lo    = (uint64_t)id * batch / (uint64_t)W;
    uint64_t hi    = (uint64_t)(id + 1) * batch / (uint64_t)W;
    uint32_t np    = pool->num_periods;
    uint32_t pb    = pool->period_bytes;
    uint64_t j;

    for (j = lo; j < hi; j++) {
        uint32_t ring_idx = (uint32_t)((pool->idx + j) % np);
        memcpy(pool->dst + j * pb,
               pool->ring + (size_t)ring_idx * pb,
               pb);
    }
}

static void *copy_worker_thread(void *arg)
{
    struct copy_worker *w = arg;
    struct copy_pool *pool = w->pool;
    uint64_t last_gen = 0;

    for (;;) {
        pthread_mutex_lock(&pool->mtx);
        while (pool->gen == last_gen && !pool->quit)
            pthread_cond_wait(&pool->start, &pool->mtx);
        if (pool->quit) {
            pthread_mutex_unlock(&pool->mtx);
            return NULL;
        }
        last_gen = pool->gen;
        pthread_mutex_unlock(&pool->mtx);

        copy_pool_do_slice(pool, w->id);

        pthread_mutex_lock(&pool->mtx);
        if (--pool->remaining == 0)
            pthread_cond_signal(&pool->done);
        pthread_mutex_unlock(&pool->mtx);
    }
}

/* Create nworkers-1 helper threads (worker 0 is the calling producer, which
 * does its own slice inline so its core is not left idle). Returns 0, or -1 if
 * a thread could not be created (callers fall back to the inline single-thread
 * copy). */
static int copy_pool_init(struct copy_pool *pool, int nworkers)
{
    int i;

    memset(pool, 0, sizeof(*pool));
    pthread_mutex_init(&pool->mtx, NULL);
    pthread_cond_init(&pool->start, NULL);
    pthread_cond_init(&pool->done, NULL);
    pool->nworkers = nworkers;

    for (i = 0; i < nworkers; i++) {
        pool->workers[i].pool = pool;
        pool->workers[i].id   = i;
    }
    /* Helpers are ids 1..nworkers-1; id 0 runs inline on the producer. */
    for (i = 1; i < nworkers; i++) {
        if (pthread_create(&pool->workers[i].tid, NULL,
                           copy_worker_thread, &pool->workers[i]) != 0) {
            /* Tear down whatever started and report failure. */
            pthread_mutex_lock(&pool->mtx);
            pool->quit = 1;
            pthread_cond_broadcast(&pool->start);
            pthread_mutex_unlock(&pool->mtx);
            while (--i >= 1)
                pthread_join(pool->workers[i].tid, NULL);
            pthread_mutex_destroy(&pool->mtx);
            pthread_cond_destroy(&pool->start);
            pthread_cond_destroy(&pool->done);
            return -1;
        }
    }
    return 0;
}

static void copy_pool_destroy(struct copy_pool *pool)
{
    int i;

    pthread_mutex_lock(&pool->mtx);
    pool->quit = 1;
    pthread_cond_broadcast(&pool->start);
    pthread_mutex_unlock(&pool->mtx);

    for (i = 1; i < pool->nworkers; i++)
        pthread_join(pool->workers[i].tid, NULL);

    pthread_mutex_destroy(&pool->mtx);
    pthread_cond_destroy(&pool->start);
    pthread_cond_destroy(&pool->done);
}

/* Dispatch one batch copy across the pool and block until every worker slice is
 * done. Called only by the producer thread (single dispatcher), so the job
 * fields need no extra serialisation beyond the start/done handshake. */
static void copy_pool_run(struct copy_pool *pool, const uint8_t *ring,
                          uint8_t *dst, uint32_t idx, uint32_t num_periods,
                          uint32_t period_bytes, uint64_t batch)
{
    pthread_mutex_lock(&pool->mtx);
    pool->ring         = ring;
    pool->dst          = dst;
    pool->idx          = idx;
    pool->num_periods  = num_periods;
    pool->period_bytes = period_bytes;
    pool->batch        = batch;
    pool->remaining    = pool->nworkers;
    pool->gen++;
    pthread_cond_broadcast(&pool->start);
    pthread_mutex_unlock(&pool->mtx);

    /* Worker 0 runs inline on this (producer) thread. */
    copy_pool_do_slice(pool, 0);

    pthread_mutex_lock(&pool->mtx);
    if (--pool->remaining == 0)
        pthread_cond_signal(&pool->done);
    while (pool->remaining > 0)
        pthread_cond_wait(&pool->done, &pool->mtx);
    pthread_mutex_unlock(&pool->mtx);
}

/* Producer thread: DMA ring -> RAM. Mirrors the original single-threaded drain
 * loop exactly (GET_STATUS / WAIT_RX / overrun detect-and-resync / period
 * copy-out); the only difference is that the copied batch is handed to the
 * consumer instead of being written here. */
struct producer_args {
    int             fd;
    const uint8_t  *rx_ring;
    double          duration_sec;
    double          t_start;
    struct cap_pipe *pipe;
    struct copy_pool *cpool;        /* NULL => inline single-thread memcpy   */

    /* outputs, read by main after join */
    uint64_t        local_count;     /* periods copied out of the ring        */
    uint64_t        overrun_count;
    uint64_t        copy_ns;         /* total time in ring->RAM memcpy        */
    uint64_t        copy_bytes;      /* total bytes copied out of the ring    */
    int             failed;          /* non-signal ioctl error                */
};

static void *producer_thread(void *arg)
{
    struct producer_args *p = arg;
    struct cap_pipe *pipe = p->pipe;
    struct t510_dma_v2_status status;

    while (!stopg) {
        uint64_t hw_count;
        uint64_t since;

        if (p->duration_sec > 0.0 && (now_monotonic() - p->t_start) >= p->duration_sec)
            break;

        if (ioctl(p->fd, T510_DMA_V2_IOC_GET_STATUS, &status) != 0) {
            perror("ioctl(get_status)");
            p->failed = 1;
            break;
        }
        hw_count = status.rx_hw_periods;

        if (hw_count == p->local_count) {
            /* Nothing new yet: block until the next period completes. */
            since = p->local_count;
            if (ioctl(p->fd, T510_DMA_V2_IOC_WAIT_RX, &since) != 0) {
                perror("ioctl(wait_rx)");
                p->failed = 1;
                break;
            }
            continue;
        }

        if (hw_count - p->local_count >= status.num_periods) {
            /* Fell behind by a full ring: oldest unread period(s) overwritten.
             * Resync to the oldest period guaranteed complete and not being
             * written right now: hw_count - (num_periods - 1). */
            uint64_t lost = (hw_count - p->local_count) - (status.num_periods - 1);

            fprintf(stderr,
                    "rx_stream: overrun, lost %llu period(s) (total overruns=%llu)\n",
                    (unsigned long long)lost,
                    (unsigned long long)(p->overrun_count + lost));
            p->overrun_count += lost;
            p->local_count = hw_count - (status.num_periods - 1);
        }

        /* Drain every newly completed period in one shot: copy them out of the
         * cyclic ring into a free contiguous staging buffer (at most two
         * memcpys -- one up to the ring end, one for the wrapped remainder),
         * then hand it to the consumer to write. After the overrun resync
         * above, (hw_count-local_count) is always < num_periods, so the batch
         * always fits in one staging buffer (sized to a full ring). Only whole
         * periods are ever copied, so a concurrent SIGINT/duration stop never
         * truncates a period mid-write. */
        {
            uint64_t batch  = hw_count - p->local_count;
            uint32_t idx    = (uint32_t)(p->local_count % status.num_periods);
            uint64_t first  = status.num_periods - idx;   /* periods to ring end */
            size_t   nbytes = (size_t)batch * status.period_bytes;
            int      bi;

            if (first > batch)
                first = batch;

            /* Acquire a free staging buffer (blocks if the consumer is behind;
             * that back-pressure lets the ring fill and is what an overrun is
             * recovered from on the next iteration -- exactly as before). */
            pthread_mutex_lock(&pipe->mtx);
            while (pipe->free_top == 0 && !pipe->abort)
                pthread_cond_wait(&pipe->can_produce, &pipe->mtx);
            if (pipe->abort) {
                pthread_mutex_unlock(&pipe->mtx);
                p->failed = 1;
                break;
            }
            bi = pipe->free_idx[--pipe->free_top];
            pthread_mutex_unlock(&pipe->mtx);

            {
                uint64_t t0 = now_ns();
                if (p->cpool) {
                    /* Parallel copy across cores; splits by period and handles
                     * the ring wrap internally (period (idx+j) % num_periods). */
                    copy_pool_run(p->cpool, p->rx_ring,
                                  (uint8_t *)pipe->bufs[bi].base,
                                  idx, status.num_periods, status.period_bytes,
                                  batch);
                } else {
                    /* Inline single-thread path (identical to the original):
                     * one memcpy up to the ring end, one for the wrapped tail. */
                    memcpy(pipe->bufs[bi].base,
                           p->rx_ring + (size_t)idx * status.period_bytes,
                           (size_t)first * status.period_bytes);
                    if (batch > first)
                        memcpy((uint8_t *)pipe->bufs[bi].base + (size_t)first * status.period_bytes,
                               p->rx_ring,
                               (size_t)(batch - first) * status.period_bytes);
                }
                p->copy_ns    += now_ns() - t0;
                p->copy_bytes += nbytes;
            }
            pipe->bufs[bi].len = nbytes;

            pthread_mutex_lock(&pipe->mtx);
            pipe->filled[pipe->f_tail] = bi;
            pipe->f_tail = (pipe->f_tail + 1) % pipe->nbufs;
            pipe->f_count++;
            pthread_cond_signal(&pipe->can_consume);
            pthread_mutex_unlock(&pipe->mtx);

            p->local_count = hw_count;
        }
    }

    /* Tell the consumer no more buffers are coming so it drains what is queued
     * and exits. */
    pthread_mutex_lock(&pipe->mtx);
    pipe->producer_done = 1;
    pthread_cond_broadcast(&pipe->can_consume);
    pthread_mutex_unlock(&pipe->mtx);
    return NULL;
}

/* Consumer thread: RAM -> SSD. Writes each filled staging buffer at the running
 * payload offset. The producer owns local_count/overruns; the consumer owns the
 * file offset and the IQ byte count, so the two never touch the same field. */
struct consumer_args {
    int             out_fd;
    off_t           payload_off;     /* starts at RTX_HEADER_BYTES            */
    struct cap_pipe *pipe;

    /* outputs, read by main after join */
    uint64_t        bytes_written;   /* IQ payload bytes actually written     */
    uint64_t        write_ns;        /* total time in RAM->SSD pwrite         */
    int             failed;          /* pwrite() error                        */
};

static void *consumer_thread(void *arg)
{
    struct consumer_args *c = arg;
    struct cap_pipe *pipe = c->pipe;

    for (;;) {
        int    bi;
        size_t len;

        pthread_mutex_lock(&pipe->mtx);
        while (pipe->f_count == 0 && !pipe->producer_done && !pipe->abort)
            pthread_cond_wait(&pipe->can_consume, &pipe->mtx);
        if (pipe->f_count == 0) {
            /* Drained, and the producer is finished (or we are aborting). */
            pthread_mutex_unlock(&pipe->mtx);
            break;
        }
        bi = pipe->filled[pipe->f_head];
        pipe->f_head = (pipe->f_head + 1) % pipe->nbufs;
        pipe->f_count--;
        pthread_mutex_unlock(&pipe->mtx);

        len = pipe->bufs[bi].len;
        {
            uint64_t t0 = now_ns();
            int wrc = write_all_at(c->out_fd, pipe->bufs[bi].base, len, c->payload_off);
            c->write_ns += now_ns() - t0;
            if (wrc != 0) {
                perror("pwrite(output)");
                c->failed = 1;
                pthread_mutex_lock(&pipe->mtx);
                pipe->abort = 1;
                pthread_cond_broadcast(&pipe->can_produce);
                pthread_cond_broadcast(&pipe->can_consume);
                pthread_mutex_unlock(&pipe->mtx);
                break;
            }
        }
        c->payload_off   += (off_t)len;
        c->bytes_written += len;

        /* Return the buffer to the free stack for the producer to reuse. */
        pthread_mutex_lock(&pipe->mtx);
        pipe->free_idx[pipe->free_top++] = bi;
        pthread_cond_signal(&pipe->can_produce);
        pthread_mutex_unlock(&pipe->mtx);
    }
    return NULL;
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

    struct cap_pipe pipe;
    int pipe_inited = 0;
    struct copy_pool cpool;
    int cpool_inited = 0;
    int copy_threads = 1;
    pthread_t producer_tid, consumer_tid;
    int producer_started = 0, consumer_started = 0;
    struct producer_args pargs;
    struct consumer_args cargs;

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

    /* Page-aligned staging for O_DIRECT: a header scratch (one block) and a
     * pool of bounce buffers big enough to coalesce a full ring's worth of
     * completed periods into one write each. All are valid GUP-able RAM, unlike
     * the dma_mmap_coherent rx_ring. */
    if (posix_memalign(&hdr_buf, RX_DIRECT_ALIGN, RX_DIRECT_ALIGN) != 0) {
        fprintf(stderr, "rx_stream: failed to allocate aligned header buffer\n");
        hdr_buf = NULL;   /* posix_memalign leaves the ptr undefined on failure */
        goto fail;
    }
    if (cap_pipe_init(&pipe, RX_NUM_WRITE_BUFS, ring_bytes) != 0) {
        fprintf(stderr, "rx_stream: failed to allocate %d aligned staging buffers\n",
                RX_NUM_WRITE_BUFS);
        goto fail;
    }
    pipe_inited = 1;

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

    /* Pre-allocate the whole output file up front for a fixed-duration capture
     * (header + duration * 983,040,000 B/s, rounded up to a whole period). This
     * reserves contiguous blocks so the SSD writer never pays the filesystem
     * block-allocator / extent-conversion cost in the hot path, which otherwise
     * stalls O_DIRECT writes and feeds back as ring overruns. posix_fallocate
     * only reserves space (it does not erase or write the device) and is best-
     * effort: a failure (e.g. unsupported filesystem) is non-fatal. The file is
     * ftruncate()d back to the real byte count on exit. Duration 0 (until
     * Ctrl+C) has no known size, so preallocation is skipped. */
    if (duration_sec > 0.0) {
        uint64_t want = (uint64_t)(duration_sec * (double)RX_STREAM_BYTES_PER_SEC);
        uint64_t periods = (want + status.period_bytes - 1) / status.period_bytes;
        off_t prealloc = (off_t)RTX_HEADER_BYTES + (off_t)(periods * status.period_bytes);
        int rc = posix_fallocate(out_fd, 0, prealloc);

        if (rc != 0) {
            fprintf(stderr,
                "rx_stream: warning: posix_fallocate(%lld bytes) failed (%s); "
                "continuing without preallocation\n",
                (long long)prealloc, strerror(rc));
        } else {
            fprintf(stderr, "rx_stream: pre-allocated %lld bytes (%.3f MB) for %.3fs\n",
                    (long long)prealloc, (double)prealloc / (1024.0 * 1024.0),
                    duration_sec);
        }
    }

    t_start = now_monotonic();

    if (ioctl(fd, T510_DMA_V2_IOC_START_RX) != 0) {
        perror("ioctl(start_rx)");
        goto fail;
    }

    /* Decide how many cores copy the ring -> RAM. Default to the online CPU
     * count (clamped to RX_MAX_COPY_THREADS); override with RX_COPY_THREADS.
     * 1 keeps the original inline single-thread memcpy. The pool is created
     * once and reused for every batch. */
    {
        long onln = sysconf(_SC_NPROCESSORS_ONLN);
        int want = (onln > 0) ? (int)onln : 1;
        const char *env = getenv("RX_COPY_THREADS");

        if (env && *env) {
            char *end;
            long v = strtol(env, &end, 10);
            if (*end == '\0' && v >= 1 && v <= RX_MAX_COPY_THREADS)
                want = (int)v;
            else
                fprintf(stderr,
                    "rx_stream: ignoring invalid RX_COPY_THREADS='%s' (use 1..%d)\n",
                    env, RX_MAX_COPY_THREADS);
        }
        if (want > RX_MAX_COPY_THREADS)
            want = RX_MAX_COPY_THREADS;
        if (want < 1)
            want = 1;
        copy_threads = want;
    }

    if (copy_threads > 1) {
        if (copy_pool_init(&cpool, copy_threads) == 0) {
            cpool_inited = 1;
        } else {
            fprintf(stderr,
                "rx_stream: copy pool init failed; using single-thread copy\n");
            copy_threads = 1;
        }
    }
    fprintf(stderr, "rx_stream: ring->RAM copy uses %d core(s)%s\n",
            copy_threads, cpool_inited ? "" : " (inline)");

    /* Spawn the consumer (RAM -> SSD) first, then the producer (DMA -> RAM).
     * The producer races the DMA ring; the consumer drains the staging pool to
     * the SSD in parallel, so the SSD write latency is off the ring-drain path. */
    memset(&cargs, 0, sizeof(cargs));
    cargs.out_fd      = out_fd;
    cargs.payload_off = payload_off;
    cargs.pipe        = &pipe;

    memset(&pargs, 0, sizeof(pargs));
    pargs.fd           = fd;
    pargs.rx_ring      = rx_ring;
    pargs.duration_sec = duration_sec;
    pargs.t_start      = t_start;
    pargs.pipe         = &pipe;
    pargs.cpool        = cpool_inited ? &cpool : NULL;

    if (pthread_create(&consumer_tid, NULL, consumer_thread, &cargs) != 0) {
        perror("pthread_create(consumer)");
        goto fail;
    }
    consumer_started = 1;

    if (pthread_create(&producer_tid, NULL, producer_thread, &pargs) != 0) {
        perror("pthread_create(producer)");
        /* Release the consumer cleanly: it is blocked on can_consume. */
        pthread_mutex_lock(&pipe.mtx);
        pipe.producer_done = 1;
        pipe.abort = 1;
        pthread_cond_broadcast(&pipe.can_consume);
        pthread_mutex_unlock(&pipe.mtx);
        goto fail;
    }
    producer_started = 1;

    /* Producer ends on stopg / duration / ioctl error and marks producer_done;
     * the consumer then drains the remaining staging buffers and ends. */
    pthread_join(producer_tid, NULL);
    producer_started = 0;
    pthread_join(consumer_tid, NULL);
    consumer_started = 0;

    local_count   = pargs.local_count;
    overrun_count = pargs.overrun_count;
    bytes_written = cargs.bytes_written;
    finished_ok   = (!pargs.failed && !cargs.failed);

fail:
    /* If we jumped here with threads still running (e.g. consumer spawned but
     * producer_create failed), join them before touching shared buffers. */
    if (producer_started) {
        pthread_join(producer_tid, NULL);
        producer_started = 0;
        local_count   = pargs.local_count;
        overrun_count = pargs.overrun_count;
    }
    if (consumer_started) {
        pthread_join(consumer_tid, NULL);
        consumer_started = 0;
        bytes_written = cargs.bytes_written;
    }

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

    /* Per-stage throughput diagnostic: the in-thread time actually spent in the
     * ring->RAM memcpy vs the RAM->SSD pwrite, and the rate each stage sustained
     * (bytes / time-in-that-stage). Whichever rate is the lower is the wall the
     * pipeline is hitting -- this is what tells us where to optimise, instead of
     * guessing. Purely informational; it changes nothing in the capture path. */
    {
        double copy_s  = (double)pargs.copy_ns  / 1.0e9;
        double write_s = (double)cargs.write_ns / 1.0e9;
        double copy_mb  = (double)pargs.copy_bytes / (1024.0 * 1024.0);
        double write_mb = (double)bytes_written    / (1024.0 * 1024.0);

        fprintf(stderr,
                "rx_stream: stage rates: ring->RAM copy %.1f MB/s (%.1f MB in %.3fs); "
                "RAM->SSD write %.1f MB/s (%.1f MB in %.3fs)\n",
                copy_s  > 0.0 ? copy_mb  / copy_s  : 0.0, copy_mb,  copy_s,
                write_s > 0.0 ? write_mb / write_s : 0.0, write_mb, write_s);
    }

    /* Update the header with the final IQ byte count (on normal completion,
     * duration expiry, SIGINT, or error) so the file stays self-describing.
     * Rewriting offset 0 is one block, so it stays valid under O_DIRECT. */
    if (out_fd >= 0) {
        cfg.payload_bytes = bytes_written;
        if (hdr_buf && write_header_at(out_fd, &cfg, hdr_buf) != 0)
            fprintf(stderr, "rx_stream: warning: failed to update header byte count\n");
        /* Drop any preallocated-but-unwritten tail so the file size matches the
         * data actually captured (overruns / early stop write less than the
         * fixed-duration preallocation reserved). */
        if (ftruncate(out_fd, (off_t)RTX_HEADER_BYTES + (off_t)bytes_written) != 0)
            fprintf(stderr, "rx_stream: warning: ftruncate failed: %s\n", strerror(errno));
        if (fsync(out_fd) != 0)
            fprintf(stderr, "rx_stream: warning: fsync failed: %s\n", strerror(errno));
        close(out_fd);
    }

    if (cpool_inited)
        copy_pool_destroy(&cpool);
    if (pipe_inited)
        cap_pipe_destroy(&pipe);
    free(hdr_buf);

    if (rx_ring != MAP_FAILED)
        munmap(rx_ring, ring_bytes);
    if (fd >= 0)
        close(fd);

    return (finished_ok || stopg) ? EXIT_SUCCESS : EXIT_FAILURE;
}
