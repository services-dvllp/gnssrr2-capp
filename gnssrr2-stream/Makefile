# =============================================================================
# gnssrr2-stream - continuous RX/TX streaming for the ANTSDR T510 RFSoC.
#
# `make` builds EVERYTHING into build/:
#   build/rx_stream            continuous RFDC capture  -> SSD file
#   build/tx_stream            continuous RFDC replay   <- SSD file
#   build/t510_rf_init         standalone RFDC bring-up tool (same init the
#                              apps run in-process; -t / --skip-mts CLI)
#   build/t510_dma_stream.ko   loadable cyclic-DMA kernel module
#
# On the board (native aarch64), just:   make clean && make
# App-only build (no kernel tree):        make apps
# Override the kernel build tree:         make KDIR=/path/to/kernel-source
# Cross-compile the user-space parts:     make apps CC=aarch64-linux-gnu-gcc
# =============================================================================

CC      ?= gcc
CFLAGS  ?= -O2 -Wall -Wextra -std=gnu11

# Kernel build tree for the module. Default is the standard location populated
# by the kernel-headers package (same default the v1/v2 driver Makefiles use,
# and the one the board already builds t510_dma_loopback against). Override on
# the command line only if your kernel source lives elsewhere.
KDIR    ?= /lib/modules/$(shell uname -r)/build

BUILD   := build
OBJ     := $(BUILD)/obj

# RFDC stack: compiled like linux_app/Makefile (baremetal XRFdc port).
RFDC_CFLAGS := -Wno-unused-parameter -Wno-sign-compare -Wno-implicit-fallthrough \
               -D__BAREMETAL__
RFDC_INC    := -Irfdc -Irfdc/devices -Irfdc/rfdc_src

# App sources only need the ABI header, the rfdc_init prototype and rtx_config.
APP_INC     := -Iapp -Idriver -Irfdc

LDLIBS      := -lm

# --- shared RFDC object set (mirrors linux_app/Makefile, main_linux.c replaced
#     by rfdc_init.c). rfdc_main.c is intentionally NOT here: it provides main()
#     for the standalone tool only, and must not be linked into the apps. ---
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

BINS := $(BUILD)/rx_stream $(BUILD)/tx_stream $(BUILD)/t510_rf_init

.PHONY: all apps driver clean fix-mtime

# Default: build the user-space binaries AND the kernel module.
all: apps driver
	@echo "Built: $(BINS) $(BUILD)/t510_dma_stream.ko"

# User-space only (rx_stream, tx_stream, t510_rf_init) - no kernel tree needed.
apps: fix-mtime $(BINS)
	@echo "Built: $(BINS)"

# --- link the three user-space binaries ---
$(BUILD)/rx_stream: $(OBJ)/app/rx_stream.o $(RFDC_OBJS)
	@mkdir -p $(@D)
	$(CC) $^ $(LDLIBS) -o $@

$(BUILD)/tx_stream: $(OBJ)/app/tx_stream.o $(RFDC_OBJS)
	@mkdir -p $(@D)
	$(CC) $^ $(LDLIBS) -o $@

$(BUILD)/t510_rf_init: $(OBJ)/rfdc_main.o $(RFDC_OBJS)
	@mkdir -p $(@D)
	$(CC) $^ $(LDLIBS) -o $@

# --- app objects (simple POSIX flags) ---
$(OBJ)/app/%.o: app/%.c $(APP_HDRS)
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) $(APP_INC) -c $< -o $@

# --- RFDC objects, incl. rfdc_main.o (baremetal XRFdc flags + include paths) ---
$(OBJ)/%.o: rfdc/%.c
	@mkdir -p $(@D)
	$(CC) $(CFLAGS) $(RFDC_CFLAGS) $(RFDC_INC) -c $< -o $@

# --- kernel module: build in driver/, then drop the .ko into build/ ---
driver:
	$(MAKE) -C driver KDIR=$(KDIR)
	@mkdir -p $(BUILD)
	cp -f driver/t510_dma_stream.ko $(BUILD)/
	@echo "Built: $(BUILD)/t510_dma_stream.ko"

clean:
	rm -rf $(BINS) $(BUILD)/t510_dma_stream.ko $(OBJ)
	-$(MAKE) -C driver KDIR=$(KDIR) clean

# The board's RTC can drift behind the checked-out file mtimes, making GNU make
# emit "modification time in the future" / "Clock skew detected" and skip
# rebuilds. Reset any source/header ahead of the wall clock back to now (only
# files actually in the future are touched). Same trick as linux_app/Makefile.
fix-mtime:
	@ref=$$(mktemp) && \
	    find . -type f \( -name '*.c' -o -name '*.h' -o -name 'Makefile' \) \
	        -newer $$ref -exec touch -c -r $$ref -- {} + 2>/dev/null; \
	    rm -f $$ref
