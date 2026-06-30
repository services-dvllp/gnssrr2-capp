`timescale 1ns / 1ps

//------------------------------------------------------------------------
// Channel-major -> time-major transpose for the combined RFDC stream.
//
// Sits between axis_combiner_1 and fir_compiler_0/S_AXIS_DATA.
//
// axis_combiner_1 concatenates its four 128-bit slaves (S00=i0, S01=q0,
// S02=i1, S03=q1 -- per the block design) side by side, producing a
// CHANNEL-MAJOR 512-bit word: each 128-bit slice is one whole channel's
// contiguous 8-sample burst (sample t0 at that slice's LSB .. t7 at its
// MSB):
//
//   in_tdata[127:0]   = i0 : i0(t0)@[15:0]   .. i0(t7)@[127:112]
//   in_tdata[255:128] = q0 : q0(t0)@[143:128] .. q0(t7)@[255:240]
//   in_tdata[383:256] = i1 : i1(t0)@[271:256] .. i1(t7)@[383:368]
//   in_tdata[511:384] = q1 : q1(t0)@[399:384] .. q1(t7)@[511:496]
//
// fir_compiler_0 (Number of Paths = 4, 8-sample oversampling) instead
// requires a TIME-MAJOR word: VECT_<n>_PATH_<m> at bit offset
// 16*(4*n + m), i.e. for each oversampled time slot n, the four parallel
// paths' samples packed together before moving to the next time slot:
//
//   out_tdata[16*(4*n+m) +: 16] = channel_m sample at time t_n
//   with PATH_0=i0, PATH_1=q0, PATH_2=i1, PATH_3=q1   (per block design)
//
// This module performs exactly that re-packing. Every output bit is a
// fixed, statically-known wire of an input bit from the SAME beat -- pure
// combinational permutation, zero latency, zero buffering. The handshake
// passes straight through untouched, so this cannot introduce skew either
// within a beat (it's a rewire, not a re-time) or across beats (no state).
//------------------------------------------------------------------------

module chanmajor_to_timemajor #(
    parameter TDATA_WIDTH = 512,   // combined stream width (4 channels x 128 bits)
    parameter NUM_CHANNELS = 4,    // i0, q0, i1, q1
    parameter NUM_VECT     = 8,    // oversampled time slots per beat
    parameter SAMPLE_WIDTH = 16,    // bits per sample
	parameter FREQ_HZ      = 15360000 //example 122.88(fs)/8 (samples per cylcle) = 15.36MHz AXI Speed
)(
    input  wire                   aclk,
    input  wire                   aresetn,

    // Slave AXI-Stream (from axis_combiner_1, channel-major)
    input  wire [TDATA_WIDTH-1:0] s_axis_tdata,
    input  wire                   s_axis_tvalid,
    output wire                   s_axis_tready,

    // Master AXI-Stream (to fir_compiler_0/S_AXIS_DATA, time-major / VECT_n_PATH_m)
    output wire [TDATA_WIDTH-1:0] m_axis_tdata,
    output wire                   m_axis_tvalid,
    input  wire                   m_axis_tready
);

    localparam CHAN_WIDTH = NUM_VECT * SAMPLE_WIDTH; // 128 bits: one channel's burst
    localparam VECT_WIDTH = NUM_CHANNELS * SAMPLE_WIDTH; // 64 bits: one time slot, all paths

    // Pass-through handshake (zero latency, zero buffering -- mirrors tlast_generator)
    assign s_axis_tready = m_axis_tready;
    assign m_axis_tvalid = s_axis_tvalid;

    genvar n, m;
    generate
        for (n = 0; n < NUM_VECT; n = n + 1) begin : VECT
            for (m = 0; m < NUM_CHANNELS; m = m + 1) begin : PATH
                // Channel m's sample at time t_n sits at bit offset
                // (m * CHAN_WIDTH) + (n * SAMPLE_WIDTH) in the
                // channel-major input word ...
                wire [SAMPLE_WIDTH-1:0] sample =
                    s_axis_tdata[(m * CHAN_WIDTH) + (n * SAMPLE_WIDTH) +: SAMPLE_WIDTH];

                // ... and is rewired to VECT_<n>_PATH_<m> at bit offset
                // SAMPLE_WIDTH * (NUM_CHANNELS*n + m) in the time-major
                // output word (PATH_0=i0=channel0, PATH_1=q0=channel1,
                // PATH_2=i1=channel2, PATH_3=q1=channel3 -- a direct
                // channel-index -> path-index identity mapping).
                assign m_axis_tdata[(SAMPLE_WIDTH * (NUM_CHANNELS * n + m)) +: SAMPLE_WIDTH] = sample;
            end
        end
    endgenerate

endmodule
