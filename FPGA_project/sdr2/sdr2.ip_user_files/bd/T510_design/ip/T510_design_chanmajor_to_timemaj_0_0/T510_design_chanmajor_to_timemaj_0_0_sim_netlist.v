// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Tue Jun  9 02:03:34 2026
// Host        : DVLLP006 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top T510_design_chanmajor_to_timemaj_0_0 -prefix
//               T510_design_chanmajor_to_timemaj_0_0_ T510_design_chanmajor_to_timemaj_0_0_sim_netlist.v
// Design      : T510_design_chanmajor_to_timemaj_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu47dr-ffve1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "T510_design_chanmajor_to_timemaj_0_0,chanmajor_to_timemajor,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "chanmajor_to_timemajor,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module T510_design_chanmajor_to_timemaj_0_0
   (aclk,
    aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 15360000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [511:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [511:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input m_axis_tready;

  wire m_axis_tready;
  wire [511:0]s_axis_tdata;
  wire s_axis_tvalid;

  assign m_axis_tdata[511:496] = s_axis_tdata[511:496];
  assign m_axis_tdata[495:480] = s_axis_tdata[383:368];
  assign m_axis_tdata[479:464] = s_axis_tdata[255:240];
  assign m_axis_tdata[463:448] = s_axis_tdata[127:112];
  assign m_axis_tdata[447:432] = s_axis_tdata[495:480];
  assign m_axis_tdata[431:416] = s_axis_tdata[367:352];
  assign m_axis_tdata[415:400] = s_axis_tdata[239:224];
  assign m_axis_tdata[399:384] = s_axis_tdata[111:96];
  assign m_axis_tdata[383:368] = s_axis_tdata[479:464];
  assign m_axis_tdata[367:352] = s_axis_tdata[351:336];
  assign m_axis_tdata[351:336] = s_axis_tdata[223:208];
  assign m_axis_tdata[335:320] = s_axis_tdata[95:80];
  assign m_axis_tdata[319:304] = s_axis_tdata[463:448];
  assign m_axis_tdata[303:288] = s_axis_tdata[335:320];
  assign m_axis_tdata[287:272] = s_axis_tdata[207:192];
  assign m_axis_tdata[271:256] = s_axis_tdata[79:64];
  assign m_axis_tdata[255:240] = s_axis_tdata[447:432];
  assign m_axis_tdata[239:224] = s_axis_tdata[319:304];
  assign m_axis_tdata[223:208] = s_axis_tdata[191:176];
  assign m_axis_tdata[207:192] = s_axis_tdata[63:48];
  assign m_axis_tdata[191:176] = s_axis_tdata[431:416];
  assign m_axis_tdata[175:160] = s_axis_tdata[303:288];
  assign m_axis_tdata[159:144] = s_axis_tdata[175:160];
  assign m_axis_tdata[143:128] = s_axis_tdata[47:32];
  assign m_axis_tdata[127:112] = s_axis_tdata[415:400];
  assign m_axis_tdata[111:96] = s_axis_tdata[287:272];
  assign m_axis_tdata[95:80] = s_axis_tdata[159:144];
  assign m_axis_tdata[79:64] = s_axis_tdata[31:16];
  assign m_axis_tdata[63:48] = s_axis_tdata[399:384];
  assign m_axis_tdata[47:32] = s_axis_tdata[271:256];
  assign m_axis_tdata[31:16] = s_axis_tdata[143:128];
  assign m_axis_tdata[15:0] = s_axis_tdata[15:0];
  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
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
