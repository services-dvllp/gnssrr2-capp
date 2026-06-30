`timescale 1ns / 1ps
// Pick-1-in-M vectorized decimator.
// Accepts 512-bit time-major AXI-S (8 time steps x 4 paths x 16-bit per step).
// Outputs same 512-bit bus + valid_mask[7:0] as TUSER sideband.
// TREADY to upstream is always 1: no back-pressure on RFDC/FIR chain.
// For each beat, slot k is kept when (phase0 + k) mod M == DECIM_PHASE.

module programmable_decim (
    input  wire          aclk,
    input  wire          aresetn,

    // Upstream -- always ready, no back-pressure
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA"  *) input  wire [511:0] s_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input  wire         s_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output wire         s_axis_tready,

    // Downstream (to iq_quantizer_vec). valid_mask carried as TUSER.
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA"  *) output reg  [511:0] m_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER"  *) output reg  [7:0]   m_axis_tuser,   // valid_mask
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output reg          m_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input  wire         m_axis_tready,

    // Configuration (hold stable or flush pipeline before changing)
    input  wire [4:0]    DECIM_M,      // 1-30; 0 treated as 1
    input  wire [4:0]    DECIM_PHASE,  // 0 to DECIM_M-1

    // Strobe clears all counters synchronously
    input  wire          cnt_clr,

    // Status -- free-running, cleared by cnt_clr
    output reg  [31:0]   in_beat_count,
    output reg  [31:0]   out_beat_count,
    output reg  [31:0]   sample_count,
    output reg  [31:0]   drop_count
);

    assign s_axis_tready = 1'b1;

    // Treat DECIM_M == 0 as 1 (pass-through)
    wire [4:0] eff_m;
    assign eff_m = (DECIM_M == 5'd0) ? 5'd1 : DECIM_M;

    // Compute val mod m via 8 chained conditional subtractions.
    // Handles val in [0,36] (phase0 <= 29, k <= 7 -> max 36).
    function automatic [4:0] cond_mod (
        input [6:0] val,
        input [4:0] m
    );
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

    // Phase of slot 0 in the current beat (in [0, eff_m-1])
    reg [4:0] phase0;

    // Combinational: mask bit k = 1 when (phase0 + k) mod M == DECIM_PHASE
    wire [7:0]  mask_comb;
    wire [4:0]  slot_phase_mod [0:7];

    genvar k;
    generate
        for (k = 0; k < 8; k = k + 1) begin : GEN_SLOT
            // k is a genvar integer; implicit truncation at 7-bit function port
            assign slot_phase_mod[k] = cond_mod({2'b00, phase0} + k, eff_m);
            assign mask_comb[k]      = (slot_phase_mod[k] == DECIM_PHASE);
        end
    endgenerate

    // Phase advance by 8 per beat
    wire [4:0] next_phase0;
    assign next_phase0 = cond_mod({2'b00, phase0} + 7'd8, eff_m);

    // Population count of mask_comb (0..8)
    reg  [3:0] mask_pop;
    integer    i_mk;
    always @(*) begin
        mask_pop = 4'd0;
        for (i_mk = 0; i_mk < 8; i_mk = i_mk + 1)
            mask_pop = mask_pop + {3'd0, mask_comb[i_mk]};
    end

    always @(posedge aclk) begin
        if (!aresetn) begin
            phase0         <= 5'd0;
            m_axis_tvalid  <= 1'b0;
            m_axis_tdata   <= {512{1'b0}};
            m_axis_tuser   <= 8'd0;
            in_beat_count  <= 32'd0;
            out_beat_count <= 32'd0;
            sample_count   <= 32'd0;
            drop_count     <= 32'd0;
        end else begin
            if (cnt_clr) begin
                in_beat_count  <= 32'd0;
                out_beat_count <= 32'd0;
                sample_count   <= 32'd0;
                drop_count     <= 32'd0;
            end

            if (s_axis_tvalid) begin
                // Always accept upstream beat; register output
                m_axis_tdata  <= s_axis_tdata;
                m_axis_tuser  <= mask_comb;    // valid_mask via TUSER
                m_axis_tvalid <= |mask_comb;
                phase0        <= next_phase0;

                if (!cnt_clr) begin
                    in_beat_count <= in_beat_count + 32'd1;
                    if (|mask_comb) begin
                        out_beat_count <= out_beat_count + 32'd1;
                        sample_count   <= sample_count + {28'd0, mask_pop};
                        if (m_axis_tvalid && !m_axis_tready)
                            drop_count <= drop_count + 32'd1;
                    end
                end
            end else begin
                // De-assert once consumed (TREADY permanently 1 downstream)
                if (m_axis_tready)
                    m_axis_tvalid <= 1'b0;
            end
        end
    end

endmodule
