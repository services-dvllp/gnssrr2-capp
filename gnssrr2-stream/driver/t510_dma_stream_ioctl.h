#ifndef T510_DMA_STREAM_IOCTL_H
#define T510_DMA_STREAM_IOCTL_H

#ifdef __KERNEL__
#include <linux/types.h>
#include <linux/ioctl.h>
#else
#include <stdint.h>
#include <sys/ioctl.h>
#endif

/*
 * Continuous (gap-free) record/replay ring buffers.
 *
 * RX (capture) and TX (playback) each have their own circular DMA buffer,
 * made up of "num_periods" periods of "period_bytes" each (see
 * t510_dma_v2_status, filled in by T510_DMA_V2_IOC_GET_STATUS -- the
 * driver's module parameters can change these from the
 * T510_DMA_V2_PERIOD_BYTES / T510_DMA_V2_NUM_PERIODS defaults below, so
 * user space should size its mmap()s from GET_STATUS, not these macros).
 *
 * Each ring is submitted to the AXI DMA engine as a *single* cyclic
 * descriptor chain that loops forever once started with
 * T510_DMA_V2_IOC_START_RX / START_TX. The hardware never stops between
 * periods -- only a STOP_* ioctl (or module unload) terminates the chain.
 * This is what makes the capture/playback gap-free: there is no
 * terminate/restart cycle between periods, only one at session
 * start/stop.
 *
 * mmap() the device twice:
 *   RX ring: offset 0,                  PROT_READ,             size ring_bytes
 *   TX ring: offset ring_bytes,         PROT_READ | PROT_WRITE, size ring_bytes
 * where ring_bytes = status.period_bytes * status.num_periods.
 *
 * RX usage:
 *   - call START_RX
 *   - loop: WAIT_RX (blocks until rx_hw_periods advances or times out),
 *     then for every newly completed period index
 *     (local_count % num_periods), copy that period out of the RX ring to
 *     the SSD file before local_count falls behind rx_hw_periods by
 *     num_periods (a full lap = overrun, data was overwritten before being
 *     read).
 *
 * TX usage:
 *   - pre-fill the entire TX ring via mmap with the first num_periods
 *     periods of the replay file
 *   - call START_TX
 *   - loop: WAIT_TX (blocks until tx_hw_periods advances), then refill
 *     period (tx_hw_periods + num_periods - 1) % num_periods (the period
 *     that was just played, now the furthest one ahead of the DMA) with
 *     the next period of the replay file before the DMA wraps back to it
 *     num_periods periods later (a full lap = underrun, stale data was
 *     replayed).
 */

#define T510_DMA_V2_PERIOD_BYTES   (1U * 1024U * 1024U)   /* 1 MiB, driver default */
#define T510_DMA_V2_NUM_PERIODS    64U                     /* driver default */
#define T510_DMA_V2_RING_BYTES \
    ((uint64_t)T510_DMA_V2_PERIOD_BYTES * (uint64_t)T510_DMA_V2_NUM_PERIODS)

struct t510_dma_v2_status {
    uint32_t period_bytes;
    uint32_t num_periods;
    uint32_t rx_running;
    uint32_t tx_running;
    uint64_t rx_hw_periods;  /* periods fully written by RX DMA since START_RX */
    uint64_t tx_hw_periods;  /* periods fully played by TX DMA since START_TX */
};

/*
 * Argument for T510_DMA_V2_IOC_SYNC_RX.
 *
 * The RX ring is allocated CACHEABLE (dma_alloc_noncoherent) so the CPU can
 * drain it with a fast cache-line-filling memcpy instead of the ~5x slower
 * uncached reads a coherent (Normal Non-Cacheable) mapping forces. Because the
 * PL AXI DMA is not cache-coherent with the CPU, the driver must invalidate the
 * CPU's caches for the just-completed periods BEFORE user space reads them, so
 * the read sees the bytes the DMA wrote to DRAM rather than stale cache lines.
 *
 * User space calls SYNC_RX with the ring-slot index of the first completed
 * period (local_count % num_periods) and the number of contiguous periods to
 * invalidate; the driver splits the request at the ring wrap. period_start must
 * be < num_periods and period_count must be <= num_periods (a single drain after
 * the overrun resync is always < num_periods periods). period_count == 0 is a
 * no-op. On a driver built for an older kernel without the cacheable path this
 * ioctl is a harmless no-op (the ring is coherent and needs no sync).
 */
struct t510_dma_v2_sync {
    uint64_t period_start;   /* ring-slot index of first period to invalidate */
    uint64_t period_count;   /* number of contiguous periods                  */
};

#define T510_DMA_V2_IOC_MAGIC      'Q'
#define T510_DMA_V2_IOC_START_RX   _IO(T510_DMA_V2_IOC_MAGIC, 1)
#define T510_DMA_V2_IOC_STOP_RX    _IO(T510_DMA_V2_IOC_MAGIC, 2)
#define T510_DMA_V2_IOC_START_TX   _IO(T510_DMA_V2_IOC_MAGIC, 3)
#define T510_DMA_V2_IOC_STOP_TX    _IO(T510_DMA_V2_IOC_MAGIC, 4)
#define T510_DMA_V2_IOC_GET_STATUS _IOR(T510_DMA_V2_IOC_MAGIC, 5, struct t510_dma_v2_status)
/* in/out: pass last-seen hw period count; returns once it has changed
 * (or rx/tx is no longer running, or ~1s elapses with no change). */
#define T510_DMA_V2_IOC_WAIT_RX    _IOWR(T510_DMA_V2_IOC_MAGIC, 6, uint64_t)
#define T510_DMA_V2_IOC_WAIT_TX    _IOWR(T510_DMA_V2_IOC_MAGIC, 7, uint64_t)
/* in: invalidate the CPU caches for a range of completed RX periods so a
 * subsequent read of the cacheable RX ring sees freshly DMA'd data. */
#define T510_DMA_V2_IOC_SYNC_RX    _IOW(T510_DMA_V2_IOC_MAGIC, 8, struct t510_dma_v2_sync)

#endif /* T510_DMA_STREAM_IOCTL_H */
