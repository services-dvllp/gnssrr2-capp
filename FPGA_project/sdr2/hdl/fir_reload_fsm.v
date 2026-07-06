`timescale 1ns / 1ps
// FIR coefficient reload FSM.
// Streams coefficients from the parent shadow RAM to fir_compiler_* S_AXIS_RELOAD,
// then issues one S_AXIS_CONFIG transaction to ACTIVATE the reloaded set.
//
// WHY THE CONFIG STEP (bug fix 2026-07-05):
//   PG149: with Coefficient_Reload=true the reload packet only fills a
//   background buffer. The core keeps filtering with the previous (build-time)
//   coefficients until a transaction is accepted on S_AXIS_CONFIG. Without it
//   the placeholder vector {...,-1,2,-1,...} stays active and, with the fixed
//   output slice (41-bit full precision -> 16-bit output = >>25), every output
//   sample rounds to zero. This FSM now performs reload + config activation.
//
// Handshake fix: S_AXIS_RELOAD *does* have TREADY (HAS_TREADY=1 in the
// generated IP); beats advance only on tvalid&&tready. The old "tready floats"
// assumption could silently drop coefficients.
//
// Coefficient_Width = 20; S_AXIS_RELOAD TDATA = ceil(20/8)*8 = 24 bits (PG149).
// The 20-bit signed coefficient is sign-extended to 24 bits.
// TLAST is asserted on the last coefficient beat (index NUM_TAPS-1).
// S_AXIS_CONFIG TDATA = 8 bits; value 0 selects coefficient set 0 (only set).
//
// reload_done pulses only after the CONFIG transaction is accepted, i.e. when
// the new coefficients are actually in use. reload_err pulses instead if the
// watchdog expires (~4.3 ms @15.36 MHz) in either phase.

module fir_reload_fsm #(
    parameter integer NUM_TAPS = 31
)(
    input  wire        aclk,
    input  wire        aresetn,

    // ROM interface to shadow RAM in the parent ctrl block
    output reg  [4:0]  coeff_raddr,  // read address = current coefficient index
    input  wire [19:0] coeff_rdata,  // signed 20-bit coefficient at coeff_raddr

    // Control
    input  wire        reload_start,  // pulse: begin streaming
    output reg         reload_done,   // pulse: reload streamed AND config accepted
    output reg         reload_err,    // pulse: watchdog timeout (reload aborted)
    output wire        reload_busy,   // level: FSM not idle

    // S_AXIS_RELOAD to fir_compiler_* (24-bit: ceil(20/8)*8)
    output wire [23:0] m_axis_tdata,
    output reg         m_axis_tvalid,
    output wire        m_axis_tlast,
    input  wire        m_axis_tready,

    // S_AXIS_CONFIG to fir_compiler_* (8-bit: coefficient set index, always 0)
    output wire [7:0]  m_axis_config_tdata,
    output reg         m_axis_config_tvalid,
    input  wire        m_axis_config_tready
);

    // LAST_IDX must fit in 5 bits; NUM_TAPS <= 32 assumed
    localparam [4:0] LAST_IDX = NUM_TAPS - 1;

    localparam [1:0] ST_IDLE   = 2'd0;
    localparam [1:0] ST_STREAM = 2'd1;
    localparam [1:0] ST_CONFIG = 2'd2;

    reg [1:0]  state;
    reg [15:0] wdog;   // watchdog: 65535 cycles ~= 4.3 ms @ 15.36 MHz

    assign reload_busy  = (state != ST_IDLE);
    // Sign-extend 20-bit signed coefficient to 24-bit TDATA
    assign m_axis_tdata = {{4{coeff_rdata[19]}}, coeff_rdata};
    assign m_axis_tlast = (coeff_raddr == LAST_IDX);
    // Single coefficient set -> config word selects set 0
    assign m_axis_config_tdata = 8'd0;

    always @(posedge aclk) begin
        if (!aresetn) begin
            state                <= ST_IDLE;
            coeff_raddr          <= 5'd0;
            m_axis_tvalid        <= 1'b0;
            m_axis_config_tvalid <= 1'b0;
            reload_done          <= 1'b0;
            reload_err           <= 1'b0;
            wdog                 <= 16'd0;
        end else begin
            reload_done <= 1'b0;  // one-cycle pulses
            reload_err  <= 1'b0;

            case (state)
                ST_IDLE: begin
                    m_axis_tvalid        <= 1'b0;
                    m_axis_config_tvalid <= 1'b0;
                    coeff_raddr          <= 5'd0;
                    wdog                 <= 16'd0;
                    if (reload_start) begin
                        m_axis_tvalid <= 1'b1;
                        state         <= ST_STREAM;
                    end
                end

                ST_STREAM: begin
                    if (m_axis_tvalid && m_axis_tready) begin
                        wdog <= 16'd0;
                        if (m_axis_tlast) begin
                            // Reload packet complete -> activate via config
                            m_axis_tvalid        <= 1'b0;
                            m_axis_config_tvalid <= 1'b1;
                            state                <= ST_CONFIG;
                        end else begin
                            coeff_raddr <= coeff_raddr + 5'd1;
                        end
                    end else begin
                        wdog <= wdog + 16'd1;
                        if (wdog == 16'hFFFF) begin
                            m_axis_tvalid <= 1'b0;
                            reload_err    <= 1'b1;
                            state         <= ST_IDLE;
                        end
                    end
                end

                ST_CONFIG: begin
                    if (m_axis_config_tvalid && m_axis_config_tready) begin
                        // Coefficients are now ACTIVE in the FIR core
                        m_axis_config_tvalid <= 1'b0;
                        reload_done          <= 1'b1;
                        state                <= ST_IDLE;
                    end else begin
                        wdog <= wdog + 16'd1;
                        if (wdog == 16'hFFFF) begin
                            m_axis_config_tvalid <= 1'b0;
                            reload_err           <= 1'b1;
                            state                <= ST_IDLE;
                        end
                    end
                end

                default: state <= ST_IDLE;
            endcase
        end
    end

endmodule
