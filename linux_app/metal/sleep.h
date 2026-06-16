/* Minimal metal/sleep.h stub for Linux userspace build */
#ifndef __METAL_SLEEP__H__
#define __METAL_SLEEP__H__
#include <unistd.h>
#ifdef __cplusplus
extern "C" {
#endif
static inline unsigned int metal_sleep_usec(unsigned int usec) { usleep(usec); return 0; }
#ifdef __cplusplus
}
#endif
#endif /* __METAL_SLEEP__H__ */
