`timescale 1ns / 1ps

//------------------------------------------------------------------------
// AXI4-Stream FIR bypass mux.
//
// Sits between chanmajor_to_timemaj_0/m_axis and {fir_compiler_0,
// axis_data_fifo_2}. The FIR input is always driven from chanmajor's
// output (so the FIR pipeline free-runs regardless of `sel` and never
// stalls the upstream chain). The downstream axis_data_fifo_2/S_AXIS is
// muxed between the FIR's output and a direct copy of chanmajor's output.
//
//   sel = 0 : axis_data_fifo_2 <= fir_compiler_0/M_AXIS_DATA   (FIR path)
//   sel = 1 : axis_data_fifo_2 <= chanmajor_to_timemaj_0/m_axis (bypass)
//
// `sel` is intended to be set statically (via GPIO) before a capture is
// started -- toggling it mid-stream may glitch the data in flight inside
// the FIR pipeline.
//------------------------------------------------------------------------

module axis_fir_bypass_mux #(
    parameter DATA_WIDTH = 512
)(
    input  wire                   aclk,
    input  wire                   aresetn,
    input  wire                   sel,   // 0 = through FIR, 1 = bypass FIR

    //---------------------------------------------------------
    // Slave: from chanmajor_to_timemaj_0/m_axis
    //---------------------------------------------------------
    input  wire [DATA_WIDTH-1:0]  s_axis_tdata,
    input  wire                   s_axis_tlast,
    input  wire                   s_axis_tvalid,
    output wire                   s_axis_tready,

    //---------------------------------------------------------
    // Master: to fir_compiler_0/S_AXIS_DATA (always fed)
    //---------------------------------------------------------
    output wire [DATA_WIDTH-1:0]  m_axis_fir_tdata,
    output wire                   m_axis_fir_tvalid,
    input  wire                   m_axis_fir_tready,

    //---------------------------------------------------------
    // Slave: from fir_compiler_0/M_AXIS_DATA
    //---------------------------------------------------------
    input  wire [DATA_WIDTH-1:0]  s_axis_fir_tdata,
    input  wire                   s_axis_fir_tvalid,
    output wire                   s_axis_fir_tready,

    //---------------------------------------------------------
    // Master: to axis_data_fifo_2/S_AXIS
    //---------------------------------------------------------
    output wire [DATA_WIDTH-1:0]  m_axis_tdata,
    output wire                   m_axis_tlast,
    output wire                   m_axis_tvalid,
    input  wire                   m_axis_tready
);

    // FIR input: always a direct copy of chanmajor's output.
    assign m_axis_fir_tdata  = s_axis_tdata;
    assign m_axis_fir_tvalid = s_axis_tvalid;

    // When bypassed, the FIR's output is unused -- sink it unconditionally
    // so the FIR core's internal pipeline never backpressures.
    assign s_axis_fir_tready = sel ? 1'b1 : m_axis_tready;

    // chanmajor must see backpressure from the FIR input always, and from
    // the downstream FIFO directly when bypassed.
    assign s_axis_tready = m_axis_fir_tready && (sel ? m_axis_tready : 1'b1);

    // Output mux to axis_data_fifo_2/S_AXIS
    assign m_axis_tdata  = sel ? s_axis_tdata  : s_axis_fir_tdata;
    assign m_axis_tvalid = sel ? s_axis_tvalid : s_axis_fir_tvalid;
    assign m_axis_tlast  = s_axis_tlast;

endmodule
