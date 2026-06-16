#ifndef T510_DMA_IOCTL_H
#define T510_DMA_IOCTL_H

#ifdef __KERNEL__
#include <linux/types.h>
#include <linux/ioctl.h>
#else
#include <stdint.h>
#include <sys/ioctl.h>
#endif


#define T510_DMA_UNIQUE_SAMPLES    3072U  //524288U //
#define T510_DMA_TOTAL_SAMPLES    (T510_DMA_UNIQUE_SAMPLES * 2U) // 6144
#define T510_DMA_BUFFER_BYTES     (T510_DMA_TOTAL_SAMPLES * sizeof(int16_t)) // 6144*2
#define T510_DMA_PERIOD_BYTES     (T510_DMA_BUFFER_BYTES / 2U)
//#define T510_DMA_PERIOD_BYTES     256

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
