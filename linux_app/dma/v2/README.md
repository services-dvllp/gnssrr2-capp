# v2 — Continuous (gap-free) record/replay

`v1` (`../t510_dma_loopback.c`, `../rx.c`, `../tx.c`) streams in fixed
2&nbsp;MB blocks: each block is a full one-shot RX capture or cyclic-TX
playback, started and stopped with `IOC_START`/`IOC_STOP`. `IOC_STOP`
terminates the DMA channel and sleeps 20&nbsp;ms before the channel can be
reused, so there is a real gap between every block — unacceptable for GNSS
record/replay, where every sample matters.

`v2` removes that gap by submitting **one cyclic DMA descriptor chain per
direction that loops forever** over a multi-period ring buffer, and letting
user space race the hardware's period pointer via `mmap()`. The DMA engine
is only started once (`START_RX`/`START_TX`) and stopped once
(`STOP_RX`/`STOP_TX`) per session — there is no terminate/restart between
periods.

```
v2/
  driver/
    t510_dma_stream.c          kernel module
    t510_dma_stream_ioctl.h     shared ioctl/mmap ABI (single copy, used by driver and app)
    Makefile
  app/
    rx_stream.c                 continuous capture -> SSD file
    tx_stream.c                 continuous playback <- SSD file
    Makefile                     builds with -I../driver for t510_dma_stream_ioctl.h
```

`t510_dma_stream_ioctl.h` lives only in `driver/` and is shared by both
`driver/` and `app/` (via `-I../driver` in `app/Makefile`) to avoid two
copies of the ABI drifting out of sync. Everything `v2/` needs beyond this
header is standard kernel headers and libc/POSIX headers.

The only remaining *external* dependencies are build-environment ones, not
project files: a kernel build tree (`KDIR`) matching the target PetaLinux
kernel for `driver/`, and an aarch64 cross-compiler (`CC`/`ARCH=arm64`) for
both `driver/` and `app/`, as used by the rest of this project (see the
top-level `CLAUDE.md` quick-build commands).

## How it works

- RX and TX each get their own ring buffer of `num_periods` periods of
  `period_bytes` bytes (defaults: 16 periods x 1 MiB = 16 MiB per ring, 32 MiB
  total — both overridable via module parameters).
- `START_RX`/`START_TX` submit a single `dmaengine_prep_dma_cyclic()`
  descriptor spanning the whole ring; the hardware then fills/plays period
  0,1,2,...,N-1,0,1,2,... forever, firing an interrupt (and an internal
  counter increment) at every period boundary.
- The device is mmap'd twice:
  - offset `0`, `PROT_READ`, size `ring_bytes` → RX ring
  - offset `ring_bytes`, `PROT_READ|PROT_WRITE`, size `ring_bytes` → TX ring
- `T510_DMA_V2_IOC_GET_STATUS` reports `period_bytes`, `num_periods`,
  `rx_hw_periods` (periods the RX DMA has completed) and `tx_hw_periods`
  (periods the TX DMA has played).
- `T510_DMA_V2_IOC_WAIT_RX` / `WAIT_TX` block (up to ~1s) until the
  respective counter advances, so the apps don't busy-poll.

### rx_stream

For each period the hardware finishes, copies that period out of the RX
ring to the output file before the hardware wraps back around
`num_periods` periods later and overwrites it. Falling behind by a full
ring is an **overrun** (data lost) — counted and logged, capture continues.

### tx_stream

Pre-fills the whole TX ring from the input file, starts the DMA, then for
each period the hardware finishes playing, refills that period (now the
one furthest ahead of the play pointer) with the next chunk of the file
before the hardware wraps back around to it. Falling behind is an
**underrun** (stale data replayed) — counted and logged, playback
continues. `--loop` wraps the input file for indefinite playback.

## Binding / module loading

`t510_dma_stream` matches the *same* device-tree node as
`t510_dma_loopback` (`compatible = "antsdr,t510-dma-loopback"`, dma-names
`"tx"`/`"rx"`), so **only one of the two drivers can be bound at a time**:

```bash
rmmod t510_dma_loopback 2>/dev/null
insmod t510_dma_stream.ko          # optionally: num_periods=32 period_bytes=1048576
```

`/dev/t510_dma_stream` appears once probed.

## Build

Kernel module (cross-compile against the PetaLinux kernel build tree):

```bash
make -C v2/driver KDIR=/path/to/petalinux_proj/t510zcu47dr/build/tmp/work-shared/t510zcu47dr/kernel-source ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-
```

(`v2/driver/t510_dma_stream.ko` is produced. Substitute the actual kernel
source/build dir from the PetaLinux project, matching the `KDIR` used to
build `t510_dma_loopback.ko`.)

User-space apps (cross-compile):

```bash
make -C v2/app CC=aarch64-linux-gnu-gcc
```

(`v2/app/rx_stream` and `v2/app/tx_stream` are produced.)

## Run

On the board, as root:

```bash
# load the v2 driver (only one of t510_dma_loopback / t510_dma_stream at a time)
rmmod t510_dma_loopback 2>/dev/null; insmod t510_dma_stream.ko

# RFDC bring-up (per top-level README, must run twice)
/home/rfdc-dma-app-main/t510_port-main/linux_app/t510_rf_init
/home/rfdc-dma-app-main/t510_port-main/linux_app/t510_rf_init

# continuous capture for 5 minutes
./rx_stream -o /mnt/ssd/capture.bin -t 300 -r 122.88e6 -l -1.5e6 -b 14 -m capture.meta

# continuous replay, looping the recording
./tx_stream -i /mnt/ssd/capture.bin -L -r 122.88e6 -f 1.5e6 -b 14 -m replay.meta
```

Ctrl+C (SIGINT) or SIGTERM stops either tool cleanly: the device is
`STOP_RX`/`STOP_TX`'d, files are flushed/closed, and the `--meta` summary
(including any overrun/underrun counts) is written.

## Running RX and TX in parallel

Yes. `rx_stream` and `tx_stream` each open `/dev/t510_dma_stream`
independently, mmap only their own ring (RX ring at offset 0, TX ring at
offset `ring_bytes`), and drive only `START_RX`/`STOP_RX` or
`START_TX`/`STOP_TX` respectively — the two directions are independent
DMA channels with independent cyclic rings, counters and wait queues, so
record and replay can run concurrently (e.g. simultaneous capture of a
live antenna feed while replaying a previous recording for a receiver
under test).

Run them as two separate background processes (simplest, and how the rest
of this project's tools are structured):

```bash
./rx_stream -o /mnt/ssd/capture.bin -t 300 -m capture.meta &
./tx_stream -i /mnt/ssd/replay.bin  -L     -m replay.meta  &
wait
```

`driver/t510_dma_stream.c`'s `release()` is intentionally a no-op so that
one tool exiting (closing its fd) does not call `STOP_*` on the other
direction's still-running ring; each tool stops only its own direction on
exit, and `rmmod` stops anything left running.

(A single multi-threaded process calling `rx_stream`'s and `tx_stream`'s
logic as two threads against two fds would work the same way, since the
driver state for RX and TX is independent aside from a short mutex around
START/STOP/GET_STATUS/WAIT — but two processes is simpler and matches the
existing tooling.)

## Sizing the ring vs. SSD throughput

The RFDC RX path runs at a fixed hardware rate (see
`../t510_dma_loopback.c` comments: ~983 MB/s for the current
decimation/sample-rate configuration). `num_periods * period_bytes /
983 MB/s` is roughly how long the ring can buffer a transient SSD stall
before an overrun (RX) or underrun (TX) occurs. The defaults (16 MiB per
ring ≈ 16 ms of buffering at 983 MB/s) are a starting point; increase
`num_periods` (module parameter) for more headroom once `cma=` in the
kernel command line is large enough to allocate both rings
(`2 * num_periods * period_bytes`, contiguous coherent memory).

Sustained gap-free recording/replay fundamentally requires the SSD's
sustained write/read throughput to meet or exceed the RFDC data rate —
no ring-buffer size fixes a sustained throughput shortfall, it only
absorbs short bursts/latency spikes.

## Sample-drop analysis

This section documents a careful review of where samples can be lost or
corrupted, beyond the headline overrun/underrun counters.

### Ring-wrap off-by-one (fixed)

With a single cyclic descriptor over `num_periods` periods, after `hw_count`
periods have completed, the period at index `hw_count % num_periods` is the
one the DMA is *currently* writing (RX) or playing (TX) -- it is not yet
complete/consumed. Only the `num_periods - 1` most-recently-completed periods
are safe to touch from user space without racing the hardware.

The original threshold checks (`hw_count - local_count > num_periods` for RX,
`local_count < hw_count` for TX) were off by one: at the boundary
(`hw_count - local_count == num_periods` for RX, or `local_count == hw_count`
for TX) the code would read/write the period the DMA is actively
writing/playing *right now* -- a torn period that would **not** have been
counted as an overrun/underrun. `rx_stream.c` and `tx_stream.c` now use
`>= num_periods` / `<= hw_count` and resync one period earlier
(`hw_count - (num_periods - 1)` / `hw_count + 1`), so every torn-period case
is now caught and counted.

### Steady-state (sustained throughput): no drops

In steady state -- SSD throughput keeps up, no overrun/underrun triggers --
every period is read/written exactly once, in order, with one full period of
margin against the in-flight DMA period. No samples are dropped, duplicated,
or reordered.

### Overrun (RX) / underrun (TX): real, counted loss

If the SSD can't keep up for long enough that the consumer falls a full ring
behind, data *is* genuinely lost (RX: overwritten before being read; TX:
stale data played before being refilled). This is detected, logged, counted
in `overrun_count`/`underrun_count`, and written to `--meta`; capture/playback
continues afterwards. There is no way to recover this data -- only adequate
`num_periods`/SSD throughput avoids it (see "Sizing the ring vs. SSD
throughput" above).

### Startup: possible stale data in the first RX period(s)

`v1`'s driver (`t510_dma_loopback.c`) issued
`T510_DMA_RX_FLUSH_PERIODS` (3) one-shot "flush" transfers before a real
capture, to drain a backlog that can accumulate in the PL's
`axis_data_fifo_2` while the RX DMA channel is idle. `v2`'s
`t510_dma_v2_start_rx_locked()` does not replicate this: the cyclic
descriptor is submitted and issued immediately on `START_RX`, so the first
period (or few, depending on how long the FIFO had been filling since the
last `STOP_RX`/module load) may contain that stale backlog rather than
samples captured from the moment `START_RX` was issued.

This is not a "dropped" sample in the overrun sense -- no period is skipped
or overwritten -- but the leading edge of the very first capture after
`insmod`/`START_RX` may not correspond to real time-of-start and may overlap
with whatever was previously in the FIFO. If precise start-of-capture timing
matters, use `rx_stream`'s `--flush-periods N` option (see below) to discard
the first N periods, or capture a short throwaway run first to drain the FIFO
before the real capture.

#### `--flush-periods` / `--dump-flush`

`rx_stream` supports discarding the first `N` periods captured after
`START_RX` instead of writing them to `--output`:

```bash
./rx_stream -o /mnt/ssd/capture.bin --flush-periods 3 -m capture.meta
```

These periods are still read off the ring (so the ring/`local_count`
bookkeeping stays correct and no overrun is falsely reported), they are just
not appended to `--output`. `--meta` records `flush_periods_requested` and
`flush_periods_done`.

For debugging (e.g. to inspect what was actually in the FIFO at start, as
done during earlier bring-up sessions), pass `--dump-flush PATH` to write the
discarded periods to a separate file instead of throwing them away:

```bash
./rx_stream -o /mnt/ssd/capture.bin --flush-periods 1 --dump-flush /mnt/ssd/flush0.bin -m capture.meta
```

Default is `--flush-periods 0` (disabled) -- existing invocations are
unaffected.

### Stop-time truncation

`STOP_RX`/`STOP_TX` call `dmaengine_terminate_sync()`, which can cut off the
in-flight period: on RX the last (partial) period is not written out at all
(it is simply discarded -- `local_count` never reaches `hw_count` for that
partial period since `rx_hw_periods` only increments on full-period
completion); on TX the period currently playing may be truncated mid-period
by the hardware. This is a one-time, expected truncation at the end of a
session (a handful of samples at most), not an ongoing drop.

### Coherency

Both rings are `dmam_alloc_coherent()` buffers mapped into user space via
`dma_mmap_coherent()`, i.e. non-cacheable on both the CPU and DMA side --
there is no caching layer for stale data to hide in, so no additional
`dma_sync_*`/barrier calls are needed for user space to see DMA-written data
or for the DMA to see user-space-written data.

### Summary

With the off-by-one fix above, the only ways to lose/corrupt samples are:
(1) a genuine sustained-throughput shortfall (counted overrun/underrun), (2)
possible stale backlog in the first RX period(s) after `START_RX` (startup
only, not "loss"), and (3) a one-period truncation at `STOP_RX`/`STOP_TX`
(session-end only). None of these are silent for case (1); cases (2) and (3)
are bounded, one-time, and documented here.

## Open items

- `--sample-rate`, `--lo-freq`, `--adc-bits` are recorded as metadata only;
  actual RFDC configuration remains in `t510_rf_init` (run twice before
  starting either tool, per the top-level project README).
- `--adc-bits` is a placeholder for a future bit-packing/unpacking stage;
  samples are currently stored/replayed as raw `int16`.
- Not yet validated on hardware (no compiler available in this environment
  to build/test `t510_dma_stream.ko`, `rx_stream`, `tx_stream`).
