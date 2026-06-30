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
  interpolation, unity quantiser/scale shift. These AXI-Lite register files keep
  whatever the previous run wrote, so they are reset to a known state on every
  init.
- `t510_rf_init` also loads an **identity (pass-through) FIR coefficient set**
  into both backends. `fir_compiler_rx`/`fir_compiler_tx` are generated with a
  placeholder reloadable kernel `{…,-1,2,-1,…}` whose DC gain is zero (a
  high-pass that attenuates a 1.76 MHz tone by ~48 dB and a 1 MHz tone by
  ~58 dB). The RX FIR is bypassed by the `0x80050000` bit-4 mux, but the **TX
  FIR has no bypass**, so with the placeholder coefficients the DAC baseband is
  nulled and a loopback shows only the DAC carrier — no transmitted tone, and
  identical for every `TX_SIGNAL_SELECT`. Loading a flat unity kernel lets the
  baseband tone pass.
- DAC and ADC fine-mixer NCOs are both programmed to **1500 MHz** (same
  magnitude, no per-block offset). In a TX→RX loopback the recovered baseband
  is `f_table + (f_DAC_NCO − f_ADC_NCO)`, so any DAC/ADC NCO mismatch shifts the
  captured tone and leaves the DAC carrier as a spur at exactly that difference.
- TX backend: AXI DMA MM2S → unpacker → optional programmable interpolator →
  FIR → RFDC DAC formatter. The DMA wire format is **time-major**: each 256-bit
  beat is 4 steps of `{I0, Q0, I1, Q1}` (band0 I/Q then band1 I/Q), matching
  `iq_bit_unpacker_tx`. `t510_dma_tool` builds the TX ring in this order.

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
This 16-bit dual-band format holds when the RX backend (`0x80060000`) is in
`BIT_MODE = 0` — which `t510_rf_init` programs explicitly (see above). CSV
output intentionally keeps the raw DMA word order by writing adjacent 16-bit
words as the two numeric columns; this keeps CSV and binary captures equivalent
after the header is ignored.

For plotting, read the CSV numbers back into one flat `int16` stream and unpack
every group of four `int16` as `[I0, Q0, I1, Q1]` (equivalently
`reshape(n_frames, 4)`, or `reshape(n_beats, 8, 4)` since a 512-bit beat holds 8
frames): column 0 is ADC0 I, column 1 is ADC0 Q, column 2 is ADC1 I, and column
3 is ADC1 Q.

### Why earlier sine captures were wrong

Earlier loopback captures showed a fixed spur at ~2.2 MHz on one channel and
~1.2 MHz on the other, the same for both `TX_SIGNAL_SINE_1P76M` and
`TX_SIGNAL_SINE_1M`, with no energy at the transmitted 1.76/1.0 MHz tone. The
data is genuinely 16-bit (the `devmem 0x80050000 w 0x1F` counter test decodes as
clean int16 ramps with the expected `{0, 256, 512, 1024}` per-path offsets), so
the format was not the problem. Three backend issues were:

1. **DAC/ADC NCO mismatch.** The DAC NCO was 1501.2 MHz with a per-block `+1`
   offset (1501.2 / 1502.2 MHz) against a 1500 MHz ADC NCO, producing carrier
   spurs at exactly `1501.2 − 1500 = 1.2` MHz and `1502.2 − 1500 = 2.2` MHz —
   the observed tones. Both NCOs are now 1500 MHz, so the carrier sits at DC and
   the transmitted tone is recovered at its true baseband frequency.
2. **TX FIR nulled the baseband.** The placeholder `{-1,2,-1}` TX FIR kernel has
   zero DC gain; with no TX bypass, it removed the tone entirely, which is why
   the 1.76 MHz and 1 MHz captures looked identical (both nulled, only the DAC
   carrier left). `t510_rf_init` now loads an identity FIR kernel.
3. **TX wire format.** `t510_dma_tool` filled the ring channel-major (8 band0
   samples then 8 duplicated band1 samples); the time-major `iq_bit_unpacker_tx`
   read that as interleaved/decimated samples and split the tone across bands.
   The tool now writes time-major `{I0,Q0,I1,Q1}` per step.

With all three fixed, both channels show the transmitted tone at 1.76 MHz (or
1 MHz), and the capture tracks `TX_SIGNAL_SELECT`.

## Troubleshooting

- If `/dev/t510_dma_stream` is missing, check that the device tree contains the
  `antsdr,t510-dma-stream` node and that `insmod ./t510_dma_loopback.ko`
  succeeded.
- If `t510_rf_init` fails before touching RFDC, check `/dev/spidev1.0` and the
  `zynqmp_gpio` sysfs GPIO chip.
- Prefer `--bin` for long captures; CSV formatting is much larger and slower.
