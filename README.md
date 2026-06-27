# T510 DMA Capture Tool (`t510_dma_tool`)

User-space capture tool for the ANTSDR T510 RFSoC RX DMA path. It drains the
cyclic RX DMA ring driven by the `t510_dma_stream` kernel module and writes
the captured IQ samples to CSV and/or raw binary, sized exactly to the
requested `--capture-ms` duration.

On the board this repository is expected at:

```
/home/dma-test-main
```

All paths below assume that location.

## Build instructions

On the board (needs kernel headers for the module; the user tool only needs
`gcc`):

```sh
cd /home/dma-test-main/linux_app/dma
make            # builds t510_dma_stream.ko and t510_dma_tool
```

To build only the user-space tool (no kernel headers required):

```sh
cd /home/dma-test-main/linux_app/dma
make user
```

## Run instructions

1. Bring up clocks/RFDC first (see `linux_app/dma/README.md`):

   ```sh
   cd /home/dma-test-main/linux_app
   ./t510_rf_init -t 1 --skip-mts
   ```

2. Load the DMA module and run a capture:

   ```sh
   cd /home/dma-test-main/linux_app/dma
   insmod ./t510_dma_stream.ko
   ./t510_dma_tool --capture-ms 2 --csv /home/c_capture.csv
   ```

Options:

```
--device PATH     DMA device (default /dev/t510_dma_stream)
--capture-ms N    amount of captured signal, in milliseconds (default 1000)
--csv PATH        write IQ pairs as CSV (use - for stdout)
--bin PATH        write raw RX samples as binary (int16 little-endian)
--preview N       print first N IQ pairs of the first DMA period
--status-only     print DMA status and exit
```

## Expected sample format

The RX stream into the AXI DMA carries two ADC channels, channel-interleaved
as 16-bit signed integers:

```
I0, Q0, I1, Q1, I0, Q0, I1, Q1, ...
```

- `I0/Q0` = ADC channel 0 (RFDC tile 0 slice 00), `I1/Q1` = ADC channel 1
  (RFDC tile 0 slice 02).
- One frame = `I0,Q0,I1,Q1` = 4 × int16 = 8 bytes.
- The CSV has a `I_Data,Q_Data` header and one IQ pair per row, in stream
  order: row 0 = `I0,Q0` (channel 0), row 1 = `I1,Q1` (channel 1), row 2 =
  channel 0 again, and so on.
- The `--bin` file is the same int16 stream with no header.

## What `--capture-ms` means

`--capture-ms N` requests **N milliseconds worth of signal at the design's
sample rate**, not N milliseconds of wall-clock time. The tool keeps reading
DMA periods until exactly that amount of data has been written, then stops
the DMA. Because the CSV conversion is slower than the 983 MB/s stream, the
wall-clock run time can be longer than N ms; the driver's `rx_periods` and
the tool's `dropped_periods` statistic show how many ring periods were
overwritten while user space was writing files.

## Expected output size calculation

All values come from the block design (`T510_designJun9.tcl`, matching
`systemJun9.dts`):

| Parameter | Value | Source |
|---|---|---|
| ADC sampling rate | 4.9152 GSPS | `ADC0_Sampling_Rate {4.9152}` |
| ADC decimation | ×40 | `ADC_Decimation_Mode00/02 {40}` |
| Output rate per channel | 122.88 MSPS complex | 4.9152e9 / 40 |
| Channels | 2 (IQ each) | `ADC_Slice00/02_Enable`, `ADC_Data_Type {1}` |
| FIR | rate unchanged | `fir_compiler_0` `Single_Rate`, `Decimation_Rate {1}` |
| Sample width | int16 | FIR `Output_Width {16}` |

Data rate at the DMA:

```
122.88e6 frames/s × 8 bytes/frame (I0,Q0,I1,Q1) = 983,040 bytes per ms
```

For `--capture-ms N`:

- binary size  = `N × 983,040` bytes
- IQ pairs (CSV rows) = `N × 245,760` (= 122,880 per channel per ms)
- DMA periods  = `N × 160` (driver period is 6144 bytes)

Examples:

| `--capture-ms` | `--bin` size | CSV rows (+1 header line) |
|---|---|---|
| 1 | 983,040 B | 245,760 |
| 2 | 1,966,080 B | 491,520 |
| 1000 | 983,040,000 B | 245,760,000 |

CSV is roughly 12 bytes per row, so a 1000 ms CSV is ~3 GB and takes a long
time to format — prefer `--bin` for long captures.

## Example command

```sh
cd /home/dma-test-main/linux_app/dma
./t510_dma_tool --capture-ms 2 --csv /home/c_capture.csv --bin /home/c_capture.bin
```

Expected result: `/home/c_capture.bin` is exactly 1,966,080 bytes and
`/home/c_capture.csv` has exactly 491,520 data rows. The tool prints the
target up front and final stats on completion:

```
DMA capture: 2 ms of signal = 1966080 bytes (245760 IQ frames, 320 DMA periods)
Capture finished: elapsed=... ms periods_read=320 bytes_written=1966080 (expected 1966080)
Driver totals: tx_periods=... rx_periods=... dropped_periods=...
```

## Notes for the board path `/home/dma-test-main`

- Sources live in `/home/dma-test-main/linux_app/dma`; prebuilt artifacts (if
  used) are in `/home/dma-test-main/linux_app/build_output`.
- The kernel module must be loaded (`insmod ./t510_dma_stream.ko`) and the
  device tree must contain the `antsdr,t510-dma-stream` node so `/dev/t510_dma_stream` exists.
- Write captures to a filesystem with enough free space (e.g. `/home`):
  1000 ms is ~1 GB binary or ~3 GB CSV.
- If the tool prints `DMA stalled: no new RX period for 5000 ms`, the RX
  stream is not flowing — re-run the RF init step and check that the module
  loaded without errors (`dmesg | tail`).
