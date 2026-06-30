# GNSSRR2 T510 RFDC + DMA loopback apps

This repository contains the Linux-side applications used to initialize the
ANTSDR T510 RFSoC data converters and run a short AXI-DMA TX/RX loopback
capture.  The `gnssrr2-stream/` and `configs/` trees are not part of this
flow.

## Hardware setup

Connect one T510 DAC/TX SMA output to the matching ADC/RX SMA input with an RF
coaxial cable.  The RFDC app programs the LMK04828 and RF Data Converter; the
DMA app then sends a cyclic test tone to the TX path and captures the looped
back RX stream.

The current Jun24 hardware in `hw_info/` is the reference for this software:

- RFDC ADC and DAC sample rate: 4.9152 GSPS.
- Enabled ADC slices: tile 0 slices 00 and 02, IQ data, 8 RFDC samples per AXIS
  beat.
- Enabled DAC slices: tile 0 slices 00 and 02.
- RFDC decimation/interpolation: 40, giving 122.88 MSPS complex baseband.
- RX backend: RFDC → channel/time-major conversion → FIR/bypass mux → optional
  programmable decimator → quantizer/packer → AXI DMA S2MM.
- PL control GPIO `0x80050000` is initialized by `t510_rf_init` to `0x10`,
  which selects the normal RFDC RX path and avoids stale counter/test settings.
- RX/TX backend control blocks `0x80060000` (record_replay_ctrl_rx) and
  `0x80070000` (record_replay_ctrl_tx) are initialized by `t510_rf_init` to the
  documented capture format: 16-bit, dual-band, no extra PL decimation/
  interpolation, unity quantiser/scale shift. These AXI-Lite register files
  keep whatever the previous run wrote, so leaving them at a stale 8-bit
  `BIT_MODE` makes the DMA tool read two packed 8-bit samples as one int16 word
  — which is what made Q appear at twice the I frequency and stopped the I/Q
  pair from looking orthogonal. Resetting them here makes every capture
  deterministic regardless of prior PL state.
- TX backend: AXI DMA MM2S → unpacker → optional programmable interpolator →
  FIR → RFDC DAC formatter.

## Build and run on the board

```sh
cd /home/gnssrr2-capp-main/t510_port-main/linux_app/
make clean && make -j4

rmmod t510_dma_loopback 2>/dev/null || true
rmmod t510_dma_stream 2>/dev/null || true

cd /home/gnssrr2-capp-main/linux_app/dma
make clean && make ARCH=arm64

insmod ./t510_dma_loopback.ko

/home/gnssrr2-capp-main/t510_port-main/linux_app/t510_rf_init
/home/gnssrr2-capp-main/linux_app/dma/t510_dma_tool \
  --capture-ms 2 \
  --csv /run/media/nvme0n1p1/sineCapture.csv
```

## Capture format

A 2 ms capture is 1,966,080 bytes and 491,520 CSV rows plus the header. The
DMA payload is 16-bit little-endian signed data: one DMA frame is
`I0, Q0, I1, Q1` (4 × int16 = 8 bytes), so a 2 ms capture is 245,760 frames.
This 16-bit dual-band format only holds when the RX backend (`0x80060000`) is in
`BIT_MODE = 0` — which `t510_rf_init` now programs explicitly (see above). CSV
output intentionally keeps the raw DMA word order by writing adjacent 16-bit
words as the two numeric columns; this keeps CSV and binary captures equivalent
after the header is ignored.

For plotting, read the CSV numbers back into one flat `int16` stream and unpack
every group of four `int16` as `[I0, Q0, I1, Q1]` (equivalently
`reshape(n_frames, 4)`, or `reshape(n_beats, 8, 4)` since a 512-bit beat holds 8
frames): column 0 is ADC0 I, column 1 is ADC0 Q, column 2 is ADC1 I, and column
3 is ADC1 Q.

Earlier captures showed Q at twice the I frequency and a non-orthogonal I/Q
pair. The root cause was not plotting but format: the RX quantiser was left in
8-bit `BIT_MODE` by a previous run, so the DMA stream carried 4 × int8 per frame
and reading it as int16 spliced an I byte and a Q byte into each word. The
counter test (`devmem 0x80050000 w 0x1F`) confirms this — its known per-channel
ramps decode cleanly only as 8-bit, with the 256/512/1024 channel offsets
appearing as 4/8/16 after the stale `QUANT_SHIFT = 6`. `t510_rf_init` now resets
the RX/TX backends to 16-bit, so the documented unpacking is correct and I/Q
match in frequency and quadrature.

## Troubleshooting

- If `/dev/t510_dma_stream` is missing, check that the device tree contains the
  `antsdr,t510-dma-stream` node and that `insmod ./t510_dma_loopback.ko`
  succeeded.
- If `t510_rf_init` fails before touching RFDC, check `/dev/spidev1.0` and the
  `zynqmp_gpio` sysfs GPIO chip.
- Prefer `--bin` for long captures; CSV formatting is much larger and slower.
