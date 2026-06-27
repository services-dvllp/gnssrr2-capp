# NVMe SSD Performance Analysis — ANTSDR T510 GNSS Record/Replay

**Platform:** ANTSDR T510 (Zynq UltraScale+ xczu47dr)  
**Drive:** Samsung 980 500 GB (DRAM-less, NVMe)  
**Interface:** PCIe via PS GTR BANK505, x2 lanes  
**Date:** June 2026

---

## 1. System Overview

The T510 records live GNSS IQ data from the RFDC ADC directly to an M.2 NVMe SSD.
The data path is:

```
ADC (4.9152 GSPS) → RFDC decimation (÷40) → FIR filter → AXI DMA S2MM
    → DDR ring buffer (mmap) → rx_stream app → NVMe SSD
```

After RFDC decimation by 40, the IQ output rate is **122.88 MSPS per path**,
producing a continuous AXI-Stream data rate of:

```
15.36 MHz beats × 64 bytes/beat = 983 MB/s
```

This sustained rate must be written to the NVMe without gaps for gap-free GNSS capture.

---

## 2. Benchmark Results

### 2.1 NVMe Raw Block Write (bypassing filesystem)

```
dd if=/dev/zero of=/dev/nvme0n1 bs=4M count=2000 oflag=direct conv=fsync
8.4 GB written in 14.66 s → 572 MB/s
```

This is the true PCIe + NVMe throughput ceiling with no filesystem or CPU-copy overhead.

### 2.2 Filesystem Sequential Write (ext4, with fsync)

| Workload | Command | Result |
|---|---|---|
| Sequential write 4 GB | `dd bs=1M count=4096 conv=fsync` | ~206 MB/s |
| Sequential read 4 GB | `dd bs=1M` | ~410 MB/s |
| Long-duration write 10 GB | `dd bs=1M count=10240 conv=fsync` | ~205 MB/s (flat) |
| Random write 4 KB | `dd bs=4K count=100000` | ~39 MB/s |

The filesystem write rate (206 MB/s) is 2.8× lower than raw block (572 MB/s).
The 10 GB test staying flat at 205 MB/s indicates the Samsung 980's NAND write
speed (not the PCIe link) is the long-term ceiling through the filesystem path.

### 2.3 rx_stream Observed Write Rate

From a 2-second capture at 122.88 MSPS:

```
rx_stream: finished after 2.003s: periods=1755 IQ_bytes=100663296 (96.000 MB) overruns=1659
```

- **Effective write rate: 48 MB/s** (96 MiB ÷ 2 s)
- **Data loss: ~94%** (1659 of ~1875 hardware periods dropped)

This is 12× slower than the raw NVMe capability of 572 MB/s.

---

## 3. Root Cause Analysis

### 3.1 Primary Bottleneck: Non-Cacheable DMA Memory Read

The AXI DMA ring buffer is allocated with `dmam_alloc_coherent()`, which maps
the buffer as **non-cacheable** on the ARM CPU side (required for hardware DMA
coherency). When `rx_stream` calls `fwrite()` to copy data from the mmap'd DMA
ring to a stdio buffer, the CPU must read from this non-cacheable memory.

On Cortex-A53 (Zynq UltraScale+):
- Non-cacheable reads have no cache-line prefetch or burst acceleration
- Every access stalls to DDR individually
- Effective non-cached read bandwidth: **~40–60 MB/s**

The `dd` benchmark uses `/dev/zero` (cached normal memory — fast to read),
which is why it shows 572 MB/s while `rx_stream` shows 48 MB/s despite
both writing 1 MiB blocks to the same filesystem.

**The CPU memcpy from non-cached DMA ring is the bottleneck — not the NVMe.**

### 3.2 Secondary Bottleneck: PCIe Link Errors (CommClk Not Set)

`lspci -vv` reveals active PCIe link errors:

```
LnkSta:  Speed 5GT/s (downgraded), Width x2 (downgraded)
LnkCtl:  CommClk-
DevSta:  CorrErr+  FatalErr+
UESta:   MalfTLP+
CESta:   BadTLP+  Rollover+  Timeout+
```

- `CommClk-`: The Common Clock Configuration bit is not set on either the
  Root Complex or the Endpoint. On an embedded board where RC and NVMe share
  the same reference clock, this bit must be set so both sides disable
  Spread Spectrum Clocking compensation and tighten timing margins.
- `Rollover+`: The correctable error counter has overflowed — a large number
  of errors have occurred since boot.
- `MalfTLP+`: Uncorrectable malformed Transaction Layer Packets detected.
- `BadTLP+`, `Timeout+`: Correctable TLP errors and completion timeouts.

These errors trigger PCIe-level retransmissions, reducing effective throughput
from the theoretical Gen2 x2 ceiling (~800 MB/s) to the observed 572 MB/s.

**Root cause of CommClk- :** Linux sets the Common Clock Configuration bit
inside the ASPM (Active State Power Management) initialisation path
(`drivers/pci/pcie/aspm.c`). The T510's PetaLinux BSP disables ASPM for
stability, which as a side effect skips CommClk setup entirely.

### 3.3 PCIe Link Capability vs Negotiated State

```
LnkCap: Speed 8GT/s (Gen3), Width x4   ← Samsung 980 native capability
LnkSta: Speed 5GT/s (Gen2), Width x2   ← Zynq PS GTR hard limit
```

The Zynq UltraScale+ PS GTR BANK505 supports PCIe up to **Gen2 x2** maximum.
The Samsung 980 is capable of Gen3 x4 but is limited by the host interface.
Both `Speed` and `Width` are marked `(downgraded)` confirming this mismatch.

**Theoretical ceiling:** Gen2 x2 = 2 × 5 GT/s × 128/130 encoding ≈ **960 MB/s**  
**Practical ceiling (with errors):** ~572 MB/s  
**Practical ceiling (after CommClk fix):** ~700–750 MB/s (estimated)

### 3.4 Samsung 980 DRAM-Less SLC Cache Behavior

The Samsung 980 has no dedicated DRAM buffer. It uses a portion of NAND as
an SLC (Single-Level Cell) cache for burst writes:

- **While SLC cache is active:** ~500–600 MB/s write speed
- **After SLC cache exhausts:** ~200–205 MB/s (raw NAND write speed)

The 8 GB raw block test sustained 572 MB/s — within the SLC cache window.
The 10 GB filesystem test flattened at 205 MB/s — SLC cache exhausted.

For long GNSS captures (minutes to hours), the **effective sustained write
rate must be assumed to be ~200 MB/s**, not 572 MB/s.

---

## 4. PCIe Link State Detail

| Parameter | Value | Notes |
|---|---|---|
| Root complex | Xilinx NWL PCIe (Device d022) | PS-integrated, not PL fabric |
| Physical interface | PS GTR BANK505 | Lanes 0+1 only |
| Drive capability | Gen3 x4 (8 GT/s) | Samsung 980 native |
| Negotiated speed | Gen2 (5 GT/s) | PS GTR hard limit |
| Negotiated width | x2 | PS GTR BANK505 only has 2 lanes |
| CommClk | Not set (`CommClk-`) | Bug: skipped due to ASPM disabled |
| ASPM | Disabled | BSP default |
| Correctable errors | BadTLP, Rollover, Timeout | Accumulating since boot |
| Uncorrectable errors | MalfTLP | Malformed packets detected |
| Theoretical BW | ~960 MB/s (Gen2 x2) | PCIe link ceiling |
| Actual BW (raw) | ~572 MB/s | With current link errors |

---
