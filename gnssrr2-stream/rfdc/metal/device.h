/* Minimal metal/device.h stub for Linux userspace build.
 * The T510 app uses __BAREMETAL__ path which does NOT call metal_device_open()
 * or metal_linux_get_device_property(). Only the struct declarations are needed
 * for xrfdc.h to compile (XRFdc.device field).
 */
#ifndef __METAL_DEVICE__H__
#define __METAL_DEVICE__H__
#include <metal/io.h>
#include <metal/list.h>
#ifdef __cplusplus
extern "C" {
#endif

#define METAL_MAX_DEVICE_REGIONS 32

struct metal_bus;
struct metal_device {
    const char            *name;
    struct metal_bus      *bus;
    unsigned int           num_regions;
    struct metal_io_region regions[METAL_MAX_DEVICE_REGIONS];
    struct metal_list      node;
    int                    irq_num;
    void                  *irq_info;
    void                  *priv;
};

/* Stubs for Linux device-tree access (not used in __BAREMETAL__ path) */
static inline int  metal_device_open(const char *bus, const char *dev,
                                     struct metal_device **device)
    { (void)bus; (void)dev; (void)device; return -1; }
static inline void metal_device_close(struct metal_device *dev) { (void)dev; }
static inline struct metal_io_region *metal_device_io_region(struct metal_device *dev, unsigned int index)
    { (void)dev; (void)index; return NULL; }

/* The __BAREMETAL__ path of xrfdc_sinit.c calls metal_register_generic_device()
 * as part of XRFdc_RegisterMetal().  Our platform driver pre-populates
 * the device->io region itself, so registration is a no-op for this build.
 * Declare it here so the call compiles cleanly; a trivial definition is
 * provided by metal_stub.c. */
int metal_register_generic_device(struct metal_device *device);

#ifdef __cplusplus
}
#endif
#endif /* __METAL_DEVICE__H__ */
