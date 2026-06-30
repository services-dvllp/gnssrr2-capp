`timescale 1ns / 1ps
// AXI-Lite control register block for the RX record/replay path.
// Runs at 15.36 MHz (clk_wiz_0/clk_out1) -- same domain as the data path modules,
// so no CDC is needed on any configuration output.
// Connected as M04 on ps8_0_axi_periph; the AXI interconnect handles CDC to the PS.
//
// Base address: 0x80060000 (assigned in apply_rx_path.tcl).
// Register map: see docs/rx-path-design.md section 9.

module record_replay_ctrl_rx #(
    parameter [31:0] BUILD_ID_VAL   = 32'h0000_0001,  // fill from build scripts
    parameter [31:0] DESIGN_VER_VAL = 32'h0001_0000   // v1.0
)(
    // Clock and reset (15.36 MHz domain, connected to clk_wiz_0/clk_out1)
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK",
       X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXI:M_AXIS_RELOAD, ASSOCIATED_RESET aresetn, FREQ_HZ 15360000" *)
    input  wire        aclk,
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST",
       X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    input  wire        aresetn,

    // AXI4-Lite slave (32-bit address, 32-bit data)
    // PROTOCOL annotation on AWADDR is required for Vivado to create the
    // address segment (bd_addr_segs) that assign_bd_address needs.
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR",
       X_INTERFACE_PARAMETER = "PROTOCOL AXI4LITE, DATA_WIDTH 32, ADDR_WIDTH 32, \
NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1" *)
    input  wire [31:0] s_axi_awaddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input  wire        s_axi_awvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output reg         s_axi_awready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA"   *) input  wire [31:0] s_axi_wdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB"   *) input  wire [ 3:0] s_axi_wstrb,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID"  *) input  wire        s_axi_wvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY"  *) output reg         s_axi_wready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP"   *) output reg  [ 1:0] s_axi_bresp,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID"  *) output reg         s_axi_bvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY"  *) input  wire        s_axi_bready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR"  *) input  wire [31:0] s_axi_araddr,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input  wire        s_axi_arvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output reg         s_axi_arready,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA"   *) output reg  [31:0] s_axi_rdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP"   *) output reg  [ 1:0] s_axi_rresp,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID"  *) output reg         s_axi_rvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY"  *) input  wire        s_axi_rready,

    // FIR coefficient reload AXI-Stream master -> fir_compiler_rx/S_AXIS_RELOAD
    // TDATA = ceil(20/8)*8 = 24 bits; 20-bit signed coeff sign-extended to 24 bits
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RELOAD TDATA"  *) output wire [23:0] m_axis_reload_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RELOAD TVALID" *) output wire        m_axis_reload_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RELOAD TLAST"  *) output wire        m_axis_reload_tlast,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RELOAD TREADY" *) input  wire        m_axis_reload_tready,

    // Configuration outputs -- to programmable_decim
    output wire [4:0]   DECIM_M,
    output wire [4:0]   DECIM_PHASE,

    // Configuration outputs -- to iq_quantizer_vec and iq_bit_packer
    output wire [1:0]   BIT_MODE,
    output wire [4:0]   QUANT_SHIFT,
    output wire [15:0]  QUANT_2BIT_THR,
    output wire         BAND_DUAL,

    // Shared control outputs
    output wire         cnt_clr,     // one-cycle pulse: clear all status counters
    output wire         soft_reset,  // active-high, 32-cycle pulse after CTRL[SOFT_RESET] write

    // Status inputs -- from programmable_decim
    input  wire [31:0]  in_beat_count,
    input  wire [31:0]  out_beat_count,
    input  wire [31:0]  sample_count,
    input  wire [31:0]  drop_count,

    // Status inputs -- from iq_quantizer_vec
    input  wire [31:0]  sat_count,

    // Status inputs -- from iq_bit_packer
    input  wire [9:0]   pack_fill,
    input  wire [31:0]  overflow_cnt,

    // TLAST_BEATS -> tlast_generator (connect when IP is made programmable)
    output wire [15:0]  tlast_beats
);

    // -------------------------------------------------------------------------
    // Register file
    // -------------------------------------------------------------------------
    reg [31:0] r_ctrl;           // 0x000 RW
    reg [31:0] r_band_mode;      // 0x008 RW
    reg [31:0] r_fs_hz_hi;       // 0x00C RW (software-maintained)
    reg [31:0] r_fs_hz_lo;       // 0x010 RW
    reg [31:0] r_lo_b0_hi;       // 0x014 RW
    reg [31:0] r_lo_b0_lo;       // 0x018 RW
    reg [31:0] r_lo_b1_hi;       // 0x01C RW
    reg [31:0] r_lo_b1_lo;       // 0x020 RW
    reg [5:0]  r_fir_coeff_addr; // 0x030 RW (auto-increments)
    reg [14:0] r_fir_coeff_ctrl; // 0x038 RW: [0]=START [1]=DONE(R) [2]=ERR(R) [3]=AUTO_INCR
    reg [31:0] r_fir_bw_hz;      // 0x040 RW (software-maintained)
    reg [4:0]  r_decim_m;        // 0x050 RW
    reg [4:0]  r_decim_phase;    // 0x054 RW
    reg [1:0]  r_bit_mode;       // 0x070 RW
    reg [4:0]  r_quant_shift;    // 0x074 RW
    reg [15:0] r_quant_2bit_thr; // 0x078 RW
    reg [15:0] r_tlast_beats;    // 0x080 RW
    reg [14:0] r_fifo_watermark; // 0x0B0 RW
    reg [31:0] r_irq_mask;       // 0x0B8 RW
    reg        r_debug_inject;   // 0x0BC RW

    // Shadow RAM for FIR coefficients (32 x 20-bit signed)
    reg [19:0] shadow_ram [0:31];

    // FIR reload FSM signals
    reg         fir_reload_start;
    wire        fir_reload_done;
    wire        fir_reload_busy;
    reg  [31:0] fir_coeff_crc;   // updated on reload_done

    // Soft-reset countdown
    reg  [5:0]  srst_ctr;
    assign soft_reset = (srst_ctr != 6'd0);

    // cnt_clr: one-cycle pulse from CTRL[4]
    reg         cnt_clr_r;
    assign cnt_clr = cnt_clr_r;

    // Config outputs wired to registers
    assign DECIM_M        = r_decim_m;
    assign DECIM_PHASE    = r_decim_phase;
    assign BIT_MODE       = r_bit_mode;
    assign QUANT_SHIFT    = r_quant_shift;
    assign QUANT_2BIT_THR = r_quant_2bit_thr;
    assign BAND_DUAL      = r_band_mode[1];  // bit 1: 0=single, 1=dual
    assign tlast_beats    = r_tlast_beats;

    // -------------------------------------------------------------------------
    // CRC-32 (IEEE 802.3, incremental per coefficient)
    // -------------------------------------------------------------------------
    function automatic [31:0] crc32_step (
        input [31:0] crc,
        input [15:0] data
    );
        reg     [31:0] c;
        integer        i_crc;
        begin
            c = crc;
            for (i_crc = 0; i_crc < 16; i_crc = i_crc + 1) begin
                if (c[0] ^ data[i_crc])
                    c = (c >> 1) ^ 32'hEDB88320;
                else
                    c = c >> 1;
            end
            crc32_step = c;
        end
    endfunction

    // -------------------------------------------------------------------------
    // ROM interface to shadow RAM for the reload FSM
    // -------------------------------------------------------------------------
    wire [4:0]  coeff_raddr;
    wire [19:0] coeff_rdata;
    assign coeff_rdata = shadow_ram[coeff_raddr];

    // -------------------------------------------------------------------------
    // FIR reload FSM instance
    // -------------------------------------------------------------------------
    fir_reload_fsm #(.NUM_TAPS(31)) u_fir_reload_fsm (
        .aclk          (aclk),
        .aresetn       (aresetn),
        .coeff_raddr   (coeff_raddr),
        .coeff_rdata   (coeff_rdata),
        .reload_start  (fir_reload_start),
        .reload_done   (fir_reload_done),
        .reload_busy   (fir_reload_busy),
        .m_axis_tdata  (m_axis_reload_tdata),
        .m_axis_tvalid (m_axis_reload_tvalid),
        .m_axis_tlast  (m_axis_reload_tlast),
        .m_axis_tready (m_axis_reload_tready)
    );

    // CRC32 computed incrementally during reload (one 16-bit coefficient per beat)
    reg [31:0] crc_accum;

    always @(posedge aclk) begin
        if (!aresetn) begin
            crc_accum     <= 32'hFFFF_FFFF;
            fir_coeff_crc <= 32'h0000_0000;
        end else begin
            if (fir_reload_start)
                crc_accum <= 32'hFFFF_FFFF;
            else if (m_axis_reload_tvalid && m_axis_reload_tready)
                crc_accum <= crc32_step(crc_accum, m_axis_reload_tdata[15:0]);

            if (fir_reload_done)
                fir_coeff_crc <= crc_accum ^ 32'hFFFF_FFFF;
        end
    end

    // -------------------------------------------------------------------------
    // AXI-Lite write channel
    // -------------------------------------------------------------------------
    reg [11:0] aw_addr;
    reg        aw_done, w_done;
    integer    i_ram;   // for shadow_ram initialisation loop

    always @(posedge aclk) begin
        if (!aresetn) begin
            s_axi_awready   <= 1'b1;
            s_axi_wready    <= 1'b1;
            s_axi_bvalid    <= 1'b0;
            s_axi_bresp     <= 2'b00;
            aw_done         <= 1'b0;
            w_done          <= 1'b0;
            aw_addr         <= 12'd0;
            // Register resets
            r_ctrl          <= 32'd0;
            r_band_mode     <= 32'd2;             // default: dual-band
            r_fs_hz_hi      <= 32'd0;
            r_fs_hz_lo      <= 32'h0752_4C80;    // 122_880_000 Hz
            r_lo_b0_hi      <= 32'd0;
            r_lo_b0_lo      <= 32'd1_585_000_000;
            r_lo_b1_hi      <= 32'd0;
            r_lo_b1_lo      <= 32'd1_176_000_000;
            r_fir_coeff_addr <= 6'd0;
            r_fir_coeff_ctrl <= 15'h0008;         // AUTO_INCR=1 (bit 3)
            r_fir_bw_hz     <= 32'd0;
            r_decim_m       <= 5'd1;
            r_decim_phase   <= 5'd0;
            r_bit_mode      <= 2'b00;             // 16-bit
            r_quant_shift   <= 5'd0;
            r_quant_2bit_thr <= 16'd4000;
            r_tlast_beats   <= 16'd16384;
            r_fifo_watermark <= 15'd28000;
            r_irq_mask      <= 32'd0;
            r_debug_inject  <= 1'b0;
            for (i_ram = 0; i_ram < 32; i_ram = i_ram + 1)
                shadow_ram[i_ram] <= 16'd0;
            cnt_clr_r        <= 1'b0;
            srst_ctr         <= 6'd0;
            fir_reload_start <= 1'b0;
        end else begin
            // Auto-clear pulses
            cnt_clr_r        <= 1'b0;
            fir_reload_start <= 1'b0;

            // SOFT_RESET countdown
            if (soft_reset) srst_ctr <= srst_ctr - 6'd1;

            // AW channel
            if (s_axi_awready && s_axi_awvalid) begin
                aw_addr       <= s_axi_awaddr[11:0];
                aw_done       <= 1'b1;
                s_axi_awready <= 1'b0;
            end

            // W channel
            if (s_axi_wready && s_axi_wvalid) begin
                w_done       <= 1'b1;
                s_axi_wready <= 1'b0;
            end

            // Apply write once both AW and W are received
            if (aw_done && w_done) begin
                aw_done       <= 1'b0;
                w_done        <= 1'b0;
                s_axi_awready <= 1'b1;
                s_axi_wready  <= 1'b1;
                s_axi_bvalid  <= 1'b1;

                case (aw_addr[11:2])
                    10'd0: begin  // CTRL 0x000
                        r_ctrl <= s_axi_wdata;
                        if (s_axi_wdata[2]) srst_ctr  <= 6'd32; // SOFT_RESET
                        if (s_axi_wdata[4]) cnt_clr_r <= 1'b1;  // COUNT_CLR pulse
                    end
                    10'd2:  r_band_mode       <= s_axi_wdata;         // 0x008
                    10'd3:  r_fs_hz_hi        <= s_axi_wdata;         // 0x00C
                    10'd4:  r_fs_hz_lo        <= s_axi_wdata;         // 0x010
                    10'd5:  r_lo_b0_hi        <= s_axi_wdata;         // 0x014
                    10'd6:  r_lo_b0_lo        <= s_axi_wdata;         // 0x018
                    10'd7:  r_lo_b1_hi        <= s_axi_wdata;         // 0x01C
                    10'd8:  r_lo_b1_lo        <= s_axi_wdata;         // 0x020
                    10'd12: r_fir_coeff_addr  <= s_axi_wdata[5:0];    // 0x030
                    10'd13: begin  // FIR_COEFF_DATA 0x034
                        shadow_ram[r_fir_coeff_addr] <= s_axi_wdata[19:0];
                        if (r_fir_coeff_ctrl[3])  // AUTO_INCR
                            r_fir_coeff_addr <= r_fir_coeff_addr + 6'd1;
                    end
                    10'd14: begin  // FIR_COEFF_CTRL 0x038
                        r_fir_coeff_ctrl <= s_axi_wdata[14:0];
                        if (s_axi_wdata[0]) fir_reload_start <= 1'b1;
                    end
                    10'd16: r_fir_bw_hz       <= s_axi_wdata;         // 0x040
                    10'd20: r_decim_m         <= s_axi_wdata[4:0];    // 0x050
                    10'd21: r_decim_phase     <= s_axi_wdata[4:0];    // 0x054
                    10'd28: r_bit_mode        <= s_axi_wdata[1:0];    // 0x070
                    10'd29: r_quant_shift     <= s_axi_wdata[4:0];    // 0x074
                    10'd30: r_quant_2bit_thr  <= s_axi_wdata[15:0];   // 0x078
                    10'd32: r_tlast_beats     <= s_axi_wdata[15:0];   // 0x080
                    10'd44: r_fifo_watermark  <= s_axi_wdata[14:0];   // 0x0B0
                    10'd46: r_irq_mask        <= s_axi_wdata;          // 0x0B8
                    10'd47: r_debug_inject    <= s_axi_wdata[0];       // 0x0BC
                    default: ; // ignore writes to RO registers
                endcase
            end

            // Clear BVALID on handshake
            if (s_axi_bvalid && s_axi_bready)
                s_axi_bvalid <= 1'b0;

            // Latch reload_done flag into FIR_COEFF_CTRL[1]
            if (fir_reload_done)
                r_fir_coeff_ctrl[1] <= 1'b1;
        end
    end

    // -------------------------------------------------------------------------
    // AXI-Lite read channel
    // -------------------------------------------------------------------------
    reg [31:0] rd_data;

    always @(*) begin
        rd_data = 32'd0;
        case (s_axi_araddr[11:2])
            10'd0:  rd_data = r_ctrl;
            10'd1:  rd_data = {26'd0, fir_reload_busy, 1'b0, soft_reset, 1'b0, 1'b0, r_ctrl[0]};
            10'd2:  rd_data = r_band_mode;
            10'd3:  rd_data = r_fs_hz_hi;
            10'd4:  rd_data = r_fs_hz_lo;
            10'd5:  rd_data = r_lo_b0_hi;
            10'd6:  rd_data = r_lo_b0_lo;
            10'd7:  rd_data = r_lo_b1_hi;
            10'd8:  rd_data = r_lo_b1_lo;
            10'd12: rd_data = {26'd0, r_fir_coeff_addr};
            10'd13: rd_data = {12'd0, shadow_ram[r_fir_coeff_addr]};  // 20-bit coeff
            10'd14: rd_data = {17'd0, r_fir_coeff_ctrl};
            10'd15: rd_data = fir_coeff_crc;
            10'd16: rd_data = r_fir_bw_hz;
            10'd20: rd_data = {27'd0, r_decim_m};
            10'd21: rd_data = {27'd0, r_decim_phase};
            10'd22: rd_data = in_beat_count;    // DECIM_IN_BEATS   0x058
            10'd23: rd_data = out_beat_count;   // DECIM_OUT_BEATS  0x05C
            10'd24: rd_data = sample_count;     // DECIM_SAMPLE_CNT 0x060
            10'd25: rd_data = drop_count;       // DECIM_DROP_CNT   0x064
            10'd28: rd_data = {30'd0, r_bit_mode};
            10'd29: rd_data = {27'd0, r_quant_shift};
            10'd30: rd_data = {16'd0, r_quant_2bit_thr};
            10'd31: rd_data = sat_count;         // QUANT_SAT_CNT    0x07C
            10'd32: rd_data = {16'd0, r_tlast_beats};
            10'd33: rd_data = {22'd0, pack_fill};  // PACK_FILL      0x084
            10'd34: rd_data = overflow_cnt;         // PACK_OVERFLOW  0x088
            10'd44: rd_data = {17'd0, r_fifo_watermark};
            10'd46: rd_data = r_irq_mask;
            10'd47: rd_data = {31'd0, r_debug_inject};
            10'd48: rd_data = BUILD_ID_VAL;
            10'd49: rd_data = DESIGN_VER_VAL;
            default: rd_data = 32'hDEAD_BEEF;  // unmapped -> debug marker
        endcase
    end

    always @(posedge aclk) begin
        if (!aresetn) begin
            s_axi_arready <= 1'b1;
            s_axi_rvalid  <= 1'b0;
            s_axi_rdata   <= 32'd0;
            s_axi_rresp   <= 2'b00;
        end else begin
            if (s_axi_arready && s_axi_arvalid) begin
                s_axi_arready <= 1'b0;
                s_axi_rdata   <= rd_data;
                s_axi_rvalid  <= 1'b1;
                s_axi_rresp   <= 2'b00;
            end
            if (s_axi_rvalid && s_axi_rready) begin
                s_axi_rvalid  <= 1'b0;
                s_axi_arready <= 1'b1;
            end
        end
    end

endmodule
