module axis_4channel_interfaces (
    input wire clk,
    input wire resetn,
    input wire [3:0] sel, // 1 bit of control per channel (0=RF, 1=Counter)
    
    //---------------------------------------------------------
    // 4 Distinct SLAVE AXI4-Stream Ports (Inputs from RF Converter)
    //---------------------------------------------------------
    // Channel 0 Input
    input wire [127:0] s00_axis_tdata,
    input wire         s00_axis_tvalid,
    output wire        s00_axis_tready,
    
    // Channel 1 Input
    input wire [127:0] s01_axis_tdata,
    input wire         s01_axis_tvalid,
    output wire        s01_axis_tready,
    
    // Channel 2 Input
    input wire [127:0] s02_axis_tdata,
    input wire         s02_axis_tvalid,
    output wire        s02_axis_tready,
    
    // Channel 3 Input
    input wire [127:0] s03_axis_tdata,
    input wire         s03_axis_tvalid,
    output wire        s03_axis_tready,

    //---------------------------------------------------------
    // 4 Distinct MASTER AXI4-Stream Ports (Outputs to Downstream)
    //---------------------------------------------------------
    // Channel 0 Output
    output reg [127:0] m00_axis_tdata,
    output reg         m00_axis_tvalid,
    input wire         m00_axis_tready,
    
    // Channel 1 Output
    output reg [127:0] m01_axis_tdata,
    output reg         m01_axis_tvalid,
    input wire         m01_axis_tready,
    
    // Channel 2 Output
    output reg [127:0] m02_axis_tdata,
    output reg         m02_axis_tvalid,
    input wire         m02_axis_tready,
    
    // Channel 3 Output
    output reg [127:0] m03_axis_tdata,
    output reg         m03_axis_tvalid,
    input wire         m03_axis_tready
);

    //=========================================================
    // Internal Independent Counters
    //=========================================================
    reg [15:0] counter_ch0, counter_ch1, counter_ch2, counter_ch3;

    // Channel 0 Counter
    always @(posedge clk) begin
        if (!resetn)                  counter_ch0 <= 16'd0;
        else if (sel[0] && m00_axis_tready) counter_ch0 <= counter_ch0 + 16'd8;
    end
    // Channel 1 Counter
    always @(posedge clk) begin
        if (!resetn)                  counter_ch1 <= 16'd256;
        else if (sel[1] && m01_axis_tready) counter_ch1 <= counter_ch1 + 16'd8;
    end
    // Channel 2 Counter
    always @(posedge clk) begin
        if (!resetn)                  counter_ch2 <= 16'd512;
        else if (sel[2] && m02_axis_tready) counter_ch2 <= counter_ch2 + 16'd8;
    end
    // Channel 3 Counter
    always @(posedge clk) begin
        if (!resetn)                  counter_ch3 <= 16'd1024;
        else if (sel[3] && m03_axis_tready) counter_ch3 <= counter_ch3 + 16'd8;
    end

    //=========================================================
    // Channel Multiplexing Logic
    //=========================================================
    
    // --- CHANNEL 0 ---
    assign s00_axis_tready = (sel[0] == 1'b0) ? m00_axis_tready : 1'b0;
    always @(*) begin
        if (sel[0] == 1'b0) begin
            m00_axis_tdata  = s00_axis_tdata;
            m00_axis_tvalid = s00_axis_tvalid;
        end else begin
            m00_axis_tdata  = {counter_ch0+16'd7, counter_ch0+16'd6, counter_ch0+16'd5, counter_ch0+16'd4, 
                               counter_ch0+16'd3, counter_ch0+16'd2, counter_ch0+16'd1, counter_ch0};
            m00_axis_tvalid = 1'b1;
        end
    end

    // --- CHANNEL 1 ---
    assign s01_axis_tready = (sel[1] == 1'b0) ? m01_axis_tready : 1'b0;
    always @(*) begin
        if (sel[1] == 1'b0) begin
            m01_axis_tdata  = s01_axis_tdata;
            m01_axis_tvalid = s01_axis_tvalid;
        end else begin
            m01_axis_tdata  = {counter_ch1+16'd7, counter_ch1+16'd6, counter_ch1+16'd5, counter_ch1+16'd4, 
                               counter_ch1+16'd3, counter_ch1+16'd2, counter_ch1+16'd1, counter_ch1};
            m01_axis_tvalid = 1'b1;
        end
    end

    // --- CHANNEL 2 ---
    assign s02_axis_tready = (sel[2] == 1'b0) ? m02_axis_tready : 1'b0;
    always @(*) begin
        if (sel[2] == 1'b0) begin
            m02_axis_tdata  = s02_axis_tdata;
            m02_axis_tvalid = s02_axis_tvalid;
        end else begin
            m02_axis_tdata  = {counter_ch2+16'd7, counter_ch2+16'd6, counter_ch2+16'd5, counter_ch2+16'd4, 
                               counter_ch2+16'd3, counter_ch2+16'd2, counter_ch2+16'd1, counter_ch2};
            m02_axis_tvalid = 1'b1;
        end
    end

    // --- CHANNEL 3 ---
    assign s03_axis_tready = (sel[3] == 1'b0) ? m03_axis_tready : 1'b0;
    always @(*) begin
        if (sel[3] == 1'b0) begin
            m03_axis_tdata  = s03_axis_tdata;
            m03_axis_tvalid = s03_axis_tvalid;
        end else begin
            m03_axis_tdata  = {counter_ch3+16'd7, counter_ch3+16'd6, counter_ch3+16'd5, counter_ch3+16'd4, 
                               counter_ch3+16'd3, counter_ch3+16'd2, counter_ch3+16'd1, counter_ch3};
            m03_axis_tvalid = 1'b1;
        end
    end

endmodule