// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Wed Jun 10 21:41:15 2026
// Host        : DVLLP006 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top T510_design_tlast_generator_0_0 -prefix
//               T510_design_tlast_generator_0_0_ T510_design_tlast_generator_0_0_sim_netlist.v
// Design      : T510_design_tlast_generator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu47dr-ffve1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "T510_design_tlast_generator_0_0,tlast_generator,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "tlast_generator,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module T510_design_tlast_generator_0_0
   (aclk,
    aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN T510_design_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 512} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value vect} size {attribs {resolve_type generated dependency vect_size format long minimum {} maximum {}} value 8} stride {attribs {resolve_type generated dependency vect_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value path} size {attribs {resolve_type generated dependency path_size format long minimum {} maximum {}} value 4} stride {attribs {resolve_type generated dependency path_stride format long minimum {} maximum {}} value 16} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency out_width format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency out_fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type generated dependency out_signed format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 512 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_data_valid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data_valid} enabled {attribs {resolve_type generated dependency data_valid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency data_valid_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_chanid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chanid} enabled {attribs {resolve_type generated dependency chanid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chanid_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency chanid_bitoffset format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_user {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value user} enabled {attribs {resolve_type generated dependency user_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency user_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency user_bitoffset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) input [511:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN T510_design_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0" *) output [511:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) output m_axis_tlast;

  wire aclk;
  wire aresetn;
  wire m_axis_tlast;
  wire m_axis_tready;
  wire [511:0]s_axis_tdata;
  wire s_axis_tvalid;

  assign m_axis_tdata[511:0] = s_axis_tdata;
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  T510_design_tlast_generator_0_0_tlast_generator inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tlast(m_axis_tlast),
        .m_axis_tready(m_axis_tready),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module T510_design_tlast_generator_0_0_tlast_generator
   (m_axis_tlast,
    aclk,
    aresetn,
    s_axis_tvalid,
    m_axis_tready);
  output m_axis_tlast;
  input aclk;
  input aresetn;
  input s_axis_tvalid;
  input m_axis_tready;

  wire aclk;
  wire aresetn;
  wire [15:0]beat_counter;
  wire \beat_counter[12]_i_2_n_0 ;
  wire \beat_counter[15]_i_4_n_0 ;
  wire [15:0]beat_counter_0;
  wire m_axis_tlast;
  wire m_axis_tlast_INST_0_i_1_n_0;
  wire m_axis_tlast_INST_0_i_2_n_0;
  wire m_axis_tlast_INST_0_i_3_n_0;
  wire m_axis_tlast_INST_0_i_4_n_0;
  wire m_axis_tready;
  wire p_0_in;
  wire s_axis_tvalid;
  wire transfer_en;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \beat_counter[0]_i_1 
       (.I0(beat_counter[0]),
        .O(beat_counter_0[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \beat_counter[10]_i_1 
       (.I0(beat_counter[10]),
        .I1(beat_counter[8]),
        .I2(m_axis_tlast_INST_0_i_1_n_0),
        .I3(m_axis_tlast_INST_0_i_2_n_0),
        .I4(beat_counter[9]),
        .O(beat_counter_0[10]));
  LUT6 #(
    .INIT(64'hAAAA6AAAAAAAAAAA)) 
    \beat_counter[11]_i_1 
       (.I0(beat_counter[11]),
        .I1(beat_counter[9]),
        .I2(beat_counter[10]),
        .I3(beat_counter[8]),
        .I4(m_axis_tlast_INST_0_i_1_n_0),
        .I5(m_axis_tlast_INST_0_i_2_n_0),
        .O(beat_counter_0[11]));
  LUT6 #(
    .INIT(64'hAAAAAAAA9AAAAAAA)) 
    \beat_counter[12]_i_1 
       (.I0(beat_counter[12]),
        .I1(\beat_counter[12]_i_2_n_0 ),
        .I2(beat_counter[11]),
        .I3(beat_counter[8]),
        .I4(m_axis_tlast_INST_0_i_2_n_0),
        .I5(m_axis_tlast_INST_0_i_1_n_0),
        .O(beat_counter_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \beat_counter[12]_i_2 
       (.I0(beat_counter[9]),
        .I1(beat_counter[10]),
        .O(\beat_counter[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAA9AAAAA)) 
    \beat_counter[13]_i_1 
       (.I0(beat_counter[13]),
        .I1(m_axis_tlast_INST_0_i_1_n_0),
        .I2(m_axis_tlast_INST_0_i_2_n_0),
        .I3(m_axis_tlast_INST_0_i_3_n_0),
        .I4(beat_counter[12]),
        .O(beat_counter_0[13]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAA4AA)) 
    \beat_counter[14]_i_1 
       (.I0(beat_counter[14]),
        .I1(beat_counter[15]),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_2_n_0),
        .I4(m_axis_tlast_INST_0_i_1_n_0),
        .I5(\beat_counter[15]_i_4_n_0 ),
        .O(beat_counter_0[14]));
  LUT1 #(
    .INIT(2'h1)) 
    \beat_counter[15]_i_1 
       (.I0(aresetn),
        .O(p_0_in));
  LUT2 #(
    .INIT(4'h8)) 
    \beat_counter[15]_i_2 
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .O(transfer_en));
  LUT6 #(
    .INIT(64'hAAAAAA9AAAAAAAAA)) 
    \beat_counter[15]_i_3 
       (.I0(beat_counter[15]),
        .I1(m_axis_tlast_INST_0_i_3_n_0),
        .I2(m_axis_tlast_INST_0_i_2_n_0),
        .I3(m_axis_tlast_INST_0_i_1_n_0),
        .I4(\beat_counter[15]_i_4_n_0 ),
        .I5(beat_counter[14]),
        .O(beat_counter_0[15]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \beat_counter[15]_i_4 
       (.I0(beat_counter[12]),
        .I1(beat_counter[13]),
        .O(\beat_counter[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \beat_counter[1]_i_1 
       (.I0(beat_counter[0]),
        .I1(beat_counter[1]),
        .O(beat_counter_0[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \beat_counter[2]_i_1 
       (.I0(beat_counter[2]),
        .I1(beat_counter[1]),
        .I2(beat_counter[0]),
        .O(beat_counter_0[2]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \beat_counter[3]_i_1 
       (.I0(beat_counter[3]),
        .I1(beat_counter[0]),
        .I2(beat_counter[1]),
        .I3(beat_counter[2]),
        .O(beat_counter_0[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \beat_counter[4]_i_1 
       (.I0(beat_counter[4]),
        .I1(beat_counter[2]),
        .I2(beat_counter[3]),
        .I3(beat_counter[0]),
        .I4(beat_counter[1]),
        .O(beat_counter_0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \beat_counter[5]_i_1 
       (.I0(beat_counter[5]),
        .I1(beat_counter[2]),
        .I2(beat_counter[3]),
        .I3(beat_counter[0]),
        .I4(beat_counter[1]),
        .I5(beat_counter[4]),
        .O(beat_counter_0[5]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \beat_counter[6]_i_1 
       (.I0(beat_counter[6]),
        .I1(beat_counter[4]),
        .I2(m_axis_tlast_INST_0_i_2_n_0),
        .I3(beat_counter[5]),
        .O(beat_counter_0[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \beat_counter[7]_i_1 
       (.I0(beat_counter[7]),
        .I1(beat_counter[5]),
        .I2(m_axis_tlast_INST_0_i_2_n_0),
        .I3(beat_counter[4]),
        .I4(beat_counter[6]),
        .O(beat_counter_0[7]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \beat_counter[8]_i_1 
       (.I0(beat_counter[8]),
        .I1(beat_counter[5]),
        .I2(beat_counter[4]),
        .I3(beat_counter[7]),
        .I4(beat_counter[6]),
        .I5(m_axis_tlast_INST_0_i_2_n_0),
        .O(beat_counter_0[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA6AA)) 
    \beat_counter[9]_i_1 
       (.I0(beat_counter[9]),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_1_n_0),
        .I3(beat_counter[8]),
        .O(beat_counter_0[9]));
  FDRE \beat_counter_reg[0] 
       (.C(aclk),
        .CE(transfer_en),
        .D(beat_counter_0[0]),
        .Q(beat_counter[0]),
        .R(p_0_in));
  FDRE \beat_counter_reg[10] 
       (.C(aclk),
        .CE(transfer_en),
        .D(beat_counter_0[10]),
        .Q(beat_counter[10]),
        .R(p_0_in));
  FDRE \beat_counter_reg[11] 
       (.C(aclk),
        .CE(transfer_en),
        .D(beat_counter_0[11]),
        .Q(beat_counter[11]),
        .R(p_0_in));
  FDRE \beat_counter_reg[12] 
       (.C(aclk),
        .CE(transfer_en),
        .D(beat_counter_0[12]),
        .Q(beat_counter[12]),
        .R(p_0_in));
  FDRE \beat_counter_reg[13] 
       (.C(aclk),
        .CE(transfer_en),
        .D(beat_counter_0[13]),
        .Q(beat_counter[13]),
        .R(p_0_in));
  FDRE \beat_counter_reg[14] 
       (.C(aclk),
        .CE(transfer_en),
        .D(beat_counter_0[14]),
        .Q(beat_counter[14]),
        .R(p_0_in));
  FDRE \beat_counter_reg[15] 
       (.C(aclk),
        .CE(transfer_en),
        .D(beat_counter_0[15]),
        .Q(beat_counter[15]),
        .R(p_0_in));
  FDRE \beat_counter_reg[1] 
       (.C(aclk),
        .CE(transfer_en),
        .D(beat_counter_0[1]),
        .Q(beat_counter[1]),
        .R(p_0_in));
  FDRE \beat_counter_reg[2] 
       (.C(aclk),
        .CE(transfer_en),
        .D(beat_counter_0[2]),
        .Q(beat_counter[2]),
        .R(p_0_in));
  FDRE \beat_counter_reg[3] 
       (.C(aclk),
        .CE(transfer_en),
        .D(beat_counter_0[3]),
        .Q(beat_counter[3]),
        .R(p_0_in));
  FDRE \beat_counter_reg[4] 
       (.C(aclk),
        .CE(transfer_en),
        .D(beat_counter_0[4]),
        .Q(beat_counter[4]),
        .R(p_0_in));
  FDRE \beat_counter_reg[5] 
       (.C(aclk),
        .CE(transfer_en),
        .D(beat_counter_0[5]),
        .Q(beat_counter[5]),
        .R(p_0_in));
  FDRE \beat_counter_reg[6] 
       (.C(aclk),
        .CE(transfer_en),
        .D(beat_counter_0[6]),
        .Q(beat_counter[6]),
        .R(p_0_in));
  FDRE \beat_counter_reg[7] 
       (.C(aclk),
        .CE(transfer_en),
        .D(beat_counter_0[7]),
        .Q(beat_counter[7]),
        .R(p_0_in));
  FDRE \beat_counter_reg[8] 
       (.C(aclk),
        .CE(transfer_en),
        .D(beat_counter_0[8]),
        .Q(beat_counter[8]),
        .R(p_0_in));
  FDRE \beat_counter_reg[9] 
       (.C(aclk),
        .CE(transfer_en),
        .D(beat_counter_0[9]),
        .Q(beat_counter[9]),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000000000000800)) 
    m_axis_tlast_INST_0
       (.I0(beat_counter[12]),
        .I1(beat_counter[13]),
        .I2(m_axis_tlast_INST_0_i_1_n_0),
        .I3(m_axis_tlast_INST_0_i_2_n_0),
        .I4(m_axis_tlast_INST_0_i_3_n_0),
        .I5(m_axis_tlast_INST_0_i_4_n_0),
        .O(m_axis_tlast));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    m_axis_tlast_INST_0_i_1
       (.I0(beat_counter[5]),
        .I1(beat_counter[4]),
        .I2(beat_counter[7]),
        .I3(beat_counter[6]),
        .O(m_axis_tlast_INST_0_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    m_axis_tlast_INST_0_i_2
       (.I0(beat_counter[1]),
        .I1(beat_counter[0]),
        .I2(beat_counter[3]),
        .I3(beat_counter[2]),
        .O(m_axis_tlast_INST_0_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    m_axis_tlast_INST_0_i_3
       (.I0(beat_counter[10]),
        .I1(beat_counter[9]),
        .I2(beat_counter[11]),
        .I3(beat_counter[8]),
        .O(m_axis_tlast_INST_0_i_3_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    m_axis_tlast_INST_0_i_4
       (.I0(beat_counter[14]),
        .I1(beat_counter[15]),
        .O(m_axis_tlast_INST_0_i_4_n_0));
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
