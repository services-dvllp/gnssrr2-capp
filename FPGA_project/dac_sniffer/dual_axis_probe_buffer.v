module dual_axis_probe_buffer #(
    parameter DEPTH = 6144,
    parameter DATA_WIDTH = 128,
    parameter ADDR_WIDTH = 13 // 2^13 = 8192 rows (comfortably covers 6144)
)(
    // System Clock & Reset
    input wire                     axis_aclk,
    input wire                     axis_aresetn,

    //---------------------------------------------------------
    // CHANNEL 0: FIFO 0 -> probe -> DAC 0
    //---------------------------------------------------------
    // Slave Interface from FIFO 0
    input wire [DATA_WIDTH-1:0]    s00_axis_tdata,
    input wire [15:0]              s00_axis_tkeep,  
    input wire                     s00_axis_tlast,  
    input wire                     s00_axis_tvalid,
    output wire                    s00_axis_tready,
    
    // Master Interface to DAC 0
    output wire [DATA_WIDTH-1:0]   m00_axis_tdata,
    output wire [15:0]             m00_axis_tkeep,  
    output wire                    m00_axis_tlast,  
    output wire                    m00_axis_tvalid,
    input wire                     m00_axis_tready,

    //---------------------------------------------------------
    // CHANNEL 1: FIFO 1 -> probe -> DAC 1
    //---------------------------------------------------------
    // Slave Interface from FIFO 1
    input wire [DATA_WIDTH-1:0]    s01_axis_tdata,
    input wire [15:0]              s01_axis_tkeep,  
    input wire                     s01_axis_tlast,  
    input wire                     s01_axis_tvalid,
    output wire                    s01_axis_tready,
    
    // Master Interface to DAC 1
    output wire [DATA_WIDTH-1:0]   m01_axis_tdata,
    output wire [15:0]             m01_axis_tkeep,  
    output wire                    m01_axis_tlast,  
    output wire                    m01_axis_tvalid,
    input wire                     m01_axis_tready,

    //---------------------------------------------------------
    // BRAM Read Interface (Connects to AXI BRAM Controller)
    //---------------------------------------------------------
    input wire                     pclk,         // Connect to Controller BRAM_Clk_A
    input wire                     presetn,      // Connect to Controller BRAM_Rst_A
    input wire [16:0]              bram_addr,    // Connect to Controller BRAM_Addr_A
    input wire                     bram_en,      // Connect to Controller BRAM_En_A
    input wire [3:0]               bram_we,      // Connect to Controller BRAM_WEN_A
    output reg [31:0]              bram_rddata   // Connect to Controller BRAM_Din_A
);

    //---------------------------------------------------------
    // 1. Direct Pipeline Pass-Through (Zero Latency)
    //---------------------------------------------------------
    assign m00_axis_tdata  = s00_axis_tdata;
    assign m00_axis_tkeep  = s00_axis_tkeep; 
    assign m00_axis_tlast  = s00_axis_tlast; 
    assign m00_axis_tvalid = s00_axis_tvalid;
    assign s00_axis_tready = m00_axis_tready;

    assign m01_axis_tdata  = s01_axis_tdata;
    assign m01_axis_tkeep  = s01_axis_tkeep; 
    assign m01_axis_tlast  = s01_axis_tlast; 
    assign m01_axis_tvalid = s01_axis_tvalid;
    assign s01_axis_tready = m01_axis_tready;

    // Handshake qualifiers for recording data to SRAM
    wire write_en0 = s00_axis_tvalid && m00_axis_tready;
    wire write_en1 = s01_axis_tvalid && m01_axis_tready;

    //---------------------------------------------------------
    // 2. Circular Address Generators
    //---------------------------------------------------------
    reg [ADDR_WIDTH-1:0] waddr0, waddr1;

    always @(posedge axis_aclk) begin
        if (!axis_aresetn) begin
            waddr0 <= {ADDR_WIDTH{1'b0}};
        end else if (write_en0) begin
            waddr0 <= (waddr0 == (DEPTH - 1)) ? {ADDR_WIDTH{1'b0}} : waddr0 + 1'b1;
        end
    end

    always @(posedge axis_aclk) begin
        if (!axis_aresetn) begin
            waddr1 <= {ADDR_WIDTH{1'b0}};
        end else if (write_en1) begin
            waddr1 <= (waddr1 == (DEPTH - 1)) ? {ADDR_WIDTH{1'b0}} : waddr1 + 1'b1;
        end
    end

    //---------------------------------------------------------
    // 3. Dual Inferred SRAM Matrix Structure
    //---------------------------------------------------------
    reg [DATA_WIDTH-1:0] ram_block0 [DEPTH-1:0];
    reg [DATA_WIDTH-1:0] ram_block1 [DEPTH-1:0];

    always @(posedge axis_aclk) begin
        if (write_en0) ram_block0[waddr0] <= s00_axis_tdata;
    end

    always @(posedge axis_aclk) begin
        if (write_en1) ram_block1[waddr1] <= s01_axis_tdata;
    end

    //---------------------------------------------------------
    // 4. Decode BRAM Controller Read Addresses
    //---------------------------------------------------------
    // bram_addr[3:2] selects one of four 32-bit words inside the 128-bit memory line
    // bram_addr acts as our chip select (0 = RAM 0, 1 = RAM 1)
    wire [ADDR_WIDTH-1:0] raddr       = bram_addr[ADDR_WIDTH+3:4]; 
    wire [1:0]            word_select = bram_addr[3:2];
    wire                  ram_select  = bram_addr[16]; 
    
    // Read trigger: Block is active and write enable strobes are empty
    wire                  bram_read   = bram_en && (bram_we == 4'b0000);

    always @(posedge pclk) begin
        if (!presetn) begin
            bram_rddata <= 32'h0;
        end else if (bram_read) begin
            if (ram_select == 1'b0) begin
                case (word_select)
                    2'b00:   bram_rddata <= ram_block0[raddr][31:0];
                    2'b01:   bram_rddata <= ram_block0[raddr][63:32];
                    2'b10:   bram_rddata <= ram_block0[raddr][95:64];
                    2'b11:   bram_rddata <= ram_block0[raddr][127:96];
                    default: bram_rddata <= 32'hDEAD_BEEF;
                endcase
            end else begin
                case (word_select)
                    2'b00:   bram_rddata <= ram_block1[raddr][31:0];
                    2'b01:   bram_rddata <= ram_block1[raddr][63:32];
                    2'b10:   bram_rddata <= ram_block1[raddr][95:64];
                    2'b11:   bram_rddata <= ram_block1[raddr][127:96];
                    default: bram_rddata <= 32'hDEAD_BEEF;
                endcase
            end
        end
    end

endmodule