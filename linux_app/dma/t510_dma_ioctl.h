#ifndef T510_DMA_IOCTL_H
#define T510_DMA_IOCTL_H

#ifdef __KERNEL__
#include <linux/types.h>
#include <linux/ioctl.h>
#else
#include <stdint.h>
#include <sys/ioctl.h>
#endif


#define T510_DMA_UNIQUE_SAMPLES   524288U //
#define T510_DMA_TOTAL_SAMPLES    (T510_DMA_UNIQUE_SAMPLES * 2U) // 1M samples
#define T510_DMA_BUFFER_BYTES     (T510_DMA_TOTAL_SAMPLES * sizeof(int16_t)) //2MBytes
#define T510_DMA_PERIOD_BYTES     (T510_DMA_BUFFER_BYTES / 2U) // 1 MBytes
//#define T510_DMA_PERIOD_BYTES     256

/*
 * RX capture scheme: the PL RX chain free-runs into the 2 MB
 * axis_data_fifo_2 whenever S2MM is not draining, so at START the first
 * bytes delivered are a stale backlog of up to one full FIFO (32768 x 64 B
 * = T510_DMA_BUFFER_BYTES), possibly starting with a partial packet if a
 * previous run was terminated mid-frame.  The driver therefore queues
 * T510_DMA_RX_FLUSH_PERIODS one-shot period transfers that discard the
 * backlog, followed by T510_DMA_RX_CAPTURE_PERIODS transfers that fill
 * rx_buf exactly once.  rx_periods counts every completed transfer, so the
 * capture is finished when rx_periods reaches T510_DMA_RX_TOTAL_PERIODS.
 */
#define T510_DMA_RX_CAPTURE_PERIODS (T510_DMA_BUFFER_BYTES / T510_DMA_PERIOD_BYTES)
#define T510_DMA_RX_FLUSH_PERIODS   3U
#define T510_DMA_RX_TOTAL_PERIODS   (T510_DMA_RX_FLUSH_PERIODS + T510_DMA_RX_CAPTURE_PERIODS)

struct t510_dma_status {
    uint32_t running;
    uint32_t buffer_bytes;
    uint32_t period_bytes;
    uint64_t tx_periods;
    uint64_t rx_periods;
};

#define T510_DMA_IOC_MAGIC    'q'
#define T510_DMA_IOC_START    _IO(T510_DMA_IOC_MAGIC, 1)
#define T510_DMA_IOC_STOP     _IO(T510_DMA_IOC_MAGIC, 2)
#define T510_DMA_IOC_STATUS   _IOR(T510_DMA_IOC_MAGIC, 3, struct t510_dma_status)

#endif
