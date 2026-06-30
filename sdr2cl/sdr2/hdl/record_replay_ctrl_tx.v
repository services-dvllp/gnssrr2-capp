`timescale 1ns / 1ps
// TX AXI-Lite control block -- Verilog-2001 version of record_replay_ctrl_tx.sv
// Base address: 0x80070000 (M05 of ps8_0_axi_periph)

module record_replay_ctrl_tx #(
    parameter [31:0] BUILD_ID_VAL   = 32'h0000_0001,
    parameter [31:0] DESIGN_VER_VAL = 32'h0001_0000
)(
    (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK",
       X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF S_AXI:M_AXIS_RELOAD, ASSOCIATED_RESET aresetn, FREQ_HZ 30720000" *)
    input  wire        aclk,
    (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST",
       X_INTERFACE_PARAMETER = "POLARITY ACTIVE_LOW" *)
    input  wire        aresetn,

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

    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RELOAD TDATA"  *) output wire [23:0] m_axis_reload_tdata,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RELOAD TVALID" *) output wire        m_axis_reload_tvalid,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RELOAD TLAST"  *) output wire        m_axis_reload_tlast,
    (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RELOAD TREADY" *) input  wire        m_axis_reload_tready,

    output wire [1:0]   BIT_MODE,
    output wire         BAND_DUAL,
    output wire [4:0]   INTERP_M,
    output wire [4:0]   INTERP_PHASE,
    output wire [4:0]   SCALE_SHIFT,
    output wire [13:0]  LIMIT,
    output wire         cnt_clr,
    output wire         soft_reset,

    input  wire [31:0]  in_beat_count,
    input  wire [31:0]  out_beat_count,
    input  wire [31:0]  clip_count
);

    reg [31:0] r_ctrl;
    reg [31:0] r_band_mode;
    reg [5:0]  r_fir_coeff_addr;
    reg [14:0] r_fir_coeff_ctrl;
    reg [4:0]  r_interp_m;
    reg [4:0]  r_interp_phase;
    reg [1:0]  r_bit_mode;
    reg [4:0]  r_scale_shift;
    reg [13:0] r_limit;
    reg [19:0] shadow_ram [0:31];

    reg        fir_reload_start;
    wire       fir_reload_done;
    wire       fir_reload_busy;
    reg [31:0] fir_coeff_crc;
    reg [5:0]  srst_ctr;
    reg        cnt_clr_r;

    assign soft_reset   = (srst_ctr != 6'd0);
    assign cnt_clr      = cnt_clr_r;
    assign BIT_MODE     = r_bit_mode;
    assign BAND_DUAL    = r_band_mode[1];
    assign INTERP_M     = r_interp_m;
    assign INTERP_PHASE = r_interp_phase;
    assign SCALE_SHIFT  = r_scale_shift;
    assign LIMIT        = r_limit;

    function automatic [31:0] crc32_step;
        input [31:0] crc;
        input [15:0] data;
        reg [31:0] c;
        integer i_crc;
        begin
            c = crc;
            for (i_crc = 0; i_crc < 16; i_crc = i_crc + 1) begin
                if (c[0] ^ data[i_crc]) c = (c >> 1) ^ 32'hEDB88320;
                else                    c = c >> 1;
            end
            crc32_step = c;
        end
    endfunction

    wire [4:0]  coeff_raddr;
    wire [19:0] coeff_rdata;
    assign coeff_rdata = shadow_ram[coeff_raddr];

    fir_reload_fsm #(.NUM_TAPS(31)) u_fir_reload_fsm_tx (
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

    reg [31:0] crc_accum;
    always @(posedge aclk) begin
        if (!aresetn) begin
            crc_accum     <= 32'hFFFF_FFFF;
            fir_coeff_crc <= 32'd0;
        end else begin
            if (fir_reload_start)
                crc_accum <= 32'hFFFF_FFFF;
            else if (m_axis_reload_tvalid && m_axis_reload_tready)
                crc_accum <= crc32_step(crc_accum, m_axis_reload_tdata[15:0]);
            if (fir_reload_done)
                fir_coeff_crc <= crc_accum ^ 32'hFFFF_FFFF;
        end
    end

    reg [11:0] aw_addr;
    reg        aw_done, w_done;
    integer    i_ram;

    always @(posedge aclk) begin
        if (!aresetn) begin
            s_axi_awready   <= 1'b1;
            s_axi_wready    <= 1'b1;
            s_axi_bvalid    <= 1'b0;
            s_axi_bresp     <= 2'b00;
            aw_done         <= 1'b0;
            w_done          <= 1'b0;
            aw_addr         <= 12'd0;
            r_ctrl          <= 32'd0;
            r_band_mode     <= 32'd2;
            r_fir_coeff_addr <= 6'd0;
            r_fir_coeff_ctrl <= 15'h0008;
            r_interp_m      <= 5'd1;
            r_interp_phase  <= 5'd0;
            r_bit_mode      <= 2'b00;
            r_scale_shift   <= 5'd0;
            r_limit         <= 14'd8192;
            for (i_ram = 0; i_ram < 32; i_ram = i_ram + 1)
                shadow_ram[i_ram] <= 20'd0;
            cnt_clr_r        <= 1'b0;
            srst_ctr         <= 6'd0;
            fir_reload_start <= 1'b0;
        end else begin
            cnt_clr_r        <= 1'b0;
            fir_reload_start <= 1'b0;
            if (soft_reset) srst_ctr <= srst_ctr - 6'd1;

            if (s_axi_awready && s_axi_awvalid) begin
                aw_addr       <= s_axi_awaddr[11:0];
                aw_done       <= 1'b1;
                s_axi_awready <= 1'b0;
            end
            if (s_axi_wready && s_axi_wvalid) begin
                w_done       <= 1'b1;
                s_axi_wready <= 1'b0;
            end

            if (aw_done && w_done) begin
                aw_done       <= 1'b0;
                w_done        <= 1'b0;
                s_axi_awready <= 1'b1;
                s_axi_wready  <= 1'b1;
                s_axi_bvalid  <= 1'b1;

                case (aw_addr[11:2])
                    10'd0: begin
                        r_ctrl <= s_axi_wdata;
                        if (s_axi_wdata[2]) srst_ctr  <= 6'd32;
                        if (s_axi_wdata[4]) cnt_clr_r <= 1'b1;
                    end
                    10'd2:  r_band_mode      <= s_axi_wdata;
                    10'd12: r_fir_coeff_addr <= s_axi_wdata[5:0];
                    10'd13: begin
                        shadow_ram[r_fir_coeff_addr] <= s_axi_wdata[19:0];
                        if (r_fir_coeff_ctrl[3])
                            r_fir_coeff_addr <= r_fir_coeff_addr + 6'd1;
                    end
                    10'd14: begin
                        r_fir_coeff_ctrl <= s_axi_wdata[14:0];
                        if (s_axi_wdata[0]) fir_reload_start <= 1'b1;
                    end
                    10'd20: r_interp_m     <= s_axi_wdata[4:0];
                    10'd21: r_interp_phase <= s_axi_wdata[4:0];
                    10'd28: r_bit_mode     <= s_axi_wdata[1:0];
                    10'd29: r_scale_shift  <= s_axi_wdata[4:0];
                    10'd30: r_limit        <= s_axi_wdata[13:0];
                    default: ;
                endcase
            end

            if (s_axi_bvalid && s_axi_bready)
                s_axi_bvalid <= 1'b0;
            if (fir_reload_done)
                r_fir_coeff_ctrl[1] <= 1'b1;
        end
    end

    reg [31:0] rd_data;
    always @(*) begin
        rd_data = 32'd0;
        case (s_axi_araddr[11:2])
            10'd0:  rd_data = r_ctrl;
            10'd1:  rd_data = {26'd0, fir_reload_busy, 1'b0, soft_reset, 1'b0, 1'b0, r_ctrl[0]};
            10'd2:  rd_data = r_band_mode;
            10'd12: rd_data = {26'd0, r_fir_coeff_addr};
            10'd13: rd_data = {12'd0, shadow_ram[r_fir_coeff_addr]};
            10'd14: rd_data = {17'd0, r_fir_coeff_ctrl};
            10'd15: rd_data = fir_coeff_crc;
            10'd20: rd_data = {27'd0, r_interp_m};
            10'd21: rd_data = {27'd0, r_interp_phase};
            10'd22: rd_data = in_beat_count;
            10'd23: rd_data = out_beat_count;
            10'd28: rd_data = {30'd0, r_bit_mode};
            10'd29: rd_data = {27'd0, r_scale_shift};
            10'd30: rd_data = {18'd0, r_limit};
            10'd31: rd_data = clip_count;
            10'd48: rd_data = BUILD_ID_VAL;
            10'd49: rd_data = DESIGN_VER_VAL;
            default: rd_data = 32'hDEAD_BEEF;
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
