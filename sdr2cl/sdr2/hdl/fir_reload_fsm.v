`timescale 1ns / 1ps
// FIR coefficient reload FSM.
// Streams coefficients from the parent shadow RAM to fir_compiler_rx S_AXIS_RELOAD.
// Uses a ROM-style address/data interface to the shadow RAM so unpacked arrays
// are not required as module ports (not valid in Verilog-2001).
//
// Coefficient_Width = 20; S_AXIS_RELOAD TDATA = ceil(20/8)*8 = 24 bits (PG149).
// The 20-bit signed coefficient is sign-extended to 24 bits.
// FIR Compiler broadcasts the single coefficient to all Number_Paths internally.
// TLAST is asserted on the last coefficient beat (index NUM_TAPS-1).
// New coefficients take effect after TLAST is accepted by the FIR.

module fir_reload_fsm #(
    parameter integer NUM_TAPS = 31
)(
    input  wire        aclk,
    input  wire        aresetn,

    // ROM interface to shadow RAM in record_replay_ctrl_rx
    output reg  [4:0]  coeff_raddr,  // read address = current coefficient index
    input  wire [19:0] coeff_rdata,  // signed 20-bit coefficient at coeff_raddr

    // Control
    input  wire        reload_start,  // pulse: begin streaming
    output reg         reload_done,   // pulse: streaming completed
    output wire        reload_busy,   // level: FSM not idle

    // S_AXIS_RELOAD to fir_compiler_rx (24-bit: ceil(20/8)*8)
    output wire [23:0] m_axis_tdata,
    output reg         m_axis_tvalid,
    output wire        m_axis_tlast,
    input  wire        m_axis_tready
);

    // LAST_IDX must fit in 5 bits; NUM_TAPS <= 32 assumed
    localparam [4:0] LAST_IDX = NUM_TAPS - 1;

    localparam [1:0] ST_IDLE   = 2'd0;
    localparam [1:0] ST_STREAM = 2'd1;

    reg [1:0] state;

    assign reload_busy  = (state != ST_IDLE);
    // Sign-extend 20-bit signed coefficient to 24-bit TDATA
    assign m_axis_tdata = {{4{coeff_rdata[19]}}, coeff_rdata};
    assign m_axis_tlast = (coeff_raddr == LAST_IDX);

    always @(posedge aclk) begin
        if (!aresetn) begin
            state         <= ST_IDLE;
            coeff_raddr   <= 5'd0;
            m_axis_tvalid <= 1'b0;
            reload_done   <= 1'b0;
        end else begin
            reload_done <= 1'b0;  // one-cycle pulse

            case (state)
                ST_IDLE: begin
                    m_axis_tvalid <= 1'b0;
                    coeff_raddr   <= 5'd0;
                    if (reload_start) begin
                        m_axis_tvalid <= 1'b1;
                        state         <= ST_STREAM;
                    end
                end

                ST_STREAM: begin
                    if (m_axis_tready) begin
                        if (m_axis_tlast) begin
                            m_axis_tvalid <= 1'b0;
                            reload_done   <= 1'b1;
                            state         <= ST_IDLE;
                        end else begin
                            coeff_raddr <= coeff_raddr + 5'd1;
                        end
                    end
                end

                default: state <= ST_IDLE;
            endcase
        end
    end

endmodule
