/*
 * xrfdc_linux.h
 *
 * Thin wrapper that pulls in the XRFdc library header with the correct
 * include paths for the Linux userspace build.
 *
 * Provides type stubs needed by xrfdc.h when __BAREMETAL__ is defined.
 */
#ifndef XRFDC_LINUX_H
#define XRFDC_LINUX_H

#include "xparameters.h"   /* sets __BAREMETAL__, RFDC config macros */
#include "xil_types.h"     /* u8, u16, u32, u64, s32, UINTPTR         */
#include "xstatus.h"       /* XST_SUCCESS, XST_FAILURE                 */
#include "xil_assert.h"    /* Xil_AssertNonvoid, Xil_AssertVoid        */
#include "xdebug.h"        /* xil_printf → printf                      */
#include "sleep.h"         /* sleep(), usleep() (from <unistd.h>)      */

/* Point the compiler to the XRFdc header from the Vitis BSP.
 * The Makefile adds -I$(BSP_RFDC_SRC) to the include path so that
 * #include "xrfdc.h" resolves to the BSP copy. */
#include "xrfdc.h"

#endif /* XRFDC_LINUX_H */
