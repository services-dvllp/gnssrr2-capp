# =============================================================================
# gnssrr2-stream - continuous RX/TX streaming apps for the ANTSDR T510 RFSoC.
#
# Builds two standalone user-space binaries into build/:
#   build/rx_stream   continuous RFDC capture  -> SSD file (512-byte header + IQ)
#   build/tx_stream   continuous RFDC replay   <- SSD file
#
# Each app links the in-process RFDC bring-up (rfdc/rfdc_init.c, vendored from
# the linux_app t510_rf_init sources) so RFDC init runs at startup; no separate
# t510_rf_init run is needed.
#
# Build (native, on the aarch64 board):   make
# Cross-compile from x86:                 make CC=aarch64-linux-gnu-gcc
# Kernel module (separate, needs KDIR):   make driver KDIR=/path/to/kernel-source
# =============================================================================

CC      ?= gcc
CFLAGS  ?= -O2 -Wall -Wextra -std=gnu11

BUILD   := build
OBJ     := $(BUILD)/obj

# RFDC stack: compiled like linux_app/Makefile (baremetal XRFdc port).
RFDC_CFLAGS := -Wno-unused-parameter -Wno-sign-compare -Wno-implicit-fallthrough \
               -D__BAREMETAL__
RFDC_INC    := -Irfdc -Irfdc/devices -Irfdc/rfdc_src

# App sources only need the ABI header, the rfdc_init prototype and rtx_config.
APP_INC     := -Iapp -Idriver -Irfdc

LDLIBS      := -lm

# --- RFDC object set, shared by both apps (mirrors linux_app/Makefile list,
#     with main_linux.c replaced by rfdc_init.c) ---
RFDC_SRCS := \
    rfdc/rfdc_init.c \
    rfdc/metal_stub.c \
    rfdc/devices/platform_drivers_linux.c \
    rfdc/lmk04828/lmk04828.c \
    rfdc/rfsoc/rfsoc.c \
    rfdc/rfdc_src/xrfdc.c \
    rfdc/rfdc_src/xrfdc_sinit.c \
    rfdc/rfdc_src/xrfdc_g.c \
    rfdc/rfdc_src/xrfdc_mixer.c \
    rfdc/rfdc_src/xrfdc_mts.c \
    rfdc/rfdc_src/xrfdc_ap.c \
    rfdc/rfdc_src/xrfdc_dp.c \
    rfdc/rfdc_src/xrfdc_clock.c \
    rfdc/rfdc_src/xrfdc_intr.c \
    rfdc/rfdc_src/xrfdc_mb.c

RFDC_OBJS := $(patsubst rfdc/%.c,$(OBJ)/%.o,$(RFDC_SRCS))

APP_HDRS  := app/rtx_config.h rfdc/rfdc_init.h driver/t510_dma_stream_ioctl.h

.PHONY: all clean driver driver-clean fix-mtime

all: fix-mtime $(BUILD)/rx_stream $(BUILD)/tx_stream
	@echo "Built: $(BUILD)/rx_stream $(BUILD)/tx_stream"

# --- link the two apps (each: its own app object + the shared RFDC objects) ---
$(BUILD)/rx_stream: $(OBJ)/app/rx_stream.o $(RFDC_OBJS)
	$(CC) $^ $(LDLIBS) -o $@

$(BUILD)/tx_stream: $(OBJ)/app/tx_stream.o $(RFDC_OBJS)
	$(CC) $^ $(LDLIBS) -o $@

# --- app objects (simple POSIX flags) ---
$(OBJ)/app/%.o: app/%.c $(APP_HDRS)
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) $(APP_INC) -c $< -o $@

# --- RFDC objects (baremetal XRFdc flags + include paths) ---
$(OBJ)/%.o: rfdc/%.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) $(RFDC_CFLAGS) $(RFDC_INC) -c $< -o $@

# --- kernel module passthrough (needs a kernel build tree via KDIR) ---
# Kept separate from `all`/`clean` so the user-space build never needs kernel
# headers. Build the module with:  make driver KDIR=/path/to/kernel-source
driver:
	$(MAKE) -C driver

driver-clean:
	$(MAKE) -C driver clean

# Clean only the user-space build (the kernel module has its own driver-clean,
# which is not invoked here because it requires KDIR to be valid).
clean:
	rm -rf $(BUILD)/rx_stream $(BUILD)/tx_stream $(OBJ)

# The board's RTC can drift behind the checked-out file mtimes, making GNU make
# emit "modification time in the future" / "Clock skew detected" and skip
# rebuilds. Reset any source/header ahead of the wall clock back to now (only
# files actually in the future are touched). Same trick as linux_app/Makefile.
fix-mtime:
	@ref=$$(mktemp) && \
	    find . -type f \( -name '*.c' -o -name '*.h' -o -name 'Makefile' \) \
	        -newer $$ref -exec touch -c -r $$ref -- {} + 2>/dev/null; \
	    rm -f $$ref
