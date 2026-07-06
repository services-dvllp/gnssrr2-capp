`timescale 1ns / 1ps

module iq_combiner (
    // Assuming all streams share the same ADC/RFDC clock
    input  wire         aclk,
    input  wire         aresetn,

    // --- SLAVE 0: I0 (Lowest 64 bits) ---
    input  wire [63:0]  s_axis_i0_tdata,
    input  wire         s_axis_i0_tvalid,
    output wire         s_axis_i0_tready,

    // --- SLAVE 1: Q0 (Bits 127:64) ---
    input  wire [63:0]  s_axis_q0_tdata,
    input  wire         s_axis_q0_tvalid,
    output wire         s_axis_q0_tready,

    // --- SLAVE 2: I1 (Bits 191:128) ---
    input  wire [63:0]  s_axis_i1_tdata,
    input  wire         s_axis_i1_tvalid,
    output wire         s_axis_i1_tready,

    // --- SLAVE 3: Q1 (Highest 64 bits) ---
    input  wire [63:0]  s_axis_q1_tdata,
    input  wire         s_axis_q1_tvalid,
    output wire         s_axis_q1_tready,

    // --- MASTER: Combined 256-bit Stream to DMA ---
    output wire [255:0] m_axis_tdata,
    output wire         m_axis_tvalid,
    input  wire         m_axis_tready
);

    // 1. HARDWIRE THE DATA PACKING
    // This permanently locks the snapshot in time: {Q1, I1, Q0, I0}
    assign m_axis_tdata = {s_axis_q1_tdata, s_axis_i1_tdata, s_axis_q0_tdata, s_axis_i0_tdata};

    // 2. THE SYNCHRONIZATION LOCK
    // Master is only valid if ALL four ADC paths assert valid simultaneously.
    assign m_axis_tvalid = s_axis_i0_tvalid & s_axis_q0_tvalid & 
                           s_axis_i1_tvalid & s_axis_q1_tvalid;

    // 3. BACKPRESSURE DISTRIBUTION
    // If the DMA/downstream pauses (tready = 0), we instantly pause all 4 ADCs.
    // (Note: If coming directly from an ADC, ensure you don't stall too long or ADC FIFOs will overflow)
    assign s_axis_i0_tready = m_axis_tready;
    assign s_axis_q0_tready = m_axis_tready;
    assign s_axis_i1_tready = m_axis_tready;
    assign s_axis_q1_tready = m_axis_tready;

endmodule