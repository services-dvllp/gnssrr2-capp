/* xil_io.h stub for Linux userspace.
 * In __BAREMETAL__ mode xrfdc_hw.h includes this, but actual register
 * access goes through metal_io_read32/write32 (not Xil_In32/Out32).
 * Provide empty/unused stubs.
 */
#ifndef XIL_IO_H
#define XIL_IO_H
#include "xil_types.h"
#include <stdio.h>
/* These are never called by XRFdc (it uses metal_io_* instead),
 * but must exist for compilation. */
static inline u32  Xil_In32(UINTPTR addr)           { (void)addr; return 0; }
static inline void Xil_Out32(UINTPTR addr, u32 val)  { (void)addr; (void)val; }
#define xil_printf printf
#endif /* XIL_IO_H */
