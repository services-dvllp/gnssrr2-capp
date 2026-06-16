/* Minimal metal/io.h stub for Linux userspace build.
 * Uses /dev/mem mmap for hardware register access.
 * metal_io_init() maps the physical address via /dev/mem.
 */
#ifndef __METAL_IO__H__
#define __METAL_IO__H__
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <metal/assert.h>
#include <metal/atomic.h>    /* provides memory_order via <stdatomic.h> */
#include <metal/compiler.h>
#include <metal/sys.h>
#ifdef __cplusplus
extern "C" {
#endif

struct metal_io_region;

struct metal_io_ops {
    uint64_t (*read)(struct metal_io_region *io, unsigned long offset,
                     memory_order order, int width);
    void     (*write)(struct metal_io_region *io, unsigned long offset,
                      uint64_t value, memory_order order, int width);
    int      (*block_read)(struct metal_io_region *io, unsigned long offset,
                           void *restrict dst, memory_order order, int len);
    int      (*block_write)(struct metal_io_region *io, unsigned long offset,
                            const void *restrict src, memory_order order, int len);
    void     (*block_set)(struct metal_io_region *io, unsigned long offset,
                          unsigned char value, memory_order order, int len);
    void     (*close)(struct metal_io_region *io);
    metal_phys_addr_t (*offset_to_phys)(struct metal_io_region *io, unsigned long offset);
    unsigned long     (*phys_to_offset)(struct metal_io_region *io, metal_phys_addr_t phys);
};

struct metal_io_region {
    void                    *virt;
    const metal_phys_addr_t *physmap;
    size_t                   size;
    unsigned long            page_shift;
    metal_phys_addr_t        page_mask;
    unsigned int             mem_flags;
    struct metal_io_ops      ops;
    struct metal_list        list;
};

/*
 * metal_io_init - called by XRFdc_CfgInitialize with the RFDC physical base addr.
 * On Linux, we intercept this to mmap /dev/mem at that physical address.
 */
void metal_io_init(struct metal_io_region *io, void *virt,
                   const metal_phys_addr_t *physmap, size_t size,
                   unsigned int page_shift, unsigned int mem_flags,
                   const struct metal_io_ops *ops);

static inline void metal_io_finish(struct metal_io_region *io) {
    if (io->ops.close) (*io->ops.close)(io);
    memset(io, 0, sizeof(*io));
}

static inline size_t metal_io_region_size(struct metal_io_region *io) {
    return io->size;
}

static inline void *metal_io_virt(struct metal_io_region *io, unsigned long offset) {
    return (io->virt != METAL_BAD_VA && offset < io->size)
           ? (void *)((uintptr_t)io->virt + offset)
           : NULL;
}

/*
 * Direct volatile register access (single-threaded, no atomic ordering needed).
 * These replace the complex C11 atomic chain from the BSP metal/io.h.
 */
static inline uint32_t metal_io_read32(struct metal_io_region *io, unsigned long offset) {
    volatile uint32_t *ptr = (volatile uint32_t *)metal_io_virt(io, offset);
    metal_assert(ptr != NULL);
    return *ptr;
}

static inline void metal_io_write32(struct metal_io_region *io, unsigned long offset, uint32_t val) {
    volatile uint32_t *ptr = (volatile uint32_t *)metal_io_virt(io, offset);
    metal_assert(ptr != NULL);
    *ptr = val;
}

static inline uint16_t metal_io_read16(struct metal_io_region *io, unsigned long offset) {
    volatile uint16_t *ptr = (volatile uint16_t *)metal_io_virt(io, offset);
    metal_assert(ptr != NULL);
    return *ptr;
}

static inline void metal_io_write16(struct metal_io_region *io, unsigned long offset, uint16_t val) {
    volatile uint16_t *ptr = (volatile uint16_t *)metal_io_virt(io, offset);
    metal_assert(ptr != NULL);
    *ptr = val;
}

static inline uint8_t metal_io_read8(struct metal_io_region *io, unsigned long offset) {
    volatile uint8_t *ptr = (volatile uint8_t *)metal_io_virt(io, offset);
    metal_assert(ptr != NULL);
    return *ptr;
}

static inline void metal_io_write8(struct metal_io_region *io, unsigned long offset, uint8_t val) {
    volatile uint8_t *ptr = (volatile uint8_t *)metal_io_virt(io, offset);
    metal_assert(ptr != NULL);
    *ptr = val;
}

static inline uint64_t metal_io_read64(struct metal_io_region *io, unsigned long offset) {
    volatile uint64_t *ptr = (volatile uint64_t *)metal_io_virt(io, offset);
    metal_assert(ptr != NULL);
    return *ptr;
}

static inline void metal_io_write64(struct metal_io_region *io, unsigned long offset, uint64_t val) {
    volatile uint64_t *ptr = (volatile uint64_t *)metal_io_virt(io, offset);
    metal_assert(ptr != NULL);
    *ptr = val;
}

int metal_io_block_read(struct metal_io_region *io, unsigned long offset,
                        void *restrict dst, int len);
int metal_io_block_write(struct metal_io_region *io, unsigned long offset,
                         const void *restrict src, int len);
int metal_io_block_set(struct metal_io_region *io, unsigned long offset,
                       unsigned char value, int len);

#ifdef __cplusplus
}
#endif
/* No system/generic/io.h inclusion needed (avoids standalone deps) */
#endif /* __METAL_IO__H__ */
