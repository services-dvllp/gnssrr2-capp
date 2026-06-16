/* Minimal metal/cpu.h stub for Linux userspace build (AArch64) */
#ifndef __METAL_CPU__H__
#define __METAL_CPU__H__
static inline void metal_cpu_yield(void) { __asm__ volatile("yield" ::: "memory"); }
#endif /* __METAL_CPU__H__ */
