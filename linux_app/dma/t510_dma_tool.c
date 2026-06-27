#include <errno.h>
#include <fcntl.h>
#include <getopt.h>
#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/ioctl.h>
#include <time.h>
#include <unistd.h>

#include "t510_dma_ioctl.h"

#define DEFAULT_DEVICE       "/dev/t510_dma_stream"
#define DEFAULT_CAPTURE_MS   1000U
#define DEFAULT_PREVIEW_PAIRS 16U
#define SAMPLES_PER_BLOCK    8U

#define PERIOD_SAMPLES       (T510_DMA_PERIOD_BYTES / sizeof(int16_t)) // 1/2=0.5MBytes
#define PERIODS_IN_BUFFER    (T510_DMA_BUFFER_BYTES / T510_DMA_PERIOD_BYTES) // 2/1 = 2

/*
 * RX data rate at the AXI DMA S2MM input, taken from T510_designJun9.tcl
 * (block design matching systemJun9.dts):
 *   - ADC0_Sampling_Rate {4.9152} GSPS with ADC_Decimation_Mode00/02 {40}
 *     -> 4.9152e9 / 40 = 122.88 MSPS complex (IQ) per channel
 *   - ADC_Data_Type00/02 {1} (IQ), two ADC slices enabled (00 and 02)
 *   - fir_compiler_0: Filter_Type {Single_Rate}, Decimation_Rate {1},
 *     Number_Paths {4}, Sample_Frequency {122.88}, Output_Width {16}
 *     -> the FIR does not change the rate
 *   - one stream frame at the DMA = I0,Q0,I1,Q1 (4 x int16 = 8 bytes)
 *     at 122.88 M frames/s -> 983,040 bytes per millisecond of signal,
 *     exactly 160 driver periods (T510_DMA_PERIOD_BYTES) per millisecond
 */
#define T510_FRAMES_PER_SEC  122880000ULL
#define T510_FRAME_BYTES     8ULL
#define T510_BYTES_PER_MS    (T510_FRAMES_PER_SEC / 1000ULL * T510_FRAME_BYTES)

/* Abort if the driver reports no new RX period for this long. */
#define STALL_TIMEOUT_MS     5000.0


#if 0
static const int16_t BaseIqData[] = {
include "iq_data_intr.h"
};

#define UNIQUE_SAMPLES \
    (sizeof(BaseIqData) / sizeof(BaseIqData[0]))
	
#else
	#include "sin_iq_1p76M.h"
	//static const int16_t BaseIqData[];
	//BaseIqData = &sin_iq_1p76M[0];
	#define UNIQUE_SAMPLES \
		(sizeof(sin_iq_1p76M) / sizeof(sin_iq_1p76M[0]))	
#endif



	
static void usage(const char *prog)
{
    fprintf(stderr,
            "Usage: %s [options]\n"
            "  --device PATH        DMA device (default " DEFAULT_DEVICE ")\n"
            "  --capture-ms N       ms of signal to capture at 983040 bytes/ms (default %u)\n"
            "  --csv PATH           write all IQ pairs as CSV (use - for stdout)\n"
            "  --bin PATH           write raw RX buffer to file\n"
            "  --preview N          print first N IQ pairs (default %u)\n"
            "  --status-only        print DMA status only\n",
            prog, DEFAULT_CAPTURE_MS, DEFAULT_PREVIEW_PAIRS);
}

/*
static void format_tx_buffer_from_generated_tone(int16_t *tx_buf)
{
    int16_t base[T510_DMA_UNIQUE_SAMPLES];
    unsigned src_idx = 0;
    unsigned dst_idx = 0;

    for (unsigned i = 0; i < T510_DMA_UNIQUE_SAMPLES; ++i) {
        double angle = (2.0 * M_PI * (double)i) / (double)T510_DMA_UNIQUE_SAMPLES;
        base[i] = (int16_t)lrint(8191.0 * sin(angle));
    }

    while (src_idx < T510_DMA_UNIQUE_SAMPLES) {
        for (unsigned i = 0; i < SAMPLES_PER_BLOCK; ++i)
            tx_buf[dst_idx++] = base[src_idx + i];
        for (unsigned i = 0; i < SAMPLES_PER_BLOCK; ++i)
            tx_buf[dst_idx++] = base[src_idx + i];
        src_idx += SAMPLES_PER_BLOCK;
    }
	// --- ADD THIS DEBUG BLOCK ---
    printf("DEBUG: First 16 samples generated in User-Space tx_buf:\n");
    for (unsigned i = 0; i < 16; i++) {
        // We print index and the value. 
        // Since it's IQ interleaved, index 0 is I, index 1 is Q, etc.
        printf("  tx_buf[%u] = %d\n", i, tx_buf[i]);
    }
}
*/

static void format_tx_buffer_exact(int16_t *tx_buf)
{
    size_t src_idx = 0;
    size_t dst_idx = 0;

    /*
     * Fill the whole cyclic TX ring (T510_DMA_TOTAL_SAMPLES), wrapping the
     * tone table as needed.  The table holds 122,880 IQ pairs = exactly
     * 1500 cycles of the 1.5 MHz tone at 122.88 MSPS, and the per-DAC ring
     * length (262,144 pairs) is an exact multiple of the tone period, so
     * both the table wrap and the cyclic buffer wrap are phase-continuous.
     * Stopping at the end of the table instead would leave 53% of the ring
     * zero-filled and transmit 1 ms of tone followed by 1.13 ms of silence.
     */
	int count=0;
    while (dst_idx < T510_DMA_TOTAL_SAMPLES) {

        /* First 8 samples (DAC stream 0, tdata[127:0]) */
        for (int i = 0; i < 8; i++) {
            //tx_buf[dst_idx++] = BaseIqData[src_idx + i]/1;
			tx_buf[dst_idx++] = sin_iq_1p76M[src_idx + i]/1;			
			//tx_buf[dst_idx++] = count++;
        }

        /* Duplicate same 8 samples (DAC stream 1, tdata[255:128]) */
        for (int i = 0; i < 8; i++) {
            //tx_buf[dst_idx++] = BaseIqData[src_idx + i]/1;
			tx_buf[dst_idx++] = sin_iq_1p76M[src_idx + i]/1;
			//tx_buf[dst_idx++] =-(500+count++);
        }

        src_idx = (src_idx + 8) % UNIQUE_SAMPLES;
    }
}

static int write_full(int fd, const void *buf, size_t len)
{
    const uint8_t *p = buf;
    size_t done = 0;

    while (done < len) {
        ssize_t rc = write(fd, p + done, len - done);
        if (rc < 0) {
            if (errno == EINTR)
                continue;
            return -1;
        }
        done += (size_t)rc;
    }
    return 0;
}

static int read_full(int fd, void *buf, size_t len)
{
    uint8_t *p = buf;
    size_t done = 0;

    while (done < len) {
        ssize_t rc = read(fd, p + done, len - done);
        if (rc < 0) {
            if (errno == EINTR)
                continue;
            return -1;
        }
        if (rc == 0)
            break;
        done += (size_t)rc;
    }
    return (done == len) ? 0 : -1;
}

static void print_preview(const int16_t *rx_buf, unsigned preview_pairs)
{
    printf("Preview of first %u IQ pairs:\n", preview_pairs);
    printf("index,I_Data,Q_Data\n");
    for (unsigned i = 0; i < preview_pairs; ++i)
        printf("%u,%d,%d\n", i, rx_buf[i * 2], rx_buf[i * 2 + 1]);
}

static FILE *open_csv(const char *path)
{
    FILE *fp = NULL;

    if (strcmp(path, "-") == 0)
        fp = stdout;
    else
        fp = fopen(path, "w");

    if (!fp) {
        perror("fopen(csv)");
        return NULL;
    }

    setvbuf(fp, NULL, _IOFBF, 1U << 20);
    fprintf(fp, "I_Data,Q_Data\n");
    return fp;
}

static void csv_append(FILE *fp, const int16_t *buf, size_t nsamples)
{
    for (size_t i = 0; (i + 1) < nsamples; i += 2)
        fprintf(fp, "%d,%d\n", buf[i], buf[i + 1]);
}

static int bin_append(FILE *fp, const void *buf, size_t len)
{
    if (fwrite(buf, 1, len, fp) != len) {
        perror("fwrite(bin)");
        return -1;
    }
    return 0;
}

static double elapsed_ms_since(const struct timespec *start)
{
    struct timespec now;

    clock_gettime(CLOCK_MONOTONIC, &now);
    return (double)(now.tv_sec - start->tv_sec) * 1000.0 +
           (double)(now.tv_nsec - start->tv_nsec) / 1.0e6;
}

static int16_t tx_buf[T510_DMA_BUFFER_BYTES/2];
static int16_t rx_buf[T510_DMA_BUFFER_BYTES/2];

int main(int argc, char **argv)
{
    static const struct option long_opts[] = {
        { "device", required_argument, NULL, 'd' },
        { "capture-ms", required_argument, NULL, 'c' },
        { "csv", required_argument, NULL, 'o' },
        { "bin", required_argument, NULL, 'b' },
        { "preview", required_argument, NULL, 'p' },
        { "status-only", no_argument, NULL, 's' },
        { NULL, 0, NULL, 0 }
    };

    const char *device_path = DEFAULT_DEVICE;
    const char *csv_path = NULL;
    const char *bin_path = NULL;
    unsigned capture_ms = DEFAULT_CAPTURE_MS;
    unsigned preview_pairs = DEFAULT_PREVIEW_PAIRS;
    int status_only = 0;
    int fd = -1;
//    int16_t tx_buf[T510_DMA_TOTAL_SAMPLES];
//    int16_t rx_buf[PERIOD_SAMPLES];
    struct t510_dma_status status;
    FILE *csv_fp = NULL;
    FILE *bin_fp = NULL;
    struct timespec t_start;
    struct timespec t_last_period;
    uint64_t target_bytes;
    uint64_t periods_consumed = 0;
    uint64_t periods_read = 0;
    uint64_t periods_dropped = 0;
    uint64_t bytes_written = 0;
    double elapsed;
    int opt;

    while ((opt = getopt_long(argc, argv, "d:c:o:b:p:s", long_opts, NULL)) != -1) {
        switch (opt) {
        case 'd':
            device_path = optarg;
            break;
        case 'c':
            capture_ms = (unsigned)strtoul(optarg, NULL, 10);
			printf("DEBUG: capture_ms=%u\n", capture_ms);
            break;
        case 'o':
            csv_path = optarg;
            break;
        case 'b':
            bin_path = optarg;
            break;
        case 'p':
            preview_pairs = (unsigned)strtoul(optarg, NULL, 10);
            break;
        case 's':
            status_only = 1;
            break;
        default:
            usage(argv[0]);
            return EXIT_FAILURE;
        }
    }

    fd = open(device_path, O_RDWR);
    if (fd < 0) {
        perror("open");
        return EXIT_FAILURE;
    }

    if (ioctl(fd, T510_DMA_IOC_STATUS, &status) != 0) {
        perror("ioctl(status)");
        close(fd);
        return EXIT_FAILURE;
    }

    printf("DMA status: running=%u tx_periods=%llu rx_periods=%llu buffer=%u period=%u\n",
           status.running,
           (unsigned long long)status.tx_periods,
           (unsigned long long)status.rx_periods,
           status.buffer_bytes,
           status.period_bytes);

    if (status_only) {
        close(fd);
        return EXIT_SUCCESS;
    }

    //format_tx_buffer_from_generated_tone(tx_buf);
	format_tx_buffer_exact(tx_buf);
	printf("DEBUG: First 32 TX samples:\n");
	for (int i = 0; i < 32; i++) {
		printf("tx_buf[%d] = %d\n", i, tx_buf[i]);
	}
    if (lseek(fd, 0, SEEK_SET) < 0) {
        perror("lseek(tx)");
        close(fd);
        return EXIT_FAILURE;
    }
    if (write_full(fd, tx_buf, T510_DMA_BUFFER_BYTES) != 0) {
        perror("write(tx)");
        close(fd);
        return EXIT_FAILURE;
    }

    /* Open output files before starting DMA so the capture loop only appends. */
    if (csv_path) {
        csv_fp = open_csv(csv_path);
        if (!csv_fp) {
            close(fd);
            return EXIT_FAILURE;
        }
    }
    if (bin_path) {
        bin_fp = fopen(bin_path, "wb");
        if (!bin_fp) {
            perror("fopen(bin)");
            goto fail;
        }
    }

    target_bytes = (uint64_t)capture_ms * T510_BYTES_PER_MS;
    if (target_bytes > T510_DMA_BUFFER_BYTES) {
        fprintf(stderr,
                "capture-ms %u needs %llu bytes but the DMA buffer holds %u "
                "(max %.3f ms per capture)\n",
                capture_ms,
                (unsigned long long)target_bytes,
                (unsigned)T510_DMA_BUFFER_BYTES,
                (double)T510_DMA_BUFFER_BYTES / (double)T510_BYTES_PER_MS);
        goto fail;
    }

    if (ioctl(fd, T510_DMA_IOC_START) != 0) {
        perror("ioctl(start)");
        goto fail;
    }

    printf("DMA capture: %u ms of signal = %llu bytes (%llu IQ frames, %u flush + %u capture DMA periods)\n",
           capture_ms,
           (unsigned long long)target_bytes,
           (unsigned long long)(target_bytes / T510_FRAME_BYTES),
           (unsigned)T510_DMA_RX_FLUSH_PERIODS,
           (unsigned)T510_DMA_RX_CAPTURE_PERIODS);
    clock_gettime(CLOCK_MONOTONIC, &t_start);
    t_last_period = t_start;

    /*
     * The driver queues flush transfers (discarding the stale RX FIFO
     * backlog in the PL) followed by one-shot transfers that fill the RX
     * buffer exactly once and then stop.  Nothing is overwritten, so the
     * capture is read out after the last completion instead of trying to
     * drain the 983 MB/s stream in real time (which user space cannot do).
     */
    for (;;) {
        if (ioctl(fd, T510_DMA_IOC_STATUS, &status) != 0) {
            perror("ioctl(status-during-capture)");
            goto fail_stop;
        }
        if (status.rx_periods >= T510_DMA_RX_TOTAL_PERIODS)
            break;
        if (status.rx_periods != periods_consumed) {
            periods_consumed = status.rx_periods;
            clock_gettime(CLOCK_MONOTONIC, &t_last_period);
        } else if (elapsed_ms_since(&t_last_period) > STALL_TIMEOUT_MS) {
            fprintf(stderr, "DMA stalled: no new RX period for %.0f ms\n",
                    STALL_TIMEOUT_MS);
            goto fail_stop;
        }
    }
    periods_read = T510_DMA_RX_CAPTURE_PERIODS;

    elapsed = elapsed_ms_since(&t_start);

    if (ioctl(fd, T510_DMA_IOC_STOP) != 0) {
        perror("ioctl(stop)");
        goto fail;
    }

    if (ioctl(fd, T510_DMA_IOC_STATUS, &status) != 0) {
        perror("ioctl(status-after-stop)");
        goto fail;
    }

    if (lseek(fd, 0, SEEK_SET) < 0) {
        perror("lseek(rx)");
        goto fail;
    }
    if (read_full(fd, rx_buf, (size_t)target_bytes) != 0) {
        perror("read(rx)");
        goto fail;
    }

    if (preview_pairs > (unsigned)(target_bytes / sizeof(int16_t) / 2U))
        preview_pairs = (unsigned)(target_bytes / sizeof(int16_t) / 2U);
    print_preview(rx_buf, preview_pairs);

    if (csv_fp)
        csv_append(csv_fp, rx_buf, (size_t)target_bytes / sizeof(int16_t));
    if (bin_fp && bin_append(bin_fp, rx_buf, (size_t)target_bytes) != 0)
        goto fail;
    bytes_written = target_bytes;

    if (csv_fp) {
        fflush(csv_fp);
        if (csv_fp != stdout)
            fclose(csv_fp);
        csv_fp = NULL;
    }
    if (bin_fp) {
        fflush(bin_fp);
        fclose(bin_fp);
        bin_fp = NULL;
    }

    printf("Capture finished: elapsed=%.1f ms periods_read=%llu bytes_written=%llu (expected %llu)\n",
           elapsed,
           (unsigned long long)periods_read,
           (unsigned long long)bytes_written,
           (unsigned long long)target_bytes);
    printf("Driver totals: tx_periods=%llu rx_periods=%llu dropped_periods=%llu\n",
           (unsigned long long)status.tx_periods,
           (unsigned long long)status.rx_periods,
           (unsigned long long)periods_dropped);

    close(fd);
    return EXIT_SUCCESS;

fail_stop:
    ioctl(fd, T510_DMA_IOC_STOP);
fail:
    if (csv_fp && csv_fp != stdout)
        fclose(csv_fp);
    if (bin_fp)
        fclose(bin_fp);
    close(fd);
    return EXIT_FAILURE;
}
