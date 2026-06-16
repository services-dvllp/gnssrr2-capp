/* Minimal metal/log.h stub for Linux userspace build */
#ifndef __METAL_METAL_LOG__H__
#define __METAL_METAL_LOG__H__
#include <stdio.h>
#ifdef __cplusplus
extern "C" {
#endif
enum metal_log_level {
    METAL_LOG_EMERGENCY = 0,
    METAL_LOG_ALERT,
    METAL_LOG_CRITICAL,
    METAL_LOG_ERROR,
    METAL_LOG_WARNING,
    METAL_LOG_NOTICE,
    METAL_LOG_INFO,
    METAL_LOG_DEBUG,
};
typedef void (*metal_log_handler)(enum metal_log_level level, const char *format, ...);
extern void metal_set_log_handler(metal_log_handler handler);
extern metal_log_handler metal_get_log_handler(void);
extern void metal_set_log_level(enum metal_log_level level);
extern enum metal_log_level metal_get_log_level(void);
extern void metal_default_log_handler(enum metal_log_level level, const char *format, ...);

/* Forward declaration of _metal needed by the macro */
struct metal_common_state {
    enum metal_log_level  log_level;
    metal_log_handler     log_handler;
};
struct metal_state {
    struct metal_common_state common;
};
extern struct metal_state _metal;

#define metal_log(level, ...) \
    ((level <= _metal.common.log_level && _metal.common.log_handler) \
     ? (void)_metal.common.log_handler(level, __VA_ARGS__) \
     : (void)0)

#ifdef __cplusplus
}
#endif
/* No system/generic/log.h needed - stub is complete */
#endif /* __METAL_METAL_LOG__H__ */
