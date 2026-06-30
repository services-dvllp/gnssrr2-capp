`timescale 1ns / 1ps
// TX IQ bit unpacker.
// Inverse of iq_bit_packer (RX side).
// Runs at 30.72 MHz, 4 samples per beat, 256-bit AXI-S bus (SSR=4).
//
// Input:  256-bit densely packed beats from DMA CDC FIFO.
// Output: 256-bit time-major beats (4 steps x {Q1,I1,Q0,I0} x 16-bit),
//         all 4 slots valid.
//
// Packing format (LSB-first, matches iq_bit_packer):
//   step 0 occupies bits [bps-1:0] of the packed input,
//   step 1 occupies bits [2*bps-1:bps], etc.
//   256 / bps is always an integer multiple of 4 for all valid bps values.
//
// 2-bit dequantisation:  {sign,mag}: 00->+1  01->+3  10->-1  11->-3

module iq_bit_unpacker_tx (
    input  wire          aclk,       // 30.72 MHz
    input  wire          aresetn,

    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA"  *) input  wire [255:0] s_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input  wire         s_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output wire         s_axis_tready,

    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA"  *) output wire [255:0] m_axis_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output wire         m_axis_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input  wire         m_axis_tready,

    input  wire [1:0]    BIT_MODE,   // 00=16-bit 01=8-bit 10=4-bit 11=2-bit
    input  wire          BAND_DUAL,  // 1=I0Q0I1Q1, 0=I0Q0 only

    input  wire          cnt_clr,
    output reg  [31:0]   in_beat_count,
    output reg  [31:0]   out_beat_count
);

    // 2-bit sign-magnitude dequantiser
    function automatic signed [15:0] deq2;
        input [1:0] sm;
        begin
            case (sm)
                2'b00: deq2 =  16'sd1;
                2'b01: deq2 =  16'sd3;
                2'b10: deq2 = -16'sd1;
                default: deq2 = -16'sd3;
            endcase
        end
    endfunction

    // Bits per step
    reg [6:0] bps;
    always @(*) begin
        case ({BAND_DUAL, BIT_MODE})
            3'b1_00: bps = 7'd64;
            3'b1_01: bps = 7'd32;
            3'b1_10: bps = 7'd16;
            3'b1_11: bps = 7'd8;
            3'b0_00: bps = 7'd32;
            3'b0_01: bps = 7'd16;
            3'b0_10: bps = 7'd8;
            default: bps = 7'd4;   // 0_11 single 2-bit
        endcase
    end

    // Bits consumed per 4-step output beat
    wire [9:0] step_bits;
    assign step_bits = {3'd0, bps} << 2;   // 4 * bps

    reg [255:0] in_buf;
    reg [8:0]   rd_ptr;     // bit offset of next unread sample (0..256)
    reg         buf_valid;

    wire [255:0] in_buf_aligned;
    assign in_buf_aligned = in_buf >> rd_ptr;

    reg  [255:0] out_reg;
    reg          out_valid_r;

    assign m_axis_tdata  = out_reg;
    assign m_axis_tvalid = out_valid_r;
    assign s_axis_tready = !buf_valid && !(out_valid_r && !m_axis_tready);

    // Combinational output beat: 4 steps extracted from in_buf_aligned
    wire [255:0] out_data;

    genvar k;
    generate
        for (k = 0; k < 4; k = k + 1) begin : GEN_STEP
            wire [15:0] I0, Q0, I1, Q1;
            reg  [15:0] rI0, rQ0, rI1, rQ1;

            always @(*) begin
                rI0 = 16'd0; rQ0 = 16'd0; rI1 = 16'd0; rQ1 = 16'd0;
                case ({BAND_DUAL, BIT_MODE})
                    // dual 16-bit (bps=64): step k at k*64 in aligned buf
                    3'b1_00: begin
                        rI0 = in_buf_aligned[k*64     +: 16];
                        rQ0 = in_buf_aligned[k*64+16  +: 16];
                        rI1 = in_buf_aligned[k*64+32  +: 16];
                        rQ1 = in_buf_aligned[k*64+48  +: 16];
                    end
                    // dual 8-bit (bps=32)
                    3'b1_01: begin
                        rI0 = {{8{in_buf_aligned[k*32+7]}},  in_buf_aligned[k*32    +: 8]};
                        rQ0 = {{8{in_buf_aligned[k*32+15]}}, in_buf_aligned[k*32+8  +: 8]};
                        rI1 = {{8{in_buf_aligned[k*32+23]}}, in_buf_aligned[k*32+16 +: 8]};
                        rQ1 = {{8{in_buf_aligned[k*32+31]}}, in_buf_aligned[k*32+24 +: 8]};
                    end
                    // dual 4-bit (bps=16)
                    3'b1_10: begin
                        rI0 = {{12{in_buf_aligned[k*16+3]}},  in_buf_aligned[k*16    +: 4]};
                        rQ0 = {{12{in_buf_aligned[k*16+7]}},  in_buf_aligned[k*16+4  +: 4]};
                        rI1 = {{12{in_buf_aligned[k*16+11]}}, in_buf_aligned[k*16+8  +: 4]};
                        rQ1 = {{12{in_buf_aligned[k*16+15]}}, in_buf_aligned[k*16+12 +: 4]};
                    end
                    // dual 2-bit (bps=8)
                    3'b1_11: begin
                        rI0 = deq2(in_buf_aligned[k*8   +: 2]);
                        rQ0 = deq2(in_buf_aligned[k*8+2 +: 2]);
                        rI1 = deq2(in_buf_aligned[k*8+4 +: 2]);
                        rQ1 = deq2(in_buf_aligned[k*8+6 +: 2]);
                    end
                    // single 16-bit (bps=32)
                    3'b0_00: begin
                        rI0 = in_buf_aligned[k*32    +: 16];
                        rQ0 = in_buf_aligned[k*32+16 +: 16];
                    end
                    // single 8-bit (bps=16)
                    3'b0_01: begin
                        rI0 = {{8{in_buf_aligned[k*16+7]}},  in_buf_aligned[k*16   +: 8]};
                        rQ0 = {{8{in_buf_aligned[k*16+15]}}, in_buf_aligned[k*16+8 +: 8]};
                    end
                    // single 4-bit (bps=8)
                    3'b0_10: begin
                        rI0 = {{12{in_buf_aligned[k*8+3]}}, in_buf_aligned[k*8   +: 4]};
                        rQ0 = {{12{in_buf_aligned[k*8+7]}}, in_buf_aligned[k*8+4 +: 4]};
                    end
                    // single 2-bit (bps=4)
                    default: begin
                        rI0 = deq2(in_buf_aligned[k*4   +: 2]);
                        rQ0 = deq2(in_buf_aligned[k*4+2 +: 2]);
                    end
                endcase
            end

            assign I0 = rI0; assign Q0 = rQ0; assign I1 = rI1; assign Q1 = rQ1;
            assign out_data[k*64     +: 16] = I0;
            assign out_data[k*64+16  +: 16] = Q0;
            assign out_data[k*64+32  +: 16] = I1;
            assign out_data[k*64+48  +: 16] = Q1;
        end
    endgenerate

    always @(posedge aclk) begin
        if (!aresetn) begin
            in_buf         <= {256{1'b0}};
            rd_ptr         <= 9'd0;
            buf_valid      <= 1'b0;
            out_reg        <= {256{1'b0}};
            out_valid_r    <= 1'b0;
            in_beat_count  <= 32'd0;
            out_beat_count <= 32'd0;
        end else begin
            if (cnt_clr) begin
                in_beat_count  <= 32'd0;
                out_beat_count <= 32'd0;
            end

            if (out_valid_r && m_axis_tready) begin
                out_valid_r <= 1'b0;
                if (!cnt_clr) out_beat_count <= out_beat_count + 32'd1;
            end

            if (!buf_valid && s_axis_tvalid && !(out_valid_r && !m_axis_tready)) begin
                in_buf    <= s_axis_tdata;
                rd_ptr    <= 9'd0;
                buf_valid <= 1'b1;
                if (!cnt_clr) in_beat_count <= in_beat_count + 32'd1;
            end

            if (buf_valid && (!out_valid_r || m_axis_tready)) begin
                out_reg     <= out_data;
                out_valid_r <= 1'b1;
                if (rd_ptr + step_bits >= 10'd256) begin
                    buf_valid <= 1'b0;
                    rd_ptr    <= 9'd0;
                end else begin
                    rd_ptr <= rd_ptr + step_bits[8:0];
                end
            end
        end
    end

endmodule
