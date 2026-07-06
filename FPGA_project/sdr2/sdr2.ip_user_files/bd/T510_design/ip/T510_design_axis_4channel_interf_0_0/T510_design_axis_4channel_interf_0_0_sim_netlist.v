// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Jun 11 22:34:56 2026
// Host        : DVLLP006 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top T510_design_axis_4channel_interf_0_0 -prefix
//               T510_design_axis_4channel_interf_0_0_ T510_design_axis_4channel_interf_0_0_sim_netlist.v
// Design      : T510_design_axis_4channel_interf_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu47dr-ffve1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "T510_design_axis_4channel_interf_0_0,axis_4channel_interfaces,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axis_4channel_interfaces,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module T510_design_axis_4channel_interf_0_0
   (clk,
    resetn,
    sel,
    s00_axis_tdata,
    s00_axis_tvalid,
    s00_axis_tready,
    s01_axis_tdata,
    s01_axis_tvalid,
    s01_axis_tready,
    s02_axis_tdata,
    s02_axis_tvalid,
    s02_axis_tready,
    s03_axis_tdata,
    s03_axis_tvalid,
    s03_axis_tready,
    m00_axis_tdata,
    m00_axis_tvalid,
    m00_axis_tready,
    m01_axis_tdata,
    m01_axis_tvalid,
    m01_axis_tready,
    m02_axis_tdata,
    m02_axis_tvalid,
    m02_axis_tready,
    m03_axis_tdata,
    m03_axis_tvalid,
    m03_axis_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m00_axis:m01_axis:m02_axis:m03_axis:s00_axis:s01_axis:s02_axis:s03_axis, ASSOCIATED_RESET resetn, FREQ_HZ 15360000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input resetn;
  input [3:0]sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [127:0]s00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TVALID" *) input s00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TREADY" *) output s00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s01_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [127:0]s01_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TVALID" *) input s01_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TREADY" *) output s01_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s02_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [127:0]s02_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02_axis TVALID" *) input s02_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02_axis TREADY" *) output s02_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s03_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [127:0]s03_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03_axis TVALID" *) input s03_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03_axis TREADY" *) output s03_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [127:0]m00_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TVALID" *) output m00_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TREADY" *) input m00_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m01_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [127:0]m01_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TVALID" *) output m01_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TREADY" *) input m01_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02_axis TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m02_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [127:0]m02_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02_axis TVALID" *) output m02_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02_axis TREADY" *) input m02_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03_axis TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m03_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [127:0]m03_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03_axis TVALID" *) output m03_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03_axis TREADY" *) input m03_axis_tready;

  wire clk;
  wire [127:0]m00_axis_tdata;
  wire m00_axis_tready;
  wire m00_axis_tvalid;
  wire [127:0]m01_axis_tdata;
  wire m01_axis_tready;
  wire m01_axis_tvalid;
  wire [127:0]m02_axis_tdata;
  wire m02_axis_tready;
  wire m02_axis_tvalid;
  wire [127:0]m03_axis_tdata;
  wire m03_axis_tready;
  wire m03_axis_tvalid;
  wire resetn;
  wire [127:0]s00_axis_tdata;
  wire s00_axis_tready;
  wire s00_axis_tvalid;
  wire [127:0]s01_axis_tdata;
  wire s01_axis_tready;
  wire s01_axis_tvalid;
  wire [127:0]s02_axis_tdata;
  wire s02_axis_tready;
  wire s02_axis_tvalid;
  wire [127:0]s03_axis_tdata;
  wire s03_axis_tready;
  wire s03_axis_tvalid;
  wire [3:0]sel;

  T510_design_axis_4channel_interf_0_0_axis_4channel_interfaces inst
       (.clk(clk),
        .m00_axis_tdata({m00_axis_tdata[127:97],m00_axis_tdata[95:82],m00_axis_tdata[80:66],m00_axis_tdata[63:51],m00_axis_tdata[49:35],m00_axis_tdata[33],m00_axis_tdata[31:19],m00_axis_tdata[16:3]}),
        .m00_axis_tready(m00_axis_tready),
        .m01_axis_tdata({m01_axis_tdata[127:97],m01_axis_tdata[95:82],m01_axis_tdata[80:66],m01_axis_tdata[63:51],m01_axis_tdata[49:35],m01_axis_tdata[33],m01_axis_tdata[31:19],m01_axis_tdata[16:3]}),
        .m01_axis_tready(m01_axis_tready),
        .m02_axis_tdata({m02_axis_tdata[127:97],m02_axis_tdata[95:82],m02_axis_tdata[80:66],m02_axis_tdata[63:51],m02_axis_tdata[49:35],m02_axis_tdata[33],m02_axis_tdata[31:19],m02_axis_tdata[16:3]}),
        .m02_axis_tready(m02_axis_tready),
        .m03_axis_tdata({m03_axis_tdata[127:97],m03_axis_tdata[95:82],m03_axis_tdata[80:66],m03_axis_tdata[63:51],m03_axis_tdata[49:35],m03_axis_tdata[33],m03_axis_tdata[31:19],m03_axis_tdata[16:3]}),
        .m03_axis_tready(m03_axis_tready),
        .resetn(resetn),
        .s00_axis_tdata({s00_axis_tdata[127:97],s00_axis_tdata[95:82],s00_axis_tdata[80:66],s00_axis_tdata[63:51],s00_axis_tdata[49:35],s00_axis_tdata[33],s00_axis_tdata[31:19],s00_axis_tdata[16:3]}),
        .s01_axis_tdata({s01_axis_tdata[127:97],s01_axis_tdata[95:82],s01_axis_tdata[80:66],s01_axis_tdata[63:51],s01_axis_tdata[49:35],s01_axis_tdata[33],s01_axis_tdata[31:19],s01_axis_tdata[16:3]}),
        .s02_axis_tdata({s02_axis_tdata[127:97],s02_axis_tdata[95:82],s02_axis_tdata[80:66],s02_axis_tdata[63:51],s02_axis_tdata[49:35],s02_axis_tdata[33],s02_axis_tdata[31:19],s02_axis_tdata[16:3]}),
        .s03_axis_tdata({s03_axis_tdata[127:97],s03_axis_tdata[95:82],s03_axis_tdata[80:66],s03_axis_tdata[63:51],s03_axis_tdata[49:35],s03_axis_tdata[33],s03_axis_tdata[31:19],s03_axis_tdata[16:3]}),
        .sel(sel));
  LUT2 #(
    .INIT(4'h2)) 
    \m00_axis_tdata[0]_INST_0 
       (.I0(s00_axis_tdata[0]),
        .I1(sel[0]),
        .O(m00_axis_tdata[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \m00_axis_tdata[17]_INST_0 
       (.I0(s00_axis_tdata[17]),
        .I1(sel[0]),
        .O(m00_axis_tdata[17]));
  LUT2 #(
    .INIT(4'h2)) 
    \m00_axis_tdata[18]_INST_0 
       (.I0(s00_axis_tdata[18]),
        .I1(sel[0]),
        .O(m00_axis_tdata[18]));
  LUT2 #(
    .INIT(4'h2)) 
    \m00_axis_tdata[1]_INST_0 
       (.I0(s00_axis_tdata[1]),
        .I1(sel[0]),
        .O(m00_axis_tdata[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \m00_axis_tdata[2]_INST_0 
       (.I0(s00_axis_tdata[2]),
        .I1(sel[0]),
        .O(m00_axis_tdata[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \m00_axis_tdata[32]_INST_0 
       (.I0(s00_axis_tdata[32]),
        .I1(sel[0]),
        .O(m00_axis_tdata[32]));
  LUT2 #(
    .INIT(4'h2)) 
    \m00_axis_tdata[34]_INST_0 
       (.I0(s00_axis_tdata[34]),
        .I1(sel[0]),
        .O(m00_axis_tdata[34]));
  LUT2 #(
    .INIT(4'h2)) 
    \m00_axis_tdata[50]_INST_0 
       (.I0(s00_axis_tdata[50]),
        .I1(sel[0]),
        .O(m00_axis_tdata[50]));
  LUT2 #(
    .INIT(4'h2)) 
    \m00_axis_tdata[64]_INST_0 
       (.I0(s00_axis_tdata[64]),
        .I1(sel[0]),
        .O(m00_axis_tdata[64]));
  LUT2 #(
    .INIT(4'h2)) 
    \m00_axis_tdata[65]_INST_0 
       (.I0(s00_axis_tdata[65]),
        .I1(sel[0]),
        .O(m00_axis_tdata[65]));
  LUT2 #(
    .INIT(4'h2)) 
    \m00_axis_tdata[81]_INST_0 
       (.I0(s00_axis_tdata[81]),
        .I1(sel[0]),
        .O(m00_axis_tdata[81]));
  LUT2 #(
    .INIT(4'h2)) 
    \m00_axis_tdata[96]_INST_0 
       (.I0(s00_axis_tdata[96]),
        .I1(sel[0]),
        .O(m00_axis_tdata[96]));
  LUT2 #(
    .INIT(4'hE)) 
    m00_axis_tvalid_INST_0
       (.I0(sel[0]),
        .I1(s00_axis_tvalid),
        .O(m00_axis_tvalid));
  LUT2 #(
    .INIT(4'h2)) 
    \m01_axis_tdata[0]_INST_0 
       (.I0(s01_axis_tdata[0]),
        .I1(sel[1]),
        .O(m01_axis_tdata[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \m01_axis_tdata[17]_INST_0 
       (.I0(s01_axis_tdata[17]),
        .I1(sel[1]),
        .O(m01_axis_tdata[17]));
  LUT2 #(
    .INIT(4'h2)) 
    \m01_axis_tdata[18]_INST_0 
       (.I0(s01_axis_tdata[18]),
        .I1(sel[1]),
        .O(m01_axis_tdata[18]));
  LUT2 #(
    .INIT(4'h2)) 
    \m01_axis_tdata[1]_INST_0 
       (.I0(s01_axis_tdata[1]),
        .I1(sel[1]),
        .O(m01_axis_tdata[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \m01_axis_tdata[2]_INST_0 
       (.I0(s01_axis_tdata[2]),
        .I1(sel[1]),
        .O(m01_axis_tdata[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \m01_axis_tdata[32]_INST_0 
       (.I0(s01_axis_tdata[32]),
        .I1(sel[1]),
        .O(m01_axis_tdata[32]));
  LUT2 #(
    .INIT(4'h2)) 
    \m01_axis_tdata[34]_INST_0 
       (.I0(s01_axis_tdata[34]),
        .I1(sel[1]),
        .O(m01_axis_tdata[34]));
  LUT2 #(
    .INIT(4'h2)) 
    \m01_axis_tdata[50]_INST_0 
       (.I0(s01_axis_tdata[50]),
        .I1(sel[1]),
        .O(m01_axis_tdata[50]));
  LUT2 #(
    .INIT(4'h2)) 
    \m01_axis_tdata[64]_INST_0 
       (.I0(s01_axis_tdata[64]),
        .I1(sel[1]),
        .O(m01_axis_tdata[64]));
  LUT2 #(
    .INIT(4'h2)) 
    \m01_axis_tdata[65]_INST_0 
       (.I0(s01_axis_tdata[65]),
        .I1(sel[1]),
        .O(m01_axis_tdata[65]));
  LUT2 #(
    .INIT(4'h2)) 
    \m01_axis_tdata[81]_INST_0 
       (.I0(s01_axis_tdata[81]),
        .I1(sel[1]),
        .O(m01_axis_tdata[81]));
  LUT2 #(
    .INIT(4'h2)) 
    \m01_axis_tdata[96]_INST_0 
       (.I0(s01_axis_tdata[96]),
        .I1(sel[1]),
        .O(m01_axis_tdata[96]));
  LUT2 #(
    .INIT(4'hE)) 
    m01_axis_tvalid_INST_0
       (.I0(sel[1]),
        .I1(s01_axis_tvalid),
        .O(m01_axis_tvalid));
  LUT2 #(
    .INIT(4'h2)) 
    \m02_axis_tdata[0]_INST_0 
       (.I0(s02_axis_tdata[0]),
        .I1(sel[2]),
        .O(m02_axis_tdata[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \m02_axis_tdata[17]_INST_0 
       (.I0(s02_axis_tdata[17]),
        .I1(sel[2]),
        .O(m02_axis_tdata[17]));
  LUT2 #(
    .INIT(4'h2)) 
    \m02_axis_tdata[18]_INST_0 
       (.I0(s02_axis_tdata[18]),
        .I1(sel[2]),
        .O(m02_axis_tdata[18]));
  LUT2 #(
    .INIT(4'h2)) 
    \m02_axis_tdata[1]_INST_0 
       (.I0(s02_axis_tdata[1]),
        .I1(sel[2]),
        .O(m02_axis_tdata[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \m02_axis_tdata[2]_INST_0 
       (.I0(s02_axis_tdata[2]),
        .I1(sel[2]),
        .O(m02_axis_tdata[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \m02_axis_tdata[32]_INST_0 
       (.I0(s02_axis_tdata[32]),
        .I1(sel[2]),
        .O(m02_axis_tdata[32]));
  LUT2 #(
    .INIT(4'h2)) 
    \m02_axis_tdata[34]_INST_0 
       (.I0(s02_axis_tdata[34]),
        .I1(sel[2]),
        .O(m02_axis_tdata[34]));
  LUT2 #(
    .INIT(4'h2)) 
    \m02_axis_tdata[50]_INST_0 
       (.I0(s02_axis_tdata[50]),
        .I1(sel[2]),
        .O(m02_axis_tdata[50]));
  LUT2 #(
    .INIT(4'h2)) 
    \m02_axis_tdata[64]_INST_0 
       (.I0(s02_axis_tdata[64]),
        .I1(sel[2]),
        .O(m02_axis_tdata[64]));
  LUT2 #(
    .INIT(4'h2)) 
    \m02_axis_tdata[65]_INST_0 
       (.I0(s02_axis_tdata[65]),
        .I1(sel[2]),
        .O(m02_axis_tdata[65]));
  LUT2 #(
    .INIT(4'h2)) 
    \m02_axis_tdata[81]_INST_0 
       (.I0(s02_axis_tdata[81]),
        .I1(sel[2]),
        .O(m02_axis_tdata[81]));
  LUT2 #(
    .INIT(4'h2)) 
    \m02_axis_tdata[96]_INST_0 
       (.I0(s02_axis_tdata[96]),
        .I1(sel[2]),
        .O(m02_axis_tdata[96]));
  LUT2 #(
    .INIT(4'hE)) 
    m02_axis_tvalid_INST_0
       (.I0(sel[2]),
        .I1(s02_axis_tvalid),
        .O(m02_axis_tvalid));
  LUT2 #(
    .INIT(4'h2)) 
    \m03_axis_tdata[0]_INST_0 
       (.I0(s03_axis_tdata[0]),
        .I1(sel[3]),
        .O(m03_axis_tdata[0]));
  LUT2 #(
    .INIT(4'h2)) 
    \m03_axis_tdata[17]_INST_0 
       (.I0(s03_axis_tdata[17]),
        .I1(sel[3]),
        .O(m03_axis_tdata[17]));
  LUT2 #(
    .INIT(4'h2)) 
    \m03_axis_tdata[18]_INST_0 
       (.I0(s03_axis_tdata[18]),
        .I1(sel[3]),
        .O(m03_axis_tdata[18]));
  LUT2 #(
    .INIT(4'h2)) 
    \m03_axis_tdata[1]_INST_0 
       (.I0(s03_axis_tdata[1]),
        .I1(sel[3]),
        .O(m03_axis_tdata[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \m03_axis_tdata[2]_INST_0 
       (.I0(s03_axis_tdata[2]),
        .I1(sel[3]),
        .O(m03_axis_tdata[2]));
  LUT2 #(
    .INIT(4'h2)) 
    \m03_axis_tdata[32]_INST_0 
       (.I0(s03_axis_tdata[32]),
        .I1(sel[3]),
        .O(m03_axis_tdata[32]));
  LUT2 #(
    .INIT(4'h2)) 
    \m03_axis_tdata[34]_INST_0 
       (.I0(s03_axis_tdata[34]),
        .I1(sel[3]),
        .O(m03_axis_tdata[34]));
  LUT2 #(
    .INIT(4'h2)) 
    \m03_axis_tdata[50]_INST_0 
       (.I0(s03_axis_tdata[50]),
        .I1(sel[3]),
        .O(m03_axis_tdata[50]));
  LUT2 #(
    .INIT(4'h2)) 
    \m03_axis_tdata[64]_INST_0 
       (.I0(s03_axis_tdata[64]),
        .I1(sel[3]),
        .O(m03_axis_tdata[64]));
  LUT2 #(
    .INIT(4'h2)) 
    \m03_axis_tdata[65]_INST_0 
       (.I0(s03_axis_tdata[65]),
        .I1(sel[3]),
        .O(m03_axis_tdata[65]));
  LUT2 #(
    .INIT(4'h2)) 
    \m03_axis_tdata[81]_INST_0 
       (.I0(s03_axis_tdata[81]),
        .I1(sel[3]),
        .O(m03_axis_tdata[81]));
  LUT2 #(
    .INIT(4'h2)) 
    \m03_axis_tdata[96]_INST_0 
       (.I0(s03_axis_tdata[96]),
        .I1(sel[3]),
        .O(m03_axis_tdata[96]));
  LUT2 #(
    .INIT(4'hE)) 
    m03_axis_tvalid_INST_0
       (.I0(sel[3]),
        .I1(s03_axis_tvalid),
        .O(m03_axis_tvalid));
  LUT2 #(
    .INIT(4'h2)) 
    s00_axis_tready_INST_0
       (.I0(m00_axis_tready),
        .I1(sel[0]),
        .O(s00_axis_tready));
  LUT2 #(
    .INIT(4'h2)) 
    s01_axis_tready_INST_0
       (.I0(m01_axis_tready),
        .I1(sel[1]),
        .O(s01_axis_tready));
  LUT2 #(
    .INIT(4'h2)) 
    s02_axis_tready_INST_0
       (.I0(m02_axis_tready),
        .I1(sel[2]),
        .O(s02_axis_tready));
  LUT2 #(
    .INIT(4'h2)) 
    s03_axis_tready_INST_0
       (.I0(m03_axis_tready),
        .I1(sel[3]),
        .O(s03_axis_tready));
endmodule

module T510_design_axis_4channel_interf_0_0_axis_4channel_interfaces
   (m00_axis_tdata,
    m01_axis_tdata,
    m02_axis_tdata,
    m03_axis_tdata,
    sel,
    m00_axis_tready,
    m01_axis_tready,
    m02_axis_tready,
    m03_axis_tready,
    resetn,
    clk,
    s00_axis_tdata,
    s01_axis_tdata,
    s02_axis_tdata,
    s03_axis_tdata);
  output [115:0]m00_axis_tdata;
  output [115:0]m01_axis_tdata;
  output [115:0]m02_axis_tdata;
  output [115:0]m03_axis_tdata;
  input [3:0]sel;
  input m00_axis_tready;
  input m01_axis_tready;
  input m02_axis_tready;
  input m03_axis_tready;
  input resetn;
  input clk;
  input [115:0]s00_axis_tdata;
  input [115:0]s01_axis_tdata;
  input [115:0]s02_axis_tdata;
  input [115:0]s03_axis_tdata;

  wire clear;
  wire clk;
  wire counter_ch00;
  wire counter_ch00_carry__0_n_3;
  wire counter_ch00_carry__0_n_4;
  wire counter_ch00_carry__0_n_5;
  wire counter_ch00_carry__0_n_6;
  wire counter_ch00_carry__0_n_7;
  wire counter_ch00_carry_i_1_n_0;
  wire counter_ch00_carry_n_0;
  wire counter_ch00_carry_n_1;
  wire counter_ch00_carry_n_2;
  wire counter_ch00_carry_n_3;
  wire counter_ch00_carry_n_4;
  wire counter_ch00_carry_n_5;
  wire counter_ch00_carry_n_6;
  wire counter_ch00_carry_n_7;
  wire [15:3]counter_ch0_reg;
  wire counter_ch10;
  wire counter_ch10_carry__0_n_3;
  wire counter_ch10_carry__0_n_4;
  wire counter_ch10_carry__0_n_5;
  wire counter_ch10_carry__0_n_6;
  wire counter_ch10_carry__0_n_7;
  wire counter_ch10_carry_i_1_n_0;
  wire counter_ch10_carry_n_0;
  wire counter_ch10_carry_n_1;
  wire counter_ch10_carry_n_2;
  wire counter_ch10_carry_n_3;
  wire counter_ch10_carry_n_4;
  wire counter_ch10_carry_n_5;
  wire counter_ch10_carry_n_6;
  wire counter_ch10_carry_n_7;
  wire [15:3]counter_ch1_reg;
  wire counter_ch20;
  wire counter_ch20_carry__0_n_3;
  wire counter_ch20_carry__0_n_4;
  wire counter_ch20_carry__0_n_5;
  wire counter_ch20_carry__0_n_6;
  wire counter_ch20_carry__0_n_7;
  wire counter_ch20_carry_i_1_n_0;
  wire counter_ch20_carry_n_0;
  wire counter_ch20_carry_n_1;
  wire counter_ch20_carry_n_2;
  wire counter_ch20_carry_n_3;
  wire counter_ch20_carry_n_4;
  wire counter_ch20_carry_n_5;
  wire counter_ch20_carry_n_6;
  wire counter_ch20_carry_n_7;
  wire [15:3]counter_ch2_reg;
  wire counter_ch30;
  wire counter_ch30_carry__0_n_3;
  wire counter_ch30_carry__0_n_4;
  wire counter_ch30_carry__0_n_5;
  wire counter_ch30_carry__0_n_6;
  wire counter_ch30_carry__0_n_7;
  wire counter_ch30_carry_i_1_n_0;
  wire counter_ch30_carry_n_0;
  wire counter_ch30_carry_n_1;
  wire counter_ch30_carry_n_2;
  wire counter_ch30_carry_n_3;
  wire counter_ch30_carry_n_4;
  wire counter_ch30_carry_n_5;
  wire counter_ch30_carry_n_6;
  wire counter_ch30_carry_n_7;
  wire [15:3]counter_ch3_reg;
  wire [115:0]m00_axis_tdata;
  wire m00_axis_tready;
  wire [115:0]m01_axis_tdata;
  wire m01_axis_tready;
  wire [115:0]m02_axis_tdata;
  wire m02_axis_tready;
  wire [115:0]m03_axis_tdata;
  wire m03_axis_tready;
  wire [15:3]p_0_in;
  wire [15:3]p_0_in__0;
  wire [15:3]p_0_in__1;
  wire [15:3]p_0_in__2;
  wire resetn;
  wire [115:0]s00_axis_tdata;
  wire [115:0]s01_axis_tdata;
  wire [115:0]s02_axis_tdata;
  wire [115:0]s03_axis_tdata;
  wire [3:0]sel;
  wire [0:0]NLW_counter_ch00_carry_O_UNCONNECTED;
  wire [7:5]NLW_counter_ch00_carry__0_CO_UNCONNECTED;
  wire [7:6]NLW_counter_ch00_carry__0_O_UNCONNECTED;
  wire [0:0]NLW_counter_ch10_carry_O_UNCONNECTED;
  wire [7:5]NLW_counter_ch10_carry__0_CO_UNCONNECTED;
  wire [7:6]NLW_counter_ch10_carry__0_O_UNCONNECTED;
  wire [0:0]NLW_counter_ch20_carry_O_UNCONNECTED;
  wire [7:5]NLW_counter_ch20_carry__0_CO_UNCONNECTED;
  wire [7:6]NLW_counter_ch20_carry__0_O_UNCONNECTED;
  wire [0:0]NLW_counter_ch30_carry_O_UNCONNECTED;
  wire [7:5]NLW_counter_ch30_carry__0_CO_UNCONNECTED;
  wire [7:6]NLW_counter_ch30_carry__0_O_UNCONNECTED;

  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter_ch00_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({counter_ch00_carry_n_0,counter_ch00_carry_n_1,counter_ch00_carry_n_2,counter_ch00_carry_n_3,counter_ch00_carry_n_4,counter_ch00_carry_n_5,counter_ch00_carry_n_6,counter_ch00_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,counter_ch0_reg[3],1'b0}),
        .O({p_0_in[9:3],NLW_counter_ch00_carry_O_UNCONNECTED[0]}),
        .S({counter_ch0_reg[9:4],counter_ch00_carry_i_1_n_0,1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter_ch00_carry__0
       (.CI(counter_ch00_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_counter_ch00_carry__0_CO_UNCONNECTED[7:5],counter_ch00_carry__0_n_3,counter_ch00_carry__0_n_4,counter_ch00_carry__0_n_5,counter_ch00_carry__0_n_6,counter_ch00_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter_ch00_carry__0_O_UNCONNECTED[7:6],p_0_in[15:10]}),
        .S({1'b0,1'b0,counter_ch0_reg[15:10]}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_ch00_carry_i_1
       (.I0(counter_ch0_reg[3]),
        .O(counter_ch00_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter_ch0[15]_i_1 
       (.I0(resetn),
        .O(clear));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_ch0[15]_i_2 
       (.I0(sel[0]),
        .I1(m00_axis_tready),
        .O(counter_ch00));
  FDRE \counter_ch0_reg[10] 
       (.C(clk),
        .CE(counter_ch00),
        .D(p_0_in[10]),
        .Q(counter_ch0_reg[10]),
        .R(clear));
  FDRE \counter_ch0_reg[11] 
       (.C(clk),
        .CE(counter_ch00),
        .D(p_0_in[11]),
        .Q(counter_ch0_reg[11]),
        .R(clear));
  FDRE \counter_ch0_reg[12] 
       (.C(clk),
        .CE(counter_ch00),
        .D(p_0_in[12]),
        .Q(counter_ch0_reg[12]),
        .R(clear));
  FDRE \counter_ch0_reg[13] 
       (.C(clk),
        .CE(counter_ch00),
        .D(p_0_in[13]),
        .Q(counter_ch0_reg[13]),
        .R(clear));
  FDRE \counter_ch0_reg[14] 
       (.C(clk),
        .CE(counter_ch00),
        .D(p_0_in[14]),
        .Q(counter_ch0_reg[14]),
        .R(clear));
  FDRE \counter_ch0_reg[15] 
       (.C(clk),
        .CE(counter_ch00),
        .D(p_0_in[15]),
        .Q(counter_ch0_reg[15]),
        .R(clear));
  FDRE \counter_ch0_reg[3] 
       (.C(clk),
        .CE(counter_ch00),
        .D(p_0_in[3]),
        .Q(counter_ch0_reg[3]),
        .R(clear));
  FDRE \counter_ch0_reg[4] 
       (.C(clk),
        .CE(counter_ch00),
        .D(p_0_in[4]),
        .Q(counter_ch0_reg[4]),
        .R(clear));
  FDRE \counter_ch0_reg[5] 
       (.C(clk),
        .CE(counter_ch00),
        .D(p_0_in[5]),
        .Q(counter_ch0_reg[5]),
        .R(clear));
  FDRE \counter_ch0_reg[6] 
       (.C(clk),
        .CE(counter_ch00),
        .D(p_0_in[6]),
        .Q(counter_ch0_reg[6]),
        .R(clear));
  FDRE \counter_ch0_reg[7] 
       (.C(clk),
        .CE(counter_ch00),
        .D(p_0_in[7]),
        .Q(counter_ch0_reg[7]),
        .R(clear));
  FDRE \counter_ch0_reg[8] 
       (.C(clk),
        .CE(counter_ch00),
        .D(p_0_in[8]),
        .Q(counter_ch0_reg[8]),
        .R(clear));
  FDRE \counter_ch0_reg[9] 
       (.C(clk),
        .CE(counter_ch00),
        .D(p_0_in[9]),
        .Q(counter_ch0_reg[9]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter_ch10_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({counter_ch10_carry_n_0,counter_ch10_carry_n_1,counter_ch10_carry_n_2,counter_ch10_carry_n_3,counter_ch10_carry_n_4,counter_ch10_carry_n_5,counter_ch10_carry_n_6,counter_ch10_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,counter_ch1_reg[3],1'b0}),
        .O({p_0_in__0[9:3],NLW_counter_ch10_carry_O_UNCONNECTED[0]}),
        .S({counter_ch1_reg[9:4],counter_ch10_carry_i_1_n_0,1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter_ch10_carry__0
       (.CI(counter_ch10_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_counter_ch10_carry__0_CO_UNCONNECTED[7:5],counter_ch10_carry__0_n_3,counter_ch10_carry__0_n_4,counter_ch10_carry__0_n_5,counter_ch10_carry__0_n_6,counter_ch10_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter_ch10_carry__0_O_UNCONNECTED[7:6],p_0_in__0[15:10]}),
        .S({1'b0,1'b0,counter_ch1_reg[15:10]}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_ch10_carry_i_1
       (.I0(counter_ch1_reg[3]),
        .O(counter_ch10_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_ch1[15]_i_1 
       (.I0(sel[1]),
        .I1(m01_axis_tready),
        .O(counter_ch10));
  FDRE \counter_ch1_reg[10] 
       (.C(clk),
        .CE(counter_ch10),
        .D(p_0_in__0[10]),
        .Q(counter_ch1_reg[10]),
        .R(clear));
  FDRE \counter_ch1_reg[11] 
       (.C(clk),
        .CE(counter_ch10),
        .D(p_0_in__0[11]),
        .Q(counter_ch1_reg[11]),
        .R(clear));
  FDRE \counter_ch1_reg[12] 
       (.C(clk),
        .CE(counter_ch10),
        .D(p_0_in__0[12]),
        .Q(counter_ch1_reg[12]),
        .R(clear));
  FDRE \counter_ch1_reg[13] 
       (.C(clk),
        .CE(counter_ch10),
        .D(p_0_in__0[13]),
        .Q(counter_ch1_reg[13]),
        .R(clear));
  FDRE \counter_ch1_reg[14] 
       (.C(clk),
        .CE(counter_ch10),
        .D(p_0_in__0[14]),
        .Q(counter_ch1_reg[14]),
        .R(clear));
  FDRE \counter_ch1_reg[15] 
       (.C(clk),
        .CE(counter_ch10),
        .D(p_0_in__0[15]),
        .Q(counter_ch1_reg[15]),
        .R(clear));
  FDRE \counter_ch1_reg[3] 
       (.C(clk),
        .CE(counter_ch10),
        .D(p_0_in__0[3]),
        .Q(counter_ch1_reg[3]),
        .R(clear));
  FDRE \counter_ch1_reg[4] 
       (.C(clk),
        .CE(counter_ch10),
        .D(p_0_in__0[4]),
        .Q(counter_ch1_reg[4]),
        .R(clear));
  FDRE \counter_ch1_reg[5] 
       (.C(clk),
        .CE(counter_ch10),
        .D(p_0_in__0[5]),
        .Q(counter_ch1_reg[5]),
        .R(clear));
  FDRE \counter_ch1_reg[6] 
       (.C(clk),
        .CE(counter_ch10),
        .D(p_0_in__0[6]),
        .Q(counter_ch1_reg[6]),
        .R(clear));
  FDRE \counter_ch1_reg[7] 
       (.C(clk),
        .CE(counter_ch10),
        .D(p_0_in__0[7]),
        .Q(counter_ch1_reg[7]),
        .R(clear));
  FDSE \counter_ch1_reg[8] 
       (.C(clk),
        .CE(counter_ch10),
        .D(p_0_in__0[8]),
        .Q(counter_ch1_reg[8]),
        .S(clear));
  FDRE \counter_ch1_reg[9] 
       (.C(clk),
        .CE(counter_ch10),
        .D(p_0_in__0[9]),
        .Q(counter_ch1_reg[9]),
        .R(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter_ch20_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({counter_ch20_carry_n_0,counter_ch20_carry_n_1,counter_ch20_carry_n_2,counter_ch20_carry_n_3,counter_ch20_carry_n_4,counter_ch20_carry_n_5,counter_ch20_carry_n_6,counter_ch20_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,counter_ch2_reg[3],1'b0}),
        .O({p_0_in__1[9:3],NLW_counter_ch20_carry_O_UNCONNECTED[0]}),
        .S({counter_ch2_reg[9:4],counter_ch20_carry_i_1_n_0,1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter_ch20_carry__0
       (.CI(counter_ch20_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_counter_ch20_carry__0_CO_UNCONNECTED[7:5],counter_ch20_carry__0_n_3,counter_ch20_carry__0_n_4,counter_ch20_carry__0_n_5,counter_ch20_carry__0_n_6,counter_ch20_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter_ch20_carry__0_O_UNCONNECTED[7:6],p_0_in__1[15:10]}),
        .S({1'b0,1'b0,counter_ch2_reg[15:10]}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_ch20_carry_i_1
       (.I0(counter_ch2_reg[3]),
        .O(counter_ch20_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_ch2[15]_i_1 
       (.I0(sel[2]),
        .I1(m02_axis_tready),
        .O(counter_ch20));
  FDRE \counter_ch2_reg[10] 
       (.C(clk),
        .CE(counter_ch20),
        .D(p_0_in__1[10]),
        .Q(counter_ch2_reg[10]),
        .R(clear));
  FDRE \counter_ch2_reg[11] 
       (.C(clk),
        .CE(counter_ch20),
        .D(p_0_in__1[11]),
        .Q(counter_ch2_reg[11]),
        .R(clear));
  FDRE \counter_ch2_reg[12] 
       (.C(clk),
        .CE(counter_ch20),
        .D(p_0_in__1[12]),
        .Q(counter_ch2_reg[12]),
        .R(clear));
  FDRE \counter_ch2_reg[13] 
       (.C(clk),
        .CE(counter_ch20),
        .D(p_0_in__1[13]),
        .Q(counter_ch2_reg[13]),
        .R(clear));
  FDRE \counter_ch2_reg[14] 
       (.C(clk),
        .CE(counter_ch20),
        .D(p_0_in__1[14]),
        .Q(counter_ch2_reg[14]),
        .R(clear));
  FDRE \counter_ch2_reg[15] 
       (.C(clk),
        .CE(counter_ch20),
        .D(p_0_in__1[15]),
        .Q(counter_ch2_reg[15]),
        .R(clear));
  FDRE \counter_ch2_reg[3] 
       (.C(clk),
        .CE(counter_ch20),
        .D(p_0_in__1[3]),
        .Q(counter_ch2_reg[3]),
        .R(clear));
  FDRE \counter_ch2_reg[4] 
       (.C(clk),
        .CE(counter_ch20),
        .D(p_0_in__1[4]),
        .Q(counter_ch2_reg[4]),
        .R(clear));
  FDRE \counter_ch2_reg[5] 
       (.C(clk),
        .CE(counter_ch20),
        .D(p_0_in__1[5]),
        .Q(counter_ch2_reg[5]),
        .R(clear));
  FDRE \counter_ch2_reg[6] 
       (.C(clk),
        .CE(counter_ch20),
        .D(p_0_in__1[6]),
        .Q(counter_ch2_reg[6]),
        .R(clear));
  FDRE \counter_ch2_reg[7] 
       (.C(clk),
        .CE(counter_ch20),
        .D(p_0_in__1[7]),
        .Q(counter_ch2_reg[7]),
        .R(clear));
  FDRE \counter_ch2_reg[8] 
       (.C(clk),
        .CE(counter_ch20),
        .D(p_0_in__1[8]),
        .Q(counter_ch2_reg[8]),
        .R(clear));
  FDSE \counter_ch2_reg[9] 
       (.C(clk),
        .CE(counter_ch20),
        .D(p_0_in__1[9]),
        .Q(counter_ch2_reg[9]),
        .S(clear));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter_ch30_carry
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({counter_ch30_carry_n_0,counter_ch30_carry_n_1,counter_ch30_carry_n_2,counter_ch30_carry_n_3,counter_ch30_carry_n_4,counter_ch30_carry_n_5,counter_ch30_carry_n_6,counter_ch30_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,counter_ch3_reg[3],1'b0}),
        .O({p_0_in__2[9:3],NLW_counter_ch30_carry_O_UNCONNECTED[0]}),
        .S({counter_ch3_reg[9:4],counter_ch30_carry_i_1_n_0,1'b0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 counter_ch30_carry__0
       (.CI(counter_ch30_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_counter_ch30_carry__0_CO_UNCONNECTED[7:5],counter_ch30_carry__0_n_3,counter_ch30_carry__0_n_4,counter_ch30_carry__0_n_5,counter_ch30_carry__0_n_6,counter_ch30_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter_ch30_carry__0_O_UNCONNECTED[7:6],p_0_in__2[15:10]}),
        .S({1'b0,1'b0,counter_ch3_reg[15:10]}));
  LUT1 #(
    .INIT(2'h1)) 
    counter_ch30_carry_i_1
       (.I0(counter_ch3_reg[3]),
        .O(counter_ch30_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    \counter_ch3[15]_i_1 
       (.I0(sel[3]),
        .I1(m03_axis_tready),
        .O(counter_ch30));
  FDSE \counter_ch3_reg[10] 
       (.C(clk),
        .CE(counter_ch30),
        .D(p_0_in__2[10]),
        .Q(counter_ch3_reg[10]),
        .S(clear));
  FDRE \counter_ch3_reg[11] 
       (.C(clk),
        .CE(counter_ch30),
        .D(p_0_in__2[11]),
        .Q(counter_ch3_reg[11]),
        .R(clear));
  FDRE \counter_ch3_reg[12] 
       (.C(clk),
        .CE(counter_ch30),
        .D(p_0_in__2[12]),
        .Q(counter_ch3_reg[12]),
        .R(clear));
  FDRE \counter_ch3_reg[13] 
       (.C(clk),
        .CE(counter_ch30),
        .D(p_0_in__2[13]),
        .Q(counter_ch3_reg[13]),
        .R(clear));
  FDRE \counter_ch3_reg[14] 
       (.C(clk),
        .CE(counter_ch30),
        .D(p_0_in__2[14]),
        .Q(counter_ch3_reg[14]),
        .R(clear));
  FDRE \counter_ch3_reg[15] 
       (.C(clk),
        .CE(counter_ch30),
        .D(p_0_in__2[15]),
        .Q(counter_ch3_reg[15]),
        .R(clear));
  FDRE \counter_ch3_reg[3] 
       (.C(clk),
        .CE(counter_ch30),
        .D(p_0_in__2[3]),
        .Q(counter_ch3_reg[3]),
        .R(clear));
  FDRE \counter_ch3_reg[4] 
       (.C(clk),
        .CE(counter_ch30),
        .D(p_0_in__2[4]),
        .Q(counter_ch3_reg[4]),
        .R(clear));
  FDRE \counter_ch3_reg[5] 
       (.C(clk),
        .CE(counter_ch30),
        .D(p_0_in__2[5]),
        .Q(counter_ch3_reg[5]),
        .R(clear));
  FDRE \counter_ch3_reg[6] 
       (.C(clk),
        .CE(counter_ch30),
        .D(p_0_in__2[6]),
        .Q(counter_ch3_reg[6]),
        .R(clear));
  FDRE \counter_ch3_reg[7] 
       (.C(clk),
        .CE(counter_ch30),
        .D(p_0_in__2[7]),
        .Q(counter_ch3_reg[7]),
        .R(clear));
  FDRE \counter_ch3_reg[8] 
       (.C(clk),
        .CE(counter_ch30),
        .D(p_0_in__2[8]),
        .Q(counter_ch3_reg[8]),
        .R(clear));
  FDRE \counter_ch3_reg[9] 
       (.C(clk),
        .CE(counter_ch30),
        .D(p_0_in__2[9]),
        .Q(counter_ch3_reg[9]),
        .R(clear));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[100]_INST_0 
       (.I0(counter_ch0_reg[4]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[88]),
        .O(m00_axis_tdata[88]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[101]_INST_0 
       (.I0(counter_ch0_reg[5]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[89]),
        .O(m00_axis_tdata[89]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[102]_INST_0 
       (.I0(counter_ch0_reg[6]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[90]),
        .O(m00_axis_tdata[90]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[103]_INST_0 
       (.I0(counter_ch0_reg[7]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[91]),
        .O(m00_axis_tdata[91]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[104]_INST_0 
       (.I0(counter_ch0_reg[8]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[92]),
        .O(m00_axis_tdata[92]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[105]_INST_0 
       (.I0(counter_ch0_reg[9]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[93]),
        .O(m00_axis_tdata[93]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[106]_INST_0 
       (.I0(counter_ch0_reg[10]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[94]),
        .O(m00_axis_tdata[94]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[107]_INST_0 
       (.I0(counter_ch0_reg[11]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[95]),
        .O(m00_axis_tdata[95]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[108]_INST_0 
       (.I0(counter_ch0_reg[12]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[96]),
        .O(m00_axis_tdata[96]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[109]_INST_0 
       (.I0(counter_ch0_reg[13]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[97]),
        .O(m00_axis_tdata[97]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[10]_INST_0 
       (.I0(counter_ch0_reg[10]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[7]),
        .O(m00_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[110]_INST_0 
       (.I0(counter_ch0_reg[14]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[98]),
        .O(m00_axis_tdata[98]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[111]_INST_0 
       (.I0(counter_ch0_reg[15]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[99]),
        .O(m00_axis_tdata[99]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m00_axis_tdata[112]_INST_0 
       (.I0(sel[0]),
        .I1(s00_axis_tdata[100]),
        .O(m00_axis_tdata[100]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m00_axis_tdata[113]_INST_0 
       (.I0(sel[0]),
        .I1(s00_axis_tdata[101]),
        .O(m00_axis_tdata[101]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m00_axis_tdata[114]_INST_0 
       (.I0(sel[0]),
        .I1(s00_axis_tdata[102]),
        .O(m00_axis_tdata[102]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[115]_INST_0 
       (.I0(counter_ch0_reg[3]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[103]),
        .O(m00_axis_tdata[103]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[116]_INST_0 
       (.I0(counter_ch0_reg[4]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[104]),
        .O(m00_axis_tdata[104]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[117]_INST_0 
       (.I0(counter_ch0_reg[5]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[105]),
        .O(m00_axis_tdata[105]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[118]_INST_0 
       (.I0(counter_ch0_reg[6]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[106]),
        .O(m00_axis_tdata[106]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[119]_INST_0 
       (.I0(counter_ch0_reg[7]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[107]),
        .O(m00_axis_tdata[107]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[11]_INST_0 
       (.I0(counter_ch0_reg[11]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[8]),
        .O(m00_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[120]_INST_0 
       (.I0(counter_ch0_reg[8]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[108]),
        .O(m00_axis_tdata[108]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[121]_INST_0 
       (.I0(counter_ch0_reg[9]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[109]),
        .O(m00_axis_tdata[109]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[122]_INST_0 
       (.I0(counter_ch0_reg[10]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[110]),
        .O(m00_axis_tdata[110]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[123]_INST_0 
       (.I0(counter_ch0_reg[11]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[111]),
        .O(m00_axis_tdata[111]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[124]_INST_0 
       (.I0(counter_ch0_reg[12]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[112]),
        .O(m00_axis_tdata[112]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[125]_INST_0 
       (.I0(counter_ch0_reg[13]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[113]),
        .O(m00_axis_tdata[113]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[126]_INST_0 
       (.I0(counter_ch0_reg[14]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[114]),
        .O(m00_axis_tdata[114]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[127]_INST_0 
       (.I0(counter_ch0_reg[15]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[115]),
        .O(m00_axis_tdata[115]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[12]_INST_0 
       (.I0(counter_ch0_reg[12]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[9]),
        .O(m00_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[13]_INST_0 
       (.I0(counter_ch0_reg[13]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[10]),
        .O(m00_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[14]_INST_0 
       (.I0(counter_ch0_reg[14]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[11]),
        .O(m00_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[15]_INST_0 
       (.I0(counter_ch0_reg[15]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[12]),
        .O(m00_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m00_axis_tdata[16]_INST_0 
       (.I0(sel[0]),
        .I1(s00_axis_tdata[13]),
        .O(m00_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[19]_INST_0 
       (.I0(counter_ch0_reg[3]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[14]),
        .O(m00_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[20]_INST_0 
       (.I0(counter_ch0_reg[4]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[15]),
        .O(m00_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[21]_INST_0 
       (.I0(counter_ch0_reg[5]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[16]),
        .O(m00_axis_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[22]_INST_0 
       (.I0(counter_ch0_reg[6]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[17]),
        .O(m00_axis_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[23]_INST_0 
       (.I0(counter_ch0_reg[7]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[18]),
        .O(m00_axis_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[24]_INST_0 
       (.I0(counter_ch0_reg[8]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[19]),
        .O(m00_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[25]_INST_0 
       (.I0(counter_ch0_reg[9]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[20]),
        .O(m00_axis_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[26]_INST_0 
       (.I0(counter_ch0_reg[10]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[21]),
        .O(m00_axis_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[27]_INST_0 
       (.I0(counter_ch0_reg[11]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[22]),
        .O(m00_axis_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[28]_INST_0 
       (.I0(counter_ch0_reg[12]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[23]),
        .O(m00_axis_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[29]_INST_0 
       (.I0(counter_ch0_reg[13]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[24]),
        .O(m00_axis_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[30]_INST_0 
       (.I0(counter_ch0_reg[14]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[25]),
        .O(m00_axis_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[31]_INST_0 
       (.I0(counter_ch0_reg[15]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[26]),
        .O(m00_axis_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m00_axis_tdata[33]_INST_0 
       (.I0(sel[0]),
        .I1(s00_axis_tdata[27]),
        .O(m00_axis_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[35]_INST_0 
       (.I0(counter_ch0_reg[3]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[28]),
        .O(m00_axis_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[36]_INST_0 
       (.I0(counter_ch0_reg[4]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[29]),
        .O(m00_axis_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[37]_INST_0 
       (.I0(counter_ch0_reg[5]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[30]),
        .O(m00_axis_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[38]_INST_0 
       (.I0(counter_ch0_reg[6]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[31]),
        .O(m00_axis_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[39]_INST_0 
       (.I0(counter_ch0_reg[7]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[32]),
        .O(m00_axis_tdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[3]_INST_0 
       (.I0(counter_ch0_reg[3]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[0]),
        .O(m00_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[40]_INST_0 
       (.I0(counter_ch0_reg[8]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[33]),
        .O(m00_axis_tdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[41]_INST_0 
       (.I0(counter_ch0_reg[9]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[34]),
        .O(m00_axis_tdata[34]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[42]_INST_0 
       (.I0(counter_ch0_reg[10]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[35]),
        .O(m00_axis_tdata[35]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[43]_INST_0 
       (.I0(counter_ch0_reg[11]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[36]),
        .O(m00_axis_tdata[36]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[44]_INST_0 
       (.I0(counter_ch0_reg[12]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[37]),
        .O(m00_axis_tdata[37]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[45]_INST_0 
       (.I0(counter_ch0_reg[13]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[38]),
        .O(m00_axis_tdata[38]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[46]_INST_0 
       (.I0(counter_ch0_reg[14]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[39]),
        .O(m00_axis_tdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[47]_INST_0 
       (.I0(counter_ch0_reg[15]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[40]),
        .O(m00_axis_tdata[40]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m00_axis_tdata[48]_INST_0 
       (.I0(sel[0]),
        .I1(s00_axis_tdata[41]),
        .O(m00_axis_tdata[41]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m00_axis_tdata[49]_INST_0 
       (.I0(sel[0]),
        .I1(s00_axis_tdata[42]),
        .O(m00_axis_tdata[42]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[4]_INST_0 
       (.I0(counter_ch0_reg[4]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[1]),
        .O(m00_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[51]_INST_0 
       (.I0(counter_ch0_reg[3]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[43]),
        .O(m00_axis_tdata[43]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[52]_INST_0 
       (.I0(counter_ch0_reg[4]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[44]),
        .O(m00_axis_tdata[44]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[53]_INST_0 
       (.I0(counter_ch0_reg[5]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[45]),
        .O(m00_axis_tdata[45]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[54]_INST_0 
       (.I0(counter_ch0_reg[6]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[46]),
        .O(m00_axis_tdata[46]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[55]_INST_0 
       (.I0(counter_ch0_reg[7]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[47]),
        .O(m00_axis_tdata[47]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[56]_INST_0 
       (.I0(counter_ch0_reg[8]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[48]),
        .O(m00_axis_tdata[48]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[57]_INST_0 
       (.I0(counter_ch0_reg[9]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[49]),
        .O(m00_axis_tdata[49]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[58]_INST_0 
       (.I0(counter_ch0_reg[10]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[50]),
        .O(m00_axis_tdata[50]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[59]_INST_0 
       (.I0(counter_ch0_reg[11]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[51]),
        .O(m00_axis_tdata[51]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[5]_INST_0 
       (.I0(counter_ch0_reg[5]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[2]),
        .O(m00_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[60]_INST_0 
       (.I0(counter_ch0_reg[12]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[52]),
        .O(m00_axis_tdata[52]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[61]_INST_0 
       (.I0(counter_ch0_reg[13]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[53]),
        .O(m00_axis_tdata[53]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[62]_INST_0 
       (.I0(counter_ch0_reg[14]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[54]),
        .O(m00_axis_tdata[54]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[63]_INST_0 
       (.I0(counter_ch0_reg[15]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[55]),
        .O(m00_axis_tdata[55]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m00_axis_tdata[66]_INST_0 
       (.I0(sel[0]),
        .I1(s00_axis_tdata[56]),
        .O(m00_axis_tdata[56]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[67]_INST_0 
       (.I0(counter_ch0_reg[3]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[57]),
        .O(m00_axis_tdata[57]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[68]_INST_0 
       (.I0(counter_ch0_reg[4]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[58]),
        .O(m00_axis_tdata[58]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[69]_INST_0 
       (.I0(counter_ch0_reg[5]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[59]),
        .O(m00_axis_tdata[59]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[6]_INST_0 
       (.I0(counter_ch0_reg[6]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[3]),
        .O(m00_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[70]_INST_0 
       (.I0(counter_ch0_reg[6]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[60]),
        .O(m00_axis_tdata[60]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[71]_INST_0 
       (.I0(counter_ch0_reg[7]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[61]),
        .O(m00_axis_tdata[61]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[72]_INST_0 
       (.I0(counter_ch0_reg[8]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[62]),
        .O(m00_axis_tdata[62]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[73]_INST_0 
       (.I0(counter_ch0_reg[9]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[63]),
        .O(m00_axis_tdata[63]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[74]_INST_0 
       (.I0(counter_ch0_reg[10]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[64]),
        .O(m00_axis_tdata[64]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[75]_INST_0 
       (.I0(counter_ch0_reg[11]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[65]),
        .O(m00_axis_tdata[65]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[76]_INST_0 
       (.I0(counter_ch0_reg[12]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[66]),
        .O(m00_axis_tdata[66]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[77]_INST_0 
       (.I0(counter_ch0_reg[13]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[67]),
        .O(m00_axis_tdata[67]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[78]_INST_0 
       (.I0(counter_ch0_reg[14]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[68]),
        .O(m00_axis_tdata[68]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[79]_INST_0 
       (.I0(counter_ch0_reg[15]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[69]),
        .O(m00_axis_tdata[69]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[7]_INST_0 
       (.I0(counter_ch0_reg[7]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[4]),
        .O(m00_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m00_axis_tdata[80]_INST_0 
       (.I0(sel[0]),
        .I1(s00_axis_tdata[70]),
        .O(m00_axis_tdata[70]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m00_axis_tdata[82]_INST_0 
       (.I0(sel[0]),
        .I1(s00_axis_tdata[71]),
        .O(m00_axis_tdata[71]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[83]_INST_0 
       (.I0(counter_ch0_reg[3]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[72]),
        .O(m00_axis_tdata[72]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[84]_INST_0 
       (.I0(counter_ch0_reg[4]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[73]),
        .O(m00_axis_tdata[73]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[85]_INST_0 
       (.I0(counter_ch0_reg[5]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[74]),
        .O(m00_axis_tdata[74]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[86]_INST_0 
       (.I0(counter_ch0_reg[6]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[75]),
        .O(m00_axis_tdata[75]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[87]_INST_0 
       (.I0(counter_ch0_reg[7]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[76]),
        .O(m00_axis_tdata[76]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[88]_INST_0 
       (.I0(counter_ch0_reg[8]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[77]),
        .O(m00_axis_tdata[77]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[89]_INST_0 
       (.I0(counter_ch0_reg[9]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[78]),
        .O(m00_axis_tdata[78]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[8]_INST_0 
       (.I0(counter_ch0_reg[8]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[5]),
        .O(m00_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[90]_INST_0 
       (.I0(counter_ch0_reg[10]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[79]),
        .O(m00_axis_tdata[79]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[91]_INST_0 
       (.I0(counter_ch0_reg[11]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[80]),
        .O(m00_axis_tdata[80]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[92]_INST_0 
       (.I0(counter_ch0_reg[12]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[81]),
        .O(m00_axis_tdata[81]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[93]_INST_0 
       (.I0(counter_ch0_reg[13]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[82]),
        .O(m00_axis_tdata[82]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[94]_INST_0 
       (.I0(counter_ch0_reg[14]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[83]),
        .O(m00_axis_tdata[83]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[95]_INST_0 
       (.I0(counter_ch0_reg[15]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[84]),
        .O(m00_axis_tdata[84]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m00_axis_tdata[97]_INST_0 
       (.I0(sel[0]),
        .I1(s00_axis_tdata[85]),
        .O(m00_axis_tdata[85]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m00_axis_tdata[98]_INST_0 
       (.I0(sel[0]),
        .I1(s00_axis_tdata[86]),
        .O(m00_axis_tdata[86]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[99]_INST_0 
       (.I0(counter_ch0_reg[3]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[87]),
        .O(m00_axis_tdata[87]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m00_axis_tdata[9]_INST_0 
       (.I0(counter_ch0_reg[9]),
        .I1(sel[0]),
        .I2(s00_axis_tdata[6]),
        .O(m00_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[100]_INST_0 
       (.I0(counter_ch1_reg[4]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[88]),
        .O(m01_axis_tdata[88]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[101]_INST_0 
       (.I0(counter_ch1_reg[5]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[89]),
        .O(m01_axis_tdata[89]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[102]_INST_0 
       (.I0(counter_ch1_reg[6]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[90]),
        .O(m01_axis_tdata[90]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[103]_INST_0 
       (.I0(counter_ch1_reg[7]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[91]),
        .O(m01_axis_tdata[91]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[104]_INST_0 
       (.I0(counter_ch1_reg[8]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[92]),
        .O(m01_axis_tdata[92]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[105]_INST_0 
       (.I0(counter_ch1_reg[9]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[93]),
        .O(m01_axis_tdata[93]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[106]_INST_0 
       (.I0(counter_ch1_reg[10]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[94]),
        .O(m01_axis_tdata[94]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[107]_INST_0 
       (.I0(counter_ch1_reg[11]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[95]),
        .O(m01_axis_tdata[95]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[108]_INST_0 
       (.I0(counter_ch1_reg[12]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[96]),
        .O(m01_axis_tdata[96]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[109]_INST_0 
       (.I0(counter_ch1_reg[13]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[97]),
        .O(m01_axis_tdata[97]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[10]_INST_0 
       (.I0(counter_ch1_reg[10]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[7]),
        .O(m01_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[110]_INST_0 
       (.I0(counter_ch1_reg[14]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[98]),
        .O(m01_axis_tdata[98]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[111]_INST_0 
       (.I0(counter_ch1_reg[15]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[99]),
        .O(m01_axis_tdata[99]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m01_axis_tdata[112]_INST_0 
       (.I0(sel[1]),
        .I1(s01_axis_tdata[100]),
        .O(m01_axis_tdata[100]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m01_axis_tdata[113]_INST_0 
       (.I0(sel[1]),
        .I1(s01_axis_tdata[101]),
        .O(m01_axis_tdata[101]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m01_axis_tdata[114]_INST_0 
       (.I0(sel[1]),
        .I1(s01_axis_tdata[102]),
        .O(m01_axis_tdata[102]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[115]_INST_0 
       (.I0(counter_ch1_reg[3]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[103]),
        .O(m01_axis_tdata[103]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[116]_INST_0 
       (.I0(counter_ch1_reg[4]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[104]),
        .O(m01_axis_tdata[104]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[117]_INST_0 
       (.I0(counter_ch1_reg[5]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[105]),
        .O(m01_axis_tdata[105]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[118]_INST_0 
       (.I0(counter_ch1_reg[6]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[106]),
        .O(m01_axis_tdata[106]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[119]_INST_0 
       (.I0(counter_ch1_reg[7]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[107]),
        .O(m01_axis_tdata[107]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[11]_INST_0 
       (.I0(counter_ch1_reg[11]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[8]),
        .O(m01_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[120]_INST_0 
       (.I0(counter_ch1_reg[8]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[108]),
        .O(m01_axis_tdata[108]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[121]_INST_0 
       (.I0(counter_ch1_reg[9]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[109]),
        .O(m01_axis_tdata[109]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[122]_INST_0 
       (.I0(counter_ch1_reg[10]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[110]),
        .O(m01_axis_tdata[110]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[123]_INST_0 
       (.I0(counter_ch1_reg[11]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[111]),
        .O(m01_axis_tdata[111]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[124]_INST_0 
       (.I0(counter_ch1_reg[12]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[112]),
        .O(m01_axis_tdata[112]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[125]_INST_0 
       (.I0(counter_ch1_reg[13]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[113]),
        .O(m01_axis_tdata[113]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[126]_INST_0 
       (.I0(counter_ch1_reg[14]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[114]),
        .O(m01_axis_tdata[114]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[127]_INST_0 
       (.I0(counter_ch1_reg[15]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[115]),
        .O(m01_axis_tdata[115]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[12]_INST_0 
       (.I0(counter_ch1_reg[12]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[9]),
        .O(m01_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[13]_INST_0 
       (.I0(counter_ch1_reg[13]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[10]),
        .O(m01_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[14]_INST_0 
       (.I0(counter_ch1_reg[14]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[11]),
        .O(m01_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[15]_INST_0 
       (.I0(counter_ch1_reg[15]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[12]),
        .O(m01_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m01_axis_tdata[16]_INST_0 
       (.I0(sel[1]),
        .I1(s01_axis_tdata[13]),
        .O(m01_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[19]_INST_0 
       (.I0(counter_ch1_reg[3]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[14]),
        .O(m01_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[20]_INST_0 
       (.I0(counter_ch1_reg[4]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[15]),
        .O(m01_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[21]_INST_0 
       (.I0(counter_ch1_reg[5]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[16]),
        .O(m01_axis_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[22]_INST_0 
       (.I0(counter_ch1_reg[6]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[17]),
        .O(m01_axis_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[23]_INST_0 
       (.I0(counter_ch1_reg[7]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[18]),
        .O(m01_axis_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[24]_INST_0 
       (.I0(counter_ch1_reg[8]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[19]),
        .O(m01_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[25]_INST_0 
       (.I0(counter_ch1_reg[9]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[20]),
        .O(m01_axis_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[26]_INST_0 
       (.I0(counter_ch1_reg[10]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[21]),
        .O(m01_axis_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[27]_INST_0 
       (.I0(counter_ch1_reg[11]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[22]),
        .O(m01_axis_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[28]_INST_0 
       (.I0(counter_ch1_reg[12]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[23]),
        .O(m01_axis_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[29]_INST_0 
       (.I0(counter_ch1_reg[13]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[24]),
        .O(m01_axis_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[30]_INST_0 
       (.I0(counter_ch1_reg[14]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[25]),
        .O(m01_axis_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[31]_INST_0 
       (.I0(counter_ch1_reg[15]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[26]),
        .O(m01_axis_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m01_axis_tdata[33]_INST_0 
       (.I0(sel[1]),
        .I1(s01_axis_tdata[27]),
        .O(m01_axis_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[35]_INST_0 
       (.I0(counter_ch1_reg[3]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[28]),
        .O(m01_axis_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[36]_INST_0 
       (.I0(counter_ch1_reg[4]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[29]),
        .O(m01_axis_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[37]_INST_0 
       (.I0(counter_ch1_reg[5]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[30]),
        .O(m01_axis_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[38]_INST_0 
       (.I0(counter_ch1_reg[6]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[31]),
        .O(m01_axis_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[39]_INST_0 
       (.I0(counter_ch1_reg[7]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[32]),
        .O(m01_axis_tdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[3]_INST_0 
       (.I0(counter_ch1_reg[3]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[0]),
        .O(m01_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[40]_INST_0 
       (.I0(counter_ch1_reg[8]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[33]),
        .O(m01_axis_tdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[41]_INST_0 
       (.I0(counter_ch1_reg[9]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[34]),
        .O(m01_axis_tdata[34]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[42]_INST_0 
       (.I0(counter_ch1_reg[10]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[35]),
        .O(m01_axis_tdata[35]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[43]_INST_0 
       (.I0(counter_ch1_reg[11]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[36]),
        .O(m01_axis_tdata[36]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[44]_INST_0 
       (.I0(counter_ch1_reg[12]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[37]),
        .O(m01_axis_tdata[37]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[45]_INST_0 
       (.I0(counter_ch1_reg[13]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[38]),
        .O(m01_axis_tdata[38]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[46]_INST_0 
       (.I0(counter_ch1_reg[14]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[39]),
        .O(m01_axis_tdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[47]_INST_0 
       (.I0(counter_ch1_reg[15]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[40]),
        .O(m01_axis_tdata[40]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m01_axis_tdata[48]_INST_0 
       (.I0(sel[1]),
        .I1(s01_axis_tdata[41]),
        .O(m01_axis_tdata[41]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m01_axis_tdata[49]_INST_0 
       (.I0(sel[1]),
        .I1(s01_axis_tdata[42]),
        .O(m01_axis_tdata[42]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[4]_INST_0 
       (.I0(counter_ch1_reg[4]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[1]),
        .O(m01_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[51]_INST_0 
       (.I0(counter_ch1_reg[3]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[43]),
        .O(m01_axis_tdata[43]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[52]_INST_0 
       (.I0(counter_ch1_reg[4]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[44]),
        .O(m01_axis_tdata[44]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[53]_INST_0 
       (.I0(counter_ch1_reg[5]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[45]),
        .O(m01_axis_tdata[45]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[54]_INST_0 
       (.I0(counter_ch1_reg[6]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[46]),
        .O(m01_axis_tdata[46]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[55]_INST_0 
       (.I0(counter_ch1_reg[7]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[47]),
        .O(m01_axis_tdata[47]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[56]_INST_0 
       (.I0(counter_ch1_reg[8]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[48]),
        .O(m01_axis_tdata[48]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[57]_INST_0 
       (.I0(counter_ch1_reg[9]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[49]),
        .O(m01_axis_tdata[49]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[58]_INST_0 
       (.I0(counter_ch1_reg[10]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[50]),
        .O(m01_axis_tdata[50]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[59]_INST_0 
       (.I0(counter_ch1_reg[11]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[51]),
        .O(m01_axis_tdata[51]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[5]_INST_0 
       (.I0(counter_ch1_reg[5]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[2]),
        .O(m01_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[60]_INST_0 
       (.I0(counter_ch1_reg[12]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[52]),
        .O(m01_axis_tdata[52]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[61]_INST_0 
       (.I0(counter_ch1_reg[13]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[53]),
        .O(m01_axis_tdata[53]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[62]_INST_0 
       (.I0(counter_ch1_reg[14]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[54]),
        .O(m01_axis_tdata[54]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[63]_INST_0 
       (.I0(counter_ch1_reg[15]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[55]),
        .O(m01_axis_tdata[55]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m01_axis_tdata[66]_INST_0 
       (.I0(sel[1]),
        .I1(s01_axis_tdata[56]),
        .O(m01_axis_tdata[56]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[67]_INST_0 
       (.I0(counter_ch1_reg[3]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[57]),
        .O(m01_axis_tdata[57]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[68]_INST_0 
       (.I0(counter_ch1_reg[4]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[58]),
        .O(m01_axis_tdata[58]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[69]_INST_0 
       (.I0(counter_ch1_reg[5]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[59]),
        .O(m01_axis_tdata[59]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[6]_INST_0 
       (.I0(counter_ch1_reg[6]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[3]),
        .O(m01_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[70]_INST_0 
       (.I0(counter_ch1_reg[6]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[60]),
        .O(m01_axis_tdata[60]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[71]_INST_0 
       (.I0(counter_ch1_reg[7]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[61]),
        .O(m01_axis_tdata[61]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[72]_INST_0 
       (.I0(counter_ch1_reg[8]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[62]),
        .O(m01_axis_tdata[62]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[73]_INST_0 
       (.I0(counter_ch1_reg[9]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[63]),
        .O(m01_axis_tdata[63]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[74]_INST_0 
       (.I0(counter_ch1_reg[10]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[64]),
        .O(m01_axis_tdata[64]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[75]_INST_0 
       (.I0(counter_ch1_reg[11]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[65]),
        .O(m01_axis_tdata[65]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[76]_INST_0 
       (.I0(counter_ch1_reg[12]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[66]),
        .O(m01_axis_tdata[66]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[77]_INST_0 
       (.I0(counter_ch1_reg[13]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[67]),
        .O(m01_axis_tdata[67]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[78]_INST_0 
       (.I0(counter_ch1_reg[14]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[68]),
        .O(m01_axis_tdata[68]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[79]_INST_0 
       (.I0(counter_ch1_reg[15]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[69]),
        .O(m01_axis_tdata[69]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[7]_INST_0 
       (.I0(counter_ch1_reg[7]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[4]),
        .O(m01_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m01_axis_tdata[80]_INST_0 
       (.I0(sel[1]),
        .I1(s01_axis_tdata[70]),
        .O(m01_axis_tdata[70]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m01_axis_tdata[82]_INST_0 
       (.I0(sel[1]),
        .I1(s01_axis_tdata[71]),
        .O(m01_axis_tdata[71]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[83]_INST_0 
       (.I0(counter_ch1_reg[3]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[72]),
        .O(m01_axis_tdata[72]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[84]_INST_0 
       (.I0(counter_ch1_reg[4]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[73]),
        .O(m01_axis_tdata[73]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[85]_INST_0 
       (.I0(counter_ch1_reg[5]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[74]),
        .O(m01_axis_tdata[74]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[86]_INST_0 
       (.I0(counter_ch1_reg[6]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[75]),
        .O(m01_axis_tdata[75]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[87]_INST_0 
       (.I0(counter_ch1_reg[7]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[76]),
        .O(m01_axis_tdata[76]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[88]_INST_0 
       (.I0(counter_ch1_reg[8]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[77]),
        .O(m01_axis_tdata[77]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[89]_INST_0 
       (.I0(counter_ch1_reg[9]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[78]),
        .O(m01_axis_tdata[78]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[8]_INST_0 
       (.I0(counter_ch1_reg[8]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[5]),
        .O(m01_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[90]_INST_0 
       (.I0(counter_ch1_reg[10]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[79]),
        .O(m01_axis_tdata[79]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[91]_INST_0 
       (.I0(counter_ch1_reg[11]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[80]),
        .O(m01_axis_tdata[80]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[92]_INST_0 
       (.I0(counter_ch1_reg[12]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[81]),
        .O(m01_axis_tdata[81]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[93]_INST_0 
       (.I0(counter_ch1_reg[13]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[82]),
        .O(m01_axis_tdata[82]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[94]_INST_0 
       (.I0(counter_ch1_reg[14]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[83]),
        .O(m01_axis_tdata[83]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[95]_INST_0 
       (.I0(counter_ch1_reg[15]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[84]),
        .O(m01_axis_tdata[84]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m01_axis_tdata[97]_INST_0 
       (.I0(sel[1]),
        .I1(s01_axis_tdata[85]),
        .O(m01_axis_tdata[85]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m01_axis_tdata[98]_INST_0 
       (.I0(sel[1]),
        .I1(s01_axis_tdata[86]),
        .O(m01_axis_tdata[86]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[99]_INST_0 
       (.I0(counter_ch1_reg[3]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[87]),
        .O(m01_axis_tdata[87]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m01_axis_tdata[9]_INST_0 
       (.I0(counter_ch1_reg[9]),
        .I1(sel[1]),
        .I2(s01_axis_tdata[6]),
        .O(m01_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[100]_INST_0 
       (.I0(counter_ch2_reg[4]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[88]),
        .O(m02_axis_tdata[88]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[101]_INST_0 
       (.I0(counter_ch2_reg[5]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[89]),
        .O(m02_axis_tdata[89]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[102]_INST_0 
       (.I0(counter_ch2_reg[6]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[90]),
        .O(m02_axis_tdata[90]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[103]_INST_0 
       (.I0(counter_ch2_reg[7]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[91]),
        .O(m02_axis_tdata[91]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[104]_INST_0 
       (.I0(counter_ch2_reg[8]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[92]),
        .O(m02_axis_tdata[92]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[105]_INST_0 
       (.I0(counter_ch2_reg[9]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[93]),
        .O(m02_axis_tdata[93]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[106]_INST_0 
       (.I0(counter_ch2_reg[10]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[94]),
        .O(m02_axis_tdata[94]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[107]_INST_0 
       (.I0(counter_ch2_reg[11]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[95]),
        .O(m02_axis_tdata[95]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[108]_INST_0 
       (.I0(counter_ch2_reg[12]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[96]),
        .O(m02_axis_tdata[96]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[109]_INST_0 
       (.I0(counter_ch2_reg[13]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[97]),
        .O(m02_axis_tdata[97]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[10]_INST_0 
       (.I0(counter_ch2_reg[10]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[7]),
        .O(m02_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[110]_INST_0 
       (.I0(counter_ch2_reg[14]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[98]),
        .O(m02_axis_tdata[98]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[111]_INST_0 
       (.I0(counter_ch2_reg[15]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[99]),
        .O(m02_axis_tdata[99]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m02_axis_tdata[112]_INST_0 
       (.I0(sel[2]),
        .I1(s02_axis_tdata[100]),
        .O(m02_axis_tdata[100]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m02_axis_tdata[113]_INST_0 
       (.I0(sel[2]),
        .I1(s02_axis_tdata[101]),
        .O(m02_axis_tdata[101]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m02_axis_tdata[114]_INST_0 
       (.I0(sel[2]),
        .I1(s02_axis_tdata[102]),
        .O(m02_axis_tdata[102]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[115]_INST_0 
       (.I0(counter_ch2_reg[3]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[103]),
        .O(m02_axis_tdata[103]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[116]_INST_0 
       (.I0(counter_ch2_reg[4]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[104]),
        .O(m02_axis_tdata[104]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[117]_INST_0 
       (.I0(counter_ch2_reg[5]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[105]),
        .O(m02_axis_tdata[105]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[118]_INST_0 
       (.I0(counter_ch2_reg[6]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[106]),
        .O(m02_axis_tdata[106]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[119]_INST_0 
       (.I0(counter_ch2_reg[7]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[107]),
        .O(m02_axis_tdata[107]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[11]_INST_0 
       (.I0(counter_ch2_reg[11]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[8]),
        .O(m02_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[120]_INST_0 
       (.I0(counter_ch2_reg[8]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[108]),
        .O(m02_axis_tdata[108]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[121]_INST_0 
       (.I0(counter_ch2_reg[9]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[109]),
        .O(m02_axis_tdata[109]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[122]_INST_0 
       (.I0(counter_ch2_reg[10]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[110]),
        .O(m02_axis_tdata[110]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[123]_INST_0 
       (.I0(counter_ch2_reg[11]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[111]),
        .O(m02_axis_tdata[111]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[124]_INST_0 
       (.I0(counter_ch2_reg[12]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[112]),
        .O(m02_axis_tdata[112]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[125]_INST_0 
       (.I0(counter_ch2_reg[13]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[113]),
        .O(m02_axis_tdata[113]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[126]_INST_0 
       (.I0(counter_ch2_reg[14]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[114]),
        .O(m02_axis_tdata[114]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[127]_INST_0 
       (.I0(counter_ch2_reg[15]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[115]),
        .O(m02_axis_tdata[115]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[12]_INST_0 
       (.I0(counter_ch2_reg[12]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[9]),
        .O(m02_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[13]_INST_0 
       (.I0(counter_ch2_reg[13]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[10]),
        .O(m02_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[14]_INST_0 
       (.I0(counter_ch2_reg[14]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[11]),
        .O(m02_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[15]_INST_0 
       (.I0(counter_ch2_reg[15]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[12]),
        .O(m02_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m02_axis_tdata[16]_INST_0 
       (.I0(sel[2]),
        .I1(s02_axis_tdata[13]),
        .O(m02_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[19]_INST_0 
       (.I0(counter_ch2_reg[3]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[14]),
        .O(m02_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[20]_INST_0 
       (.I0(counter_ch2_reg[4]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[15]),
        .O(m02_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[21]_INST_0 
       (.I0(counter_ch2_reg[5]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[16]),
        .O(m02_axis_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[22]_INST_0 
       (.I0(counter_ch2_reg[6]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[17]),
        .O(m02_axis_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[23]_INST_0 
       (.I0(counter_ch2_reg[7]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[18]),
        .O(m02_axis_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[24]_INST_0 
       (.I0(counter_ch2_reg[8]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[19]),
        .O(m02_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[25]_INST_0 
       (.I0(counter_ch2_reg[9]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[20]),
        .O(m02_axis_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[26]_INST_0 
       (.I0(counter_ch2_reg[10]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[21]),
        .O(m02_axis_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[27]_INST_0 
       (.I0(counter_ch2_reg[11]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[22]),
        .O(m02_axis_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[28]_INST_0 
       (.I0(counter_ch2_reg[12]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[23]),
        .O(m02_axis_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[29]_INST_0 
       (.I0(counter_ch2_reg[13]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[24]),
        .O(m02_axis_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[30]_INST_0 
       (.I0(counter_ch2_reg[14]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[25]),
        .O(m02_axis_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[31]_INST_0 
       (.I0(counter_ch2_reg[15]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[26]),
        .O(m02_axis_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m02_axis_tdata[33]_INST_0 
       (.I0(sel[2]),
        .I1(s02_axis_tdata[27]),
        .O(m02_axis_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[35]_INST_0 
       (.I0(counter_ch2_reg[3]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[28]),
        .O(m02_axis_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[36]_INST_0 
       (.I0(counter_ch2_reg[4]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[29]),
        .O(m02_axis_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[37]_INST_0 
       (.I0(counter_ch2_reg[5]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[30]),
        .O(m02_axis_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[38]_INST_0 
       (.I0(counter_ch2_reg[6]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[31]),
        .O(m02_axis_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[39]_INST_0 
       (.I0(counter_ch2_reg[7]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[32]),
        .O(m02_axis_tdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[3]_INST_0 
       (.I0(counter_ch2_reg[3]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[0]),
        .O(m02_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[40]_INST_0 
       (.I0(counter_ch2_reg[8]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[33]),
        .O(m02_axis_tdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[41]_INST_0 
       (.I0(counter_ch2_reg[9]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[34]),
        .O(m02_axis_tdata[34]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[42]_INST_0 
       (.I0(counter_ch2_reg[10]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[35]),
        .O(m02_axis_tdata[35]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[43]_INST_0 
       (.I0(counter_ch2_reg[11]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[36]),
        .O(m02_axis_tdata[36]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[44]_INST_0 
       (.I0(counter_ch2_reg[12]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[37]),
        .O(m02_axis_tdata[37]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[45]_INST_0 
       (.I0(counter_ch2_reg[13]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[38]),
        .O(m02_axis_tdata[38]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[46]_INST_0 
       (.I0(counter_ch2_reg[14]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[39]),
        .O(m02_axis_tdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[47]_INST_0 
       (.I0(counter_ch2_reg[15]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[40]),
        .O(m02_axis_tdata[40]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m02_axis_tdata[48]_INST_0 
       (.I0(sel[2]),
        .I1(s02_axis_tdata[41]),
        .O(m02_axis_tdata[41]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m02_axis_tdata[49]_INST_0 
       (.I0(sel[2]),
        .I1(s02_axis_tdata[42]),
        .O(m02_axis_tdata[42]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[4]_INST_0 
       (.I0(counter_ch2_reg[4]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[1]),
        .O(m02_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[51]_INST_0 
       (.I0(counter_ch2_reg[3]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[43]),
        .O(m02_axis_tdata[43]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[52]_INST_0 
       (.I0(counter_ch2_reg[4]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[44]),
        .O(m02_axis_tdata[44]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[53]_INST_0 
       (.I0(counter_ch2_reg[5]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[45]),
        .O(m02_axis_tdata[45]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[54]_INST_0 
       (.I0(counter_ch2_reg[6]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[46]),
        .O(m02_axis_tdata[46]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[55]_INST_0 
       (.I0(counter_ch2_reg[7]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[47]),
        .O(m02_axis_tdata[47]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[56]_INST_0 
       (.I0(counter_ch2_reg[8]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[48]),
        .O(m02_axis_tdata[48]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[57]_INST_0 
       (.I0(counter_ch2_reg[9]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[49]),
        .O(m02_axis_tdata[49]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[58]_INST_0 
       (.I0(counter_ch2_reg[10]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[50]),
        .O(m02_axis_tdata[50]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[59]_INST_0 
       (.I0(counter_ch2_reg[11]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[51]),
        .O(m02_axis_tdata[51]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[5]_INST_0 
       (.I0(counter_ch2_reg[5]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[2]),
        .O(m02_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[60]_INST_0 
       (.I0(counter_ch2_reg[12]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[52]),
        .O(m02_axis_tdata[52]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[61]_INST_0 
       (.I0(counter_ch2_reg[13]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[53]),
        .O(m02_axis_tdata[53]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[62]_INST_0 
       (.I0(counter_ch2_reg[14]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[54]),
        .O(m02_axis_tdata[54]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[63]_INST_0 
       (.I0(counter_ch2_reg[15]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[55]),
        .O(m02_axis_tdata[55]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m02_axis_tdata[66]_INST_0 
       (.I0(sel[2]),
        .I1(s02_axis_tdata[56]),
        .O(m02_axis_tdata[56]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[67]_INST_0 
       (.I0(counter_ch2_reg[3]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[57]),
        .O(m02_axis_tdata[57]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[68]_INST_0 
       (.I0(counter_ch2_reg[4]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[58]),
        .O(m02_axis_tdata[58]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[69]_INST_0 
       (.I0(counter_ch2_reg[5]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[59]),
        .O(m02_axis_tdata[59]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[6]_INST_0 
       (.I0(counter_ch2_reg[6]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[3]),
        .O(m02_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[70]_INST_0 
       (.I0(counter_ch2_reg[6]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[60]),
        .O(m02_axis_tdata[60]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[71]_INST_0 
       (.I0(counter_ch2_reg[7]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[61]),
        .O(m02_axis_tdata[61]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[72]_INST_0 
       (.I0(counter_ch2_reg[8]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[62]),
        .O(m02_axis_tdata[62]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[73]_INST_0 
       (.I0(counter_ch2_reg[9]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[63]),
        .O(m02_axis_tdata[63]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[74]_INST_0 
       (.I0(counter_ch2_reg[10]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[64]),
        .O(m02_axis_tdata[64]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[75]_INST_0 
       (.I0(counter_ch2_reg[11]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[65]),
        .O(m02_axis_tdata[65]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[76]_INST_0 
       (.I0(counter_ch2_reg[12]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[66]),
        .O(m02_axis_tdata[66]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[77]_INST_0 
       (.I0(counter_ch2_reg[13]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[67]),
        .O(m02_axis_tdata[67]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[78]_INST_0 
       (.I0(counter_ch2_reg[14]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[68]),
        .O(m02_axis_tdata[68]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[79]_INST_0 
       (.I0(counter_ch2_reg[15]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[69]),
        .O(m02_axis_tdata[69]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[7]_INST_0 
       (.I0(counter_ch2_reg[7]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[4]),
        .O(m02_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m02_axis_tdata[80]_INST_0 
       (.I0(sel[2]),
        .I1(s02_axis_tdata[70]),
        .O(m02_axis_tdata[70]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m02_axis_tdata[82]_INST_0 
       (.I0(sel[2]),
        .I1(s02_axis_tdata[71]),
        .O(m02_axis_tdata[71]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[83]_INST_0 
       (.I0(counter_ch2_reg[3]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[72]),
        .O(m02_axis_tdata[72]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[84]_INST_0 
       (.I0(counter_ch2_reg[4]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[73]),
        .O(m02_axis_tdata[73]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[85]_INST_0 
       (.I0(counter_ch2_reg[5]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[74]),
        .O(m02_axis_tdata[74]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[86]_INST_0 
       (.I0(counter_ch2_reg[6]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[75]),
        .O(m02_axis_tdata[75]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[87]_INST_0 
       (.I0(counter_ch2_reg[7]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[76]),
        .O(m02_axis_tdata[76]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[88]_INST_0 
       (.I0(counter_ch2_reg[8]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[77]),
        .O(m02_axis_tdata[77]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[89]_INST_0 
       (.I0(counter_ch2_reg[9]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[78]),
        .O(m02_axis_tdata[78]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[8]_INST_0 
       (.I0(counter_ch2_reg[8]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[5]),
        .O(m02_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[90]_INST_0 
       (.I0(counter_ch2_reg[10]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[79]),
        .O(m02_axis_tdata[79]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[91]_INST_0 
       (.I0(counter_ch2_reg[11]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[80]),
        .O(m02_axis_tdata[80]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[92]_INST_0 
       (.I0(counter_ch2_reg[12]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[81]),
        .O(m02_axis_tdata[81]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[93]_INST_0 
       (.I0(counter_ch2_reg[13]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[82]),
        .O(m02_axis_tdata[82]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[94]_INST_0 
       (.I0(counter_ch2_reg[14]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[83]),
        .O(m02_axis_tdata[83]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[95]_INST_0 
       (.I0(counter_ch2_reg[15]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[84]),
        .O(m02_axis_tdata[84]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m02_axis_tdata[97]_INST_0 
       (.I0(sel[2]),
        .I1(s02_axis_tdata[85]),
        .O(m02_axis_tdata[85]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m02_axis_tdata[98]_INST_0 
       (.I0(sel[2]),
        .I1(s02_axis_tdata[86]),
        .O(m02_axis_tdata[86]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[99]_INST_0 
       (.I0(counter_ch2_reg[3]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[87]),
        .O(m02_axis_tdata[87]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m02_axis_tdata[9]_INST_0 
       (.I0(counter_ch2_reg[9]),
        .I1(sel[2]),
        .I2(s02_axis_tdata[6]),
        .O(m02_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[100]_INST_0 
       (.I0(counter_ch3_reg[4]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[88]),
        .O(m03_axis_tdata[88]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[101]_INST_0 
       (.I0(counter_ch3_reg[5]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[89]),
        .O(m03_axis_tdata[89]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[102]_INST_0 
       (.I0(counter_ch3_reg[6]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[90]),
        .O(m03_axis_tdata[90]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[103]_INST_0 
       (.I0(counter_ch3_reg[7]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[91]),
        .O(m03_axis_tdata[91]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[104]_INST_0 
       (.I0(counter_ch3_reg[8]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[92]),
        .O(m03_axis_tdata[92]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[105]_INST_0 
       (.I0(counter_ch3_reg[9]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[93]),
        .O(m03_axis_tdata[93]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[106]_INST_0 
       (.I0(counter_ch3_reg[10]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[94]),
        .O(m03_axis_tdata[94]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[107]_INST_0 
       (.I0(counter_ch3_reg[11]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[95]),
        .O(m03_axis_tdata[95]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[108]_INST_0 
       (.I0(counter_ch3_reg[12]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[96]),
        .O(m03_axis_tdata[96]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[109]_INST_0 
       (.I0(counter_ch3_reg[13]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[97]),
        .O(m03_axis_tdata[97]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[10]_INST_0 
       (.I0(counter_ch3_reg[10]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[7]),
        .O(m03_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[110]_INST_0 
       (.I0(counter_ch3_reg[14]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[98]),
        .O(m03_axis_tdata[98]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[111]_INST_0 
       (.I0(counter_ch3_reg[15]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[99]),
        .O(m03_axis_tdata[99]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m03_axis_tdata[112]_INST_0 
       (.I0(sel[3]),
        .I1(s03_axis_tdata[100]),
        .O(m03_axis_tdata[100]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m03_axis_tdata[113]_INST_0 
       (.I0(sel[3]),
        .I1(s03_axis_tdata[101]),
        .O(m03_axis_tdata[101]));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m03_axis_tdata[114]_INST_0 
       (.I0(sel[3]),
        .I1(s03_axis_tdata[102]),
        .O(m03_axis_tdata[102]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[115]_INST_0 
       (.I0(counter_ch3_reg[3]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[103]),
        .O(m03_axis_tdata[103]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[116]_INST_0 
       (.I0(counter_ch3_reg[4]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[104]),
        .O(m03_axis_tdata[104]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[117]_INST_0 
       (.I0(counter_ch3_reg[5]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[105]),
        .O(m03_axis_tdata[105]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[118]_INST_0 
       (.I0(counter_ch3_reg[6]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[106]),
        .O(m03_axis_tdata[106]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[119]_INST_0 
       (.I0(counter_ch3_reg[7]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[107]),
        .O(m03_axis_tdata[107]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[11]_INST_0 
       (.I0(counter_ch3_reg[11]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[8]),
        .O(m03_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[120]_INST_0 
       (.I0(counter_ch3_reg[8]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[108]),
        .O(m03_axis_tdata[108]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[121]_INST_0 
       (.I0(counter_ch3_reg[9]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[109]),
        .O(m03_axis_tdata[109]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[122]_INST_0 
       (.I0(counter_ch3_reg[10]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[110]),
        .O(m03_axis_tdata[110]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[123]_INST_0 
       (.I0(counter_ch3_reg[11]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[111]),
        .O(m03_axis_tdata[111]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[124]_INST_0 
       (.I0(counter_ch3_reg[12]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[112]),
        .O(m03_axis_tdata[112]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[125]_INST_0 
       (.I0(counter_ch3_reg[13]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[113]),
        .O(m03_axis_tdata[113]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[126]_INST_0 
       (.I0(counter_ch3_reg[14]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[114]),
        .O(m03_axis_tdata[114]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[127]_INST_0 
       (.I0(counter_ch3_reg[15]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[115]),
        .O(m03_axis_tdata[115]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[12]_INST_0 
       (.I0(counter_ch3_reg[12]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[9]),
        .O(m03_axis_tdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[13]_INST_0 
       (.I0(counter_ch3_reg[13]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[10]),
        .O(m03_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[14]_INST_0 
       (.I0(counter_ch3_reg[14]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[11]),
        .O(m03_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[15]_INST_0 
       (.I0(counter_ch3_reg[15]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[12]),
        .O(m03_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m03_axis_tdata[16]_INST_0 
       (.I0(sel[3]),
        .I1(s03_axis_tdata[13]),
        .O(m03_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[19]_INST_0 
       (.I0(counter_ch3_reg[3]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[14]),
        .O(m03_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[20]_INST_0 
       (.I0(counter_ch3_reg[4]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[15]),
        .O(m03_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[21]_INST_0 
       (.I0(counter_ch3_reg[5]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[16]),
        .O(m03_axis_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[22]_INST_0 
       (.I0(counter_ch3_reg[6]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[17]),
        .O(m03_axis_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[23]_INST_0 
       (.I0(counter_ch3_reg[7]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[18]),
        .O(m03_axis_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[24]_INST_0 
       (.I0(counter_ch3_reg[8]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[19]),
        .O(m03_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[25]_INST_0 
       (.I0(counter_ch3_reg[9]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[20]),
        .O(m03_axis_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[26]_INST_0 
       (.I0(counter_ch3_reg[10]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[21]),
        .O(m03_axis_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[27]_INST_0 
       (.I0(counter_ch3_reg[11]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[22]),
        .O(m03_axis_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[28]_INST_0 
       (.I0(counter_ch3_reg[12]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[23]),
        .O(m03_axis_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[29]_INST_0 
       (.I0(counter_ch3_reg[13]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[24]),
        .O(m03_axis_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[30]_INST_0 
       (.I0(counter_ch3_reg[14]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[25]),
        .O(m03_axis_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[31]_INST_0 
       (.I0(counter_ch3_reg[15]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[26]),
        .O(m03_axis_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m03_axis_tdata[33]_INST_0 
       (.I0(sel[3]),
        .I1(s03_axis_tdata[27]),
        .O(m03_axis_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[35]_INST_0 
       (.I0(counter_ch3_reg[3]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[28]),
        .O(m03_axis_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[36]_INST_0 
       (.I0(counter_ch3_reg[4]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[29]),
        .O(m03_axis_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[37]_INST_0 
       (.I0(counter_ch3_reg[5]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[30]),
        .O(m03_axis_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[38]_INST_0 
       (.I0(counter_ch3_reg[6]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[31]),
        .O(m03_axis_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[39]_INST_0 
       (.I0(counter_ch3_reg[7]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[32]),
        .O(m03_axis_tdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[3]_INST_0 
       (.I0(counter_ch3_reg[3]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[0]),
        .O(m03_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[40]_INST_0 
       (.I0(counter_ch3_reg[8]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[33]),
        .O(m03_axis_tdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[41]_INST_0 
       (.I0(counter_ch3_reg[9]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[34]),
        .O(m03_axis_tdata[34]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[42]_INST_0 
       (.I0(counter_ch3_reg[10]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[35]),
        .O(m03_axis_tdata[35]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[43]_INST_0 
       (.I0(counter_ch3_reg[11]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[36]),
        .O(m03_axis_tdata[36]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[44]_INST_0 
       (.I0(counter_ch3_reg[12]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[37]),
        .O(m03_axis_tdata[37]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[45]_INST_0 
       (.I0(counter_ch3_reg[13]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[38]),
        .O(m03_axis_tdata[38]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[46]_INST_0 
       (.I0(counter_ch3_reg[14]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[39]),
        .O(m03_axis_tdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[47]_INST_0 
       (.I0(counter_ch3_reg[15]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[40]),
        .O(m03_axis_tdata[40]));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m03_axis_tdata[48]_INST_0 
       (.I0(sel[3]),
        .I1(s03_axis_tdata[41]),
        .O(m03_axis_tdata[41]));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m03_axis_tdata[49]_INST_0 
       (.I0(sel[3]),
        .I1(s03_axis_tdata[42]),
        .O(m03_axis_tdata[42]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[4]_INST_0 
       (.I0(counter_ch3_reg[4]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[1]),
        .O(m03_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[51]_INST_0 
       (.I0(counter_ch3_reg[3]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[43]),
        .O(m03_axis_tdata[43]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[52]_INST_0 
       (.I0(counter_ch3_reg[4]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[44]),
        .O(m03_axis_tdata[44]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[53]_INST_0 
       (.I0(counter_ch3_reg[5]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[45]),
        .O(m03_axis_tdata[45]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[54]_INST_0 
       (.I0(counter_ch3_reg[6]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[46]),
        .O(m03_axis_tdata[46]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[55]_INST_0 
       (.I0(counter_ch3_reg[7]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[47]),
        .O(m03_axis_tdata[47]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[56]_INST_0 
       (.I0(counter_ch3_reg[8]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[48]),
        .O(m03_axis_tdata[48]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[57]_INST_0 
       (.I0(counter_ch3_reg[9]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[49]),
        .O(m03_axis_tdata[49]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[58]_INST_0 
       (.I0(counter_ch3_reg[10]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[50]),
        .O(m03_axis_tdata[50]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[59]_INST_0 
       (.I0(counter_ch3_reg[11]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[51]),
        .O(m03_axis_tdata[51]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[5]_INST_0 
       (.I0(counter_ch3_reg[5]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[2]),
        .O(m03_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[60]_INST_0 
       (.I0(counter_ch3_reg[12]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[52]),
        .O(m03_axis_tdata[52]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[61]_INST_0 
       (.I0(counter_ch3_reg[13]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[53]),
        .O(m03_axis_tdata[53]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[62]_INST_0 
       (.I0(counter_ch3_reg[14]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[54]),
        .O(m03_axis_tdata[54]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[63]_INST_0 
       (.I0(counter_ch3_reg[15]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[55]),
        .O(m03_axis_tdata[55]));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m03_axis_tdata[66]_INST_0 
       (.I0(sel[3]),
        .I1(s03_axis_tdata[56]),
        .O(m03_axis_tdata[56]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[67]_INST_0 
       (.I0(counter_ch3_reg[3]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[57]),
        .O(m03_axis_tdata[57]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[68]_INST_0 
       (.I0(counter_ch3_reg[4]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[58]),
        .O(m03_axis_tdata[58]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[69]_INST_0 
       (.I0(counter_ch3_reg[5]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[59]),
        .O(m03_axis_tdata[59]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[6]_INST_0 
       (.I0(counter_ch3_reg[6]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[3]),
        .O(m03_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[70]_INST_0 
       (.I0(counter_ch3_reg[6]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[60]),
        .O(m03_axis_tdata[60]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[71]_INST_0 
       (.I0(counter_ch3_reg[7]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[61]),
        .O(m03_axis_tdata[61]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[72]_INST_0 
       (.I0(counter_ch3_reg[8]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[62]),
        .O(m03_axis_tdata[62]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[73]_INST_0 
       (.I0(counter_ch3_reg[9]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[63]),
        .O(m03_axis_tdata[63]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[74]_INST_0 
       (.I0(counter_ch3_reg[10]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[64]),
        .O(m03_axis_tdata[64]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[75]_INST_0 
       (.I0(counter_ch3_reg[11]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[65]),
        .O(m03_axis_tdata[65]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[76]_INST_0 
       (.I0(counter_ch3_reg[12]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[66]),
        .O(m03_axis_tdata[66]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[77]_INST_0 
       (.I0(counter_ch3_reg[13]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[67]),
        .O(m03_axis_tdata[67]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[78]_INST_0 
       (.I0(counter_ch3_reg[14]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[68]),
        .O(m03_axis_tdata[68]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[79]_INST_0 
       (.I0(counter_ch3_reg[15]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[69]),
        .O(m03_axis_tdata[69]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[7]_INST_0 
       (.I0(counter_ch3_reg[7]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[4]),
        .O(m03_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m03_axis_tdata[80]_INST_0 
       (.I0(sel[3]),
        .I1(s03_axis_tdata[70]),
        .O(m03_axis_tdata[70]));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m03_axis_tdata[82]_INST_0 
       (.I0(sel[3]),
        .I1(s03_axis_tdata[71]),
        .O(m03_axis_tdata[71]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[83]_INST_0 
       (.I0(counter_ch3_reg[3]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[72]),
        .O(m03_axis_tdata[72]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[84]_INST_0 
       (.I0(counter_ch3_reg[4]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[73]),
        .O(m03_axis_tdata[73]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[85]_INST_0 
       (.I0(counter_ch3_reg[5]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[74]),
        .O(m03_axis_tdata[74]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[86]_INST_0 
       (.I0(counter_ch3_reg[6]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[75]),
        .O(m03_axis_tdata[75]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[87]_INST_0 
       (.I0(counter_ch3_reg[7]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[76]),
        .O(m03_axis_tdata[76]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[88]_INST_0 
       (.I0(counter_ch3_reg[8]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[77]),
        .O(m03_axis_tdata[77]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[89]_INST_0 
       (.I0(counter_ch3_reg[9]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[78]),
        .O(m03_axis_tdata[78]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[8]_INST_0 
       (.I0(counter_ch3_reg[8]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[5]),
        .O(m03_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[90]_INST_0 
       (.I0(counter_ch3_reg[10]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[79]),
        .O(m03_axis_tdata[79]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[91]_INST_0 
       (.I0(counter_ch3_reg[11]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[80]),
        .O(m03_axis_tdata[80]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[92]_INST_0 
       (.I0(counter_ch3_reg[12]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[81]),
        .O(m03_axis_tdata[81]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[93]_INST_0 
       (.I0(counter_ch3_reg[13]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[82]),
        .O(m03_axis_tdata[82]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[94]_INST_0 
       (.I0(counter_ch3_reg[14]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[83]),
        .O(m03_axis_tdata[83]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[95]_INST_0 
       (.I0(counter_ch3_reg[15]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[84]),
        .O(m03_axis_tdata[84]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m03_axis_tdata[97]_INST_0 
       (.I0(sel[3]),
        .I1(s03_axis_tdata[85]),
        .O(m03_axis_tdata[85]));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \m03_axis_tdata[98]_INST_0 
       (.I0(sel[3]),
        .I1(s03_axis_tdata[86]),
        .O(m03_axis_tdata[86]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[99]_INST_0 
       (.I0(counter_ch3_reg[3]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[87]),
        .O(m03_axis_tdata[87]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m03_axis_tdata[9]_INST_0 
       (.I0(counter_ch3_reg[9]),
        .I1(sel[3]),
        .I2(s03_axis_tdata[6]),
        .O(m03_axis_tdata[6]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
