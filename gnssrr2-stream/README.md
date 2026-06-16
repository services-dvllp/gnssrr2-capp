# gnssrr2-stream — continuous RX/TX streaming for the ANTSDR T510

Two standalone user-space applications for gap-free RFDC record/replay over the
`t510_dma_stream` cyclic-DMA driver, each self-contained in this folder:

- **`rx_stream`** — continuous capture from hardware to an SSD file.
- **`tx_stream`** — continuous replay from an SSD file back to hardware.

Both apps:

1. Run the RFDC bring-up **in-process at startup** (no separate `t510_rf_init`).
2. Take **positional** command-line arguments only.
3. Use a self-describing data file: a **512-byte `RTXconfigInfo` header**
   precedes the raw int16 IQ payload.
4. Shut down cleanly on **SIGINT/SIGTERM** via a global `stopg` flag.

This folder is self-contained: copy `gnssrr2-stream/` to the board and build.

## Folder layout

```
gnssrr2-stream/
├── Makefile                 # builds rx_stream + tx_stream into build/
├── README.md
├── build/                   # generated binaries land here (per-arch)
├── app/
│   ├── rx_stream.c          # capture app  (positional CLI, 512B header, stopg)
│   ├── tx_stream.c          # replay app   (positional CLI, header inherit, stopg)
│   └── rtx_config.h         # RTXconfigInfo 512-byte header (NEW; see notes)
├── driver/
│   ├── t510_dma_stream.c        # cyclic-DMA kernel module (from dma/v2/driver)
│   ├── t510_dma_stream_ioctl.h  # shared driver/app ABI
│   └── Makefile                 # module build (needs KDIR)
└── rfdc/                    # RFDC bring-up, vendored from linux_app
    ├── rfdc_init.c          # main_linux.c with main() -> rfdc_init() (only change)
    ├── rfdc_init.h
    ├── metal_stub.c, metal/*.h, devices/*, lmk04828/*, rfsoc/*
    ├── rfdc_src/*           # Xilinx XRFdc driver (xrfdc*.c/.h)
    └── x*.h                 # xparameters / xil_* / xrfdc_linux headers
```

## Build

User-space apps (native on the aarch64 board):

```bash
cd gnssrr2-stream
make clean
make
# -> build/rx_stream, build/tx_stream
```

Cross-compiling from x86: `make CC=aarch64-linux-gnu-gcc`.

Kernel module (separate; needs a matching kernel build tree, same `KDIR` you
use for the rest of the project):

```bash
make driver KDIR=/path/to/petalinux_proj/.../kernel-source ARCH=arm64 \
     CROSS_COMPILE=aarch64-linux-gnu-
# -> driver/t510_dma_stream.ko
```

## Load the driver (once per boot)

`t510_dma_stream` binds the same device-tree node as `t510_dma_loopback`, so
only one may be loaded at a time:

```bash
rmmod t510_dma_loopback 2>/dev/null
insmod driver/t510_dma_stream.ko          # optional: num_periods=32 period_bytes=1048576
# /dev/t510_dma_stream now exists
```

Run the apps as **root** (RFDC init touches `/dev/mem`, `/dev/spidev1.0`,
`/sys/class/gpio`; the DMA device needs access too).

## RX capture

```bash
./build/rx_stream <Mode> <File_path> <Log_duration_sec> \
                  <LO_Hz> <LO_Hz_2> <BW_Hz> <BW_Hz_2> \
                  <Fs_Hz> <Fs_Hz_2> <ADC_bits> <ADC_bits_2> <Gain> <Gain_2>
```

- Provide arguments left-to-right; any you omit keep built-in defaults.
- Fewer than 2 arguments → all defaults (`File_path` = `rx_capture.bin`).
- `Log_duration_sec` = 0 means capture until Ctrl+C.

Examples:

```bash
# 2 seconds to an explicit file, rest default:
./build/rx_stream 0 /run/media/nvme0n1p1/capture.bin 2

# full 13-argument form:
./build/rx_stream 0 /run/media/nvme0n1p1/capture.bin 0 \
                  -1500000 -1500000 20000000 20000000 \
                  122880000 122880000 14 14 0 0
# Ctrl+C to stop; the header's byte count is finalised on exit.
```

## TX replay

```bash
./build/tx_stream <Mode> <File_path> <Log_duration_sec> \
                  <LO_Hz> <LO_Hz_2> <BW_Hz> <BW_Hz_2> \
                  <Fs_Hz> <Fs_Hz_2> <ADC_bits> <ADC_bits_2> <Gain> <Gain_2> \
                  <Start_offset_sec> <Auto_replay>
```

Two modes:

```bash
# Case 2 (metadata replay): inherit capture params from the file's 512-byte
# header. Minimum is <Mode> <File_path>:
./build/tx_stream 0 /run/media/nvme0n1p1/capture.bin

# Case 1 (full override): all 15 args; the file header is skipped:
./build/tx_stream 0 /run/media/nvme0n1p1/capture.bin 0 \
                  1500000 1500000 20000000 20000000 \
                  122880000 122880000 14 14 0 0 0 1
#                                              ^Start_offset_sec ^Auto_replay(loop)
```

- `Start_offset_sec` skips that many seconds of IQ before replaying
  (converted with the verified 8-byte frame and `Fs_Hz`).
- `Auto_replay` ≠ 0 loops the file at EOF (continuous replay).

## Concurrent RX + TX

The driver gives RX and TX independent rings/channels, so both apps can run at
once. **Start them sequentially**, not simultaneously: each app runs the full
RFDC/LMK/SPI bring-up at startup (a task requirement), and that bring-up drives
shared clock/SPI hardware, so two overlapping inits can race. Launch
`rx_stream`, wait for its `ring = ... press Ctrl+C` line (init complete), then
launch `tx_stream`:

```bash
./build/rx_stream 0 /mnt/ssd/capture.bin 300 &
# ...wait for rx_stream's "ring = ..." startup line...
./build/tx_stream 0 /mnt/ssd/replay.bin  &
wait
```

## Cleanup / teardown

```bash
# Ctrl+C (SIGINT) each app for a clean stop, or:
kill -INT <pid>

# unload the driver when done:
rmmod t510_dma_stream

# remove user-space build artifacts:
make clean
```

## File format — the 512-byte `RTXconfigInfo` header

Every capture/replay file is `[512-byte RTXconfigInfo][raw int16 IQ ...]`.
The header (defined in `app/rtx_config.h`, exactly 512 bytes, checked by a
`_Static_assert`) stores `Mode`, per-channel `LO/BW/Fs/ADC_bits/Gain`,
`Log_duration_sec`, `Start_offset_sec`, `Auto_replay`, the verified
`frame_bytes` (8), the run-time `period_bytes`/`num_periods`, and a
`payload_bytes` field updated with the final IQ byte count.

- **rx_stream** writes the header first, streams IQ after it, and rewrites the
  header with the final `payload_bytes` on normal completion **or** SIGINT.
- **tx_stream** reads the header (Case 2) to inherit parameters, or skips it
  (Case 1), and begins replaying IQ at offset 512 (plus `Start_offset_sec`).

The IQ frame layout (`I0,Q0,I1,Q1` = 4×int16 = 8 bytes, at the per-channel
complex rate) is the existing verified DMA format — see
`linux_app/dma/t510_dma_tool.c:32-38` and the top-level `README.md`.

## SIGINT handling

A `SIGINT`/`SIGTERM` handler sets the global `volatile sig_atomic_t stopg`. The
streaming loops poll `stopg` and finish the period currently being copied
before exiting, so a Ctrl+C never truncates a period mid-write (no mid-block
corruption). The handler is installed **after** RFDC init, so a stuck bring-up
stays interruptible with the default Ctrl+C disposition (matching the old
standalone `t510_rf_init`). On stop, `rx_stream` issues `STOP_RX`, finalises the
header byte count, flushes and closes; `tx_stream` issues `STOP_TX` and closes.

## RFDC initialisation

`rfdc/rfdc_init.c` is `linux_app/main_linux.c` (the source of the standalone
`t510_rf_init` tool) with its `main()` + getopt replaced by
`int rfdc_init(int num_tiles, int skip_mts)`; every LMK/RFDC/tile/NCO/QMC/MTS
step is otherwise unchanged. Both apps call `rfdc_init(RFDC_INIT_NUM_TILES,
RFDC_INIT_SKIP_MTS)` at startup (defaults `1`, `1` — i.e. `t510_rf_init -t 1
--skip-mts`, the single-tile bring-up documented in `linux_app/dma/README.md`;
`main_linux.c`'s own comments note MTS cannot succeed on the current single-tile
bitstream). Change the two `#define`s in `rfdc/rfdc_init.h` if a future
bitstream instantiates all four tiles with MTS.

## Notes, assumptions, and gaps

- **`RTXconfigInfo` did not previously exist** anywhere in the repo (not in the
  v1/v2 code, nor in `ssd-streaming.md`/`.pdf`). It is defined here for the
  first time from the task's field list. Only files written by **this**
  `rx_stream` carry it; `tx_stream` validates the header magic before trusting
  it and falls back to defaults/CLI otherwise.
- **RF parameters are stored only, not applied to hardware.** The vendored RFDC
  init hard-codes its NCO/sample-rate/gain configuration and exposes no
  per-call override, so `LO/BW/Fs/ADC_bits/Gain` are recorded in the header for
  self-description but do **not** reconfigure the RFDC. Samples are always the
  raw int16 IQ the DMA delivers.
- **`Mode`** is stored but not interpreted — the task does not define its
  semantics.
- The continuous-streaming guarantee depends on sustained SSD throughput
  meeting the RFDC data rate (≈983 MB/s for the documented config). Shortfalls
  are detected and counted as overruns (RX) / underruns (TX), logged to stderr.
- Built and warning-checked with native gcc; **not yet validated on the T510
  board** (no board/aarch64 runtime in the build environment).
```
