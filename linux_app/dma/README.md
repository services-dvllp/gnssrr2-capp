# T510 Linux DMA Stream

This folder adds the Linux data path for the T510 RFSoC loopback flow:

- `t510_dma_stream.c`
  Kernel module source (built as `t510_dma_loopback.ko` by default for compatibility with existing deployment scripts) that requests the AXI DMA channels through Linux DMAEngine,
  allocates coherent TX/RX buffers, and starts interrupt-driven cyclic MM2S
  and S2MM transfers.
- `t510_dma_tool.c`
  User-space tool that uploads a generated TX waveform, starts capture, stops
  it after a timed interval, and prints or saves the RX loopback buffer.

## Why this design

The bare-metal code in `src_working_codex/src/dma_setup.c` directly programs
AXI DMA scatter-gather descriptors and cache maintenance. That is not a good
fit for Linux user space.

This Linux version moves the DMA ownership into a small kernel module so that:

- DMA buffers are physically contiguous and cache coherent.
- DMA callbacks are interrupt driven by the kernel DMAEngine framework.
- User space only handles high-level control and CSV/bin output.

## Required device tree node

Add a node like this to your Linux device tree and rebuild the boot image:

```dts
/ {
    t510_dma_stream {
        compatible = "antsdr,t510-dma-stream";
        dmas = <&axi_dma_0 0>, <&axi_dma_0 1>;
        dma-names = "tx", "rx";
        // dma-coherent;
    };
};
```

Assumptions:

- `&axi_dma_0` is your existing AXI DMA instance.
- Channel `0` is MM2S and channel `1` is S2MM.
- The kernel already includes the Xilinx AXI DMA driver (`CONFIG_XILINX_DMA`).
- If the generated `&axi_dma_0` node contains `dma-coherent`, delete it for this non-coherent stream path.

## Build

On the target:

```sh
cd /home/linux_proj/t510_port-main/linux_app/dma
make
```

This builds:

- `t510_dma_loopback.ko`
- `t510_dma_tool`

## Load and run

First bring up clocks/RFDC:

```sh
cd /home/linux_proj/t510_port-main/linux_app
./t510_rf_init -t 1 --skip-mts
```

Then in the DMA folder, unload any previous instance before inserting the newly built module. Use module names with `rmmod`, not `.ko` filenames:

```sh
rmmod t510_dma_loopback 2>/dev/null || true
rmmod t510_dma_stream 2>/dev/null || true
insmod ./t510_dma_loopback.ko
./t510_dma_tool --capture-ms 1000 --csv -
```

The Makefile also provides the same unload sequence as a helper when this
version of the Makefile is installed on the target:

```sh
make unload
insmod ./t510_dma_loopback.ko
```

`Error: Driver 't510_dma_stream' is already registered` means an older
`t510_dma_stream` module is still loaded and registered the same platform driver.
Remove that old module with `rmmod t510_dma_stream` before loading
`t510_dma_loopback.ko`.

To save the RX capture instead of printing all samples:

```sh
./t510_dma_tool --capture-ms 1000 --csv rx_loopback.csv --bin rx_loopback.bin
```

## Expected behavior

- TX buffer is written once from user space.
- The kernel module starts cyclic TX and cyclic RX DMA.
- Your existing hardware loopback feeds DAC stream back to ADC stream.
- After the capture delay, the tool stops DMA and dumps the RX ring buffer.

## Notes

- The user-space tool currently generates a default tone and formats it in the
  same 8-sample block duplication style used by the bare-metal `format_tx_buffer()`.
- If you want the exact original `iq_data_intr.h` waveform as the TX source, we
  can add a second step to import that table into the Linux tool.

## Jun24 sample packing note

The Jun24 backend described in `hw_info/T510_designJun24.tcl` uses RFDC
4.9152 GSPS with RFDC interpolation/decimation 40, so the complex baseband rate
is 122.88 MSPS. The RX DMA beat is vector packed: I-lane samples and matching
Q-lane samples are grouped inside each beat. The user tool writes CSV by
pairing the matching vector lanes, not by treating adjacent raw 16-bit words as
one IQ pair. The adjacent-word interpretation is what made the captured
loopback sine look like `Q_freq = 2 * I_freq`; the RFDC Tx/Rx rate settings are
both 40 in the Jun24 hardware and in the updated RFDC config headers.
