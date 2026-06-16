/* Minimal metal/compiler.h stub for Linux userspace build */
#ifndef __METAL_COMPILER__H__
#define __METAL_COMPILER__H__
#ifndef __packed
#define __packed __attribute__((packed))
#endif
#ifndef __aligned
#define __aligned(x) __attribute__((aligned(x)))
#endif
#define METAL_PACKED_BEGIN
#define METAL_PACKED_END   __attribute__((packed))
#endif /* __METAL_COMPILER__H__ */
