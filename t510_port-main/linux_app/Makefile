# =============================================================================
# Makefile for the ANTSDR T510 CH8 RF initialisation application
# Linux userspace build - compiles directly on the AArch64 target with gcc
#
# Usage:
#   make                  # build
#   make clean            # remove build artefacts
#
# Prerequisites on the target board:
#   gcc (or aarch64-linux-gnu-gcc when cross-compiling on x86)
#   /dev/mem accessible (requires root or appropriate permissions)
#   /dev/spidev1.0 present (SPI1 - adjust SPI_DEVICE_PATH in parameters.h)
#   GPIO base at 338 (adjust GPIO_CHIP_BASE in parameters.h if different)
# =============================================================================

CC      := gcc
TARGET  := t510_rf_init

# --------------------------------------------------------------------------
# Paths
# --------------------------------------------------------------------------
# Root of this Linux application source tree
APP_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

# XRFdc driver source (vendored from the Vitis BSP rfdc_v11_1/src,
# equivalent to Xilinx embeddedsw XilinxProcessorIPLib/drivers/rfdc/src
# on the xlnx_rel_v2024.2 branch). Kept inside linux_app/ so the folder
# is self-contained and does not depend on the vitis/ tree at build time.
BSP_RFDC    := $(APP_DIR)rfdc_src

# --------------------------------------------------------------------------
# Source files
# --------------------------------------------------------------------------
# Application and platform sources (Linux-specific implementations)
APP_SRCS := \
    main_linux.c \
    metal_stub.c \
    devices/platform_drivers_linux.c \
    lmk04828/lmk04828.c \
    rfsoc/rfsoc.c

# XRFdc library sources from the BSP (compiled with __BAREMETAL__ defined)
RFDC_SRCS := \
    $(BSP_RFDC)/xrfdc.c \
    $(BSP_RFDC)/xrfdc_sinit.c \
    $(BSP_RFDC)/xrfdc_g.c \
    $(BSP_RFDC)/xrfdc_mixer.c \
    $(BSP_RFDC)/xrfdc_mts.c \
    $(BSP_RFDC)/xrfdc_ap.c \
    $(BSP_RFDC)/xrfdc_dp.c \
    $(BSP_RFDC)/xrfdc_clock.c \
    $(BSP_RFDC)/xrfdc_intr.c \
    $(BSP_RFDC)/xrfdc_mb.c

ALL_SRCS := $(APP_SRCS) $(RFDC_SRCS)

# --------------------------------------------------------------------------
# Include paths
# --------------------------------------------------------------------------
# 1. APP_DIR (.) – finds xparameters.h, xil_types.h, metal/*.h, etc. (Linux stubs)
# 2. APP_DIR/devices – for platform_drivers.h, parameters.h
# 3. BSP_RFDC – for xrfdc.h, xrfdc_hw.h (needed by rfsoc.c and xrfdc_g.c)
# 4. Metal headers: APP_DIR takes priority over BSP so our stubs override the BSP metal/*.h
INCS := \
    -I$(APP_DIR) \
    -I$(APP_DIR)devices \
    -I$(BSP_RFDC)

# --------------------------------------------------------------------------
# Compiler flags
# --------------------------------------------------------------------------
CFLAGS := \
    -Wall -Wextra \
    -Wno-unused-parameter \
    -Wno-sign-compare \
    -Wno-implicit-fallthrough \
    -O2 \
    -std=gnu11 \
    -D__BAREMETAL__ \
    $(INCS)

# Link with math library (XRFdc uses double arithmetic)
LDFLAGS := -lm

# --------------------------------------------------------------------------
# Object file list
# --------------------------------------------------------------------------
OBJS := $(patsubst %.c,%.o,$(APP_SRCS)) \
        $(patsubst $(BSP_RFDC)/%.c,rfdc_%.o,$(RFDC_SRCS))

# --------------------------------------------------------------------------
# Rules
# --------------------------------------------------------------------------
.PHONY: all clean fix-mtime

# When the target board's RTC is behind the mtimes of the checked-out
# source files (e.g. because the board has no network-sync'd clock and
# its hardware clock has drifted into the past), GNU make emits:
#   "File 'Makefile' has modification time N s in the future"
#   "warning: Clock skew detected.  Your build may be incomplete."
# The rule below creates a sentinel with the current wall-clock time and
# resets the mtime of any source/header/Makefile that is still in the
# future back to "now".  It only touches files that are actually ahead of
# the clock, so incremental builds are not invalidated.
all: fix-mtime $(TARGET)
	@echo "Build complete: $(TARGET)"
	@echo ""
	@echo "Run as root (required for /dev/mem and spidev access):"
	@echo "  sudo ./$(TARGET)"

fix-mtime:
	@ref=$$(mktemp) && \
	    find $(APP_DIR) -type f \
	        \( -name '*.c' -o -name '*.h' -o -name 'Makefile' \) \
	        -newer $$ref -exec touch -c -r $$ref -- {} + 2>/dev/null; \
	    rm -f $$ref

$(TARGET): $(OBJS)
	$(CC) $(OBJS) $(LDFLAGS) -o $@

# Application and platform C files (in APP_DIR)
%.o: $(APP_DIR)%.c
	$(CC) $(CFLAGS) -c $< -o $@

devices/platform_drivers_linux.o: $(APP_DIR)devices/platform_drivers_linux.c
	@mkdir -p devices
	$(CC) $(CFLAGS) -c $< -o $@

lmk04828/lmk04828.o: $(APP_DIR)lmk04828/lmk04828.c
	@mkdir -p lmk04828
	$(CC) $(CFLAGS) -c $< -o $@

rfsoc/rfsoc.o: $(APP_DIR)rfsoc/rfsoc.c
	@mkdir -p rfsoc
	$(CC) $(CFLAGS) -c $< -o $@

# XRFdc library sources from BSP (prefixed rfdc_ to avoid filename collisions)
rfdc_%.o: $(BSP_RFDC)/%.c
	$(CC) $(CFLAGS) -c $< -o $@

clean: fix-mtime
	rm -f $(TARGET) *.o devices/*.o lmk04828/*.o rfsoc/*.o rfdc_*.o
