`timescale 1ns / 1ps
// IQ bit packer.
// Accepts 512-bit quantised data + valid_mask (as TUSER[7:0]) from iq_quantizer_vec.
// Extracts only the valid time steps, compacts their quantised bits in ascending time
// order, and accumulates them into full 512-bit output beats.
//
// TREADY upstream is always 1 (no back-pressure).
// Output TVALID/TREADY is standard AXI-S toward axis_data_fifo_2.
//
// fill_ptr is always a multiple of bps (bits-per-step).
// 1023-bit accumulator holds up to one beat of leftover + one beat of new data.
// When downstream is not ready and a second output beat accumulates, the first
// is overwritten and overflow_cnt is incremented.
//
// Packing order per valid time step (little-endian within the beat):
//   16-bit: {Q1[15:0], I1[15:0], Q0[15:0], I0[15:0]}  -> 64 bits/step
//    8-bit: {Q1[ 7:0], I1[ 7:0], Q0[ 7:0], I0[ 7:0]}  -> 32 bits/step
//    4-bit: {Q1[ 3:0], I1[ 3:0], Q0[ 3:0], I0[ 3:0]}  -> 16 bits/step
//    2-bit: {Q1[ 1:0], I1[ 1:0], Q0[ 1:0], I0[ 1:0]}  ->  8 bits/step
// Single-band: only I0/Q0 components, half the bits per step.

module iq_bit_packer (
    input  wire          aclk,
    input  wire          aresetn,

    // Input from iq_quantizer_vec -- accepted unconditionally
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA"  *) input  wire [511:0] s_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TUSER"  *) input  wire [7:0]   s_axis_tuser,   // valid_mask
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input  wire         s_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output wire         s_axis_tready,

    // Output: full 512-bit packed beats toward axis_data_fifo_2
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA"  *) output wire [511:0] m_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output wire         m_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input  wire         m_axis_tready,

    // Configuration
    input  wire [1:0]    BIT_MODE,   // 00=16-bit 01=8-bit 10=4-bit 11=2-bit
    input  wire          BAND_DUAL,  // 1=I0Q0I1Q1, 0=I0Q0 only

    // Status
    input  wire          cnt_clr,
    output wire [9:0]    pack_fill,    // accumulator fill in bits (debug)
    output reg  [31:0]   overflow_cnt  // beats dropped because downstream was full
);

    assign s_axis_tready = 1'b1;

    // Bits per step: dual-band 64/32/16/8, single-band half
    reg [6:0] bps;
    always @(*) begin
        case ({BAND_DUAL, BIT_MODE})
            3'b1_00: bps = 7'd64;
            3'b1_01: bps = 7'd32;
            3'b1_10: bps = 7'd16;
            3'b1_11: bps = 7'd8;
            3'b0_00: bps = 7'd32;  // single-band 16-bit
            3'b0_01: bps = 7'd16;
            3'b0_10: bps = 7'd8;
            3'b0_11: bps = 7'd4;
            default: bps = 7'd64;
        endcase
    end

    // Extract the quantised bits for one 64-bit time step (zero-pads to 64 bits).
    // Input layout: {Q1[15:0], I1[15:0], Q0[15:0], I0[15:0]}
    // Lower N bits of each 16-bit field are valid after quantisation.
    function automatic [63:0] extract_step (
        input [63:0] step,
        input [1:0]  mode,
        input        dual
    );
        reg [15:0] i0, q0, i1, q1;
        begin
            i0 = step[15:0];   q0 = step[31:16];
            i1 = step[47:32];  q1 = step[63:48];
            case ({dual, mode})
                3'b1_00: extract_step = {q1[15:0], i1[15:0], q0[15:0], i0[15:0]};        // 64b
                3'b1_01: extract_step = {32'd0, q1[7:0], i1[7:0], q0[7:0], i0[7:0]};     // 32b
                3'b1_10: extract_step = {48'd0, q1[3:0], i1[3:0], q0[3:0], i0[3:0]};     // 16b
                3'b1_11: extract_step = {56'd0, q1[1:0], i1[1:0], q0[1:0], i0[1:0]};     //  8b
                3'b0_00: extract_step = {32'd0, q0[15:0], i0[15:0]};                      // 32b
                3'b0_01: extract_step = {48'd0, q0[7:0],  i0[7:0]};                      // 16b
                3'b0_10: extract_step = {56'd0, q0[3:0],  i0[3:0]};                      //  8b
                3'b0_11: extract_step = {60'd0, q0[1:0],  i0[1:0]};                      //  4b
                default: extract_step = 64'd0;
            endcase
        end
    endfunction

    // Combinational batch builder:
    // Compacts valid time steps (from TUSER/valid_mask) into a contiguous bit-field.
    // batch[batch_bits-1:0] contains the data; upper bits are 0.
    // All intermediate offsets are multiples of bps -> synthesises as barrel-mux chain.
    reg  [511:0] batch;
    reg  [9:0]   batch_bits;
    integer      k_bp;

    always @(*) begin
        batch      = {512{1'b0}};
        batch_bits = 10'd0;
        for (k_bp = 0; k_bp < 8; k_bp = k_bp + 1) begin
            if (s_axis_tuser[k_bp]) begin
                // Variable part-select: place 64 bits at current offset.
                // extract_step zero-pads upper bits, so OR is safe.
                batch[batch_bits +: 64] = batch[batch_bits +: 64] |
                    extract_step(s_axis_tdata[k_bp*64 +: 64], BIT_MODE, BAND_DUAL);
                batch_bits = batch_bits + {3'd0, bps};
            end
        end
    end

    // Accumulator state
    reg  [1022:0] accum;
    reg  [9:0]    fill_ptr;
    reg  [511:0]  out_reg;
    reg           out_valid;

    // Temporaries for the merge calculation (blocking assignments, not registers)
    reg  [1022:0] merged;
    reg  [9:0]    new_fill;

    assign m_axis_tdata  = out_reg;
    assign m_axis_tvalid = out_valid;
    assign pack_fill     = fill_ptr;

    always @(posedge aclk) begin
        if (!aresetn) begin
            accum        <= {1023{1'b0}};
            fill_ptr     <= 10'd0;
            out_reg      <= {512{1'b0}};
            out_valid    <= 1'b0;
            overflow_cnt <= 32'd0;
        end else begin
            if (cnt_clr)
                overflow_cnt <= 32'd0;

            // Drain output register when downstream handshakes
            if (out_valid && m_axis_tready)
                out_valid <= 1'b0;

            if (s_axis_tvalid && (batch_bits != 10'd0)) begin
                // Merge batch into accumulator at current write pointer.
                // fill_ptr is always a multiple of bps; batch fits without gaps.
                merged   = accum | ({511'd0, batch} << fill_ptr);
                new_fill = fill_ptr + batch_bits;

                if (new_fill >= 10'd512) begin
                    // One full 512-bit output beat is ready.
                    if (out_valid && !m_axis_tready) begin
                        // Downstream not ready: drop the output beat, keep leftover.
                        if (!cnt_clr)
                            overflow_cnt <= overflow_cnt + 32'd1;
                    end else begin
                        out_reg   <= merged[511:0];
                        out_valid <= 1'b1;
                    end
                    // Either way: keep the leftover bits in the accumulator.
                    accum    <= merged >> 10'd512;
                    fill_ptr <= new_fill - 10'd512;
                end else begin
                    // Not enough for a full beat yet -- just accumulate.
                    accum    <= merged[1022:0];
                    fill_ptr <= new_fill;
                end
            end
        end
    end

endmodule
