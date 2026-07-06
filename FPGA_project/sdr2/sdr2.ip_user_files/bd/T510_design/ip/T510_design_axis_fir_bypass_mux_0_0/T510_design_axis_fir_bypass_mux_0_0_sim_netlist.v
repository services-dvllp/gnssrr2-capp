// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Thu Jun 11 22:34:56 2026
// Host        : DVLLP006 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top T510_design_axis_fir_bypass_mux_0_0 -prefix
//               T510_design_axis_fir_bypass_mux_0_0_ T510_design_axis_fir_bypass_mux_0_0_sim_netlist.v
// Design      : T510_design_axis_fir_bypass_mux_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu47dr-ffve1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "T510_design_axis_fir_bypass_mux_0_0,axis_fir_bypass_mux,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "axis_fir_bypass_mux,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module T510_design_axis_fir_bypass_mux_0_0
   (aclk,
    aresetn,
    sel,
    s_axis_tdata,
    s_axis_tlast,
    s_axis_tvalid,
    s_axis_tready,
    m_axis_fir_tdata,
    m_axis_fir_tvalid,
    m_axis_fir_tready,
    s_axis_fir_tdata,
    s_axis_fir_tvalid,
    s_axis_fir_tready,
    m_axis_tdata,
    m_axis_tlast,
    m_axis_tvalid,
    m_axis_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:m_axis_fir:s_axis:s_axis_fir, ASSOCIATED_RESET aresetn, FREQ_HZ 15360000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  input sel;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [511:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TLAST" *) input s_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_fir TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_fir, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [511:0]m_axis_fir_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_fir TVALID" *) output m_axis_fir_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_fir TREADY" *) input m_axis_fir_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_fir TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_fir, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 512} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value vect} size {attribs {resolve_type generated dependency vect_size format long minimum {} maximum {}} value 8} stride {attribs {resolve_type generated dependency vect_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value path} size {attribs {resolve_type generated dependency path_size format long minimum {} maximum {}} value 4} stride {attribs {resolve_type generated dependency path_stride format long minimum {} maximum {}} value 16} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency out_width format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency out_fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type generated dependency out_signed format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 512 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_data_valid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data_valid} enabled {attribs {resolve_type generated dependency data_valid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency data_valid_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_chanid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chanid} enabled {attribs {resolve_type generated dependency chanid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chanid_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency chanid_bitoffset format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_user {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value user} enabled {attribs {resolve_type generated dependency user_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency user_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency user_bitoffset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) input [511:0]s_axis_fir_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_fir TVALID" *) input s_axis_fir_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_fir TREADY" *) output s_axis_fir_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [511:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;

  wire m_axis_fir_tready;
  wire [511:0]m_axis_tdata;
  wire m_axis_tready;
  wire m_axis_tvalid;
  wire [511:0]s_axis_fir_tdata;
  wire s_axis_fir_tready;
  wire s_axis_fir_tvalid;
  wire [511:0]s_axis_tdata;
  wire s_axis_tlast;
  wire s_axis_tready;
  wire s_axis_tvalid;
  wire sel;

  assign m_axis_fir_tdata[511:0] = s_axis_tdata;
  assign m_axis_fir_tvalid = s_axis_tvalid;
  assign m_axis_tlast = s_axis_tlast;
  T510_design_axis_fir_bypass_mux_0_0_axis_fir_bypass_mux inst
       (.m_axis_tdata(m_axis_tdata),
        .s_axis_fir_tdata(s_axis_fir_tdata),
        .s_axis_tdata(s_axis_tdata),
        .sel(sel));
  LUT3 #(
    .INIT(8'hB8)) 
    m_axis_tvalid_INST_0
       (.I0(s_axis_tvalid),
        .I1(sel),
        .I2(s_axis_fir_tvalid),
        .O(m_axis_tvalid));
  LUT2 #(
    .INIT(4'hE)) 
    s_axis_fir_tready_INST_0
       (.I0(sel),
        .I1(m_axis_tready),
        .O(s_axis_fir_tready));
  LUT3 #(
    .INIT(8'hA2)) 
    s_axis_tready_INST_0
       (.I0(m_axis_fir_tready),
        .I1(sel),
        .I2(m_axis_tready),
        .O(s_axis_tready));
endmodule

module T510_design_axis_fir_bypass_mux_0_0_axis_fir_bypass_mux
   (m_axis_tdata,
    s_axis_tdata,
    s_axis_fir_tdata,
    sel);
  output [511:0]m_axis_tdata;
  input [511:0]s_axis_tdata;
  input [511:0]s_axis_fir_tdata;
  input sel;

  wire [511:0]m_axis_tdata;
  wire [511:0]s_axis_fir_tdata;
  wire [511:0]s_axis_tdata;
  wire sel;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(s_axis_tdata[0]),
        .I1(s_axis_fir_tdata[0]),
        .I2(sel),
        .O(m_axis_tdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[100]_INST_0 
       (.I0(s_axis_tdata[100]),
        .I1(s_axis_fir_tdata[100]),
        .I2(sel),
        .O(m_axis_tdata[100]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[101]_INST_0 
       (.I0(s_axis_tdata[101]),
        .I1(s_axis_fir_tdata[101]),
        .I2(sel),
        .O(m_axis_tdata[101]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[102]_INST_0 
       (.I0(s_axis_tdata[102]),
        .I1(s_axis_fir_tdata[102]),
        .I2(sel),
        .O(m_axis_tdata[102]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[103]_INST_0 
       (.I0(s_axis_tdata[103]),
        .I1(s_axis_fir_tdata[103]),
        .I2(sel),
        .O(m_axis_tdata[103]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[104]_INST_0 
       (.I0(s_axis_tdata[104]),
        .I1(s_axis_fir_tdata[104]),
        .I2(sel),
        .O(m_axis_tdata[104]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[105]_INST_0 
       (.I0(s_axis_tdata[105]),
        .I1(s_axis_fir_tdata[105]),
        .I2(sel),
        .O(m_axis_tdata[105]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[106]_INST_0 
       (.I0(s_axis_tdata[106]),
        .I1(s_axis_fir_tdata[106]),
        .I2(sel),
        .O(m_axis_tdata[106]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[107]_INST_0 
       (.I0(s_axis_tdata[107]),
        .I1(s_axis_fir_tdata[107]),
        .I2(sel),
        .O(m_axis_tdata[107]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[108]_INST_0 
       (.I0(s_axis_tdata[108]),
        .I1(s_axis_fir_tdata[108]),
        .I2(sel),
        .O(m_axis_tdata[108]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[109]_INST_0 
       (.I0(s_axis_tdata[109]),
        .I1(s_axis_fir_tdata[109]),
        .I2(sel),
        .O(m_axis_tdata[109]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(s_axis_tdata[10]),
        .I1(s_axis_fir_tdata[10]),
        .I2(sel),
        .O(m_axis_tdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[110]_INST_0 
       (.I0(s_axis_tdata[110]),
        .I1(s_axis_fir_tdata[110]),
        .I2(sel),
        .O(m_axis_tdata[110]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[111]_INST_0 
       (.I0(s_axis_tdata[111]),
        .I1(s_axis_fir_tdata[111]),
        .I2(sel),
        .O(m_axis_tdata[111]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[112]_INST_0 
       (.I0(s_axis_tdata[112]),
        .I1(s_axis_fir_tdata[112]),
        .I2(sel),
        .O(m_axis_tdata[112]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[113]_INST_0 
       (.I0(s_axis_tdata[113]),
        .I1(s_axis_fir_tdata[113]),
        .I2(sel),
        .O(m_axis_tdata[113]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[114]_INST_0 
       (.I0(s_axis_tdata[114]),
        .I1(s_axis_fir_tdata[114]),
        .I2(sel),
        .O(m_axis_tdata[114]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[115]_INST_0 
       (.I0(s_axis_tdata[115]),
        .I1(s_axis_fir_tdata[115]),
        .I2(sel),
        .O(m_axis_tdata[115]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[116]_INST_0 
       (.I0(s_axis_tdata[116]),
        .I1(s_axis_fir_tdata[116]),
        .I2(sel),
        .O(m_axis_tdata[116]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[117]_INST_0 
       (.I0(s_axis_tdata[117]),
        .I1(s_axis_fir_tdata[117]),
        .I2(sel),
        .O(m_axis_tdata[117]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[118]_INST_0 
       (.I0(s_axis_tdata[118]),
        .I1(s_axis_fir_tdata[118]),
        .I2(sel),
        .O(m_axis_tdata[118]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[119]_INST_0 
       (.I0(s_axis_tdata[119]),
        .I1(s_axis_fir_tdata[119]),
        .I2(sel),
        .O(m_axis_tdata[119]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(s_axis_tdata[11]),
        .I1(s_axis_fir_tdata[11]),
        .I2(sel),
        .O(m_axis_tdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[120]_INST_0 
       (.I0(s_axis_tdata[120]),
        .I1(s_axis_fir_tdata[120]),
        .I2(sel),
        .O(m_axis_tdata[120]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[121]_INST_0 
       (.I0(s_axis_tdata[121]),
        .I1(s_axis_fir_tdata[121]),
        .I2(sel),
        .O(m_axis_tdata[121]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[122]_INST_0 
       (.I0(s_axis_tdata[122]),
        .I1(s_axis_fir_tdata[122]),
        .I2(sel),
        .O(m_axis_tdata[122]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[123]_INST_0 
       (.I0(s_axis_tdata[123]),
        .I1(s_axis_fir_tdata[123]),
        .I2(sel),
        .O(m_axis_tdata[123]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[124]_INST_0 
       (.I0(s_axis_tdata[124]),
        .I1(s_axis_fir_tdata[124]),
        .I2(sel),
        .O(m_axis_tdata[124]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[125]_INST_0 
       (.I0(s_axis_tdata[125]),
        .I1(s_axis_fir_tdata[125]),
        .I2(sel),
        .O(m_axis_tdata[125]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[126]_INST_0 
       (.I0(s_axis_tdata[126]),
        .I1(s_axis_fir_tdata[126]),
        .I2(sel),
        .O(m_axis_tdata[126]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[127]_INST_0 
       (.I0(s_axis_tdata[127]),
        .I1(s_axis_fir_tdata[127]),
        .I2(sel),
        .O(m_axis_tdata[127]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[128]_INST_0 
       (.I0(s_axis_tdata[128]),
        .I1(s_axis_fir_tdata[128]),
        .I2(sel),
        .O(m_axis_tdata[128]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[129]_INST_0 
       (.I0(s_axis_tdata[129]),
        .I1(s_axis_fir_tdata[129]),
        .I2(sel),
        .O(m_axis_tdata[129]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(s_axis_tdata[12]),
        .I1(s_axis_fir_tdata[12]),
        .I2(sel),
        .O(m_axis_tdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[130]_INST_0 
       (.I0(s_axis_tdata[130]),
        .I1(s_axis_fir_tdata[130]),
        .I2(sel),
        .O(m_axis_tdata[130]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[131]_INST_0 
       (.I0(s_axis_tdata[131]),
        .I1(s_axis_fir_tdata[131]),
        .I2(sel),
        .O(m_axis_tdata[131]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[132]_INST_0 
       (.I0(s_axis_tdata[132]),
        .I1(s_axis_fir_tdata[132]),
        .I2(sel),
        .O(m_axis_tdata[132]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[133]_INST_0 
       (.I0(s_axis_tdata[133]),
        .I1(s_axis_fir_tdata[133]),
        .I2(sel),
        .O(m_axis_tdata[133]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[134]_INST_0 
       (.I0(s_axis_tdata[134]),
        .I1(s_axis_fir_tdata[134]),
        .I2(sel),
        .O(m_axis_tdata[134]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[135]_INST_0 
       (.I0(s_axis_tdata[135]),
        .I1(s_axis_fir_tdata[135]),
        .I2(sel),
        .O(m_axis_tdata[135]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[136]_INST_0 
       (.I0(s_axis_tdata[136]),
        .I1(s_axis_fir_tdata[136]),
        .I2(sel),
        .O(m_axis_tdata[136]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[137]_INST_0 
       (.I0(s_axis_tdata[137]),
        .I1(s_axis_fir_tdata[137]),
        .I2(sel),
        .O(m_axis_tdata[137]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[138]_INST_0 
       (.I0(s_axis_tdata[138]),
        .I1(s_axis_fir_tdata[138]),
        .I2(sel),
        .O(m_axis_tdata[138]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[139]_INST_0 
       (.I0(s_axis_tdata[139]),
        .I1(s_axis_fir_tdata[139]),
        .I2(sel),
        .O(m_axis_tdata[139]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(s_axis_tdata[13]),
        .I1(s_axis_fir_tdata[13]),
        .I2(sel),
        .O(m_axis_tdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[140]_INST_0 
       (.I0(s_axis_tdata[140]),
        .I1(s_axis_fir_tdata[140]),
        .I2(sel),
        .O(m_axis_tdata[140]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[141]_INST_0 
       (.I0(s_axis_tdata[141]),
        .I1(s_axis_fir_tdata[141]),
        .I2(sel),
        .O(m_axis_tdata[141]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[142]_INST_0 
       (.I0(s_axis_tdata[142]),
        .I1(s_axis_fir_tdata[142]),
        .I2(sel),
        .O(m_axis_tdata[142]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[143]_INST_0 
       (.I0(s_axis_tdata[143]),
        .I1(s_axis_fir_tdata[143]),
        .I2(sel),
        .O(m_axis_tdata[143]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[144]_INST_0 
       (.I0(s_axis_tdata[144]),
        .I1(s_axis_fir_tdata[144]),
        .I2(sel),
        .O(m_axis_tdata[144]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[145]_INST_0 
       (.I0(s_axis_tdata[145]),
        .I1(s_axis_fir_tdata[145]),
        .I2(sel),
        .O(m_axis_tdata[145]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[146]_INST_0 
       (.I0(s_axis_tdata[146]),
        .I1(s_axis_fir_tdata[146]),
        .I2(sel),
        .O(m_axis_tdata[146]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[147]_INST_0 
       (.I0(s_axis_tdata[147]),
        .I1(s_axis_fir_tdata[147]),
        .I2(sel),
        .O(m_axis_tdata[147]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[148]_INST_0 
       (.I0(s_axis_tdata[148]),
        .I1(s_axis_fir_tdata[148]),
        .I2(sel),
        .O(m_axis_tdata[148]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[149]_INST_0 
       (.I0(s_axis_tdata[149]),
        .I1(s_axis_fir_tdata[149]),
        .I2(sel),
        .O(m_axis_tdata[149]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(s_axis_tdata[14]),
        .I1(s_axis_fir_tdata[14]),
        .I2(sel),
        .O(m_axis_tdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[150]_INST_0 
       (.I0(s_axis_tdata[150]),
        .I1(s_axis_fir_tdata[150]),
        .I2(sel),
        .O(m_axis_tdata[150]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[151]_INST_0 
       (.I0(s_axis_tdata[151]),
        .I1(s_axis_fir_tdata[151]),
        .I2(sel),
        .O(m_axis_tdata[151]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[152]_INST_0 
       (.I0(s_axis_tdata[152]),
        .I1(s_axis_fir_tdata[152]),
        .I2(sel),
        .O(m_axis_tdata[152]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[153]_INST_0 
       (.I0(s_axis_tdata[153]),
        .I1(s_axis_fir_tdata[153]),
        .I2(sel),
        .O(m_axis_tdata[153]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[154]_INST_0 
       (.I0(s_axis_tdata[154]),
        .I1(s_axis_fir_tdata[154]),
        .I2(sel),
        .O(m_axis_tdata[154]));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[155]_INST_0 
       (.I0(s_axis_tdata[155]),
        .I1(s_axis_fir_tdata[155]),
        .I2(sel),
        .O(m_axis_tdata[155]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[156]_INST_0 
       (.I0(s_axis_tdata[156]),
        .I1(s_axis_fir_tdata[156]),
        .I2(sel),
        .O(m_axis_tdata[156]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[157]_INST_0 
       (.I0(s_axis_tdata[157]),
        .I1(s_axis_fir_tdata[157]),
        .I2(sel),
        .O(m_axis_tdata[157]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[158]_INST_0 
       (.I0(s_axis_tdata[158]),
        .I1(s_axis_fir_tdata[158]),
        .I2(sel),
        .O(m_axis_tdata[158]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[159]_INST_0 
       (.I0(s_axis_tdata[159]),
        .I1(s_axis_fir_tdata[159]),
        .I2(sel),
        .O(m_axis_tdata[159]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(s_axis_tdata[15]),
        .I1(s_axis_fir_tdata[15]),
        .I2(sel),
        .O(m_axis_tdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[160]_INST_0 
       (.I0(s_axis_tdata[160]),
        .I1(s_axis_fir_tdata[160]),
        .I2(sel),
        .O(m_axis_tdata[160]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[161]_INST_0 
       (.I0(s_axis_tdata[161]),
        .I1(s_axis_fir_tdata[161]),
        .I2(sel),
        .O(m_axis_tdata[161]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[162]_INST_0 
       (.I0(s_axis_tdata[162]),
        .I1(s_axis_fir_tdata[162]),
        .I2(sel),
        .O(m_axis_tdata[162]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[163]_INST_0 
       (.I0(s_axis_tdata[163]),
        .I1(s_axis_fir_tdata[163]),
        .I2(sel),
        .O(m_axis_tdata[163]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[164]_INST_0 
       (.I0(s_axis_tdata[164]),
        .I1(s_axis_fir_tdata[164]),
        .I2(sel),
        .O(m_axis_tdata[164]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[165]_INST_0 
       (.I0(s_axis_tdata[165]),
        .I1(s_axis_fir_tdata[165]),
        .I2(sel),
        .O(m_axis_tdata[165]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[166]_INST_0 
       (.I0(s_axis_tdata[166]),
        .I1(s_axis_fir_tdata[166]),
        .I2(sel),
        .O(m_axis_tdata[166]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[167]_INST_0 
       (.I0(s_axis_tdata[167]),
        .I1(s_axis_fir_tdata[167]),
        .I2(sel),
        .O(m_axis_tdata[167]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[168]_INST_0 
       (.I0(s_axis_tdata[168]),
        .I1(s_axis_fir_tdata[168]),
        .I2(sel),
        .O(m_axis_tdata[168]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[169]_INST_0 
       (.I0(s_axis_tdata[169]),
        .I1(s_axis_fir_tdata[169]),
        .I2(sel),
        .O(m_axis_tdata[169]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(s_axis_tdata[16]),
        .I1(s_axis_fir_tdata[16]),
        .I2(sel),
        .O(m_axis_tdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[170]_INST_0 
       (.I0(s_axis_tdata[170]),
        .I1(s_axis_fir_tdata[170]),
        .I2(sel),
        .O(m_axis_tdata[170]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[171]_INST_0 
       (.I0(s_axis_tdata[171]),
        .I1(s_axis_fir_tdata[171]),
        .I2(sel),
        .O(m_axis_tdata[171]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[172]_INST_0 
       (.I0(s_axis_tdata[172]),
        .I1(s_axis_fir_tdata[172]),
        .I2(sel),
        .O(m_axis_tdata[172]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[173]_INST_0 
       (.I0(s_axis_tdata[173]),
        .I1(s_axis_fir_tdata[173]),
        .I2(sel),
        .O(m_axis_tdata[173]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[174]_INST_0 
       (.I0(s_axis_tdata[174]),
        .I1(s_axis_fir_tdata[174]),
        .I2(sel),
        .O(m_axis_tdata[174]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[175]_INST_0 
       (.I0(s_axis_tdata[175]),
        .I1(s_axis_fir_tdata[175]),
        .I2(sel),
        .O(m_axis_tdata[175]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[176]_INST_0 
       (.I0(s_axis_tdata[176]),
        .I1(s_axis_fir_tdata[176]),
        .I2(sel),
        .O(m_axis_tdata[176]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[177]_INST_0 
       (.I0(s_axis_tdata[177]),
        .I1(s_axis_fir_tdata[177]),
        .I2(sel),
        .O(m_axis_tdata[177]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[178]_INST_0 
       (.I0(s_axis_tdata[178]),
        .I1(s_axis_fir_tdata[178]),
        .I2(sel),
        .O(m_axis_tdata[178]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[179]_INST_0 
       (.I0(s_axis_tdata[179]),
        .I1(s_axis_fir_tdata[179]),
        .I2(sel),
        .O(m_axis_tdata[179]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(s_axis_tdata[17]),
        .I1(s_axis_fir_tdata[17]),
        .I2(sel),
        .O(m_axis_tdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[180]_INST_0 
       (.I0(s_axis_tdata[180]),
        .I1(s_axis_fir_tdata[180]),
        .I2(sel),
        .O(m_axis_tdata[180]));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[181]_INST_0 
       (.I0(s_axis_tdata[181]),
        .I1(s_axis_fir_tdata[181]),
        .I2(sel),
        .O(m_axis_tdata[181]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[182]_INST_0 
       (.I0(s_axis_tdata[182]),
        .I1(s_axis_fir_tdata[182]),
        .I2(sel),
        .O(m_axis_tdata[182]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[183]_INST_0 
       (.I0(s_axis_tdata[183]),
        .I1(s_axis_fir_tdata[183]),
        .I2(sel),
        .O(m_axis_tdata[183]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[184]_INST_0 
       (.I0(s_axis_tdata[184]),
        .I1(s_axis_fir_tdata[184]),
        .I2(sel),
        .O(m_axis_tdata[184]));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[185]_INST_0 
       (.I0(s_axis_tdata[185]),
        .I1(s_axis_fir_tdata[185]),
        .I2(sel),
        .O(m_axis_tdata[185]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[186]_INST_0 
       (.I0(s_axis_tdata[186]),
        .I1(s_axis_fir_tdata[186]),
        .I2(sel),
        .O(m_axis_tdata[186]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[187]_INST_0 
       (.I0(s_axis_tdata[187]),
        .I1(s_axis_fir_tdata[187]),
        .I2(sel),
        .O(m_axis_tdata[187]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[188]_INST_0 
       (.I0(s_axis_tdata[188]),
        .I1(s_axis_fir_tdata[188]),
        .I2(sel),
        .O(m_axis_tdata[188]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[189]_INST_0 
       (.I0(s_axis_tdata[189]),
        .I1(s_axis_fir_tdata[189]),
        .I2(sel),
        .O(m_axis_tdata[189]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(s_axis_tdata[18]),
        .I1(s_axis_fir_tdata[18]),
        .I2(sel),
        .O(m_axis_tdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[190]_INST_0 
       (.I0(s_axis_tdata[190]),
        .I1(s_axis_fir_tdata[190]),
        .I2(sel),
        .O(m_axis_tdata[190]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[191]_INST_0 
       (.I0(s_axis_tdata[191]),
        .I1(s_axis_fir_tdata[191]),
        .I2(sel),
        .O(m_axis_tdata[191]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[192]_INST_0 
       (.I0(s_axis_tdata[192]),
        .I1(s_axis_fir_tdata[192]),
        .I2(sel),
        .O(m_axis_tdata[192]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[193]_INST_0 
       (.I0(s_axis_tdata[193]),
        .I1(s_axis_fir_tdata[193]),
        .I2(sel),
        .O(m_axis_tdata[193]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[194]_INST_0 
       (.I0(s_axis_tdata[194]),
        .I1(s_axis_fir_tdata[194]),
        .I2(sel),
        .O(m_axis_tdata[194]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[195]_INST_0 
       (.I0(s_axis_tdata[195]),
        .I1(s_axis_fir_tdata[195]),
        .I2(sel),
        .O(m_axis_tdata[195]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[196]_INST_0 
       (.I0(s_axis_tdata[196]),
        .I1(s_axis_fir_tdata[196]),
        .I2(sel),
        .O(m_axis_tdata[196]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[197]_INST_0 
       (.I0(s_axis_tdata[197]),
        .I1(s_axis_fir_tdata[197]),
        .I2(sel),
        .O(m_axis_tdata[197]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[198]_INST_0 
       (.I0(s_axis_tdata[198]),
        .I1(s_axis_fir_tdata[198]),
        .I2(sel),
        .O(m_axis_tdata[198]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[199]_INST_0 
       (.I0(s_axis_tdata[199]),
        .I1(s_axis_fir_tdata[199]),
        .I2(sel),
        .O(m_axis_tdata[199]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(s_axis_tdata[19]),
        .I1(s_axis_fir_tdata[19]),
        .I2(sel),
        .O(m_axis_tdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(s_axis_tdata[1]),
        .I1(s_axis_fir_tdata[1]),
        .I2(sel),
        .O(m_axis_tdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[200]_INST_0 
       (.I0(s_axis_tdata[200]),
        .I1(s_axis_fir_tdata[200]),
        .I2(sel),
        .O(m_axis_tdata[200]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[201]_INST_0 
       (.I0(s_axis_tdata[201]),
        .I1(s_axis_fir_tdata[201]),
        .I2(sel),
        .O(m_axis_tdata[201]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[202]_INST_0 
       (.I0(s_axis_tdata[202]),
        .I1(s_axis_fir_tdata[202]),
        .I2(sel),
        .O(m_axis_tdata[202]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[203]_INST_0 
       (.I0(s_axis_tdata[203]),
        .I1(s_axis_fir_tdata[203]),
        .I2(sel),
        .O(m_axis_tdata[203]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[204]_INST_0 
       (.I0(s_axis_tdata[204]),
        .I1(s_axis_fir_tdata[204]),
        .I2(sel),
        .O(m_axis_tdata[204]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[205]_INST_0 
       (.I0(s_axis_tdata[205]),
        .I1(s_axis_fir_tdata[205]),
        .I2(sel),
        .O(m_axis_tdata[205]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[206]_INST_0 
       (.I0(s_axis_tdata[206]),
        .I1(s_axis_fir_tdata[206]),
        .I2(sel),
        .O(m_axis_tdata[206]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[207]_INST_0 
       (.I0(s_axis_tdata[207]),
        .I1(s_axis_fir_tdata[207]),
        .I2(sel),
        .O(m_axis_tdata[207]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[208]_INST_0 
       (.I0(s_axis_tdata[208]),
        .I1(s_axis_fir_tdata[208]),
        .I2(sel),
        .O(m_axis_tdata[208]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[209]_INST_0 
       (.I0(s_axis_tdata[209]),
        .I1(s_axis_fir_tdata[209]),
        .I2(sel),
        .O(m_axis_tdata[209]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(s_axis_tdata[20]),
        .I1(s_axis_fir_tdata[20]),
        .I2(sel),
        .O(m_axis_tdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[210]_INST_0 
       (.I0(s_axis_tdata[210]),
        .I1(s_axis_fir_tdata[210]),
        .I2(sel),
        .O(m_axis_tdata[210]));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[211]_INST_0 
       (.I0(s_axis_tdata[211]),
        .I1(s_axis_fir_tdata[211]),
        .I2(sel),
        .O(m_axis_tdata[211]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[212]_INST_0 
       (.I0(s_axis_tdata[212]),
        .I1(s_axis_fir_tdata[212]),
        .I2(sel),
        .O(m_axis_tdata[212]));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[213]_INST_0 
       (.I0(s_axis_tdata[213]),
        .I1(s_axis_fir_tdata[213]),
        .I2(sel),
        .O(m_axis_tdata[213]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[214]_INST_0 
       (.I0(s_axis_tdata[214]),
        .I1(s_axis_fir_tdata[214]),
        .I2(sel),
        .O(m_axis_tdata[214]));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[215]_INST_0 
       (.I0(s_axis_tdata[215]),
        .I1(s_axis_fir_tdata[215]),
        .I2(sel),
        .O(m_axis_tdata[215]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[216]_INST_0 
       (.I0(s_axis_tdata[216]),
        .I1(s_axis_fir_tdata[216]),
        .I2(sel),
        .O(m_axis_tdata[216]));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[217]_INST_0 
       (.I0(s_axis_tdata[217]),
        .I1(s_axis_fir_tdata[217]),
        .I2(sel),
        .O(m_axis_tdata[217]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[218]_INST_0 
       (.I0(s_axis_tdata[218]),
        .I1(s_axis_fir_tdata[218]),
        .I2(sel),
        .O(m_axis_tdata[218]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[219]_INST_0 
       (.I0(s_axis_tdata[219]),
        .I1(s_axis_fir_tdata[219]),
        .I2(sel),
        .O(m_axis_tdata[219]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(s_axis_tdata[21]),
        .I1(s_axis_fir_tdata[21]),
        .I2(sel),
        .O(m_axis_tdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[220]_INST_0 
       (.I0(s_axis_tdata[220]),
        .I1(s_axis_fir_tdata[220]),
        .I2(sel),
        .O(m_axis_tdata[220]));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[221]_INST_0 
       (.I0(s_axis_tdata[221]),
        .I1(s_axis_fir_tdata[221]),
        .I2(sel),
        .O(m_axis_tdata[221]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[222]_INST_0 
       (.I0(s_axis_tdata[222]),
        .I1(s_axis_fir_tdata[222]),
        .I2(sel),
        .O(m_axis_tdata[222]));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[223]_INST_0 
       (.I0(s_axis_tdata[223]),
        .I1(s_axis_fir_tdata[223]),
        .I2(sel),
        .O(m_axis_tdata[223]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[224]_INST_0 
       (.I0(s_axis_tdata[224]),
        .I1(s_axis_fir_tdata[224]),
        .I2(sel),
        .O(m_axis_tdata[224]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[225]_INST_0 
       (.I0(s_axis_tdata[225]),
        .I1(s_axis_fir_tdata[225]),
        .I2(sel),
        .O(m_axis_tdata[225]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[226]_INST_0 
       (.I0(s_axis_tdata[226]),
        .I1(s_axis_fir_tdata[226]),
        .I2(sel),
        .O(m_axis_tdata[226]));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[227]_INST_0 
       (.I0(s_axis_tdata[227]),
        .I1(s_axis_fir_tdata[227]),
        .I2(sel),
        .O(m_axis_tdata[227]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[228]_INST_0 
       (.I0(s_axis_tdata[228]),
        .I1(s_axis_fir_tdata[228]),
        .I2(sel),
        .O(m_axis_tdata[228]));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[229]_INST_0 
       (.I0(s_axis_tdata[229]),
        .I1(s_axis_fir_tdata[229]),
        .I2(sel),
        .O(m_axis_tdata[229]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(s_axis_tdata[22]),
        .I1(s_axis_fir_tdata[22]),
        .I2(sel),
        .O(m_axis_tdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[230]_INST_0 
       (.I0(s_axis_tdata[230]),
        .I1(s_axis_fir_tdata[230]),
        .I2(sel),
        .O(m_axis_tdata[230]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[231]_INST_0 
       (.I0(s_axis_tdata[231]),
        .I1(s_axis_fir_tdata[231]),
        .I2(sel),
        .O(m_axis_tdata[231]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[232]_INST_0 
       (.I0(s_axis_tdata[232]),
        .I1(s_axis_fir_tdata[232]),
        .I2(sel),
        .O(m_axis_tdata[232]));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[233]_INST_0 
       (.I0(s_axis_tdata[233]),
        .I1(s_axis_fir_tdata[233]),
        .I2(sel),
        .O(m_axis_tdata[233]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[234]_INST_0 
       (.I0(s_axis_tdata[234]),
        .I1(s_axis_fir_tdata[234]),
        .I2(sel),
        .O(m_axis_tdata[234]));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[235]_INST_0 
       (.I0(s_axis_tdata[235]),
        .I1(s_axis_fir_tdata[235]),
        .I2(sel),
        .O(m_axis_tdata[235]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[236]_INST_0 
       (.I0(s_axis_tdata[236]),
        .I1(s_axis_fir_tdata[236]),
        .I2(sel),
        .O(m_axis_tdata[236]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[237]_INST_0 
       (.I0(s_axis_tdata[237]),
        .I1(s_axis_fir_tdata[237]),
        .I2(sel),
        .O(m_axis_tdata[237]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[238]_INST_0 
       (.I0(s_axis_tdata[238]),
        .I1(s_axis_fir_tdata[238]),
        .I2(sel),
        .O(m_axis_tdata[238]));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[239]_INST_0 
       (.I0(s_axis_tdata[239]),
        .I1(s_axis_fir_tdata[239]),
        .I2(sel),
        .O(m_axis_tdata[239]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(s_axis_tdata[23]),
        .I1(s_axis_fir_tdata[23]),
        .I2(sel),
        .O(m_axis_tdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[240]_INST_0 
       (.I0(s_axis_tdata[240]),
        .I1(s_axis_fir_tdata[240]),
        .I2(sel),
        .O(m_axis_tdata[240]));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[241]_INST_0 
       (.I0(s_axis_tdata[241]),
        .I1(s_axis_fir_tdata[241]),
        .I2(sel),
        .O(m_axis_tdata[241]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[242]_INST_0 
       (.I0(s_axis_tdata[242]),
        .I1(s_axis_fir_tdata[242]),
        .I2(sel),
        .O(m_axis_tdata[242]));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[243]_INST_0 
       (.I0(s_axis_tdata[243]),
        .I1(s_axis_fir_tdata[243]),
        .I2(sel),
        .O(m_axis_tdata[243]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[244]_INST_0 
       (.I0(s_axis_tdata[244]),
        .I1(s_axis_fir_tdata[244]),
        .I2(sel),
        .O(m_axis_tdata[244]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[245]_INST_0 
       (.I0(s_axis_tdata[245]),
        .I1(s_axis_fir_tdata[245]),
        .I2(sel),
        .O(m_axis_tdata[245]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[246]_INST_0 
       (.I0(s_axis_tdata[246]),
        .I1(s_axis_fir_tdata[246]),
        .I2(sel),
        .O(m_axis_tdata[246]));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[247]_INST_0 
       (.I0(s_axis_tdata[247]),
        .I1(s_axis_fir_tdata[247]),
        .I2(sel),
        .O(m_axis_tdata[247]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[248]_INST_0 
       (.I0(s_axis_tdata[248]),
        .I1(s_axis_fir_tdata[248]),
        .I2(sel),
        .O(m_axis_tdata[248]));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[249]_INST_0 
       (.I0(s_axis_tdata[249]),
        .I1(s_axis_fir_tdata[249]),
        .I2(sel),
        .O(m_axis_tdata[249]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(s_axis_tdata[24]),
        .I1(s_axis_fir_tdata[24]),
        .I2(sel),
        .O(m_axis_tdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[250]_INST_0 
       (.I0(s_axis_tdata[250]),
        .I1(s_axis_fir_tdata[250]),
        .I2(sel),
        .O(m_axis_tdata[250]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[251]_INST_0 
       (.I0(s_axis_tdata[251]),
        .I1(s_axis_fir_tdata[251]),
        .I2(sel),
        .O(m_axis_tdata[251]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[252]_INST_0 
       (.I0(s_axis_tdata[252]),
        .I1(s_axis_fir_tdata[252]),
        .I2(sel),
        .O(m_axis_tdata[252]));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[253]_INST_0 
       (.I0(s_axis_tdata[253]),
        .I1(s_axis_fir_tdata[253]),
        .I2(sel),
        .O(m_axis_tdata[253]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[254]_INST_0 
       (.I0(s_axis_tdata[254]),
        .I1(s_axis_fir_tdata[254]),
        .I2(sel),
        .O(m_axis_tdata[254]));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[255]_INST_0 
       (.I0(s_axis_tdata[255]),
        .I1(s_axis_fir_tdata[255]),
        .I2(sel),
        .O(m_axis_tdata[255]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[256]_INST_0 
       (.I0(s_axis_tdata[256]),
        .I1(s_axis_fir_tdata[256]),
        .I2(sel),
        .O(m_axis_tdata[256]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[257]_INST_0 
       (.I0(s_axis_tdata[257]),
        .I1(s_axis_fir_tdata[257]),
        .I2(sel),
        .O(m_axis_tdata[257]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[258]_INST_0 
       (.I0(s_axis_tdata[258]),
        .I1(s_axis_fir_tdata[258]),
        .I2(sel),
        .O(m_axis_tdata[258]));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[259]_INST_0 
       (.I0(s_axis_tdata[259]),
        .I1(s_axis_fir_tdata[259]),
        .I2(sel),
        .O(m_axis_tdata[259]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(s_axis_tdata[25]),
        .I1(s_axis_fir_tdata[25]),
        .I2(sel),
        .O(m_axis_tdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[260]_INST_0 
       (.I0(s_axis_tdata[260]),
        .I1(s_axis_fir_tdata[260]),
        .I2(sel),
        .O(m_axis_tdata[260]));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[261]_INST_0 
       (.I0(s_axis_tdata[261]),
        .I1(s_axis_fir_tdata[261]),
        .I2(sel),
        .O(m_axis_tdata[261]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[262]_INST_0 
       (.I0(s_axis_tdata[262]),
        .I1(s_axis_fir_tdata[262]),
        .I2(sel),
        .O(m_axis_tdata[262]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[263]_INST_0 
       (.I0(s_axis_tdata[263]),
        .I1(s_axis_fir_tdata[263]),
        .I2(sel),
        .O(m_axis_tdata[263]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[264]_INST_0 
       (.I0(s_axis_tdata[264]),
        .I1(s_axis_fir_tdata[264]),
        .I2(sel),
        .O(m_axis_tdata[264]));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[265]_INST_0 
       (.I0(s_axis_tdata[265]),
        .I1(s_axis_fir_tdata[265]),
        .I2(sel),
        .O(m_axis_tdata[265]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[266]_INST_0 
       (.I0(s_axis_tdata[266]),
        .I1(s_axis_fir_tdata[266]),
        .I2(sel),
        .O(m_axis_tdata[266]));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[267]_INST_0 
       (.I0(s_axis_tdata[267]),
        .I1(s_axis_fir_tdata[267]),
        .I2(sel),
        .O(m_axis_tdata[267]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[268]_INST_0 
       (.I0(s_axis_tdata[268]),
        .I1(s_axis_fir_tdata[268]),
        .I2(sel),
        .O(m_axis_tdata[268]));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[269]_INST_0 
       (.I0(s_axis_tdata[269]),
        .I1(s_axis_fir_tdata[269]),
        .I2(sel),
        .O(m_axis_tdata[269]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(s_axis_tdata[26]),
        .I1(s_axis_fir_tdata[26]),
        .I2(sel),
        .O(m_axis_tdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[270]_INST_0 
       (.I0(s_axis_tdata[270]),
        .I1(s_axis_fir_tdata[270]),
        .I2(sel),
        .O(m_axis_tdata[270]));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[271]_INST_0 
       (.I0(s_axis_tdata[271]),
        .I1(s_axis_fir_tdata[271]),
        .I2(sel),
        .O(m_axis_tdata[271]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[272]_INST_0 
       (.I0(s_axis_tdata[272]),
        .I1(s_axis_fir_tdata[272]),
        .I2(sel),
        .O(m_axis_tdata[272]));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[273]_INST_0 
       (.I0(s_axis_tdata[273]),
        .I1(s_axis_fir_tdata[273]),
        .I2(sel),
        .O(m_axis_tdata[273]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[274]_INST_0 
       (.I0(s_axis_tdata[274]),
        .I1(s_axis_fir_tdata[274]),
        .I2(sel),
        .O(m_axis_tdata[274]));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[275]_INST_0 
       (.I0(s_axis_tdata[275]),
        .I1(s_axis_fir_tdata[275]),
        .I2(sel),
        .O(m_axis_tdata[275]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[276]_INST_0 
       (.I0(s_axis_tdata[276]),
        .I1(s_axis_fir_tdata[276]),
        .I2(sel),
        .O(m_axis_tdata[276]));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[277]_INST_0 
       (.I0(s_axis_tdata[277]),
        .I1(s_axis_fir_tdata[277]),
        .I2(sel),
        .O(m_axis_tdata[277]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[278]_INST_0 
       (.I0(s_axis_tdata[278]),
        .I1(s_axis_fir_tdata[278]),
        .I2(sel),
        .O(m_axis_tdata[278]));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[279]_INST_0 
       (.I0(s_axis_tdata[279]),
        .I1(s_axis_fir_tdata[279]),
        .I2(sel),
        .O(m_axis_tdata[279]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(s_axis_tdata[27]),
        .I1(s_axis_fir_tdata[27]),
        .I2(sel),
        .O(m_axis_tdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[280]_INST_0 
       (.I0(s_axis_tdata[280]),
        .I1(s_axis_fir_tdata[280]),
        .I2(sel),
        .O(m_axis_tdata[280]));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[281]_INST_0 
       (.I0(s_axis_tdata[281]),
        .I1(s_axis_fir_tdata[281]),
        .I2(sel),
        .O(m_axis_tdata[281]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[282]_INST_0 
       (.I0(s_axis_tdata[282]),
        .I1(s_axis_fir_tdata[282]),
        .I2(sel),
        .O(m_axis_tdata[282]));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[283]_INST_0 
       (.I0(s_axis_tdata[283]),
        .I1(s_axis_fir_tdata[283]),
        .I2(sel),
        .O(m_axis_tdata[283]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[284]_INST_0 
       (.I0(s_axis_tdata[284]),
        .I1(s_axis_fir_tdata[284]),
        .I2(sel),
        .O(m_axis_tdata[284]));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[285]_INST_0 
       (.I0(s_axis_tdata[285]),
        .I1(s_axis_fir_tdata[285]),
        .I2(sel),
        .O(m_axis_tdata[285]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[286]_INST_0 
       (.I0(s_axis_tdata[286]),
        .I1(s_axis_fir_tdata[286]),
        .I2(sel),
        .O(m_axis_tdata[286]));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[287]_INST_0 
       (.I0(s_axis_tdata[287]),
        .I1(s_axis_fir_tdata[287]),
        .I2(sel),
        .O(m_axis_tdata[287]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[288]_INST_0 
       (.I0(s_axis_tdata[288]),
        .I1(s_axis_fir_tdata[288]),
        .I2(sel),
        .O(m_axis_tdata[288]));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[289]_INST_0 
       (.I0(s_axis_tdata[289]),
        .I1(s_axis_fir_tdata[289]),
        .I2(sel),
        .O(m_axis_tdata[289]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(s_axis_tdata[28]),
        .I1(s_axis_fir_tdata[28]),
        .I2(sel),
        .O(m_axis_tdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[290]_INST_0 
       (.I0(s_axis_tdata[290]),
        .I1(s_axis_fir_tdata[290]),
        .I2(sel),
        .O(m_axis_tdata[290]));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[291]_INST_0 
       (.I0(s_axis_tdata[291]),
        .I1(s_axis_fir_tdata[291]),
        .I2(sel),
        .O(m_axis_tdata[291]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[292]_INST_0 
       (.I0(s_axis_tdata[292]),
        .I1(s_axis_fir_tdata[292]),
        .I2(sel),
        .O(m_axis_tdata[292]));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[293]_INST_0 
       (.I0(s_axis_tdata[293]),
        .I1(s_axis_fir_tdata[293]),
        .I2(sel),
        .O(m_axis_tdata[293]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[294]_INST_0 
       (.I0(s_axis_tdata[294]),
        .I1(s_axis_fir_tdata[294]),
        .I2(sel),
        .O(m_axis_tdata[294]));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[295]_INST_0 
       (.I0(s_axis_tdata[295]),
        .I1(s_axis_fir_tdata[295]),
        .I2(sel),
        .O(m_axis_tdata[295]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[296]_INST_0 
       (.I0(s_axis_tdata[296]),
        .I1(s_axis_fir_tdata[296]),
        .I2(sel),
        .O(m_axis_tdata[296]));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[297]_INST_0 
       (.I0(s_axis_tdata[297]),
        .I1(s_axis_fir_tdata[297]),
        .I2(sel),
        .O(m_axis_tdata[297]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[298]_INST_0 
       (.I0(s_axis_tdata[298]),
        .I1(s_axis_fir_tdata[298]),
        .I2(sel),
        .O(m_axis_tdata[298]));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[299]_INST_0 
       (.I0(s_axis_tdata[299]),
        .I1(s_axis_fir_tdata[299]),
        .I2(sel),
        .O(m_axis_tdata[299]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(s_axis_tdata[29]),
        .I1(s_axis_fir_tdata[29]),
        .I2(sel),
        .O(m_axis_tdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(s_axis_tdata[2]),
        .I1(s_axis_fir_tdata[2]),
        .I2(sel),
        .O(m_axis_tdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[300]_INST_0 
       (.I0(s_axis_tdata[300]),
        .I1(s_axis_fir_tdata[300]),
        .I2(sel),
        .O(m_axis_tdata[300]));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[301]_INST_0 
       (.I0(s_axis_tdata[301]),
        .I1(s_axis_fir_tdata[301]),
        .I2(sel),
        .O(m_axis_tdata[301]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[302]_INST_0 
       (.I0(s_axis_tdata[302]),
        .I1(s_axis_fir_tdata[302]),
        .I2(sel),
        .O(m_axis_tdata[302]));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[303]_INST_0 
       (.I0(s_axis_tdata[303]),
        .I1(s_axis_fir_tdata[303]),
        .I2(sel),
        .O(m_axis_tdata[303]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[304]_INST_0 
       (.I0(s_axis_tdata[304]),
        .I1(s_axis_fir_tdata[304]),
        .I2(sel),
        .O(m_axis_tdata[304]));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[305]_INST_0 
       (.I0(s_axis_tdata[305]),
        .I1(s_axis_fir_tdata[305]),
        .I2(sel),
        .O(m_axis_tdata[305]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[306]_INST_0 
       (.I0(s_axis_tdata[306]),
        .I1(s_axis_fir_tdata[306]),
        .I2(sel),
        .O(m_axis_tdata[306]));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[307]_INST_0 
       (.I0(s_axis_tdata[307]),
        .I1(s_axis_fir_tdata[307]),
        .I2(sel),
        .O(m_axis_tdata[307]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[308]_INST_0 
       (.I0(s_axis_tdata[308]),
        .I1(s_axis_fir_tdata[308]),
        .I2(sel),
        .O(m_axis_tdata[308]));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[309]_INST_0 
       (.I0(s_axis_tdata[309]),
        .I1(s_axis_fir_tdata[309]),
        .I2(sel),
        .O(m_axis_tdata[309]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(s_axis_tdata[30]),
        .I1(s_axis_fir_tdata[30]),
        .I2(sel),
        .O(m_axis_tdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[310]_INST_0 
       (.I0(s_axis_tdata[310]),
        .I1(s_axis_fir_tdata[310]),
        .I2(sel),
        .O(m_axis_tdata[310]));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[311]_INST_0 
       (.I0(s_axis_tdata[311]),
        .I1(s_axis_fir_tdata[311]),
        .I2(sel),
        .O(m_axis_tdata[311]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[312]_INST_0 
       (.I0(s_axis_tdata[312]),
        .I1(s_axis_fir_tdata[312]),
        .I2(sel),
        .O(m_axis_tdata[312]));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[313]_INST_0 
       (.I0(s_axis_tdata[313]),
        .I1(s_axis_fir_tdata[313]),
        .I2(sel),
        .O(m_axis_tdata[313]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[314]_INST_0 
       (.I0(s_axis_tdata[314]),
        .I1(s_axis_fir_tdata[314]),
        .I2(sel),
        .O(m_axis_tdata[314]));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[315]_INST_0 
       (.I0(s_axis_tdata[315]),
        .I1(s_axis_fir_tdata[315]),
        .I2(sel),
        .O(m_axis_tdata[315]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[316]_INST_0 
       (.I0(s_axis_tdata[316]),
        .I1(s_axis_fir_tdata[316]),
        .I2(sel),
        .O(m_axis_tdata[316]));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[317]_INST_0 
       (.I0(s_axis_tdata[317]),
        .I1(s_axis_fir_tdata[317]),
        .I2(sel),
        .O(m_axis_tdata[317]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[318]_INST_0 
       (.I0(s_axis_tdata[318]),
        .I1(s_axis_fir_tdata[318]),
        .I2(sel),
        .O(m_axis_tdata[318]));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[319]_INST_0 
       (.I0(s_axis_tdata[319]),
        .I1(s_axis_fir_tdata[319]),
        .I2(sel),
        .O(m_axis_tdata[319]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(s_axis_tdata[31]),
        .I1(s_axis_fir_tdata[31]),
        .I2(sel),
        .O(m_axis_tdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[320]_INST_0 
       (.I0(s_axis_tdata[320]),
        .I1(s_axis_fir_tdata[320]),
        .I2(sel),
        .O(m_axis_tdata[320]));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[321]_INST_0 
       (.I0(s_axis_tdata[321]),
        .I1(s_axis_fir_tdata[321]),
        .I2(sel),
        .O(m_axis_tdata[321]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[322]_INST_0 
       (.I0(s_axis_tdata[322]),
        .I1(s_axis_fir_tdata[322]),
        .I2(sel),
        .O(m_axis_tdata[322]));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[323]_INST_0 
       (.I0(s_axis_tdata[323]),
        .I1(s_axis_fir_tdata[323]),
        .I2(sel),
        .O(m_axis_tdata[323]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[324]_INST_0 
       (.I0(s_axis_tdata[324]),
        .I1(s_axis_fir_tdata[324]),
        .I2(sel),
        .O(m_axis_tdata[324]));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[325]_INST_0 
       (.I0(s_axis_tdata[325]),
        .I1(s_axis_fir_tdata[325]),
        .I2(sel),
        .O(m_axis_tdata[325]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[326]_INST_0 
       (.I0(s_axis_tdata[326]),
        .I1(s_axis_fir_tdata[326]),
        .I2(sel),
        .O(m_axis_tdata[326]));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[327]_INST_0 
       (.I0(s_axis_tdata[327]),
        .I1(s_axis_fir_tdata[327]),
        .I2(sel),
        .O(m_axis_tdata[327]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[328]_INST_0 
       (.I0(s_axis_tdata[328]),
        .I1(s_axis_fir_tdata[328]),
        .I2(sel),
        .O(m_axis_tdata[328]));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[329]_INST_0 
       (.I0(s_axis_tdata[329]),
        .I1(s_axis_fir_tdata[329]),
        .I2(sel),
        .O(m_axis_tdata[329]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[32]_INST_0 
       (.I0(s_axis_tdata[32]),
        .I1(s_axis_fir_tdata[32]),
        .I2(sel),
        .O(m_axis_tdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[330]_INST_0 
       (.I0(s_axis_tdata[330]),
        .I1(s_axis_fir_tdata[330]),
        .I2(sel),
        .O(m_axis_tdata[330]));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[331]_INST_0 
       (.I0(s_axis_tdata[331]),
        .I1(s_axis_fir_tdata[331]),
        .I2(sel),
        .O(m_axis_tdata[331]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[332]_INST_0 
       (.I0(s_axis_tdata[332]),
        .I1(s_axis_fir_tdata[332]),
        .I2(sel),
        .O(m_axis_tdata[332]));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[333]_INST_0 
       (.I0(s_axis_tdata[333]),
        .I1(s_axis_fir_tdata[333]),
        .I2(sel),
        .O(m_axis_tdata[333]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[334]_INST_0 
       (.I0(s_axis_tdata[334]),
        .I1(s_axis_fir_tdata[334]),
        .I2(sel),
        .O(m_axis_tdata[334]));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[335]_INST_0 
       (.I0(s_axis_tdata[335]),
        .I1(s_axis_fir_tdata[335]),
        .I2(sel),
        .O(m_axis_tdata[335]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[336]_INST_0 
       (.I0(s_axis_tdata[336]),
        .I1(s_axis_fir_tdata[336]),
        .I2(sel),
        .O(m_axis_tdata[336]));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[337]_INST_0 
       (.I0(s_axis_tdata[337]),
        .I1(s_axis_fir_tdata[337]),
        .I2(sel),
        .O(m_axis_tdata[337]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[338]_INST_0 
       (.I0(s_axis_tdata[338]),
        .I1(s_axis_fir_tdata[338]),
        .I2(sel),
        .O(m_axis_tdata[338]));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[339]_INST_0 
       (.I0(s_axis_tdata[339]),
        .I1(s_axis_fir_tdata[339]),
        .I2(sel),
        .O(m_axis_tdata[339]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[33]_INST_0 
       (.I0(s_axis_tdata[33]),
        .I1(s_axis_fir_tdata[33]),
        .I2(sel),
        .O(m_axis_tdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[340]_INST_0 
       (.I0(s_axis_tdata[340]),
        .I1(s_axis_fir_tdata[340]),
        .I2(sel),
        .O(m_axis_tdata[340]));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[341]_INST_0 
       (.I0(s_axis_tdata[341]),
        .I1(s_axis_fir_tdata[341]),
        .I2(sel),
        .O(m_axis_tdata[341]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[342]_INST_0 
       (.I0(s_axis_tdata[342]),
        .I1(s_axis_fir_tdata[342]),
        .I2(sel),
        .O(m_axis_tdata[342]));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[343]_INST_0 
       (.I0(s_axis_tdata[343]),
        .I1(s_axis_fir_tdata[343]),
        .I2(sel),
        .O(m_axis_tdata[343]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[344]_INST_0 
       (.I0(s_axis_tdata[344]),
        .I1(s_axis_fir_tdata[344]),
        .I2(sel),
        .O(m_axis_tdata[344]));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[345]_INST_0 
       (.I0(s_axis_tdata[345]),
        .I1(s_axis_fir_tdata[345]),
        .I2(sel),
        .O(m_axis_tdata[345]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[346]_INST_0 
       (.I0(s_axis_tdata[346]),
        .I1(s_axis_fir_tdata[346]),
        .I2(sel),
        .O(m_axis_tdata[346]));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[347]_INST_0 
       (.I0(s_axis_tdata[347]),
        .I1(s_axis_fir_tdata[347]),
        .I2(sel),
        .O(m_axis_tdata[347]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[348]_INST_0 
       (.I0(s_axis_tdata[348]),
        .I1(s_axis_fir_tdata[348]),
        .I2(sel),
        .O(m_axis_tdata[348]));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[349]_INST_0 
       (.I0(s_axis_tdata[349]),
        .I1(s_axis_fir_tdata[349]),
        .I2(sel),
        .O(m_axis_tdata[349]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[34]_INST_0 
       (.I0(s_axis_tdata[34]),
        .I1(s_axis_fir_tdata[34]),
        .I2(sel),
        .O(m_axis_tdata[34]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[350]_INST_0 
       (.I0(s_axis_tdata[350]),
        .I1(s_axis_fir_tdata[350]),
        .I2(sel),
        .O(m_axis_tdata[350]));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[351]_INST_0 
       (.I0(s_axis_tdata[351]),
        .I1(s_axis_fir_tdata[351]),
        .I2(sel),
        .O(m_axis_tdata[351]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[352]_INST_0 
       (.I0(s_axis_tdata[352]),
        .I1(s_axis_fir_tdata[352]),
        .I2(sel),
        .O(m_axis_tdata[352]));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[353]_INST_0 
       (.I0(s_axis_tdata[353]),
        .I1(s_axis_fir_tdata[353]),
        .I2(sel),
        .O(m_axis_tdata[353]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[354]_INST_0 
       (.I0(s_axis_tdata[354]),
        .I1(s_axis_fir_tdata[354]),
        .I2(sel),
        .O(m_axis_tdata[354]));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[355]_INST_0 
       (.I0(s_axis_tdata[355]),
        .I1(s_axis_fir_tdata[355]),
        .I2(sel),
        .O(m_axis_tdata[355]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[356]_INST_0 
       (.I0(s_axis_tdata[356]),
        .I1(s_axis_fir_tdata[356]),
        .I2(sel),
        .O(m_axis_tdata[356]));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[357]_INST_0 
       (.I0(s_axis_tdata[357]),
        .I1(s_axis_fir_tdata[357]),
        .I2(sel),
        .O(m_axis_tdata[357]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[358]_INST_0 
       (.I0(s_axis_tdata[358]),
        .I1(s_axis_fir_tdata[358]),
        .I2(sel),
        .O(m_axis_tdata[358]));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[359]_INST_0 
       (.I0(s_axis_tdata[359]),
        .I1(s_axis_fir_tdata[359]),
        .I2(sel),
        .O(m_axis_tdata[359]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[35]_INST_0 
       (.I0(s_axis_tdata[35]),
        .I1(s_axis_fir_tdata[35]),
        .I2(sel),
        .O(m_axis_tdata[35]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[360]_INST_0 
       (.I0(s_axis_tdata[360]),
        .I1(s_axis_fir_tdata[360]),
        .I2(sel),
        .O(m_axis_tdata[360]));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[361]_INST_0 
       (.I0(s_axis_tdata[361]),
        .I1(s_axis_fir_tdata[361]),
        .I2(sel),
        .O(m_axis_tdata[361]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[362]_INST_0 
       (.I0(s_axis_tdata[362]),
        .I1(s_axis_fir_tdata[362]),
        .I2(sel),
        .O(m_axis_tdata[362]));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[363]_INST_0 
       (.I0(s_axis_tdata[363]),
        .I1(s_axis_fir_tdata[363]),
        .I2(sel),
        .O(m_axis_tdata[363]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[364]_INST_0 
       (.I0(s_axis_tdata[364]),
        .I1(s_axis_fir_tdata[364]),
        .I2(sel),
        .O(m_axis_tdata[364]));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[365]_INST_0 
       (.I0(s_axis_tdata[365]),
        .I1(s_axis_fir_tdata[365]),
        .I2(sel),
        .O(m_axis_tdata[365]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[366]_INST_0 
       (.I0(s_axis_tdata[366]),
        .I1(s_axis_fir_tdata[366]),
        .I2(sel),
        .O(m_axis_tdata[366]));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[367]_INST_0 
       (.I0(s_axis_tdata[367]),
        .I1(s_axis_fir_tdata[367]),
        .I2(sel),
        .O(m_axis_tdata[367]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[368]_INST_0 
       (.I0(s_axis_tdata[368]),
        .I1(s_axis_fir_tdata[368]),
        .I2(sel),
        .O(m_axis_tdata[368]));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[369]_INST_0 
       (.I0(s_axis_tdata[369]),
        .I1(s_axis_fir_tdata[369]),
        .I2(sel),
        .O(m_axis_tdata[369]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[36]_INST_0 
       (.I0(s_axis_tdata[36]),
        .I1(s_axis_fir_tdata[36]),
        .I2(sel),
        .O(m_axis_tdata[36]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[370]_INST_0 
       (.I0(s_axis_tdata[370]),
        .I1(s_axis_fir_tdata[370]),
        .I2(sel),
        .O(m_axis_tdata[370]));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[371]_INST_0 
       (.I0(s_axis_tdata[371]),
        .I1(s_axis_fir_tdata[371]),
        .I2(sel),
        .O(m_axis_tdata[371]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[372]_INST_0 
       (.I0(s_axis_tdata[372]),
        .I1(s_axis_fir_tdata[372]),
        .I2(sel),
        .O(m_axis_tdata[372]));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[373]_INST_0 
       (.I0(s_axis_tdata[373]),
        .I1(s_axis_fir_tdata[373]),
        .I2(sel),
        .O(m_axis_tdata[373]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[374]_INST_0 
       (.I0(s_axis_tdata[374]),
        .I1(s_axis_fir_tdata[374]),
        .I2(sel),
        .O(m_axis_tdata[374]));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[375]_INST_0 
       (.I0(s_axis_tdata[375]),
        .I1(s_axis_fir_tdata[375]),
        .I2(sel),
        .O(m_axis_tdata[375]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[376]_INST_0 
       (.I0(s_axis_tdata[376]),
        .I1(s_axis_fir_tdata[376]),
        .I2(sel),
        .O(m_axis_tdata[376]));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[377]_INST_0 
       (.I0(s_axis_tdata[377]),
        .I1(s_axis_fir_tdata[377]),
        .I2(sel),
        .O(m_axis_tdata[377]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[378]_INST_0 
       (.I0(s_axis_tdata[378]),
        .I1(s_axis_fir_tdata[378]),
        .I2(sel),
        .O(m_axis_tdata[378]));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[379]_INST_0 
       (.I0(s_axis_tdata[379]),
        .I1(s_axis_fir_tdata[379]),
        .I2(sel),
        .O(m_axis_tdata[379]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[37]_INST_0 
       (.I0(s_axis_tdata[37]),
        .I1(s_axis_fir_tdata[37]),
        .I2(sel),
        .O(m_axis_tdata[37]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[380]_INST_0 
       (.I0(s_axis_tdata[380]),
        .I1(s_axis_fir_tdata[380]),
        .I2(sel),
        .O(m_axis_tdata[380]));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[381]_INST_0 
       (.I0(s_axis_tdata[381]),
        .I1(s_axis_fir_tdata[381]),
        .I2(sel),
        .O(m_axis_tdata[381]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[382]_INST_0 
       (.I0(s_axis_tdata[382]),
        .I1(s_axis_fir_tdata[382]),
        .I2(sel),
        .O(m_axis_tdata[382]));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[383]_INST_0 
       (.I0(s_axis_tdata[383]),
        .I1(s_axis_fir_tdata[383]),
        .I2(sel),
        .O(m_axis_tdata[383]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[384]_INST_0 
       (.I0(s_axis_tdata[384]),
        .I1(s_axis_fir_tdata[384]),
        .I2(sel),
        .O(m_axis_tdata[384]));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[385]_INST_0 
       (.I0(s_axis_tdata[385]),
        .I1(s_axis_fir_tdata[385]),
        .I2(sel),
        .O(m_axis_tdata[385]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[386]_INST_0 
       (.I0(s_axis_tdata[386]),
        .I1(s_axis_fir_tdata[386]),
        .I2(sel),
        .O(m_axis_tdata[386]));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[387]_INST_0 
       (.I0(s_axis_tdata[387]),
        .I1(s_axis_fir_tdata[387]),
        .I2(sel),
        .O(m_axis_tdata[387]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[388]_INST_0 
       (.I0(s_axis_tdata[388]),
        .I1(s_axis_fir_tdata[388]),
        .I2(sel),
        .O(m_axis_tdata[388]));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[389]_INST_0 
       (.I0(s_axis_tdata[389]),
        .I1(s_axis_fir_tdata[389]),
        .I2(sel),
        .O(m_axis_tdata[389]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[38]_INST_0 
       (.I0(s_axis_tdata[38]),
        .I1(s_axis_fir_tdata[38]),
        .I2(sel),
        .O(m_axis_tdata[38]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[390]_INST_0 
       (.I0(s_axis_tdata[390]),
        .I1(s_axis_fir_tdata[390]),
        .I2(sel),
        .O(m_axis_tdata[390]));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[391]_INST_0 
       (.I0(s_axis_tdata[391]),
        .I1(s_axis_fir_tdata[391]),
        .I2(sel),
        .O(m_axis_tdata[391]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[392]_INST_0 
       (.I0(s_axis_tdata[392]),
        .I1(s_axis_fir_tdata[392]),
        .I2(sel),
        .O(m_axis_tdata[392]));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[393]_INST_0 
       (.I0(s_axis_tdata[393]),
        .I1(s_axis_fir_tdata[393]),
        .I2(sel),
        .O(m_axis_tdata[393]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[394]_INST_0 
       (.I0(s_axis_tdata[394]),
        .I1(s_axis_fir_tdata[394]),
        .I2(sel),
        .O(m_axis_tdata[394]));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[395]_INST_0 
       (.I0(s_axis_tdata[395]),
        .I1(s_axis_fir_tdata[395]),
        .I2(sel),
        .O(m_axis_tdata[395]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[396]_INST_0 
       (.I0(s_axis_tdata[396]),
        .I1(s_axis_fir_tdata[396]),
        .I2(sel),
        .O(m_axis_tdata[396]));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[397]_INST_0 
       (.I0(s_axis_tdata[397]),
        .I1(s_axis_fir_tdata[397]),
        .I2(sel),
        .O(m_axis_tdata[397]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[398]_INST_0 
       (.I0(s_axis_tdata[398]),
        .I1(s_axis_fir_tdata[398]),
        .I2(sel),
        .O(m_axis_tdata[398]));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[399]_INST_0 
       (.I0(s_axis_tdata[399]),
        .I1(s_axis_fir_tdata[399]),
        .I2(sel),
        .O(m_axis_tdata[399]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[39]_INST_0 
       (.I0(s_axis_tdata[39]),
        .I1(s_axis_fir_tdata[39]),
        .I2(sel),
        .O(m_axis_tdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(s_axis_tdata[3]),
        .I1(s_axis_fir_tdata[3]),
        .I2(sel),
        .O(m_axis_tdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[400]_INST_0 
       (.I0(s_axis_tdata[400]),
        .I1(s_axis_fir_tdata[400]),
        .I2(sel),
        .O(m_axis_tdata[400]));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[401]_INST_0 
       (.I0(s_axis_tdata[401]),
        .I1(s_axis_fir_tdata[401]),
        .I2(sel),
        .O(m_axis_tdata[401]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[402]_INST_0 
       (.I0(s_axis_tdata[402]),
        .I1(s_axis_fir_tdata[402]),
        .I2(sel),
        .O(m_axis_tdata[402]));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[403]_INST_0 
       (.I0(s_axis_tdata[403]),
        .I1(s_axis_fir_tdata[403]),
        .I2(sel),
        .O(m_axis_tdata[403]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[404]_INST_0 
       (.I0(s_axis_tdata[404]),
        .I1(s_axis_fir_tdata[404]),
        .I2(sel),
        .O(m_axis_tdata[404]));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[405]_INST_0 
       (.I0(s_axis_tdata[405]),
        .I1(s_axis_fir_tdata[405]),
        .I2(sel),
        .O(m_axis_tdata[405]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[406]_INST_0 
       (.I0(s_axis_tdata[406]),
        .I1(s_axis_fir_tdata[406]),
        .I2(sel),
        .O(m_axis_tdata[406]));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[407]_INST_0 
       (.I0(s_axis_tdata[407]),
        .I1(s_axis_fir_tdata[407]),
        .I2(sel),
        .O(m_axis_tdata[407]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[408]_INST_0 
       (.I0(s_axis_tdata[408]),
        .I1(s_axis_fir_tdata[408]),
        .I2(sel),
        .O(m_axis_tdata[408]));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[409]_INST_0 
       (.I0(s_axis_tdata[409]),
        .I1(s_axis_fir_tdata[409]),
        .I2(sel),
        .O(m_axis_tdata[409]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[40]_INST_0 
       (.I0(s_axis_tdata[40]),
        .I1(s_axis_fir_tdata[40]),
        .I2(sel),
        .O(m_axis_tdata[40]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[410]_INST_0 
       (.I0(s_axis_tdata[410]),
        .I1(s_axis_fir_tdata[410]),
        .I2(sel),
        .O(m_axis_tdata[410]));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[411]_INST_0 
       (.I0(s_axis_tdata[411]),
        .I1(s_axis_fir_tdata[411]),
        .I2(sel),
        .O(m_axis_tdata[411]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[412]_INST_0 
       (.I0(s_axis_tdata[412]),
        .I1(s_axis_fir_tdata[412]),
        .I2(sel),
        .O(m_axis_tdata[412]));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[413]_INST_0 
       (.I0(s_axis_tdata[413]),
        .I1(s_axis_fir_tdata[413]),
        .I2(sel),
        .O(m_axis_tdata[413]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[414]_INST_0 
       (.I0(s_axis_tdata[414]),
        .I1(s_axis_fir_tdata[414]),
        .I2(sel),
        .O(m_axis_tdata[414]));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[415]_INST_0 
       (.I0(s_axis_tdata[415]),
        .I1(s_axis_fir_tdata[415]),
        .I2(sel),
        .O(m_axis_tdata[415]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[416]_INST_0 
       (.I0(s_axis_tdata[416]),
        .I1(s_axis_fir_tdata[416]),
        .I2(sel),
        .O(m_axis_tdata[416]));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[417]_INST_0 
       (.I0(s_axis_tdata[417]),
        .I1(s_axis_fir_tdata[417]),
        .I2(sel),
        .O(m_axis_tdata[417]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[418]_INST_0 
       (.I0(s_axis_tdata[418]),
        .I1(s_axis_fir_tdata[418]),
        .I2(sel),
        .O(m_axis_tdata[418]));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[419]_INST_0 
       (.I0(s_axis_tdata[419]),
        .I1(s_axis_fir_tdata[419]),
        .I2(sel),
        .O(m_axis_tdata[419]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[41]_INST_0 
       (.I0(s_axis_tdata[41]),
        .I1(s_axis_fir_tdata[41]),
        .I2(sel),
        .O(m_axis_tdata[41]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[420]_INST_0 
       (.I0(s_axis_tdata[420]),
        .I1(s_axis_fir_tdata[420]),
        .I2(sel),
        .O(m_axis_tdata[420]));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[421]_INST_0 
       (.I0(s_axis_tdata[421]),
        .I1(s_axis_fir_tdata[421]),
        .I2(sel),
        .O(m_axis_tdata[421]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[422]_INST_0 
       (.I0(s_axis_tdata[422]),
        .I1(s_axis_fir_tdata[422]),
        .I2(sel),
        .O(m_axis_tdata[422]));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[423]_INST_0 
       (.I0(s_axis_tdata[423]),
        .I1(s_axis_fir_tdata[423]),
        .I2(sel),
        .O(m_axis_tdata[423]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[424]_INST_0 
       (.I0(s_axis_tdata[424]),
        .I1(s_axis_fir_tdata[424]),
        .I2(sel),
        .O(m_axis_tdata[424]));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[425]_INST_0 
       (.I0(s_axis_tdata[425]),
        .I1(s_axis_fir_tdata[425]),
        .I2(sel),
        .O(m_axis_tdata[425]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[426]_INST_0 
       (.I0(s_axis_tdata[426]),
        .I1(s_axis_fir_tdata[426]),
        .I2(sel),
        .O(m_axis_tdata[426]));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[427]_INST_0 
       (.I0(s_axis_tdata[427]),
        .I1(s_axis_fir_tdata[427]),
        .I2(sel),
        .O(m_axis_tdata[427]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[428]_INST_0 
       (.I0(s_axis_tdata[428]),
        .I1(s_axis_fir_tdata[428]),
        .I2(sel),
        .O(m_axis_tdata[428]));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[429]_INST_0 
       (.I0(s_axis_tdata[429]),
        .I1(s_axis_fir_tdata[429]),
        .I2(sel),
        .O(m_axis_tdata[429]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[42]_INST_0 
       (.I0(s_axis_tdata[42]),
        .I1(s_axis_fir_tdata[42]),
        .I2(sel),
        .O(m_axis_tdata[42]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[430]_INST_0 
       (.I0(s_axis_tdata[430]),
        .I1(s_axis_fir_tdata[430]),
        .I2(sel),
        .O(m_axis_tdata[430]));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[431]_INST_0 
       (.I0(s_axis_tdata[431]),
        .I1(s_axis_fir_tdata[431]),
        .I2(sel),
        .O(m_axis_tdata[431]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[432]_INST_0 
       (.I0(s_axis_tdata[432]),
        .I1(s_axis_fir_tdata[432]),
        .I2(sel),
        .O(m_axis_tdata[432]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[433]_INST_0 
       (.I0(s_axis_tdata[433]),
        .I1(s_axis_fir_tdata[433]),
        .I2(sel),
        .O(m_axis_tdata[433]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[434]_INST_0 
       (.I0(s_axis_tdata[434]),
        .I1(s_axis_fir_tdata[434]),
        .I2(sel),
        .O(m_axis_tdata[434]));
  (* SOFT_HLUTNM = "soft_lutpair217" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[435]_INST_0 
       (.I0(s_axis_tdata[435]),
        .I1(s_axis_fir_tdata[435]),
        .I2(sel),
        .O(m_axis_tdata[435]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[436]_INST_0 
       (.I0(s_axis_tdata[436]),
        .I1(s_axis_fir_tdata[436]),
        .I2(sel),
        .O(m_axis_tdata[436]));
  (* SOFT_HLUTNM = "soft_lutpair218" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[437]_INST_0 
       (.I0(s_axis_tdata[437]),
        .I1(s_axis_fir_tdata[437]),
        .I2(sel),
        .O(m_axis_tdata[437]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[438]_INST_0 
       (.I0(s_axis_tdata[438]),
        .I1(s_axis_fir_tdata[438]),
        .I2(sel),
        .O(m_axis_tdata[438]));
  (* SOFT_HLUTNM = "soft_lutpair219" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[439]_INST_0 
       (.I0(s_axis_tdata[439]),
        .I1(s_axis_fir_tdata[439]),
        .I2(sel),
        .O(m_axis_tdata[439]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[43]_INST_0 
       (.I0(s_axis_tdata[43]),
        .I1(s_axis_fir_tdata[43]),
        .I2(sel),
        .O(m_axis_tdata[43]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[440]_INST_0 
       (.I0(s_axis_tdata[440]),
        .I1(s_axis_fir_tdata[440]),
        .I2(sel),
        .O(m_axis_tdata[440]));
  (* SOFT_HLUTNM = "soft_lutpair220" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[441]_INST_0 
       (.I0(s_axis_tdata[441]),
        .I1(s_axis_fir_tdata[441]),
        .I2(sel),
        .O(m_axis_tdata[441]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[442]_INST_0 
       (.I0(s_axis_tdata[442]),
        .I1(s_axis_fir_tdata[442]),
        .I2(sel),
        .O(m_axis_tdata[442]));
  (* SOFT_HLUTNM = "soft_lutpair221" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[443]_INST_0 
       (.I0(s_axis_tdata[443]),
        .I1(s_axis_fir_tdata[443]),
        .I2(sel),
        .O(m_axis_tdata[443]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[444]_INST_0 
       (.I0(s_axis_tdata[444]),
        .I1(s_axis_fir_tdata[444]),
        .I2(sel),
        .O(m_axis_tdata[444]));
  (* SOFT_HLUTNM = "soft_lutpair222" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[445]_INST_0 
       (.I0(s_axis_tdata[445]),
        .I1(s_axis_fir_tdata[445]),
        .I2(sel),
        .O(m_axis_tdata[445]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[446]_INST_0 
       (.I0(s_axis_tdata[446]),
        .I1(s_axis_fir_tdata[446]),
        .I2(sel),
        .O(m_axis_tdata[446]));
  (* SOFT_HLUTNM = "soft_lutpair223" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[447]_INST_0 
       (.I0(s_axis_tdata[447]),
        .I1(s_axis_fir_tdata[447]),
        .I2(sel),
        .O(m_axis_tdata[447]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[448]_INST_0 
       (.I0(s_axis_tdata[448]),
        .I1(s_axis_fir_tdata[448]),
        .I2(sel),
        .O(m_axis_tdata[448]));
  (* SOFT_HLUTNM = "soft_lutpair224" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[449]_INST_0 
       (.I0(s_axis_tdata[449]),
        .I1(s_axis_fir_tdata[449]),
        .I2(sel),
        .O(m_axis_tdata[449]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[44]_INST_0 
       (.I0(s_axis_tdata[44]),
        .I1(s_axis_fir_tdata[44]),
        .I2(sel),
        .O(m_axis_tdata[44]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[450]_INST_0 
       (.I0(s_axis_tdata[450]),
        .I1(s_axis_fir_tdata[450]),
        .I2(sel),
        .O(m_axis_tdata[450]));
  (* SOFT_HLUTNM = "soft_lutpair225" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[451]_INST_0 
       (.I0(s_axis_tdata[451]),
        .I1(s_axis_fir_tdata[451]),
        .I2(sel),
        .O(m_axis_tdata[451]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[452]_INST_0 
       (.I0(s_axis_tdata[452]),
        .I1(s_axis_fir_tdata[452]),
        .I2(sel),
        .O(m_axis_tdata[452]));
  (* SOFT_HLUTNM = "soft_lutpair226" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[453]_INST_0 
       (.I0(s_axis_tdata[453]),
        .I1(s_axis_fir_tdata[453]),
        .I2(sel),
        .O(m_axis_tdata[453]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[454]_INST_0 
       (.I0(s_axis_tdata[454]),
        .I1(s_axis_fir_tdata[454]),
        .I2(sel),
        .O(m_axis_tdata[454]));
  (* SOFT_HLUTNM = "soft_lutpair227" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[455]_INST_0 
       (.I0(s_axis_tdata[455]),
        .I1(s_axis_fir_tdata[455]),
        .I2(sel),
        .O(m_axis_tdata[455]));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[456]_INST_0 
       (.I0(s_axis_tdata[456]),
        .I1(s_axis_fir_tdata[456]),
        .I2(sel),
        .O(m_axis_tdata[456]));
  (* SOFT_HLUTNM = "soft_lutpair228" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[457]_INST_0 
       (.I0(s_axis_tdata[457]),
        .I1(s_axis_fir_tdata[457]),
        .I2(sel),
        .O(m_axis_tdata[457]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[458]_INST_0 
       (.I0(s_axis_tdata[458]),
        .I1(s_axis_fir_tdata[458]),
        .I2(sel),
        .O(m_axis_tdata[458]));
  (* SOFT_HLUTNM = "soft_lutpair229" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[459]_INST_0 
       (.I0(s_axis_tdata[459]),
        .I1(s_axis_fir_tdata[459]),
        .I2(sel),
        .O(m_axis_tdata[459]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[45]_INST_0 
       (.I0(s_axis_tdata[45]),
        .I1(s_axis_fir_tdata[45]),
        .I2(sel),
        .O(m_axis_tdata[45]));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[460]_INST_0 
       (.I0(s_axis_tdata[460]),
        .I1(s_axis_fir_tdata[460]),
        .I2(sel),
        .O(m_axis_tdata[460]));
  (* SOFT_HLUTNM = "soft_lutpair230" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[461]_INST_0 
       (.I0(s_axis_tdata[461]),
        .I1(s_axis_fir_tdata[461]),
        .I2(sel),
        .O(m_axis_tdata[461]));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[462]_INST_0 
       (.I0(s_axis_tdata[462]),
        .I1(s_axis_fir_tdata[462]),
        .I2(sel),
        .O(m_axis_tdata[462]));
  (* SOFT_HLUTNM = "soft_lutpair231" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[463]_INST_0 
       (.I0(s_axis_tdata[463]),
        .I1(s_axis_fir_tdata[463]),
        .I2(sel),
        .O(m_axis_tdata[463]));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[464]_INST_0 
       (.I0(s_axis_tdata[464]),
        .I1(s_axis_fir_tdata[464]),
        .I2(sel),
        .O(m_axis_tdata[464]));
  (* SOFT_HLUTNM = "soft_lutpair232" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[465]_INST_0 
       (.I0(s_axis_tdata[465]),
        .I1(s_axis_fir_tdata[465]),
        .I2(sel),
        .O(m_axis_tdata[465]));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[466]_INST_0 
       (.I0(s_axis_tdata[466]),
        .I1(s_axis_fir_tdata[466]),
        .I2(sel),
        .O(m_axis_tdata[466]));
  (* SOFT_HLUTNM = "soft_lutpair233" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[467]_INST_0 
       (.I0(s_axis_tdata[467]),
        .I1(s_axis_fir_tdata[467]),
        .I2(sel),
        .O(m_axis_tdata[467]));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[468]_INST_0 
       (.I0(s_axis_tdata[468]),
        .I1(s_axis_fir_tdata[468]),
        .I2(sel),
        .O(m_axis_tdata[468]));
  (* SOFT_HLUTNM = "soft_lutpair234" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[469]_INST_0 
       (.I0(s_axis_tdata[469]),
        .I1(s_axis_fir_tdata[469]),
        .I2(sel),
        .O(m_axis_tdata[469]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[46]_INST_0 
       (.I0(s_axis_tdata[46]),
        .I1(s_axis_fir_tdata[46]),
        .I2(sel),
        .O(m_axis_tdata[46]));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[470]_INST_0 
       (.I0(s_axis_tdata[470]),
        .I1(s_axis_fir_tdata[470]),
        .I2(sel),
        .O(m_axis_tdata[470]));
  (* SOFT_HLUTNM = "soft_lutpair235" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[471]_INST_0 
       (.I0(s_axis_tdata[471]),
        .I1(s_axis_fir_tdata[471]),
        .I2(sel),
        .O(m_axis_tdata[471]));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[472]_INST_0 
       (.I0(s_axis_tdata[472]),
        .I1(s_axis_fir_tdata[472]),
        .I2(sel),
        .O(m_axis_tdata[472]));
  (* SOFT_HLUTNM = "soft_lutpair236" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[473]_INST_0 
       (.I0(s_axis_tdata[473]),
        .I1(s_axis_fir_tdata[473]),
        .I2(sel),
        .O(m_axis_tdata[473]));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[474]_INST_0 
       (.I0(s_axis_tdata[474]),
        .I1(s_axis_fir_tdata[474]),
        .I2(sel),
        .O(m_axis_tdata[474]));
  (* SOFT_HLUTNM = "soft_lutpair237" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[475]_INST_0 
       (.I0(s_axis_tdata[475]),
        .I1(s_axis_fir_tdata[475]),
        .I2(sel),
        .O(m_axis_tdata[475]));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[476]_INST_0 
       (.I0(s_axis_tdata[476]),
        .I1(s_axis_fir_tdata[476]),
        .I2(sel),
        .O(m_axis_tdata[476]));
  (* SOFT_HLUTNM = "soft_lutpair238" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[477]_INST_0 
       (.I0(s_axis_tdata[477]),
        .I1(s_axis_fir_tdata[477]),
        .I2(sel),
        .O(m_axis_tdata[477]));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[478]_INST_0 
       (.I0(s_axis_tdata[478]),
        .I1(s_axis_fir_tdata[478]),
        .I2(sel),
        .O(m_axis_tdata[478]));
  (* SOFT_HLUTNM = "soft_lutpair239" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[479]_INST_0 
       (.I0(s_axis_tdata[479]),
        .I1(s_axis_fir_tdata[479]),
        .I2(sel),
        .O(m_axis_tdata[479]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[47]_INST_0 
       (.I0(s_axis_tdata[47]),
        .I1(s_axis_fir_tdata[47]),
        .I2(sel),
        .O(m_axis_tdata[47]));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[480]_INST_0 
       (.I0(s_axis_tdata[480]),
        .I1(s_axis_fir_tdata[480]),
        .I2(sel),
        .O(m_axis_tdata[480]));
  (* SOFT_HLUTNM = "soft_lutpair240" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[481]_INST_0 
       (.I0(s_axis_tdata[481]),
        .I1(s_axis_fir_tdata[481]),
        .I2(sel),
        .O(m_axis_tdata[481]));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[482]_INST_0 
       (.I0(s_axis_tdata[482]),
        .I1(s_axis_fir_tdata[482]),
        .I2(sel),
        .O(m_axis_tdata[482]));
  (* SOFT_HLUTNM = "soft_lutpair241" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[483]_INST_0 
       (.I0(s_axis_tdata[483]),
        .I1(s_axis_fir_tdata[483]),
        .I2(sel),
        .O(m_axis_tdata[483]));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[484]_INST_0 
       (.I0(s_axis_tdata[484]),
        .I1(s_axis_fir_tdata[484]),
        .I2(sel),
        .O(m_axis_tdata[484]));
  (* SOFT_HLUTNM = "soft_lutpair242" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[485]_INST_0 
       (.I0(s_axis_tdata[485]),
        .I1(s_axis_fir_tdata[485]),
        .I2(sel),
        .O(m_axis_tdata[485]));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[486]_INST_0 
       (.I0(s_axis_tdata[486]),
        .I1(s_axis_fir_tdata[486]),
        .I2(sel),
        .O(m_axis_tdata[486]));
  (* SOFT_HLUTNM = "soft_lutpair243" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[487]_INST_0 
       (.I0(s_axis_tdata[487]),
        .I1(s_axis_fir_tdata[487]),
        .I2(sel),
        .O(m_axis_tdata[487]));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[488]_INST_0 
       (.I0(s_axis_tdata[488]),
        .I1(s_axis_fir_tdata[488]),
        .I2(sel),
        .O(m_axis_tdata[488]));
  (* SOFT_HLUTNM = "soft_lutpair244" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[489]_INST_0 
       (.I0(s_axis_tdata[489]),
        .I1(s_axis_fir_tdata[489]),
        .I2(sel),
        .O(m_axis_tdata[489]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[48]_INST_0 
       (.I0(s_axis_tdata[48]),
        .I1(s_axis_fir_tdata[48]),
        .I2(sel),
        .O(m_axis_tdata[48]));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[490]_INST_0 
       (.I0(s_axis_tdata[490]),
        .I1(s_axis_fir_tdata[490]),
        .I2(sel),
        .O(m_axis_tdata[490]));
  (* SOFT_HLUTNM = "soft_lutpair245" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[491]_INST_0 
       (.I0(s_axis_tdata[491]),
        .I1(s_axis_fir_tdata[491]),
        .I2(sel),
        .O(m_axis_tdata[491]));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[492]_INST_0 
       (.I0(s_axis_tdata[492]),
        .I1(s_axis_fir_tdata[492]),
        .I2(sel),
        .O(m_axis_tdata[492]));
  (* SOFT_HLUTNM = "soft_lutpair246" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[493]_INST_0 
       (.I0(s_axis_tdata[493]),
        .I1(s_axis_fir_tdata[493]),
        .I2(sel),
        .O(m_axis_tdata[493]));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[494]_INST_0 
       (.I0(s_axis_tdata[494]),
        .I1(s_axis_fir_tdata[494]),
        .I2(sel),
        .O(m_axis_tdata[494]));
  (* SOFT_HLUTNM = "soft_lutpair247" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[495]_INST_0 
       (.I0(s_axis_tdata[495]),
        .I1(s_axis_fir_tdata[495]),
        .I2(sel),
        .O(m_axis_tdata[495]));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[496]_INST_0 
       (.I0(s_axis_tdata[496]),
        .I1(s_axis_fir_tdata[496]),
        .I2(sel),
        .O(m_axis_tdata[496]));
  (* SOFT_HLUTNM = "soft_lutpair248" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[497]_INST_0 
       (.I0(s_axis_tdata[497]),
        .I1(s_axis_fir_tdata[497]),
        .I2(sel),
        .O(m_axis_tdata[497]));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[498]_INST_0 
       (.I0(s_axis_tdata[498]),
        .I1(s_axis_fir_tdata[498]),
        .I2(sel),
        .O(m_axis_tdata[498]));
  (* SOFT_HLUTNM = "soft_lutpair249" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[499]_INST_0 
       (.I0(s_axis_tdata[499]),
        .I1(s_axis_fir_tdata[499]),
        .I2(sel),
        .O(m_axis_tdata[499]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[49]_INST_0 
       (.I0(s_axis_tdata[49]),
        .I1(s_axis_fir_tdata[49]),
        .I2(sel),
        .O(m_axis_tdata[49]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(s_axis_tdata[4]),
        .I1(s_axis_fir_tdata[4]),
        .I2(sel),
        .O(m_axis_tdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[500]_INST_0 
       (.I0(s_axis_tdata[500]),
        .I1(s_axis_fir_tdata[500]),
        .I2(sel),
        .O(m_axis_tdata[500]));
  (* SOFT_HLUTNM = "soft_lutpair250" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[501]_INST_0 
       (.I0(s_axis_tdata[501]),
        .I1(s_axis_fir_tdata[501]),
        .I2(sel),
        .O(m_axis_tdata[501]));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[502]_INST_0 
       (.I0(s_axis_tdata[502]),
        .I1(s_axis_fir_tdata[502]),
        .I2(sel),
        .O(m_axis_tdata[502]));
  (* SOFT_HLUTNM = "soft_lutpair251" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[503]_INST_0 
       (.I0(s_axis_tdata[503]),
        .I1(s_axis_fir_tdata[503]),
        .I2(sel),
        .O(m_axis_tdata[503]));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[504]_INST_0 
       (.I0(s_axis_tdata[504]),
        .I1(s_axis_fir_tdata[504]),
        .I2(sel),
        .O(m_axis_tdata[504]));
  (* SOFT_HLUTNM = "soft_lutpair252" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[505]_INST_0 
       (.I0(s_axis_tdata[505]),
        .I1(s_axis_fir_tdata[505]),
        .I2(sel),
        .O(m_axis_tdata[505]));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[506]_INST_0 
       (.I0(s_axis_tdata[506]),
        .I1(s_axis_fir_tdata[506]),
        .I2(sel),
        .O(m_axis_tdata[506]));
  (* SOFT_HLUTNM = "soft_lutpair253" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[507]_INST_0 
       (.I0(s_axis_tdata[507]),
        .I1(s_axis_fir_tdata[507]),
        .I2(sel),
        .O(m_axis_tdata[507]));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[508]_INST_0 
       (.I0(s_axis_tdata[508]),
        .I1(s_axis_fir_tdata[508]),
        .I2(sel),
        .O(m_axis_tdata[508]));
  (* SOFT_HLUTNM = "soft_lutpair254" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[509]_INST_0 
       (.I0(s_axis_tdata[509]),
        .I1(s_axis_fir_tdata[509]),
        .I2(sel),
        .O(m_axis_tdata[509]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[50]_INST_0 
       (.I0(s_axis_tdata[50]),
        .I1(s_axis_fir_tdata[50]),
        .I2(sel),
        .O(m_axis_tdata[50]));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[510]_INST_0 
       (.I0(s_axis_tdata[510]),
        .I1(s_axis_fir_tdata[510]),
        .I2(sel),
        .O(m_axis_tdata[510]));
  (* SOFT_HLUTNM = "soft_lutpair255" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[511]_INST_0 
       (.I0(s_axis_tdata[511]),
        .I1(s_axis_fir_tdata[511]),
        .I2(sel),
        .O(m_axis_tdata[511]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[51]_INST_0 
       (.I0(s_axis_tdata[51]),
        .I1(s_axis_fir_tdata[51]),
        .I2(sel),
        .O(m_axis_tdata[51]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[52]_INST_0 
       (.I0(s_axis_tdata[52]),
        .I1(s_axis_fir_tdata[52]),
        .I2(sel),
        .O(m_axis_tdata[52]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[53]_INST_0 
       (.I0(s_axis_tdata[53]),
        .I1(s_axis_fir_tdata[53]),
        .I2(sel),
        .O(m_axis_tdata[53]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[54]_INST_0 
       (.I0(s_axis_tdata[54]),
        .I1(s_axis_fir_tdata[54]),
        .I2(sel),
        .O(m_axis_tdata[54]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[55]_INST_0 
       (.I0(s_axis_tdata[55]),
        .I1(s_axis_fir_tdata[55]),
        .I2(sel),
        .O(m_axis_tdata[55]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[56]_INST_0 
       (.I0(s_axis_tdata[56]),
        .I1(s_axis_fir_tdata[56]),
        .I2(sel),
        .O(m_axis_tdata[56]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[57]_INST_0 
       (.I0(s_axis_tdata[57]),
        .I1(s_axis_fir_tdata[57]),
        .I2(sel),
        .O(m_axis_tdata[57]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[58]_INST_0 
       (.I0(s_axis_tdata[58]),
        .I1(s_axis_fir_tdata[58]),
        .I2(sel),
        .O(m_axis_tdata[58]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[59]_INST_0 
       (.I0(s_axis_tdata[59]),
        .I1(s_axis_fir_tdata[59]),
        .I2(sel),
        .O(m_axis_tdata[59]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(s_axis_tdata[5]),
        .I1(s_axis_fir_tdata[5]),
        .I2(sel),
        .O(m_axis_tdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[60]_INST_0 
       (.I0(s_axis_tdata[60]),
        .I1(s_axis_fir_tdata[60]),
        .I2(sel),
        .O(m_axis_tdata[60]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[61]_INST_0 
       (.I0(s_axis_tdata[61]),
        .I1(s_axis_fir_tdata[61]),
        .I2(sel),
        .O(m_axis_tdata[61]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[62]_INST_0 
       (.I0(s_axis_tdata[62]),
        .I1(s_axis_fir_tdata[62]),
        .I2(sel),
        .O(m_axis_tdata[62]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[63]_INST_0 
       (.I0(s_axis_tdata[63]),
        .I1(s_axis_fir_tdata[63]),
        .I2(sel),
        .O(m_axis_tdata[63]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[64]_INST_0 
       (.I0(s_axis_tdata[64]),
        .I1(s_axis_fir_tdata[64]),
        .I2(sel),
        .O(m_axis_tdata[64]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[65]_INST_0 
       (.I0(s_axis_tdata[65]),
        .I1(s_axis_fir_tdata[65]),
        .I2(sel),
        .O(m_axis_tdata[65]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[66]_INST_0 
       (.I0(s_axis_tdata[66]),
        .I1(s_axis_fir_tdata[66]),
        .I2(sel),
        .O(m_axis_tdata[66]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[67]_INST_0 
       (.I0(s_axis_tdata[67]),
        .I1(s_axis_fir_tdata[67]),
        .I2(sel),
        .O(m_axis_tdata[67]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[68]_INST_0 
       (.I0(s_axis_tdata[68]),
        .I1(s_axis_fir_tdata[68]),
        .I2(sel),
        .O(m_axis_tdata[68]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[69]_INST_0 
       (.I0(s_axis_tdata[69]),
        .I1(s_axis_fir_tdata[69]),
        .I2(sel),
        .O(m_axis_tdata[69]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(s_axis_tdata[6]),
        .I1(s_axis_fir_tdata[6]),
        .I2(sel),
        .O(m_axis_tdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[70]_INST_0 
       (.I0(s_axis_tdata[70]),
        .I1(s_axis_fir_tdata[70]),
        .I2(sel),
        .O(m_axis_tdata[70]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[71]_INST_0 
       (.I0(s_axis_tdata[71]),
        .I1(s_axis_fir_tdata[71]),
        .I2(sel),
        .O(m_axis_tdata[71]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[72]_INST_0 
       (.I0(s_axis_tdata[72]),
        .I1(s_axis_fir_tdata[72]),
        .I2(sel),
        .O(m_axis_tdata[72]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[73]_INST_0 
       (.I0(s_axis_tdata[73]),
        .I1(s_axis_fir_tdata[73]),
        .I2(sel),
        .O(m_axis_tdata[73]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[74]_INST_0 
       (.I0(s_axis_tdata[74]),
        .I1(s_axis_fir_tdata[74]),
        .I2(sel),
        .O(m_axis_tdata[74]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[75]_INST_0 
       (.I0(s_axis_tdata[75]),
        .I1(s_axis_fir_tdata[75]),
        .I2(sel),
        .O(m_axis_tdata[75]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[76]_INST_0 
       (.I0(s_axis_tdata[76]),
        .I1(s_axis_fir_tdata[76]),
        .I2(sel),
        .O(m_axis_tdata[76]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[77]_INST_0 
       (.I0(s_axis_tdata[77]),
        .I1(s_axis_fir_tdata[77]),
        .I2(sel),
        .O(m_axis_tdata[77]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[78]_INST_0 
       (.I0(s_axis_tdata[78]),
        .I1(s_axis_fir_tdata[78]),
        .I2(sel),
        .O(m_axis_tdata[78]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[79]_INST_0 
       (.I0(s_axis_tdata[79]),
        .I1(s_axis_fir_tdata[79]),
        .I2(sel),
        .O(m_axis_tdata[79]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(s_axis_tdata[7]),
        .I1(s_axis_fir_tdata[7]),
        .I2(sel),
        .O(m_axis_tdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[80]_INST_0 
       (.I0(s_axis_tdata[80]),
        .I1(s_axis_fir_tdata[80]),
        .I2(sel),
        .O(m_axis_tdata[80]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[81]_INST_0 
       (.I0(s_axis_tdata[81]),
        .I1(s_axis_fir_tdata[81]),
        .I2(sel),
        .O(m_axis_tdata[81]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[82]_INST_0 
       (.I0(s_axis_tdata[82]),
        .I1(s_axis_fir_tdata[82]),
        .I2(sel),
        .O(m_axis_tdata[82]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[83]_INST_0 
       (.I0(s_axis_tdata[83]),
        .I1(s_axis_fir_tdata[83]),
        .I2(sel),
        .O(m_axis_tdata[83]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[84]_INST_0 
       (.I0(s_axis_tdata[84]),
        .I1(s_axis_fir_tdata[84]),
        .I2(sel),
        .O(m_axis_tdata[84]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[85]_INST_0 
       (.I0(s_axis_tdata[85]),
        .I1(s_axis_fir_tdata[85]),
        .I2(sel),
        .O(m_axis_tdata[85]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[86]_INST_0 
       (.I0(s_axis_tdata[86]),
        .I1(s_axis_fir_tdata[86]),
        .I2(sel),
        .O(m_axis_tdata[86]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[87]_INST_0 
       (.I0(s_axis_tdata[87]),
        .I1(s_axis_fir_tdata[87]),
        .I2(sel),
        .O(m_axis_tdata[87]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[88]_INST_0 
       (.I0(s_axis_tdata[88]),
        .I1(s_axis_fir_tdata[88]),
        .I2(sel),
        .O(m_axis_tdata[88]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[89]_INST_0 
       (.I0(s_axis_tdata[89]),
        .I1(s_axis_fir_tdata[89]),
        .I2(sel),
        .O(m_axis_tdata[89]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(s_axis_tdata[8]),
        .I1(s_axis_fir_tdata[8]),
        .I2(sel),
        .O(m_axis_tdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[90]_INST_0 
       (.I0(s_axis_tdata[90]),
        .I1(s_axis_fir_tdata[90]),
        .I2(sel),
        .O(m_axis_tdata[90]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[91]_INST_0 
       (.I0(s_axis_tdata[91]),
        .I1(s_axis_fir_tdata[91]),
        .I2(sel),
        .O(m_axis_tdata[91]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[92]_INST_0 
       (.I0(s_axis_tdata[92]),
        .I1(s_axis_fir_tdata[92]),
        .I2(sel),
        .O(m_axis_tdata[92]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[93]_INST_0 
       (.I0(s_axis_tdata[93]),
        .I1(s_axis_fir_tdata[93]),
        .I2(sel),
        .O(m_axis_tdata[93]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[94]_INST_0 
       (.I0(s_axis_tdata[94]),
        .I1(s_axis_fir_tdata[94]),
        .I2(sel),
        .O(m_axis_tdata[94]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[95]_INST_0 
       (.I0(s_axis_tdata[95]),
        .I1(s_axis_fir_tdata[95]),
        .I2(sel),
        .O(m_axis_tdata[95]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[96]_INST_0 
       (.I0(s_axis_tdata[96]),
        .I1(s_axis_fir_tdata[96]),
        .I2(sel),
        .O(m_axis_tdata[96]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[97]_INST_0 
       (.I0(s_axis_tdata[97]),
        .I1(s_axis_fir_tdata[97]),
        .I2(sel),
        .O(m_axis_tdata[97]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[98]_INST_0 
       (.I0(s_axis_tdata[98]),
        .I1(s_axis_fir_tdata[98]),
        .I2(sel),
        .O(m_axis_tdata[98]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[99]_INST_0 
       (.I0(s_axis_tdata[99]),
        .I1(s_axis_fir_tdata[99]),
        .I2(sel),
        .O(m_axis_tdata[99]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(s_axis_tdata[9]),
        .I1(s_axis_fir_tdata[9]),
        .I2(sel),
        .O(m_axis_tdata[9]));
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
