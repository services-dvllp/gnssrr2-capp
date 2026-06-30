`timescale 1ns / 1ps
// TX IQ requantiser.
// Runs at 30.72 MHz, 4 samples per beat, 256-bit bus (SSR=4).
// Applies left-arithmetic-shift (SCALE_SHIFT) then clamps to [-LIMIT, LIMIT-1].
// I1/Q1 outputs are forced to zero when BAND_DUAL=0 (single-band replay).
// Purely combinational data path; clip_count is the only register.

module iq_requant_tx (
    input  wire          aclk,       // 30.72 MHz
    input  wire          aresetn,

    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA"  *) input  wire [255:0] s_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input  wire         s_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output wire         s_axis_tready,

    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA"  *) output wire [255:0] m_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output wire         m_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input  wire         m_axis_tready,

    input  wire [4:0]    SCALE_SHIFT,  // left-shift before clamp (0=passthrough)
    input  wire [13:0]   LIMIT,        // peak magnitude limit (default 8192 = 2^13)
    input  wire          BAND_DUAL,    // 0=single-band: I1/Q1 forced to zero

    input  wire          cnt_clr,
    output reg  [31:0]   clip_count
);

    assign s_axis_tready = m_axis_tready;
    assign m_axis_tvalid = s_axis_tvalid;

    // Scale then clamp; returns [16]=clipped, [15:0]=result
    function automatic [16:0] rcomp;
        input signed [15:0] x;
        input [4:0]         shift;
        input [13:0]        lim;
        reg signed [31:0] scaled;
        reg signed [15:0] lim_pos, lim_neg;
        begin
            scaled  = $signed({{16{x[15]}}, x}) <<< shift;
            lim_pos = $signed({2'b00, lim});
            lim_neg = -$signed({2'b00, lim});
            if (scaled > $signed({16'd0, lim_pos}))
                rcomp = {1'b1, lim_pos};
            else if (scaled < $signed({16'd0, lim_neg}))
                rcomp = {1'b1, lim_neg};
            else
                rcomp = {1'b0, scaled[15:0]};
        end
    endfunction

    wire [255:0] tdata_r;
    wire [3:0]   step_clip;  // one bit per step

    genvar s;
    generate
        for (s = 0; s < 4; s = s + 1) begin : GEN_STEP
            wire [16:0] ri0, rq0, ri1, rq1;
            assign ri0 = rcomp(s_axis_tdata[s*64    +: 16], SCALE_SHIFT, LIMIT);
            assign rq0 = rcomp(s_axis_tdata[s*64+16 +: 16], SCALE_SHIFT, LIMIT);
            assign ri1 = BAND_DUAL ? rcomp(s_axis_tdata[s*64+32 +: 16], SCALE_SHIFT, LIMIT) : 17'd0;
            assign rq1 = BAND_DUAL ? rcomp(s_axis_tdata[s*64+48 +: 16], SCALE_SHIFT, LIMIT) : 17'd0;

            assign tdata_r[s*64     +: 16] = ri0[15:0];
            assign tdata_r[s*64+16  +: 16] = rq0[15:0];
            assign tdata_r[s*64+32  +: 16] = ri1[15:0];
            assign tdata_r[s*64+48  +: 16] = rq1[15:0];
            assign step_clip[s] = ri0[16] | rq0[16] | ri1[16] | rq1[16];
        end
    endgenerate

    assign m_axis_tdata = tdata_r;

    reg [2:0] clip_pop;
    integer   ci;
    always @(*) begin
        clip_pop = 3'd0;
        for (ci = 0; ci < 4; ci = ci + 1)
            clip_pop = clip_pop + {2'd0, step_clip[ci]};
    end

    always @(posedge aclk) begin
        if (!aresetn || cnt_clr)
            clip_count <= 32'd0;
        else if (s_axis_tvalid && s_axis_tready)
            clip_count <= clip_count + {29'd0, clip_pop};
    end

endmodule
