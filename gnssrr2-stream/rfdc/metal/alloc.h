/* Minimal metal/alloc.h stub for Linux userspace build */
#ifndef __METAL_ALLOC__H__
#define __METAL_ALLOC__H__
#include <stdlib.h>
#ifdef __cplusplus
extern "C" {
#endif
static inline void *metal_allocate_memory(unsigned int size) { return malloc(size); }
static inline void  metal_free_memory(void *ptr)             { free(ptr); }
#ifdef __cplusplus
}
#endif
#endif /* __METAL_ALLOC__H__ */
