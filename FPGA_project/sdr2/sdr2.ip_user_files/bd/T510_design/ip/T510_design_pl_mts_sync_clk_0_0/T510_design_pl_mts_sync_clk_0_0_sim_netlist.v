// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Jul  4 14:01:35 2026
// Host        : DVLLP006 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Trivedi/2022p2/sdr2/sdr2.gen/sources_1/bd/T510_design/ip/T510_design_pl_mts_sync_clk_0_0/T510_design_pl_mts_sync_clk_0_0_sim_netlist.v
// Design      : T510_design_pl_mts_sync_clk_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu47dr-ffve1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "T510_design_pl_mts_sync_clk_0_0,pl_mts_sync_clk,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pl_mts_sync_clk,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module T510_design_pl_mts_sync_clk_0_0
   (pl_clk_p,
    pl_clk_n,
    pl_sys_ref_p,
    pl_sys_ref_n,
    pl_clk,
    user_sysref_adc,
    user_sysref_dac);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pl_clk_p CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_pl_clk_p, INSERT_VIP 0" *) input pl_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pl_clk_n CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_pl_clk_n, INSERT_VIP 0" *) input pl_clk_n;
  input pl_sys_ref_p;
  input pl_sys_ref_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 pl_clk CLK" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME pl_clk, FREQ_HZ 245760000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_pl_mts_sync_clk_0_0_pl_clk, INSERT_VIP 0" *) output pl_clk;
  output user_sysref_adc;
  output user_sysref_dac;

  (* IBUF_LOW_PWR *) wire pl_clk;
  (* IBUF_LOW_PWR *) wire pl_clk_n;
  (* IBUF_LOW_PWR *) wire pl_clk_p;
  (* IBUF_LOW_PWR *) wire pl_sys_ref_n;
  (* IBUF_LOW_PWR *) wire pl_sys_ref_p;
  wire user_sysref_dac;

  assign user_sysref_adc = user_sysref_dac;
  T510_design_pl_mts_sync_clk_0_0_pl_mts_sync_clk inst
       (.pl_clk(pl_clk),
        .pl_clk_n(pl_clk_n),
        .pl_clk_p(pl_clk_p),
        .pl_sys_ref_n(pl_sys_ref_n),
        .pl_sys_ref_p(pl_sys_ref_p),
        .user_sysref_dac(user_sysref_dac));
endmodule

(* ORIG_REF_NAME = "pl_mts_sync_clk" *) 
module T510_design_pl_mts_sync_clk_0_0_pl_mts_sync_clk
   (pl_clk,
    user_sysref_dac,
    pl_clk_p,
    pl_clk_n,
    pl_sys_ref_p,
    pl_sys_ref_n);
  output pl_clk;
  output user_sysref_dac;
  input pl_clk_p;
  input pl_clk_n;
  input pl_sys_ref_p;
  input pl_sys_ref_n;

  wire pl_clk_bufds;
  wire pl_clk_n;
  wire pl_clk_p;
  wire pl_sys_ref_bufds;
  wire pl_sys_ref_n;
  wire pl_sys_ref_p;
  wire user_sysref_dac;

  assign pl_clk = pl_clk_bufds;
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    BUFGDS_pl_clk
       (.I(pl_clk_p),
        .IB(pl_clk_n),
        .O(pl_clk_bufds));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .DIFF_TERM("FALSE"),
    .IOSTANDARD("DEFAULT")) 
    IBUFDS_pl_sys
       (.I(pl_sys_ref_p),
        .IB(pl_sys_ref_n),
        .O(pl_sys_ref_bufds));
  (* OPT_MODIFIED = "MLO" *) 
  FDRE pl_sys_ref_captrue_reg
       (.C(pl_clk_bufds),
        .CE(1'b1),
        .D(pl_sys_ref_bufds),
        .Q(user_sysref_dac),
        .R(1'b0));
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
