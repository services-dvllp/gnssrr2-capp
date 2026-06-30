# T510 loopback I/Q rate / orthogonality analysis (Jun 2026)

Analysis of the two 2 ms loopback captures in `outputs/` against the Jun24
hardware (`hw_info/T510_designJun24.tcl`, `systemJun24.dts`) and the Linux apps.

## DMA / capture geometry (measured + DTS)

- `systemJun24.dts`: S2MM (RX) `xlnx,datawidth = <0x200>` = 512 bit = 32×int16
  per beat; MM2S (TX) `<0x100>` = 256 bit = 16×int16 per beat.
- A 2 ms capture = 983,040 int16 = 30,720 RX beats.

## RX lane layout (proven with `outputs/Capturexcounter.csv`)

The counter capture (RFDC test-counter path) shows, within every 32×int16 beat,
the even int16 positions held constant and the odd positions ramping, 8 samples
per path per beat. So the wire order is **time-major** `[I0,Q0,I1,Q1]` repeated
8×, i.e.:

- lane 0 = ADC0 I, lane 1 = ADC0 Q, lane 2 = ADC1 I, lane 3 = ADC1 Q
- (flat int16 stream, `lane_k = stream[k::4]`), each lane @ 122.88 MSPS.

This matches the README. Per-ADC-block and intra-beat permutations were tested
and are strictly worse, so this layout is correct (not a CSV/plot artifact).

## The defect (measured with `outputs/sineCapturex.csv`, per-lane FFT)

TX tone = +1.76 MHz complex (`linux_app/dma/sin_iq_1p76M.h`, Fs 122.88 MSPS).
Captured baseband, per lane:

| lane | path   | peak freq |
|------|--------|-----------|
| 0,2  | I      | **9.600 MHz** |
| 1,3  | Q      | **17.600 MHz** (= 10 × 1.76 MHz) |

- lane0≈lane2 (corr 0.97) and lane1≈lane3 (corr 0.90): both ADC slices agree.
- Each lane is a clean single tone; I and Q are genuinely at **different
  frequencies** (ratio 1.83×) → not a valid complex baseband. This is the
  "Q ≈ 2× I / not orthogonal" symptom.

## Where it originates

- The XRFdc driver programs **I and Q identically**: `XRFdc_SetDecimationFactor`
  (rfsoc.c forces 40) writes both I+Q blocks, and `XRFdc_IntResetInternalFIFOWidth`
  derives the same fabric read-rate for both from hardware-read decimation/type.
  So the RFDC is **not** the source of an I-vs-Q rate difference.
- That localizes the split to the **PL RX datapath** downstream of the RFDC
  (`programmable_decim` → `iq_quantizer_vec` → `iq_bit_packer`). The current
  bitstream is named `..._tx_rx_packUnpackQ`, i.e. the Q pack path was reworked.
  That RTL is baked into the `.xsa`; there is no source for it in this repo, and
  the only software-addressable PL control block, `record_replay_ctrl_rx`
  (`0x80060000`, `xlnx,record-replay-ctrl-rx-1.0`), has no register map here.
  Fixing/working around the Q rate therefore requires the custom-IP RTL or that
  register map, and a hardware capture to verify — it is **not** resolvable
  from the RFDC/DMA software alone.

## Software corrections made in this change (Tx/Rx config)

These are genuine, independently-verifiable defects in the Tx/Rx configuration;
they make the software match the documented hardware. They are **not** claimed to
cure the PL-side Q-rate split above (hardware verification still required).

1. `linux_app/rfsoc/rfsoc.c` `XRFdc_ConfigMixer`: explicitly set the fine-mixer
   mode every call — ADC → `R2C` (real ADC sample → complex IQ baseband),
   DAC → `C2R` (complex IQ baseband → real DAC output). Previously the mode was
   read back and preserved, and the only code that sets R2C/C2R lives in
   `XRFdc_MTS_SYNC`, which is skipped (`--skip-mts`) or aborts at DAC sync before
   reaching it on the single-tile bring-up. So the mixers were never guaranteed
   to be in the correct complex⇄real mode.

2. `linux_app/xparameters.h`: ADC decimation and DAC interpolation in the
   compiled RFDC config table were `20`; the bitstream (TCL) and README specify
   `40` (and `rfsoc.c` already force-writes 40 at runtime). Set the static table
   to `40` to remove the inconsistency.

## To finish the fix

Provide the custom-IP RTL (`programmable_decim`, `iq_bit_packer`) and/or the
`record_replay_ctrl_rx` register map, or a fresh hardware loopback capture after
the change above, so the residual PL Q-pack rate split can be addressed/verified.
