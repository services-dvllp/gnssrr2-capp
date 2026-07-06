`timescale 1ns / 1ps
// SIMD quantizer: applied simultaneously to all 8 time steps in the 512-bit bus.
// Passes valid_mask[7:0] sideband through unchanged as TUSER.
// Combinational data path -- TREADY driven directly from downstream.
//
// Time-major layout: step s occupies bits [s*64+63:s*64] = {Q1[15:0],I1[15:0],Q0[15:0],I0[15:0]}
// Output: same 512-bit field, lower N bits of each 16-bit component are valid, upper bits zeroed.
//
// 2-bit encoding: sign-magnitude (NOT two's complement)
//   bit[1]=sign (0=positive), bit[0]=magnitude (0=small/+1, 1=large/+3)

module iq_quantizer_vec (
    input  wire          aclk,
    input  wire          aresetn,

    // Input from programmable_decim (valid_mask arrives as TUSER)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA"  *) input  wire [511:0] s_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TUSER"  *) input  wire [7:0]   s_axis_tuser,   // valid_mask
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input  wire         s_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output wire         s_axis_tready,

    // Output to iq_bit_packer (valid_mask forwarded as TUSER)
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA"  *) output wire [511:0] m_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER"  *) output wire [7:0]   m_axis_tuser,   // valid_mask pass-through
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output wire         m_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input  wire         m_axis_tready,

    // Configuration
    input  wire [1:0]    BIT_MODE,        // 00=16-bit  01=8-bit  10=4-bit  11=2-bit
    input  wire [4:0]    QUANT_SHIFT,     // arithmetic right-shift before quantise (0-15)
    input  wire [15:0]   QUANT_2BIT_THR,  // 2-bit +3 threshold in post-shift LSBs

    // Saturation counter (any component clipped this beat, registered)
    input  wire          cnt_clr,
    output reg  [31:0]   sat_count
);

    // Combinational pass-through for handshake and valid_mask (TUSER)
    assign s_axis_tready = m_axis_tready;
    assign m_axis_tvalid = s_axis_tvalid;
    assign m_axis_tuser  = s_axis_tuser;   // valid_mask forwarded

    // --- Per-component quantiser (purely combinational) ----------------------
    // Returns [16]=sat, [15:0]=quantised value (sign-extended or sign-magnitude).
    // QUANT_SHIFT is applied first; BIT_MODE selects output precision.
    function automatic [16:0] qcomp (
        input signed [15:0] x,
        input [1:0]         mode,
        input [4:0]         shift,
        input [15:0]        thr2
    );
        reg signed [15:0] sx;
        reg [15:0]        absx;
        begin
            sx = x >>> shift;  // arithmetic shift applies QUANT_SHIFT scaling

            case (mode)
                2'b00: // 16-bit: pass through shifted value
                    qcomp = {1'b0, sx};

                2'b01: begin // 8-bit: saturate to [-128, +127], sign-extend to [15:0]
                    if ($signed(sx) > 16'sd127)
                        qcomp = {1'b1, 16'sd127};
                    else if ($signed(sx) < -16'sd128)
                        qcomp = {1'b1, -16'sd128};
                    else
                        qcomp = {1'b0, {{8{sx[7]}}, sx[7:0]}};
                end

                2'b10: begin // 4-bit: saturate to [-8, +7], sign-extend to [15:0]
                    if ($signed(sx) > 16'sd7)
                        qcomp = {1'b1, 16'sd7};
                    else if ($signed(sx) < -16'sd8)
                        qcomp = {1'b1, -16'sd8};
                    else
                        qcomp = {1'b0, {{12{sx[3]}}, sx[3:0]}};
                end

                2'b11: begin // 2-bit sign-magnitude: {sign, mag}
                    absx  = sx[15] ? (~sx + 16'd1) : sx;
                    qcomp = {1'b0, 14'd0,
                             sx[15],                              // bit[1]=sign
                             (absx >= thr2) ? 1'b1 : 1'b0};     // bit[0]=magnitude
                end

                default: qcomp = {1'b0, sx};
            endcase
        end
    endfunction

    // Unroll over 8 steps x 4 components
    wire [511:0] tdata_q;
    wire [7:0]   step_sat;  // one bit per step: 1 if any component saturated

    genvar s;
    generate
        for (s = 0; s < 8; s = s + 1) begin : GEN_STEP
            wire [16:0] ri0, rq0, ri1, rq1;

            assign ri0 = qcomp(s_axis_tdata[s*64     +: 16], BIT_MODE, QUANT_SHIFT, QUANT_2BIT_THR);
            assign rq0 = qcomp(s_axis_tdata[s*64+16  +: 16], BIT_MODE, QUANT_SHIFT, QUANT_2BIT_THR);
            assign ri1 = qcomp(s_axis_tdata[s*64+32  +: 16], BIT_MODE, QUANT_SHIFT, QUANT_2BIT_THR);
            assign rq1 = qcomp(s_axis_tdata[s*64+48  +: 16], BIT_MODE, QUANT_SHIFT, QUANT_2BIT_THR);

            assign tdata_q[s*64     +: 16] = ri0[15:0];
            assign tdata_q[s*64+16  +: 16] = rq0[15:0];
            assign tdata_q[s*64+32  +: 16] = ri1[15:0];
            assign tdata_q[s*64+48  +: 16] = rq1[15:0];

            assign step_sat[s] = (ri0[16] | rq0[16] | ri1[16] | rq1[16])
                                 & s_axis_tuser[s];
        end
    endgenerate

    assign m_axis_tdata = tdata_q;

    // Saturation counter: popcount of step_sat, accumulated per handshake
    reg [3:0] sat_pop;
    integer   i_pc;
    always @(*) begin
        sat_pop = 4'd0;
        for (i_pc = 0; i_pc < 8; i_pc = i_pc + 1)
            sat_pop = sat_pop + {3'd0, step_sat[i_pc]};
    end

    always @(posedge aclk) begin
        if (!aresetn || cnt_clr)
            sat_count <= 32'd0;
        else if (s_axis_tvalid && s_axis_tready)
            sat_count <= sat_count + {28'd0, sat_pop};
    end

endmodule
