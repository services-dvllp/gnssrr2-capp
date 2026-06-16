/* Minimal metal/sys.h stub for Linux userspace build */
#ifndef __METAL_SYS__H__
#define __METAL_SYS__H__
#include <stdlib.h>
#include <stdint.h>
#include <metal/log.h>
#include <metal/list.h>
#ifdef __cplusplus
extern "C" {
#endif
typedef unsigned long metal_phys_addr_t;
typedef int metal_irq_t;
#define METAL_BAD_OFFSET  ((unsigned long)-1)
#define METAL_BAD_PHYS    ((metal_phys_addr_t)-1)
#define METAL_BAD_VA      ((void*)-1)
#define METAL_BAD_IRQ     ((metal_irq_t)-1)

struct metal_init_params {
    metal_log_handler   log_handler;
    enum metal_log_level log_level;
};
#ifndef METAL_INIT_DEFAULTS
#define METAL_INIT_DEFAULTS { .log_handler = metal_default_log_handler, .log_level = METAL_LOG_INFO }
#endif
extern int  metal_init(const struct metal_init_params *params);
extern void metal_finish(void);
/* _metal is declared in metal/log.h - no redeclaration needed */
#ifdef __cplusplus
}
#endif
/* Stub: no system/generic/sys.h include needed */
#endif /* __METAL_SYS__H__ */
