`timescale 1ns / 1ps
// TX programmable interpolator.
// Inverse of programmable_decim (RX side).
// Runs at 30.72 MHz, 4 samples per beat, 256-bit bus (SSR=4).
//
// Accepts dense 256-bit time-major beats (all 4 slots valid) from unpacker.
// Outputs sparse 256-bit beats: real samples at slots where
//   (phase0 + slot) mod INTERP_M == INTERP_PHASE, zeros elsewhere.
//
// Phase advances by 4 per beat (vs 8 in the RX decimator).
// Over exactly INTERP_M consecutive output beats, exactly 4 valid slots
// occur, consuming one full input beat of 4 samples.

module programmable_interp_tx (
    input  wire          aclk,       // 30.72 MHz
    input  wire          aresetn,

    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA"  *) input  wire [255:0] s_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input  wire         s_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output wire         s_axis_tready,

    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA"  *) output wire [255:0] m_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output wire         m_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input  wire         m_axis_tready,

    input  wire [4:0]    INTERP_M,      // 1..30; 0 treated as 1
    input  wire [4:0]    INTERP_PHASE,  // 0..INTERP_M-1

    input  wire          cnt_clr,
    output reg  [31:0]   in_beat_count,
    output reg  [31:0]   out_beat_count
);

    wire [4:0] eff_m;
    assign eff_m = (INTERP_M == 5'd0) ? 5'd1 : INTERP_M;

    // Same cond_mod as RX decimator (8 conditional subtractions)
    function automatic [4:0] cond_mod;
        input [6:0] val;
        input [4:0] m;
        reg [6:0] v;
        begin
            v = val;
            if (v >= {2'b00, m}) v = v - {2'b00, m};
            if (v >= {2'b00, m}) v = v - {2'b00, m};
            if (v >= {2'b00, m}) v = v - {2'b00, m};
            if (v >= {2'b00, m}) v = v - {2'b00, m};
            if (v >= {2'b00, m}) v = v - {2'b00, m};
            if (v >= {2'b00, m}) v = v - {2'b00, m};
            if (v >= {2'b00, m}) v = v - {2'b00, m};
            if (v >= {2'b00, m}) v = v - {2'b00, m};
            cond_mod = v[4:0];
        end
    endfunction

    reg  [4:0]  phase0;

    // Phase advances by 4 per beat (SSR=4)
    wire [4:0]  next_phase0;
    assign next_phase0 = cond_mod({2'b00, phase0} + 7'd4, eff_m);

    // Valid mask: 4 slots
    wire [3:0]  mask_comb;
    wire [4:0]  slot_phase_mod [0:3];

    genvar k;
    generate
        for (k = 0; k < 4; k = k + 1) begin : GEN_MASK
            assign slot_phase_mod[k] = cond_mod({2'b00, phase0} + k, eff_m);
            assign mask_comb[k]      = (slot_phase_mod[k] == INTERP_PHASE);
        end
    endgenerate

    // Input sample buffer: 4 steps x 64-bit
    reg [255:0] samp_buf;
    reg         buf_loaded;
    reg [1:0]   s_idx;   // next sample to use (0..3)

    // Preceding valid count and popcount for 4 slots
    reg [2:0] pre_valid [0:3];
    reg [2:0] mask_pop;
    integer   j_pv, i_pv;

    always @(*) begin
        mask_pop = 3'd0;
        for (j_pv = 0; j_pv < 4; j_pv = j_pv + 1) begin
            pre_valid[j_pv] = 3'd0;
            for (i_pv = 0; i_pv < j_pv; i_pv = i_pv + 1)
                pre_valid[j_pv] = pre_valid[j_pv] + {2'd0, mask_comb[i_pv]};
            mask_pop = mask_pop + {2'd0, mask_comb[j_pv]};
        end
    end

    // Build output beat: place samples at valid slots, zeros elsewhere
    reg  [255:0] beat_data;
    integer      b_bd;
    reg  [1:0]   addr_bd;

    always @(*) begin
        for (b_bd = 0; b_bd < 4; b_bd = b_bd + 1) begin
            if (mask_comb[b_bd]) begin
                addr_bd = s_idx[1:0] + pre_valid[b_bd][1:0];
                beat_data[b_bd*64 +: 64] = samp_buf[addr_bd * 64 +: 64];
            end else begin
                beat_data[b_bd*64 +: 64] = 64'd0;
            end
        end
    end

    assign s_axis_tready = !buf_loaded;

    reg  [255:0] out_reg;
    reg          out_valid_r;

    assign m_axis_tdata  = out_reg;
    assign m_axis_tvalid = out_valid_r;

    always @(posedge aclk) begin
        if (!aresetn) begin
            phase0         <= 5'd0;
            s_idx          <= 2'd0;
            samp_buf       <= {256{1'b0}};
            buf_loaded     <= 1'b0;
            out_reg        <= {256{1'b0}};
            out_valid_r    <= 1'b0;
            in_beat_count  <= 32'd0;
            out_beat_count <= 32'd0;
        end else begin
            if (cnt_clr) begin
                in_beat_count  <= 32'd0;
                out_beat_count <= 32'd0;
            end

            if (!buf_loaded && s_axis_tvalid) begin
                samp_buf   <= s_axis_tdata;
                buf_loaded <= 1'b1;
                s_idx      <= 2'd0;
                if (!cnt_clr) in_beat_count <= in_beat_count + 32'd1;
            end

            if (out_valid_r && m_axis_tready)
                out_valid_r <= 1'b0;

            if (buf_loaded && (!out_valid_r || m_axis_tready)) begin
                out_reg     <= beat_data;
                out_valid_r <= 1'b1;
                phase0      <= next_phase0;
                if (!cnt_clr) out_beat_count <= out_beat_count + 32'd1;

                // Release input beat once all 4 samples consumed.
                // Use 4-bit sum to avoid truncation when mask_pop=4 (M=1).
                if (({2'd0, s_idx} + {1'b0, mask_pop}) >= 4'd4) begin
                    buf_loaded <= 1'b0;
                    s_idx      <= 2'd0;
                end else begin
                    s_idx <= s_idx + mask_pop[1:0]; // mask_pop<4 in this branch
                end
            end
        end
    end

endmodule
