`timescale 1ns / 1ps
// TX IQ formatter.
// Converts 256-bit time-major (4 steps x {Q1,I1,Q0,I0} x 16-bit) at 30.72 MHz
// into two 128-bit interleaved IQ streams for the RFDC DAC inputs.
//
// Each 64-bit step carries {Q1[15:0], I1[15:0], Q0[15:0], I0[15:0]}.
// Band 0 output: {Q0,I0} pairs packed into 128 bits (4 pairs).
// Band 1 output: {Q1,I1} pairs packed into 128 bits (4 pairs, or zero if !BAND_DUAL).
//
// Purely combinational -- no clock needed for data path.
// TREADY from both bands AND-ed back to upstream.
//
// Band 0 layout: bits[k*32+31:k*32] = {Q0_k[15:0], I0_k[15:0]}  (step k, k=0..3)
// Band 1 layout: bits[k*32+31:k*32] = {Q1_k[15:0], I1_k[15:0]}
// This matches the format the existing axis_data_fifo_0/1 and probe buffer
// present to the RFDC DAC (verified against the subset_converter remapping in
// the original design: subset_conv_0 extracts lower 128 bits = Band 0 IQ,
// subset_conv_1 extracts upper 128 bits = Band 1 IQ).

module iq_tx_formatter (
    // Metadata-only clock: not used in RTL (purely combinational module),
    // but required by Vivado BD to propagate FREQ_HZ across AXI-S interfaces.
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK",
       X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXIS:M_BAND0:M_BAND1, FREQ_HZ 30720000" *)
    input  wire         aclk,

    // Input from iq_requant_tx (256-bit time-major, 30.72 MHz)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA"  *) input  wire [255:0] s_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input  wire         s_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output wire         s_axis_tready,

    // Band 0 output -> dual_axis_probe_buff_0/s00_axis (128-bit, 30.72 MHz)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_BAND0 TDATA"  *) output wire [127:0] m_band0_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_BAND0 TVALID" *) output wire         m_band0_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_BAND0 TREADY" *) input  wire         m_band0_tready,

    // Band 1 output -> dual_axis_probe_buff_0/s01_axis (128-bit, 30.72 MHz)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_BAND1 TDATA"  *) output wire [127:0] m_band1_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_BAND1 TVALID" *) output wire         m_band1_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_BAND1 TREADY" *) input  wire         m_band1_tready,

    input  wire         BAND_DUAL   // 0: zero Band 1 output
);

    // Band 0: lower 32 bits of each 64-bit step = {Q0[15:0], I0[15:0]}
    // Band 1: upper 32 bits of each 64-bit step = {Q1[15:0], I1[15:0]}
    genvar k;
    generate
        for (k = 0; k < 4; k = k + 1) begin : GEN_BAND
            assign m_band0_tdata[k*32 +: 32] = s_axis_tdata[k*64 +: 32];
            assign m_band1_tdata[k*32 +: 32] = BAND_DUAL ?
                                                s_axis_tdata[k*64+32 +: 32] : 32'd0;
        end
    endgenerate

    // Valid to both bands simultaneously; stall if either is not ready
    assign m_band0_tvalid = s_axis_tvalid;
    assign m_band1_tvalid = s_axis_tvalid;
    assign s_axis_tready  = m_band0_tready && m_band1_tready;

endmodule
