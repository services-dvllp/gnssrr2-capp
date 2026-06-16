/* xil_assert.h stub for Linux userspace (__BAREMETAL__ path of XRFdc) */
#ifndef XIL_ASSERT_H
#define XIL_ASSERT_H
#include <assert.h>
/* Standard Xilinx xil_assert.h pulls in xil_types.h.  xrfdc.h relies on
 * u8/u16/u32/... being visible as soon as its baremetal include block is
 * processed (the non-baremetal fallback uses kernel-internal __u32 types
 * that are not available in Linux userspace), so mirror that behaviour
 * here. */
#include "xil_types.h"
#define Xil_AssertVoid(expr)        assert(expr)
#define Xil_AssertNonvoid(expr)     assert(expr)
#define Xil_AssertVoidAlways()      assert(0)
#define Xil_AssertNonvoidAlways()   (assert(0), 0)
#define XASSERT_VOID_ALWAYS         Xil_AssertVoidAlways()
#define XASSERT_NONVOID_ALWAYS      Xil_AssertNonvoidAlways()
#endif /* XIL_ASSERT_H */
