# ARCHITECTURE

## 1. Overview

- **Repository purpose**
  - This repository contains the hardware design artifacts and software needed to bring up and validate the ANTSDR T510 RFSoC platform on Zynq UltraScale+ MPSoC.
  - It combines:
    - Vivado hardware project/Tcl configuration.
    - Vitis standalone application and generated BSP/platform exports.
    - Linux user-space ports for RFDC initialization and AXI DMA loopback testing.

- **Problem solved**
  - Provides a reproducible path from FPGA/SoC configuration to runtime validation of:
    - Clocking (LMK04828 over SPI + GPIO reset/sync).
    - RF Data Converter (XRFdc) configuration and synchronization.
    - PL AXI DMA data path loopback (DAC transmit path + ADC receive path).

- **High-level system description**
  - **Control plane**: Linux user-space applications configure clock and converter peripherals via `/dev/spidev`, GPIO sysfs, `/dev/mem`, and UIO.
  - **Data plane**: AXI DMA in PL moves IQ samples between DDR and RFDC streaming interfaces.
  - **Reference/origin**: Original standalone Vitis application is retained and mirrored by Linux ports.

---

## 2. Architecture Summary

- **Architectural style**
  - Monorepo with **hardware/software co-design artifacts**.
  - Runtime software follows a **layered architecture**:
    - App orchestration layer (`main_linux.c`, `main_dma.c`).
    - Platform adaptation layer (Linux stubs for baremetal APIs).
    - Vendor driver layer (XRFdc sources vendored; AXI DMA controlled directly from Linux userspace MMIO/BD code).
    - Hardware interface layer (`/dev/mem`, UIO, spidev, GPIO sysfs).

- **Key design decisions (explicit/inferred)**
  - Reuse Xilinx baremetal drivers in Linux user-space by providing compatibility headers/stubs (`xil_io.h`, `xil_cache.h`, `metal_stub.c`).
  - Keep RFDC driver local in `linux_app/rfdc_src` to avoid build dependency on `vitis/` tree.
  - Keep Linux DMA app self-contained by programming AXI DMA registers/BDs directly instead of compiling external AXI DMA baremetal driver sources.
  - Use static xparameters-like config tables rather than dynamic kernel driver bindings.
  - Prefer deterministic physical addressing (`/dev/mem`) for both register access and DMA buffers.

---

## 3. Directory & Module Breakdown

> Scope includes all major top-level areas; generated BSP trees are large but are architecturally grouped below.

### `linux_app/`
- **Purpose**: Linux user-space RF initialization application (`t510_rf_init`) ported from Vitis standalone app.
- **Key files**
  - `main_linux.c`: end-to-end RF bring-up sequence and CLI tile selection.
  - `devices/platform_drivers_linux.c`: Linux implementations of SPI/GPIO timing and platform init APIs.
  - `metal_stub.c`: libmetal minimal implementation with `/dev/mem` mapping for RFDC registers.
  - `rfsoc/rfsoc.c`: RFDC helper routines (mixer, QMC, base sample rate, MTS sync).
  - `lmk04828/lmk04828.c`: LMK04828 register programming tables and mode APIs.
  - `rfdc_src/*.c`: vendored XRFdc driver source.
  - `xparameters.h`: static RFDC hardware configuration macros.
- **Responsibilities**
  - Configure board clocks and RFDC blocks.
  - Recreate standalone initialization behavior in Linux.
  - Trigger SYSREF pulses and attempt MTS when multi-tile is enabled.
- **Relationships**
  - Uses Linux kernel interfaces directly; no kernel module in repo.
  - Feeds system state for downstream DMA loopback app.

### `linux_dma/`
- **Purpose**: Linux user-space AXI DMA loopback application (`t510_dma_loop`).
- **Key files**
  - `main_dma.c`: load IQ file, map buffers/registers, set up BD rings, run TX/RX, dump capture.
  - `dma_stub.c`: `/dev/mem` mapping + UIO IRQ support + register read/write backend.
  - `dma_xparameters.h`: AXI DMA hardware constants mirrored from DT.
  - `Makefile`: compiles a self-contained userspace DMA application (no embeddedsw dependency).
- **Responsibilities**
  - Exercise PL DMA data path with SG mode BDs.
  - Provide file-based IQ stimulus/capture workflow.
- **Relationships**
  - Assumes RF path has already been initialized by `linux_app` application (or triggers it via helper invocation).

### `vitis/antsdr_t510_rf_loop_app/`
- **Purpose**: Original Vitis standalone source project.
- **Key files**
  - `src/main.c`, `src/rfsoc/*`, `src/lmk04828/*`, `src/devices/*`.
- **Responsibilities**
  - Baseline/ground truth implementation from which Linux port was derived.
- **Relationships**
  - Functionally mirrored by `linux_app/` with Linux-specific platform adapters.

### `vitis/t510_standalone_top/`
- **Purpose**: Vitis platform export and generated BSP/firmware artifacts.
- **Key contents**
  - `platform.tcl`, `.spr`, `hw/*.xsa`, boot firmware trees (`zynqmp_fsbl`, `zynqmp_pmufw`), generated BSP libs (`libsrc/*`).
- **Responsibilities**
  - Contains generated xparameters and driver/bsp source snapshots used as source of truth for hardware parameters.
- **Relationships**
  - `linux_app/xparameters.h` explicitly mirrors definitions from BSP xparameters.
  - Contains RFDC/libmetal/standalone source references used for Linux adaptation.

### `vivado_2022p2/`
- **Purpose**: Vivado project and block-design configuration scripts.
- **Key files**
  - `antsdr_t510_standalone/antsdr_t510_standalone.xpr`
  - `rf_data_config_tcl/rf_data_config.tcl`
  - `zynqMP_config_tcl/T510_zynqmp_config.tcl`
- **Responsibilities**
  - Hardware generation settings for PS and RF data converter blocks.
- **Relationships**
  - Produces hardware export consumed by Vitis platform/projects.

### `system.dts`
- **Purpose**: Device tree source for deployed Linux image.
- **Responsibilities**
  - Defines SPI, GPIO, AXI DMA, RFDC nodes, interrupts, and aliases used by Linux apps.
- **Relationships**
  - `linux_app` and `linux_dma` assumptions (addresses, IRQs, spidev path, DMA properties) are derived from this data.

### `LMK04828 configuration file/`
- **Purpose**: Clock configuration presets (`.txt` / `.tcs`) for LMK04828.
- **Responsibilities**
  - Human/tooling reference for LMK programming profiles.
- **Relationships**
  - Corresponds to register sequences embedded in `linux_app/lmk04828/lmk04828.c`.

### Root hardware export file
- `t510_standalone_top_2.xsa`: standalone hardware handoff archive.

---

## 4. Execution Flow

### A. RF initialization flow (`linux_app/t510_rf_init`)

1. Parse CLI (`-t/--tiles`, default 1).
2. Enable libmetal logging handler.
3. `platform_init()`:
   - Detect `zynqmp_gpio` chip base from sysfs.
   - Export/configure LMK GPIO pins.
   - Open and configure `/dev/spidev1.0` in mode 0.
4. LMK hardware reset sequence via GPIO.
5. Program LMK04828 register table and poll PLL lock.
6. Set SYSREF request mode.
7. Initialize RFDC driver instance:
   - `XRFdc_LookupConfig()`
   - `XRFdc_CfgInitialize()`
   - via `metal_io_init()` mapping RFDC base (`0x80000000`) through `/dev/mem`.
8. Reset enabled tiles.
9. Configure DAC VOP, DSA, dither.
10. Configure DAC and ADC Nyquist zones + NCO mixers.
11. Configure interpolation/decimation base sample factors.
12. Configure ADC QMC (SYSREF-triggered update).
13. If `num_tiles > 1`, run MTS retry loop; otherwise skip MTS.
14. Exit.

### B. DMA loopback flow (`linux_dma/t510_dma_loop`)

1. Parse CLI options (input/output paths, sample count, DMA phys addrs, buffer size, UIO behavior).
2. Read IQ text input into host array.
3. Map TX/RX physical buffers via `/dev/mem` (`dma_buf_map`).
4. Map AXI DMA registers (`0x80040000`) via `/dev/mem`.
5. Reset AXI DMA engines and clear status.
6. Build one SG BD per direction in mapped memory.
7. Program S2MM/MM2S current and tail descriptor registers.
8. Start RX first, then start TX.
9. Wait for completion (polling default — gates on `DMASR.IDLE` with IRQs left disabled in `DMACR` so the bound kernel `xilinx_dma` driver does not race-clear `IOC_Irq`. UIO wait is used only when explicit `--uio` is provided; `IOC_IrqEn`/`Err_IrqEn` are then enabled in `DMACR`).
10. Validate DMA status + BD completion bits.
11. Dump RX payload to output binary file and unmap resources.

### Entry points
- `linux_app/main_linux.c:main`
- `linux_dma/main_dma.c:main`
- `vitis/antsdr_t510_rf_loop_app/src/main.c:main` (reference standalone entry)

---

## 5. Data Flow

### RF configuration data path

```text
App constants/CLI
  -> LMK register table writes (SPI /dev/spidev1.0)
  -> LMK clocks + SYSREF
  -> RFDC API calls (XRFdc_*)
  -> RFDC register writes via /dev/mem mapping at 0x80000000
  -> Converter datapaths configured
```

### DMA sample data path

```text
sin_iq_interleaved.txt
  -> host int16 array
  -> TX DDR physical buffer (mapped userspace)
  -> AXI DMA MM2S SG engine
  -> RFDC DAC stream path -> analog loop/cable -> RFDC ADC stream path
  -> AXI DMA S2MM SG engine
  -> RX DDR physical buffer
  -> RX_data.bin
```

### Control/interrupt path for DMA

```text
main_dma register helpers
  -> AXI DMA register accesses via `/dev/mem` mapped window
  -> mapped register window
  -> hardware IRQ
  -> optional `/dev/uioN` read()/write() for arm/wait loop (or polling)
```

### Interfaces and transformations
- Text IQ samples (`int16` per line) ↔ binary contiguous payload in mapped DDR buffers.
- Driver config data transformed from DT/xparameters macros into runtime ring/descriptor programming.
- SYSREF pulses issued via GPIO to trigger RFDC event-sourced updates.

---

## 6. Key Components

### RF initialization components
- `platform_init` (Linux platform glue)
  - SPI/GPIO setup and runtime GPIO base discovery.
- `lmk04828_config` / SYSREF mode functions
  - Clock chip programming and status polling.
- `RFdcDcp_initial`
  - Wraps config lookup + RFDC initialization.
- `XRFdc_ConfigMixer`
  - Sets event source/frequency and pulses SYSREF.
- `XRFdc_SetBaseSampleFreq`
  - Sets/gets interpolation and decimation factors across tiles.
- `XRFdc_SetQMC`
  - Configures QMC and applies via SYSREF edge.
- `XRFdc_MTS_SYNC`
  - MTS orchestration and latency consistency checks.

### DMA components
- `main_dma.c` orchestration helpers
  - `load_iq_text`, `write_binary`, `wait_done_poll`, `wait_done_uio`.
- `dma_stub.c`
  - Physical memory mapping utilities.
  - UIO device discovery and IRQ wait/arm.
  - AXI register read/write backend for `xil_io` shims.

### Driver/library component boundaries
- **User application code**
  - `linux_app/*` (except vendored `rfdc_src/*`), `linux_dma/main_dma.c`, `linux_dma/dma_stub.c`, platform headers/shims.
- **Driver/library code (Xilinx)**
  - `linux_app/rfdc_src/*` (XRFdc driver snapshot from BSP/embeddedsw lineage).
  - Generated BSP/driver trees under `vitis/t510_standalone_top/**/libsrc/*`.

---

## 7. Dependencies & Integrations

### AXI DMA integration in `linux_dma/`
- No external embeddedsw AXI DMA sources are required.
- The app programs AXI DMA SG registers directly through `/dev/mem` mapped MMIO.
- Descriptor memory is built in user-mapped reserved DDR buffers (TX and RX), one BD per direction for the loopback transaction.
- Completion is polling-based by default, with optional UIO wait mode if a valid `/dev/uioN` path is passed.

### Expected user-space ↔ driver ↔ hardware data flow

```text
User app (main_dma)
  -> direct MMIO writes/reads
    -> dma_stub register mapping backend
      -> AXI DMA registers @ 0x80040000
        -> MM2S/S2MM engines operate on physical DDR buffers
          -> RFDC streaming interfaces / PL fabric
  <- completion via polling or optional UIO wait
```

### Other runtime integrations
- `/dev/mem` (registers and buffer mappings; root required)
- `/dev/uioN` + `/sys/class/uio` (interrupt completion)
- `/dev/spidev1.0` (LMK configuration)
- `/sys/class/gpio` (LMK GPIO control)

### Build dependencies
- GNU toolchain (`gcc`, `make`)
- Standard C/POSIX headers/libraries (`libm` linked)

---

## 8. Configuration & Environment

### Build-time configuration
- `linux_app/Makefile`
  - Compiles Linux app sources + local RFDC driver copy.
  - Defines `__BAREMETAL__` to select static config path in Xilinx drivers.
- `linux_dma/Makefile`
  - Self-contained build of `main_dma.c` + `dma_stub.c`; no external AXI DMA driver path required.

### Runtime configuration
- RF init app CLI:
  - `-t, --tiles N` (`1..4`, default `1`).
- DMA app CLI:
  - `-i`, `-o`, `-n`, `-p`, `-u`
  - `--tx-phys`, `--rx-phys`, `--buf-size`, `--list-uio`.

### Hardware addresses/assumptions used by code
- RFDC base: `0x80000000` (size `0x40000`).
- AXI DMA base: `0x80040000` (size `0x10000`).
- SPI path: `/dev/spidev1.0`.
- GPIO controller resolved dynamically by label `zynqmp_gpio`.

### Kernel/boot assumptions
- DMA buffer physical regions must be excluded from kernel-managed RAM (bootargs `mem=` guidance in code comments).
- AXI DMA device expected to be exposed in UIO for interrupt-driven mode.
- Root privileges typically required for `/dev/mem` and UIO access.

---

## 9. Design Patterns & Conventions

- **Porting-by-compatibility-layer**
  - RFDC uses a compatibility-layer approach; AXI DMA path is direct Linux MMIO/descriptor programming.
- **Static hardware contract**
  - xparameters-style macros and config tables encode hardware configuration at compile time.
- **Generated-source preservation**
  - Large generated BSP/firmware trees are kept intact under `vitis/`.
- **Naming conventions**
  - Xilinx RFDC driver naming (`XRFdc_*`) is unchanged.
  - Linux glue files suffixed with `_linux` or `_stub`.
- **Error handling style**
  - Explicit status checks and printed diagnostics.
  - Early return/fail-fast for setup-critical errors.

---

## 10. Known Constraints / Assumptions

- DMA userspace approach relies on fixed physical addresses and boot memory reservation; unsafe if misconfigured.
- RF init flow assumes LMK wiring and SPI chip-select mapping match current DT (`spidev@0` on `spi@ff050000`).
- Single-tile default intentionally skips MTS; multi-tile success requires matching Vivado RFDC tile enable + MTS settings.
- GPIO sysfs interface is used (legacy userspace GPIO mechanism).
- UIO availability for AXI DMA is optional for interrupt mode; polling mode is default and supported without UIO.
- No kernel-space drivers for this workflow are provided in repo.
- Some low-level hardware topology details (exact PL stream routing netlist-level) are **Not स्पष्ट from codebase** beyond DT/app comments.

---

## 11. How to Extend the System

### Safe extension points
- **RF configuration sequence**
  - Extend `linux_app/main_linux.c` orchestration.
  - Add board variants in `devices/parameters.h` + `platform_drivers_linux.c` path handling.
  - Add LMK profiles in `lmk04828/lmk04828.c` table sets.
- **RFDC behavior**
  - Add helper APIs in `rfsoc/rfsoc.c` while preserving existing XRFdc initialization contract.
- **DMA workflows**
  - Extend `main_dma.c` for multi-BD streaming, cyclic mode, or additional file formats.
  - Keep `dma_stub.c` as the hardware abstraction boundary for mapping/IRQ changes.

### Guidelines for changes
- If hardware addresses/interrupts/data widths change, update all of:
  - `system.dts`
  - `linux_dma/dma_xparameters.h`
  - RFDC xparameters mirror (`linux_app/xparameters.h`) when RF block changes.
- If AXI DMA hardware generation changes SG register/descriptor behavior, verify compatibility of:
  - register offsets/bit definitions in `linux_dma/main_dma.c`
  - descriptor layout and status checks in `linux_dma/main_dma.c`
  - mapping/IRQ handling in `linux_dma/dma_stub.c`.
- Keep Linux and standalone flows aligned where intended; `vitis/antsdr_t510_rf_loop_app/src/main.c` remains behavioral reference.

---

## 12. Maintenance Instruction for Future Agents

> Whenever any part of this repository is modified (code, structure, dependencies, or behavior), you MUST update this `ARCHITECTURE.md` accordingly.
>
> This document must always remain consistent with the current state of the repository.
