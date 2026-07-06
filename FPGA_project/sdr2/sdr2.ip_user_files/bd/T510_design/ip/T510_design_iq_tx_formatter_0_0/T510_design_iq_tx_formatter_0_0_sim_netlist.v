// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Jul  4 14:01:30 2026
// Host        : DVLLP006 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Trivedi/2022p2/sdr2/sdr2.gen/sources_1/bd/T510_design/ip/T510_design_iq_tx_formatter_0_0/T510_design_iq_tx_formatter_0_0_sim_netlist.v
// Design      : T510_design_iq_tx_formatter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu47dr-ffve1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "T510_design_iq_tx_formatter_0_0,iq_tx_formatter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "iq_tx_formatter,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module T510_design_iq_tx_formatter_0_0
   (aclk,
    cnt_clr,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    m_band0_tdata,
    m_band0_tvalid,
    m_band0_tready,
    m_band1_tdata,
    m_band1_tvalid,
    m_band1_tready,
    BAND_DUAL);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXIS:M_BAND0:M_BAND1, FREQ_HZ 30720000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input aclk;
  input cnt_clr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_BAND0 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_BAND0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [127:0]m_band0_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_BAND0 TVALID" *) output m_band0_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_BAND0 TREADY" *) input m_band0_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_BAND1 TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_BAND1, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [127:0]m_band1_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_BAND1 TVALID" *) output m_band1_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_BAND1 TREADY" *) input m_band1_tready;
  input BAND_DUAL;

  wire BAND_DUAL;
  wire m_band0_tready;
  wire [127:0]m_band1_tdata;
  wire m_band1_tready;
  wire [255:0]s_axis_tdata;
  wire s_axis_tready;
  wire s_axis_tvalid;

  assign m_band0_tdata[127:96] = s_axis_tdata[223:192];
  assign m_band0_tdata[95:64] = s_axis_tdata[159:128];
  assign m_band0_tdata[63:32] = s_axis_tdata[95:64];
  assign m_band0_tdata[31:0] = s_axis_tdata[31:0];
  assign m_band0_tvalid = s_axis_tvalid;
  assign m_band1_tvalid = s_axis_tvalid;
  T510_design_iq_tx_formatter_0_0_iq_tx_formatter inst
       (.BAND_DUAL(BAND_DUAL),
        .m_band1_tdata(m_band1_tdata),
        .s_axis_tdata({s_axis_tdata[255:224],s_axis_tdata[191:160],s_axis_tdata[127:96],s_axis_tdata[63:32]}));
  LUT2 #(
    .INIT(4'h8)) 
    s_axis_tready_INST_0
       (.I0(m_band0_tready),
        .I1(m_band1_tready),
        .O(s_axis_tready));
endmodule

(* ORIG_REF_NAME = "iq_tx_formatter" *) 
module T510_design_iq_tx_formatter_0_0_iq_tx_formatter
   (m_band1_tdata,
    BAND_DUAL,
    s_axis_tdata);
  output [127:0]m_band1_tdata;
  input BAND_DUAL;
  input [127:0]s_axis_tdata;

  wire BAND_DUAL;
  wire [127:0]m_band1_tdata;
  wire [127:0]s_axis_tdata;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[0]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[0]),
        .O(m_band1_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[100]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[100]),
        .O(m_band1_tdata[100]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[101]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[101]),
        .O(m_band1_tdata[101]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[102]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[102]),
        .O(m_band1_tdata[102]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[103]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[103]),
        .O(m_band1_tdata[103]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[104]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[104]),
        .O(m_band1_tdata[104]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[105]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[105]),
        .O(m_band1_tdata[105]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[106]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[106]),
        .O(m_band1_tdata[106]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[107]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[107]),
        .O(m_band1_tdata[107]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[108]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[108]),
        .O(m_band1_tdata[108]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[109]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[109]),
        .O(m_band1_tdata[109]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[10]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[10]),
        .O(m_band1_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[110]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[110]),
        .O(m_band1_tdata[110]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[111]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[111]),
        .O(m_band1_tdata[111]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[112]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[112]),
        .O(m_band1_tdata[112]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[113]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[113]),
        .O(m_band1_tdata[113]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[114]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[114]),
        .O(m_band1_tdata[114]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[115]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[115]),
        .O(m_band1_tdata[115]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[116]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[116]),
        .O(m_band1_tdata[116]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[117]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[117]),
        .O(m_band1_tdata[117]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[118]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[118]),
        .O(m_band1_tdata[118]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[119]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[119]),
        .O(m_band1_tdata[119]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[11]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[11]),
        .O(m_band1_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[120]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[120]),
        .O(m_band1_tdata[120]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[121]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[121]),
        .O(m_band1_tdata[121]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[122]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[122]),
        .O(m_band1_tdata[122]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[123]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[123]),
        .O(m_band1_tdata[123]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[124]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[124]),
        .O(m_band1_tdata[124]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[125]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[125]),
        .O(m_band1_tdata[125]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[126]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[126]),
        .O(m_band1_tdata[126]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[127]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[127]),
        .O(m_band1_tdata[127]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[12]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[12]),
        .O(m_band1_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[13]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[13]),
        .O(m_band1_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[14]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[14]),
        .O(m_band1_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[15]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[15]),
        .O(m_band1_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[16]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[16]),
        .O(m_band1_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[17]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[17]),
        .O(m_band1_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[18]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[18]),
        .O(m_band1_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[19]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[19]),
        .O(m_band1_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[1]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[1]),
        .O(m_band1_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[20]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[20]),
        .O(m_band1_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[21]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[21]),
        .O(m_band1_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[22]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[22]),
        .O(m_band1_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[23]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[23]),
        .O(m_band1_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[24]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[24]),
        .O(m_band1_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[25]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[25]),
        .O(m_band1_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[26]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[26]),
        .O(m_band1_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[27]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[27]),
        .O(m_band1_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[28]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[28]),
        .O(m_band1_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[29]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[29]),
        .O(m_band1_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[2]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[2]),
        .O(m_band1_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[30]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[30]),
        .O(m_band1_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[31]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[31]),
        .O(m_band1_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[32]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[32]),
        .O(m_band1_tdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[33]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[33]),
        .O(m_band1_tdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[34]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[34]),
        .O(m_band1_tdata[34]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[35]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[35]),
        .O(m_band1_tdata[35]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[36]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[36]),
        .O(m_band1_tdata[36]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[37]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[37]),
        .O(m_band1_tdata[37]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[38]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[38]),
        .O(m_band1_tdata[38]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[39]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[39]),
        .O(m_band1_tdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[3]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[3]),
        .O(m_band1_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[40]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[40]),
        .O(m_band1_tdata[40]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[41]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[41]),
        .O(m_band1_tdata[41]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[42]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[42]),
        .O(m_band1_tdata[42]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[43]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[43]),
        .O(m_band1_tdata[43]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[44]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[44]),
        .O(m_band1_tdata[44]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[45]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[45]),
        .O(m_band1_tdata[45]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[46]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[46]),
        .O(m_band1_tdata[46]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[47]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[47]),
        .O(m_band1_tdata[47]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[48]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[48]),
        .O(m_band1_tdata[48]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[49]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[49]),
        .O(m_band1_tdata[49]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[4]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[4]),
        .O(m_band1_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[50]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[50]),
        .O(m_band1_tdata[50]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[51]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[51]),
        .O(m_band1_tdata[51]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[52]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[52]),
        .O(m_band1_tdata[52]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[53]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[53]),
        .O(m_band1_tdata[53]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[54]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[54]),
        .O(m_band1_tdata[54]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[55]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[55]),
        .O(m_band1_tdata[55]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[56]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[56]),
        .O(m_band1_tdata[56]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[57]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[57]),
        .O(m_band1_tdata[57]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[58]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[58]),
        .O(m_band1_tdata[58]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[59]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[59]),
        .O(m_band1_tdata[59]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[5]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[5]),
        .O(m_band1_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[60]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[60]),
        .O(m_band1_tdata[60]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[61]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[61]),
        .O(m_band1_tdata[61]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[62]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[62]),
        .O(m_band1_tdata[62]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[63]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[63]),
        .O(m_band1_tdata[63]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[64]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[64]),
        .O(m_band1_tdata[64]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[65]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[65]),
        .O(m_band1_tdata[65]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[66]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[66]),
        .O(m_band1_tdata[66]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[67]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[67]),
        .O(m_band1_tdata[67]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[68]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[68]),
        .O(m_band1_tdata[68]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[69]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[69]),
        .O(m_band1_tdata[69]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[6]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[6]),
        .O(m_band1_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[70]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[70]),
        .O(m_band1_tdata[70]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[71]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[71]),
        .O(m_band1_tdata[71]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[72]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[72]),
        .O(m_band1_tdata[72]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[73]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[73]),
        .O(m_band1_tdata[73]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[74]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[74]),
        .O(m_band1_tdata[74]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[75]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[75]),
        .O(m_band1_tdata[75]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[76]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[76]),
        .O(m_band1_tdata[76]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[77]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[77]),
        .O(m_band1_tdata[77]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[78]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[78]),
        .O(m_band1_tdata[78]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[79]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[79]),
        .O(m_band1_tdata[79]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[7]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[7]),
        .O(m_band1_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[80]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[80]),
        .O(m_band1_tdata[80]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[81]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[81]),
        .O(m_band1_tdata[81]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[82]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[82]),
        .O(m_band1_tdata[82]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[83]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[83]),
        .O(m_band1_tdata[83]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[84]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[84]),
        .O(m_band1_tdata[84]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[85]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[85]),
        .O(m_band1_tdata[85]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[86]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[86]),
        .O(m_band1_tdata[86]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[87]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[87]),
        .O(m_band1_tdata[87]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[88]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[88]),
        .O(m_band1_tdata[88]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[89]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[89]),
        .O(m_band1_tdata[89]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[8]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[8]),
        .O(m_band1_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[90]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[90]),
        .O(m_band1_tdata[90]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[91]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[91]),
        .O(m_band1_tdata[91]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[92]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[92]),
        .O(m_band1_tdata[92]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[93]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[93]),
        .O(m_band1_tdata[93]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[94]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[94]),
        .O(m_band1_tdata[94]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[95]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[95]),
        .O(m_band1_tdata[95]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[96]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[96]),
        .O(m_band1_tdata[96]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[97]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[97]),
        .O(m_band1_tdata[97]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[98]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[98]),
        .O(m_band1_tdata[98]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[99]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[99]),
        .O(m_band1_tdata[99]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_band1_tdata[9]_INST_0 
       (.I0(BAND_DUAL),
        .I1(s_axis_tdata[9]),
        .O(m_band1_tdata[9]));
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
