/* Minimal metal/irq.h stub for Linux userspace build.
 * IRQ management is not used by the T510 RF init application.
 */
#ifndef __METAL_IRQ__H__
#define __METAL_IRQ__H__
#include <metal/sys.h>
#ifdef __cplusplus
extern "C" {
#endif
/* IRQ handler return values, matching real libmetal/irq.h */
#define METAL_IRQ_NOT_HANDLED 0
#define METAL_IRQ_HANDLED     1

static inline int  metal_irq_enable(unsigned int vector)  { (void)vector; return 0; }
static inline void metal_irq_disable(unsigned int vector) { (void)vector; }
static inline int  metal_irq_register(int irq, void *handler, void *drv_id, void *arg)
    { (void)irq; (void)handler; (void)drv_id; (void)arg; return 0; }
#ifdef __cplusplus
}
#endif
#endif /* __METAL_IRQ__H__ */
