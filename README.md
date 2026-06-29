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

A 2 ms capture is 1,966,080 bytes and 491,520 CSV rows plus the header.  The
DMA payload is 16-bit little-endian signed data.  In the Jun24 backend a
64-byte RX beat carries vectorized I samples followed by the corresponding Q
samples; the tool therefore writes CSV rows as `I_Data,Q_Data` by pairing each
I lane with the matching Q lane from the same beat.

The older adjacent-word CSV interpretation made `Q_Data` look like it had twice
the sine frequency of `I_Data`.  The counter capture in `outputs/` and the
loopback sine capture are consistent with a packing/CSV interpretation issue,
not an RFDC decimation mismatch.  The RFDC init app and generated RFDC config
headers have been aligned to the Jun24 hardware decimation/interpolation factor
of 40 for both active ADC and DAC slices.

## Troubleshooting

- If `/dev/t510_dma_stream` is missing, check that the device tree contains the
  `antsdr,t510-dma-stream` node and that `insmod ./t510_dma_loopback.ko`
  succeeded.
- If `t510_rf_init` fails before touching RFDC, check `/dev/spidev1.0` and the
  `zynqmp_gpio` sysfs GPIO chip.
- Prefer `--bin` for long captures; CSV formatting is much larger and slower.
