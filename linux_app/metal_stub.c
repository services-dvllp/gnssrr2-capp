/*
 * metal_stub.c
 *
 * Linux userspace implementations for the minimal libmetal stubs used by the
 * XRFdc driver.
 *
 * Key function: metal_io_init() uses mmap(/dev/mem) so that the XRFdc library
 * can access the RF Data Converter registers at physical address 0x80000000.
 */
#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <stdint.h>
#include <string.h>
#include <fcntl.h>
#include <unistd.h>
#include <sys/mman.h>
#include "metal/io.h"
#include "metal/log.h"
#include "metal/sys.h"
#include "metal/device.h"

/* --------------------------------------------------------------------------
 * Global metal state (required by metal_log macro in metal/log.h)
 * -------------------------------------------------------------------------- */
struct metal_state _metal = {
    .common = {
        .log_level   = METAL_LOG_INFO,
        .log_handler = NULL,   /* set by metal_init or metal_set_log_handler */
    }
};

/* --------------------------------------------------------------------------
 * Logging
 * -------------------------------------------------------------------------- */
void metal_default_log_handler(enum metal_log_level level, const char *format, ...)
{
    va_list args;
    const char *prefix;
    (void)level;

    switch (level) {
        case METAL_LOG_EMERGENCY:
        case METAL_LOG_ALERT:
        case METAL_LOG_CRITICAL:
        case METAL_LOG_ERROR:   prefix = "[METAL ERROR] "; break;
        case METAL_LOG_WARNING: prefix = "[METAL WARN]  "; break;
        case METAL_LOG_NOTICE:
        case METAL_LOG_INFO:    prefix = "[METAL INFO]  "; break;
        case METAL_LOG_DEBUG:   prefix = "[METAL DEBUG] "; break;
        default:                prefix = "[METAL] ";       break;
    }
    fputs(prefix, stdout);
    va_start(args, format);
    vprintf(format, args);
    va_end(args);
}

void metal_set_log_handler(metal_log_handler handler) {
    _metal.common.log_handler = handler;
}
metal_log_handler metal_get_log_handler(void) {
    return _metal.common.log_handler;
}
void metal_set_log_level(enum metal_log_level level) {
    _metal.common.log_level = level;
}
enum metal_log_level metal_get_log_level(void) {
    return _metal.common.log_level;
}

/* --------------------------------------------------------------------------
 * metal_init / metal_finish
 * -------------------------------------------------------------------------- */
int metal_init(const struct metal_init_params *params)
{
    if (params) {
        _metal.common.log_level   = params->log_level;
        _metal.common.log_handler = params->log_handler;
    }
    if (!_metal.common.log_handler)
        _metal.common.log_handler = metal_default_log_handler;
    return 0;
}

void metal_finish(void) { /* nothing to release */ }

/* --------------------------------------------------------------------------
 * metal_io_init
 *
 * Called by XRFdc_CfgInitialize() as:
 *   metal_io_init(io, (void*)ConfigPtr->BaseAddr, &ConfigPtr->BaseAddr,
 *                 XRFDC_REGION_SIZE, (unsigned int)(-1), 0, NULL);
 *
 * In baremetal standalone mode, 'virt' IS the physical address (1:1 mapping).
 * For Linux, we mmap /dev/mem at that physical address to get a real virtual
 * address, then store it in io->virt.
 * -------------------------------------------------------------------------- */
void metal_io_init(struct metal_io_region *io, void *virt,
                   const metal_phys_addr_t *physmap, size_t size,
                   unsigned int page_shift, unsigned int mem_flags,
                   const struct metal_io_ops *ops)
{
    metal_phys_addr_t phys;
    void *mapped_virt;
    int mem_fd;
    static const struct metal_io_ops zero_ops;

    /* Determine the physical address from the physmap or virt pointer */
    if (physmap)
        phys = *physmap;
    else
        phys = (metal_phys_addr_t)(uintptr_t)virt;

    /* Map the physical address region via /dev/mem */
    mem_fd = open("/dev/mem", O_RDWR | O_SYNC);
    if (mem_fd < 0) {
        perror("metal_io_init: open(/dev/mem) failed");
        mapped_virt = METAL_BAD_VA;
    } else {
        mapped_virt = mmap(NULL, size, PROT_READ | PROT_WRITE, MAP_SHARED,
                           mem_fd, (off_t)phys);
        close(mem_fd);
        if (mapped_virt == MAP_FAILED) {
            perror("metal_io_init: mmap failed");
            mapped_virt = METAL_BAD_VA;
        }
    }

    io->virt       = mapped_virt;
    io->physmap    = physmap;
    io->size       = size;
    io->page_shift = page_shift;
    if (page_shift >= (unsigned int)(sizeof(io->page_mask) * 8))
        io->page_mask = (metal_phys_addr_t)(-1);
    else
        io->page_mask = ((metal_phys_addr_t)1 << page_shift) - 1UL;
    io->mem_flags  = mem_flags;
    io->ops        = ops ? *ops : zero_ops;

    if (mapped_virt == METAL_BAD_VA) {
        fprintf(stderr, "metal_io_init: FATAL - could not map phys=0x%lx size=0x%zx\n",
                (unsigned long)phys, size);
        fprintf(stderr, "Ensure /dev/mem is accessible and the address range is valid.\n");
    }
}

/* --------------------------------------------------------------------------
 * metal_io_block_* (not used by XRFdc but required to link)
 * -------------------------------------------------------------------------- */
int metal_io_block_read(struct metal_io_region *io, unsigned long offset,
                        void *restrict dst, int len)
{
    void *src = metal_io_virt(io, offset);
    if (!src) return -1;
    memcpy(dst, src, (size_t)len);
    return len;
}

int metal_io_block_write(struct metal_io_region *io, unsigned long offset,
                         const void *restrict src, int len)
{
    void *dst = metal_io_virt(io, offset);
    if (!dst) return -1;
    memcpy(dst, src, (size_t)len);
    return len;
}

int metal_io_block_set(struct metal_io_region *io, unsigned long offset,
                       unsigned char value, int len)
{
    void *dst = metal_io_virt(io, offset);
    if (!dst) return -1;
    memset(dst, value, (size_t)len);
    return len;
}

/* --------------------------------------------------------------------------
 * metal_register_generic_device
 *
 * The XRFdc __BAREMETAL__ path invokes this from XRFdc_RegisterMetal() before
 * calling metal_device_open(). In this Linux userspace port we bypass the
 * libmetal bus/device registry entirely: the platform_drivers_linux layer
 * mmap()s the RFDC register region and hands the resulting metal_io_region
 * directly to XRFdc_CfgInitialize(). Registration here is therefore a no-op
 * returning success (0 == XRFDC_SUCCESS).
 * -------------------------------------------------------------------------- */
int metal_register_generic_device(struct metal_device *device)
{
    (void)device;
    return 0;
}
