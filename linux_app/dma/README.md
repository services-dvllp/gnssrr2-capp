# T510 Linux DMA Stream

This folder adds the Linux data path for the T510 RFSoC loopback flow:

- `t510_dma_stream.c`
  Kernel module that requests the AXI DMA channels through Linux DMAEngine,
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

- `t510_dma_stream.ko`
- `t510_dma_tool`

## Load and run

First bring up clocks/RFDC:

```sh
cd /home/linux_proj/t510_port-main/linux_app
./t510_rf_init -t 1 --skip-mts
```

Then in the DMA folder:

```sh
insmod ./t510_dma_stream.ko
./t510_dma_tool --capture-ms 1000 --csv -
```

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
