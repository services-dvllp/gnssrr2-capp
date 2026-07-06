`timescale 1ns / 1ps

//Recommendation: ~1 MiB periods (BEATS_PER_PERIOD = 16384)
//IRQ rate ≈ 1 kHz — comfortable for embedded Linux, leaves CPU headroom for the actual SSD write/copy work.
//Latency ≈ 1 ms per chunk — fine for a recording application (no real-time control loop downstream).
//1 MiB is also a good SSD write size — large enough for efficient sequential writes, well above typical filesystem block sizes (4 KiB), so this period size doubles as a sensible SSD write-chunk size later.
//It's exactly half the 32K-beat FIFO (32768/2 = 16384), so RX_PERIODS = 2 gives a clean double-buffer that exactly matches the FIFO's total absorption capacity — same "mirror the FIFO" logic as before, just at coarser granularity.
//16384 still fits comfortably in tlast_generator's existing 16-bit beat_counter (max 65535), so it's a one-line parameter change, no resource impact.

module tlast_generator #(
    parameter BEATS_PER_PERIOD = 16384, 
    parameter TDATA_WIDTH = 512
)(
    input  wire                   aclk,
    input  wire                   aresetn,
    
    // Slave AXI-Stream (From axis_combiner)
    input  wire [TDATA_WIDTH-1:0] s_axis_tdata,
    input  wire                   s_axis_tvalid,
    output wire                   s_axis_tready,
    
    // Master AXI-Stream (To AXI DMA S2MM)
    output wire [TDATA_WIDTH-1:0] m_axis_tdata,
    output wire                   m_axis_tvalid,
    input  wire                   m_axis_tready,
    output wire                   m_axis_tlast
);

    // Internal beat counter
    reg [15:0] beat_counter;

    // Pass-through signals (Zero Latency)
    assign m_axis_tdata  = s_axis_tdata;
    assign m_axis_tvalid = s_axis_tvalid;
    assign s_axis_tready = m_axis_tready;

    // A valid data transfer occurs when both TVALID and TREADY are high
    wire transfer_en = s_axis_tvalid & m_axis_tready;

    // Assert TLAST exactly on the last beat of the period
    assign m_axis_tlast = (beat_counter == (BEATS_PER_PERIOD - 1));

    always @(posedge aclk) begin
        if (!aresetn) begin
            beat_counter <= 16'd0;
        end else if (transfer_en) begin
            if (beat_counter == (BEATS_PER_PERIOD - 1)) begin
                beat_counter <= 16'd0; // Reset counter at end of period
            end else begin
                beat_counter <= beat_counter + 16'd1;
            end
        end
    end

endmodule