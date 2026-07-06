// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Jul  4 14:02:00 2026
// Host        : DVLLP006 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Trivedi/2022p2/sdr2/sdr2.gen/sources_1/bd/T510_design/ip/T510_design_programmable_decim_0_0/T510_design_programmable_decim_0_0_sim_netlist.v
// Design      : T510_design_programmable_decim_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu47dr-ffve1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "T510_design_programmable_decim_0_0,programmable_decim,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "programmable_decim,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module T510_design_programmable_decim_0_0
   (aclk,
    aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    m_axis_tdata,
    m_axis_tuser,
    m_axis_tvalid,
    m_axis_tready,
    DECIM_M,
    DECIM_PHASE,
    cnt_clr,
    in_beat_count,
    out_beat_count,
    sample_count,
    drop_count);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET aresetn, FREQ_HZ 15360000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [511:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 8, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [511:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) output [7:0]m_axis_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  input [4:0]DECIM_M;
  input [4:0]DECIM_PHASE;
  input cnt_clr;
  output [31:0]in_beat_count;
  output [31:0]out_beat_count;
  output [31:0]sample_count;
  output [31:0]drop_count;

  wire \<const1> ;
  wire [4:0]DECIM_M;
  wire [4:0]DECIM_PHASE;
  wire aclk;
  wire aresetn;
  wire cnt_clr;
  wire [31:0]drop_count;
  wire [31:0]in_beat_count;
  wire [511:0]m_axis_tdata;
  wire m_axis_tready;
  wire [7:0]m_axis_tuser;
  wire m_axis_tvalid;
  wire [31:0]out_beat_count;
  wire [511:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire [31:0]sample_count;

  assign s_axis_tready = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  T510_design_programmable_decim_0_0_programmable_decim inst
       (.DECIM_M(DECIM_M),
        .DECIM_PHASE(DECIM_PHASE),
        .aclk(aclk),
        .aresetn(aresetn),
        .cnt_clr(cnt_clr),
        .drop_count(drop_count),
        .in_beat_count(in_beat_count),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tuser(m_axis_tuser),
        .m_axis_tvalid_reg_0(m_axis_tvalid),
        .out_beat_count(out_beat_count),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid),
        .sample_count(sample_count));
endmodule

(* ORIG_REF_NAME = "programmable_decim" *) 
module T510_design_programmable_decim_0_0_programmable_decim
   (sample_count,
    m_axis_tdata,
    m_axis_tuser,
    in_beat_count,
    out_beat_count,
    drop_count,
    m_axis_tvalid_reg_0,
    DECIM_M,
    DECIM_PHASE,
    s_axis_tvalid,
    s_axis_tdata,
    aclk,
    aresetn,
    m_axis_tready,
    cnt_clr);
  output [31:0]sample_count;
  output [511:0]m_axis_tdata;
  output [7:0]m_axis_tuser;
  output [31:0]in_beat_count;
  output [31:0]out_beat_count;
  output [31:0]drop_count;
  output m_axis_tvalid_reg_0;
  input [4:0]DECIM_M;
  input [4:0]DECIM_PHASE;
  input s_axis_tvalid;
  input [511:0]s_axis_tdata;
  input aclk;
  input aresetn;
  input m_axis_tready;
  input cnt_clr;

  wire [4:0]DECIM_M;
  wire [4:0]DECIM_PHASE;
  wire [5:0]\GEN_SLOT[0].v ;
  wire \GEN_SLOT[0].v1 ;
  wire [6:6]\GEN_SLOT[0].v__0 ;
  wire [5:0]\GEN_SLOT[1].v ;
  wire \GEN_SLOT[1].v1 ;
  wire [6:6]\GEN_SLOT[1].v__0 ;
  wire [4:3]\GEN_SLOT[1].val ;
  wire [5:0]\GEN_SLOT[2].v ;
  wire \GEN_SLOT[2].v1 ;
  wire [6:6]\GEN_SLOT[2].v__0 ;
  wire [4:4]\GEN_SLOT[2].val ;
  wire [5:0]\GEN_SLOT[3].v ;
  wire \GEN_SLOT[3].v1 ;
  wire [6:6]\GEN_SLOT[3].v__0 ;
  wire [4:3]\GEN_SLOT[3].val ;
  wire [5:0]\GEN_SLOT[4].v ;
  wire \GEN_SLOT[4].v1 ;
  wire [6:6]\GEN_SLOT[4].v__0 ;
  wire [5:0]\GEN_SLOT[5].v ;
  wire \GEN_SLOT[5].v1 ;
  wire [6:6]\GEN_SLOT[5].v__0 ;
  wire [4:3]\GEN_SLOT[5].val ;
  wire [5:0]\GEN_SLOT[6].v ;
  wire \GEN_SLOT[6].v1 ;
  wire [6:6]\GEN_SLOT[6].v__0 ;
  wire [4:4]\GEN_SLOT[6].val ;
  wire [5:0]\GEN_SLOT[7].v ;
  wire \GEN_SLOT[7].v1 ;
  wire [6:6]\GEN_SLOT[7].v__0 ;
  wire [4:3]\GEN_SLOT[7].val ;
  wire aclk;
  wire aresetn;
  wire cnt_clr;
  wire [1:1]cond_mod0_return;
  wire [1:1]cond_mod1_return;
  wire [1:1]cond_mod2_return;
  wire [1:1]cond_mod3_return;
  wire [1:1]cond_mod4_return;
  wire [1:1]cond_mod5_return;
  wire [1:1]cond_mod6_return;
  wire [4:0]cond_mod7_return;
  wire [1:1]cond_mod_return;
  wire [31:0]drop_count;
  wire [31:1]drop_count0;
  wire \drop_count[0]_i_1_n_0 ;
  wire \drop_count[10]_i_1_n_0 ;
  wire \drop_count[11]_i_1_n_0 ;
  wire \drop_count[12]_i_1_n_0 ;
  wire \drop_count[13]_i_1_n_0 ;
  wire \drop_count[14]_i_1_n_0 ;
  wire \drop_count[15]_i_1_n_0 ;
  wire \drop_count[16]_i_1_n_0 ;
  wire \drop_count[17]_i_1_n_0 ;
  wire \drop_count[18]_i_1_n_0 ;
  wire \drop_count[19]_i_1_n_0 ;
  wire \drop_count[1]_i_1_n_0 ;
  wire \drop_count[20]_i_1_n_0 ;
  wire \drop_count[21]_i_1_n_0 ;
  wire \drop_count[22]_i_1_n_0 ;
  wire \drop_count[23]_i_1_n_0 ;
  wire \drop_count[24]_i_1_n_0 ;
  wire \drop_count[25]_i_1_n_0 ;
  wire \drop_count[26]_i_1_n_0 ;
  wire \drop_count[27]_i_1_n_0 ;
  wire \drop_count[28]_i_1_n_0 ;
  wire \drop_count[29]_i_1_n_0 ;
  wire \drop_count[2]_i_1_n_0 ;
  wire \drop_count[30]_i_1_n_0 ;
  wire \drop_count[31]_i_1_n_0 ;
  wire \drop_count[31]_i_2_n_0 ;
  wire \drop_count[3]_i_1_n_0 ;
  wire \drop_count[4]_i_1_n_0 ;
  wire \drop_count[5]_i_1_n_0 ;
  wire \drop_count[6]_i_1_n_0 ;
  wire \drop_count[7]_i_1_n_0 ;
  wire \drop_count[8]_i_1_n_0 ;
  wire \drop_count[9]_i_1_n_0 ;
  wire \drop_count_reg[16]_i_2_n_0 ;
  wire \drop_count_reg[16]_i_2_n_1 ;
  wire \drop_count_reg[16]_i_2_n_2 ;
  wire \drop_count_reg[16]_i_2_n_3 ;
  wire \drop_count_reg[16]_i_2_n_4 ;
  wire \drop_count_reg[16]_i_2_n_5 ;
  wire \drop_count_reg[16]_i_2_n_6 ;
  wire \drop_count_reg[16]_i_2_n_7 ;
  wire \drop_count_reg[24]_i_2_n_0 ;
  wire \drop_count_reg[24]_i_2_n_1 ;
  wire \drop_count_reg[24]_i_2_n_2 ;
  wire \drop_count_reg[24]_i_2_n_3 ;
  wire \drop_count_reg[24]_i_2_n_4 ;
  wire \drop_count_reg[24]_i_2_n_5 ;
  wire \drop_count_reg[24]_i_2_n_6 ;
  wire \drop_count_reg[24]_i_2_n_7 ;
  wire \drop_count_reg[31]_i_3_n_2 ;
  wire \drop_count_reg[31]_i_3_n_3 ;
  wire \drop_count_reg[31]_i_3_n_4 ;
  wire \drop_count_reg[31]_i_3_n_5 ;
  wire \drop_count_reg[31]_i_3_n_6 ;
  wire \drop_count_reg[31]_i_3_n_7 ;
  wire \drop_count_reg[8]_i_2_n_0 ;
  wire \drop_count_reg[8]_i_2_n_1 ;
  wire \drop_count_reg[8]_i_2_n_2 ;
  wire \drop_count_reg[8]_i_2_n_3 ;
  wire \drop_count_reg[8]_i_2_n_4 ;
  wire \drop_count_reg[8]_i_2_n_5 ;
  wire \drop_count_reg[8]_i_2_n_6 ;
  wire \drop_count_reg[8]_i_2_n_7 ;
  wire [31:0]in_beat_count;
  wire [31:1]in_beat_count0;
  wire \in_beat_count[0]_i_1_n_0 ;
  wire \in_beat_count[10]_i_1_n_0 ;
  wire \in_beat_count[11]_i_1_n_0 ;
  wire \in_beat_count[12]_i_1_n_0 ;
  wire \in_beat_count[13]_i_1_n_0 ;
  wire \in_beat_count[14]_i_1_n_0 ;
  wire \in_beat_count[15]_i_1_n_0 ;
  wire \in_beat_count[16]_i_1_n_0 ;
  wire \in_beat_count[17]_i_1_n_0 ;
  wire \in_beat_count[18]_i_1_n_0 ;
  wire \in_beat_count[19]_i_1_n_0 ;
  wire \in_beat_count[1]_i_1_n_0 ;
  wire \in_beat_count[20]_i_1_n_0 ;
  wire \in_beat_count[21]_i_1_n_0 ;
  wire \in_beat_count[22]_i_1_n_0 ;
  wire \in_beat_count[23]_i_1_n_0 ;
  wire \in_beat_count[24]_i_1_n_0 ;
  wire \in_beat_count[25]_i_1_n_0 ;
  wire \in_beat_count[26]_i_1_n_0 ;
  wire \in_beat_count[27]_i_1_n_0 ;
  wire \in_beat_count[28]_i_1_n_0 ;
  wire \in_beat_count[29]_i_1_n_0 ;
  wire \in_beat_count[2]_i_1_n_0 ;
  wire \in_beat_count[30]_i_1_n_0 ;
  wire \in_beat_count[31]_i_1_n_0 ;
  wire \in_beat_count[31]_i_2_n_0 ;
  wire \in_beat_count[3]_i_1_n_0 ;
  wire \in_beat_count[4]_i_1_n_0 ;
  wire \in_beat_count[5]_i_1_n_0 ;
  wire \in_beat_count[6]_i_1_n_0 ;
  wire \in_beat_count[7]_i_1_n_0 ;
  wire \in_beat_count[8]_i_1_n_0 ;
  wire \in_beat_count[9]_i_1_n_0 ;
  wire \in_beat_count_reg[16]_i_2_n_0 ;
  wire \in_beat_count_reg[16]_i_2_n_1 ;
  wire \in_beat_count_reg[16]_i_2_n_2 ;
  wire \in_beat_count_reg[16]_i_2_n_3 ;
  wire \in_beat_count_reg[16]_i_2_n_4 ;
  wire \in_beat_count_reg[16]_i_2_n_5 ;
  wire \in_beat_count_reg[16]_i_2_n_6 ;
  wire \in_beat_count_reg[16]_i_2_n_7 ;
  wire \in_beat_count_reg[24]_i_2_n_0 ;
  wire \in_beat_count_reg[24]_i_2_n_1 ;
  wire \in_beat_count_reg[24]_i_2_n_2 ;
  wire \in_beat_count_reg[24]_i_2_n_3 ;
  wire \in_beat_count_reg[24]_i_2_n_4 ;
  wire \in_beat_count_reg[24]_i_2_n_5 ;
  wire \in_beat_count_reg[24]_i_2_n_6 ;
  wire \in_beat_count_reg[24]_i_2_n_7 ;
  wire \in_beat_count_reg[31]_i_3_n_2 ;
  wire \in_beat_count_reg[31]_i_3_n_3 ;
  wire \in_beat_count_reg[31]_i_3_n_4 ;
  wire \in_beat_count_reg[31]_i_3_n_5 ;
  wire \in_beat_count_reg[31]_i_3_n_6 ;
  wire \in_beat_count_reg[31]_i_3_n_7 ;
  wire \in_beat_count_reg[8]_i_2_n_0 ;
  wire \in_beat_count_reg[8]_i_2_n_1 ;
  wire \in_beat_count_reg[8]_i_2_n_2 ;
  wire \in_beat_count_reg[8]_i_2_n_3 ;
  wire \in_beat_count_reg[8]_i_2_n_4 ;
  wire \in_beat_count_reg[8]_i_2_n_5 ;
  wire \in_beat_count_reg[8]_i_2_n_6 ;
  wire \in_beat_count_reg[8]_i_2_n_7 ;
  wire [511:0]m_axis_tdata;
  wire \m_axis_tdata[511]_i_1_n_0 ;
  wire m_axis_tready;
  wire [7:0]m_axis_tuser;
  wire \m_axis_tuser[0]_i_100_n_0 ;
  wire \m_axis_tuser[0]_i_101_n_0 ;
  wire \m_axis_tuser[0]_i_102_n_0 ;
  wire \m_axis_tuser[0]_i_103_n_0 ;
  wire \m_axis_tuser[0]_i_104_n_0 ;
  wire \m_axis_tuser[0]_i_105_n_0 ;
  wire \m_axis_tuser[0]_i_106_n_0 ;
  wire \m_axis_tuser[0]_i_107_n_0 ;
  wire \m_axis_tuser[0]_i_108_n_0 ;
  wire \m_axis_tuser[0]_i_109_n_0 ;
  wire \m_axis_tuser[0]_i_10_n_0 ;
  wire \m_axis_tuser[0]_i_110_n_0 ;
  wire \m_axis_tuser[0]_i_111_n_0 ;
  wire \m_axis_tuser[0]_i_112_n_0 ;
  wire \m_axis_tuser[0]_i_113_n_0 ;
  wire \m_axis_tuser[0]_i_114_n_0 ;
  wire \m_axis_tuser[0]_i_115_n_0 ;
  wire \m_axis_tuser[0]_i_116_n_0 ;
  wire \m_axis_tuser[0]_i_117_n_0 ;
  wire \m_axis_tuser[0]_i_118_n_0 ;
  wire \m_axis_tuser[0]_i_119_n_0 ;
  wire \m_axis_tuser[0]_i_11_n_0 ;
  wire \m_axis_tuser[0]_i_120_n_0 ;
  wire \m_axis_tuser[0]_i_121_n_0 ;
  wire \m_axis_tuser[0]_i_122_n_0 ;
  wire \m_axis_tuser[0]_i_123_n_0 ;
  wire \m_axis_tuser[0]_i_124_n_0 ;
  wire \m_axis_tuser[0]_i_125_n_0 ;
  wire \m_axis_tuser[0]_i_126_n_0 ;
  wire \m_axis_tuser[0]_i_14_n_0 ;
  wire \m_axis_tuser[0]_i_15_n_0 ;
  wire \m_axis_tuser[0]_i_16_n_0 ;
  wire \m_axis_tuser[0]_i_17_n_0 ;
  wire \m_axis_tuser[0]_i_18_n_0 ;
  wire \m_axis_tuser[0]_i_19_n_0 ;
  wire \m_axis_tuser[0]_i_20_n_0 ;
  wire \m_axis_tuser[0]_i_21_n_0 ;
  wire \m_axis_tuser[0]_i_22_n_0 ;
  wire \m_axis_tuser[0]_i_23_n_0 ;
  wire \m_axis_tuser[0]_i_24_n_0 ;
  wire \m_axis_tuser[0]_i_25_n_0 ;
  wire \m_axis_tuser[0]_i_26_n_0 ;
  wire \m_axis_tuser[0]_i_27_n_0 ;
  wire \m_axis_tuser[0]_i_28_n_0 ;
  wire \m_axis_tuser[0]_i_29_n_0 ;
  wire \m_axis_tuser[0]_i_2_n_0 ;
  wire \m_axis_tuser[0]_i_30_n_0 ;
  wire \m_axis_tuser[0]_i_33_n_0 ;
  wire \m_axis_tuser[0]_i_34_n_0 ;
  wire \m_axis_tuser[0]_i_35_n_0 ;
  wire \m_axis_tuser[0]_i_36_n_0 ;
  wire \m_axis_tuser[0]_i_37_n_0 ;
  wire \m_axis_tuser[0]_i_38_n_0 ;
  wire \m_axis_tuser[0]_i_39_n_0 ;
  wire \m_axis_tuser[0]_i_3_n_0 ;
  wire \m_axis_tuser[0]_i_40_n_0 ;
  wire \m_axis_tuser[0]_i_41_n_0 ;
  wire \m_axis_tuser[0]_i_42_n_0 ;
  wire \m_axis_tuser[0]_i_43_n_0 ;
  wire \m_axis_tuser[0]_i_44_n_0 ;
  wire \m_axis_tuser[0]_i_45_n_0 ;
  wire \m_axis_tuser[0]_i_46_n_0 ;
  wire \m_axis_tuser[0]_i_47_n_0 ;
  wire \m_axis_tuser[0]_i_48_n_0 ;
  wire \m_axis_tuser[0]_i_4_n_0 ;
  wire \m_axis_tuser[0]_i_55_n_0 ;
  wire \m_axis_tuser[0]_i_56_n_0 ;
  wire \m_axis_tuser[0]_i_57_n_0 ;
  wire \m_axis_tuser[0]_i_58_n_0 ;
  wire \m_axis_tuser[0]_i_59_n_0 ;
  wire \m_axis_tuser[0]_i_60_n_0 ;
  wire \m_axis_tuser[0]_i_61_n_0 ;
  wire \m_axis_tuser[0]_i_62_n_0 ;
  wire \m_axis_tuser[0]_i_63_n_0 ;
  wire \m_axis_tuser[0]_i_65_n_0 ;
  wire \m_axis_tuser[0]_i_66_n_0 ;
  wire \m_axis_tuser[0]_i_67_n_0 ;
  wire \m_axis_tuser[0]_i_68_n_0 ;
  wire \m_axis_tuser[0]_i_69_n_0 ;
  wire \m_axis_tuser[0]_i_6_n_0 ;
  wire \m_axis_tuser[0]_i_70_n_0 ;
  wire \m_axis_tuser[0]_i_71_n_0 ;
  wire \m_axis_tuser[0]_i_72_n_0 ;
  wire \m_axis_tuser[0]_i_73_n_0 ;
  wire \m_axis_tuser[0]_i_74_n_0 ;
  wire \m_axis_tuser[0]_i_75_n_0 ;
  wire \m_axis_tuser[0]_i_76_n_0 ;
  wire \m_axis_tuser[0]_i_77_n_0 ;
  wire \m_axis_tuser[0]_i_78_n_0 ;
  wire \m_axis_tuser[0]_i_79_n_0 ;
  wire \m_axis_tuser[0]_i_7_n_0 ;
  wire \m_axis_tuser[0]_i_80_n_0 ;
  wire \m_axis_tuser[0]_i_81_n_0 ;
  wire \m_axis_tuser[0]_i_82_n_0 ;
  wire \m_axis_tuser[0]_i_83_n_0 ;
  wire \m_axis_tuser[0]_i_84_n_0 ;
  wire \m_axis_tuser[0]_i_85_n_0 ;
  wire \m_axis_tuser[0]_i_86_n_0 ;
  wire \m_axis_tuser[0]_i_87_n_0 ;
  wire \m_axis_tuser[0]_i_89_n_0 ;
  wire \m_axis_tuser[0]_i_8_n_0 ;
  wire \m_axis_tuser[0]_i_90_n_0 ;
  wire \m_axis_tuser[0]_i_91_n_0 ;
  wire \m_axis_tuser[0]_i_92_n_0 ;
  wire \m_axis_tuser[0]_i_93_n_0 ;
  wire \m_axis_tuser[0]_i_94_n_0 ;
  wire \m_axis_tuser[0]_i_95_n_0 ;
  wire \m_axis_tuser[0]_i_96_n_0 ;
  wire \m_axis_tuser[0]_i_98_n_0 ;
  wire \m_axis_tuser[0]_i_99_n_0 ;
  wire \m_axis_tuser[0]_i_9_n_0 ;
  wire \m_axis_tuser[1]_i_100_n_0 ;
  wire \m_axis_tuser[1]_i_101_n_0 ;
  wire \m_axis_tuser[1]_i_102_n_0 ;
  wire \m_axis_tuser[1]_i_103_n_0 ;
  wire \m_axis_tuser[1]_i_104_n_0 ;
  wire \m_axis_tuser[1]_i_105_n_0 ;
  wire \m_axis_tuser[1]_i_106_n_0 ;
  wire \m_axis_tuser[1]_i_107_n_0 ;
  wire \m_axis_tuser[1]_i_108_n_0 ;
  wire \m_axis_tuser[1]_i_109_n_0 ;
  wire \m_axis_tuser[1]_i_10_n_0 ;
  wire \m_axis_tuser[1]_i_110_n_0 ;
  wire \m_axis_tuser[1]_i_111_n_0 ;
  wire \m_axis_tuser[1]_i_112_n_0 ;
  wire \m_axis_tuser[1]_i_113_n_0 ;
  wire \m_axis_tuser[1]_i_114_n_0 ;
  wire \m_axis_tuser[1]_i_115_n_0 ;
  wire \m_axis_tuser[1]_i_116_n_0 ;
  wire \m_axis_tuser[1]_i_117_n_0 ;
  wire \m_axis_tuser[1]_i_118_n_0 ;
  wire \m_axis_tuser[1]_i_11_n_0 ;
  wire \m_axis_tuser[1]_i_120_n_0 ;
  wire \m_axis_tuser[1]_i_121_n_0 ;
  wire \m_axis_tuser[1]_i_122_n_0 ;
  wire \m_axis_tuser[1]_i_123_n_0 ;
  wire \m_axis_tuser[1]_i_124_n_0 ;
  wire \m_axis_tuser[1]_i_125_n_0 ;
  wire \m_axis_tuser[1]_i_126_n_0 ;
  wire \m_axis_tuser[1]_i_127_n_0 ;
  wire \m_axis_tuser[1]_i_128_n_0 ;
  wire \m_axis_tuser[1]_i_129_n_0 ;
  wire \m_axis_tuser[1]_i_130_n_0 ;
  wire \m_axis_tuser[1]_i_131_n_0 ;
  wire \m_axis_tuser[1]_i_133_n_0 ;
  wire \m_axis_tuser[1]_i_134_n_0 ;
  wire \m_axis_tuser[1]_i_14_n_0 ;
  wire \m_axis_tuser[1]_i_15_n_0 ;
  wire \m_axis_tuser[1]_i_16_n_0 ;
  wire \m_axis_tuser[1]_i_17_n_0 ;
  wire \m_axis_tuser[1]_i_18_n_0 ;
  wire \m_axis_tuser[1]_i_19_n_0 ;
  wire \m_axis_tuser[1]_i_20_n_0 ;
  wire \m_axis_tuser[1]_i_21_n_0 ;
  wire \m_axis_tuser[1]_i_22_n_0 ;
  wire \m_axis_tuser[1]_i_23_n_0 ;
  wire \m_axis_tuser[1]_i_24_n_0 ;
  wire \m_axis_tuser[1]_i_25_n_0 ;
  wire \m_axis_tuser[1]_i_26_n_0 ;
  wire \m_axis_tuser[1]_i_27_n_0 ;
  wire \m_axis_tuser[1]_i_28_n_0 ;
  wire \m_axis_tuser[1]_i_29_n_0 ;
  wire \m_axis_tuser[1]_i_2_n_0 ;
  wire \m_axis_tuser[1]_i_30_n_0 ;
  wire \m_axis_tuser[1]_i_33_n_0 ;
  wire \m_axis_tuser[1]_i_34_n_0 ;
  wire \m_axis_tuser[1]_i_35_n_0 ;
  wire \m_axis_tuser[1]_i_36_n_0 ;
  wire \m_axis_tuser[1]_i_37_n_0 ;
  wire \m_axis_tuser[1]_i_38_n_0 ;
  wire \m_axis_tuser[1]_i_39_n_0 ;
  wire \m_axis_tuser[1]_i_3_n_0 ;
  wire \m_axis_tuser[1]_i_40_n_0 ;
  wire \m_axis_tuser[1]_i_41_n_0 ;
  wire \m_axis_tuser[1]_i_42_n_0 ;
  wire \m_axis_tuser[1]_i_43_n_0 ;
  wire \m_axis_tuser[1]_i_44_n_0 ;
  wire \m_axis_tuser[1]_i_45_n_0 ;
  wire \m_axis_tuser[1]_i_46_n_0 ;
  wire \m_axis_tuser[1]_i_47_n_0 ;
  wire \m_axis_tuser[1]_i_48_n_0 ;
  wire \m_axis_tuser[1]_i_4_n_0 ;
  wire \m_axis_tuser[1]_i_55_n_0 ;
  wire \m_axis_tuser[1]_i_56_n_0 ;
  wire \m_axis_tuser[1]_i_57_n_0 ;
  wire \m_axis_tuser[1]_i_58_n_0 ;
  wire \m_axis_tuser[1]_i_59_n_0 ;
  wire \m_axis_tuser[1]_i_60_n_0 ;
  wire \m_axis_tuser[1]_i_61_n_0 ;
  wire \m_axis_tuser[1]_i_62_n_0 ;
  wire \m_axis_tuser[1]_i_63_n_0 ;
  wire \m_axis_tuser[1]_i_65_n_0 ;
  wire \m_axis_tuser[1]_i_66_n_0 ;
  wire \m_axis_tuser[1]_i_67_n_0 ;
  wire \m_axis_tuser[1]_i_68_n_0 ;
  wire \m_axis_tuser[1]_i_69_n_0 ;
  wire \m_axis_tuser[1]_i_6_n_0 ;
  wire \m_axis_tuser[1]_i_70_n_0 ;
  wire \m_axis_tuser[1]_i_71_n_0 ;
  wire \m_axis_tuser[1]_i_72_n_0 ;
  wire \m_axis_tuser[1]_i_73_n_0 ;
  wire \m_axis_tuser[1]_i_74_n_0 ;
  wire \m_axis_tuser[1]_i_75_n_0 ;
  wire \m_axis_tuser[1]_i_76_n_0 ;
  wire \m_axis_tuser[1]_i_77_n_0 ;
  wire \m_axis_tuser[1]_i_78_n_0 ;
  wire \m_axis_tuser[1]_i_79_n_0 ;
  wire \m_axis_tuser[1]_i_7_n_0 ;
  wire \m_axis_tuser[1]_i_80_n_0 ;
  wire \m_axis_tuser[1]_i_81_n_0 ;
  wire \m_axis_tuser[1]_i_82_n_0 ;
  wire \m_axis_tuser[1]_i_83_n_0 ;
  wire \m_axis_tuser[1]_i_84_n_0 ;
  wire \m_axis_tuser[1]_i_85_n_0 ;
  wire \m_axis_tuser[1]_i_86_n_0 ;
  wire \m_axis_tuser[1]_i_87_n_0 ;
  wire \m_axis_tuser[1]_i_89_n_0 ;
  wire \m_axis_tuser[1]_i_8_n_0 ;
  wire \m_axis_tuser[1]_i_90_n_0 ;
  wire \m_axis_tuser[1]_i_91_n_0 ;
  wire \m_axis_tuser[1]_i_92_n_0 ;
  wire \m_axis_tuser[1]_i_93_n_0 ;
  wire \m_axis_tuser[1]_i_94_n_0 ;
  wire \m_axis_tuser[1]_i_95_n_0 ;
  wire \m_axis_tuser[1]_i_96_n_0 ;
  wire \m_axis_tuser[1]_i_98_n_0 ;
  wire \m_axis_tuser[1]_i_99_n_0 ;
  wire \m_axis_tuser[1]_i_9_n_0 ;
  wire \m_axis_tuser[2]_i_100_n_0 ;
  wire \m_axis_tuser[2]_i_101_n_0 ;
  wire \m_axis_tuser[2]_i_102_n_0 ;
  wire \m_axis_tuser[2]_i_103_n_0 ;
  wire \m_axis_tuser[2]_i_104_n_0 ;
  wire \m_axis_tuser[2]_i_105_n_0 ;
  wire \m_axis_tuser[2]_i_106_n_0 ;
  wire \m_axis_tuser[2]_i_107_n_0 ;
  wire \m_axis_tuser[2]_i_108_n_0 ;
  wire \m_axis_tuser[2]_i_109_n_0 ;
  wire \m_axis_tuser[2]_i_10_n_0 ;
  wire \m_axis_tuser[2]_i_110_n_0 ;
  wire \m_axis_tuser[2]_i_111_n_0 ;
  wire \m_axis_tuser[2]_i_112_n_0 ;
  wire \m_axis_tuser[2]_i_113_n_0 ;
  wire \m_axis_tuser[2]_i_114_n_0 ;
  wire \m_axis_tuser[2]_i_115_n_0 ;
  wire \m_axis_tuser[2]_i_116_n_0 ;
  wire \m_axis_tuser[2]_i_117_n_0 ;
  wire \m_axis_tuser[2]_i_118_n_0 ;
  wire \m_axis_tuser[2]_i_11_n_0 ;
  wire \m_axis_tuser[2]_i_120_n_0 ;
  wire \m_axis_tuser[2]_i_121_n_0 ;
  wire \m_axis_tuser[2]_i_122_n_0 ;
  wire \m_axis_tuser[2]_i_123_n_0 ;
  wire \m_axis_tuser[2]_i_124_n_0 ;
  wire \m_axis_tuser[2]_i_125_n_0 ;
  wire \m_axis_tuser[2]_i_126_n_0 ;
  wire \m_axis_tuser[2]_i_127_n_0 ;
  wire \m_axis_tuser[2]_i_128_n_0 ;
  wire \m_axis_tuser[2]_i_129_n_0 ;
  wire \m_axis_tuser[2]_i_130_n_0 ;
  wire \m_axis_tuser[2]_i_131_n_0 ;
  wire \m_axis_tuser[2]_i_132_n_0 ;
  wire \m_axis_tuser[2]_i_133_n_0 ;
  wire \m_axis_tuser[2]_i_134_n_0 ;
  wire \m_axis_tuser[2]_i_14_n_0 ;
  wire \m_axis_tuser[2]_i_15_n_0 ;
  wire \m_axis_tuser[2]_i_16_n_0 ;
  wire \m_axis_tuser[2]_i_17_n_0 ;
  wire \m_axis_tuser[2]_i_18_n_0 ;
  wire \m_axis_tuser[2]_i_19_n_0 ;
  wire \m_axis_tuser[2]_i_20_n_0 ;
  wire \m_axis_tuser[2]_i_21_n_0 ;
  wire \m_axis_tuser[2]_i_22_n_0 ;
  wire \m_axis_tuser[2]_i_23_n_0 ;
  wire \m_axis_tuser[2]_i_24_n_0 ;
  wire \m_axis_tuser[2]_i_25_n_0 ;
  wire \m_axis_tuser[2]_i_26_n_0 ;
  wire \m_axis_tuser[2]_i_27_n_0 ;
  wire \m_axis_tuser[2]_i_28_n_0 ;
  wire \m_axis_tuser[2]_i_29_n_0 ;
  wire \m_axis_tuser[2]_i_2_n_0 ;
  wire \m_axis_tuser[2]_i_30_n_0 ;
  wire \m_axis_tuser[2]_i_33_n_0 ;
  wire \m_axis_tuser[2]_i_34_n_0 ;
  wire \m_axis_tuser[2]_i_35_n_0 ;
  wire \m_axis_tuser[2]_i_36_n_0 ;
  wire \m_axis_tuser[2]_i_37_n_0 ;
  wire \m_axis_tuser[2]_i_38_n_0 ;
  wire \m_axis_tuser[2]_i_39_n_0 ;
  wire \m_axis_tuser[2]_i_3_n_0 ;
  wire \m_axis_tuser[2]_i_40_n_0 ;
  wire \m_axis_tuser[2]_i_41_n_0 ;
  wire \m_axis_tuser[2]_i_42_n_0 ;
  wire \m_axis_tuser[2]_i_43_n_0 ;
  wire \m_axis_tuser[2]_i_44_n_0 ;
  wire \m_axis_tuser[2]_i_45_n_0 ;
  wire \m_axis_tuser[2]_i_46_n_0 ;
  wire \m_axis_tuser[2]_i_47_n_0 ;
  wire \m_axis_tuser[2]_i_48_n_0 ;
  wire \m_axis_tuser[2]_i_4_n_0 ;
  wire \m_axis_tuser[2]_i_55_n_0 ;
  wire \m_axis_tuser[2]_i_56_n_0 ;
  wire \m_axis_tuser[2]_i_57_n_0 ;
  wire \m_axis_tuser[2]_i_58_n_0 ;
  wire \m_axis_tuser[2]_i_59_n_0 ;
  wire \m_axis_tuser[2]_i_60_n_0 ;
  wire \m_axis_tuser[2]_i_61_n_0 ;
  wire \m_axis_tuser[2]_i_62_n_0 ;
  wire \m_axis_tuser[2]_i_63_n_0 ;
  wire \m_axis_tuser[2]_i_65_n_0 ;
  wire \m_axis_tuser[2]_i_66_n_0 ;
  wire \m_axis_tuser[2]_i_67_n_0 ;
  wire \m_axis_tuser[2]_i_68_n_0 ;
  wire \m_axis_tuser[2]_i_69_n_0 ;
  wire \m_axis_tuser[2]_i_6_n_0 ;
  wire \m_axis_tuser[2]_i_70_n_0 ;
  wire \m_axis_tuser[2]_i_71_n_0 ;
  wire \m_axis_tuser[2]_i_72_n_0 ;
  wire \m_axis_tuser[2]_i_73_n_0 ;
  wire \m_axis_tuser[2]_i_74_n_0 ;
  wire \m_axis_tuser[2]_i_75_n_0 ;
  wire \m_axis_tuser[2]_i_76_n_0 ;
  wire \m_axis_tuser[2]_i_77_n_0 ;
  wire \m_axis_tuser[2]_i_78_n_0 ;
  wire \m_axis_tuser[2]_i_79_n_0 ;
  wire \m_axis_tuser[2]_i_7_n_0 ;
  wire \m_axis_tuser[2]_i_80_n_0 ;
  wire \m_axis_tuser[2]_i_81_n_0 ;
  wire \m_axis_tuser[2]_i_82_n_0 ;
  wire \m_axis_tuser[2]_i_83_n_0 ;
  wire \m_axis_tuser[2]_i_84_n_0 ;
  wire \m_axis_tuser[2]_i_85_n_0 ;
  wire \m_axis_tuser[2]_i_86_n_0 ;
  wire \m_axis_tuser[2]_i_87_n_0 ;
  wire \m_axis_tuser[2]_i_89_n_0 ;
  wire \m_axis_tuser[2]_i_8_n_0 ;
  wire \m_axis_tuser[2]_i_90_n_0 ;
  wire \m_axis_tuser[2]_i_91_n_0 ;
  wire \m_axis_tuser[2]_i_92_n_0 ;
  wire \m_axis_tuser[2]_i_93_n_0 ;
  wire \m_axis_tuser[2]_i_94_n_0 ;
  wire \m_axis_tuser[2]_i_95_n_0 ;
  wire \m_axis_tuser[2]_i_96_n_0 ;
  wire \m_axis_tuser[2]_i_98_n_0 ;
  wire \m_axis_tuser[2]_i_99_n_0 ;
  wire \m_axis_tuser[2]_i_9_n_0 ;
  wire \m_axis_tuser[3]_i_100_n_0 ;
  wire \m_axis_tuser[3]_i_101_n_0 ;
  wire \m_axis_tuser[3]_i_102_n_0 ;
  wire \m_axis_tuser[3]_i_103_n_0 ;
  wire \m_axis_tuser[3]_i_104_n_0 ;
  wire \m_axis_tuser[3]_i_105_n_0 ;
  wire \m_axis_tuser[3]_i_106_n_0 ;
  wire \m_axis_tuser[3]_i_107_n_0 ;
  wire \m_axis_tuser[3]_i_108_n_0 ;
  wire \m_axis_tuser[3]_i_109_n_0 ;
  wire \m_axis_tuser[3]_i_10_n_0 ;
  wire \m_axis_tuser[3]_i_110_n_0 ;
  wire \m_axis_tuser[3]_i_111_n_0 ;
  wire \m_axis_tuser[3]_i_112_n_0 ;
  wire \m_axis_tuser[3]_i_113_n_0 ;
  wire \m_axis_tuser[3]_i_114_n_0 ;
  wire \m_axis_tuser[3]_i_115_n_0 ;
  wire \m_axis_tuser[3]_i_116_n_0 ;
  wire \m_axis_tuser[3]_i_117_n_0 ;
  wire \m_axis_tuser[3]_i_118_n_0 ;
  wire \m_axis_tuser[3]_i_11_n_0 ;
  wire \m_axis_tuser[3]_i_120_n_0 ;
  wire \m_axis_tuser[3]_i_121_n_0 ;
  wire \m_axis_tuser[3]_i_122_n_0 ;
  wire \m_axis_tuser[3]_i_123_n_0 ;
  wire \m_axis_tuser[3]_i_124_n_0 ;
  wire \m_axis_tuser[3]_i_125_n_0 ;
  wire \m_axis_tuser[3]_i_126_n_0 ;
  wire \m_axis_tuser[3]_i_127_n_0 ;
  wire \m_axis_tuser[3]_i_128_n_0 ;
  wire \m_axis_tuser[3]_i_129_n_0 ;
  wire \m_axis_tuser[3]_i_130_n_0 ;
  wire \m_axis_tuser[3]_i_131_n_0 ;
  wire \m_axis_tuser[3]_i_132_n_0 ;
  wire \m_axis_tuser[3]_i_134_n_0 ;
  wire \m_axis_tuser[3]_i_135_n_0 ;
  wire \m_axis_tuser[3]_i_14_n_0 ;
  wire \m_axis_tuser[3]_i_15_n_0 ;
  wire \m_axis_tuser[3]_i_16_n_0 ;
  wire \m_axis_tuser[3]_i_17_n_0 ;
  wire \m_axis_tuser[3]_i_18_n_0 ;
  wire \m_axis_tuser[3]_i_19_n_0 ;
  wire \m_axis_tuser[3]_i_20_n_0 ;
  wire \m_axis_tuser[3]_i_21_n_0 ;
  wire \m_axis_tuser[3]_i_22_n_0 ;
  wire \m_axis_tuser[3]_i_23_n_0 ;
  wire \m_axis_tuser[3]_i_24_n_0 ;
  wire \m_axis_tuser[3]_i_25_n_0 ;
  wire \m_axis_tuser[3]_i_26_n_0 ;
  wire \m_axis_tuser[3]_i_27_n_0 ;
  wire \m_axis_tuser[3]_i_28_n_0 ;
  wire \m_axis_tuser[3]_i_29_n_0 ;
  wire \m_axis_tuser[3]_i_2_n_0 ;
  wire \m_axis_tuser[3]_i_30_n_0 ;
  wire \m_axis_tuser[3]_i_33_n_0 ;
  wire \m_axis_tuser[3]_i_34_n_0 ;
  wire \m_axis_tuser[3]_i_35_n_0 ;
  wire \m_axis_tuser[3]_i_36_n_0 ;
  wire \m_axis_tuser[3]_i_37_n_0 ;
  wire \m_axis_tuser[3]_i_38_n_0 ;
  wire \m_axis_tuser[3]_i_39_n_0 ;
  wire \m_axis_tuser[3]_i_3_n_0 ;
  wire \m_axis_tuser[3]_i_40_n_0 ;
  wire \m_axis_tuser[3]_i_41_n_0 ;
  wire \m_axis_tuser[3]_i_42_n_0 ;
  wire \m_axis_tuser[3]_i_43_n_0 ;
  wire \m_axis_tuser[3]_i_44_n_0 ;
  wire \m_axis_tuser[3]_i_45_n_0 ;
  wire \m_axis_tuser[3]_i_46_n_0 ;
  wire \m_axis_tuser[3]_i_47_n_0 ;
  wire \m_axis_tuser[3]_i_48_n_0 ;
  wire \m_axis_tuser[3]_i_4_n_0 ;
  wire \m_axis_tuser[3]_i_55_n_0 ;
  wire \m_axis_tuser[3]_i_56_n_0 ;
  wire \m_axis_tuser[3]_i_57_n_0 ;
  wire \m_axis_tuser[3]_i_58_n_0 ;
  wire \m_axis_tuser[3]_i_59_n_0 ;
  wire \m_axis_tuser[3]_i_60_n_0 ;
  wire \m_axis_tuser[3]_i_61_n_0 ;
  wire \m_axis_tuser[3]_i_62_n_0 ;
  wire \m_axis_tuser[3]_i_63_n_0 ;
  wire \m_axis_tuser[3]_i_65_n_0 ;
  wire \m_axis_tuser[3]_i_66_n_0 ;
  wire \m_axis_tuser[3]_i_67_n_0 ;
  wire \m_axis_tuser[3]_i_68_n_0 ;
  wire \m_axis_tuser[3]_i_69_n_0 ;
  wire \m_axis_tuser[3]_i_6_n_0 ;
  wire \m_axis_tuser[3]_i_70_n_0 ;
  wire \m_axis_tuser[3]_i_71_n_0 ;
  wire \m_axis_tuser[3]_i_72_n_0 ;
  wire \m_axis_tuser[3]_i_73_n_0 ;
  wire \m_axis_tuser[3]_i_74_n_0 ;
  wire \m_axis_tuser[3]_i_75_n_0 ;
  wire \m_axis_tuser[3]_i_76_n_0 ;
  wire \m_axis_tuser[3]_i_77_n_0 ;
  wire \m_axis_tuser[3]_i_78_n_0 ;
  wire \m_axis_tuser[3]_i_79_n_0 ;
  wire \m_axis_tuser[3]_i_7_n_0 ;
  wire \m_axis_tuser[3]_i_80_n_0 ;
  wire \m_axis_tuser[3]_i_81_n_0 ;
  wire \m_axis_tuser[3]_i_82_n_0 ;
  wire \m_axis_tuser[3]_i_83_n_0 ;
  wire \m_axis_tuser[3]_i_84_n_0 ;
  wire \m_axis_tuser[3]_i_85_n_0 ;
  wire \m_axis_tuser[3]_i_86_n_0 ;
  wire \m_axis_tuser[3]_i_87_n_0 ;
  wire \m_axis_tuser[3]_i_89_n_0 ;
  wire \m_axis_tuser[3]_i_8_n_0 ;
  wire \m_axis_tuser[3]_i_90_n_0 ;
  wire \m_axis_tuser[3]_i_91_n_0 ;
  wire \m_axis_tuser[3]_i_92_n_0 ;
  wire \m_axis_tuser[3]_i_93_n_0 ;
  wire \m_axis_tuser[3]_i_94_n_0 ;
  wire \m_axis_tuser[3]_i_95_n_0 ;
  wire \m_axis_tuser[3]_i_96_n_0 ;
  wire \m_axis_tuser[3]_i_98_n_0 ;
  wire \m_axis_tuser[3]_i_99_n_0 ;
  wire \m_axis_tuser[3]_i_9_n_0 ;
  wire \m_axis_tuser[4]_i_100_n_0 ;
  wire \m_axis_tuser[4]_i_101_n_0 ;
  wire \m_axis_tuser[4]_i_102_n_0 ;
  wire \m_axis_tuser[4]_i_103_n_0 ;
  wire \m_axis_tuser[4]_i_104_n_0 ;
  wire \m_axis_tuser[4]_i_105_n_0 ;
  wire \m_axis_tuser[4]_i_106_n_0 ;
  wire \m_axis_tuser[4]_i_107_n_0 ;
  wire \m_axis_tuser[4]_i_108_n_0 ;
  wire \m_axis_tuser[4]_i_109_n_0 ;
  wire \m_axis_tuser[4]_i_10_n_0 ;
  wire \m_axis_tuser[4]_i_110_n_0 ;
  wire \m_axis_tuser[4]_i_111_n_0 ;
  wire \m_axis_tuser[4]_i_112_n_0 ;
  wire \m_axis_tuser[4]_i_113_n_0 ;
  wire \m_axis_tuser[4]_i_114_n_0 ;
  wire \m_axis_tuser[4]_i_115_n_0 ;
  wire \m_axis_tuser[4]_i_116_n_0 ;
  wire \m_axis_tuser[4]_i_117_n_0 ;
  wire \m_axis_tuser[4]_i_118_n_0 ;
  wire \m_axis_tuser[4]_i_119_n_0 ;
  wire \m_axis_tuser[4]_i_11_n_0 ;
  wire \m_axis_tuser[4]_i_120_n_0 ;
  wire \m_axis_tuser[4]_i_121_n_0 ;
  wire \m_axis_tuser[4]_i_122_n_0 ;
  wire \m_axis_tuser[4]_i_123_n_0 ;
  wire \m_axis_tuser[4]_i_124_n_0 ;
  wire \m_axis_tuser[4]_i_125_n_0 ;
  wire \m_axis_tuser[4]_i_126_n_0 ;
  wire \m_axis_tuser[4]_i_127_n_0 ;
  wire \m_axis_tuser[4]_i_128_n_0 ;
  wire \m_axis_tuser[4]_i_129_n_0 ;
  wire \m_axis_tuser[4]_i_130_n_0 ;
  wire \m_axis_tuser[4]_i_131_n_0 ;
  wire \m_axis_tuser[4]_i_132_n_0 ;
  wire \m_axis_tuser[4]_i_133_n_0 ;
  wire \m_axis_tuser[4]_i_14_n_0 ;
  wire \m_axis_tuser[4]_i_15_n_0 ;
  wire \m_axis_tuser[4]_i_16_n_0 ;
  wire \m_axis_tuser[4]_i_17_n_0 ;
  wire \m_axis_tuser[4]_i_18_n_0 ;
  wire \m_axis_tuser[4]_i_19_n_0 ;
  wire \m_axis_tuser[4]_i_20_n_0 ;
  wire \m_axis_tuser[4]_i_21_n_0 ;
  wire \m_axis_tuser[4]_i_22_n_0 ;
  wire \m_axis_tuser[4]_i_23_n_0 ;
  wire \m_axis_tuser[4]_i_24_n_0 ;
  wire \m_axis_tuser[4]_i_25_n_0 ;
  wire \m_axis_tuser[4]_i_26_n_0 ;
  wire \m_axis_tuser[4]_i_27_n_0 ;
  wire \m_axis_tuser[4]_i_28_n_0 ;
  wire \m_axis_tuser[4]_i_29_n_0 ;
  wire \m_axis_tuser[4]_i_2_n_0 ;
  wire \m_axis_tuser[4]_i_30_n_0 ;
  wire \m_axis_tuser[4]_i_33_n_0 ;
  wire \m_axis_tuser[4]_i_34_n_0 ;
  wire \m_axis_tuser[4]_i_35_n_0 ;
  wire \m_axis_tuser[4]_i_36_n_0 ;
  wire \m_axis_tuser[4]_i_37_n_0 ;
  wire \m_axis_tuser[4]_i_38_n_0 ;
  wire \m_axis_tuser[4]_i_39_n_0 ;
  wire \m_axis_tuser[4]_i_3_n_0 ;
  wire \m_axis_tuser[4]_i_40_n_0 ;
  wire \m_axis_tuser[4]_i_41_n_0 ;
  wire \m_axis_tuser[4]_i_42_n_0 ;
  wire \m_axis_tuser[4]_i_43_n_0 ;
  wire \m_axis_tuser[4]_i_44_n_0 ;
  wire \m_axis_tuser[4]_i_45_n_0 ;
  wire \m_axis_tuser[4]_i_46_n_0 ;
  wire \m_axis_tuser[4]_i_47_n_0 ;
  wire \m_axis_tuser[4]_i_48_n_0 ;
  wire \m_axis_tuser[4]_i_4_n_0 ;
  wire \m_axis_tuser[4]_i_53_n_0 ;
  wire \m_axis_tuser[4]_i_55_n_0 ;
  wire \m_axis_tuser[4]_i_56_n_0 ;
  wire \m_axis_tuser[4]_i_58_n_0 ;
  wire \m_axis_tuser[4]_i_59_n_0 ;
  wire \m_axis_tuser[4]_i_60_n_0 ;
  wire \m_axis_tuser[4]_i_61_n_0 ;
  wire \m_axis_tuser[4]_i_62_n_0 ;
  wire \m_axis_tuser[4]_i_63_n_0 ;
  wire \m_axis_tuser[4]_i_64_n_0 ;
  wire \m_axis_tuser[4]_i_65_n_0 ;
  wire \m_axis_tuser[4]_i_66_n_0 ;
  wire \m_axis_tuser[4]_i_68_n_0 ;
  wire \m_axis_tuser[4]_i_69_n_0 ;
  wire \m_axis_tuser[4]_i_6_n_0 ;
  wire \m_axis_tuser[4]_i_70_n_0 ;
  wire \m_axis_tuser[4]_i_71_n_0 ;
  wire \m_axis_tuser[4]_i_72_n_0 ;
  wire \m_axis_tuser[4]_i_73_n_0 ;
  wire \m_axis_tuser[4]_i_74_n_0 ;
  wire \m_axis_tuser[4]_i_75_n_0 ;
  wire \m_axis_tuser[4]_i_76_n_0 ;
  wire \m_axis_tuser[4]_i_77_n_0 ;
  wire \m_axis_tuser[4]_i_78_n_0 ;
  wire \m_axis_tuser[4]_i_79_n_0 ;
  wire \m_axis_tuser[4]_i_7_n_0 ;
  wire \m_axis_tuser[4]_i_80_n_0 ;
  wire \m_axis_tuser[4]_i_81_n_0 ;
  wire \m_axis_tuser[4]_i_82_n_0 ;
  wire \m_axis_tuser[4]_i_83_n_0 ;
  wire \m_axis_tuser[4]_i_84_n_0 ;
  wire \m_axis_tuser[4]_i_85_n_0 ;
  wire \m_axis_tuser[4]_i_86_n_0 ;
  wire \m_axis_tuser[4]_i_87_n_0 ;
  wire \m_axis_tuser[4]_i_88_n_0 ;
  wire \m_axis_tuser[4]_i_89_n_0 ;
  wire \m_axis_tuser[4]_i_8_n_0 ;
  wire \m_axis_tuser[4]_i_91_n_0 ;
  wire \m_axis_tuser[4]_i_93_n_0 ;
  wire \m_axis_tuser[4]_i_94_n_0 ;
  wire \m_axis_tuser[4]_i_95_n_0 ;
  wire \m_axis_tuser[4]_i_96_n_0 ;
  wire \m_axis_tuser[4]_i_97_n_0 ;
  wire \m_axis_tuser[4]_i_98_n_0 ;
  wire \m_axis_tuser[4]_i_99_n_0 ;
  wire \m_axis_tuser[4]_i_9_n_0 ;
  wire \m_axis_tuser[5]_i_100_n_0 ;
  wire \m_axis_tuser[5]_i_101_n_0 ;
  wire \m_axis_tuser[5]_i_102_n_0 ;
  wire \m_axis_tuser[5]_i_103_n_0 ;
  wire \m_axis_tuser[5]_i_104_n_0 ;
  wire \m_axis_tuser[5]_i_105_n_0 ;
  wire \m_axis_tuser[5]_i_106_n_0 ;
  wire \m_axis_tuser[5]_i_107_n_0 ;
  wire \m_axis_tuser[5]_i_108_n_0 ;
  wire \m_axis_tuser[5]_i_109_n_0 ;
  wire \m_axis_tuser[5]_i_10_n_0 ;
  wire \m_axis_tuser[5]_i_110_n_0 ;
  wire \m_axis_tuser[5]_i_111_n_0 ;
  wire \m_axis_tuser[5]_i_112_n_0 ;
  wire \m_axis_tuser[5]_i_113_n_0 ;
  wire \m_axis_tuser[5]_i_114_n_0 ;
  wire \m_axis_tuser[5]_i_115_n_0 ;
  wire \m_axis_tuser[5]_i_116_n_0 ;
  wire \m_axis_tuser[5]_i_117_n_0 ;
  wire \m_axis_tuser[5]_i_118_n_0 ;
  wire \m_axis_tuser[5]_i_119_n_0 ;
  wire \m_axis_tuser[5]_i_11_n_0 ;
  wire \m_axis_tuser[5]_i_121_n_0 ;
  wire \m_axis_tuser[5]_i_122_n_0 ;
  wire \m_axis_tuser[5]_i_123_n_0 ;
  wire \m_axis_tuser[5]_i_124_n_0 ;
  wire \m_axis_tuser[5]_i_125_n_0 ;
  wire \m_axis_tuser[5]_i_126_n_0 ;
  wire \m_axis_tuser[5]_i_127_n_0 ;
  wire \m_axis_tuser[5]_i_128_n_0 ;
  wire \m_axis_tuser[5]_i_129_n_0 ;
  wire \m_axis_tuser[5]_i_130_n_0 ;
  wire \m_axis_tuser[5]_i_131_n_0 ;
  wire \m_axis_tuser[5]_i_132_n_0 ;
  wire \m_axis_tuser[5]_i_133_n_0 ;
  wire \m_axis_tuser[5]_i_134_n_0 ;
  wire \m_axis_tuser[5]_i_136_n_0 ;
  wire \m_axis_tuser[5]_i_137_n_0 ;
  wire \m_axis_tuser[5]_i_14_n_0 ;
  wire \m_axis_tuser[5]_i_15_n_0 ;
  wire \m_axis_tuser[5]_i_16_n_0 ;
  wire \m_axis_tuser[5]_i_17_n_0 ;
  wire \m_axis_tuser[5]_i_18_n_0 ;
  wire \m_axis_tuser[5]_i_19_n_0 ;
  wire \m_axis_tuser[5]_i_20_n_0 ;
  wire \m_axis_tuser[5]_i_21_n_0 ;
  wire \m_axis_tuser[5]_i_22_n_0 ;
  wire \m_axis_tuser[5]_i_23_n_0 ;
  wire \m_axis_tuser[5]_i_24_n_0 ;
  wire \m_axis_tuser[5]_i_25_n_0 ;
  wire \m_axis_tuser[5]_i_26_n_0 ;
  wire \m_axis_tuser[5]_i_27_n_0 ;
  wire \m_axis_tuser[5]_i_28_n_0 ;
  wire \m_axis_tuser[5]_i_29_n_0 ;
  wire \m_axis_tuser[5]_i_2_n_0 ;
  wire \m_axis_tuser[5]_i_30_n_0 ;
  wire \m_axis_tuser[5]_i_33_n_0 ;
  wire \m_axis_tuser[5]_i_34_n_0 ;
  wire \m_axis_tuser[5]_i_35_n_0 ;
  wire \m_axis_tuser[5]_i_36_n_0 ;
  wire \m_axis_tuser[5]_i_37_n_0 ;
  wire \m_axis_tuser[5]_i_38_n_0 ;
  wire \m_axis_tuser[5]_i_39_n_0 ;
  wire \m_axis_tuser[5]_i_3_n_0 ;
  wire \m_axis_tuser[5]_i_40_n_0 ;
  wire \m_axis_tuser[5]_i_41_n_0 ;
  wire \m_axis_tuser[5]_i_42_n_0 ;
  wire \m_axis_tuser[5]_i_43_n_0 ;
  wire \m_axis_tuser[5]_i_44_n_0 ;
  wire \m_axis_tuser[5]_i_45_n_0 ;
  wire \m_axis_tuser[5]_i_46_n_0 ;
  wire \m_axis_tuser[5]_i_47_n_0 ;
  wire \m_axis_tuser[5]_i_48_n_0 ;
  wire \m_axis_tuser[5]_i_4_n_0 ;
  wire \m_axis_tuser[5]_i_53_n_0 ;
  wire \m_axis_tuser[5]_i_56_n_0 ;
  wire \m_axis_tuser[5]_i_57_n_0 ;
  wire \m_axis_tuser[5]_i_58_n_0 ;
  wire \m_axis_tuser[5]_i_59_n_0 ;
  wire \m_axis_tuser[5]_i_60_n_0 ;
  wire \m_axis_tuser[5]_i_61_n_0 ;
  wire \m_axis_tuser[5]_i_62_n_0 ;
  wire \m_axis_tuser[5]_i_63_n_0 ;
  wire \m_axis_tuser[5]_i_64_n_0 ;
  wire \m_axis_tuser[5]_i_66_n_0 ;
  wire \m_axis_tuser[5]_i_67_n_0 ;
  wire \m_axis_tuser[5]_i_68_n_0 ;
  wire \m_axis_tuser[5]_i_69_n_0 ;
  wire \m_axis_tuser[5]_i_6_n_0 ;
  wire \m_axis_tuser[5]_i_70_n_0 ;
  wire \m_axis_tuser[5]_i_71_n_0 ;
  wire \m_axis_tuser[5]_i_72_n_0 ;
  wire \m_axis_tuser[5]_i_73_n_0 ;
  wire \m_axis_tuser[5]_i_74_n_0 ;
  wire \m_axis_tuser[5]_i_75_n_0 ;
  wire \m_axis_tuser[5]_i_76_n_0 ;
  wire \m_axis_tuser[5]_i_77_n_0 ;
  wire \m_axis_tuser[5]_i_78_n_0 ;
  wire \m_axis_tuser[5]_i_79_n_0 ;
  wire \m_axis_tuser[5]_i_7_n_0 ;
  wire \m_axis_tuser[5]_i_80_n_0 ;
  wire \m_axis_tuser[5]_i_81_n_0 ;
  wire \m_axis_tuser[5]_i_82_n_0 ;
  wire \m_axis_tuser[5]_i_83_n_0 ;
  wire \m_axis_tuser[5]_i_84_n_0 ;
  wire \m_axis_tuser[5]_i_85_n_0 ;
  wire \m_axis_tuser[5]_i_86_n_0 ;
  wire \m_axis_tuser[5]_i_87_n_0 ;
  wire \m_axis_tuser[5]_i_88_n_0 ;
  wire \m_axis_tuser[5]_i_8_n_0 ;
  wire \m_axis_tuser[5]_i_90_n_0 ;
  wire \m_axis_tuser[5]_i_91_n_0 ;
  wire \m_axis_tuser[5]_i_92_n_0 ;
  wire \m_axis_tuser[5]_i_93_n_0 ;
  wire \m_axis_tuser[5]_i_94_n_0 ;
  wire \m_axis_tuser[5]_i_95_n_0 ;
  wire \m_axis_tuser[5]_i_96_n_0 ;
  wire \m_axis_tuser[5]_i_97_n_0 ;
  wire \m_axis_tuser[5]_i_99_n_0 ;
  wire \m_axis_tuser[5]_i_9_n_0 ;
  wire \m_axis_tuser[6]_i_100_n_0 ;
  wire \m_axis_tuser[6]_i_101_n_0 ;
  wire \m_axis_tuser[6]_i_102_n_0 ;
  wire \m_axis_tuser[6]_i_103_n_0 ;
  wire \m_axis_tuser[6]_i_104_n_0 ;
  wire \m_axis_tuser[6]_i_105_n_0 ;
  wire \m_axis_tuser[6]_i_106_n_0 ;
  wire \m_axis_tuser[6]_i_107_n_0 ;
  wire \m_axis_tuser[6]_i_108_n_0 ;
  wire \m_axis_tuser[6]_i_109_n_0 ;
  wire \m_axis_tuser[6]_i_10_n_0 ;
  wire \m_axis_tuser[6]_i_110_n_0 ;
  wire \m_axis_tuser[6]_i_111_n_0 ;
  wire \m_axis_tuser[6]_i_112_n_0 ;
  wire \m_axis_tuser[6]_i_113_n_0 ;
  wire \m_axis_tuser[6]_i_114_n_0 ;
  wire \m_axis_tuser[6]_i_115_n_0 ;
  wire \m_axis_tuser[6]_i_116_n_0 ;
  wire \m_axis_tuser[6]_i_117_n_0 ;
  wire \m_axis_tuser[6]_i_118_n_0 ;
  wire \m_axis_tuser[6]_i_119_n_0 ;
  wire \m_axis_tuser[6]_i_11_n_0 ;
  wire \m_axis_tuser[6]_i_121_n_0 ;
  wire \m_axis_tuser[6]_i_122_n_0 ;
  wire \m_axis_tuser[6]_i_123_n_0 ;
  wire \m_axis_tuser[6]_i_124_n_0 ;
  wire \m_axis_tuser[6]_i_125_n_0 ;
  wire \m_axis_tuser[6]_i_126_n_0 ;
  wire \m_axis_tuser[6]_i_127_n_0 ;
  wire \m_axis_tuser[6]_i_128_n_0 ;
  wire \m_axis_tuser[6]_i_129_n_0 ;
  wire \m_axis_tuser[6]_i_130_n_0 ;
  wire \m_axis_tuser[6]_i_131_n_0 ;
  wire \m_axis_tuser[6]_i_132_n_0 ;
  wire \m_axis_tuser[6]_i_133_n_0 ;
  wire \m_axis_tuser[6]_i_134_n_0 ;
  wire \m_axis_tuser[6]_i_135_n_0 ;
  wire \m_axis_tuser[6]_i_136_n_0 ;
  wire \m_axis_tuser[6]_i_137_n_0 ;
  wire \m_axis_tuser[6]_i_138_n_0 ;
  wire \m_axis_tuser[6]_i_14_n_0 ;
  wire \m_axis_tuser[6]_i_15_n_0 ;
  wire \m_axis_tuser[6]_i_16_n_0 ;
  wire \m_axis_tuser[6]_i_17_n_0 ;
  wire \m_axis_tuser[6]_i_18_n_0 ;
  wire \m_axis_tuser[6]_i_19_n_0 ;
  wire \m_axis_tuser[6]_i_20_n_0 ;
  wire \m_axis_tuser[6]_i_21_n_0 ;
  wire \m_axis_tuser[6]_i_22_n_0 ;
  wire \m_axis_tuser[6]_i_23_n_0 ;
  wire \m_axis_tuser[6]_i_24_n_0 ;
  wire \m_axis_tuser[6]_i_25_n_0 ;
  wire \m_axis_tuser[6]_i_26_n_0 ;
  wire \m_axis_tuser[6]_i_27_n_0 ;
  wire \m_axis_tuser[6]_i_28_n_0 ;
  wire \m_axis_tuser[6]_i_29_n_0 ;
  wire \m_axis_tuser[6]_i_2_n_0 ;
  wire \m_axis_tuser[6]_i_30_n_0 ;
  wire \m_axis_tuser[6]_i_33_n_0 ;
  wire \m_axis_tuser[6]_i_34_n_0 ;
  wire \m_axis_tuser[6]_i_35_n_0 ;
  wire \m_axis_tuser[6]_i_36_n_0 ;
  wire \m_axis_tuser[6]_i_37_n_0 ;
  wire \m_axis_tuser[6]_i_38_n_0 ;
  wire \m_axis_tuser[6]_i_39_n_0 ;
  wire \m_axis_tuser[6]_i_3_n_0 ;
  wire \m_axis_tuser[6]_i_40_n_0 ;
  wire \m_axis_tuser[6]_i_41_n_0 ;
  wire \m_axis_tuser[6]_i_42_n_0 ;
  wire \m_axis_tuser[6]_i_43_n_0 ;
  wire \m_axis_tuser[6]_i_44_n_0 ;
  wire \m_axis_tuser[6]_i_45_n_0 ;
  wire \m_axis_tuser[6]_i_46_n_0 ;
  wire \m_axis_tuser[6]_i_47_n_0 ;
  wire \m_axis_tuser[6]_i_48_n_0 ;
  wire \m_axis_tuser[6]_i_4_n_0 ;
  wire \m_axis_tuser[6]_i_56_n_0 ;
  wire \m_axis_tuser[6]_i_57_n_0 ;
  wire \m_axis_tuser[6]_i_58_n_0 ;
  wire \m_axis_tuser[6]_i_59_n_0 ;
  wire \m_axis_tuser[6]_i_60_n_0 ;
  wire \m_axis_tuser[6]_i_61_n_0 ;
  wire \m_axis_tuser[6]_i_62_n_0 ;
  wire \m_axis_tuser[6]_i_63_n_0 ;
  wire \m_axis_tuser[6]_i_64_n_0 ;
  wire \m_axis_tuser[6]_i_66_n_0 ;
  wire \m_axis_tuser[6]_i_67_n_0 ;
  wire \m_axis_tuser[6]_i_68_n_0 ;
  wire \m_axis_tuser[6]_i_69_n_0 ;
  wire \m_axis_tuser[6]_i_6_n_0 ;
  wire \m_axis_tuser[6]_i_70_n_0 ;
  wire \m_axis_tuser[6]_i_71_n_0 ;
  wire \m_axis_tuser[6]_i_72_n_0 ;
  wire \m_axis_tuser[6]_i_73_n_0 ;
  wire \m_axis_tuser[6]_i_74_n_0 ;
  wire \m_axis_tuser[6]_i_75_n_0 ;
  wire \m_axis_tuser[6]_i_76_n_0 ;
  wire \m_axis_tuser[6]_i_77_n_0 ;
  wire \m_axis_tuser[6]_i_78_n_0 ;
  wire \m_axis_tuser[6]_i_79_n_0 ;
  wire \m_axis_tuser[6]_i_7_n_0 ;
  wire \m_axis_tuser[6]_i_80_n_0 ;
  wire \m_axis_tuser[6]_i_81_n_0 ;
  wire \m_axis_tuser[6]_i_82_n_0 ;
  wire \m_axis_tuser[6]_i_83_n_0 ;
  wire \m_axis_tuser[6]_i_84_n_0 ;
  wire \m_axis_tuser[6]_i_85_n_0 ;
  wire \m_axis_tuser[6]_i_86_n_0 ;
  wire \m_axis_tuser[6]_i_87_n_0 ;
  wire \m_axis_tuser[6]_i_88_n_0 ;
  wire \m_axis_tuser[6]_i_8_n_0 ;
  wire \m_axis_tuser[6]_i_90_n_0 ;
  wire \m_axis_tuser[6]_i_91_n_0 ;
  wire \m_axis_tuser[6]_i_92_n_0 ;
  wire \m_axis_tuser[6]_i_93_n_0 ;
  wire \m_axis_tuser[6]_i_94_n_0 ;
  wire \m_axis_tuser[6]_i_95_n_0 ;
  wire \m_axis_tuser[6]_i_96_n_0 ;
  wire \m_axis_tuser[6]_i_97_n_0 ;
  wire \m_axis_tuser[6]_i_99_n_0 ;
  wire \m_axis_tuser[6]_i_9_n_0 ;
  wire \m_axis_tuser[7]_i_100_n_0 ;
  wire \m_axis_tuser[7]_i_101_n_0 ;
  wire \m_axis_tuser[7]_i_102_n_0 ;
  wire \m_axis_tuser[7]_i_103_n_0 ;
  wire \m_axis_tuser[7]_i_104_n_0 ;
  wire \m_axis_tuser[7]_i_105_n_0 ;
  wire \m_axis_tuser[7]_i_106_n_0 ;
  wire \m_axis_tuser[7]_i_107_n_0 ;
  wire \m_axis_tuser[7]_i_108_n_0 ;
  wire \m_axis_tuser[7]_i_109_n_0 ;
  wire \m_axis_tuser[7]_i_10_n_0 ;
  wire \m_axis_tuser[7]_i_110_n_0 ;
  wire \m_axis_tuser[7]_i_111_n_0 ;
  wire \m_axis_tuser[7]_i_112_n_0 ;
  wire \m_axis_tuser[7]_i_113_n_0 ;
  wire \m_axis_tuser[7]_i_114_n_0 ;
  wire \m_axis_tuser[7]_i_115_n_0 ;
  wire \m_axis_tuser[7]_i_116_n_0 ;
  wire \m_axis_tuser[7]_i_117_n_0 ;
  wire \m_axis_tuser[7]_i_118_n_0 ;
  wire \m_axis_tuser[7]_i_119_n_0 ;
  wire \m_axis_tuser[7]_i_11_n_0 ;
  wire \m_axis_tuser[7]_i_121_n_0 ;
  wire \m_axis_tuser[7]_i_122_n_0 ;
  wire \m_axis_tuser[7]_i_123_n_0 ;
  wire \m_axis_tuser[7]_i_124_n_0 ;
  wire \m_axis_tuser[7]_i_125_n_0 ;
  wire \m_axis_tuser[7]_i_126_n_0 ;
  wire \m_axis_tuser[7]_i_127_n_0 ;
  wire \m_axis_tuser[7]_i_128_n_0 ;
  wire \m_axis_tuser[7]_i_129_n_0 ;
  wire \m_axis_tuser[7]_i_130_n_0 ;
  wire \m_axis_tuser[7]_i_131_n_0 ;
  wire \m_axis_tuser[7]_i_132_n_0 ;
  wire \m_axis_tuser[7]_i_133_n_0 ;
  wire \m_axis_tuser[7]_i_135_n_0 ;
  wire \m_axis_tuser[7]_i_136_n_0 ;
  wire \m_axis_tuser[7]_i_14_n_0 ;
  wire \m_axis_tuser[7]_i_15_n_0 ;
  wire \m_axis_tuser[7]_i_16_n_0 ;
  wire \m_axis_tuser[7]_i_17_n_0 ;
  wire \m_axis_tuser[7]_i_18_n_0 ;
  wire \m_axis_tuser[7]_i_19_n_0 ;
  wire \m_axis_tuser[7]_i_20_n_0 ;
  wire \m_axis_tuser[7]_i_21_n_0 ;
  wire \m_axis_tuser[7]_i_22_n_0 ;
  wire \m_axis_tuser[7]_i_23_n_0 ;
  wire \m_axis_tuser[7]_i_24_n_0 ;
  wire \m_axis_tuser[7]_i_25_n_0 ;
  wire \m_axis_tuser[7]_i_26_n_0 ;
  wire \m_axis_tuser[7]_i_27_n_0 ;
  wire \m_axis_tuser[7]_i_28_n_0 ;
  wire \m_axis_tuser[7]_i_29_n_0 ;
  wire \m_axis_tuser[7]_i_2_n_0 ;
  wire \m_axis_tuser[7]_i_30_n_0 ;
  wire \m_axis_tuser[7]_i_33_n_0 ;
  wire \m_axis_tuser[7]_i_34_n_0 ;
  wire \m_axis_tuser[7]_i_35_n_0 ;
  wire \m_axis_tuser[7]_i_36_n_0 ;
  wire \m_axis_tuser[7]_i_37_n_0 ;
  wire \m_axis_tuser[7]_i_38_n_0 ;
  wire \m_axis_tuser[7]_i_39_n_0 ;
  wire \m_axis_tuser[7]_i_3_n_0 ;
  wire \m_axis_tuser[7]_i_40_n_0 ;
  wire \m_axis_tuser[7]_i_41_n_0 ;
  wire \m_axis_tuser[7]_i_42_n_0 ;
  wire \m_axis_tuser[7]_i_43_n_0 ;
  wire \m_axis_tuser[7]_i_44_n_0 ;
  wire \m_axis_tuser[7]_i_45_n_0 ;
  wire \m_axis_tuser[7]_i_46_n_0 ;
  wire \m_axis_tuser[7]_i_47_n_0 ;
  wire \m_axis_tuser[7]_i_48_n_0 ;
  wire \m_axis_tuser[7]_i_4_n_0 ;
  wire \m_axis_tuser[7]_i_53_n_0 ;
  wire \m_axis_tuser[7]_i_56_n_0 ;
  wire \m_axis_tuser[7]_i_57_n_0 ;
  wire \m_axis_tuser[7]_i_58_n_0 ;
  wire \m_axis_tuser[7]_i_59_n_0 ;
  wire \m_axis_tuser[7]_i_60_n_0 ;
  wire \m_axis_tuser[7]_i_61_n_0 ;
  wire \m_axis_tuser[7]_i_62_n_0 ;
  wire \m_axis_tuser[7]_i_63_n_0 ;
  wire \m_axis_tuser[7]_i_64_n_0 ;
  wire \m_axis_tuser[7]_i_66_n_0 ;
  wire \m_axis_tuser[7]_i_67_n_0 ;
  wire \m_axis_tuser[7]_i_68_n_0 ;
  wire \m_axis_tuser[7]_i_69_n_0 ;
  wire \m_axis_tuser[7]_i_6_n_0 ;
  wire \m_axis_tuser[7]_i_70_n_0 ;
  wire \m_axis_tuser[7]_i_71_n_0 ;
  wire \m_axis_tuser[7]_i_72_n_0 ;
  wire \m_axis_tuser[7]_i_73_n_0 ;
  wire \m_axis_tuser[7]_i_74_n_0 ;
  wire \m_axis_tuser[7]_i_75_n_0 ;
  wire \m_axis_tuser[7]_i_76_n_0 ;
  wire \m_axis_tuser[7]_i_77_n_0 ;
  wire \m_axis_tuser[7]_i_78_n_0 ;
  wire \m_axis_tuser[7]_i_79_n_0 ;
  wire \m_axis_tuser[7]_i_7_n_0 ;
  wire \m_axis_tuser[7]_i_80_n_0 ;
  wire \m_axis_tuser[7]_i_81_n_0 ;
  wire \m_axis_tuser[7]_i_82_n_0 ;
  wire \m_axis_tuser[7]_i_83_n_0 ;
  wire \m_axis_tuser[7]_i_84_n_0 ;
  wire \m_axis_tuser[7]_i_85_n_0 ;
  wire \m_axis_tuser[7]_i_86_n_0 ;
  wire \m_axis_tuser[7]_i_87_n_0 ;
  wire \m_axis_tuser[7]_i_88_n_0 ;
  wire \m_axis_tuser[7]_i_8_n_0 ;
  wire \m_axis_tuser[7]_i_90_n_0 ;
  wire \m_axis_tuser[7]_i_91_n_0 ;
  wire \m_axis_tuser[7]_i_92_n_0 ;
  wire \m_axis_tuser[7]_i_93_n_0 ;
  wire \m_axis_tuser[7]_i_94_n_0 ;
  wire \m_axis_tuser[7]_i_95_n_0 ;
  wire \m_axis_tuser[7]_i_96_n_0 ;
  wire \m_axis_tuser[7]_i_97_n_0 ;
  wire \m_axis_tuser[7]_i_99_n_0 ;
  wire \m_axis_tuser[7]_i_9_n_0 ;
  wire \m_axis_tuser_reg[0]_i_12_n_4 ;
  wire \m_axis_tuser_reg[0]_i_12_n_5 ;
  wire \m_axis_tuser_reg[0]_i_12_n_6 ;
  wire \m_axis_tuser_reg[0]_i_12_n_7 ;
  wire \m_axis_tuser_reg[0]_i_13_n_4 ;
  wire \m_axis_tuser_reg[0]_i_13_n_5 ;
  wire \m_axis_tuser_reg[0]_i_13_n_6 ;
  wire \m_axis_tuser_reg[0]_i_13_n_7 ;
  wire \m_axis_tuser_reg[0]_i_31_n_4 ;
  wire \m_axis_tuser_reg[0]_i_31_n_5 ;
  wire \m_axis_tuser_reg[0]_i_31_n_6 ;
  wire \m_axis_tuser_reg[0]_i_31_n_7 ;
  wire \m_axis_tuser_reg[0]_i_32_n_4 ;
  wire \m_axis_tuser_reg[0]_i_32_n_5 ;
  wire \m_axis_tuser_reg[0]_i_32_n_6 ;
  wire \m_axis_tuser_reg[0]_i_32_n_7 ;
  wire \m_axis_tuser_reg[0]_i_5_n_5 ;
  wire \m_axis_tuser_reg[0]_i_5_n_6 ;
  wire \m_axis_tuser_reg[0]_i_5_n_7 ;
  wire \m_axis_tuser_reg[0]_i_64_n_4 ;
  wire \m_axis_tuser_reg[0]_i_64_n_5 ;
  wire \m_axis_tuser_reg[0]_i_64_n_6 ;
  wire \m_axis_tuser_reg[0]_i_64_n_7 ;
  wire \m_axis_tuser_reg[0]_i_97_n_4 ;
  wire \m_axis_tuser_reg[0]_i_97_n_5 ;
  wire \m_axis_tuser_reg[0]_i_97_n_6 ;
  wire \m_axis_tuser_reg[0]_i_97_n_7 ;
  wire \m_axis_tuser_reg[1]_i_12_n_4 ;
  wire \m_axis_tuser_reg[1]_i_12_n_5 ;
  wire \m_axis_tuser_reg[1]_i_12_n_6 ;
  wire \m_axis_tuser_reg[1]_i_12_n_7 ;
  wire \m_axis_tuser_reg[1]_i_13_n_4 ;
  wire \m_axis_tuser_reg[1]_i_13_n_5 ;
  wire \m_axis_tuser_reg[1]_i_13_n_6 ;
  wire \m_axis_tuser_reg[1]_i_13_n_7 ;
  wire \m_axis_tuser_reg[1]_i_31_n_4 ;
  wire \m_axis_tuser_reg[1]_i_31_n_5 ;
  wire \m_axis_tuser_reg[1]_i_31_n_6 ;
  wire \m_axis_tuser_reg[1]_i_31_n_7 ;
  wire \m_axis_tuser_reg[1]_i_32_n_4 ;
  wire \m_axis_tuser_reg[1]_i_32_n_5 ;
  wire \m_axis_tuser_reg[1]_i_32_n_6 ;
  wire \m_axis_tuser_reg[1]_i_32_n_7 ;
  wire \m_axis_tuser_reg[1]_i_5_n_5 ;
  wire \m_axis_tuser_reg[1]_i_5_n_6 ;
  wire \m_axis_tuser_reg[1]_i_5_n_7 ;
  wire \m_axis_tuser_reg[1]_i_64_n_4 ;
  wire \m_axis_tuser_reg[1]_i_64_n_5 ;
  wire \m_axis_tuser_reg[1]_i_64_n_6 ;
  wire \m_axis_tuser_reg[1]_i_64_n_7 ;
  wire \m_axis_tuser_reg[1]_i_97_n_4 ;
  wire \m_axis_tuser_reg[1]_i_97_n_5 ;
  wire \m_axis_tuser_reg[1]_i_97_n_6 ;
  wire \m_axis_tuser_reg[1]_i_97_n_7 ;
  wire \m_axis_tuser_reg[2]_i_12_n_4 ;
  wire \m_axis_tuser_reg[2]_i_12_n_5 ;
  wire \m_axis_tuser_reg[2]_i_12_n_6 ;
  wire \m_axis_tuser_reg[2]_i_12_n_7 ;
  wire \m_axis_tuser_reg[2]_i_13_n_4 ;
  wire \m_axis_tuser_reg[2]_i_13_n_5 ;
  wire \m_axis_tuser_reg[2]_i_13_n_6 ;
  wire \m_axis_tuser_reg[2]_i_13_n_7 ;
  wire \m_axis_tuser_reg[2]_i_31_n_4 ;
  wire \m_axis_tuser_reg[2]_i_31_n_5 ;
  wire \m_axis_tuser_reg[2]_i_31_n_6 ;
  wire \m_axis_tuser_reg[2]_i_31_n_7 ;
  wire \m_axis_tuser_reg[2]_i_32_n_4 ;
  wire \m_axis_tuser_reg[2]_i_32_n_5 ;
  wire \m_axis_tuser_reg[2]_i_32_n_6 ;
  wire \m_axis_tuser_reg[2]_i_32_n_7 ;
  wire \m_axis_tuser_reg[2]_i_5_n_5 ;
  wire \m_axis_tuser_reg[2]_i_5_n_6 ;
  wire \m_axis_tuser_reg[2]_i_5_n_7 ;
  wire \m_axis_tuser_reg[2]_i_64_n_4 ;
  wire \m_axis_tuser_reg[2]_i_64_n_5 ;
  wire \m_axis_tuser_reg[2]_i_64_n_6 ;
  wire \m_axis_tuser_reg[2]_i_64_n_7 ;
  wire \m_axis_tuser_reg[2]_i_97_n_4 ;
  wire \m_axis_tuser_reg[2]_i_97_n_5 ;
  wire \m_axis_tuser_reg[2]_i_97_n_6 ;
  wire \m_axis_tuser_reg[2]_i_97_n_7 ;
  wire \m_axis_tuser_reg[3]_i_12_n_4 ;
  wire \m_axis_tuser_reg[3]_i_12_n_5 ;
  wire \m_axis_tuser_reg[3]_i_12_n_6 ;
  wire \m_axis_tuser_reg[3]_i_12_n_7 ;
  wire \m_axis_tuser_reg[3]_i_13_n_4 ;
  wire \m_axis_tuser_reg[3]_i_13_n_5 ;
  wire \m_axis_tuser_reg[3]_i_13_n_6 ;
  wire \m_axis_tuser_reg[3]_i_13_n_7 ;
  wire \m_axis_tuser_reg[3]_i_31_n_4 ;
  wire \m_axis_tuser_reg[3]_i_31_n_5 ;
  wire \m_axis_tuser_reg[3]_i_31_n_6 ;
  wire \m_axis_tuser_reg[3]_i_31_n_7 ;
  wire \m_axis_tuser_reg[3]_i_32_n_4 ;
  wire \m_axis_tuser_reg[3]_i_32_n_5 ;
  wire \m_axis_tuser_reg[3]_i_32_n_6 ;
  wire \m_axis_tuser_reg[3]_i_32_n_7 ;
  wire \m_axis_tuser_reg[3]_i_5_n_5 ;
  wire \m_axis_tuser_reg[3]_i_5_n_6 ;
  wire \m_axis_tuser_reg[3]_i_5_n_7 ;
  wire \m_axis_tuser_reg[3]_i_64_n_4 ;
  wire \m_axis_tuser_reg[3]_i_64_n_5 ;
  wire \m_axis_tuser_reg[3]_i_64_n_6 ;
  wire \m_axis_tuser_reg[3]_i_64_n_7 ;
  wire \m_axis_tuser_reg[3]_i_97_n_4 ;
  wire \m_axis_tuser_reg[3]_i_97_n_5 ;
  wire \m_axis_tuser_reg[3]_i_97_n_6 ;
  wire \m_axis_tuser_reg[3]_i_97_n_7 ;
  wire \m_axis_tuser_reg[4]_i_12_n_4 ;
  wire \m_axis_tuser_reg[4]_i_12_n_5 ;
  wire \m_axis_tuser_reg[4]_i_12_n_6 ;
  wire \m_axis_tuser_reg[4]_i_12_n_7 ;
  wire \m_axis_tuser_reg[4]_i_13_n_4 ;
  wire \m_axis_tuser_reg[4]_i_13_n_5 ;
  wire \m_axis_tuser_reg[4]_i_13_n_6 ;
  wire \m_axis_tuser_reg[4]_i_13_n_7 ;
  wire \m_axis_tuser_reg[4]_i_31_n_4 ;
  wire \m_axis_tuser_reg[4]_i_31_n_5 ;
  wire \m_axis_tuser_reg[4]_i_31_n_6 ;
  wire \m_axis_tuser_reg[4]_i_31_n_7 ;
  wire \m_axis_tuser_reg[4]_i_32_n_4 ;
  wire \m_axis_tuser_reg[4]_i_32_n_5 ;
  wire \m_axis_tuser_reg[4]_i_32_n_6 ;
  wire \m_axis_tuser_reg[4]_i_32_n_7 ;
  wire \m_axis_tuser_reg[4]_i_5_n_5 ;
  wire \m_axis_tuser_reg[4]_i_5_n_6 ;
  wire \m_axis_tuser_reg[4]_i_5_n_7 ;
  wire \m_axis_tuser_reg[4]_i_67_n_4 ;
  wire \m_axis_tuser_reg[4]_i_67_n_5 ;
  wire \m_axis_tuser_reg[4]_i_67_n_6 ;
  wire \m_axis_tuser_reg[4]_i_67_n_7 ;
  wire \m_axis_tuser_reg[4]_i_92_n_4 ;
  wire \m_axis_tuser_reg[4]_i_92_n_5 ;
  wire \m_axis_tuser_reg[4]_i_92_n_6 ;
  wire \m_axis_tuser_reg[4]_i_92_n_7 ;
  wire \m_axis_tuser_reg[5]_i_12_n_4 ;
  wire \m_axis_tuser_reg[5]_i_12_n_5 ;
  wire \m_axis_tuser_reg[5]_i_12_n_6 ;
  wire \m_axis_tuser_reg[5]_i_12_n_7 ;
  wire \m_axis_tuser_reg[5]_i_13_n_4 ;
  wire \m_axis_tuser_reg[5]_i_13_n_5 ;
  wire \m_axis_tuser_reg[5]_i_13_n_6 ;
  wire \m_axis_tuser_reg[5]_i_13_n_7 ;
  wire \m_axis_tuser_reg[5]_i_31_n_4 ;
  wire \m_axis_tuser_reg[5]_i_31_n_5 ;
  wire \m_axis_tuser_reg[5]_i_31_n_6 ;
  wire \m_axis_tuser_reg[5]_i_31_n_7 ;
  wire \m_axis_tuser_reg[5]_i_32_n_4 ;
  wire \m_axis_tuser_reg[5]_i_32_n_5 ;
  wire \m_axis_tuser_reg[5]_i_32_n_6 ;
  wire \m_axis_tuser_reg[5]_i_32_n_7 ;
  wire \m_axis_tuser_reg[5]_i_5_n_5 ;
  wire \m_axis_tuser_reg[5]_i_5_n_6 ;
  wire \m_axis_tuser_reg[5]_i_5_n_7 ;
  wire \m_axis_tuser_reg[5]_i_65_n_4 ;
  wire \m_axis_tuser_reg[5]_i_65_n_5 ;
  wire \m_axis_tuser_reg[5]_i_65_n_6 ;
  wire \m_axis_tuser_reg[5]_i_65_n_7 ;
  wire \m_axis_tuser_reg[5]_i_98_n_4 ;
  wire \m_axis_tuser_reg[5]_i_98_n_5 ;
  wire \m_axis_tuser_reg[5]_i_98_n_6 ;
  wire \m_axis_tuser_reg[5]_i_98_n_7 ;
  wire \m_axis_tuser_reg[6]_i_12_n_4 ;
  wire \m_axis_tuser_reg[6]_i_12_n_5 ;
  wire \m_axis_tuser_reg[6]_i_12_n_6 ;
  wire \m_axis_tuser_reg[6]_i_12_n_7 ;
  wire \m_axis_tuser_reg[6]_i_13_n_4 ;
  wire \m_axis_tuser_reg[6]_i_13_n_5 ;
  wire \m_axis_tuser_reg[6]_i_13_n_6 ;
  wire \m_axis_tuser_reg[6]_i_13_n_7 ;
  wire \m_axis_tuser_reg[6]_i_31_n_4 ;
  wire \m_axis_tuser_reg[6]_i_31_n_5 ;
  wire \m_axis_tuser_reg[6]_i_31_n_6 ;
  wire \m_axis_tuser_reg[6]_i_31_n_7 ;
  wire \m_axis_tuser_reg[6]_i_32_n_4 ;
  wire \m_axis_tuser_reg[6]_i_32_n_5 ;
  wire \m_axis_tuser_reg[6]_i_32_n_6 ;
  wire \m_axis_tuser_reg[6]_i_32_n_7 ;
  wire \m_axis_tuser_reg[6]_i_5_n_5 ;
  wire \m_axis_tuser_reg[6]_i_5_n_6 ;
  wire \m_axis_tuser_reg[6]_i_5_n_7 ;
  wire \m_axis_tuser_reg[6]_i_65_n_4 ;
  wire \m_axis_tuser_reg[6]_i_65_n_5 ;
  wire \m_axis_tuser_reg[6]_i_65_n_6 ;
  wire \m_axis_tuser_reg[6]_i_65_n_7 ;
  wire \m_axis_tuser_reg[6]_i_98_n_4 ;
  wire \m_axis_tuser_reg[6]_i_98_n_5 ;
  wire \m_axis_tuser_reg[6]_i_98_n_6 ;
  wire \m_axis_tuser_reg[6]_i_98_n_7 ;
  wire \m_axis_tuser_reg[7]_i_12_n_4 ;
  wire \m_axis_tuser_reg[7]_i_12_n_5 ;
  wire \m_axis_tuser_reg[7]_i_12_n_6 ;
  wire \m_axis_tuser_reg[7]_i_12_n_7 ;
  wire \m_axis_tuser_reg[7]_i_13_n_4 ;
  wire \m_axis_tuser_reg[7]_i_13_n_5 ;
  wire \m_axis_tuser_reg[7]_i_13_n_6 ;
  wire \m_axis_tuser_reg[7]_i_13_n_7 ;
  wire \m_axis_tuser_reg[7]_i_31_n_4 ;
  wire \m_axis_tuser_reg[7]_i_31_n_5 ;
  wire \m_axis_tuser_reg[7]_i_31_n_6 ;
  wire \m_axis_tuser_reg[7]_i_31_n_7 ;
  wire \m_axis_tuser_reg[7]_i_32_n_4 ;
  wire \m_axis_tuser_reg[7]_i_32_n_5 ;
  wire \m_axis_tuser_reg[7]_i_32_n_6 ;
  wire \m_axis_tuser_reg[7]_i_32_n_7 ;
  wire \m_axis_tuser_reg[7]_i_5_n_5 ;
  wire \m_axis_tuser_reg[7]_i_5_n_6 ;
  wire \m_axis_tuser_reg[7]_i_5_n_7 ;
  wire \m_axis_tuser_reg[7]_i_65_n_4 ;
  wire \m_axis_tuser_reg[7]_i_65_n_5 ;
  wire \m_axis_tuser_reg[7]_i_65_n_6 ;
  wire \m_axis_tuser_reg[7]_i_65_n_7 ;
  wire \m_axis_tuser_reg[7]_i_98_n_4 ;
  wire \m_axis_tuser_reg[7]_i_98_n_5 ;
  wire \m_axis_tuser_reg[7]_i_98_n_6 ;
  wire \m_axis_tuser_reg[7]_i_98_n_7 ;
  wire m_axis_tvalid_i_1_n_0;
  wire m_axis_tvalid_i_2_n_0;
  wire m_axis_tvalid_i_3_n_0;
  wire m_axis_tvalid_reg_0;
  wire [7:0]mask_comb;
  wire [31:0]out_beat_count;
  wire [31:1]out_beat_count0;
  wire \out_beat_count[0]_i_1_n_0 ;
  wire \out_beat_count[10]_i_1_n_0 ;
  wire \out_beat_count[11]_i_1_n_0 ;
  wire \out_beat_count[12]_i_1_n_0 ;
  wire \out_beat_count[13]_i_1_n_0 ;
  wire \out_beat_count[14]_i_1_n_0 ;
  wire \out_beat_count[15]_i_1_n_0 ;
  wire \out_beat_count[16]_i_1_n_0 ;
  wire \out_beat_count[17]_i_1_n_0 ;
  wire \out_beat_count[18]_i_1_n_0 ;
  wire \out_beat_count[19]_i_1_n_0 ;
  wire \out_beat_count[1]_i_1_n_0 ;
  wire \out_beat_count[20]_i_1_n_0 ;
  wire \out_beat_count[21]_i_1_n_0 ;
  wire \out_beat_count[22]_i_1_n_0 ;
  wire \out_beat_count[23]_i_1_n_0 ;
  wire \out_beat_count[24]_i_1_n_0 ;
  wire \out_beat_count[25]_i_1_n_0 ;
  wire \out_beat_count[26]_i_1_n_0 ;
  wire \out_beat_count[27]_i_1_n_0 ;
  wire \out_beat_count[28]_i_1_n_0 ;
  wire \out_beat_count[29]_i_1_n_0 ;
  wire \out_beat_count[2]_i_1_n_0 ;
  wire \out_beat_count[30]_i_1_n_0 ;
  wire \out_beat_count[31]_i_10_n_0 ;
  wire \out_beat_count[31]_i_11_n_0 ;
  wire \out_beat_count[31]_i_12_n_0 ;
  wire \out_beat_count[31]_i_13_n_0 ;
  wire \out_beat_count[31]_i_14_n_0 ;
  wire \out_beat_count[31]_i_15_n_0 ;
  wire \out_beat_count[31]_i_16_n_0 ;
  wire \out_beat_count[31]_i_1_n_0 ;
  wire \out_beat_count[31]_i_2_n_0 ;
  wire \out_beat_count[31]_i_3_n_0 ;
  wire \out_beat_count[31]_i_5_n_0 ;
  wire \out_beat_count[31]_i_6_n_0 ;
  wire \out_beat_count[31]_i_7_n_0 ;
  wire \out_beat_count[31]_i_8_n_0 ;
  wire \out_beat_count[31]_i_9_n_0 ;
  wire \out_beat_count[3]_i_1_n_0 ;
  wire \out_beat_count[4]_i_1_n_0 ;
  wire \out_beat_count[5]_i_1_n_0 ;
  wire \out_beat_count[6]_i_1_n_0 ;
  wire \out_beat_count[7]_i_1_n_0 ;
  wire \out_beat_count[8]_i_1_n_0 ;
  wire \out_beat_count[9]_i_1_n_0 ;
  wire \out_beat_count_reg[16]_i_2_n_0 ;
  wire \out_beat_count_reg[16]_i_2_n_1 ;
  wire \out_beat_count_reg[16]_i_2_n_2 ;
  wire \out_beat_count_reg[16]_i_2_n_3 ;
  wire \out_beat_count_reg[16]_i_2_n_4 ;
  wire \out_beat_count_reg[16]_i_2_n_5 ;
  wire \out_beat_count_reg[16]_i_2_n_6 ;
  wire \out_beat_count_reg[16]_i_2_n_7 ;
  wire \out_beat_count_reg[24]_i_2_n_0 ;
  wire \out_beat_count_reg[24]_i_2_n_1 ;
  wire \out_beat_count_reg[24]_i_2_n_2 ;
  wire \out_beat_count_reg[24]_i_2_n_3 ;
  wire \out_beat_count_reg[24]_i_2_n_4 ;
  wire \out_beat_count_reg[24]_i_2_n_5 ;
  wire \out_beat_count_reg[24]_i_2_n_6 ;
  wire \out_beat_count_reg[24]_i_2_n_7 ;
  wire \out_beat_count_reg[31]_i_4_n_2 ;
  wire \out_beat_count_reg[31]_i_4_n_3 ;
  wire \out_beat_count_reg[31]_i_4_n_4 ;
  wire \out_beat_count_reg[31]_i_4_n_5 ;
  wire \out_beat_count_reg[31]_i_4_n_6 ;
  wire \out_beat_count_reg[31]_i_4_n_7 ;
  wire \out_beat_count_reg[8]_i_2_n_0 ;
  wire \out_beat_count_reg[8]_i_2_n_1 ;
  wire \out_beat_count_reg[8]_i_2_n_2 ;
  wire \out_beat_count_reg[8]_i_2_n_3 ;
  wire \out_beat_count_reg[8]_i_2_n_4 ;
  wire \out_beat_count_reg[8]_i_2_n_5 ;
  wire \out_beat_count_reg[8]_i_2_n_6 ;
  wire \out_beat_count_reg[8]_i_2_n_7 ;
  wire [0:0]p_0_out;
  wire [4:0]phase0;
  wire \phase0[0]_i_10_n_0 ;
  wire \phase0[0]_i_11_n_0 ;
  wire \phase0[0]_i_12_n_0 ;
  wire \phase0[0]_i_13_n_0 ;
  wire \phase0[0]_i_14_n_0 ;
  wire \phase0[0]_i_15_n_0 ;
  wire \phase0[0]_i_16_n_0 ;
  wire \phase0[0]_i_17_n_0 ;
  wire \phase0[0]_i_18_n_0 ;
  wire \phase0[0]_i_19_n_0 ;
  wire \phase0[0]_i_20_n_0 ;
  wire \phase0[0]_i_24_n_0 ;
  wire \phase0[0]_i_25_n_0 ;
  wire \phase0[0]_i_26_n_0 ;
  wire \phase0[0]_i_27_n_0 ;
  wire \phase0[0]_i_28_n_0 ;
  wire \phase0[0]_i_29_n_0 ;
  wire \phase0[0]_i_30_n_0 ;
  wire \phase0[0]_i_31_n_0 ;
  wire \phase0[0]_i_32_n_0 ;
  wire \phase0[0]_i_33_n_0 ;
  wire \phase0[0]_i_34_n_0 ;
  wire \phase0[0]_i_35_n_0 ;
  wire \phase0[0]_i_36_n_0 ;
  wire \phase0[0]_i_37_n_0 ;
  wire \phase0[0]_i_38_n_0 ;
  wire \phase0[0]_i_39_n_0 ;
  wire \phase0[0]_i_40_n_0 ;
  wire \phase0[0]_i_41_n_0 ;
  wire \phase0[0]_i_42_n_0 ;
  wire \phase0[0]_i_43_n_0 ;
  wire \phase0[0]_i_44_n_0 ;
  wire \phase0[0]_i_45_n_0 ;
  wire \phase0[0]_i_46_n_0 ;
  wire \phase0[0]_i_47_n_0 ;
  wire \phase0[0]_i_48_n_0 ;
  wire \phase0[0]_i_49_n_0 ;
  wire \phase0[0]_i_4_n_0 ;
  wire \phase0[0]_i_50_n_0 ;
  wire \phase0[0]_i_51_n_0 ;
  wire \phase0[0]_i_52_n_0 ;
  wire \phase0[0]_i_53_n_0 ;
  wire \phase0[0]_i_54_n_0 ;
  wire \phase0[0]_i_55_n_0 ;
  wire \phase0[0]_i_56_n_0 ;
  wire \phase0[0]_i_57_n_0 ;
  wire \phase0[0]_i_58_n_0 ;
  wire \phase0[0]_i_59_n_0 ;
  wire \phase0[0]_i_5_n_0 ;
  wire \phase0[0]_i_60_n_0 ;
  wire \phase0[0]_i_61_n_0 ;
  wire \phase0[0]_i_62_n_0 ;
  wire \phase0[0]_i_63_n_0 ;
  wire \phase0[0]_i_64_n_0 ;
  wire \phase0[0]_i_65_n_0 ;
  wire \phase0[0]_i_66_n_0 ;
  wire \phase0[0]_i_67_n_0 ;
  wire \phase0[0]_i_68_n_0 ;
  wire \phase0[0]_i_69_n_0 ;
  wire \phase0[0]_i_6_n_0 ;
  wire \phase0[0]_i_70_n_0 ;
  wire \phase0[0]_i_71_n_0 ;
  wire \phase0[0]_i_72_n_0 ;
  wire \phase0[0]_i_73_n_0 ;
  wire \phase0[0]_i_7_n_0 ;
  wire \phase0[0]_i_8_n_0 ;
  wire \phase0[0]_i_9_n_0 ;
  wire \phase0[1]_i_3_n_0 ;
  wire \phase0[2]_i_10_n_0 ;
  wire \phase0[2]_i_11_n_0 ;
  wire \phase0[2]_i_12_n_0 ;
  wire \phase0[2]_i_13_n_0 ;
  wire \phase0[2]_i_14_n_0 ;
  wire \phase0[2]_i_15_n_0 ;
  wire \phase0[2]_i_16_n_0 ;
  wire \phase0[2]_i_17_n_0 ;
  wire \phase0[2]_i_18_n_0 ;
  wire \phase0[2]_i_19_n_0 ;
  wire \phase0[2]_i_20_n_0 ;
  wire \phase0[2]_i_21_n_0 ;
  wire \phase0[2]_i_22_n_0 ;
  wire \phase0[2]_i_23_n_0 ;
  wire \phase0[2]_i_24_n_0 ;
  wire \phase0[2]_i_25_n_0 ;
  wire \phase0[2]_i_2_n_0 ;
  wire \phase0[2]_i_5_n_0 ;
  wire \phase0[2]_i_6_n_0 ;
  wire \phase0[2]_i_7_n_0 ;
  wire \phase0[2]_i_8_n_0 ;
  wire \phase0[2]_i_9_n_0 ;
  wire \phase0[4]_i_10_n_0 ;
  wire \phase0[4]_i_11_n_0 ;
  wire \phase0[4]_i_12_n_0 ;
  wire \phase0[4]_i_13_n_0 ;
  wire \phase0[4]_i_14_n_0 ;
  wire \phase0[4]_i_15_n_0 ;
  wire \phase0[4]_i_16_n_0 ;
  wire \phase0[4]_i_17_n_0 ;
  wire \phase0[4]_i_18_n_0 ;
  wire \phase0[4]_i_19_n_0 ;
  wire \phase0[4]_i_22_n_0 ;
  wire \phase0[4]_i_2_n_0 ;
  wire \phase0[4]_i_3_n_0 ;
  wire \phase0[4]_i_4_n_0 ;
  wire \phase0[4]_i_7_n_0 ;
  wire \phase0[4]_i_9_n_0 ;
  wire \phase0_reg[0]_i_21_n_4 ;
  wire \phase0_reg[0]_i_21_n_5 ;
  wire \phase0_reg[0]_i_21_n_6 ;
  wire \phase0_reg[0]_i_21_n_7 ;
  wire \phase0_reg[0]_i_22_n_4 ;
  wire \phase0_reg[0]_i_22_n_5 ;
  wire \phase0_reg[0]_i_22_n_6 ;
  wire \phase0_reg[0]_i_22_n_7 ;
  wire \phase0_reg[0]_i_23_n_4 ;
  wire \phase0_reg[0]_i_23_n_5 ;
  wire \phase0_reg[0]_i_23_n_6 ;
  wire \phase0_reg[0]_i_23_n_7 ;
  wire \phase0_reg[0]_i_2_n_4 ;
  wire \phase0_reg[0]_i_2_n_5 ;
  wire \phase0_reg[0]_i_2_n_6 ;
  wire \phase0_reg[0]_i_2_n_7 ;
  wire \phase0_reg[0]_i_3_n_4 ;
  wire \phase0_reg[0]_i_3_n_5 ;
  wire \phase0_reg[0]_i_3_n_6 ;
  wire \phase0_reg[0]_i_3_n_7 ;
  wire \phase0_reg[2]_i_4_n_4 ;
  wire \phase0_reg[2]_i_4_n_5 ;
  wire \phase0_reg[2]_i_4_n_6 ;
  wire \phase0_reg[2]_i_4_n_7 ;
  wire \phase0_reg[4]_i_5_n_5 ;
  wire \phase0_reg[4]_i_5_n_6 ;
  wire \phase0_reg[4]_i_5_n_7 ;
  wire [511:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire [31:0]sample_count;
  wire [31:0]sample_count0;
  wire \sample_count[0]_i_1_n_0 ;
  wire \sample_count[10]_i_1_n_0 ;
  wire \sample_count[11]_i_1_n_0 ;
  wire \sample_count[12]_i_1_n_0 ;
  wire \sample_count[13]_i_1_n_0 ;
  wire \sample_count[14]_i_1_n_0 ;
  wire \sample_count[15]_i_1_n_0 ;
  wire \sample_count[16]_i_1_n_0 ;
  wire \sample_count[17]_i_1_n_0 ;
  wire \sample_count[18]_i_1_n_0 ;
  wire \sample_count[19]_i_1_n_0 ;
  wire \sample_count[1]_i_1_n_0 ;
  wire \sample_count[20]_i_1_n_0 ;
  wire \sample_count[21]_i_1_n_0 ;
  wire \sample_count[22]_i_1_n_0 ;
  wire \sample_count[23]_i_1_n_0 ;
  wire \sample_count[24]_i_1_n_0 ;
  wire \sample_count[25]_i_1_n_0 ;
  wire \sample_count[26]_i_1_n_0 ;
  wire \sample_count[27]_i_1_n_0 ;
  wire \sample_count[28]_i_1_n_0 ;
  wire \sample_count[29]_i_1_n_0 ;
  wire \sample_count[2]_i_1_n_0 ;
  wire \sample_count[30]_i_1_n_0 ;
  wire \sample_count[31]_i_1_n_0 ;
  wire \sample_count[3]_i_1_n_0 ;
  wire \sample_count[4]_i_1_n_0 ;
  wire \sample_count[5]_i_1_n_0 ;
  wire \sample_count[6]_i_1_n_0 ;
  wire \sample_count[7]_i_10_n_0 ;
  wire \sample_count[7]_i_11_n_0 ;
  wire \sample_count[7]_i_12_n_0 ;
  wire \sample_count[7]_i_13_n_0 ;
  wire \sample_count[7]_i_1_n_0 ;
  wire \sample_count[7]_i_3_n_0 ;
  wire \sample_count[7]_i_4_n_0 ;
  wire \sample_count[7]_i_5_n_0 ;
  wire \sample_count[7]_i_6_n_0 ;
  wire \sample_count[7]_i_7_n_0 ;
  wire \sample_count[7]_i_8_n_0 ;
  wire \sample_count[7]_i_9_n_0 ;
  wire \sample_count[8]_i_1_n_0 ;
  wire \sample_count[9]_i_1_n_0 ;
  wire \sample_count_reg[15]_i_2_n_0 ;
  wire \sample_count_reg[15]_i_2_n_1 ;
  wire \sample_count_reg[15]_i_2_n_2 ;
  wire \sample_count_reg[15]_i_2_n_3 ;
  wire \sample_count_reg[15]_i_2_n_4 ;
  wire \sample_count_reg[15]_i_2_n_5 ;
  wire \sample_count_reg[15]_i_2_n_6 ;
  wire \sample_count_reg[15]_i_2_n_7 ;
  wire \sample_count_reg[23]_i_2_n_0 ;
  wire \sample_count_reg[23]_i_2_n_1 ;
  wire \sample_count_reg[23]_i_2_n_2 ;
  wire \sample_count_reg[23]_i_2_n_3 ;
  wire \sample_count_reg[23]_i_2_n_4 ;
  wire \sample_count_reg[23]_i_2_n_5 ;
  wire \sample_count_reg[23]_i_2_n_6 ;
  wire \sample_count_reg[23]_i_2_n_7 ;
  wire \sample_count_reg[31]_i_2_n_1 ;
  wire \sample_count_reg[31]_i_2_n_2 ;
  wire \sample_count_reg[31]_i_2_n_3 ;
  wire \sample_count_reg[31]_i_2_n_4 ;
  wire \sample_count_reg[31]_i_2_n_5 ;
  wire \sample_count_reg[31]_i_2_n_6 ;
  wire \sample_count_reg[31]_i_2_n_7 ;
  wire \sample_count_reg[7]_i_2_n_0 ;
  wire \sample_count_reg[7]_i_2_n_1 ;
  wire \sample_count_reg[7]_i_2_n_2 ;
  wire \sample_count_reg[7]_i_2_n_3 ;
  wire \sample_count_reg[7]_i_2_n_4 ;
  wire \sample_count_reg[7]_i_2_n_5 ;
  wire \sample_count_reg[7]_i_2_n_6 ;
  wire \sample_count_reg[7]_i_2_n_7 ;
  wire [5:0]v;
  wire v1;
  wire [6:6]v__0;
  wire [7:6]\NLW_drop_count_reg[31]_i_3_CO_UNCONNECTED ;
  wire [7:7]\NLW_drop_count_reg[31]_i_3_O_UNCONNECTED ;
  wire [7:6]\NLW_in_beat_count_reg[31]_i_3_CO_UNCONNECTED ;
  wire [7:7]\NLW_in_beat_count_reg[31]_i_3_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[0]_i_12_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[0]_i_12_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[0]_i_13_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[0]_i_13_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[0]_i_31_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[0]_i_31_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[0]_i_32_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[0]_i_32_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[0]_i_5_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[0]_i_5_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[0]_i_64_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[0]_i_64_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[0]_i_97_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[0]_i_97_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[1]_i_12_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[1]_i_12_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[1]_i_13_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[1]_i_13_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[1]_i_31_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[1]_i_31_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[1]_i_32_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[1]_i_32_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[1]_i_5_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[1]_i_5_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[1]_i_64_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[1]_i_64_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[1]_i_97_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[1]_i_97_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[2]_i_12_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[2]_i_12_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[2]_i_13_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[2]_i_13_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[2]_i_31_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[2]_i_31_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[2]_i_32_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[2]_i_32_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[2]_i_5_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[2]_i_5_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[2]_i_64_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[2]_i_64_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[2]_i_97_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[2]_i_97_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[3]_i_12_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[3]_i_12_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[3]_i_13_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[3]_i_13_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[3]_i_31_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[3]_i_31_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[3]_i_32_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[3]_i_32_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[3]_i_5_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[3]_i_5_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[3]_i_64_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[3]_i_64_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[3]_i_97_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[3]_i_97_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[4]_i_12_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[4]_i_12_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[4]_i_13_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[4]_i_13_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[4]_i_31_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[4]_i_31_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[4]_i_32_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[4]_i_32_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[4]_i_5_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[4]_i_5_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[4]_i_67_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[4]_i_67_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[4]_i_92_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[4]_i_92_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[5]_i_12_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[5]_i_12_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[5]_i_13_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[5]_i_13_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[5]_i_31_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[5]_i_31_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[5]_i_32_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[5]_i_32_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[5]_i_5_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[5]_i_5_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[5]_i_65_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[5]_i_65_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[5]_i_98_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[5]_i_98_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[6]_i_12_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[6]_i_12_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[6]_i_13_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[6]_i_13_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[6]_i_31_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[6]_i_31_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[6]_i_32_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[6]_i_32_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[6]_i_5_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[6]_i_5_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[6]_i_65_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[6]_i_65_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[6]_i_98_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[6]_i_98_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[7]_i_12_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[7]_i_12_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[7]_i_13_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[7]_i_13_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[7]_i_31_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[7]_i_31_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[7]_i_32_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[7]_i_32_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[7]_i_5_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[7]_i_5_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[7]_i_65_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[7]_i_65_O_UNCONNECTED ;
  wire [7:4]\NLW_m_axis_tuser_reg[7]_i_98_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tuser_reg[7]_i_98_O_UNCONNECTED ;
  wire [7:6]\NLW_out_beat_count_reg[31]_i_4_CO_UNCONNECTED ;
  wire [7:7]\NLW_out_beat_count_reg[31]_i_4_O_UNCONNECTED ;
  wire [7:4]\NLW_phase0_reg[0]_i_2_CO_UNCONNECTED ;
  wire [7:0]\NLW_phase0_reg[0]_i_2_O_UNCONNECTED ;
  wire [7:4]\NLW_phase0_reg[0]_i_21_CO_UNCONNECTED ;
  wire [7:0]\NLW_phase0_reg[0]_i_21_O_UNCONNECTED ;
  wire [7:4]\NLW_phase0_reg[0]_i_22_CO_UNCONNECTED ;
  wire [7:0]\NLW_phase0_reg[0]_i_22_O_UNCONNECTED ;
  wire [7:4]\NLW_phase0_reg[0]_i_23_CO_UNCONNECTED ;
  wire [7:0]\NLW_phase0_reg[0]_i_23_O_UNCONNECTED ;
  wire [7:4]\NLW_phase0_reg[0]_i_3_CO_UNCONNECTED ;
  wire [7:0]\NLW_phase0_reg[0]_i_3_O_UNCONNECTED ;
  wire [7:4]\NLW_phase0_reg[2]_i_4_CO_UNCONNECTED ;
  wire [7:0]\NLW_phase0_reg[2]_i_4_O_UNCONNECTED ;
  wire [7:4]\NLW_phase0_reg[4]_i_5_CO_UNCONNECTED ;
  wire [7:0]\NLW_phase0_reg[4]_i_5_O_UNCONNECTED ;
  wire [7:7]\NLW_sample_count_reg[31]_i_2_CO_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \drop_count[0]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count[0]),
        .O(\drop_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[10]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[10]),
        .O(\drop_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[11]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[11]),
        .O(\drop_count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[12]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[12]),
        .O(\drop_count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[13]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[13]),
        .O(\drop_count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[14]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[14]),
        .O(\drop_count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[15]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[15]),
        .O(\drop_count[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[16]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[16]),
        .O(\drop_count[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[17]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[17]),
        .O(\drop_count[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[18]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[18]),
        .O(\drop_count[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[19]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[19]),
        .O(\drop_count[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[1]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[1]),
        .O(\drop_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[20]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[20]),
        .O(\drop_count[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[21]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[21]),
        .O(\drop_count[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[22]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[22]),
        .O(\drop_count[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[23]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[23]),
        .O(\drop_count[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[24]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[24]),
        .O(\drop_count[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[25]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[25]),
        .O(\drop_count[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[26]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[26]),
        .O(\drop_count[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[27]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[27]),
        .O(\drop_count[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[28]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[28]),
        .O(\drop_count[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[29]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[29]),
        .O(\drop_count[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[2]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[2]),
        .O(\drop_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[30]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[30]),
        .O(\drop_count[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF20202000)) 
    \drop_count[31]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(s_axis_tvalid),
        .I3(m_axis_tvalid_i_2_n_0),
        .I4(m_axis_tvalid_i_3_n_0),
        .I5(cnt_clr),
        .O(\drop_count[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[31]_i_2 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[31]),
        .O(\drop_count[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[3]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[3]),
        .O(\drop_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[4]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[4]),
        .O(\drop_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[5]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[5]),
        .O(\drop_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[6]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[6]),
        .O(\drop_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[7]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[7]),
        .O(\drop_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[8]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[8]),
        .O(\drop_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \drop_count[9]_i_1 
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tready),
        .I2(\out_beat_count[31]_i_3_n_0 ),
        .I3(drop_count0[9]),
        .O(\drop_count[9]_i_1_n_0 ));
  FDRE \drop_count_reg[0] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[0]_i_1_n_0 ),
        .Q(drop_count[0]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[10] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[10]_i_1_n_0 ),
        .Q(drop_count[10]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[11] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[11]_i_1_n_0 ),
        .Q(drop_count[11]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[12] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[12]_i_1_n_0 ),
        .Q(drop_count[12]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[13] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[13]_i_1_n_0 ),
        .Q(drop_count[13]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[14] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[14]_i_1_n_0 ),
        .Q(drop_count[14]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[15] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[15]_i_1_n_0 ),
        .Q(drop_count[15]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[16] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[16]_i_1_n_0 ),
        .Q(drop_count[16]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \drop_count_reg[16]_i_2 
       (.CI(\drop_count_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\drop_count_reg[16]_i_2_n_0 ,\drop_count_reg[16]_i_2_n_1 ,\drop_count_reg[16]_i_2_n_2 ,\drop_count_reg[16]_i_2_n_3 ,\drop_count_reg[16]_i_2_n_4 ,\drop_count_reg[16]_i_2_n_5 ,\drop_count_reg[16]_i_2_n_6 ,\drop_count_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(drop_count0[16:9]),
        .S(drop_count[16:9]));
  FDRE \drop_count_reg[17] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[17]_i_1_n_0 ),
        .Q(drop_count[17]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[18] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[18]_i_1_n_0 ),
        .Q(drop_count[18]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[19] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[19]_i_1_n_0 ),
        .Q(drop_count[19]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[1] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[1]_i_1_n_0 ),
        .Q(drop_count[1]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[20] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[20]_i_1_n_0 ),
        .Q(drop_count[20]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[21] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[21]_i_1_n_0 ),
        .Q(drop_count[21]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[22] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[22]_i_1_n_0 ),
        .Q(drop_count[22]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[23] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[23]_i_1_n_0 ),
        .Q(drop_count[23]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[24] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[24]_i_1_n_0 ),
        .Q(drop_count[24]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \drop_count_reg[24]_i_2 
       (.CI(\drop_count_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\drop_count_reg[24]_i_2_n_0 ,\drop_count_reg[24]_i_2_n_1 ,\drop_count_reg[24]_i_2_n_2 ,\drop_count_reg[24]_i_2_n_3 ,\drop_count_reg[24]_i_2_n_4 ,\drop_count_reg[24]_i_2_n_5 ,\drop_count_reg[24]_i_2_n_6 ,\drop_count_reg[24]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(drop_count0[24:17]),
        .S(drop_count[24:17]));
  FDRE \drop_count_reg[25] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[25]_i_1_n_0 ),
        .Q(drop_count[25]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[26] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[26]_i_1_n_0 ),
        .Q(drop_count[26]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[27] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[27]_i_1_n_0 ),
        .Q(drop_count[27]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[28] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[28]_i_1_n_0 ),
        .Q(drop_count[28]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[29] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[29]_i_1_n_0 ),
        .Q(drop_count[29]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[2] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[2]_i_1_n_0 ),
        .Q(drop_count[2]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[30] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[30]_i_1_n_0 ),
        .Q(drop_count[30]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[31] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[31]_i_2_n_0 ),
        .Q(drop_count[31]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \drop_count_reg[31]_i_3 
       (.CI(\drop_count_reg[24]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_drop_count_reg[31]_i_3_CO_UNCONNECTED [7:6],\drop_count_reg[31]_i_3_n_2 ,\drop_count_reg[31]_i_3_n_3 ,\drop_count_reg[31]_i_3_n_4 ,\drop_count_reg[31]_i_3_n_5 ,\drop_count_reg[31]_i_3_n_6 ,\drop_count_reg[31]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_drop_count_reg[31]_i_3_O_UNCONNECTED [7],drop_count0[31:25]}),
        .S({1'b0,drop_count[31:25]}));
  FDRE \drop_count_reg[3] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[3]_i_1_n_0 ),
        .Q(drop_count[3]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[4] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[4]_i_1_n_0 ),
        .Q(drop_count[4]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[5] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[5]_i_1_n_0 ),
        .Q(drop_count[5]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[6] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[6]_i_1_n_0 ),
        .Q(drop_count[6]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[7] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[7]_i_1_n_0 ),
        .Q(drop_count[7]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \drop_count_reg[8] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[8]_i_1_n_0 ),
        .Q(drop_count[8]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \drop_count_reg[8]_i_2 
       (.CI(drop_count[0]),
        .CI_TOP(1'b0),
        .CO({\drop_count_reg[8]_i_2_n_0 ,\drop_count_reg[8]_i_2_n_1 ,\drop_count_reg[8]_i_2_n_2 ,\drop_count_reg[8]_i_2_n_3 ,\drop_count_reg[8]_i_2_n_4 ,\drop_count_reg[8]_i_2_n_5 ,\drop_count_reg[8]_i_2_n_6 ,\drop_count_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(drop_count0[8:1]),
        .S(drop_count[8:1]));
  FDRE \drop_count_reg[9] 
       (.C(aclk),
        .CE(\drop_count[31]_i_1_n_0 ),
        .D(\drop_count[9]_i_1_n_0 ),
        .Q(drop_count[9]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \in_beat_count[0]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count[0]),
        .O(\in_beat_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[10]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[10]),
        .O(\in_beat_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[11]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[11]),
        .O(\in_beat_count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[12]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[12]),
        .O(\in_beat_count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[13]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[13]),
        .O(\in_beat_count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[14]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[14]),
        .O(\in_beat_count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[15]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[15]),
        .O(\in_beat_count[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[16]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[16]),
        .O(\in_beat_count[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[17]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[17]),
        .O(\in_beat_count[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[18]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[18]),
        .O(\in_beat_count[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[19]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[19]),
        .O(\in_beat_count[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[1]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[1]),
        .O(\in_beat_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[20]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[20]),
        .O(\in_beat_count[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[21]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[21]),
        .O(\in_beat_count[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[22]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[22]),
        .O(\in_beat_count[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[23]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[23]),
        .O(\in_beat_count[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[24]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[24]),
        .O(\in_beat_count[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[25]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[25]),
        .O(\in_beat_count[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[26]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[26]),
        .O(\in_beat_count[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[27]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[27]),
        .O(\in_beat_count[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[28]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[28]),
        .O(\in_beat_count[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[29]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[29]),
        .O(\in_beat_count[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[2]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[2]),
        .O(\in_beat_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[30]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[30]),
        .O(\in_beat_count[30]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \in_beat_count[31]_i_1 
       (.I0(s_axis_tvalid),
        .I1(cnt_clr),
        .O(\in_beat_count[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[31]_i_2 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[31]),
        .O(\in_beat_count[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[3]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[3]),
        .O(\in_beat_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[4]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[4]),
        .O(\in_beat_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[5]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[5]),
        .O(\in_beat_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[6]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[6]),
        .O(\in_beat_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[7]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[7]),
        .O(\in_beat_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[8]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[8]),
        .O(\in_beat_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \in_beat_count[9]_i_1 
       (.I0(cnt_clr),
        .I1(s_axis_tvalid),
        .I2(in_beat_count0[9]),
        .O(\in_beat_count[9]_i_1_n_0 ));
  FDRE \in_beat_count_reg[0] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[0]_i_1_n_0 ),
        .Q(in_beat_count[0]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[10] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[10]_i_1_n_0 ),
        .Q(in_beat_count[10]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[11] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[11]_i_1_n_0 ),
        .Q(in_beat_count[11]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[12] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[12]_i_1_n_0 ),
        .Q(in_beat_count[12]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[13] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[13]_i_1_n_0 ),
        .Q(in_beat_count[13]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[14] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[14]_i_1_n_0 ),
        .Q(in_beat_count[14]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[15] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[15]_i_1_n_0 ),
        .Q(in_beat_count[15]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[16] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[16]_i_1_n_0 ),
        .Q(in_beat_count[16]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \in_beat_count_reg[16]_i_2 
       (.CI(\in_beat_count_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\in_beat_count_reg[16]_i_2_n_0 ,\in_beat_count_reg[16]_i_2_n_1 ,\in_beat_count_reg[16]_i_2_n_2 ,\in_beat_count_reg[16]_i_2_n_3 ,\in_beat_count_reg[16]_i_2_n_4 ,\in_beat_count_reg[16]_i_2_n_5 ,\in_beat_count_reg[16]_i_2_n_6 ,\in_beat_count_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in_beat_count0[16:9]),
        .S(in_beat_count[16:9]));
  FDRE \in_beat_count_reg[17] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[17]_i_1_n_0 ),
        .Q(in_beat_count[17]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[18] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[18]_i_1_n_0 ),
        .Q(in_beat_count[18]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[19] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[19]_i_1_n_0 ),
        .Q(in_beat_count[19]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[1] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[1]_i_1_n_0 ),
        .Q(in_beat_count[1]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[20] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[20]_i_1_n_0 ),
        .Q(in_beat_count[20]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[21] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[21]_i_1_n_0 ),
        .Q(in_beat_count[21]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[22] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[22]_i_1_n_0 ),
        .Q(in_beat_count[22]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[23] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[23]_i_1_n_0 ),
        .Q(in_beat_count[23]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[24] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[24]_i_1_n_0 ),
        .Q(in_beat_count[24]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \in_beat_count_reg[24]_i_2 
       (.CI(\in_beat_count_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\in_beat_count_reg[24]_i_2_n_0 ,\in_beat_count_reg[24]_i_2_n_1 ,\in_beat_count_reg[24]_i_2_n_2 ,\in_beat_count_reg[24]_i_2_n_3 ,\in_beat_count_reg[24]_i_2_n_4 ,\in_beat_count_reg[24]_i_2_n_5 ,\in_beat_count_reg[24]_i_2_n_6 ,\in_beat_count_reg[24]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in_beat_count0[24:17]),
        .S(in_beat_count[24:17]));
  FDRE \in_beat_count_reg[25] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[25]_i_1_n_0 ),
        .Q(in_beat_count[25]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[26] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[26]_i_1_n_0 ),
        .Q(in_beat_count[26]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[27] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[27]_i_1_n_0 ),
        .Q(in_beat_count[27]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[28] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[28]_i_1_n_0 ),
        .Q(in_beat_count[28]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[29] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[29]_i_1_n_0 ),
        .Q(in_beat_count[29]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[2] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[2]_i_1_n_0 ),
        .Q(in_beat_count[2]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[30] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[30]_i_1_n_0 ),
        .Q(in_beat_count[30]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[31] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[31]_i_2_n_0 ),
        .Q(in_beat_count[31]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \in_beat_count_reg[31]_i_3 
       (.CI(\in_beat_count_reg[24]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_in_beat_count_reg[31]_i_3_CO_UNCONNECTED [7:6],\in_beat_count_reg[31]_i_3_n_2 ,\in_beat_count_reg[31]_i_3_n_3 ,\in_beat_count_reg[31]_i_3_n_4 ,\in_beat_count_reg[31]_i_3_n_5 ,\in_beat_count_reg[31]_i_3_n_6 ,\in_beat_count_reg[31]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_in_beat_count_reg[31]_i_3_O_UNCONNECTED [7],in_beat_count0[31:25]}),
        .S({1'b0,in_beat_count[31:25]}));
  FDRE \in_beat_count_reg[3] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[3]_i_1_n_0 ),
        .Q(in_beat_count[3]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[4] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[4]_i_1_n_0 ),
        .Q(in_beat_count[4]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[5] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[5]_i_1_n_0 ),
        .Q(in_beat_count[5]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[6] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[6]_i_1_n_0 ),
        .Q(in_beat_count[6]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[7] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[7]_i_1_n_0 ),
        .Q(in_beat_count[7]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \in_beat_count_reg[8] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[8]_i_1_n_0 ),
        .Q(in_beat_count[8]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \in_beat_count_reg[8]_i_2 
       (.CI(in_beat_count[0]),
        .CI_TOP(1'b0),
        .CO({\in_beat_count_reg[8]_i_2_n_0 ,\in_beat_count_reg[8]_i_2_n_1 ,\in_beat_count_reg[8]_i_2_n_2 ,\in_beat_count_reg[8]_i_2_n_3 ,\in_beat_count_reg[8]_i_2_n_4 ,\in_beat_count_reg[8]_i_2_n_5 ,\in_beat_count_reg[8]_i_2_n_6 ,\in_beat_count_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(in_beat_count0[8:1]),
        .S(in_beat_count[8:1]));
  FDRE \in_beat_count_reg[9] 
       (.C(aclk),
        .CE(\in_beat_count[31]_i_1_n_0 ),
        .D(\in_beat_count[9]_i_1_n_0 ),
        .Q(in_beat_count[9]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tdata[511]_i_1 
       (.I0(aresetn),
        .O(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[0] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[0]),
        .Q(m_axis_tdata[0]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[100] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[100]),
        .Q(m_axis_tdata[100]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[101] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[101]),
        .Q(m_axis_tdata[101]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[102] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[102]),
        .Q(m_axis_tdata[102]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[103] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[103]),
        .Q(m_axis_tdata[103]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[104] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[104]),
        .Q(m_axis_tdata[104]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[105] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[105]),
        .Q(m_axis_tdata[105]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[106] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[106]),
        .Q(m_axis_tdata[106]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[107] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[107]),
        .Q(m_axis_tdata[107]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[108] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[108]),
        .Q(m_axis_tdata[108]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[109] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[109]),
        .Q(m_axis_tdata[109]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[10]),
        .Q(m_axis_tdata[10]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[110] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[110]),
        .Q(m_axis_tdata[110]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[111] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[111]),
        .Q(m_axis_tdata[111]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[112] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[112]),
        .Q(m_axis_tdata[112]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[113] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[113]),
        .Q(m_axis_tdata[113]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[114] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[114]),
        .Q(m_axis_tdata[114]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[115] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[115]),
        .Q(m_axis_tdata[115]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[116] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[116]),
        .Q(m_axis_tdata[116]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[117] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[117]),
        .Q(m_axis_tdata[117]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[118] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[118]),
        .Q(m_axis_tdata[118]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[119] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[119]),
        .Q(m_axis_tdata[119]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[11] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[11]),
        .Q(m_axis_tdata[11]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[120] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[120]),
        .Q(m_axis_tdata[120]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[121] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[121]),
        .Q(m_axis_tdata[121]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[122] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[122]),
        .Q(m_axis_tdata[122]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[123] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[123]),
        .Q(m_axis_tdata[123]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[124] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[124]),
        .Q(m_axis_tdata[124]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[125] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[125]),
        .Q(m_axis_tdata[125]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[126] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[126]),
        .Q(m_axis_tdata[126]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[127] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[127]),
        .Q(m_axis_tdata[127]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[128] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[128]),
        .Q(m_axis_tdata[128]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[129] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[129]),
        .Q(m_axis_tdata[129]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[12] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[12]),
        .Q(m_axis_tdata[12]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[130] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[130]),
        .Q(m_axis_tdata[130]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[131] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[131]),
        .Q(m_axis_tdata[131]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[132] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[132]),
        .Q(m_axis_tdata[132]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[133] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[133]),
        .Q(m_axis_tdata[133]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[134] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[134]),
        .Q(m_axis_tdata[134]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[135] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[135]),
        .Q(m_axis_tdata[135]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[136] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[136]),
        .Q(m_axis_tdata[136]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[137] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[137]),
        .Q(m_axis_tdata[137]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[138] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[138]),
        .Q(m_axis_tdata[138]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[139] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[139]),
        .Q(m_axis_tdata[139]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[13] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[13]),
        .Q(m_axis_tdata[13]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[140] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[140]),
        .Q(m_axis_tdata[140]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[141] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[141]),
        .Q(m_axis_tdata[141]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[142] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[142]),
        .Q(m_axis_tdata[142]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[143] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[143]),
        .Q(m_axis_tdata[143]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[144] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[144]),
        .Q(m_axis_tdata[144]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[145] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[145]),
        .Q(m_axis_tdata[145]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[146] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[146]),
        .Q(m_axis_tdata[146]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[147] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[147]),
        .Q(m_axis_tdata[147]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[148] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[148]),
        .Q(m_axis_tdata[148]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[149] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[149]),
        .Q(m_axis_tdata[149]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[14] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[14]),
        .Q(m_axis_tdata[14]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[150] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[150]),
        .Q(m_axis_tdata[150]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[151] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[151]),
        .Q(m_axis_tdata[151]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[152] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[152]),
        .Q(m_axis_tdata[152]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[153] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[153]),
        .Q(m_axis_tdata[153]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[154] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[154]),
        .Q(m_axis_tdata[154]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[155] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[155]),
        .Q(m_axis_tdata[155]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[156] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[156]),
        .Q(m_axis_tdata[156]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[157] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[157]),
        .Q(m_axis_tdata[157]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[158] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[158]),
        .Q(m_axis_tdata[158]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[159] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[159]),
        .Q(m_axis_tdata[159]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[15] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[15]),
        .Q(m_axis_tdata[15]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[160] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[160]),
        .Q(m_axis_tdata[160]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[161] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[161]),
        .Q(m_axis_tdata[161]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[162] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[162]),
        .Q(m_axis_tdata[162]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[163] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[163]),
        .Q(m_axis_tdata[163]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[164] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[164]),
        .Q(m_axis_tdata[164]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[165] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[165]),
        .Q(m_axis_tdata[165]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[166] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[166]),
        .Q(m_axis_tdata[166]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[167] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[167]),
        .Q(m_axis_tdata[167]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[168] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[168]),
        .Q(m_axis_tdata[168]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[169] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[169]),
        .Q(m_axis_tdata[169]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[16] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[16]),
        .Q(m_axis_tdata[16]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[170] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[170]),
        .Q(m_axis_tdata[170]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[171] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[171]),
        .Q(m_axis_tdata[171]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[172] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[172]),
        .Q(m_axis_tdata[172]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[173] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[173]),
        .Q(m_axis_tdata[173]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[174] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[174]),
        .Q(m_axis_tdata[174]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[175] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[175]),
        .Q(m_axis_tdata[175]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[176] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[176]),
        .Q(m_axis_tdata[176]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[177] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[177]),
        .Q(m_axis_tdata[177]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[178] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[178]),
        .Q(m_axis_tdata[178]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[179] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[179]),
        .Q(m_axis_tdata[179]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[17] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[17]),
        .Q(m_axis_tdata[17]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[180] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[180]),
        .Q(m_axis_tdata[180]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[181] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[181]),
        .Q(m_axis_tdata[181]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[182] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[182]),
        .Q(m_axis_tdata[182]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[183] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[183]),
        .Q(m_axis_tdata[183]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[184] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[184]),
        .Q(m_axis_tdata[184]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[185] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[185]),
        .Q(m_axis_tdata[185]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[186] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[186]),
        .Q(m_axis_tdata[186]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[187] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[187]),
        .Q(m_axis_tdata[187]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[188] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[188]),
        .Q(m_axis_tdata[188]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[189] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[189]),
        .Q(m_axis_tdata[189]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[18] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[18]),
        .Q(m_axis_tdata[18]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[190] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[190]),
        .Q(m_axis_tdata[190]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[191] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[191]),
        .Q(m_axis_tdata[191]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[192] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[192]),
        .Q(m_axis_tdata[192]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[193] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[193]),
        .Q(m_axis_tdata[193]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[194] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[194]),
        .Q(m_axis_tdata[194]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[195] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[195]),
        .Q(m_axis_tdata[195]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[196] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[196]),
        .Q(m_axis_tdata[196]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[197] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[197]),
        .Q(m_axis_tdata[197]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[198] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[198]),
        .Q(m_axis_tdata[198]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[199] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[199]),
        .Q(m_axis_tdata[199]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[19] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[19]),
        .Q(m_axis_tdata[19]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[1]),
        .Q(m_axis_tdata[1]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[200] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[200]),
        .Q(m_axis_tdata[200]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[201] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[201]),
        .Q(m_axis_tdata[201]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[202] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[202]),
        .Q(m_axis_tdata[202]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[203] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[203]),
        .Q(m_axis_tdata[203]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[204] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[204]),
        .Q(m_axis_tdata[204]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[205] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[205]),
        .Q(m_axis_tdata[205]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[206] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[206]),
        .Q(m_axis_tdata[206]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[207] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[207]),
        .Q(m_axis_tdata[207]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[208] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[208]),
        .Q(m_axis_tdata[208]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[209] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[209]),
        .Q(m_axis_tdata[209]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[20] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[20]),
        .Q(m_axis_tdata[20]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[210] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[210]),
        .Q(m_axis_tdata[210]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[211] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[211]),
        .Q(m_axis_tdata[211]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[212] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[212]),
        .Q(m_axis_tdata[212]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[213] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[213]),
        .Q(m_axis_tdata[213]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[214] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[214]),
        .Q(m_axis_tdata[214]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[215] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[215]),
        .Q(m_axis_tdata[215]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[216] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[216]),
        .Q(m_axis_tdata[216]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[217] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[217]),
        .Q(m_axis_tdata[217]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[218] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[218]),
        .Q(m_axis_tdata[218]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[219] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[219]),
        .Q(m_axis_tdata[219]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[21] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[21]),
        .Q(m_axis_tdata[21]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[220] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[220]),
        .Q(m_axis_tdata[220]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[221] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[221]),
        .Q(m_axis_tdata[221]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[222] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[222]),
        .Q(m_axis_tdata[222]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[223] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[223]),
        .Q(m_axis_tdata[223]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[224] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[224]),
        .Q(m_axis_tdata[224]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[225] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[225]),
        .Q(m_axis_tdata[225]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[226] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[226]),
        .Q(m_axis_tdata[226]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[227] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[227]),
        .Q(m_axis_tdata[227]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[228] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[228]),
        .Q(m_axis_tdata[228]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[229] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[229]),
        .Q(m_axis_tdata[229]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[22] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[22]),
        .Q(m_axis_tdata[22]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[230] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[230]),
        .Q(m_axis_tdata[230]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[231] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[231]),
        .Q(m_axis_tdata[231]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[232] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[232]),
        .Q(m_axis_tdata[232]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[233] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[233]),
        .Q(m_axis_tdata[233]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[234] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[234]),
        .Q(m_axis_tdata[234]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[235] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[235]),
        .Q(m_axis_tdata[235]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[236] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[236]),
        .Q(m_axis_tdata[236]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[237] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[237]),
        .Q(m_axis_tdata[237]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[238] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[238]),
        .Q(m_axis_tdata[238]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[239] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[239]),
        .Q(m_axis_tdata[239]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[23] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[23]),
        .Q(m_axis_tdata[23]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[240] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[240]),
        .Q(m_axis_tdata[240]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[241] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[241]),
        .Q(m_axis_tdata[241]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[242] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[242]),
        .Q(m_axis_tdata[242]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[243] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[243]),
        .Q(m_axis_tdata[243]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[244] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[244]),
        .Q(m_axis_tdata[244]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[245] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[245]),
        .Q(m_axis_tdata[245]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[246] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[246]),
        .Q(m_axis_tdata[246]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[247] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[247]),
        .Q(m_axis_tdata[247]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[248] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[248]),
        .Q(m_axis_tdata[248]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[249] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[249]),
        .Q(m_axis_tdata[249]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[24] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[24]),
        .Q(m_axis_tdata[24]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[250] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[250]),
        .Q(m_axis_tdata[250]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[251] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[251]),
        .Q(m_axis_tdata[251]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[252] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[252]),
        .Q(m_axis_tdata[252]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[253] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[253]),
        .Q(m_axis_tdata[253]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[254] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[254]),
        .Q(m_axis_tdata[254]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[255] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[255]),
        .Q(m_axis_tdata[255]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[256] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[256]),
        .Q(m_axis_tdata[256]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[257] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[257]),
        .Q(m_axis_tdata[257]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[258] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[258]),
        .Q(m_axis_tdata[258]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[259] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[259]),
        .Q(m_axis_tdata[259]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[25] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[25]),
        .Q(m_axis_tdata[25]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[260] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[260]),
        .Q(m_axis_tdata[260]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[261] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[261]),
        .Q(m_axis_tdata[261]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[262] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[262]),
        .Q(m_axis_tdata[262]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[263] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[263]),
        .Q(m_axis_tdata[263]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[264] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[264]),
        .Q(m_axis_tdata[264]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[265] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[265]),
        .Q(m_axis_tdata[265]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[266] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[266]),
        .Q(m_axis_tdata[266]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[267] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[267]),
        .Q(m_axis_tdata[267]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[268] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[268]),
        .Q(m_axis_tdata[268]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[269] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[269]),
        .Q(m_axis_tdata[269]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[26] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[26]),
        .Q(m_axis_tdata[26]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[270] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[270]),
        .Q(m_axis_tdata[270]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[271] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[271]),
        .Q(m_axis_tdata[271]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[272] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[272]),
        .Q(m_axis_tdata[272]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[273] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[273]),
        .Q(m_axis_tdata[273]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[274] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[274]),
        .Q(m_axis_tdata[274]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[275] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[275]),
        .Q(m_axis_tdata[275]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[276] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[276]),
        .Q(m_axis_tdata[276]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[277] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[277]),
        .Q(m_axis_tdata[277]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[278] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[278]),
        .Q(m_axis_tdata[278]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[279] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[279]),
        .Q(m_axis_tdata[279]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[27] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[27]),
        .Q(m_axis_tdata[27]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[280] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[280]),
        .Q(m_axis_tdata[280]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[281] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[281]),
        .Q(m_axis_tdata[281]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[282] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[282]),
        .Q(m_axis_tdata[282]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[283] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[283]),
        .Q(m_axis_tdata[283]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[284] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[284]),
        .Q(m_axis_tdata[284]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[285] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[285]),
        .Q(m_axis_tdata[285]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[286] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[286]),
        .Q(m_axis_tdata[286]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[287] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[287]),
        .Q(m_axis_tdata[287]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[288] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[288]),
        .Q(m_axis_tdata[288]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[289] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[289]),
        .Q(m_axis_tdata[289]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[28] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[28]),
        .Q(m_axis_tdata[28]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[290] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[290]),
        .Q(m_axis_tdata[290]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[291] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[291]),
        .Q(m_axis_tdata[291]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[292] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[292]),
        .Q(m_axis_tdata[292]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[293] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[293]),
        .Q(m_axis_tdata[293]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[294] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[294]),
        .Q(m_axis_tdata[294]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[295] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[295]),
        .Q(m_axis_tdata[295]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[296] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[296]),
        .Q(m_axis_tdata[296]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[297] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[297]),
        .Q(m_axis_tdata[297]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[298] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[298]),
        .Q(m_axis_tdata[298]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[299] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[299]),
        .Q(m_axis_tdata[299]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[29] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[29]),
        .Q(m_axis_tdata[29]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[2]),
        .Q(m_axis_tdata[2]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[300] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[300]),
        .Q(m_axis_tdata[300]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[301] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[301]),
        .Q(m_axis_tdata[301]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[302] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[302]),
        .Q(m_axis_tdata[302]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[303] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[303]),
        .Q(m_axis_tdata[303]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[304] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[304]),
        .Q(m_axis_tdata[304]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[305] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[305]),
        .Q(m_axis_tdata[305]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[306] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[306]),
        .Q(m_axis_tdata[306]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[307] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[307]),
        .Q(m_axis_tdata[307]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[308] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[308]),
        .Q(m_axis_tdata[308]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[309] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[309]),
        .Q(m_axis_tdata[309]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[30] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[30]),
        .Q(m_axis_tdata[30]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[310] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[310]),
        .Q(m_axis_tdata[310]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[311] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[311]),
        .Q(m_axis_tdata[311]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[312] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[312]),
        .Q(m_axis_tdata[312]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[313] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[313]),
        .Q(m_axis_tdata[313]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[314] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[314]),
        .Q(m_axis_tdata[314]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[315] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[315]),
        .Q(m_axis_tdata[315]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[316] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[316]),
        .Q(m_axis_tdata[316]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[317] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[317]),
        .Q(m_axis_tdata[317]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[318] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[318]),
        .Q(m_axis_tdata[318]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[319] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[319]),
        .Q(m_axis_tdata[319]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[31] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[31]),
        .Q(m_axis_tdata[31]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[320] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[320]),
        .Q(m_axis_tdata[320]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[321] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[321]),
        .Q(m_axis_tdata[321]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[322] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[322]),
        .Q(m_axis_tdata[322]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[323] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[323]),
        .Q(m_axis_tdata[323]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[324] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[324]),
        .Q(m_axis_tdata[324]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[325] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[325]),
        .Q(m_axis_tdata[325]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[326] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[326]),
        .Q(m_axis_tdata[326]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[327] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[327]),
        .Q(m_axis_tdata[327]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[328] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[328]),
        .Q(m_axis_tdata[328]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[329] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[329]),
        .Q(m_axis_tdata[329]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[32] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[32]),
        .Q(m_axis_tdata[32]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[330] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[330]),
        .Q(m_axis_tdata[330]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[331] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[331]),
        .Q(m_axis_tdata[331]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[332] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[332]),
        .Q(m_axis_tdata[332]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[333] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[333]),
        .Q(m_axis_tdata[333]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[334] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[334]),
        .Q(m_axis_tdata[334]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[335] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[335]),
        .Q(m_axis_tdata[335]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[336] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[336]),
        .Q(m_axis_tdata[336]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[337] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[337]),
        .Q(m_axis_tdata[337]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[338] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[338]),
        .Q(m_axis_tdata[338]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[339] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[339]),
        .Q(m_axis_tdata[339]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[33] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[33]),
        .Q(m_axis_tdata[33]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[340] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[340]),
        .Q(m_axis_tdata[340]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[341] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[341]),
        .Q(m_axis_tdata[341]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[342] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[342]),
        .Q(m_axis_tdata[342]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[343] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[343]),
        .Q(m_axis_tdata[343]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[344] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[344]),
        .Q(m_axis_tdata[344]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[345] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[345]),
        .Q(m_axis_tdata[345]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[346] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[346]),
        .Q(m_axis_tdata[346]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[347] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[347]),
        .Q(m_axis_tdata[347]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[348] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[348]),
        .Q(m_axis_tdata[348]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[349] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[349]),
        .Q(m_axis_tdata[349]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[34] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[34]),
        .Q(m_axis_tdata[34]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[350] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[350]),
        .Q(m_axis_tdata[350]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[351] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[351]),
        .Q(m_axis_tdata[351]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[352] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[352]),
        .Q(m_axis_tdata[352]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[353] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[353]),
        .Q(m_axis_tdata[353]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[354] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[354]),
        .Q(m_axis_tdata[354]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[355] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[355]),
        .Q(m_axis_tdata[355]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[356] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[356]),
        .Q(m_axis_tdata[356]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[357] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[357]),
        .Q(m_axis_tdata[357]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[358] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[358]),
        .Q(m_axis_tdata[358]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[359] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[359]),
        .Q(m_axis_tdata[359]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[35] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[35]),
        .Q(m_axis_tdata[35]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[360] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[360]),
        .Q(m_axis_tdata[360]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[361] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[361]),
        .Q(m_axis_tdata[361]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[362] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[362]),
        .Q(m_axis_tdata[362]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[363] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[363]),
        .Q(m_axis_tdata[363]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[364] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[364]),
        .Q(m_axis_tdata[364]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[365] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[365]),
        .Q(m_axis_tdata[365]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[366] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[366]),
        .Q(m_axis_tdata[366]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[367] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[367]),
        .Q(m_axis_tdata[367]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[368] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[368]),
        .Q(m_axis_tdata[368]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[369] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[369]),
        .Q(m_axis_tdata[369]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[36] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[36]),
        .Q(m_axis_tdata[36]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[370] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[370]),
        .Q(m_axis_tdata[370]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[371] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[371]),
        .Q(m_axis_tdata[371]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[372] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[372]),
        .Q(m_axis_tdata[372]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[373] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[373]),
        .Q(m_axis_tdata[373]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[374] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[374]),
        .Q(m_axis_tdata[374]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[375] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[375]),
        .Q(m_axis_tdata[375]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[376] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[376]),
        .Q(m_axis_tdata[376]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[377] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[377]),
        .Q(m_axis_tdata[377]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[378] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[378]),
        .Q(m_axis_tdata[378]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[379] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[379]),
        .Q(m_axis_tdata[379]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[37] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[37]),
        .Q(m_axis_tdata[37]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[380] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[380]),
        .Q(m_axis_tdata[380]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[381] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[381]),
        .Q(m_axis_tdata[381]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[382] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[382]),
        .Q(m_axis_tdata[382]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[383] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[383]),
        .Q(m_axis_tdata[383]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[384] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[384]),
        .Q(m_axis_tdata[384]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[385] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[385]),
        .Q(m_axis_tdata[385]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[386] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[386]),
        .Q(m_axis_tdata[386]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[387] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[387]),
        .Q(m_axis_tdata[387]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[388] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[388]),
        .Q(m_axis_tdata[388]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[389] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[389]),
        .Q(m_axis_tdata[389]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[38] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[38]),
        .Q(m_axis_tdata[38]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[390] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[390]),
        .Q(m_axis_tdata[390]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[391] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[391]),
        .Q(m_axis_tdata[391]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[392] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[392]),
        .Q(m_axis_tdata[392]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[393] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[393]),
        .Q(m_axis_tdata[393]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[394] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[394]),
        .Q(m_axis_tdata[394]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[395] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[395]),
        .Q(m_axis_tdata[395]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[396] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[396]),
        .Q(m_axis_tdata[396]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[397] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[397]),
        .Q(m_axis_tdata[397]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[398] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[398]),
        .Q(m_axis_tdata[398]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[399] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[399]),
        .Q(m_axis_tdata[399]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[39] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[39]),
        .Q(m_axis_tdata[39]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[3]),
        .Q(m_axis_tdata[3]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[400] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[400]),
        .Q(m_axis_tdata[400]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[401] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[401]),
        .Q(m_axis_tdata[401]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[402] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[402]),
        .Q(m_axis_tdata[402]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[403] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[403]),
        .Q(m_axis_tdata[403]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[404] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[404]),
        .Q(m_axis_tdata[404]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[405] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[405]),
        .Q(m_axis_tdata[405]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[406] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[406]),
        .Q(m_axis_tdata[406]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[407] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[407]),
        .Q(m_axis_tdata[407]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[408] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[408]),
        .Q(m_axis_tdata[408]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[409] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[409]),
        .Q(m_axis_tdata[409]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[40] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[40]),
        .Q(m_axis_tdata[40]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[410] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[410]),
        .Q(m_axis_tdata[410]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[411] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[411]),
        .Q(m_axis_tdata[411]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[412] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[412]),
        .Q(m_axis_tdata[412]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[413] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[413]),
        .Q(m_axis_tdata[413]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[414] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[414]),
        .Q(m_axis_tdata[414]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[415] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[415]),
        .Q(m_axis_tdata[415]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[416] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[416]),
        .Q(m_axis_tdata[416]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[417] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[417]),
        .Q(m_axis_tdata[417]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[418] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[418]),
        .Q(m_axis_tdata[418]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[419] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[419]),
        .Q(m_axis_tdata[419]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[41] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[41]),
        .Q(m_axis_tdata[41]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[420] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[420]),
        .Q(m_axis_tdata[420]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[421] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[421]),
        .Q(m_axis_tdata[421]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[422] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[422]),
        .Q(m_axis_tdata[422]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[423] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[423]),
        .Q(m_axis_tdata[423]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[424] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[424]),
        .Q(m_axis_tdata[424]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[425] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[425]),
        .Q(m_axis_tdata[425]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[426] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[426]),
        .Q(m_axis_tdata[426]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[427] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[427]),
        .Q(m_axis_tdata[427]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[428] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[428]),
        .Q(m_axis_tdata[428]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[429] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[429]),
        .Q(m_axis_tdata[429]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[42] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[42]),
        .Q(m_axis_tdata[42]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[430] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[430]),
        .Q(m_axis_tdata[430]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[431] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[431]),
        .Q(m_axis_tdata[431]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[432] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[432]),
        .Q(m_axis_tdata[432]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[433] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[433]),
        .Q(m_axis_tdata[433]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[434] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[434]),
        .Q(m_axis_tdata[434]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[435] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[435]),
        .Q(m_axis_tdata[435]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[436] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[436]),
        .Q(m_axis_tdata[436]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[437] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[437]),
        .Q(m_axis_tdata[437]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[438] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[438]),
        .Q(m_axis_tdata[438]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[439] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[439]),
        .Q(m_axis_tdata[439]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[43] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[43]),
        .Q(m_axis_tdata[43]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[440] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[440]),
        .Q(m_axis_tdata[440]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[441] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[441]),
        .Q(m_axis_tdata[441]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[442] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[442]),
        .Q(m_axis_tdata[442]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[443] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[443]),
        .Q(m_axis_tdata[443]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[444] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[444]),
        .Q(m_axis_tdata[444]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[445] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[445]),
        .Q(m_axis_tdata[445]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[446] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[446]),
        .Q(m_axis_tdata[446]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[447] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[447]),
        .Q(m_axis_tdata[447]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[448] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[448]),
        .Q(m_axis_tdata[448]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[449] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[449]),
        .Q(m_axis_tdata[449]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[44] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[44]),
        .Q(m_axis_tdata[44]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[450] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[450]),
        .Q(m_axis_tdata[450]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[451] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[451]),
        .Q(m_axis_tdata[451]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[452] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[452]),
        .Q(m_axis_tdata[452]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[453] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[453]),
        .Q(m_axis_tdata[453]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[454] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[454]),
        .Q(m_axis_tdata[454]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[455] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[455]),
        .Q(m_axis_tdata[455]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[456] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[456]),
        .Q(m_axis_tdata[456]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[457] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[457]),
        .Q(m_axis_tdata[457]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[458] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[458]),
        .Q(m_axis_tdata[458]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[459] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[459]),
        .Q(m_axis_tdata[459]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[45] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[45]),
        .Q(m_axis_tdata[45]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[460] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[460]),
        .Q(m_axis_tdata[460]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[461] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[461]),
        .Q(m_axis_tdata[461]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[462] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[462]),
        .Q(m_axis_tdata[462]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[463] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[463]),
        .Q(m_axis_tdata[463]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[464] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[464]),
        .Q(m_axis_tdata[464]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[465] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[465]),
        .Q(m_axis_tdata[465]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[466] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[466]),
        .Q(m_axis_tdata[466]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[467] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[467]),
        .Q(m_axis_tdata[467]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[468] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[468]),
        .Q(m_axis_tdata[468]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[469] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[469]),
        .Q(m_axis_tdata[469]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[46] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[46]),
        .Q(m_axis_tdata[46]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[470] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[470]),
        .Q(m_axis_tdata[470]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[471] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[471]),
        .Q(m_axis_tdata[471]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[472] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[472]),
        .Q(m_axis_tdata[472]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[473] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[473]),
        .Q(m_axis_tdata[473]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[474] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[474]),
        .Q(m_axis_tdata[474]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[475] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[475]),
        .Q(m_axis_tdata[475]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[476] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[476]),
        .Q(m_axis_tdata[476]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[477] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[477]),
        .Q(m_axis_tdata[477]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[478] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[478]),
        .Q(m_axis_tdata[478]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[479] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[479]),
        .Q(m_axis_tdata[479]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[47] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[47]),
        .Q(m_axis_tdata[47]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[480] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[480]),
        .Q(m_axis_tdata[480]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[481] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[481]),
        .Q(m_axis_tdata[481]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[482] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[482]),
        .Q(m_axis_tdata[482]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[483] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[483]),
        .Q(m_axis_tdata[483]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[484] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[484]),
        .Q(m_axis_tdata[484]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[485] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[485]),
        .Q(m_axis_tdata[485]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[486] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[486]),
        .Q(m_axis_tdata[486]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[487] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[487]),
        .Q(m_axis_tdata[487]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[488] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[488]),
        .Q(m_axis_tdata[488]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[489] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[489]),
        .Q(m_axis_tdata[489]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[48] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[48]),
        .Q(m_axis_tdata[48]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[490] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[490]),
        .Q(m_axis_tdata[490]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[491] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[491]),
        .Q(m_axis_tdata[491]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[492] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[492]),
        .Q(m_axis_tdata[492]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[493] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[493]),
        .Q(m_axis_tdata[493]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[494] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[494]),
        .Q(m_axis_tdata[494]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[495] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[495]),
        .Q(m_axis_tdata[495]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[496] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[496]),
        .Q(m_axis_tdata[496]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[497] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[497]),
        .Q(m_axis_tdata[497]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[498] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[498]),
        .Q(m_axis_tdata[498]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[499] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[499]),
        .Q(m_axis_tdata[499]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[49] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[49]),
        .Q(m_axis_tdata[49]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[4]),
        .Q(m_axis_tdata[4]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[500] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[500]),
        .Q(m_axis_tdata[500]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[501] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[501]),
        .Q(m_axis_tdata[501]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[502] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[502]),
        .Q(m_axis_tdata[502]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[503] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[503]),
        .Q(m_axis_tdata[503]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[504] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[504]),
        .Q(m_axis_tdata[504]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[505] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[505]),
        .Q(m_axis_tdata[505]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[506] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[506]),
        .Q(m_axis_tdata[506]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[507] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[507]),
        .Q(m_axis_tdata[507]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[508] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[508]),
        .Q(m_axis_tdata[508]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[509] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[509]),
        .Q(m_axis_tdata[509]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[50] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[50]),
        .Q(m_axis_tdata[50]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[510] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[510]),
        .Q(m_axis_tdata[510]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[511] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[511]),
        .Q(m_axis_tdata[511]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[51] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[51]),
        .Q(m_axis_tdata[51]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[52] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[52]),
        .Q(m_axis_tdata[52]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[53] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[53]),
        .Q(m_axis_tdata[53]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[54] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[54]),
        .Q(m_axis_tdata[54]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[55] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[55]),
        .Q(m_axis_tdata[55]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[56] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[56]),
        .Q(m_axis_tdata[56]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[57] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[57]),
        .Q(m_axis_tdata[57]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[58] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[58]),
        .Q(m_axis_tdata[58]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[59] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[59]),
        .Q(m_axis_tdata[59]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[5]),
        .Q(m_axis_tdata[5]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[60] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[60]),
        .Q(m_axis_tdata[60]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[61] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[61]),
        .Q(m_axis_tdata[61]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[62] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[62]),
        .Q(m_axis_tdata[62]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[63] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[63]),
        .Q(m_axis_tdata[63]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[64] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[64]),
        .Q(m_axis_tdata[64]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[65] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[65]),
        .Q(m_axis_tdata[65]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[66] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[66]),
        .Q(m_axis_tdata[66]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[67] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[67]),
        .Q(m_axis_tdata[67]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[68] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[68]),
        .Q(m_axis_tdata[68]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[69] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[69]),
        .Q(m_axis_tdata[69]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[6]),
        .Q(m_axis_tdata[6]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[70] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[70]),
        .Q(m_axis_tdata[70]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[71] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[71]),
        .Q(m_axis_tdata[71]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[72] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[72]),
        .Q(m_axis_tdata[72]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[73] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[73]),
        .Q(m_axis_tdata[73]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[74] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[74]),
        .Q(m_axis_tdata[74]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[75] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[75]),
        .Q(m_axis_tdata[75]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[76] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[76]),
        .Q(m_axis_tdata[76]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[77] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[77]),
        .Q(m_axis_tdata[77]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[78] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[78]),
        .Q(m_axis_tdata[78]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[79] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[79]),
        .Q(m_axis_tdata[79]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[7]),
        .Q(m_axis_tdata[7]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[80] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[80]),
        .Q(m_axis_tdata[80]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[81] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[81]),
        .Q(m_axis_tdata[81]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[82] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[82]),
        .Q(m_axis_tdata[82]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[83] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[83]),
        .Q(m_axis_tdata[83]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[84] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[84]),
        .Q(m_axis_tdata[84]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[85] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[85]),
        .Q(m_axis_tdata[85]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[86] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[86]),
        .Q(m_axis_tdata[86]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[87] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[87]),
        .Q(m_axis_tdata[87]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[88] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[88]),
        .Q(m_axis_tdata[88]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[89] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[89]),
        .Q(m_axis_tdata[89]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[8] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[8]),
        .Q(m_axis_tdata[8]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[90] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[90]),
        .Q(m_axis_tdata[90]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[91] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[91]),
        .Q(m_axis_tdata[91]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[92] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[92]),
        .Q(m_axis_tdata[92]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[93] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[93]),
        .Q(m_axis_tdata[93]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[94] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[94]),
        .Q(m_axis_tdata[94]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[95] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[95]),
        .Q(m_axis_tdata[95]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[96] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[96]),
        .Q(m_axis_tdata[96]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[97] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[97]),
        .Q(m_axis_tdata[97]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[98] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[98]),
        .Q(m_axis_tdata[98]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[99] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[99]),
        .Q(m_axis_tdata[99]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) 
  FDRE \m_axis_tdata_reg[9] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(s_axis_tdata[9]),
        .Q(m_axis_tdata[9]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4884CC00844800CC)) 
    \m_axis_tuser[0]_i_1 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_2_n_0 ),
        .I2(\m_axis_tuser[0]_i_3_n_0 ),
        .I3(\m_axis_tuser[0]_i_4_n_0 ),
        .I4(\GEN_SLOT[0].v1 ),
        .I5(DECIM_PHASE[4]),
        .O(mask_comb[0]));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[0]_i_10 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[0]_i_26_n_0 ),
        .I2(\m_axis_tuser[0]_i_27_n_0 ),
        .O(\m_axis_tuser[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[0]_i_100 
       (.I0(\m_axis_tuser[0]_i_116_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[0]_i_117_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_97_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[0]_i_94_n_0 ),
        .O(\m_axis_tuser[0]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h04D5514C455D10C4)) 
    \m_axis_tuser[0]_i_101 
       (.I0(DECIM_M[1]),
        .I1(phase0[0]),
        .I2(\m_axis_tuser[0]_i_114_n_0 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(phase0[1]),
        .I5(\m_axis_tuser_reg[0]_i_97_n_4 ),
        .O(\m_axis_tuser[0]_i_101_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[0]_i_102 
       (.I0(\m_axis_tuser[0]_i_106_n_0 ),
        .O(\m_axis_tuser[0]_i_102_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[0]_i_103 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_107_n_0 ),
        .I2(\m_axis_tuser[0]_i_63_n_0 ),
        .O(\m_axis_tuser[0]_i_103_n_0 ));
  LUT6 #(
    .INIT(64'h0909909099000099)) 
    \m_axis_tuser[0]_i_104 
       (.I0(\m_axis_tuser[0]_i_94_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[0]_i_116_n_0 ),
        .I3(DECIM_M[2]),
        .I4(\m_axis_tuser[0]_i_117_n_0 ),
        .I5(\m_axis_tuser_reg[0]_i_97_n_4 ),
        .O(\m_axis_tuser[0]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h2040498680104383)) 
    \m_axis_tuser[0]_i_105 
       (.I0(\m_axis_tuser_reg[0]_i_97_n_4 ),
        .I1(phase0[1]),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(\m_axis_tuser[0]_i_114_n_0 ),
        .I4(phase0[0]),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[0]_i_105_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF2B00)) 
    \m_axis_tuser[0]_i_106 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_95_n_0 ),
        .I2(\m_axis_tuser[0]_i_96_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_97_n_4 ),
        .I4(\m_axis_tuser[0]_i_119_n_0 ),
        .O(\m_axis_tuser[0]_i_106_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[0]_i_107 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_95_n_0 ),
        .I2(\m_axis_tuser[0]_i_96_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_97_n_4 ),
        .I4(\m_axis_tuser[0]_i_119_n_0 ),
        .O(\m_axis_tuser[0]_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[0]_i_108 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_62_n_0 ),
        .I2(\m_axis_tuser[0]_i_63_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_64_n_4 ),
        .I4(\m_axis_tuser[0]_i_107_n_0 ),
        .O(\m_axis_tuser[0]_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h1C2FE3D073BF8C40)) 
    \m_axis_tuser[0]_i_109 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[0]_i_114_n_0 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .I5(\m_axis_tuser_reg[0]_i_97_n_4 ),
        .O(\m_axis_tuser[0]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hC33C66995AA5FF00)) 
    \m_axis_tuser[0]_i_11 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_28_n_0 ),
        .I2(\m_axis_tuser[0]_i_29_n_0 ),
        .I3(\m_axis_tuser[0]_i_30_n_0 ),
        .I4(\m_axis_tuser_reg[0]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[0]_i_32_n_4 ),
        .O(\m_axis_tuser[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hB748)) 
    \m_axis_tuser[0]_i_110 
       (.I0(\m_axis_tuser_reg[0]_i_97_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser[0]_i_114_n_0 ),
        .I3(phase0[0]),
        .O(\m_axis_tuser[0]_i_110_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[0]_i_111 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_62_n_0 ),
        .I2(\m_axis_tuser[0]_i_63_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_64_n_4 ),
        .I4(\m_axis_tuser[0]_i_106_n_0 ),
        .I5(\m_axis_tuser[0]_i_107_n_0 ),
        .O(\m_axis_tuser[0]_i_111_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[0]_i_112 
       (.I0(\m_axis_tuser[0]_i_60_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[0]_i_61_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_31_n_4 ),
        .O(\m_axis_tuser[0]_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h6C39)) 
    \m_axis_tuser[0]_i_113 
       (.I0(\m_axis_tuser_reg[0]_i_31_n_4 ),
        .I1(\m_axis_tuser[0]_i_61_n_0 ),
        .I2(\m_axis_tuser[0]_i_60_n_0 ),
        .I3(DECIM_M[3]),
        .O(\m_axis_tuser[0]_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hDF5D4504)) 
    \m_axis_tuser[0]_i_114 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_58_n_0 ),
        .I2(DECIM_M[3]),
        .I3(phase0[3]),
        .I4(phase0[4]),
        .O(\m_axis_tuser[0]_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h16C3BFFF803CD6FF)) 
    \m_axis_tuser[0]_i_115 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[0]_i_114_n_0 ),
        .I2(\m_axis_tuser_reg[0]_i_97_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(DECIM_M[1]),
        .I5(phase0[1]),
        .O(\m_axis_tuser[0]_i_115_n_0 ));
  LUT5 #(
    .INIT(32'h63FF0C6F)) 
    \m_axis_tuser[0]_i_116 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[0]_i_114_n_0 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .O(\m_axis_tuser[0]_i_116_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h6F90)) 
    \m_axis_tuser[0]_i_117 
       (.I0(\phase0[0]_i_71_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[0]_i_114_n_0 ),
        .I3(phase0[2]),
        .O(\m_axis_tuser[0]_i_117_n_0 ));
  LUT4 #(
    .INIT(16'h7D82)) 
    \m_axis_tuser[0]_i_118 
       (.I0(\m_axis_tuser[0]_i_114_n_0 ),
        .I1(\phase0[0]_i_70_n_0 ),
        .I2(DECIM_M[3]),
        .I3(phase0[3]),
        .O(\m_axis_tuser[0]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h2B22BB2B00000000)) 
    \m_axis_tuser[0]_i_119 
       (.I0(DECIM_M[4]),
        .I1(phase0[4]),
        .I2(\phase0[0]_i_70_n_0 ),
        .I3(DECIM_M[3]),
        .I4(phase0[3]),
        .I5(\m_axis_tuser[0]_i_114_n_0 ),
        .O(\m_axis_tuser[0]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'h595599598C88CC8C)) 
    \m_axis_tuser[0]_i_120 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_114_n_0 ),
        .I2(phase0[3]),
        .I3(DECIM_M[3]),
        .I4(\phase0[0]_i_70_n_0 ),
        .I5(phase0[4]),
        .O(\m_axis_tuser[0]_i_120_n_0 ));
  LUT6 #(
    .INIT(64'h5715171D0D404144)) 
    \m_axis_tuser[0]_i_121 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[0]_i_114_n_0 ),
        .I2(DECIM_M[2]),
        .I3(phase0[2]),
        .I4(\phase0[0]_i_71_n_0 ),
        .I5(phase0[3]),
        .O(\m_axis_tuser[0]_i_121_n_0 ));
  LUT5 #(
    .INIT(32'h51753410)) 
    \m_axis_tuser[0]_i_122 
       (.I0(DECIM_M[1]),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(phase0[0]),
        .I3(\m_axis_tuser[0]_i_114_n_0 ),
        .I4(phase0[1]),
        .O(\m_axis_tuser[0]_i_122_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[0]_i_123 
       (.I0(\m_axis_tuser[0]_i_119_n_0 ),
        .O(\m_axis_tuser[0]_i_123_n_0 ));
  LUT6 #(
    .INIT(64'h2561252561612561)) 
    \m_axis_tuser[0]_i_124 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_114_n_0 ),
        .I2(phase0[4]),
        .I3(\phase0[0]_i_70_n_0 ),
        .I4(DECIM_M[3]),
        .I5(phase0[3]),
        .O(\m_axis_tuser[0]_i_124_n_0 ));
  LUT6 #(
    .INIT(64'h2814A00A28145005)) 
    \m_axis_tuser[0]_i_125 
       (.I0(phase0[3]),
        .I1(\phase0[0]_i_71_n_0 ),
        .I2(phase0[2]),
        .I3(DECIM_M[2]),
        .I4(\m_axis_tuser[0]_i_114_n_0 ),
        .I5(DECIM_M[3]),
        .O(\m_axis_tuser[0]_i_125_n_0 ));
  LUT5 #(
    .INIT(32'h28061805)) 
    \m_axis_tuser[0]_i_126 
       (.I0(phase0[1]),
        .I1(\m_axis_tuser[0]_i_114_n_0 ),
        .I2(phase0[0]),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[0]_i_126_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[0]_i_14 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_9_n_0 ),
        .I2(\GEN_SLOT[0].v [4]),
        .I3(\m_axis_tuser_reg[0]_i_13_n_4 ),
        .I4(\GEN_SLOT[0].v__0 ),
        .I5(\GEN_SLOT[0].v [5]),
        .O(\m_axis_tuser[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hD5FF7F55D4FF2B00)) 
    \m_axis_tuser[0]_i_15 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_9_n_0 ),
        .I2(\GEN_SLOT[0].v [4]),
        .I3(\m_axis_tuser_reg[0]_i_13_n_4 ),
        .I4(\GEN_SLOT[0].v [5]),
        .I5(\m_axis_tuser[0]_i_4_n_0 ),
        .O(\m_axis_tuser[0]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[0]_i_16 
       (.I0(\m_axis_tuser[0]_i_24_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[0]_i_8_n_0 ),
        .O(\m_axis_tuser[0]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[0]_i_17 
       (.I0(DECIM_M[1]),
        .I1(\GEN_SLOT[0].v [1]),
        .I2(\m_axis_tuser_reg[0]_i_13_n_4 ),
        .I3(\m_axis_tuser[4]_i_53_n_0 ),
        .I4(\GEN_SLOT[0].v [0]),
        .O(\m_axis_tuser[0]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF2B00D4FF)) 
    \m_axis_tuser[0]_i_18 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_9_n_0 ),
        .I2(\GEN_SLOT[0].v [4]),
        .I3(\m_axis_tuser_reg[0]_i_13_n_4 ),
        .I4(\GEN_SLOT[0].v__0 ),
        .I5(\GEN_SLOT[0].v [5]),
        .O(\m_axis_tuser[0]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2A0080AA01005455)) 
    \m_axis_tuser[0]_i_19 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_9_n_0 ),
        .I2(\GEN_SLOT[0].v [4]),
        .I3(\m_axis_tuser_reg[0]_i_13_n_4 ),
        .I4(\GEN_SLOT[0].v [5]),
        .I5(\m_axis_tuser[0]_i_4_n_0 ),
        .O(\m_axis_tuser[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2882AA00822800AA)) 
    \m_axis_tuser[0]_i_2 
       (.I0(\m_axis_tuser[0]_i_6_n_0 ),
        .I1(\m_axis_tuser[0]_i_7_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[0]_i_8_n_0 ),
        .I4(\GEN_SLOT[0].v1 ),
        .I5(DECIM_PHASE[3]),
        .O(\m_axis_tuser[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[0]_i_20 
       (.I0(\m_axis_tuser[0]_i_8_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[0]_i_24_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[0]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[0]_i_21 
       (.I0(\m_axis_tuser_reg[0]_i_13_n_4 ),
        .I1(\m_axis_tuser[4]_i_53_n_0 ),
        .I2(\GEN_SLOT[0].v [0]),
        .I3(DECIM_M[1]),
        .I4(\GEN_SLOT[0].v [1]),
        .O(\m_axis_tuser[0]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0999900090000999)) 
    \m_axis_tuser[0]_i_22 
       (.I0(cond_mod_return),
        .I1(DECIM_PHASE[1]),
        .I2(\GEN_SLOT[0].v1 ),
        .I3(\m_axis_tuser[4]_i_53_n_0 ),
        .I4(\m_axis_tuser[0]_i_55_n_0 ),
        .I5(DECIM_PHASE[0]),
        .O(\m_axis_tuser[0]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[0]_i_23 
       (.I0(\GEN_SLOT[0].v [0]),
        .I1(\m_axis_tuser_reg[0]_i_13_n_4 ),
        .I2(\m_axis_tuser[4]_i_53_n_0 ),
        .I3(\GEN_SLOT[0].v [1]),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[0]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[0]_i_24 
       (.I0(\m_axis_tuser[0]_i_56_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[0]_i_57_n_0 ),
        .I3(\m_axis_tuser[0]_i_58_n_0 ),
        .I4(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[0]_i_13_n_4 ),
        .O(\m_axis_tuser[0]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[0]_i_25 
       (.I0(\m_axis_tuser[0]_i_56_n_0 ),
        .I1(\m_axis_tuser[0]_i_57_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[0]_i_58_n_0 ),
        .I4(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .O(\m_axis_tuser[0]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[0]_i_26 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[0]_i_57_n_0 ),
        .I2(\m_axis_tuser[0]_i_58_n_0 ),
        .O(\m_axis_tuser[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[0]_i_27 
       (.I0(\m_axis_tuser[0]_i_59_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[0]_i_60_n_0 ),
        .I3(\m_axis_tuser[0]_i_61_n_0 ),
        .I4(\m_axis_tuser_reg[0]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[0]_i_32_n_4 ),
        .O(\m_axis_tuser[0]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[0]_i_28 
       (.I0(\m_axis_tuser[0]_i_59_n_0 ),
        .I1(\m_axis_tuser[0]_i_60_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[0]_i_61_n_0 ),
        .I4(\m_axis_tuser_reg[0]_i_31_n_4 ),
        .O(\m_axis_tuser[0]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[0]_i_29 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[0]_i_60_n_0 ),
        .I2(\m_axis_tuser[0]_i_61_n_0 ),
        .O(\m_axis_tuser[0]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[0]_i_3 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[0]_i_7_n_0 ),
        .I2(\m_axis_tuser[0]_i_8_n_0 ),
        .O(\m_axis_tuser[0]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[0]_i_30 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_62_n_0 ),
        .I2(\m_axis_tuser[0]_i_63_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_64_n_4 ),
        .O(\m_axis_tuser[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[0]_i_33 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_28_n_0 ),
        .I2(\m_axis_tuser[0]_i_81_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_32_n_4 ),
        .I4(\m_axis_tuser[0]_i_82_n_0 ),
        .I5(\m_axis_tuser[0]_i_83_n_0 ),
        .O(\m_axis_tuser[0]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[0]_i_34 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_11_n_0 ),
        .I2(\m_axis_tuser[0]_i_84_n_0 ),
        .O(\m_axis_tuser[0]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[0]_i_35 
       (.I0(\m_axis_tuser[0]_i_58_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[0]_i_27_n_0 ),
        .O(\m_axis_tuser[0]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[0]_i_36 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[0]_i_85_n_0 ),
        .I2(\m_axis_tuser_reg[0]_i_32_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(\m_axis_tuser[0]_i_86_n_0 ),
        .O(\m_axis_tuser[0]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[0]_i_37 
       (.I0(\m_axis_tuser[0]_i_87_n_0 ),
        .O(\m_axis_tuser[0]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[0]_i_38 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_84_n_0 ),
        .I2(\m_axis_tuser[0]_i_11_n_0 ),
        .O(\m_axis_tuser[0]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[0]_i_39 
       (.I0(\m_axis_tuser[0]_i_27_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[0]_i_58_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hC33C66995AA5FF00)) 
    \m_axis_tuser[0]_i_4 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_9_n_0 ),
        .I2(\m_axis_tuser[0]_i_10_n_0 ),
        .I3(\m_axis_tuser[0]_i_11_n_0 ),
        .I4(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[0]_i_13_n_4 ),
        .O(\m_axis_tuser[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[0]_i_40 
       (.I0(\m_axis_tuser_reg[0]_i_32_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser[0]_i_86_n_0 ),
        .I3(DECIM_M[1]),
        .I4(\m_axis_tuser[0]_i_85_n_0 ),
        .O(\m_axis_tuser[0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[0]_i_41 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_10_n_0 ),
        .I2(\m_axis_tuser[0]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .I4(\m_axis_tuser[0]_i_87_n_0 ),
        .I5(\m_axis_tuser[0]_i_84_n_0 ),
        .O(\m_axis_tuser[0]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[0]_i_42 
       (.I0(DECIM_M[4]),
        .I1(\GEN_SLOT[0].v [4]),
        .I2(\GEN_SLOT[0].v [5]),
        .O(\m_axis_tuser[0]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[0]_i_43 
       (.I0(\m_axis_tuser[0]_i_57_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[0]_i_58_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\GEN_SLOT[0].v [3]),
        .O(\m_axis_tuser[0]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0D45541C455D1C04)) 
    \m_axis_tuser[0]_i_44 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[0]_i_86_n_0 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_32_n_4 ),
        .I4(\m_axis_tuser[0]_i_85_n_0 ),
        .I5(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .O(\m_axis_tuser[0]_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[0]_i_45 
       (.I0(\GEN_SLOT[0].v__0 ),
        .O(\m_axis_tuser[0]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[0]_i_46 
       (.I0(DECIM_M[4]),
        .I1(\GEN_SLOT[0].v [5]),
        .I2(\GEN_SLOT[0].v [4]),
        .O(\m_axis_tuser[0]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h5AC30000)) 
    \m_axis_tuser[0]_i_47 
       (.I0(\m_axis_tuser[0]_i_57_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[0]_i_58_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .I4(\m_axis_tuser[0]_i_89_n_0 ),
        .O(\m_axis_tuser[0]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h9000090009999099)) 
    \m_axis_tuser[0]_i_48 
       (.I0(\GEN_SLOT[0].v [1]),
        .I1(DECIM_M[1]),
        .I2(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(\m_axis_tuser_reg[0]_i_32_n_4 ),
        .I5(\m_axis_tuser[0]_i_86_n_0 ),
        .O(\m_axis_tuser[0]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[0]_i_49 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_10_n_0 ),
        .I2(\m_axis_tuser[0]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .O(\GEN_SLOT[0].v [4]));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[0]_i_50 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_10_n_0 ),
        .I2(\m_axis_tuser[0]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .I4(\m_axis_tuser[0]_i_87_n_0 ),
        .I5(\m_axis_tuser[0]_i_84_n_0 ),
        .O(\GEN_SLOT[0].v__0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[0]_i_51 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_10_n_0 ),
        .I2(\m_axis_tuser[0]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .I4(\m_axis_tuser[0]_i_84_n_0 ),
        .O(\GEN_SLOT[0].v [5]));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[0]_i_52 
       (.I0(\m_axis_tuser[0]_i_86_n_0 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser_reg[0]_i_32_n_4 ),
        .I3(\m_axis_tuser[0]_i_85_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .O(\GEN_SLOT[0].v [1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'hB748)) 
    \m_axis_tuser[0]_i_53 
       (.I0(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser_reg[0]_i_32_n_4 ),
        .I3(\m_axis_tuser[0]_i_86_n_0 ),
        .O(\GEN_SLOT[0].v [0]));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[0]_i_54 
       (.I0(\GEN_SLOT[0].v [0]),
        .I1(\m_axis_tuser[4]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[0]_i_13_n_4 ),
        .I3(\GEN_SLOT[0].v [1]),
        .I4(DECIM_M[1]),
        .I5(\GEN_SLOT[0].v1 ),
        .O(cond_mod_return));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h7BB78448)) 
    \m_axis_tuser[0]_i_55 
       (.I0(\m_axis_tuser_reg[0]_i_13_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .I3(\m_axis_tuser_reg[0]_i_32_n_4 ),
        .I4(\m_axis_tuser[0]_i_86_n_0 ),
        .O(\m_axis_tuser[0]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h16C3803CBFFFD6FF)) 
    \m_axis_tuser[0]_i_56 
       (.I0(\m_axis_tuser[0]_i_86_n_0 ),
        .I1(\m_axis_tuser_reg[0]_i_32_n_4 ),
        .I2(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(\m_axis_tuser[0]_i_85_n_0 ),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[0]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[0]_i_57 
       (.I0(\m_axis_tuser[0]_i_86_n_0 ),
        .I1(\m_axis_tuser_reg[0]_i_32_n_4 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(\m_axis_tuser[0]_i_85_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[0]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[0]_i_58 
       (.I0(\m_axis_tuser[0]_i_90_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[0]_i_91_n_0 ),
        .I3(\m_axis_tuser[0]_i_92_n_0 ),
        .I4(\m_axis_tuser_reg[0]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[0]_i_32_n_4 ),
        .O(\m_axis_tuser[0]_i_58_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[0]_i_59 
       (.I0(\m_axis_tuser[0]_i_90_n_0 ),
        .I1(\m_axis_tuser[0]_i_91_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[0]_i_92_n_0 ),
        .I4(\m_axis_tuser_reg[0]_i_31_n_4 ),
        .O(\m_axis_tuser[0]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h2882822888882222)) 
    \m_axis_tuser[0]_i_6 
       (.I0(\m_axis_tuser[0]_i_22_n_0 ),
        .I1(DECIM_PHASE[2]),
        .I2(\m_axis_tuser[0]_i_23_n_0 ),
        .I3(DECIM_M[2]),
        .I4(\m_axis_tuser[0]_i_24_n_0 ),
        .I5(\GEN_SLOT[0].v1 ),
        .O(\m_axis_tuser[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[0]_i_60 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[0]_i_91_n_0 ),
        .I2(\m_axis_tuser[0]_i_92_n_0 ),
        .O(\m_axis_tuser[0]_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[0]_i_61 
       (.I0(\m_axis_tuser[0]_i_93_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[0]_i_94_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_64_n_4 ),
        .O(\m_axis_tuser[0]_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[0]_i_62 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[0]_i_93_n_0 ),
        .I2(\m_axis_tuser[0]_i_94_n_0 ),
        .O(\m_axis_tuser[0]_i_62_n_0 ));
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[0]_i_63 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_95_n_0 ),
        .I2(\m_axis_tuser[0]_i_96_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_97_n_4 ),
        .O(\m_axis_tuser[0]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[0]_i_65 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_62_n_0 ),
        .I2(\m_axis_tuser[0]_i_63_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_64_n_4 ),
        .I4(\m_axis_tuser[0]_i_106_n_0 ),
        .I5(\m_axis_tuser[0]_i_107_n_0 ),
        .O(\m_axis_tuser[0]_i_65_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[0]_i_66 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_30_n_0 ),
        .I2(\m_axis_tuser[0]_i_108_n_0 ),
        .O(\m_axis_tuser[0]_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[0]_i_67 
       (.I0(\m_axis_tuser[0]_i_92_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[0]_i_61_n_0 ),
        .O(\m_axis_tuser[0]_i_67_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[0]_i_68 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[0]_i_109_n_0 ),
        .I2(\m_axis_tuser_reg[0]_i_64_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(\m_axis_tuser[0]_i_110_n_0 ),
        .O(\m_axis_tuser[0]_i_68_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[0]_i_69 
       (.I0(\m_axis_tuser[0]_i_111_n_0 ),
        .O(\m_axis_tuser[0]_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[0]_i_7 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[0]_i_23_n_0 ),
        .I2(\m_axis_tuser[0]_i_24_n_0 ),
        .O(\m_axis_tuser[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[0]_i_70 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_108_n_0 ),
        .I2(\m_axis_tuser[0]_i_30_n_0 ),
        .O(\m_axis_tuser[0]_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[0]_i_71 
       (.I0(\m_axis_tuser[0]_i_61_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[0]_i_92_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[0]_i_71_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[0]_i_72 
       (.I0(\m_axis_tuser_reg[0]_i_64_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser[0]_i_110_n_0 ),
        .I3(DECIM_M[1]),
        .I4(\m_axis_tuser[0]_i_109_n_0 ),
        .O(\m_axis_tuser[0]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[0]_i_73 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_29_n_0 ),
        .I2(\m_axis_tuser[0]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_31_n_4 ),
        .I4(\m_axis_tuser[0]_i_111_n_0 ),
        .I5(\m_axis_tuser[0]_i_108_n_0 ),
        .O(\m_axis_tuser[0]_i_73_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[0]_i_74 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_81_n_0 ),
        .I2(\m_axis_tuser[0]_i_83_n_0 ),
        .O(\m_axis_tuser[0]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[0]_i_75 
       (.I0(\m_axis_tuser[0]_i_91_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[0]_i_92_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_31_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[0]_i_112_n_0 ),
        .O(\m_axis_tuser[0]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h0D45541C455D1C04)) 
    \m_axis_tuser[0]_i_76 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[0]_i_110_n_0 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_64_n_4 ),
        .I4(\m_axis_tuser[0]_i_109_n_0 ),
        .I5(\m_axis_tuser_reg[0]_i_31_n_4 ),
        .O(\m_axis_tuser[0]_i_76_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[0]_i_77 
       (.I0(\m_axis_tuser[0]_i_82_n_0 ),
        .O(\m_axis_tuser[0]_i_77_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[0]_i_78 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_83_n_0 ),
        .I2(\m_axis_tuser[0]_i_81_n_0 ),
        .O(\m_axis_tuser[0]_i_78_n_0 ));
  LUT5 #(
    .INIT(32'h5AC30000)) 
    \m_axis_tuser[0]_i_79 
       (.I0(\m_axis_tuser[0]_i_91_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[0]_i_92_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_31_n_4 ),
        .I4(\m_axis_tuser[0]_i_113_n_0 ),
        .O(\m_axis_tuser[0]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[0]_i_8 
       (.I0(\m_axis_tuser[0]_i_25_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[0]_i_26_n_0 ),
        .I3(\m_axis_tuser[0]_i_27_n_0 ),
        .I4(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[0]_i_13_n_4 ),
        .O(\m_axis_tuser[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0469804880120433)) 
    \m_axis_tuser[0]_i_80 
       (.I0(\m_axis_tuser_reg[0]_i_31_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser_reg[0]_i_64_n_4 ),
        .I3(\m_axis_tuser[0]_i_110_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser[0]_i_109_n_0 ),
        .O(\m_axis_tuser[0]_i_80_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[0]_i_81 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_29_n_0 ),
        .I2(\m_axis_tuser[0]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_31_n_4 ),
        .O(\m_axis_tuser[0]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[0]_i_82 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_29_n_0 ),
        .I2(\m_axis_tuser[0]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_31_n_4 ),
        .I4(\m_axis_tuser[0]_i_111_n_0 ),
        .I5(\m_axis_tuser[0]_i_108_n_0 ),
        .O(\m_axis_tuser[0]_i_82_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[0]_i_83 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_29_n_0 ),
        .I2(\m_axis_tuser[0]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_31_n_4 ),
        .I4(\m_axis_tuser[0]_i_108_n_0 ),
        .O(\m_axis_tuser[0]_i_83_n_0 ));
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[0]_i_84 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_28_n_0 ),
        .I2(\m_axis_tuser[0]_i_81_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_32_n_4 ),
        .I4(\m_axis_tuser[0]_i_83_n_0 ),
        .O(\m_axis_tuser[0]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[0]_i_85 
       (.I0(\m_axis_tuser[0]_i_110_n_0 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser_reg[0]_i_64_n_4 ),
        .I3(\m_axis_tuser[0]_i_109_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser_reg[0]_i_31_n_4 ),
        .O(\m_axis_tuser[0]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hB77B7BB748848448)) 
    \m_axis_tuser[0]_i_86 
       (.I0(\m_axis_tuser_reg[0]_i_31_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser_reg[0]_i_64_n_4 ),
        .I3(\m_axis_tuser_reg[0]_i_97_n_4 ),
        .I4(\m_axis_tuser[0]_i_114_n_0 ),
        .I5(phase0[0]),
        .O(\m_axis_tuser[0]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[0]_i_87 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_28_n_0 ),
        .I2(\m_axis_tuser[0]_i_81_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_32_n_4 ),
        .I4(\m_axis_tuser[0]_i_82_n_0 ),
        .I5(\m_axis_tuser[0]_i_83_n_0 ),
        .O(\m_axis_tuser[0]_i_87_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[0]_i_88 
       (.I0(\m_axis_tuser[0]_i_26_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[0]_i_27_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .O(\GEN_SLOT[0].v [3]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h6C39)) 
    \m_axis_tuser[0]_i_89 
       (.I0(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .I1(\m_axis_tuser[0]_i_27_n_0 ),
        .I2(\m_axis_tuser[0]_i_26_n_0 ),
        .I3(DECIM_M[3]),
        .O(\m_axis_tuser[0]_i_89_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[0]_i_9 
       (.I0(\m_axis_tuser[0]_i_25_n_0 ),
        .I1(\m_axis_tuser[0]_i_26_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[0]_i_27_n_0 ),
        .I4(\m_axis_tuser_reg[0]_i_12_n_4 ),
        .O(\m_axis_tuser[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h16C3803CBFFFD6FF)) 
    \m_axis_tuser[0]_i_90 
       (.I0(\m_axis_tuser[0]_i_110_n_0 ),
        .I1(\m_axis_tuser_reg[0]_i_64_n_4 ),
        .I2(\m_axis_tuser_reg[0]_i_31_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(\m_axis_tuser[0]_i_109_n_0 ),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[0]_i_90_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[0]_i_91 
       (.I0(\m_axis_tuser[0]_i_110_n_0 ),
        .I1(\m_axis_tuser_reg[0]_i_64_n_4 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(\m_axis_tuser[0]_i_109_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[0]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[0]_i_92 
       (.I0(\m_axis_tuser[0]_i_115_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[0]_i_116_n_0 ),
        .I3(\m_axis_tuser[0]_i_117_n_0 ),
        .I4(\m_axis_tuser_reg[0]_i_97_n_4 ),
        .I5(\m_axis_tuser_reg[0]_i_64_n_4 ),
        .O(\m_axis_tuser[0]_i_92_n_0 ));
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[0]_i_93 
       (.I0(\m_axis_tuser[0]_i_115_n_0 ),
        .I1(\m_axis_tuser[0]_i_116_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[0]_i_117_n_0 ),
        .I4(\m_axis_tuser_reg[0]_i_97_n_4 ),
        .O(\m_axis_tuser[0]_i_93_n_0 ));
  LUT6 #(
    .INIT(64'h2BD4D42BFFFF0000)) 
    \m_axis_tuser[0]_i_94 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[0]_i_116_n_0 ),
        .I2(\m_axis_tuser[0]_i_117_n_0 ),
        .I3(DECIM_M[3]),
        .I4(\m_axis_tuser[0]_i_118_n_0 ),
        .I5(\m_axis_tuser_reg[0]_i_97_n_4 ),
        .O(\m_axis_tuser[0]_i_94_n_0 ));
  LUT5 #(
    .INIT(32'hF7755110)) 
    \m_axis_tuser[0]_i_95 
       (.I0(DECIM_M[3]),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[0]_i_116_n_0 ),
        .I3(\m_axis_tuser[0]_i_117_n_0 ),
        .I4(\m_axis_tuser[0]_i_118_n_0 ),
        .O(\m_axis_tuser[0]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'h78B47878B4B478B4)) 
    \m_axis_tuser[0]_i_96 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_114_n_0 ),
        .I2(phase0[4]),
        .I3(\phase0[0]_i_70_n_0 ),
        .I4(DECIM_M[3]),
        .I5(phase0[3]),
        .O(\m_axis_tuser[0]_i_96_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF2B00)) 
    \m_axis_tuser[0]_i_98 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_95_n_0 ),
        .I2(\m_axis_tuser[0]_i_96_n_0 ),
        .I3(\m_axis_tuser_reg[0]_i_97_n_4 ),
        .I4(\m_axis_tuser[0]_i_119_n_0 ),
        .O(\m_axis_tuser[0]_i_98_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[0]_i_99 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[0]_i_63_n_0 ),
        .I2(\m_axis_tuser[0]_i_107_n_0 ),
        .O(\m_axis_tuser[0]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h4884CC00844800CC)) 
    \m_axis_tuser[1]_i_1 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_2_n_0 ),
        .I2(\m_axis_tuser[1]_i_3_n_0 ),
        .I3(\m_axis_tuser[1]_i_4_n_0 ),
        .I4(\GEN_SLOT[1].v1 ),
        .I5(DECIM_PHASE[4]),
        .O(mask_comb[1]));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[1]_i_10 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[1]_i_26_n_0 ),
        .I2(\m_axis_tuser[1]_i_27_n_0 ),
        .O(\m_axis_tuser[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[1]_i_100 
       (.I0(\m_axis_tuser[1]_i_116_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[1]_i_117_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_97_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[1]_i_94_n_0 ),
        .O(\m_axis_tuser[1]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h4531105751130475)) 
    \m_axis_tuser[1]_i_101 
       (.I0(DECIM_M[1]),
        .I1(phase0[0]),
        .I2(\m_axis_tuser[1]_i_114_n_0 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(phase0[1]),
        .I5(\m_axis_tuser_reg[1]_i_97_n_4 ),
        .O(\m_axis_tuser[1]_i_101_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[1]_i_102 
       (.I0(\m_axis_tuser[1]_i_106_n_0 ),
        .O(\m_axis_tuser[1]_i_102_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[1]_i_103 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_107_n_0 ),
        .I2(\m_axis_tuser[1]_i_63_n_0 ),
        .O(\m_axis_tuser[1]_i_103_n_0 ));
  LUT6 #(
    .INIT(64'h0909909099000099)) 
    \m_axis_tuser[1]_i_104 
       (.I0(\m_axis_tuser[1]_i_94_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[1]_i_116_n_0 ),
        .I3(DECIM_M[2]),
        .I4(\m_axis_tuser[1]_i_117_n_0 ),
        .I5(\m_axis_tuser_reg[1]_i_97_n_4 ),
        .O(\m_axis_tuser[1]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h162920401C2C8010)) 
    \m_axis_tuser[1]_i_105 
       (.I0(\m_axis_tuser_reg[1]_i_97_n_4 ),
        .I1(phase0[1]),
        .I2(\m_axis_tuser[5]_i_53_n_0 ),
        .I3(\m_axis_tuser[1]_i_114_n_0 ),
        .I4(phase0[0]),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[1]_i_105_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[1]_i_106 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_95_n_0 ),
        .I2(\m_axis_tuser[1]_i_96_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_97_n_4 ),
        .I4(\m_axis_tuser[1]_i_121_n_0 ),
        .I5(\m_axis_tuser[1]_i_129_n_0 ),
        .O(\m_axis_tuser[1]_i_106_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[1]_i_107 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_95_n_0 ),
        .I2(\m_axis_tuser[1]_i_96_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_97_n_4 ),
        .I4(\m_axis_tuser[1]_i_129_n_0 ),
        .O(\m_axis_tuser[1]_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[1]_i_108 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_62_n_0 ),
        .I2(\m_axis_tuser[1]_i_63_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_64_n_4 ),
        .I4(\m_axis_tuser[1]_i_107_n_0 ),
        .O(\m_axis_tuser[1]_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h86B5794A19D5E62A)) 
    \m_axis_tuser[1]_i_109 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[1]_i_114_n_0 ),
        .I2(\m_axis_tuser[5]_i_53_n_0 ),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .I5(\m_axis_tuser_reg[1]_i_97_n_4 ),
        .O(\m_axis_tuser[1]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hC33C66995AA5FF00)) 
    \m_axis_tuser[1]_i_11 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_28_n_0 ),
        .I2(\m_axis_tuser[1]_i_29_n_0 ),
        .I3(\m_axis_tuser[1]_i_30_n_0 ),
        .I4(\m_axis_tuser_reg[1]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[1]_i_32_n_4 ),
        .O(\m_axis_tuser[1]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h48B7)) 
    \m_axis_tuser[1]_i_110 
       (.I0(\m_axis_tuser_reg[1]_i_97_n_4 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser[1]_i_114_n_0 ),
        .I3(phase0[0]),
        .O(\m_axis_tuser[1]_i_110_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[1]_i_111 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_62_n_0 ),
        .I2(\m_axis_tuser[1]_i_63_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_64_n_4 ),
        .I4(\m_axis_tuser[1]_i_106_n_0 ),
        .I5(\m_axis_tuser[1]_i_107_n_0 ),
        .O(\m_axis_tuser[1]_i_111_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[1]_i_112 
       (.I0(\m_axis_tuser[1]_i_60_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[1]_i_61_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_31_n_4 ),
        .O(\m_axis_tuser[1]_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h6C39)) 
    \m_axis_tuser[1]_i_113 
       (.I0(\m_axis_tuser_reg[1]_i_31_n_4 ),
        .I1(\m_axis_tuser[1]_i_61_n_0 ),
        .I2(\m_axis_tuser[1]_i_60_n_0 ),
        .I3(DECIM_M[3]),
        .O(\m_axis_tuser[1]_i_113_n_0 ));
  LUT6 #(
    .INIT(64'hFF5DDF45DF455D04)) 
    \m_axis_tuser[1]_i_114 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_130_n_0 ),
        .I2(DECIM_M[3]),
        .I3(phase0[4]),
        .I4(phase0[3]),
        .I5(\m_axis_tuser[1]_i_131_n_0 ),
        .O(\m_axis_tuser[1]_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h0169FDFF68966BFF)) 
    \m_axis_tuser[1]_i_115 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[1]_i_114_n_0 ),
        .I2(\m_axis_tuser_reg[1]_i_97_n_4 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(DECIM_M[1]),
        .I5(phase0[1]),
        .O(\m_axis_tuser[1]_i_115_n_0 ));
  LUT5 #(
    .INIT(32'h19DF86BF)) 
    \m_axis_tuser[1]_i_116 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[1]_i_114_n_0 ),
        .I2(\m_axis_tuser[5]_i_53_n_0 ),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .O(\m_axis_tuser[1]_i_116_n_0 ));
  LUT6 #(
    .INIT(64'h2EE2E22EE22E2EE2)) 
    \m_axis_tuser[1]_i_117 
       (.I0(\m_axis_tuser[5]_i_133_n_0 ),
        .I1(\m_axis_tuser[1]_i_114_n_0 ),
        .I2(\m_axis_tuser[5]_i_134_n_0 ),
        .I3(phase0[2]),
        .I4(DECIM_M[2]),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[1]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'hE2EE2E222E22E2EE)) 
    \m_axis_tuser[1]_i_118 
       (.I0(\GEN_SLOT[1].val [3]),
        .I1(\m_axis_tuser[1]_i_114_n_0 ),
        .I2(DECIM_M[2]),
        .I3(phase0[2]),
        .I4(\m_axis_tuser[3]_i_121_n_0 ),
        .I5(\m_axis_tuser[1]_i_133_n_0 ),
        .O(\m_axis_tuser[1]_i_118_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \m_axis_tuser[1]_i_119 
       (.I0(phase0[2]),
        .I1(phase0[0]),
        .I2(phase0[1]),
        .I3(phase0[3]),
        .I4(phase0[4]),
        .O(\GEN_SLOT[1].val [4]));
  LUT6 #(
    .INIT(64'h990909009F999909)) 
    \m_axis_tuser[1]_i_120 
       (.I0(phase0[3]),
        .I1(DECIM_M[3]),
        .I2(DECIM_M[1]),
        .I3(\m_axis_tuser[5]_i_134_n_0 ),
        .I4(phase0[2]),
        .I5(DECIM_M[2]),
        .O(\m_axis_tuser[1]_i_120_n_0 ));
  LUT6 #(
    .INIT(64'h2B2B022B00000000)) 
    \m_axis_tuser[1]_i_121 
       (.I0(DECIM_M[4]),
        .I1(phase0[4]),
        .I2(\m_axis_tuser[1]_i_120_n_0 ),
        .I3(phase0[3]),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[1]_i_114_n_0 ),
        .O(\m_axis_tuser[1]_i_121_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[1]_i_122 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_96_n_0 ),
        .I2(\m_axis_tuser[1]_i_129_n_0 ),
        .O(\m_axis_tuser[1]_i_122_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[1]_i_123 
       (.I0(\m_axis_tuser[1]_i_117_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[1]_i_118_n_0 ),
        .O(\m_axis_tuser[1]_i_123_n_0 ));
  LUT5 #(
    .INIT(32'h40571531)) 
    \m_axis_tuser[1]_i_124 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser[1]_i_114_n_0 ),
        .I3(phase0[0]),
        .I4(phase0[1]),
        .O(\m_axis_tuser[1]_i_124_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[1]_i_125 
       (.I0(\m_axis_tuser[1]_i_121_n_0 ),
        .O(\m_axis_tuser[1]_i_125_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[1]_i_126 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_129_n_0 ),
        .I2(\m_axis_tuser[1]_i_96_n_0 ),
        .O(\m_axis_tuser[1]_i_126_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[1]_i_127 
       (.I0(\m_axis_tuser[1]_i_118_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[1]_i_117_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[1]_i_127_n_0 ));
  LUT5 #(
    .INIT(32'h42844188)) 
    \m_axis_tuser[1]_i_128 
       (.I0(phase0[1]),
        .I1(phase0[0]),
        .I2(\m_axis_tuser[1]_i_114_n_0 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[1]_i_128_n_0 ));
  LUT6 #(
    .INIT(64'h5C0C0CAC00A0A0F0)) 
    \m_axis_tuser[1]_i_129 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_134_n_0 ),
        .I2(\m_axis_tuser[1]_i_114_n_0 ),
        .I3(\m_axis_tuser[6]_i_138_n_0 ),
        .I4(\m_axis_tuser[1]_i_120_n_0 ),
        .I5(phase0[4]),
        .O(\m_axis_tuser[1]_i_129_n_0 ));
  LUT6 #(
    .INIT(64'h35503F553D547FD5)) 
    \m_axis_tuser[1]_i_130 
       (.I0(DECIM_M[2]),
        .I1(phase0[0]),
        .I2(phase0[1]),
        .I3(phase0[2]),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser[5]_i_53_n_0 ),
        .O(\m_axis_tuser[1]_i_130_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axis_tuser[1]_i_131 
       (.I0(phase0[2]),
        .I1(phase0[0]),
        .I2(phase0[1]),
        .O(\m_axis_tuser[1]_i_131_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \m_axis_tuser[1]_i_132 
       (.I0(phase0[1]),
        .I1(phase0[0]),
        .I2(phase0[2]),
        .I3(phase0[3]),
        .O(\GEN_SLOT[1].val [3]));
  LUT6 #(
    .INIT(64'hF4FF00400040F4FF)) 
    \m_axis_tuser[1]_i_133 
       (.I0(\m_axis_tuser[5]_i_53_n_0 ),
        .I1(phase0[0]),
        .I2(phase0[1]),
        .I3(DECIM_M[1]),
        .I4(phase0[2]),
        .I5(DECIM_M[2]),
        .O(\m_axis_tuser[1]_i_133_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_axis_tuser[1]_i_134 
       (.I0(phase0[3]),
        .I1(phase0[1]),
        .I2(phase0[0]),
        .I3(phase0[2]),
        .O(\m_axis_tuser[1]_i_134_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[1]_i_14 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_9_n_0 ),
        .I2(\GEN_SLOT[1].v [4]),
        .I3(\m_axis_tuser_reg[1]_i_13_n_4 ),
        .I4(\GEN_SLOT[1].v__0 ),
        .I5(\GEN_SLOT[1].v [5]),
        .O(\m_axis_tuser[1]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hD5FF7F55D4FF2B00)) 
    \m_axis_tuser[1]_i_15 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_9_n_0 ),
        .I2(\GEN_SLOT[1].v [4]),
        .I3(\m_axis_tuser_reg[1]_i_13_n_4 ),
        .I4(\GEN_SLOT[1].v [5]),
        .I5(\m_axis_tuser[1]_i_4_n_0 ),
        .O(\m_axis_tuser[1]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[1]_i_16 
       (.I0(\m_axis_tuser[1]_i_24_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[1]_i_8_n_0 ),
        .O(\m_axis_tuser[1]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[1]_i_17 
       (.I0(DECIM_M[1]),
        .I1(\GEN_SLOT[1].v [1]),
        .I2(\m_axis_tuser_reg[1]_i_13_n_4 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(\GEN_SLOT[1].v [0]),
        .O(\m_axis_tuser[1]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF2B00D4FF)) 
    \m_axis_tuser[1]_i_18 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_9_n_0 ),
        .I2(\GEN_SLOT[1].v [4]),
        .I3(\m_axis_tuser_reg[1]_i_13_n_4 ),
        .I4(\GEN_SLOT[1].v__0 ),
        .I5(\GEN_SLOT[1].v [5]),
        .O(\m_axis_tuser[1]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2A0080AA01005455)) 
    \m_axis_tuser[1]_i_19 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_9_n_0 ),
        .I2(\GEN_SLOT[1].v [4]),
        .I3(\m_axis_tuser_reg[1]_i_13_n_4 ),
        .I4(\GEN_SLOT[1].v [5]),
        .I5(\m_axis_tuser[1]_i_4_n_0 ),
        .O(\m_axis_tuser[1]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2882AA00822800AA)) 
    \m_axis_tuser[1]_i_2 
       (.I0(\m_axis_tuser[1]_i_6_n_0 ),
        .I1(\m_axis_tuser[1]_i_7_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[1]_i_8_n_0 ),
        .I4(\GEN_SLOT[1].v1 ),
        .I5(DECIM_PHASE[3]),
        .O(\m_axis_tuser[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[1]_i_20 
       (.I0(\m_axis_tuser[1]_i_8_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[1]_i_24_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[1]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[1]_i_21 
       (.I0(\m_axis_tuser_reg[1]_i_13_n_4 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\GEN_SLOT[1].v [0]),
        .I3(DECIM_M[1]),
        .I4(\GEN_SLOT[1].v [1]),
        .O(\m_axis_tuser[1]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0999900090000999)) 
    \m_axis_tuser[1]_i_22 
       (.I0(cond_mod0_return),
        .I1(DECIM_PHASE[1]),
        .I2(\GEN_SLOT[1].v1 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(\m_axis_tuser[1]_i_55_n_0 ),
        .I5(DECIM_PHASE[0]),
        .O(\m_axis_tuser[1]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[1]_i_23 
       (.I0(\GEN_SLOT[1].v [0]),
        .I1(\m_axis_tuser_reg[1]_i_13_n_4 ),
        .I2(\m_axis_tuser[5]_i_53_n_0 ),
        .I3(\GEN_SLOT[1].v [1]),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[1]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[1]_i_24 
       (.I0(\m_axis_tuser[1]_i_56_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[1]_i_57_n_0 ),
        .I3(\m_axis_tuser[1]_i_58_n_0 ),
        .I4(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[1]_i_13_n_4 ),
        .O(\m_axis_tuser[1]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[1]_i_25 
       (.I0(\m_axis_tuser[1]_i_56_n_0 ),
        .I1(\m_axis_tuser[1]_i_57_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[1]_i_58_n_0 ),
        .I4(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .O(\m_axis_tuser[1]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[1]_i_26 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[1]_i_57_n_0 ),
        .I2(\m_axis_tuser[1]_i_58_n_0 ),
        .O(\m_axis_tuser[1]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[1]_i_27 
       (.I0(\m_axis_tuser[1]_i_59_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[1]_i_60_n_0 ),
        .I3(\m_axis_tuser[1]_i_61_n_0 ),
        .I4(\m_axis_tuser_reg[1]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[1]_i_32_n_4 ),
        .O(\m_axis_tuser[1]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[1]_i_28 
       (.I0(\m_axis_tuser[1]_i_59_n_0 ),
        .I1(\m_axis_tuser[1]_i_60_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[1]_i_61_n_0 ),
        .I4(\m_axis_tuser_reg[1]_i_31_n_4 ),
        .O(\m_axis_tuser[1]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[1]_i_29 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[1]_i_60_n_0 ),
        .I2(\m_axis_tuser[1]_i_61_n_0 ),
        .O(\m_axis_tuser[1]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[1]_i_3 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[1]_i_7_n_0 ),
        .I2(\m_axis_tuser[1]_i_8_n_0 ),
        .O(\m_axis_tuser[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[1]_i_30 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_62_n_0 ),
        .I2(\m_axis_tuser[1]_i_63_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_64_n_4 ),
        .O(\m_axis_tuser[1]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[1]_i_33 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_28_n_0 ),
        .I2(\m_axis_tuser[1]_i_81_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_32_n_4 ),
        .I4(\m_axis_tuser[1]_i_82_n_0 ),
        .I5(\m_axis_tuser[1]_i_83_n_0 ),
        .O(\m_axis_tuser[1]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[1]_i_34 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_11_n_0 ),
        .I2(\m_axis_tuser[1]_i_84_n_0 ),
        .O(\m_axis_tuser[1]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[1]_i_35 
       (.I0(\m_axis_tuser[1]_i_58_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[1]_i_27_n_0 ),
        .O(\m_axis_tuser[1]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[1]_i_36 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[1]_i_85_n_0 ),
        .I2(\m_axis_tuser_reg[1]_i_32_n_4 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(\m_axis_tuser[1]_i_86_n_0 ),
        .O(\m_axis_tuser[1]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[1]_i_37 
       (.I0(\m_axis_tuser[1]_i_87_n_0 ),
        .O(\m_axis_tuser[1]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[1]_i_38 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_84_n_0 ),
        .I2(\m_axis_tuser[1]_i_11_n_0 ),
        .O(\m_axis_tuser[1]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[1]_i_39 
       (.I0(\m_axis_tuser[1]_i_27_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[1]_i_58_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[1]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hC33C66995AA5FF00)) 
    \m_axis_tuser[1]_i_4 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_9_n_0 ),
        .I2(\m_axis_tuser[1]_i_10_n_0 ),
        .I3(\m_axis_tuser[1]_i_11_n_0 ),
        .I4(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[1]_i_13_n_4 ),
        .O(\m_axis_tuser[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[1]_i_40 
       (.I0(\m_axis_tuser_reg[1]_i_32_n_4 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser[1]_i_86_n_0 ),
        .I3(DECIM_M[1]),
        .I4(\m_axis_tuser[1]_i_85_n_0 ),
        .O(\m_axis_tuser[1]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[1]_i_41 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_10_n_0 ),
        .I2(\m_axis_tuser[1]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .I4(\m_axis_tuser[1]_i_87_n_0 ),
        .I5(\m_axis_tuser[1]_i_84_n_0 ),
        .O(\m_axis_tuser[1]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[1]_i_42 
       (.I0(DECIM_M[4]),
        .I1(\GEN_SLOT[1].v [4]),
        .I2(\GEN_SLOT[1].v [5]),
        .O(\m_axis_tuser[1]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[1]_i_43 
       (.I0(\m_axis_tuser[1]_i_57_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[1]_i_58_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\GEN_SLOT[1].v [3]),
        .O(\m_axis_tuser[1]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0D45541C455D1C04)) 
    \m_axis_tuser[1]_i_44 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[1]_i_86_n_0 ),
        .I2(\m_axis_tuser[5]_i_53_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_32_n_4 ),
        .I4(\m_axis_tuser[1]_i_85_n_0 ),
        .I5(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .O(\m_axis_tuser[1]_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[1]_i_45 
       (.I0(\GEN_SLOT[1].v__0 ),
        .O(\m_axis_tuser[1]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[1]_i_46 
       (.I0(DECIM_M[4]),
        .I1(\GEN_SLOT[1].v [5]),
        .I2(\GEN_SLOT[1].v [4]),
        .O(\m_axis_tuser[1]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h5AC30000)) 
    \m_axis_tuser[1]_i_47 
       (.I0(\m_axis_tuser[1]_i_57_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[1]_i_58_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .I4(\m_axis_tuser[1]_i_89_n_0 ),
        .O(\m_axis_tuser[1]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h9000090009999099)) 
    \m_axis_tuser[1]_i_48 
       (.I0(\GEN_SLOT[1].v [1]),
        .I1(DECIM_M[1]),
        .I2(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(\m_axis_tuser_reg[1]_i_32_n_4 ),
        .I5(\m_axis_tuser[1]_i_86_n_0 ),
        .O(\m_axis_tuser[1]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[1]_i_49 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_10_n_0 ),
        .I2(\m_axis_tuser[1]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .O(\GEN_SLOT[1].v [4]));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[1]_i_50 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_10_n_0 ),
        .I2(\m_axis_tuser[1]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .I4(\m_axis_tuser[1]_i_87_n_0 ),
        .I5(\m_axis_tuser[1]_i_84_n_0 ),
        .O(\GEN_SLOT[1].v__0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[1]_i_51 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_10_n_0 ),
        .I2(\m_axis_tuser[1]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .I4(\m_axis_tuser[1]_i_84_n_0 ),
        .O(\GEN_SLOT[1].v [5]));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[1]_i_52 
       (.I0(\m_axis_tuser[1]_i_86_n_0 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[1]_i_32_n_4 ),
        .I3(\m_axis_tuser[1]_i_85_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .O(\GEN_SLOT[1].v [1]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'hB748)) 
    \m_axis_tuser[1]_i_53 
       (.I0(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[1]_i_32_n_4 ),
        .I3(\m_axis_tuser[1]_i_86_n_0 ),
        .O(\GEN_SLOT[1].v [0]));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[1]_i_54 
       (.I0(\GEN_SLOT[1].v [0]),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[1]_i_13_n_4 ),
        .I3(\GEN_SLOT[1].v [1]),
        .I4(DECIM_M[1]),
        .I5(\GEN_SLOT[1].v1 ),
        .O(cond_mod0_return));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h7BB78448)) 
    \m_axis_tuser[1]_i_55 
       (.I0(\m_axis_tuser_reg[1]_i_13_n_4 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .I3(\m_axis_tuser_reg[1]_i_32_n_4 ),
        .I4(\m_axis_tuser[1]_i_86_n_0 ),
        .O(\m_axis_tuser[1]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h16C3803CBFFFD6FF)) 
    \m_axis_tuser[1]_i_56 
       (.I0(\m_axis_tuser[1]_i_86_n_0 ),
        .I1(\m_axis_tuser_reg[1]_i_32_n_4 ),
        .I2(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(\m_axis_tuser[1]_i_85_n_0 ),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[1]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[1]_i_57 
       (.I0(\m_axis_tuser[1]_i_86_n_0 ),
        .I1(\m_axis_tuser_reg[1]_i_32_n_4 ),
        .I2(\m_axis_tuser[5]_i_53_n_0 ),
        .I3(\m_axis_tuser[1]_i_85_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[1]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[1]_i_58 
       (.I0(\m_axis_tuser[1]_i_90_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[1]_i_91_n_0 ),
        .I3(\m_axis_tuser[1]_i_92_n_0 ),
        .I4(\m_axis_tuser_reg[1]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[1]_i_32_n_4 ),
        .O(\m_axis_tuser[1]_i_58_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[1]_i_59 
       (.I0(\m_axis_tuser[1]_i_90_n_0 ),
        .I1(\m_axis_tuser[1]_i_91_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[1]_i_92_n_0 ),
        .I4(\m_axis_tuser_reg[1]_i_31_n_4 ),
        .O(\m_axis_tuser[1]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h2882AA00822800AA)) 
    \m_axis_tuser[1]_i_6 
       (.I0(\m_axis_tuser[1]_i_22_n_0 ),
        .I1(\m_axis_tuser[1]_i_23_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[1]_i_24_n_0 ),
        .I4(\GEN_SLOT[1].v1 ),
        .I5(DECIM_PHASE[2]),
        .O(\m_axis_tuser[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[1]_i_60 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[1]_i_91_n_0 ),
        .I2(\m_axis_tuser[1]_i_92_n_0 ),
        .O(\m_axis_tuser[1]_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[1]_i_61 
       (.I0(\m_axis_tuser[1]_i_93_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[1]_i_94_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_64_n_4 ),
        .O(\m_axis_tuser[1]_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[1]_i_62 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[1]_i_93_n_0 ),
        .I2(\m_axis_tuser[1]_i_94_n_0 ),
        .O(\m_axis_tuser[1]_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[1]_i_63 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_95_n_0 ),
        .I2(\m_axis_tuser[1]_i_96_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_97_n_4 ),
        .O(\m_axis_tuser[1]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[1]_i_65 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_62_n_0 ),
        .I2(\m_axis_tuser[1]_i_63_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_64_n_4 ),
        .I4(\m_axis_tuser[1]_i_106_n_0 ),
        .I5(\m_axis_tuser[1]_i_107_n_0 ),
        .O(\m_axis_tuser[1]_i_65_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[1]_i_66 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_30_n_0 ),
        .I2(\m_axis_tuser[1]_i_108_n_0 ),
        .O(\m_axis_tuser[1]_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[1]_i_67 
       (.I0(\m_axis_tuser[1]_i_92_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[1]_i_61_n_0 ),
        .O(\m_axis_tuser[1]_i_67_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[1]_i_68 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[1]_i_109_n_0 ),
        .I2(\m_axis_tuser_reg[1]_i_64_n_4 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(\m_axis_tuser[1]_i_110_n_0 ),
        .O(\m_axis_tuser[1]_i_68_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[1]_i_69 
       (.I0(\m_axis_tuser[1]_i_111_n_0 ),
        .O(\m_axis_tuser[1]_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[1]_i_7 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[1]_i_23_n_0 ),
        .I2(\m_axis_tuser[1]_i_24_n_0 ),
        .O(\m_axis_tuser[1]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[1]_i_70 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_108_n_0 ),
        .I2(\m_axis_tuser[1]_i_30_n_0 ),
        .O(\m_axis_tuser[1]_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[1]_i_71 
       (.I0(\m_axis_tuser[1]_i_61_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[1]_i_92_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[1]_i_71_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[1]_i_72 
       (.I0(\m_axis_tuser_reg[1]_i_64_n_4 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser[1]_i_110_n_0 ),
        .I3(DECIM_M[1]),
        .I4(\m_axis_tuser[1]_i_109_n_0 ),
        .O(\m_axis_tuser[1]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[1]_i_73 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_29_n_0 ),
        .I2(\m_axis_tuser[1]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_31_n_4 ),
        .I4(\m_axis_tuser[1]_i_111_n_0 ),
        .I5(\m_axis_tuser[1]_i_108_n_0 ),
        .O(\m_axis_tuser[1]_i_73_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[1]_i_74 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_81_n_0 ),
        .I2(\m_axis_tuser[1]_i_83_n_0 ),
        .O(\m_axis_tuser[1]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[1]_i_75 
       (.I0(\m_axis_tuser[1]_i_91_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[1]_i_92_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_31_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[1]_i_112_n_0 ),
        .O(\m_axis_tuser[1]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h0D45541C455D1C04)) 
    \m_axis_tuser[1]_i_76 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[1]_i_110_n_0 ),
        .I2(\m_axis_tuser[5]_i_53_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_64_n_4 ),
        .I4(\m_axis_tuser[1]_i_109_n_0 ),
        .I5(\m_axis_tuser_reg[1]_i_31_n_4 ),
        .O(\m_axis_tuser[1]_i_76_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[1]_i_77 
       (.I0(\m_axis_tuser[1]_i_82_n_0 ),
        .O(\m_axis_tuser[1]_i_77_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[1]_i_78 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_83_n_0 ),
        .I2(\m_axis_tuser[1]_i_81_n_0 ),
        .O(\m_axis_tuser[1]_i_78_n_0 ));
  LUT5 #(
    .INIT(32'h5AC30000)) 
    \m_axis_tuser[1]_i_79 
       (.I0(\m_axis_tuser[1]_i_91_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[1]_i_92_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_31_n_4 ),
        .I4(\m_axis_tuser[1]_i_113_n_0 ),
        .O(\m_axis_tuser[1]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[1]_i_8 
       (.I0(\m_axis_tuser[1]_i_25_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[1]_i_26_n_0 ),
        .I3(\m_axis_tuser[1]_i_27_n_0 ),
        .I4(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[1]_i_13_n_4 ),
        .O(\m_axis_tuser[1]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0469804880120433)) 
    \m_axis_tuser[1]_i_80 
       (.I0(\m_axis_tuser_reg[1]_i_31_n_4 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[1]_i_64_n_4 ),
        .I3(\m_axis_tuser[1]_i_110_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser[1]_i_109_n_0 ),
        .O(\m_axis_tuser[1]_i_80_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[1]_i_81 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_29_n_0 ),
        .I2(\m_axis_tuser[1]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_31_n_4 ),
        .O(\m_axis_tuser[1]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[1]_i_82 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_29_n_0 ),
        .I2(\m_axis_tuser[1]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_31_n_4 ),
        .I4(\m_axis_tuser[1]_i_111_n_0 ),
        .I5(\m_axis_tuser[1]_i_108_n_0 ),
        .O(\m_axis_tuser[1]_i_82_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[1]_i_83 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_29_n_0 ),
        .I2(\m_axis_tuser[1]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_31_n_4 ),
        .I4(\m_axis_tuser[1]_i_108_n_0 ),
        .O(\m_axis_tuser[1]_i_83_n_0 ));
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[1]_i_84 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_28_n_0 ),
        .I2(\m_axis_tuser[1]_i_81_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_32_n_4 ),
        .I4(\m_axis_tuser[1]_i_83_n_0 ),
        .O(\m_axis_tuser[1]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[1]_i_85 
       (.I0(\m_axis_tuser[1]_i_110_n_0 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[1]_i_64_n_4 ),
        .I3(\m_axis_tuser[1]_i_109_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser_reg[1]_i_31_n_4 ),
        .O(\m_axis_tuser[1]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h48848448B77B7BB7)) 
    \m_axis_tuser[1]_i_86 
       (.I0(\m_axis_tuser_reg[1]_i_31_n_4 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[1]_i_64_n_4 ),
        .I3(\m_axis_tuser_reg[1]_i_97_n_4 ),
        .I4(\m_axis_tuser[1]_i_114_n_0 ),
        .I5(phase0[0]),
        .O(\m_axis_tuser[1]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[1]_i_87 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_28_n_0 ),
        .I2(\m_axis_tuser[1]_i_81_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_32_n_4 ),
        .I4(\m_axis_tuser[1]_i_82_n_0 ),
        .I5(\m_axis_tuser[1]_i_83_n_0 ),
        .O(\m_axis_tuser[1]_i_87_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[1]_i_88 
       (.I0(\m_axis_tuser[1]_i_26_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[1]_i_27_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .O(\GEN_SLOT[1].v [3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h6C39)) 
    \m_axis_tuser[1]_i_89 
       (.I0(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .I1(\m_axis_tuser[1]_i_27_n_0 ),
        .I2(\m_axis_tuser[1]_i_26_n_0 ),
        .I3(DECIM_M[3]),
        .O(\m_axis_tuser[1]_i_89_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[1]_i_9 
       (.I0(\m_axis_tuser[1]_i_25_n_0 ),
        .I1(\m_axis_tuser[1]_i_26_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[1]_i_27_n_0 ),
        .I4(\m_axis_tuser_reg[1]_i_12_n_4 ),
        .O(\m_axis_tuser[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h16C3803CBFFFD6FF)) 
    \m_axis_tuser[1]_i_90 
       (.I0(\m_axis_tuser[1]_i_110_n_0 ),
        .I1(\m_axis_tuser_reg[1]_i_64_n_4 ),
        .I2(\m_axis_tuser_reg[1]_i_31_n_4 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(\m_axis_tuser[1]_i_109_n_0 ),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[1]_i_90_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[1]_i_91 
       (.I0(\m_axis_tuser[1]_i_110_n_0 ),
        .I1(\m_axis_tuser_reg[1]_i_64_n_4 ),
        .I2(\m_axis_tuser[5]_i_53_n_0 ),
        .I3(\m_axis_tuser[1]_i_109_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[1]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[1]_i_92 
       (.I0(\m_axis_tuser[1]_i_115_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[1]_i_116_n_0 ),
        .I3(\m_axis_tuser[1]_i_117_n_0 ),
        .I4(\m_axis_tuser_reg[1]_i_97_n_4 ),
        .I5(\m_axis_tuser_reg[1]_i_64_n_4 ),
        .O(\m_axis_tuser[1]_i_92_n_0 ));
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[1]_i_93 
       (.I0(\m_axis_tuser[1]_i_115_n_0 ),
        .I1(\m_axis_tuser[1]_i_116_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[1]_i_117_n_0 ),
        .I4(\m_axis_tuser_reg[1]_i_97_n_4 ),
        .O(\m_axis_tuser[1]_i_93_n_0 ));
  LUT6 #(
    .INIT(64'h2BD4D42BFFFF0000)) 
    \m_axis_tuser[1]_i_94 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[1]_i_116_n_0 ),
        .I2(\m_axis_tuser[1]_i_117_n_0 ),
        .I3(DECIM_M[3]),
        .I4(\m_axis_tuser[1]_i_118_n_0 ),
        .I5(\m_axis_tuser_reg[1]_i_97_n_4 ),
        .O(\m_axis_tuser[1]_i_94_n_0 ));
  LUT5 #(
    .INIT(32'hF7755110)) 
    \m_axis_tuser[1]_i_95 
       (.I0(DECIM_M[3]),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[1]_i_116_n_0 ),
        .I3(\m_axis_tuser[1]_i_117_n_0 ),
        .I4(\m_axis_tuser[1]_i_118_n_0 ),
        .O(\m_axis_tuser[1]_i_95_n_0 ));
  LUT4 #(
    .INIT(16'h2EE2)) 
    \m_axis_tuser[1]_i_96 
       (.I0(\GEN_SLOT[1].val [4]),
        .I1(\m_axis_tuser[1]_i_114_n_0 ),
        .I2(\m_axis_tuser[6]_i_121_n_0 ),
        .I3(\m_axis_tuser[1]_i_120_n_0 ),
        .O(\m_axis_tuser[1]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[1]_i_98 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_95_n_0 ),
        .I2(\m_axis_tuser[1]_i_96_n_0 ),
        .I3(\m_axis_tuser_reg[1]_i_97_n_4 ),
        .I4(\m_axis_tuser[1]_i_121_n_0 ),
        .I5(\m_axis_tuser[1]_i_129_n_0 ),
        .O(\m_axis_tuser[1]_i_98_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[1]_i_99 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[1]_i_63_n_0 ),
        .I2(\m_axis_tuser[1]_i_107_n_0 ),
        .O(\m_axis_tuser[1]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h4884CC00844800CC)) 
    \m_axis_tuser[2]_i_1 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_2_n_0 ),
        .I2(\m_axis_tuser[2]_i_3_n_0 ),
        .I3(\m_axis_tuser[2]_i_4_n_0 ),
        .I4(\GEN_SLOT[2].v1 ),
        .I5(DECIM_PHASE[4]),
        .O(mask_comb[2]));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[2]_i_10 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[2]_i_26_n_0 ),
        .I2(\m_axis_tuser[2]_i_27_n_0 ),
        .O(\m_axis_tuser[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[2]_i_100 
       (.I0(\m_axis_tuser[2]_i_116_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[2]_i_117_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_97_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[2]_i_94_n_0 ),
        .O(\m_axis_tuser[2]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h514C04D510C4455D)) 
    \m_axis_tuser[2]_i_101 
       (.I0(DECIM_M[1]),
        .I1(phase0[0]),
        .I2(\m_axis_tuser[2]_i_114_n_0 ),
        .I3(p_0_out),
        .I4(phase0[1]),
        .I5(\m_axis_tuser_reg[2]_i_97_n_4 ),
        .O(\m_axis_tuser[2]_i_101_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[2]_i_102 
       (.I0(\m_axis_tuser[2]_i_106_n_0 ),
        .O(\m_axis_tuser[2]_i_102_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[2]_i_103 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_107_n_0 ),
        .I2(\m_axis_tuser[2]_i_63_n_0 ),
        .O(\m_axis_tuser[2]_i_103_n_0 ));
  LUT6 #(
    .INIT(64'h0909909099000099)) 
    \m_axis_tuser[2]_i_104 
       (.I0(\m_axis_tuser[2]_i_94_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[2]_i_116_n_0 ),
        .I3(DECIM_M[2]),
        .I4(\m_axis_tuser[2]_i_117_n_0 ),
        .I5(\m_axis_tuser_reg[2]_i_97_n_4 ),
        .O(\m_axis_tuser[2]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h8010162920401C2C)) 
    \m_axis_tuser[2]_i_105 
       (.I0(\m_axis_tuser_reg[2]_i_97_n_4 ),
        .I1(phase0[1]),
        .I2(p_0_out),
        .I3(\m_axis_tuser[2]_i_114_n_0 ),
        .I4(phase0[0]),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[2]_i_105_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[2]_i_106 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_95_n_0 ),
        .I2(\m_axis_tuser[2]_i_96_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_97_n_4 ),
        .I4(\m_axis_tuser[2]_i_121_n_0 ),
        .I5(\m_axis_tuser[2]_i_129_n_0 ),
        .O(\m_axis_tuser[2]_i_106_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[2]_i_107 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_95_n_0 ),
        .I2(\m_axis_tuser[2]_i_96_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_97_n_4 ),
        .I4(\m_axis_tuser[2]_i_129_n_0 ),
        .O(\m_axis_tuser[2]_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[2]_i_108 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_62_n_0 ),
        .I2(\m_axis_tuser[2]_i_63_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_64_n_4 ),
        .I4(\m_axis_tuser[2]_i_107_n_0 ),
        .O(\m_axis_tuser[2]_i_108_n_0 ));
  LUT6 #(
    .INIT(64'hE3D01C2F8C4073BF)) 
    \m_axis_tuser[2]_i_109 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[2]_i_114_n_0 ),
        .I2(p_0_out),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .I5(\m_axis_tuser_reg[2]_i_97_n_4 ),
        .O(\m_axis_tuser[2]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hC33C66995AA5FF00)) 
    \m_axis_tuser[2]_i_11 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_28_n_0 ),
        .I2(\m_axis_tuser[2]_i_29_n_0 ),
        .I3(\m_axis_tuser[2]_i_30_n_0 ),
        .I4(\m_axis_tuser_reg[2]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[2]_i_32_n_4 ),
        .O(\m_axis_tuser[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hB748)) 
    \m_axis_tuser[2]_i_110 
       (.I0(\m_axis_tuser_reg[2]_i_97_n_4 ),
        .I1(p_0_out),
        .I2(\m_axis_tuser[2]_i_114_n_0 ),
        .I3(phase0[0]),
        .O(\m_axis_tuser[2]_i_110_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[2]_i_111 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_62_n_0 ),
        .I2(\m_axis_tuser[2]_i_63_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_64_n_4 ),
        .I4(\m_axis_tuser[2]_i_106_n_0 ),
        .I5(\m_axis_tuser[2]_i_107_n_0 ),
        .O(\m_axis_tuser[2]_i_111_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[2]_i_112 
       (.I0(\m_axis_tuser[2]_i_60_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[2]_i_61_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_31_n_4 ),
        .O(\m_axis_tuser[2]_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h6C39)) 
    \m_axis_tuser[2]_i_113 
       (.I0(\m_axis_tuser_reg[2]_i_31_n_4 ),
        .I1(\m_axis_tuser[2]_i_61_n_0 ),
        .I2(\m_axis_tuser[2]_i_60_n_0 ),
        .I3(DECIM_M[3]),
        .O(\m_axis_tuser[2]_i_113_n_0 ));
  LUT6 #(
    .INIT(64'hFF5DDF45DF455D04)) 
    \m_axis_tuser[2]_i_114 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_130_n_0 ),
        .I2(DECIM_M[3]),
        .I3(phase0[4]),
        .I4(phase0[3]),
        .I5(\m_axis_tuser[2]_i_131_n_0 ),
        .O(\m_axis_tuser[2]_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h803CD6FF16C3BFFF)) 
    \m_axis_tuser[2]_i_115 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[2]_i_114_n_0 ),
        .I2(\m_axis_tuser_reg[2]_i_97_n_4 ),
        .I3(p_0_out),
        .I4(DECIM_M[1]),
        .I5(phase0[1]),
        .O(\m_axis_tuser[2]_i_115_n_0 ));
  LUT5 #(
    .INIT(32'h0C6F63FF)) 
    \m_axis_tuser[2]_i_116 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[2]_i_114_n_0 ),
        .I2(p_0_out),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .O(\m_axis_tuser[2]_i_116_n_0 ));
  LUT6 #(
    .INIT(64'h2D87872D78D278D2)) 
    \m_axis_tuser[2]_i_117 
       (.I0(\m_axis_tuser[2]_i_114_n_0 ),
        .I1(\m_axis_tuser[6]_i_134_n_0 ),
        .I2(phase0[2]),
        .I3(DECIM_M[2]),
        .I4(DECIM_M[1]),
        .I5(phase0[1]),
        .O(\m_axis_tuser[2]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h006AFF6AFF6A006A)) 
    \m_axis_tuser[2]_i_118 
       (.I0(phase0[3]),
        .I1(phase0[2]),
        .I2(phase0[1]),
        .I3(\m_axis_tuser[2]_i_114_n_0 ),
        .I4(\m_axis_tuser[2]_i_132_n_0 ),
        .I5(\m_axis_tuser[2]_i_133_n_0 ),
        .O(\m_axis_tuser[2]_i_118_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \m_axis_tuser[2]_i_119 
       (.I0(phase0[2]),
        .I1(phase0[1]),
        .I2(phase0[3]),
        .I3(phase0[4]),
        .O(\GEN_SLOT[2].val ));
  LUT6 #(
    .INIT(64'h550404005D555504)) 
    \m_axis_tuser[2]_i_120 
       (.I0(\m_axis_tuser[3]_i_121_n_0 ),
        .I1(phase0[1]),
        .I2(DECIM_M[1]),
        .I3(\m_axis_tuser[6]_i_134_n_0 ),
        .I4(phase0[2]),
        .I5(DECIM_M[2]),
        .O(\m_axis_tuser[2]_i_120_n_0 ));
  LUT6 #(
    .INIT(64'h2B2B022B00000000)) 
    \m_axis_tuser[2]_i_121 
       (.I0(DECIM_M[4]),
        .I1(phase0[4]),
        .I2(\m_axis_tuser[2]_i_120_n_0 ),
        .I3(phase0[3]),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[2]_i_114_n_0 ),
        .O(\m_axis_tuser[2]_i_121_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[2]_i_122 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_96_n_0 ),
        .I2(\m_axis_tuser[2]_i_129_n_0 ),
        .O(\m_axis_tuser[2]_i_122_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[2]_i_123 
       (.I0(\m_axis_tuser[2]_i_117_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[2]_i_118_n_0 ),
        .O(\m_axis_tuser[2]_i_123_n_0 ));
  LUT5 #(
    .INIT(32'h1C04455D)) 
    \m_axis_tuser[2]_i_124 
       (.I0(DECIM_M[1]),
        .I1(phase0[0]),
        .I2(p_0_out),
        .I3(\m_axis_tuser[2]_i_114_n_0 ),
        .I4(phase0[1]),
        .O(\m_axis_tuser[2]_i_124_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[2]_i_125 
       (.I0(\m_axis_tuser[2]_i_121_n_0 ),
        .O(\m_axis_tuser[2]_i_125_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[2]_i_126 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_129_n_0 ),
        .I2(\m_axis_tuser[2]_i_96_n_0 ),
        .O(\m_axis_tuser[2]_i_126_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[2]_i_127 
       (.I0(\m_axis_tuser[2]_i_118_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[2]_i_117_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[2]_i_127_n_0 ));
  LUT5 #(
    .INIT(32'h1049204A)) 
    \m_axis_tuser[2]_i_128 
       (.I0(phase0[1]),
        .I1(\m_axis_tuser[2]_i_114_n_0 ),
        .I2(p_0_out),
        .I3(phase0[0]),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[2]_i_128_n_0 ));
  LUT6 #(
    .INIT(64'h5C0C0CAC00A0A0F0)) 
    \m_axis_tuser[2]_i_129 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_134_n_0 ),
        .I2(\m_axis_tuser[2]_i_114_n_0 ),
        .I3(\m_axis_tuser[6]_i_138_n_0 ),
        .I4(\m_axis_tuser[2]_i_120_n_0 ),
        .I5(phase0[4]),
        .O(\m_axis_tuser[2]_i_129_n_0 ));
  LUT6 #(
    .INIT(64'h357D357D1435357D)) 
    \m_axis_tuser[2]_i_130 
       (.I0(DECIM_M[2]),
        .I1(phase0[1]),
        .I2(phase0[2]),
        .I3(DECIM_M[1]),
        .I4(p_0_out),
        .I5(phase0[0]),
        .O(\m_axis_tuser[2]_i_130_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \m_axis_tuser[2]_i_131 
       (.I0(phase0[2]),
        .I1(phase0[1]),
        .O(\m_axis_tuser[2]_i_131_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT4 #(
    .INIT(16'h9969)) 
    \m_axis_tuser[2]_i_132 
       (.I0(DECIM_M[3]),
        .I1(phase0[3]),
        .I2(phase0[2]),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[2]_i_132_n_0 ));
  LUT6 #(
    .INIT(64'hFFDF0D000D00FFDF)) 
    \m_axis_tuser[2]_i_133 
       (.I0(p_0_out),
        .I1(phase0[0]),
        .I2(DECIM_M[1]),
        .I3(phase0[1]),
        .I4(phase0[2]),
        .I5(DECIM_M[2]),
        .O(\m_axis_tuser[2]_i_133_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_axis_tuser[2]_i_134 
       (.I0(phase0[3]),
        .I1(phase0[1]),
        .I2(phase0[2]),
        .O(\m_axis_tuser[2]_i_134_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[2]_i_14 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_9_n_0 ),
        .I2(\GEN_SLOT[2].v [4]),
        .I3(\m_axis_tuser_reg[2]_i_13_n_4 ),
        .I4(\GEN_SLOT[2].v__0 ),
        .I5(\GEN_SLOT[2].v [5]),
        .O(\m_axis_tuser[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hD5FF7F55D4FF2B00)) 
    \m_axis_tuser[2]_i_15 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_9_n_0 ),
        .I2(\GEN_SLOT[2].v [4]),
        .I3(\m_axis_tuser_reg[2]_i_13_n_4 ),
        .I4(\GEN_SLOT[2].v [5]),
        .I5(\m_axis_tuser[2]_i_4_n_0 ),
        .O(\m_axis_tuser[2]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[2]_i_16 
       (.I0(\m_axis_tuser[2]_i_24_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[2]_i_8_n_0 ),
        .O(\m_axis_tuser[2]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[2]_i_17 
       (.I0(DECIM_M[1]),
        .I1(\GEN_SLOT[2].v [1]),
        .I2(\m_axis_tuser_reg[2]_i_13_n_4 ),
        .I3(p_0_out),
        .I4(\GEN_SLOT[2].v [0]),
        .O(\m_axis_tuser[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF2B00D4FF)) 
    \m_axis_tuser[2]_i_18 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_9_n_0 ),
        .I2(\GEN_SLOT[2].v [4]),
        .I3(\m_axis_tuser_reg[2]_i_13_n_4 ),
        .I4(\GEN_SLOT[2].v__0 ),
        .I5(\GEN_SLOT[2].v [5]),
        .O(\m_axis_tuser[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2A0080AA01005455)) 
    \m_axis_tuser[2]_i_19 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_9_n_0 ),
        .I2(\GEN_SLOT[2].v [4]),
        .I3(\m_axis_tuser_reg[2]_i_13_n_4 ),
        .I4(\GEN_SLOT[2].v [5]),
        .I5(\m_axis_tuser[2]_i_4_n_0 ),
        .O(\m_axis_tuser[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2882AA00822800AA)) 
    \m_axis_tuser[2]_i_2 
       (.I0(\m_axis_tuser[2]_i_6_n_0 ),
        .I1(\m_axis_tuser[2]_i_7_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[2]_i_8_n_0 ),
        .I4(\GEN_SLOT[2].v1 ),
        .I5(DECIM_PHASE[3]),
        .O(\m_axis_tuser[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[2]_i_20 
       (.I0(\m_axis_tuser[2]_i_8_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[2]_i_24_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[2]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[2]_i_21 
       (.I0(\m_axis_tuser_reg[2]_i_13_n_4 ),
        .I1(p_0_out),
        .I2(\GEN_SLOT[2].v [0]),
        .I3(DECIM_M[1]),
        .I4(\GEN_SLOT[2].v [1]),
        .O(\m_axis_tuser[2]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0999900090000999)) 
    \m_axis_tuser[2]_i_22 
       (.I0(cond_mod1_return),
        .I1(DECIM_PHASE[1]),
        .I2(\GEN_SLOT[2].v1 ),
        .I3(p_0_out),
        .I4(\m_axis_tuser[2]_i_55_n_0 ),
        .I5(DECIM_PHASE[0]),
        .O(\m_axis_tuser[2]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[2]_i_23 
       (.I0(\GEN_SLOT[2].v [0]),
        .I1(\m_axis_tuser_reg[2]_i_13_n_4 ),
        .I2(p_0_out),
        .I3(\GEN_SLOT[2].v [1]),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[2]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[2]_i_24 
       (.I0(\m_axis_tuser[2]_i_56_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[2]_i_57_n_0 ),
        .I3(\m_axis_tuser[2]_i_58_n_0 ),
        .I4(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[2]_i_13_n_4 ),
        .O(\m_axis_tuser[2]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[2]_i_25 
       (.I0(\m_axis_tuser[2]_i_56_n_0 ),
        .I1(\m_axis_tuser[2]_i_57_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[2]_i_58_n_0 ),
        .I4(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .O(\m_axis_tuser[2]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[2]_i_26 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[2]_i_57_n_0 ),
        .I2(\m_axis_tuser[2]_i_58_n_0 ),
        .O(\m_axis_tuser[2]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[2]_i_27 
       (.I0(\m_axis_tuser[2]_i_59_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[2]_i_60_n_0 ),
        .I3(\m_axis_tuser[2]_i_61_n_0 ),
        .I4(\m_axis_tuser_reg[2]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[2]_i_32_n_4 ),
        .O(\m_axis_tuser[2]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[2]_i_28 
       (.I0(\m_axis_tuser[2]_i_59_n_0 ),
        .I1(\m_axis_tuser[2]_i_60_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[2]_i_61_n_0 ),
        .I4(\m_axis_tuser_reg[2]_i_31_n_4 ),
        .O(\m_axis_tuser[2]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[2]_i_29 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[2]_i_60_n_0 ),
        .I2(\m_axis_tuser[2]_i_61_n_0 ),
        .O(\m_axis_tuser[2]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[2]_i_3 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[2]_i_7_n_0 ),
        .I2(\m_axis_tuser[2]_i_8_n_0 ),
        .O(\m_axis_tuser[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[2]_i_30 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_62_n_0 ),
        .I2(\m_axis_tuser[2]_i_63_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_64_n_4 ),
        .O(\m_axis_tuser[2]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[2]_i_33 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_28_n_0 ),
        .I2(\m_axis_tuser[2]_i_81_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_32_n_4 ),
        .I4(\m_axis_tuser[2]_i_82_n_0 ),
        .I5(\m_axis_tuser[2]_i_83_n_0 ),
        .O(\m_axis_tuser[2]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[2]_i_34 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_11_n_0 ),
        .I2(\m_axis_tuser[2]_i_84_n_0 ),
        .O(\m_axis_tuser[2]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[2]_i_35 
       (.I0(\m_axis_tuser[2]_i_58_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[2]_i_27_n_0 ),
        .O(\m_axis_tuser[2]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[2]_i_36 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[2]_i_85_n_0 ),
        .I2(\m_axis_tuser_reg[2]_i_32_n_4 ),
        .I3(p_0_out),
        .I4(\m_axis_tuser[2]_i_86_n_0 ),
        .O(\m_axis_tuser[2]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[2]_i_37 
       (.I0(\m_axis_tuser[2]_i_87_n_0 ),
        .O(\m_axis_tuser[2]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[2]_i_38 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_84_n_0 ),
        .I2(\m_axis_tuser[2]_i_11_n_0 ),
        .O(\m_axis_tuser[2]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[2]_i_39 
       (.I0(\m_axis_tuser[2]_i_27_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[2]_i_58_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[2]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hC33C66995AA5FF00)) 
    \m_axis_tuser[2]_i_4 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_9_n_0 ),
        .I2(\m_axis_tuser[2]_i_10_n_0 ),
        .I3(\m_axis_tuser[2]_i_11_n_0 ),
        .I4(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[2]_i_13_n_4 ),
        .O(\m_axis_tuser[2]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[2]_i_40 
       (.I0(\m_axis_tuser_reg[2]_i_32_n_4 ),
        .I1(p_0_out),
        .I2(\m_axis_tuser[2]_i_86_n_0 ),
        .I3(DECIM_M[1]),
        .I4(\m_axis_tuser[2]_i_85_n_0 ),
        .O(\m_axis_tuser[2]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[2]_i_41 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_10_n_0 ),
        .I2(\m_axis_tuser[2]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .I4(\m_axis_tuser[2]_i_87_n_0 ),
        .I5(\m_axis_tuser[2]_i_84_n_0 ),
        .O(\m_axis_tuser[2]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[2]_i_42 
       (.I0(DECIM_M[4]),
        .I1(\GEN_SLOT[2].v [4]),
        .I2(\GEN_SLOT[2].v [5]),
        .O(\m_axis_tuser[2]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[2]_i_43 
       (.I0(\m_axis_tuser[2]_i_57_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[2]_i_58_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\GEN_SLOT[2].v [3]),
        .O(\m_axis_tuser[2]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0D45541C455D1C04)) 
    \m_axis_tuser[2]_i_44 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[2]_i_86_n_0 ),
        .I2(p_0_out),
        .I3(\m_axis_tuser_reg[2]_i_32_n_4 ),
        .I4(\m_axis_tuser[2]_i_85_n_0 ),
        .I5(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .O(\m_axis_tuser[2]_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[2]_i_45 
       (.I0(\GEN_SLOT[2].v__0 ),
        .O(\m_axis_tuser[2]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[2]_i_46 
       (.I0(DECIM_M[4]),
        .I1(\GEN_SLOT[2].v [5]),
        .I2(\GEN_SLOT[2].v [4]),
        .O(\m_axis_tuser[2]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h5AC30000)) 
    \m_axis_tuser[2]_i_47 
       (.I0(\m_axis_tuser[2]_i_57_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[2]_i_58_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .I4(\m_axis_tuser[2]_i_89_n_0 ),
        .O(\m_axis_tuser[2]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h9000090009999099)) 
    \m_axis_tuser[2]_i_48 
       (.I0(\GEN_SLOT[2].v [1]),
        .I1(DECIM_M[1]),
        .I2(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .I3(p_0_out),
        .I4(\m_axis_tuser_reg[2]_i_32_n_4 ),
        .I5(\m_axis_tuser[2]_i_86_n_0 ),
        .O(\m_axis_tuser[2]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[2]_i_49 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_10_n_0 ),
        .I2(\m_axis_tuser[2]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .O(\GEN_SLOT[2].v [4]));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[2]_i_50 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_10_n_0 ),
        .I2(\m_axis_tuser[2]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .I4(\m_axis_tuser[2]_i_87_n_0 ),
        .I5(\m_axis_tuser[2]_i_84_n_0 ),
        .O(\GEN_SLOT[2].v__0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[2]_i_51 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_10_n_0 ),
        .I2(\m_axis_tuser[2]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .I4(\m_axis_tuser[2]_i_84_n_0 ),
        .O(\GEN_SLOT[2].v [5]));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[2]_i_52 
       (.I0(\m_axis_tuser[2]_i_86_n_0 ),
        .I1(p_0_out),
        .I2(\m_axis_tuser_reg[2]_i_32_n_4 ),
        .I3(\m_axis_tuser[2]_i_85_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .O(\GEN_SLOT[2].v [1]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'hB748)) 
    \m_axis_tuser[2]_i_53 
       (.I0(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .I1(p_0_out),
        .I2(\m_axis_tuser_reg[2]_i_32_n_4 ),
        .I3(\m_axis_tuser[2]_i_86_n_0 ),
        .O(\GEN_SLOT[2].v [0]));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[2]_i_54 
       (.I0(\GEN_SLOT[2].v [0]),
        .I1(p_0_out),
        .I2(\m_axis_tuser_reg[2]_i_13_n_4 ),
        .I3(\GEN_SLOT[2].v [1]),
        .I4(DECIM_M[1]),
        .I5(\GEN_SLOT[2].v1 ),
        .O(cond_mod1_return));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h7BB78448)) 
    \m_axis_tuser[2]_i_55 
       (.I0(\m_axis_tuser_reg[2]_i_13_n_4 ),
        .I1(p_0_out),
        .I2(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .I3(\m_axis_tuser_reg[2]_i_32_n_4 ),
        .I4(\m_axis_tuser[2]_i_86_n_0 ),
        .O(\m_axis_tuser[2]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h16C3803CBFFFD6FF)) 
    \m_axis_tuser[2]_i_56 
       (.I0(\m_axis_tuser[2]_i_86_n_0 ),
        .I1(\m_axis_tuser_reg[2]_i_32_n_4 ),
        .I2(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .I3(p_0_out),
        .I4(\m_axis_tuser[2]_i_85_n_0 ),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[2]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[2]_i_57 
       (.I0(\m_axis_tuser[2]_i_86_n_0 ),
        .I1(\m_axis_tuser_reg[2]_i_32_n_4 ),
        .I2(p_0_out),
        .I3(\m_axis_tuser[2]_i_85_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[2]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[2]_i_58 
       (.I0(\m_axis_tuser[2]_i_90_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[2]_i_91_n_0 ),
        .I3(\m_axis_tuser[2]_i_92_n_0 ),
        .I4(\m_axis_tuser_reg[2]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[2]_i_32_n_4 ),
        .O(\m_axis_tuser[2]_i_58_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[2]_i_59 
       (.I0(\m_axis_tuser[2]_i_90_n_0 ),
        .I1(\m_axis_tuser[2]_i_91_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[2]_i_92_n_0 ),
        .I4(\m_axis_tuser_reg[2]_i_31_n_4 ),
        .O(\m_axis_tuser[2]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h2882822888882222)) 
    \m_axis_tuser[2]_i_6 
       (.I0(\m_axis_tuser[2]_i_22_n_0 ),
        .I1(DECIM_PHASE[2]),
        .I2(\m_axis_tuser[2]_i_23_n_0 ),
        .I3(DECIM_M[2]),
        .I4(\m_axis_tuser[2]_i_24_n_0 ),
        .I5(\GEN_SLOT[2].v1 ),
        .O(\m_axis_tuser[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[2]_i_60 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[2]_i_91_n_0 ),
        .I2(\m_axis_tuser[2]_i_92_n_0 ),
        .O(\m_axis_tuser[2]_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[2]_i_61 
       (.I0(\m_axis_tuser[2]_i_93_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[2]_i_94_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_64_n_4 ),
        .O(\m_axis_tuser[2]_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[2]_i_62 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[2]_i_93_n_0 ),
        .I2(\m_axis_tuser[2]_i_94_n_0 ),
        .O(\m_axis_tuser[2]_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[2]_i_63 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_95_n_0 ),
        .I2(\m_axis_tuser[2]_i_96_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_97_n_4 ),
        .O(\m_axis_tuser[2]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[2]_i_65 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_62_n_0 ),
        .I2(\m_axis_tuser[2]_i_63_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_64_n_4 ),
        .I4(\m_axis_tuser[2]_i_106_n_0 ),
        .I5(\m_axis_tuser[2]_i_107_n_0 ),
        .O(\m_axis_tuser[2]_i_65_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[2]_i_66 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_30_n_0 ),
        .I2(\m_axis_tuser[2]_i_108_n_0 ),
        .O(\m_axis_tuser[2]_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[2]_i_67 
       (.I0(\m_axis_tuser[2]_i_92_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[2]_i_61_n_0 ),
        .O(\m_axis_tuser[2]_i_67_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[2]_i_68 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[2]_i_109_n_0 ),
        .I2(\m_axis_tuser_reg[2]_i_64_n_4 ),
        .I3(p_0_out),
        .I4(\m_axis_tuser[2]_i_110_n_0 ),
        .O(\m_axis_tuser[2]_i_68_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[2]_i_69 
       (.I0(\m_axis_tuser[2]_i_111_n_0 ),
        .O(\m_axis_tuser[2]_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[2]_i_7 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[2]_i_23_n_0 ),
        .I2(\m_axis_tuser[2]_i_24_n_0 ),
        .O(\m_axis_tuser[2]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[2]_i_70 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_108_n_0 ),
        .I2(\m_axis_tuser[2]_i_30_n_0 ),
        .O(\m_axis_tuser[2]_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[2]_i_71 
       (.I0(\m_axis_tuser[2]_i_61_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[2]_i_92_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[2]_i_71_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[2]_i_72 
       (.I0(\m_axis_tuser_reg[2]_i_64_n_4 ),
        .I1(p_0_out),
        .I2(\m_axis_tuser[2]_i_110_n_0 ),
        .I3(DECIM_M[1]),
        .I4(\m_axis_tuser[2]_i_109_n_0 ),
        .O(\m_axis_tuser[2]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[2]_i_73 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_29_n_0 ),
        .I2(\m_axis_tuser[2]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_31_n_4 ),
        .I4(\m_axis_tuser[2]_i_111_n_0 ),
        .I5(\m_axis_tuser[2]_i_108_n_0 ),
        .O(\m_axis_tuser[2]_i_73_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[2]_i_74 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_81_n_0 ),
        .I2(\m_axis_tuser[2]_i_83_n_0 ),
        .O(\m_axis_tuser[2]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[2]_i_75 
       (.I0(\m_axis_tuser[2]_i_91_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[2]_i_92_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_31_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[2]_i_112_n_0 ),
        .O(\m_axis_tuser[2]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h0D45541C455D1C04)) 
    \m_axis_tuser[2]_i_76 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[2]_i_110_n_0 ),
        .I2(p_0_out),
        .I3(\m_axis_tuser_reg[2]_i_64_n_4 ),
        .I4(\m_axis_tuser[2]_i_109_n_0 ),
        .I5(\m_axis_tuser_reg[2]_i_31_n_4 ),
        .O(\m_axis_tuser[2]_i_76_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[2]_i_77 
       (.I0(\m_axis_tuser[2]_i_82_n_0 ),
        .O(\m_axis_tuser[2]_i_77_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[2]_i_78 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_83_n_0 ),
        .I2(\m_axis_tuser[2]_i_81_n_0 ),
        .O(\m_axis_tuser[2]_i_78_n_0 ));
  LUT5 #(
    .INIT(32'h5AC30000)) 
    \m_axis_tuser[2]_i_79 
       (.I0(\m_axis_tuser[2]_i_91_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[2]_i_92_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_31_n_4 ),
        .I4(\m_axis_tuser[2]_i_113_n_0 ),
        .O(\m_axis_tuser[2]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[2]_i_8 
       (.I0(\m_axis_tuser[2]_i_25_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[2]_i_26_n_0 ),
        .I3(\m_axis_tuser[2]_i_27_n_0 ),
        .I4(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[2]_i_13_n_4 ),
        .O(\m_axis_tuser[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0469804880120433)) 
    \m_axis_tuser[2]_i_80 
       (.I0(\m_axis_tuser_reg[2]_i_31_n_4 ),
        .I1(p_0_out),
        .I2(\m_axis_tuser_reg[2]_i_64_n_4 ),
        .I3(\m_axis_tuser[2]_i_110_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser[2]_i_109_n_0 ),
        .O(\m_axis_tuser[2]_i_80_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[2]_i_81 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_29_n_0 ),
        .I2(\m_axis_tuser[2]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_31_n_4 ),
        .O(\m_axis_tuser[2]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[2]_i_82 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_29_n_0 ),
        .I2(\m_axis_tuser[2]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_31_n_4 ),
        .I4(\m_axis_tuser[2]_i_111_n_0 ),
        .I5(\m_axis_tuser[2]_i_108_n_0 ),
        .O(\m_axis_tuser[2]_i_82_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[2]_i_83 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_29_n_0 ),
        .I2(\m_axis_tuser[2]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_31_n_4 ),
        .I4(\m_axis_tuser[2]_i_108_n_0 ),
        .O(\m_axis_tuser[2]_i_83_n_0 ));
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[2]_i_84 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_28_n_0 ),
        .I2(\m_axis_tuser[2]_i_81_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_32_n_4 ),
        .I4(\m_axis_tuser[2]_i_83_n_0 ),
        .O(\m_axis_tuser[2]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[2]_i_85 
       (.I0(\m_axis_tuser[2]_i_110_n_0 ),
        .I1(p_0_out),
        .I2(\m_axis_tuser_reg[2]_i_64_n_4 ),
        .I3(\m_axis_tuser[2]_i_109_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser_reg[2]_i_31_n_4 ),
        .O(\m_axis_tuser[2]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'hB77B7BB748848448)) 
    \m_axis_tuser[2]_i_86 
       (.I0(\m_axis_tuser_reg[2]_i_31_n_4 ),
        .I1(p_0_out),
        .I2(\m_axis_tuser_reg[2]_i_64_n_4 ),
        .I3(\m_axis_tuser_reg[2]_i_97_n_4 ),
        .I4(\m_axis_tuser[2]_i_114_n_0 ),
        .I5(phase0[0]),
        .O(\m_axis_tuser[2]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[2]_i_87 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_28_n_0 ),
        .I2(\m_axis_tuser[2]_i_81_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_32_n_4 ),
        .I4(\m_axis_tuser[2]_i_82_n_0 ),
        .I5(\m_axis_tuser[2]_i_83_n_0 ),
        .O(\m_axis_tuser[2]_i_87_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[2]_i_88 
       (.I0(\m_axis_tuser[2]_i_26_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[2]_i_27_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .O(\GEN_SLOT[2].v [3]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h6C39)) 
    \m_axis_tuser[2]_i_89 
       (.I0(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .I1(\m_axis_tuser[2]_i_27_n_0 ),
        .I2(\m_axis_tuser[2]_i_26_n_0 ),
        .I3(DECIM_M[3]),
        .O(\m_axis_tuser[2]_i_89_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[2]_i_9 
       (.I0(\m_axis_tuser[2]_i_25_n_0 ),
        .I1(\m_axis_tuser[2]_i_26_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[2]_i_27_n_0 ),
        .I4(\m_axis_tuser_reg[2]_i_12_n_4 ),
        .O(\m_axis_tuser[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h16C3803CBFFFD6FF)) 
    \m_axis_tuser[2]_i_90 
       (.I0(\m_axis_tuser[2]_i_110_n_0 ),
        .I1(\m_axis_tuser_reg[2]_i_64_n_4 ),
        .I2(\m_axis_tuser_reg[2]_i_31_n_4 ),
        .I3(p_0_out),
        .I4(\m_axis_tuser[2]_i_109_n_0 ),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[2]_i_90_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[2]_i_91 
       (.I0(\m_axis_tuser[2]_i_110_n_0 ),
        .I1(\m_axis_tuser_reg[2]_i_64_n_4 ),
        .I2(p_0_out),
        .I3(\m_axis_tuser[2]_i_109_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[2]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[2]_i_92 
       (.I0(\m_axis_tuser[2]_i_115_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[2]_i_116_n_0 ),
        .I3(\m_axis_tuser[2]_i_117_n_0 ),
        .I4(\m_axis_tuser_reg[2]_i_97_n_4 ),
        .I5(\m_axis_tuser_reg[2]_i_64_n_4 ),
        .O(\m_axis_tuser[2]_i_92_n_0 ));
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[2]_i_93 
       (.I0(\m_axis_tuser[2]_i_115_n_0 ),
        .I1(\m_axis_tuser[2]_i_116_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[2]_i_117_n_0 ),
        .I4(\m_axis_tuser_reg[2]_i_97_n_4 ),
        .O(\m_axis_tuser[2]_i_93_n_0 ));
  LUT6 #(
    .INIT(64'h2BD4D42BFFFF0000)) 
    \m_axis_tuser[2]_i_94 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[2]_i_116_n_0 ),
        .I2(\m_axis_tuser[2]_i_117_n_0 ),
        .I3(DECIM_M[3]),
        .I4(\m_axis_tuser[2]_i_118_n_0 ),
        .I5(\m_axis_tuser_reg[2]_i_97_n_4 ),
        .O(\m_axis_tuser[2]_i_94_n_0 ));
  LUT5 #(
    .INIT(32'hF7755110)) 
    \m_axis_tuser[2]_i_95 
       (.I0(DECIM_M[3]),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[2]_i_116_n_0 ),
        .I3(\m_axis_tuser[2]_i_117_n_0 ),
        .I4(\m_axis_tuser[2]_i_118_n_0 ),
        .O(\m_axis_tuser[2]_i_95_n_0 ));
  LUT4 #(
    .INIT(16'h2EE2)) 
    \m_axis_tuser[2]_i_96 
       (.I0(\GEN_SLOT[2].val ),
        .I1(\m_axis_tuser[2]_i_114_n_0 ),
        .I2(\m_axis_tuser[6]_i_121_n_0 ),
        .I3(\m_axis_tuser[2]_i_120_n_0 ),
        .O(\m_axis_tuser[2]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[2]_i_98 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_95_n_0 ),
        .I2(\m_axis_tuser[2]_i_96_n_0 ),
        .I3(\m_axis_tuser_reg[2]_i_97_n_4 ),
        .I4(\m_axis_tuser[2]_i_121_n_0 ),
        .I5(\m_axis_tuser[2]_i_129_n_0 ),
        .O(\m_axis_tuser[2]_i_98_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[2]_i_99 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[2]_i_63_n_0 ),
        .I2(\m_axis_tuser[2]_i_107_n_0 ),
        .O(\m_axis_tuser[2]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h4884CC00844800CC)) 
    \m_axis_tuser[3]_i_1 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_2_n_0 ),
        .I2(\m_axis_tuser[3]_i_3_n_0 ),
        .I3(\m_axis_tuser[3]_i_4_n_0 ),
        .I4(\GEN_SLOT[3].v1 ),
        .I5(DECIM_PHASE[4]),
        .O(mask_comb[3]));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[3]_i_10 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[3]_i_26_n_0 ),
        .I2(\m_axis_tuser[3]_i_27_n_0 ),
        .O(\m_axis_tuser[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[3]_i_100 
       (.I0(\m_axis_tuser[3]_i_116_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[3]_i_117_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_97_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[3]_i_94_n_0 ),
        .O(\m_axis_tuser[3]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h1057453104755113)) 
    \m_axis_tuser[3]_i_101 
       (.I0(DECIM_M[1]),
        .I1(phase0[0]),
        .I2(\m_axis_tuser[3]_i_114_n_0 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(phase0[1]),
        .I5(\m_axis_tuser_reg[3]_i_97_n_4 ),
        .O(\m_axis_tuser[3]_i_101_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[3]_i_102 
       (.I0(\m_axis_tuser[3]_i_106_n_0 ),
        .O(\m_axis_tuser[3]_i_102_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[3]_i_103 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_107_n_0 ),
        .I2(\m_axis_tuser[3]_i_63_n_0 ),
        .O(\m_axis_tuser[3]_i_103_n_0 ));
  LUT6 #(
    .INIT(64'h0909909099000099)) 
    \m_axis_tuser[3]_i_104 
       (.I0(\m_axis_tuser[3]_i_94_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[3]_i_116_n_0 ),
        .I3(DECIM_M[2]),
        .I4(\m_axis_tuser[3]_i_117_n_0 ),
        .I5(\m_axis_tuser_reg[3]_i_97_n_4 ),
        .O(\m_axis_tuser[3]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h4986801043832040)) 
    \m_axis_tuser[3]_i_105 
       (.I0(\m_axis_tuser_reg[3]_i_97_n_4 ),
        .I1(phase0[1]),
        .I2(\m_axis_tuser[7]_i_53_n_0 ),
        .I3(\m_axis_tuser[3]_i_114_n_0 ),
        .I4(phase0[0]),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[3]_i_105_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[3]_i_106 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_95_n_0 ),
        .I2(\m_axis_tuser[3]_i_96_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_97_n_4 ),
        .I4(\m_axis_tuser[3]_i_122_n_0 ),
        .I5(\m_axis_tuser[3]_i_130_n_0 ),
        .O(\m_axis_tuser[3]_i_106_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[3]_i_107 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_95_n_0 ),
        .I2(\m_axis_tuser[3]_i_96_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_97_n_4 ),
        .I4(\m_axis_tuser[3]_i_130_n_0 ),
        .O(\m_axis_tuser[3]_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[3]_i_108 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_62_n_0 ),
        .I2(\m_axis_tuser[3]_i_63_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_64_n_4 ),
        .I4(\m_axis_tuser[3]_i_107_n_0 ),
        .O(\m_axis_tuser[3]_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h794A86B5E62A19D5)) 
    \m_axis_tuser[3]_i_109 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[3]_i_114_n_0 ),
        .I2(\m_axis_tuser[7]_i_53_n_0 ),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .I5(\m_axis_tuser_reg[3]_i_97_n_4 ),
        .O(\m_axis_tuser[3]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hC33C66995AA5FF00)) 
    \m_axis_tuser[3]_i_11 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_28_n_0 ),
        .I2(\m_axis_tuser[3]_i_29_n_0 ),
        .I3(\m_axis_tuser[3]_i_30_n_0 ),
        .I4(\m_axis_tuser_reg[3]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[3]_i_32_n_4 ),
        .O(\m_axis_tuser[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h48B7)) 
    \m_axis_tuser[3]_i_110 
       (.I0(\m_axis_tuser_reg[3]_i_97_n_4 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser[3]_i_114_n_0 ),
        .I3(phase0[0]),
        .O(\m_axis_tuser[3]_i_110_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[3]_i_111 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_62_n_0 ),
        .I2(\m_axis_tuser[3]_i_63_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_64_n_4 ),
        .I4(\m_axis_tuser[3]_i_106_n_0 ),
        .I5(\m_axis_tuser[3]_i_107_n_0 ),
        .O(\m_axis_tuser[3]_i_111_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[3]_i_112 
       (.I0(\m_axis_tuser[3]_i_60_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[3]_i_61_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_31_n_4 ),
        .O(\m_axis_tuser[3]_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'h6C39)) 
    \m_axis_tuser[3]_i_113 
       (.I0(\m_axis_tuser_reg[3]_i_31_n_4 ),
        .I1(\m_axis_tuser[3]_i_61_n_0 ),
        .I2(\m_axis_tuser[3]_i_60_n_0 ),
        .I3(DECIM_M[3]),
        .O(\m_axis_tuser[3]_i_113_n_0 ));
  LUT6 #(
    .INIT(64'hFF5DDF45DF455D04)) 
    \m_axis_tuser[3]_i_114 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_131_n_0 ),
        .I2(DECIM_M[3]),
        .I3(phase0[4]),
        .I4(phase0[3]),
        .I5(\m_axis_tuser[3]_i_132_n_0 ),
        .O(\m_axis_tuser[3]_i_114_n_0 ));
  LUT6 #(
    .INIT(64'h68966BFF0169FDFF)) 
    \m_axis_tuser[3]_i_115 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[3]_i_114_n_0 ),
        .I2(\m_axis_tuser_reg[3]_i_97_n_4 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(DECIM_M[1]),
        .I5(phase0[1]),
        .O(\m_axis_tuser[3]_i_115_n_0 ));
  LUT5 #(
    .INIT(32'h86BF19DF)) 
    \m_axis_tuser[3]_i_116 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[3]_i_114_n_0 ),
        .I2(\m_axis_tuser[7]_i_53_n_0 ),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .O(\m_axis_tuser[3]_i_116_n_0 ));
  LUT6 #(
    .INIT(64'hF10101F10EFEFE0E)) 
    \m_axis_tuser[3]_i_117 
       (.I0(phase0[0]),
        .I1(phase0[1]),
        .I2(\m_axis_tuser[3]_i_114_n_0 ),
        .I3(\m_axis_tuser[7]_i_133_n_0 ),
        .I4(DECIM_M[2]),
        .I5(phase0[2]),
        .O(\m_axis_tuser[3]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'hE22EE2E2E2E22EE2)) 
    \m_axis_tuser[3]_i_118 
       (.I0(\GEN_SLOT[3].val [3]),
        .I1(\m_axis_tuser[3]_i_114_n_0 ),
        .I2(\m_axis_tuser[3]_i_121_n_0 ),
        .I3(DECIM_M[2]),
        .I4(phase0[2]),
        .I5(\m_axis_tuser[7]_i_133_n_0 ),
        .O(\m_axis_tuser[3]_i_118_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h57FFA800)) 
    \m_axis_tuser[3]_i_119 
       (.I0(phase0[2]),
        .I1(phase0[1]),
        .I2(phase0[0]),
        .I3(phase0[3]),
        .I4(phase0[4]),
        .O(\GEN_SLOT[3].val [4]));
  LUT6 #(
    .INIT(64'hFFFF4D444D440000)) 
    \m_axis_tuser[3]_i_120 
       (.I0(DECIM_M[1]),
        .I1(phase0[1]),
        .I2(\m_axis_tuser[7]_i_53_n_0 ),
        .I3(phase0[0]),
        .I4(phase0[2]),
        .I5(DECIM_M[2]),
        .O(\m_axis_tuser[3]_i_120_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \m_axis_tuser[3]_i_121 
       (.I0(phase0[3]),
        .I1(DECIM_M[3]),
        .O(\m_axis_tuser[3]_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h2B2B022B00000000)) 
    \m_axis_tuser[3]_i_122 
       (.I0(DECIM_M[4]),
        .I1(phase0[4]),
        .I2(\m_axis_tuser[3]_i_134_n_0 ),
        .I3(phase0[3]),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[3]_i_114_n_0 ),
        .O(\m_axis_tuser[3]_i_122_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[3]_i_123 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_96_n_0 ),
        .I2(\m_axis_tuser[3]_i_130_n_0 ),
        .O(\m_axis_tuser[3]_i_123_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[3]_i_124 
       (.I0(\m_axis_tuser[3]_i_117_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[3]_i_118_n_0 ),
        .O(\m_axis_tuser[3]_i_124_n_0 ));
  LUT5 #(
    .INIT(32'h15403157)) 
    \m_axis_tuser[3]_i_125 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser[3]_i_114_n_0 ),
        .I3(phase0[1]),
        .I4(phase0[0]),
        .O(\m_axis_tuser[3]_i_125_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[3]_i_126 
       (.I0(\m_axis_tuser[3]_i_122_n_0 ),
        .O(\m_axis_tuser[3]_i_126_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[3]_i_127 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_130_n_0 ),
        .I2(\m_axis_tuser[3]_i_96_n_0 ),
        .O(\m_axis_tuser[3]_i_127_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[3]_i_128 
       (.I0(\m_axis_tuser[3]_i_118_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[3]_i_117_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[3]_i_128_n_0 ));
  LUT5 #(
    .INIT(32'h81288422)) 
    \m_axis_tuser[3]_i_129 
       (.I0(phase0[0]),
        .I1(phase0[1]),
        .I2(\m_axis_tuser[3]_i_114_n_0 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[3]_i_129_n_0 ));
  LUT6 #(
    .INIT(64'h5C0C0CAC00A0A0F0)) 
    \m_axis_tuser[3]_i_130 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_135_n_0 ),
        .I2(\m_axis_tuser[3]_i_114_n_0 ),
        .I3(\m_axis_tuser[6]_i_138_n_0 ),
        .I4(\m_axis_tuser[3]_i_134_n_0 ),
        .I5(phase0[4]),
        .O(\m_axis_tuser[3]_i_130_n_0 ));
  LUT6 #(
    .INIT(64'h035547DD43D557FD)) 
    \m_axis_tuser[3]_i_131 
       (.I0(DECIM_M[2]),
        .I1(phase0[1]),
        .I2(phase0[0]),
        .I3(phase0[2]),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser[7]_i_53_n_0 ),
        .O(\m_axis_tuser[3]_i_131_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \m_axis_tuser[3]_i_132 
       (.I0(phase0[2]),
        .I1(phase0[1]),
        .I2(phase0[0]),
        .O(\m_axis_tuser[3]_i_132_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \m_axis_tuser[3]_i_133 
       (.I0(phase0[0]),
        .I1(phase0[1]),
        .I2(phase0[2]),
        .I3(phase0[3]),
        .O(\GEN_SLOT[3].val [3]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h9990F999)) 
    \m_axis_tuser[3]_i_134 
       (.I0(phase0[3]),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[7]_i_133_n_0 ),
        .I3(phase0[2]),
        .I4(DECIM_M[2]),
        .O(\m_axis_tuser[3]_i_134_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT4 #(
    .INIT(16'hA800)) 
    \m_axis_tuser[3]_i_135 
       (.I0(phase0[3]),
        .I1(phase0[0]),
        .I2(phase0[1]),
        .I3(phase0[2]),
        .O(\m_axis_tuser[3]_i_135_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[3]_i_14 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_9_n_0 ),
        .I2(\GEN_SLOT[3].v [4]),
        .I3(\m_axis_tuser_reg[3]_i_13_n_4 ),
        .I4(\GEN_SLOT[3].v__0 ),
        .I5(\GEN_SLOT[3].v [5]),
        .O(\m_axis_tuser[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hD5FF7F55D4FF2B00)) 
    \m_axis_tuser[3]_i_15 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_9_n_0 ),
        .I2(\GEN_SLOT[3].v [4]),
        .I3(\m_axis_tuser_reg[3]_i_13_n_4 ),
        .I4(\GEN_SLOT[3].v [5]),
        .I5(\m_axis_tuser[3]_i_4_n_0 ),
        .O(\m_axis_tuser[3]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[3]_i_16 
       (.I0(\m_axis_tuser[3]_i_24_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[3]_i_8_n_0 ),
        .O(\m_axis_tuser[3]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[3]_i_17 
       (.I0(DECIM_M[1]),
        .I1(\GEN_SLOT[3].v [1]),
        .I2(\m_axis_tuser_reg[3]_i_13_n_4 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(\GEN_SLOT[3].v [0]),
        .O(\m_axis_tuser[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF2B00D4FF)) 
    \m_axis_tuser[3]_i_18 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_9_n_0 ),
        .I2(\GEN_SLOT[3].v [4]),
        .I3(\m_axis_tuser_reg[3]_i_13_n_4 ),
        .I4(\GEN_SLOT[3].v__0 ),
        .I5(\GEN_SLOT[3].v [5]),
        .O(\m_axis_tuser[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2A0080AA01005455)) 
    \m_axis_tuser[3]_i_19 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_9_n_0 ),
        .I2(\GEN_SLOT[3].v [4]),
        .I3(\m_axis_tuser_reg[3]_i_13_n_4 ),
        .I4(\GEN_SLOT[3].v [5]),
        .I5(\m_axis_tuser[3]_i_4_n_0 ),
        .O(\m_axis_tuser[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2882AA00822800AA)) 
    \m_axis_tuser[3]_i_2 
       (.I0(\m_axis_tuser[3]_i_6_n_0 ),
        .I1(\m_axis_tuser[3]_i_7_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[3]_i_8_n_0 ),
        .I4(\GEN_SLOT[3].v1 ),
        .I5(DECIM_PHASE[3]),
        .O(\m_axis_tuser[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[3]_i_20 
       (.I0(\m_axis_tuser[3]_i_8_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[3]_i_24_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[3]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[3]_i_21 
       (.I0(\m_axis_tuser_reg[3]_i_13_n_4 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\GEN_SLOT[3].v [0]),
        .I3(DECIM_M[1]),
        .I4(\GEN_SLOT[3].v [1]),
        .O(\m_axis_tuser[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0999900090000999)) 
    \m_axis_tuser[3]_i_22 
       (.I0(cond_mod2_return),
        .I1(DECIM_PHASE[1]),
        .I2(\GEN_SLOT[3].v1 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(\m_axis_tuser[3]_i_55_n_0 ),
        .I5(DECIM_PHASE[0]),
        .O(\m_axis_tuser[3]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[3]_i_23 
       (.I0(\GEN_SLOT[3].v [0]),
        .I1(\m_axis_tuser_reg[3]_i_13_n_4 ),
        .I2(\m_axis_tuser[7]_i_53_n_0 ),
        .I3(\GEN_SLOT[3].v [1]),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[3]_i_24 
       (.I0(\m_axis_tuser[3]_i_56_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[3]_i_57_n_0 ),
        .I3(\m_axis_tuser[3]_i_58_n_0 ),
        .I4(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[3]_i_13_n_4 ),
        .O(\m_axis_tuser[3]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[3]_i_25 
       (.I0(\m_axis_tuser[3]_i_56_n_0 ),
        .I1(\m_axis_tuser[3]_i_57_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[3]_i_58_n_0 ),
        .I4(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .O(\m_axis_tuser[3]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[3]_i_26 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[3]_i_57_n_0 ),
        .I2(\m_axis_tuser[3]_i_58_n_0 ),
        .O(\m_axis_tuser[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[3]_i_27 
       (.I0(\m_axis_tuser[3]_i_59_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[3]_i_60_n_0 ),
        .I3(\m_axis_tuser[3]_i_61_n_0 ),
        .I4(\m_axis_tuser_reg[3]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[3]_i_32_n_4 ),
        .O(\m_axis_tuser[3]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[3]_i_28 
       (.I0(\m_axis_tuser[3]_i_59_n_0 ),
        .I1(\m_axis_tuser[3]_i_60_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[3]_i_61_n_0 ),
        .I4(\m_axis_tuser_reg[3]_i_31_n_4 ),
        .O(\m_axis_tuser[3]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[3]_i_29 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[3]_i_60_n_0 ),
        .I2(\m_axis_tuser[3]_i_61_n_0 ),
        .O(\m_axis_tuser[3]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[3]_i_3 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[3]_i_7_n_0 ),
        .I2(\m_axis_tuser[3]_i_8_n_0 ),
        .O(\m_axis_tuser[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[3]_i_30 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_62_n_0 ),
        .I2(\m_axis_tuser[3]_i_63_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_64_n_4 ),
        .O(\m_axis_tuser[3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[3]_i_33 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_28_n_0 ),
        .I2(\m_axis_tuser[3]_i_81_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_32_n_4 ),
        .I4(\m_axis_tuser[3]_i_82_n_0 ),
        .I5(\m_axis_tuser[3]_i_83_n_0 ),
        .O(\m_axis_tuser[3]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[3]_i_34 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_11_n_0 ),
        .I2(\m_axis_tuser[3]_i_84_n_0 ),
        .O(\m_axis_tuser[3]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[3]_i_35 
       (.I0(\m_axis_tuser[3]_i_58_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[3]_i_27_n_0 ),
        .O(\m_axis_tuser[3]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[3]_i_36 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[3]_i_85_n_0 ),
        .I2(\m_axis_tuser_reg[3]_i_32_n_4 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(\m_axis_tuser[3]_i_86_n_0 ),
        .O(\m_axis_tuser[3]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[3]_i_37 
       (.I0(\m_axis_tuser[3]_i_87_n_0 ),
        .O(\m_axis_tuser[3]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[3]_i_38 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_84_n_0 ),
        .I2(\m_axis_tuser[3]_i_11_n_0 ),
        .O(\m_axis_tuser[3]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[3]_i_39 
       (.I0(\m_axis_tuser[3]_i_27_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[3]_i_58_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[3]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hC33C66995AA5FF00)) 
    \m_axis_tuser[3]_i_4 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_9_n_0 ),
        .I2(\m_axis_tuser[3]_i_10_n_0 ),
        .I3(\m_axis_tuser[3]_i_11_n_0 ),
        .I4(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[3]_i_13_n_4 ),
        .O(\m_axis_tuser[3]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[3]_i_40 
       (.I0(\m_axis_tuser_reg[3]_i_32_n_4 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser[3]_i_86_n_0 ),
        .I3(DECIM_M[1]),
        .I4(\m_axis_tuser[3]_i_85_n_0 ),
        .O(\m_axis_tuser[3]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[3]_i_41 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_10_n_0 ),
        .I2(\m_axis_tuser[3]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .I4(\m_axis_tuser[3]_i_87_n_0 ),
        .I5(\m_axis_tuser[3]_i_84_n_0 ),
        .O(\m_axis_tuser[3]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[3]_i_42 
       (.I0(DECIM_M[4]),
        .I1(\GEN_SLOT[3].v [4]),
        .I2(\GEN_SLOT[3].v [5]),
        .O(\m_axis_tuser[3]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[3]_i_43 
       (.I0(\m_axis_tuser[3]_i_57_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[3]_i_58_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\GEN_SLOT[3].v [3]),
        .O(\m_axis_tuser[3]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0D45541C455D1C04)) 
    \m_axis_tuser[3]_i_44 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[3]_i_86_n_0 ),
        .I2(\m_axis_tuser[7]_i_53_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_32_n_4 ),
        .I4(\m_axis_tuser[3]_i_85_n_0 ),
        .I5(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .O(\m_axis_tuser[3]_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[3]_i_45 
       (.I0(\GEN_SLOT[3].v__0 ),
        .O(\m_axis_tuser[3]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[3]_i_46 
       (.I0(DECIM_M[4]),
        .I1(\GEN_SLOT[3].v [5]),
        .I2(\GEN_SLOT[3].v [4]),
        .O(\m_axis_tuser[3]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h5AC30000)) 
    \m_axis_tuser[3]_i_47 
       (.I0(\m_axis_tuser[3]_i_57_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[3]_i_58_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .I4(\m_axis_tuser[3]_i_89_n_0 ),
        .O(\m_axis_tuser[3]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h9000090009999099)) 
    \m_axis_tuser[3]_i_48 
       (.I0(\GEN_SLOT[3].v [1]),
        .I1(DECIM_M[1]),
        .I2(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(\m_axis_tuser_reg[3]_i_32_n_4 ),
        .I5(\m_axis_tuser[3]_i_86_n_0 ),
        .O(\m_axis_tuser[3]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[3]_i_49 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_10_n_0 ),
        .I2(\m_axis_tuser[3]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .O(\GEN_SLOT[3].v [4]));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[3]_i_50 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_10_n_0 ),
        .I2(\m_axis_tuser[3]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .I4(\m_axis_tuser[3]_i_87_n_0 ),
        .I5(\m_axis_tuser[3]_i_84_n_0 ),
        .O(\GEN_SLOT[3].v__0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[3]_i_51 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_10_n_0 ),
        .I2(\m_axis_tuser[3]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .I4(\m_axis_tuser[3]_i_84_n_0 ),
        .O(\GEN_SLOT[3].v [5]));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[3]_i_52 
       (.I0(\m_axis_tuser[3]_i_86_n_0 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[3]_i_32_n_4 ),
        .I3(\m_axis_tuser[3]_i_85_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .O(\GEN_SLOT[3].v [1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'hB748)) 
    \m_axis_tuser[3]_i_53 
       (.I0(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[3]_i_32_n_4 ),
        .I3(\m_axis_tuser[3]_i_86_n_0 ),
        .O(\GEN_SLOT[3].v [0]));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[3]_i_54 
       (.I0(\GEN_SLOT[3].v [0]),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[3]_i_13_n_4 ),
        .I3(\GEN_SLOT[3].v [1]),
        .I4(DECIM_M[1]),
        .I5(\GEN_SLOT[3].v1 ),
        .O(cond_mod2_return));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h7BB78448)) 
    \m_axis_tuser[3]_i_55 
       (.I0(\m_axis_tuser_reg[3]_i_13_n_4 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .I3(\m_axis_tuser_reg[3]_i_32_n_4 ),
        .I4(\m_axis_tuser[3]_i_86_n_0 ),
        .O(\m_axis_tuser[3]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h16C3803CBFFFD6FF)) 
    \m_axis_tuser[3]_i_56 
       (.I0(\m_axis_tuser[3]_i_86_n_0 ),
        .I1(\m_axis_tuser_reg[3]_i_32_n_4 ),
        .I2(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(\m_axis_tuser[3]_i_85_n_0 ),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[3]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[3]_i_57 
       (.I0(\m_axis_tuser[3]_i_86_n_0 ),
        .I1(\m_axis_tuser_reg[3]_i_32_n_4 ),
        .I2(\m_axis_tuser[7]_i_53_n_0 ),
        .I3(\m_axis_tuser[3]_i_85_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[3]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[3]_i_58 
       (.I0(\m_axis_tuser[3]_i_90_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[3]_i_91_n_0 ),
        .I3(\m_axis_tuser[3]_i_92_n_0 ),
        .I4(\m_axis_tuser_reg[3]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[3]_i_32_n_4 ),
        .O(\m_axis_tuser[3]_i_58_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[3]_i_59 
       (.I0(\m_axis_tuser[3]_i_90_n_0 ),
        .I1(\m_axis_tuser[3]_i_91_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[3]_i_92_n_0 ),
        .I4(\m_axis_tuser_reg[3]_i_31_n_4 ),
        .O(\m_axis_tuser[3]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h2882822888882222)) 
    \m_axis_tuser[3]_i_6 
       (.I0(\m_axis_tuser[3]_i_22_n_0 ),
        .I1(DECIM_PHASE[2]),
        .I2(\m_axis_tuser[3]_i_23_n_0 ),
        .I3(DECIM_M[2]),
        .I4(\m_axis_tuser[3]_i_24_n_0 ),
        .I5(\GEN_SLOT[3].v1 ),
        .O(\m_axis_tuser[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[3]_i_60 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[3]_i_91_n_0 ),
        .I2(\m_axis_tuser[3]_i_92_n_0 ),
        .O(\m_axis_tuser[3]_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[3]_i_61 
       (.I0(\m_axis_tuser[3]_i_93_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[3]_i_94_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_64_n_4 ),
        .O(\m_axis_tuser[3]_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[3]_i_62 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[3]_i_93_n_0 ),
        .I2(\m_axis_tuser[3]_i_94_n_0 ),
        .O(\m_axis_tuser[3]_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[3]_i_63 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_95_n_0 ),
        .I2(\m_axis_tuser[3]_i_96_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_97_n_4 ),
        .O(\m_axis_tuser[3]_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[3]_i_65 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_62_n_0 ),
        .I2(\m_axis_tuser[3]_i_63_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_64_n_4 ),
        .I4(\m_axis_tuser[3]_i_106_n_0 ),
        .I5(\m_axis_tuser[3]_i_107_n_0 ),
        .O(\m_axis_tuser[3]_i_65_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[3]_i_66 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_30_n_0 ),
        .I2(\m_axis_tuser[3]_i_108_n_0 ),
        .O(\m_axis_tuser[3]_i_66_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[3]_i_67 
       (.I0(\m_axis_tuser[3]_i_92_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[3]_i_61_n_0 ),
        .O(\m_axis_tuser[3]_i_67_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[3]_i_68 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[3]_i_109_n_0 ),
        .I2(\m_axis_tuser_reg[3]_i_64_n_4 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(\m_axis_tuser[3]_i_110_n_0 ),
        .O(\m_axis_tuser[3]_i_68_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[3]_i_69 
       (.I0(\m_axis_tuser[3]_i_111_n_0 ),
        .O(\m_axis_tuser[3]_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[3]_i_7 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[3]_i_23_n_0 ),
        .I2(\m_axis_tuser[3]_i_24_n_0 ),
        .O(\m_axis_tuser[3]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[3]_i_70 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_108_n_0 ),
        .I2(\m_axis_tuser[3]_i_30_n_0 ),
        .O(\m_axis_tuser[3]_i_70_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[3]_i_71 
       (.I0(\m_axis_tuser[3]_i_61_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[3]_i_92_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[3]_i_71_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[3]_i_72 
       (.I0(\m_axis_tuser_reg[3]_i_64_n_4 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser[3]_i_110_n_0 ),
        .I3(DECIM_M[1]),
        .I4(\m_axis_tuser[3]_i_109_n_0 ),
        .O(\m_axis_tuser[3]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[3]_i_73 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_29_n_0 ),
        .I2(\m_axis_tuser[3]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_31_n_4 ),
        .I4(\m_axis_tuser[3]_i_111_n_0 ),
        .I5(\m_axis_tuser[3]_i_108_n_0 ),
        .O(\m_axis_tuser[3]_i_73_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[3]_i_74 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_81_n_0 ),
        .I2(\m_axis_tuser[3]_i_83_n_0 ),
        .O(\m_axis_tuser[3]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[3]_i_75 
       (.I0(\m_axis_tuser[3]_i_91_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[3]_i_92_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_31_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[3]_i_112_n_0 ),
        .O(\m_axis_tuser[3]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h0D45541C455D1C04)) 
    \m_axis_tuser[3]_i_76 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[3]_i_110_n_0 ),
        .I2(\m_axis_tuser[7]_i_53_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_64_n_4 ),
        .I4(\m_axis_tuser[3]_i_109_n_0 ),
        .I5(\m_axis_tuser_reg[3]_i_31_n_4 ),
        .O(\m_axis_tuser[3]_i_76_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[3]_i_77 
       (.I0(\m_axis_tuser[3]_i_82_n_0 ),
        .O(\m_axis_tuser[3]_i_77_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[3]_i_78 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_83_n_0 ),
        .I2(\m_axis_tuser[3]_i_81_n_0 ),
        .O(\m_axis_tuser[3]_i_78_n_0 ));
  LUT5 #(
    .INIT(32'h5AC30000)) 
    \m_axis_tuser[3]_i_79 
       (.I0(\m_axis_tuser[3]_i_91_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[3]_i_92_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_31_n_4 ),
        .I4(\m_axis_tuser[3]_i_113_n_0 ),
        .O(\m_axis_tuser[3]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[3]_i_8 
       (.I0(\m_axis_tuser[3]_i_25_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[3]_i_26_n_0 ),
        .I3(\m_axis_tuser[3]_i_27_n_0 ),
        .I4(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[3]_i_13_n_4 ),
        .O(\m_axis_tuser[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0469804880120433)) 
    \m_axis_tuser[3]_i_80 
       (.I0(\m_axis_tuser_reg[3]_i_31_n_4 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[3]_i_64_n_4 ),
        .I3(\m_axis_tuser[3]_i_110_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser[3]_i_109_n_0 ),
        .O(\m_axis_tuser[3]_i_80_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[3]_i_81 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_29_n_0 ),
        .I2(\m_axis_tuser[3]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_31_n_4 ),
        .O(\m_axis_tuser[3]_i_81_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[3]_i_82 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_29_n_0 ),
        .I2(\m_axis_tuser[3]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_31_n_4 ),
        .I4(\m_axis_tuser[3]_i_111_n_0 ),
        .I5(\m_axis_tuser[3]_i_108_n_0 ),
        .O(\m_axis_tuser[3]_i_82_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[3]_i_83 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_29_n_0 ),
        .I2(\m_axis_tuser[3]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_31_n_4 ),
        .I4(\m_axis_tuser[3]_i_108_n_0 ),
        .O(\m_axis_tuser[3]_i_83_n_0 ));
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[3]_i_84 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_28_n_0 ),
        .I2(\m_axis_tuser[3]_i_81_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_32_n_4 ),
        .I4(\m_axis_tuser[3]_i_83_n_0 ),
        .O(\m_axis_tuser[3]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[3]_i_85 
       (.I0(\m_axis_tuser[3]_i_110_n_0 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[3]_i_64_n_4 ),
        .I3(\m_axis_tuser[3]_i_109_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser_reg[3]_i_31_n_4 ),
        .O(\m_axis_tuser[3]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h48848448B77B7BB7)) 
    \m_axis_tuser[3]_i_86 
       (.I0(\m_axis_tuser_reg[3]_i_31_n_4 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[3]_i_64_n_4 ),
        .I3(\m_axis_tuser_reg[3]_i_97_n_4 ),
        .I4(\m_axis_tuser[3]_i_114_n_0 ),
        .I5(phase0[0]),
        .O(\m_axis_tuser[3]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[3]_i_87 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_28_n_0 ),
        .I2(\m_axis_tuser[3]_i_81_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_32_n_4 ),
        .I4(\m_axis_tuser[3]_i_82_n_0 ),
        .I5(\m_axis_tuser[3]_i_83_n_0 ),
        .O(\m_axis_tuser[3]_i_87_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[3]_i_88 
       (.I0(\m_axis_tuser[3]_i_26_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[3]_i_27_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .O(\GEN_SLOT[3].v [3]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h6C39)) 
    \m_axis_tuser[3]_i_89 
       (.I0(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .I1(\m_axis_tuser[3]_i_27_n_0 ),
        .I2(\m_axis_tuser[3]_i_26_n_0 ),
        .I3(DECIM_M[3]),
        .O(\m_axis_tuser[3]_i_89_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[3]_i_9 
       (.I0(\m_axis_tuser[3]_i_25_n_0 ),
        .I1(\m_axis_tuser[3]_i_26_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[3]_i_27_n_0 ),
        .I4(\m_axis_tuser_reg[3]_i_12_n_4 ),
        .O(\m_axis_tuser[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h16C3803CBFFFD6FF)) 
    \m_axis_tuser[3]_i_90 
       (.I0(\m_axis_tuser[3]_i_110_n_0 ),
        .I1(\m_axis_tuser_reg[3]_i_64_n_4 ),
        .I2(\m_axis_tuser_reg[3]_i_31_n_4 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(\m_axis_tuser[3]_i_109_n_0 ),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[3]_i_90_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[3]_i_91 
       (.I0(\m_axis_tuser[3]_i_110_n_0 ),
        .I1(\m_axis_tuser_reg[3]_i_64_n_4 ),
        .I2(\m_axis_tuser[7]_i_53_n_0 ),
        .I3(\m_axis_tuser[3]_i_109_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[3]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[3]_i_92 
       (.I0(\m_axis_tuser[3]_i_115_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[3]_i_116_n_0 ),
        .I3(\m_axis_tuser[3]_i_117_n_0 ),
        .I4(\m_axis_tuser_reg[3]_i_97_n_4 ),
        .I5(\m_axis_tuser_reg[3]_i_64_n_4 ),
        .O(\m_axis_tuser[3]_i_92_n_0 ));
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[3]_i_93 
       (.I0(\m_axis_tuser[3]_i_115_n_0 ),
        .I1(\m_axis_tuser[3]_i_116_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[3]_i_117_n_0 ),
        .I4(\m_axis_tuser_reg[3]_i_97_n_4 ),
        .O(\m_axis_tuser[3]_i_93_n_0 ));
  LUT6 #(
    .INIT(64'h2BD4D42BFFFF0000)) 
    \m_axis_tuser[3]_i_94 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[3]_i_116_n_0 ),
        .I2(\m_axis_tuser[3]_i_117_n_0 ),
        .I3(DECIM_M[3]),
        .I4(\m_axis_tuser[3]_i_118_n_0 ),
        .I5(\m_axis_tuser_reg[3]_i_97_n_4 ),
        .O(\m_axis_tuser[3]_i_94_n_0 ));
  LUT5 #(
    .INIT(32'hF7755110)) 
    \m_axis_tuser[3]_i_95 
       (.I0(DECIM_M[3]),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[3]_i_116_n_0 ),
        .I3(\m_axis_tuser[3]_i_117_n_0 ),
        .I4(\m_axis_tuser[3]_i_118_n_0 ),
        .O(\m_axis_tuser[3]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'hE2E22EE22EE22E2E)) 
    \m_axis_tuser[3]_i_96 
       (.I0(\GEN_SLOT[3].val [4]),
        .I1(\m_axis_tuser[3]_i_114_n_0 ),
        .I2(\m_axis_tuser[6]_i_121_n_0 ),
        .I3(\m_axis_tuser[3]_i_120_n_0 ),
        .I4(\m_axis_tuser[3]_i_121_n_0 ),
        .I5(DECIM_M[2]),
        .O(\m_axis_tuser[3]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[3]_i_98 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_95_n_0 ),
        .I2(\m_axis_tuser[3]_i_96_n_0 ),
        .I3(\m_axis_tuser_reg[3]_i_97_n_4 ),
        .I4(\m_axis_tuser[3]_i_122_n_0 ),
        .I5(\m_axis_tuser[3]_i_130_n_0 ),
        .O(\m_axis_tuser[3]_i_98_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[3]_i_99 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[3]_i_63_n_0 ),
        .I2(\m_axis_tuser[3]_i_107_n_0 ),
        .O(\m_axis_tuser[3]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h4884CC00844800CC)) 
    \m_axis_tuser[4]_i_1 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_2_n_0 ),
        .I2(\m_axis_tuser[4]_i_3_n_0 ),
        .I3(\m_axis_tuser[4]_i_4_n_0 ),
        .I4(\GEN_SLOT[4].v1 ),
        .I5(DECIM_PHASE[4]),
        .O(mask_comb[4]));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[4]_i_10 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[4]_i_26_n_0 ),
        .I2(\m_axis_tuser[4]_i_27_n_0 ),
        .O(\m_axis_tuser[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h006AFF6AFF6A006A)) 
    \m_axis_tuser[4]_i_100 
       (.I0(phase0[4]),
        .I1(phase0[3]),
        .I2(phase0[2]),
        .I3(\m_axis_tuser[4]_i_93_n_0 ),
        .I4(\m_axis_tuser[6]_i_121_n_0 ),
        .I5(\m_axis_tuser[4]_i_130_n_0 ),
        .O(\m_axis_tuser[4]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[4]_i_101 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_99_n_0 ),
        .I2(\m_axis_tuser[4]_i_100_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_92_n_4 ),
        .I4(\m_axis_tuser[4]_i_117_n_0 ),
        .I5(\m_axis_tuser[4]_i_131_n_0 ),
        .O(\m_axis_tuser[4]_i_101_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[4]_i_102 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_66_n_0 ),
        .I2(\m_axis_tuser[4]_i_110_n_0 ),
        .O(\m_axis_tuser[4]_i_102_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[4]_i_103 
       (.I0(\m_axis_tuser[4]_i_127_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[4]_i_128_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_92_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[4]_i_98_n_0 ),
        .O(\m_axis_tuser[4]_i_103_n_0 ));
  LUT6 #(
    .INIT(64'h04D5514C455D10C4)) 
    \m_axis_tuser[4]_i_104 
       (.I0(DECIM_M[1]),
        .I1(phase0[0]),
        .I2(\m_axis_tuser[4]_i_93_n_0 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(phase0[1]),
        .I5(\m_axis_tuser_reg[4]_i_92_n_4 ),
        .O(\m_axis_tuser[4]_i_104_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[4]_i_105 
       (.I0(\m_axis_tuser[4]_i_109_n_0 ),
        .O(\m_axis_tuser[4]_i_105_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[4]_i_106 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_110_n_0 ),
        .I2(\m_axis_tuser[4]_i_66_n_0 ),
        .O(\m_axis_tuser[4]_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h0909909099000099)) 
    \m_axis_tuser[4]_i_107 
       (.I0(\m_axis_tuser[4]_i_98_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[4]_i_127_n_0 ),
        .I3(DECIM_M[2]),
        .I4(\m_axis_tuser[4]_i_128_n_0 ),
        .I5(\m_axis_tuser_reg[4]_i_92_n_4 ),
        .O(\m_axis_tuser[4]_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h2040498680104383)) 
    \m_axis_tuser[4]_i_108 
       (.I0(\m_axis_tuser_reg[4]_i_92_n_4 ),
        .I1(phase0[1]),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(\m_axis_tuser[4]_i_93_n_0 ),
        .I4(phase0[0]),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[4]_i_108_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[4]_i_109 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_99_n_0 ),
        .I2(\m_axis_tuser[4]_i_100_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_92_n_4 ),
        .I4(\m_axis_tuser[4]_i_117_n_0 ),
        .I5(\m_axis_tuser[4]_i_131_n_0 ),
        .O(\m_axis_tuser[4]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hC33C66995AA5FF00)) 
    \m_axis_tuser[4]_i_11 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_28_n_0 ),
        .I2(\m_axis_tuser[4]_i_29_n_0 ),
        .I3(\m_axis_tuser[4]_i_30_n_0 ),
        .I4(\m_axis_tuser_reg[4]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[4]_i_32_n_4 ),
        .O(\m_axis_tuser[4]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[4]_i_110 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_99_n_0 ),
        .I2(\m_axis_tuser[4]_i_100_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_92_n_4 ),
        .I4(\m_axis_tuser[4]_i_131_n_0 ),
        .O(\m_axis_tuser[4]_i_110_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[4]_i_111 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_65_n_0 ),
        .I2(\m_axis_tuser[4]_i_66_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_67_n_4 ),
        .I4(\m_axis_tuser[4]_i_110_n_0 ),
        .O(\m_axis_tuser[4]_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h1C2FE3D073BF8C40)) 
    \m_axis_tuser[4]_i_112 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[4]_i_93_n_0 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .I5(\m_axis_tuser_reg[4]_i_92_n_4 ),
        .O(\m_axis_tuser[4]_i_112_n_0 ));
  LUT4 #(
    .INIT(16'hB748)) 
    \m_axis_tuser[4]_i_113 
       (.I0(\m_axis_tuser_reg[4]_i_92_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser[4]_i_93_n_0 ),
        .I3(phase0[0]),
        .O(\m_axis_tuser[4]_i_113_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[4]_i_114 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_65_n_0 ),
        .I2(\m_axis_tuser[4]_i_66_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_67_n_4 ),
        .I4(\m_axis_tuser[4]_i_109_n_0 ),
        .I5(\m_axis_tuser[4]_i_110_n_0 ),
        .O(\m_axis_tuser[4]_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[4]_i_115 
       (.I0(\m_axis_tuser[4]_i_63_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[4]_i_64_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_31_n_4 ),
        .O(\m_axis_tuser[4]_i_115_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'h6C39)) 
    \m_axis_tuser[4]_i_116 
       (.I0(\m_axis_tuser_reg[4]_i_31_n_4 ),
        .I1(\m_axis_tuser[4]_i_64_n_0 ),
        .I2(\m_axis_tuser[4]_i_63_n_0 ),
        .I3(DECIM_M[3]),
        .O(\m_axis_tuser[4]_i_116_n_0 ));
  LUT6 #(
    .INIT(64'h2B2B022B00000000)) 
    \m_axis_tuser[4]_i_117 
       (.I0(DECIM_M[4]),
        .I1(phase0[4]),
        .I2(\m_axis_tuser[4]_i_130_n_0 ),
        .I3(phase0[3]),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[4]_i_93_n_0 ),
        .O(\m_axis_tuser[4]_i_117_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[4]_i_118 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_100_n_0 ),
        .I2(\m_axis_tuser[4]_i_131_n_0 ),
        .O(\m_axis_tuser[4]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h41415014054D7D71)) 
    \m_axis_tuser[4]_i_119 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[4]_i_93_n_0 ),
        .I2(phase0[3]),
        .I3(\phase0[0]_i_71_n_0 ),
        .I4(phase0[2]),
        .I5(DECIM_M[2]),
        .O(\m_axis_tuser[4]_i_119_n_0 ));
  LUT5 #(
    .INIT(32'h51753410)) 
    \m_axis_tuser[4]_i_120 
       (.I0(DECIM_M[1]),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(phase0[0]),
        .I3(\m_axis_tuser[4]_i_93_n_0 ),
        .I4(phase0[1]),
        .O(\m_axis_tuser[4]_i_120_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[4]_i_121 
       (.I0(\m_axis_tuser[4]_i_117_n_0 ),
        .O(\m_axis_tuser[4]_i_121_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[4]_i_122 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_131_n_0 ),
        .I2(\m_axis_tuser[4]_i_100_n_0 ),
        .O(\m_axis_tuser[4]_i_122_n_0 ));
  LUT6 #(
    .INIT(64'h08700D2085028052)) 
    \m_axis_tuser[4]_i_123 
       (.I0(\m_axis_tuser[4]_i_93_n_0 ),
        .I1(\phase0[0]_i_71_n_0 ),
        .I2(DECIM_M[2]),
        .I3(phase0[2]),
        .I4(DECIM_M[3]),
        .I5(phase0[3]),
        .O(\m_axis_tuser[4]_i_123_n_0 ));
  LUT5 #(
    .INIT(32'h28061805)) 
    \m_axis_tuser[4]_i_124 
       (.I0(phase0[1]),
        .I1(\m_axis_tuser[4]_i_93_n_0 ),
        .I2(phase0[0]),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[4]_i_124_n_0 ));
  LUT6 #(
    .INIT(64'h7717111177777717)) 
    \m_axis_tuser[4]_i_125 
       (.I0(phase0[2]),
        .I1(DECIM_M[2]),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(phase0[0]),
        .I4(phase0[1]),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[4]_i_125_n_0 ));
  LUT6 #(
    .INIT(64'h16C3BFFF803CD6FF)) 
    \m_axis_tuser[4]_i_126 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[4]_i_93_n_0 ),
        .I2(\m_axis_tuser_reg[4]_i_92_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(DECIM_M[1]),
        .I5(phase0[1]),
        .O(\m_axis_tuser[4]_i_126_n_0 ));
  LUT5 #(
    .INIT(32'h63FF0C6F)) 
    \m_axis_tuser[4]_i_127 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[4]_i_93_n_0 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .O(\m_axis_tuser[4]_i_127_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT4 #(
    .INIT(16'h827D)) 
    \m_axis_tuser[4]_i_128 
       (.I0(\m_axis_tuser[4]_i_93_n_0 ),
        .I1(\phase0[0]_i_71_n_0 ),
        .I2(DECIM_M[2]),
        .I3(phase0[2]),
        .O(\m_axis_tuser[4]_i_128_n_0 ));
  LUT6 #(
    .INIT(64'h39396CC693396C6C)) 
    \m_axis_tuser[4]_i_129 
       (.I0(\m_axis_tuser[4]_i_93_n_0 ),
        .I1(phase0[3]),
        .I2(DECIM_M[3]),
        .I3(\phase0[0]_i_71_n_0 ),
        .I4(phase0[2]),
        .I5(DECIM_M[2]),
        .O(\m_axis_tuser[4]_i_129_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h9F999909)) 
    \m_axis_tuser[4]_i_130 
       (.I0(phase0[3]),
        .I1(DECIM_M[3]),
        .I2(DECIM_M[2]),
        .I3(phase0[2]),
        .I4(\phase0[0]_i_71_n_0 ),
        .O(\m_axis_tuser[4]_i_130_n_0 ));
  LUT6 #(
    .INIT(64'h55C0AAC00000FF00)) 
    \m_axis_tuser[4]_i_131 
       (.I0(DECIM_M[4]),
        .I1(phase0[3]),
        .I2(phase0[2]),
        .I3(\m_axis_tuser[4]_i_93_n_0 ),
        .I4(\m_axis_tuser[4]_i_132_n_0 ),
        .I5(phase0[4]),
        .O(\m_axis_tuser[4]_i_131_n_0 ));
  LUT6 #(
    .INIT(64'hA220BAA251107551)) 
    \m_axis_tuser[4]_i_132 
       (.I0(DECIM_M[4]),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[4]_i_133_n_0 ),
        .I3(phase0[3]),
        .I4(DECIM_M[3]),
        .I5(phase0[4]),
        .O(\m_axis_tuser[4]_i_132_n_0 ));
  LUT6 #(
    .INIT(64'hE8EE8888EEEEE8EE)) 
    \m_axis_tuser[4]_i_133 
       (.I0(DECIM_M[2]),
        .I1(phase0[2]),
        .I2(phase0[0]),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(phase0[1]),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[4]_i_133_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[4]_i_14 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_9_n_0 ),
        .I2(\GEN_SLOT[4].v [4]),
        .I3(\m_axis_tuser_reg[4]_i_13_n_4 ),
        .I4(\GEN_SLOT[4].v__0 ),
        .I5(\GEN_SLOT[4].v [5]),
        .O(\m_axis_tuser[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hD5FF7F55D4FF2B00)) 
    \m_axis_tuser[4]_i_15 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_9_n_0 ),
        .I2(\GEN_SLOT[4].v [4]),
        .I3(\m_axis_tuser_reg[4]_i_13_n_4 ),
        .I4(\GEN_SLOT[4].v [5]),
        .I5(\m_axis_tuser[4]_i_4_n_0 ),
        .O(\m_axis_tuser[4]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[4]_i_16 
       (.I0(\m_axis_tuser[4]_i_24_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[4]_i_8_n_0 ),
        .O(\m_axis_tuser[4]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[4]_i_17 
       (.I0(DECIM_M[1]),
        .I1(\GEN_SLOT[4].v [1]),
        .I2(\m_axis_tuser_reg[4]_i_13_n_4 ),
        .I3(\m_axis_tuser[4]_i_53_n_0 ),
        .I4(\GEN_SLOT[4].v [0]),
        .O(\m_axis_tuser[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF2B00D4FF)) 
    \m_axis_tuser[4]_i_18 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_9_n_0 ),
        .I2(\GEN_SLOT[4].v [4]),
        .I3(\m_axis_tuser_reg[4]_i_13_n_4 ),
        .I4(\GEN_SLOT[4].v__0 ),
        .I5(\GEN_SLOT[4].v [5]),
        .O(\m_axis_tuser[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2A0080AA01005455)) 
    \m_axis_tuser[4]_i_19 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_9_n_0 ),
        .I2(\GEN_SLOT[4].v [4]),
        .I3(\m_axis_tuser_reg[4]_i_13_n_4 ),
        .I4(\GEN_SLOT[4].v [5]),
        .I5(\m_axis_tuser[4]_i_4_n_0 ),
        .O(\m_axis_tuser[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2882AA00822800AA)) 
    \m_axis_tuser[4]_i_2 
       (.I0(\m_axis_tuser[4]_i_6_n_0 ),
        .I1(\m_axis_tuser[4]_i_7_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[4]_i_8_n_0 ),
        .I4(\GEN_SLOT[4].v1 ),
        .I5(DECIM_PHASE[3]),
        .O(\m_axis_tuser[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[4]_i_20 
       (.I0(\m_axis_tuser[4]_i_8_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[4]_i_24_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[4]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h4884B77B00000000)) 
    \m_axis_tuser[4]_i_21 
       (.I0(\m_axis_tuser_reg[4]_i_13_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .I3(\m_axis_tuser_reg[4]_i_32_n_4 ),
        .I4(\m_axis_tuser[4]_i_55_n_0 ),
        .I5(\m_axis_tuser[4]_i_56_n_0 ),
        .O(\m_axis_tuser[4]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0999900090000999)) 
    \m_axis_tuser[4]_i_22 
       (.I0(cond_mod3_return),
        .I1(DECIM_PHASE[1]),
        .I2(\GEN_SLOT[4].v1 ),
        .I3(\m_axis_tuser[4]_i_53_n_0 ),
        .I4(\m_axis_tuser[4]_i_58_n_0 ),
        .I5(DECIM_PHASE[0]),
        .O(\m_axis_tuser[4]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[4]_i_23 
       (.I0(\GEN_SLOT[4].v [0]),
        .I1(\m_axis_tuser_reg[4]_i_13_n_4 ),
        .I2(\m_axis_tuser[4]_i_53_n_0 ),
        .I3(\GEN_SLOT[4].v [1]),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[4]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[4]_i_24 
       (.I0(\m_axis_tuser[4]_i_59_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[4]_i_60_n_0 ),
        .I3(\m_axis_tuser[4]_i_61_n_0 ),
        .I4(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[4]_i_13_n_4 ),
        .O(\m_axis_tuser[4]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[4]_i_25 
       (.I0(\m_axis_tuser[4]_i_59_n_0 ),
        .I1(\m_axis_tuser[4]_i_60_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[4]_i_61_n_0 ),
        .I4(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .O(\m_axis_tuser[4]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[4]_i_26 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[4]_i_60_n_0 ),
        .I2(\m_axis_tuser[4]_i_61_n_0 ),
        .O(\m_axis_tuser[4]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[4]_i_27 
       (.I0(\m_axis_tuser[4]_i_62_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[4]_i_63_n_0 ),
        .I3(\m_axis_tuser[4]_i_64_n_0 ),
        .I4(\m_axis_tuser_reg[4]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[4]_i_32_n_4 ),
        .O(\m_axis_tuser[4]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[4]_i_28 
       (.I0(\m_axis_tuser[4]_i_62_n_0 ),
        .I1(\m_axis_tuser[4]_i_63_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[4]_i_64_n_0 ),
        .I4(\m_axis_tuser_reg[4]_i_31_n_4 ),
        .O(\m_axis_tuser[4]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[4]_i_29 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[4]_i_63_n_0 ),
        .I2(\m_axis_tuser[4]_i_64_n_0 ),
        .O(\m_axis_tuser[4]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[4]_i_3 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[4]_i_7_n_0 ),
        .I2(\m_axis_tuser[4]_i_8_n_0 ),
        .O(\m_axis_tuser[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[4]_i_30 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_65_n_0 ),
        .I2(\m_axis_tuser[4]_i_66_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_67_n_4 ),
        .O(\m_axis_tuser[4]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[4]_i_33 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_28_n_0 ),
        .I2(\m_axis_tuser[4]_i_84_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_32_n_4 ),
        .I4(\m_axis_tuser[4]_i_85_n_0 ),
        .I5(\m_axis_tuser[4]_i_86_n_0 ),
        .O(\m_axis_tuser[4]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[4]_i_34 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_11_n_0 ),
        .I2(\m_axis_tuser[4]_i_87_n_0 ),
        .O(\m_axis_tuser[4]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[4]_i_35 
       (.I0(\m_axis_tuser[4]_i_61_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[4]_i_27_n_0 ),
        .O(\m_axis_tuser[4]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[4]_i_36 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[4]_i_88_n_0 ),
        .I2(\m_axis_tuser_reg[4]_i_32_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(\m_axis_tuser[4]_i_55_n_0 ),
        .O(\m_axis_tuser[4]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[4]_i_37 
       (.I0(\m_axis_tuser[4]_i_89_n_0 ),
        .O(\m_axis_tuser[4]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[4]_i_38 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_87_n_0 ),
        .I2(\m_axis_tuser[4]_i_11_n_0 ),
        .O(\m_axis_tuser[4]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[4]_i_39 
       (.I0(\m_axis_tuser[4]_i_27_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[4]_i_61_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[4]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hC33C66995AA5FF00)) 
    \m_axis_tuser[4]_i_4 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_9_n_0 ),
        .I2(\m_axis_tuser[4]_i_10_n_0 ),
        .I3(\m_axis_tuser[4]_i_11_n_0 ),
        .I4(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[4]_i_13_n_4 ),
        .O(\m_axis_tuser[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[4]_i_40 
       (.I0(\m_axis_tuser_reg[4]_i_32_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser[4]_i_55_n_0 ),
        .I3(DECIM_M[1]),
        .I4(\m_axis_tuser[4]_i_88_n_0 ),
        .O(\m_axis_tuser[4]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[4]_i_41 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_10_n_0 ),
        .I2(\m_axis_tuser[4]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .I4(\m_axis_tuser[4]_i_89_n_0 ),
        .I5(\m_axis_tuser[4]_i_87_n_0 ),
        .O(\m_axis_tuser[4]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[4]_i_42 
       (.I0(DECIM_M[4]),
        .I1(\GEN_SLOT[4].v [4]),
        .I2(\GEN_SLOT[4].v [5]),
        .O(\m_axis_tuser[4]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[4]_i_43 
       (.I0(\m_axis_tuser[4]_i_60_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[4]_i_61_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\GEN_SLOT[4].v [3]),
        .O(\m_axis_tuser[4]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0D45541C455D1C04)) 
    \m_axis_tuser[4]_i_44 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[4]_i_55_n_0 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_32_n_4 ),
        .I4(\m_axis_tuser[4]_i_88_n_0 ),
        .I5(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .O(\m_axis_tuser[4]_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[4]_i_45 
       (.I0(\GEN_SLOT[4].v__0 ),
        .O(\m_axis_tuser[4]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[4]_i_46 
       (.I0(DECIM_M[4]),
        .I1(\GEN_SLOT[4].v [5]),
        .I2(\GEN_SLOT[4].v [4]),
        .O(\m_axis_tuser[4]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h5AC30000)) 
    \m_axis_tuser[4]_i_47 
       (.I0(\m_axis_tuser[4]_i_60_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[4]_i_61_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .I4(\m_axis_tuser[4]_i_91_n_0 ),
        .O(\m_axis_tuser[4]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h9000090009999099)) 
    \m_axis_tuser[4]_i_48 
       (.I0(\GEN_SLOT[4].v [1]),
        .I1(DECIM_M[1]),
        .I2(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(\m_axis_tuser_reg[4]_i_32_n_4 ),
        .I5(\m_axis_tuser[4]_i_55_n_0 ),
        .O(\m_axis_tuser[4]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[4]_i_49 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_10_n_0 ),
        .I2(\m_axis_tuser[4]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .O(\GEN_SLOT[4].v [4]));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[4]_i_50 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_10_n_0 ),
        .I2(\m_axis_tuser[4]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .I4(\m_axis_tuser[4]_i_89_n_0 ),
        .I5(\m_axis_tuser[4]_i_87_n_0 ),
        .O(\GEN_SLOT[4].v__0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[4]_i_51 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_10_n_0 ),
        .I2(\m_axis_tuser[4]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .I4(\m_axis_tuser[4]_i_87_n_0 ),
        .O(\GEN_SLOT[4].v [5]));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[4]_i_52 
       (.I0(\m_axis_tuser[4]_i_55_n_0 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser_reg[4]_i_32_n_4 ),
        .I3(\m_axis_tuser[4]_i_88_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .O(\GEN_SLOT[4].v [1]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \m_axis_tuser[4]_i_53 
       (.I0(DECIM_M[2]),
        .I1(DECIM_M[1]),
        .I2(DECIM_M[3]),
        .I3(DECIM_M[4]),
        .I4(DECIM_M[0]),
        .O(\m_axis_tuser[4]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hB748)) 
    \m_axis_tuser[4]_i_54 
       (.I0(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser_reg[4]_i_32_n_4 ),
        .I3(\m_axis_tuser[4]_i_55_n_0 ),
        .O(\GEN_SLOT[4].v [0]));
  LUT6 #(
    .INIT(64'hB77B7BB748848448)) 
    \m_axis_tuser[4]_i_55 
       (.I0(\m_axis_tuser_reg[4]_i_31_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser_reg[4]_i_67_n_4 ),
        .I3(\m_axis_tuser_reg[4]_i_92_n_4 ),
        .I4(\m_axis_tuser[4]_i_93_n_0 ),
        .I5(phase0[0]),
        .O(\m_axis_tuser[4]_i_55_n_0 ));
  LUT5 #(
    .INIT(32'h4FB040BF)) 
    \m_axis_tuser[4]_i_56 
       (.I0(\GEN_SLOT[4].v [0]),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser_reg[4]_i_13_n_4 ),
        .I3(\GEN_SLOT[4].v [1]),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[4]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[4]_i_57 
       (.I0(\GEN_SLOT[4].v [0]),
        .I1(\m_axis_tuser[4]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[4]_i_13_n_4 ),
        .I3(\GEN_SLOT[4].v [1]),
        .I4(DECIM_M[1]),
        .I5(\GEN_SLOT[4].v1 ),
        .O(cond_mod3_return));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h7BB78448)) 
    \m_axis_tuser[4]_i_58 
       (.I0(\m_axis_tuser_reg[4]_i_13_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .I3(\m_axis_tuser_reg[4]_i_32_n_4 ),
        .I4(\m_axis_tuser[4]_i_55_n_0 ),
        .O(\m_axis_tuser[4]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h16C3803CBFFFD6FF)) 
    \m_axis_tuser[4]_i_59 
       (.I0(\m_axis_tuser[4]_i_55_n_0 ),
        .I1(\m_axis_tuser_reg[4]_i_32_n_4 ),
        .I2(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(\m_axis_tuser[4]_i_88_n_0 ),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[4]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h2882822888882222)) 
    \m_axis_tuser[4]_i_6 
       (.I0(\m_axis_tuser[4]_i_22_n_0 ),
        .I1(DECIM_PHASE[2]),
        .I2(\m_axis_tuser[4]_i_23_n_0 ),
        .I3(DECIM_M[2]),
        .I4(\m_axis_tuser[4]_i_24_n_0 ),
        .I5(\GEN_SLOT[4].v1 ),
        .O(\m_axis_tuser[4]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[4]_i_60 
       (.I0(\m_axis_tuser[4]_i_55_n_0 ),
        .I1(\m_axis_tuser_reg[4]_i_32_n_4 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(\m_axis_tuser[4]_i_88_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[4]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[4]_i_61 
       (.I0(\m_axis_tuser[4]_i_94_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[4]_i_95_n_0 ),
        .I3(\m_axis_tuser[4]_i_96_n_0 ),
        .I4(\m_axis_tuser_reg[4]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[4]_i_32_n_4 ),
        .O(\m_axis_tuser[4]_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[4]_i_62 
       (.I0(\m_axis_tuser[4]_i_94_n_0 ),
        .I1(\m_axis_tuser[4]_i_95_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[4]_i_96_n_0 ),
        .I4(\m_axis_tuser_reg[4]_i_31_n_4 ),
        .O(\m_axis_tuser[4]_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[4]_i_63 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[4]_i_95_n_0 ),
        .I2(\m_axis_tuser[4]_i_96_n_0 ),
        .O(\m_axis_tuser[4]_i_63_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[4]_i_64 
       (.I0(\m_axis_tuser[4]_i_97_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[4]_i_98_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_67_n_4 ),
        .O(\m_axis_tuser[4]_i_64_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[4]_i_65 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[4]_i_97_n_0 ),
        .I2(\m_axis_tuser[4]_i_98_n_0 ),
        .O(\m_axis_tuser[4]_i_65_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[4]_i_66 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_99_n_0 ),
        .I2(\m_axis_tuser[4]_i_100_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_92_n_4 ),
        .O(\m_axis_tuser[4]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[4]_i_68 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_65_n_0 ),
        .I2(\m_axis_tuser[4]_i_66_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_67_n_4 ),
        .I4(\m_axis_tuser[4]_i_109_n_0 ),
        .I5(\m_axis_tuser[4]_i_110_n_0 ),
        .O(\m_axis_tuser[4]_i_68_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[4]_i_69 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_30_n_0 ),
        .I2(\m_axis_tuser[4]_i_111_n_0 ),
        .O(\m_axis_tuser[4]_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[4]_i_7 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[4]_i_23_n_0 ),
        .I2(\m_axis_tuser[4]_i_24_n_0 ),
        .O(\m_axis_tuser[4]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[4]_i_70 
       (.I0(\m_axis_tuser[4]_i_96_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[4]_i_64_n_0 ),
        .O(\m_axis_tuser[4]_i_70_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[4]_i_71 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[4]_i_112_n_0 ),
        .I2(\m_axis_tuser_reg[4]_i_67_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(\m_axis_tuser[4]_i_113_n_0 ),
        .O(\m_axis_tuser[4]_i_71_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[4]_i_72 
       (.I0(\m_axis_tuser[4]_i_114_n_0 ),
        .O(\m_axis_tuser[4]_i_72_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[4]_i_73 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_111_n_0 ),
        .I2(\m_axis_tuser[4]_i_30_n_0 ),
        .O(\m_axis_tuser[4]_i_73_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[4]_i_74 
       (.I0(\m_axis_tuser[4]_i_64_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[4]_i_96_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[4]_i_74_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[4]_i_75 
       (.I0(\m_axis_tuser_reg[4]_i_67_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser[4]_i_113_n_0 ),
        .I3(DECIM_M[1]),
        .I4(\m_axis_tuser[4]_i_112_n_0 ),
        .O(\m_axis_tuser[4]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[4]_i_76 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_29_n_0 ),
        .I2(\m_axis_tuser[4]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_31_n_4 ),
        .I4(\m_axis_tuser[4]_i_114_n_0 ),
        .I5(\m_axis_tuser[4]_i_111_n_0 ),
        .O(\m_axis_tuser[4]_i_76_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[4]_i_77 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_84_n_0 ),
        .I2(\m_axis_tuser[4]_i_86_n_0 ),
        .O(\m_axis_tuser[4]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[4]_i_78 
       (.I0(\m_axis_tuser[4]_i_95_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[4]_i_96_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_31_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[4]_i_115_n_0 ),
        .O(\m_axis_tuser[4]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h0D45541C455D1C04)) 
    \m_axis_tuser[4]_i_79 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[4]_i_113_n_0 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_67_n_4 ),
        .I4(\m_axis_tuser[4]_i_112_n_0 ),
        .I5(\m_axis_tuser_reg[4]_i_31_n_4 ),
        .O(\m_axis_tuser[4]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[4]_i_8 
       (.I0(\m_axis_tuser[4]_i_25_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[4]_i_26_n_0 ),
        .I3(\m_axis_tuser[4]_i_27_n_0 ),
        .I4(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[4]_i_13_n_4 ),
        .O(\m_axis_tuser[4]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[4]_i_80 
       (.I0(\m_axis_tuser[4]_i_85_n_0 ),
        .O(\m_axis_tuser[4]_i_80_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[4]_i_81 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_86_n_0 ),
        .I2(\m_axis_tuser[4]_i_84_n_0 ),
        .O(\m_axis_tuser[4]_i_81_n_0 ));
  LUT5 #(
    .INIT(32'h5AC30000)) 
    \m_axis_tuser[4]_i_82 
       (.I0(\m_axis_tuser[4]_i_95_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[4]_i_96_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_31_n_4 ),
        .I4(\m_axis_tuser[4]_i_116_n_0 ),
        .O(\m_axis_tuser[4]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'h0469804880120433)) 
    \m_axis_tuser[4]_i_83 
       (.I0(\m_axis_tuser_reg[4]_i_31_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser_reg[4]_i_67_n_4 ),
        .I3(\m_axis_tuser[4]_i_113_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser[4]_i_112_n_0 ),
        .O(\m_axis_tuser[4]_i_83_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[4]_i_84 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_29_n_0 ),
        .I2(\m_axis_tuser[4]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_31_n_4 ),
        .O(\m_axis_tuser[4]_i_84_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[4]_i_85 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_29_n_0 ),
        .I2(\m_axis_tuser[4]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_31_n_4 ),
        .I4(\m_axis_tuser[4]_i_114_n_0 ),
        .I5(\m_axis_tuser[4]_i_111_n_0 ),
        .O(\m_axis_tuser[4]_i_85_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[4]_i_86 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_29_n_0 ),
        .I2(\m_axis_tuser[4]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_31_n_4 ),
        .I4(\m_axis_tuser[4]_i_111_n_0 ),
        .O(\m_axis_tuser[4]_i_86_n_0 ));
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[4]_i_87 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_28_n_0 ),
        .I2(\m_axis_tuser[4]_i_84_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_32_n_4 ),
        .I4(\m_axis_tuser[4]_i_86_n_0 ),
        .O(\m_axis_tuser[4]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[4]_i_88 
       (.I0(\m_axis_tuser[4]_i_113_n_0 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\m_axis_tuser_reg[4]_i_67_n_4 ),
        .I3(\m_axis_tuser[4]_i_112_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser_reg[4]_i_31_n_4 ),
        .O(\m_axis_tuser[4]_i_88_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[4]_i_89 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_28_n_0 ),
        .I2(\m_axis_tuser[4]_i_84_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_32_n_4 ),
        .I4(\m_axis_tuser[4]_i_85_n_0 ),
        .I5(\m_axis_tuser[4]_i_86_n_0 ),
        .O(\m_axis_tuser[4]_i_89_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[4]_i_9 
       (.I0(\m_axis_tuser[4]_i_25_n_0 ),
        .I1(\m_axis_tuser[4]_i_26_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[4]_i_27_n_0 ),
        .I4(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .O(\m_axis_tuser[4]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[4]_i_90 
       (.I0(\m_axis_tuser[4]_i_26_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[4]_i_27_n_0 ),
        .I3(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .O(\GEN_SLOT[4].v [3]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT4 #(
    .INIT(16'h6C39)) 
    \m_axis_tuser[4]_i_91 
       (.I0(\m_axis_tuser_reg[4]_i_12_n_4 ),
        .I1(\m_axis_tuser[4]_i_27_n_0 ),
        .I2(\m_axis_tuser[4]_i_26_n_0 ),
        .I3(DECIM_M[3]),
        .O(\m_axis_tuser[4]_i_91_n_0 ));
  LUT6 #(
    .INIT(64'hFF5DDF45DF455D04)) 
    \m_axis_tuser[4]_i_93 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[4]_i_125_n_0 ),
        .I2(DECIM_M[3]),
        .I3(phase0[4]),
        .I4(phase0[3]),
        .I5(phase0[2]),
        .O(\m_axis_tuser[4]_i_93_n_0 ));
  LUT6 #(
    .INIT(64'h16C3803CBFFFD6FF)) 
    \m_axis_tuser[4]_i_94 
       (.I0(\m_axis_tuser[4]_i_113_n_0 ),
        .I1(\m_axis_tuser_reg[4]_i_67_n_4 ),
        .I2(\m_axis_tuser_reg[4]_i_31_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(\m_axis_tuser[4]_i_112_n_0 ),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[4]_i_94_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[4]_i_95 
       (.I0(\m_axis_tuser[4]_i_113_n_0 ),
        .I1(\m_axis_tuser_reg[4]_i_67_n_4 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(\m_axis_tuser[4]_i_112_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[4]_i_95_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[4]_i_96 
       (.I0(\m_axis_tuser[4]_i_126_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[4]_i_127_n_0 ),
        .I3(\m_axis_tuser[4]_i_128_n_0 ),
        .I4(\m_axis_tuser_reg[4]_i_92_n_4 ),
        .I5(\m_axis_tuser_reg[4]_i_67_n_4 ),
        .O(\m_axis_tuser[4]_i_96_n_0 ));
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[4]_i_97 
       (.I0(\m_axis_tuser[4]_i_126_n_0 ),
        .I1(\m_axis_tuser[4]_i_127_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[4]_i_128_n_0 ),
        .I4(\m_axis_tuser_reg[4]_i_92_n_4 ),
        .O(\m_axis_tuser[4]_i_97_n_0 ));
  LUT6 #(
    .INIT(64'h2BD4D42BFFFF0000)) 
    \m_axis_tuser[4]_i_98 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[4]_i_127_n_0 ),
        .I2(\m_axis_tuser[4]_i_128_n_0 ),
        .I3(DECIM_M[3]),
        .I4(\m_axis_tuser[4]_i_129_n_0 ),
        .I5(\m_axis_tuser_reg[4]_i_92_n_4 ),
        .O(\m_axis_tuser[4]_i_98_n_0 ));
  LUT5 #(
    .INIT(32'hF7755110)) 
    \m_axis_tuser[4]_i_99 
       (.I0(DECIM_M[3]),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[4]_i_127_n_0 ),
        .I3(\m_axis_tuser[4]_i_128_n_0 ),
        .I4(\m_axis_tuser[4]_i_129_n_0 ),
        .O(\m_axis_tuser[4]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h4884CC00844800CC)) 
    \m_axis_tuser[5]_i_1 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_2_n_0 ),
        .I2(\m_axis_tuser[5]_i_3_n_0 ),
        .I3(\m_axis_tuser[5]_i_4_n_0 ),
        .I4(\GEN_SLOT[5].v1 ),
        .I5(DECIM_PHASE[4]),
        .O(mask_comb[5]));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[5]_i_10 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[5]_i_26_n_0 ),
        .I2(\m_axis_tuser[5]_i_27_n_0 ),
        .O(\m_axis_tuser[5]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[5]_i_100 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_64_n_0 ),
        .I2(\m_axis_tuser[5]_i_108_n_0 ),
        .O(\m_axis_tuser[5]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[5]_i_101 
       (.I0(\m_axis_tuser[5]_i_117_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[5]_i_118_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_98_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[5]_i_95_n_0 ),
        .O(\m_axis_tuser[5]_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h4531105751130475)) 
    \m_axis_tuser[5]_i_102 
       (.I0(DECIM_M[1]),
        .I1(phase0[0]),
        .I2(\m_axis_tuser[5]_i_115_n_0 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(phase0[1]),
        .I5(\m_axis_tuser_reg[5]_i_98_n_4 ),
        .O(\m_axis_tuser[5]_i_102_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[5]_i_103 
       (.I0(\m_axis_tuser[5]_i_107_n_0 ),
        .O(\m_axis_tuser[5]_i_103_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[5]_i_104 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_108_n_0 ),
        .I2(\m_axis_tuser[5]_i_64_n_0 ),
        .O(\m_axis_tuser[5]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h0909909099000099)) 
    \m_axis_tuser[5]_i_105 
       (.I0(\m_axis_tuser[5]_i_95_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[5]_i_117_n_0 ),
        .I3(DECIM_M[2]),
        .I4(\m_axis_tuser[5]_i_118_n_0 ),
        .I5(\m_axis_tuser_reg[5]_i_98_n_4 ),
        .O(\m_axis_tuser[5]_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h162920401C2C8010)) 
    \m_axis_tuser[5]_i_106 
       (.I0(\m_axis_tuser_reg[5]_i_98_n_4 ),
        .I1(phase0[1]),
        .I2(\m_axis_tuser[5]_i_53_n_0 ),
        .I3(\m_axis_tuser[5]_i_115_n_0 ),
        .I4(phase0[0]),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[5]_i_106_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[5]_i_107 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_96_n_0 ),
        .I2(\m_axis_tuser[5]_i_97_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_98_n_4 ),
        .I4(\m_axis_tuser[5]_i_122_n_0 ),
        .I5(\m_axis_tuser[5]_i_130_n_0 ),
        .O(\m_axis_tuser[5]_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[5]_i_108 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_96_n_0 ),
        .I2(\m_axis_tuser[5]_i_97_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_98_n_4 ),
        .I4(\m_axis_tuser[5]_i_130_n_0 ),
        .O(\m_axis_tuser[5]_i_108_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[5]_i_109 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_63_n_0 ),
        .I2(\m_axis_tuser[5]_i_64_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_65_n_4 ),
        .I4(\m_axis_tuser[5]_i_108_n_0 ),
        .O(\m_axis_tuser[5]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hC33C66995AA5FF00)) 
    \m_axis_tuser[5]_i_11 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_28_n_0 ),
        .I2(\m_axis_tuser[5]_i_29_n_0 ),
        .I3(\m_axis_tuser[5]_i_30_n_0 ),
        .I4(\m_axis_tuser_reg[5]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[5]_i_32_n_4 ),
        .O(\m_axis_tuser[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h86B5794A19D5E62A)) 
    \m_axis_tuser[5]_i_110 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[5]_i_115_n_0 ),
        .I2(\m_axis_tuser[5]_i_53_n_0 ),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .I5(\m_axis_tuser_reg[5]_i_98_n_4 ),
        .O(\m_axis_tuser[5]_i_110_n_0 ));
  LUT4 #(
    .INIT(16'h48B7)) 
    \m_axis_tuser[5]_i_111 
       (.I0(\m_axis_tuser_reg[5]_i_98_n_4 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser[5]_i_115_n_0 ),
        .I3(phase0[0]),
        .O(\m_axis_tuser[5]_i_111_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[5]_i_112 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_63_n_0 ),
        .I2(\m_axis_tuser[5]_i_64_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_65_n_4 ),
        .I4(\m_axis_tuser[5]_i_107_n_0 ),
        .I5(\m_axis_tuser[5]_i_108_n_0 ),
        .O(\m_axis_tuser[5]_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[5]_i_113 
       (.I0(\m_axis_tuser[5]_i_61_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[5]_i_62_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_31_n_4 ),
        .O(\m_axis_tuser[5]_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h6C39)) 
    \m_axis_tuser[5]_i_114 
       (.I0(\m_axis_tuser_reg[5]_i_31_n_4 ),
        .I1(\m_axis_tuser[5]_i_62_n_0 ),
        .I2(\m_axis_tuser[5]_i_61_n_0 ),
        .I3(DECIM_M[3]),
        .O(\m_axis_tuser[5]_i_114_n_0 ));
  LUT6 #(
    .INIT(64'hFF5DDF45DF455D04)) 
    \m_axis_tuser[5]_i_115 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_131_n_0 ),
        .I2(DECIM_M[3]),
        .I3(phase0[4]),
        .I4(phase0[3]),
        .I5(\m_axis_tuser[5]_i_132_n_0 ),
        .O(\m_axis_tuser[5]_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h0169FDFF68966BFF)) 
    \m_axis_tuser[5]_i_116 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[5]_i_115_n_0 ),
        .I2(\m_axis_tuser_reg[5]_i_98_n_4 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(DECIM_M[1]),
        .I5(phase0[1]),
        .O(\m_axis_tuser[5]_i_116_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h19DF86BF)) 
    \m_axis_tuser[5]_i_117 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[5]_i_115_n_0 ),
        .I2(\m_axis_tuser[5]_i_53_n_0 ),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .O(\m_axis_tuser[5]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'hD11D1DD11DD1D11D)) 
    \m_axis_tuser[5]_i_118 
       (.I0(\m_axis_tuser[5]_i_133_n_0 ),
        .I1(\m_axis_tuser[5]_i_115_n_0 ),
        .I2(phase0[2]),
        .I3(DECIM_M[2]),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser[5]_i_134_n_0 ),
        .O(\m_axis_tuser[5]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h2EE22E2EE22EE2E2)) 
    \m_axis_tuser[5]_i_119 
       (.I0(\GEN_SLOT[5].val [3]),
        .I1(\m_axis_tuser[5]_i_115_n_0 ),
        .I2(\m_axis_tuser[3]_i_121_n_0 ),
        .I3(phase0[2]),
        .I4(DECIM_M[2]),
        .I5(\m_axis_tuser[5]_i_136_n_0 ),
        .O(\m_axis_tuser[5]_i_119_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h07FFF800)) 
    \m_axis_tuser[5]_i_120 
       (.I0(phase0[0]),
        .I1(phase0[1]),
        .I2(phase0[2]),
        .I3(phase0[3]),
        .I4(phase0[4]),
        .O(\GEN_SLOT[5].val [4]));
  LUT6 #(
    .INIT(64'h9F99FF9F99099F99)) 
    \m_axis_tuser[5]_i_121 
       (.I0(phase0[3]),
        .I1(DECIM_M[3]),
        .I2(DECIM_M[1]),
        .I3(phase0[2]),
        .I4(DECIM_M[2]),
        .I5(\m_axis_tuser[5]_i_134_n_0 ),
        .O(\m_axis_tuser[5]_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h2B2B022B00000000)) 
    \m_axis_tuser[5]_i_122 
       (.I0(DECIM_M[4]),
        .I1(phase0[4]),
        .I2(\m_axis_tuser[5]_i_121_n_0 ),
        .I3(phase0[3]),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[5]_i_115_n_0 ),
        .O(\m_axis_tuser[5]_i_122_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[5]_i_123 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_97_n_0 ),
        .I2(\m_axis_tuser[5]_i_130_n_0 ),
        .O(\m_axis_tuser[5]_i_123_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[5]_i_124 
       (.I0(\m_axis_tuser[5]_i_118_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[5]_i_119_n_0 ),
        .O(\m_axis_tuser[5]_i_124_n_0 ));
  LUT5 #(
    .INIT(32'h40571531)) 
    \m_axis_tuser[5]_i_125 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser[5]_i_115_n_0 ),
        .I3(phase0[0]),
        .I4(phase0[1]),
        .O(\m_axis_tuser[5]_i_125_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[5]_i_126 
       (.I0(\m_axis_tuser[5]_i_122_n_0 ),
        .O(\m_axis_tuser[5]_i_126_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[5]_i_127 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_130_n_0 ),
        .I2(\m_axis_tuser[5]_i_97_n_0 ),
        .O(\m_axis_tuser[5]_i_127_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[5]_i_128 
       (.I0(\m_axis_tuser[5]_i_119_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[5]_i_118_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[5]_i_128_n_0 ));
  LUT5 #(
    .INIT(32'h42844188)) 
    \m_axis_tuser[5]_i_129 
       (.I0(phase0[1]),
        .I1(phase0[0]),
        .I2(\m_axis_tuser[5]_i_115_n_0 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[5]_i_129_n_0 ));
  LUT6 #(
    .INIT(64'h5C0C0CAC00A0A0F0)) 
    \m_axis_tuser[5]_i_130 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_137_n_0 ),
        .I2(\m_axis_tuser[5]_i_115_n_0 ),
        .I3(\m_axis_tuser[6]_i_138_n_0 ),
        .I4(\m_axis_tuser[5]_i_121_n_0 ),
        .I5(phase0[4]),
        .O(\m_axis_tuser[5]_i_130_n_0 ));
  LUT6 #(
    .INIT(64'h227717172B777717)) 
    \m_axis_tuser[5]_i_131 
       (.I0(phase0[2]),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[1]),
        .I3(phase0[0]),
        .I4(phase0[1]),
        .I5(\m_axis_tuser[5]_i_53_n_0 ),
        .O(\m_axis_tuser[5]_i_131_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \m_axis_tuser[5]_i_132 
       (.I0(phase0[0]),
        .I1(phase0[1]),
        .I2(phase0[2]),
        .O(\m_axis_tuser[5]_i_132_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \m_axis_tuser[5]_i_133 
       (.I0(phase0[0]),
        .I1(phase0[1]),
        .I2(phase0[2]),
        .O(\m_axis_tuser[5]_i_133_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'hF440)) 
    \m_axis_tuser[5]_i_134 
       (.I0(\m_axis_tuser[5]_i_53_n_0 ),
        .I1(phase0[0]),
        .I2(phase0[1]),
        .I3(DECIM_M[1]),
        .O(\m_axis_tuser[5]_i_134_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'h15EA)) 
    \m_axis_tuser[5]_i_135 
       (.I0(phase0[2]),
        .I1(phase0[1]),
        .I2(phase0[0]),
        .I3(phase0[3]),
        .O(\GEN_SLOT[5].val [3]));
  LUT6 #(
    .INIT(64'h666606006F666666)) 
    \m_axis_tuser[5]_i_136 
       (.I0(phase0[2]),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[5]_i_53_n_0 ),
        .I3(phase0[0]),
        .I4(phase0[1]),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[5]_i_136_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT4 #(
    .INIT(16'hA888)) 
    \m_axis_tuser[5]_i_137 
       (.I0(phase0[3]),
        .I1(phase0[2]),
        .I2(phase0[1]),
        .I3(phase0[0]),
        .O(\m_axis_tuser[5]_i_137_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[5]_i_14 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_9_n_0 ),
        .I2(\GEN_SLOT[5].v [4]),
        .I3(\m_axis_tuser_reg[5]_i_13_n_4 ),
        .I4(\GEN_SLOT[5].v__0 ),
        .I5(\GEN_SLOT[5].v [5]),
        .O(\m_axis_tuser[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hD5FF7F55D4FF2B00)) 
    \m_axis_tuser[5]_i_15 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_9_n_0 ),
        .I2(\GEN_SLOT[5].v [4]),
        .I3(\m_axis_tuser_reg[5]_i_13_n_4 ),
        .I4(\GEN_SLOT[5].v [5]),
        .I5(\m_axis_tuser[5]_i_4_n_0 ),
        .O(\m_axis_tuser[5]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[5]_i_16 
       (.I0(\m_axis_tuser[5]_i_24_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[5]_i_8_n_0 ),
        .O(\m_axis_tuser[5]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[5]_i_17 
       (.I0(DECIM_M[1]),
        .I1(\GEN_SLOT[5].v [1]),
        .I2(\m_axis_tuser_reg[5]_i_13_n_4 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(\GEN_SLOT[5].v [0]),
        .O(\m_axis_tuser[5]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF2B00D4FF)) 
    \m_axis_tuser[5]_i_18 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_9_n_0 ),
        .I2(\GEN_SLOT[5].v [4]),
        .I3(\m_axis_tuser_reg[5]_i_13_n_4 ),
        .I4(\GEN_SLOT[5].v__0 ),
        .I5(\GEN_SLOT[5].v [5]),
        .O(\m_axis_tuser[5]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2A0080AA01005455)) 
    \m_axis_tuser[5]_i_19 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_9_n_0 ),
        .I2(\GEN_SLOT[5].v [4]),
        .I3(\m_axis_tuser_reg[5]_i_13_n_4 ),
        .I4(\GEN_SLOT[5].v [5]),
        .I5(\m_axis_tuser[5]_i_4_n_0 ),
        .O(\m_axis_tuser[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2882AA00822800AA)) 
    \m_axis_tuser[5]_i_2 
       (.I0(\m_axis_tuser[5]_i_6_n_0 ),
        .I1(\m_axis_tuser[5]_i_7_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[5]_i_8_n_0 ),
        .I4(\GEN_SLOT[5].v1 ),
        .I5(DECIM_PHASE[3]),
        .O(\m_axis_tuser[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[5]_i_20 
       (.I0(\m_axis_tuser[5]_i_8_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[5]_i_24_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[5]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[5]_i_21 
       (.I0(\m_axis_tuser_reg[5]_i_13_n_4 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\GEN_SLOT[5].v [0]),
        .I3(DECIM_M[1]),
        .I4(\GEN_SLOT[5].v [1]),
        .O(\m_axis_tuser[5]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0999900090000999)) 
    \m_axis_tuser[5]_i_22 
       (.I0(cond_mod4_return),
        .I1(DECIM_PHASE[1]),
        .I2(\GEN_SLOT[5].v1 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(\m_axis_tuser[5]_i_56_n_0 ),
        .I5(DECIM_PHASE[0]),
        .O(\m_axis_tuser[5]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[5]_i_23 
       (.I0(\GEN_SLOT[5].v [0]),
        .I1(\m_axis_tuser_reg[5]_i_13_n_4 ),
        .I2(\m_axis_tuser[5]_i_53_n_0 ),
        .I3(\GEN_SLOT[5].v [1]),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[5]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[5]_i_24 
       (.I0(\m_axis_tuser[5]_i_57_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[5]_i_58_n_0 ),
        .I3(\m_axis_tuser[5]_i_59_n_0 ),
        .I4(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[5]_i_13_n_4 ),
        .O(\m_axis_tuser[5]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[5]_i_25 
       (.I0(\m_axis_tuser[5]_i_57_n_0 ),
        .I1(\m_axis_tuser[5]_i_58_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[5]_i_59_n_0 ),
        .I4(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .O(\m_axis_tuser[5]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[5]_i_26 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[5]_i_58_n_0 ),
        .I2(\m_axis_tuser[5]_i_59_n_0 ),
        .O(\m_axis_tuser[5]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[5]_i_27 
       (.I0(\m_axis_tuser[5]_i_60_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[5]_i_61_n_0 ),
        .I3(\m_axis_tuser[5]_i_62_n_0 ),
        .I4(\m_axis_tuser_reg[5]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[5]_i_32_n_4 ),
        .O(\m_axis_tuser[5]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[5]_i_28 
       (.I0(\m_axis_tuser[5]_i_60_n_0 ),
        .I1(\m_axis_tuser[5]_i_61_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[5]_i_62_n_0 ),
        .I4(\m_axis_tuser_reg[5]_i_31_n_4 ),
        .O(\m_axis_tuser[5]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[5]_i_29 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[5]_i_61_n_0 ),
        .I2(\m_axis_tuser[5]_i_62_n_0 ),
        .O(\m_axis_tuser[5]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[5]_i_3 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[5]_i_7_n_0 ),
        .I2(\m_axis_tuser[5]_i_8_n_0 ),
        .O(\m_axis_tuser[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[5]_i_30 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_63_n_0 ),
        .I2(\m_axis_tuser[5]_i_64_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_65_n_4 ),
        .O(\m_axis_tuser[5]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[5]_i_33 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_28_n_0 ),
        .I2(\m_axis_tuser[5]_i_82_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_32_n_4 ),
        .I4(\m_axis_tuser[5]_i_83_n_0 ),
        .I5(\m_axis_tuser[5]_i_84_n_0 ),
        .O(\m_axis_tuser[5]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[5]_i_34 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_11_n_0 ),
        .I2(\m_axis_tuser[5]_i_85_n_0 ),
        .O(\m_axis_tuser[5]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[5]_i_35 
       (.I0(\m_axis_tuser[5]_i_59_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[5]_i_27_n_0 ),
        .O(\m_axis_tuser[5]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[5]_i_36 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[5]_i_86_n_0 ),
        .I2(\m_axis_tuser_reg[5]_i_32_n_4 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(\m_axis_tuser[5]_i_87_n_0 ),
        .O(\m_axis_tuser[5]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[5]_i_37 
       (.I0(\m_axis_tuser[5]_i_88_n_0 ),
        .O(\m_axis_tuser[5]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[5]_i_38 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_85_n_0 ),
        .I2(\m_axis_tuser[5]_i_11_n_0 ),
        .O(\m_axis_tuser[5]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[5]_i_39 
       (.I0(\m_axis_tuser[5]_i_27_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[5]_i_59_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[5]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hC33C66995AA5FF00)) 
    \m_axis_tuser[5]_i_4 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_9_n_0 ),
        .I2(\m_axis_tuser[5]_i_10_n_0 ),
        .I3(\m_axis_tuser[5]_i_11_n_0 ),
        .I4(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[5]_i_13_n_4 ),
        .O(\m_axis_tuser[5]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[5]_i_40 
       (.I0(\m_axis_tuser_reg[5]_i_32_n_4 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser[5]_i_87_n_0 ),
        .I3(DECIM_M[1]),
        .I4(\m_axis_tuser[5]_i_86_n_0 ),
        .O(\m_axis_tuser[5]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[5]_i_41 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_10_n_0 ),
        .I2(\m_axis_tuser[5]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .I4(\m_axis_tuser[5]_i_88_n_0 ),
        .I5(\m_axis_tuser[5]_i_85_n_0 ),
        .O(\m_axis_tuser[5]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[5]_i_42 
       (.I0(DECIM_M[4]),
        .I1(\GEN_SLOT[5].v [4]),
        .I2(\GEN_SLOT[5].v [5]),
        .O(\m_axis_tuser[5]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[5]_i_43 
       (.I0(\m_axis_tuser[5]_i_58_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[5]_i_59_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\GEN_SLOT[5].v [3]),
        .O(\m_axis_tuser[5]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0D45541C455D1C04)) 
    \m_axis_tuser[5]_i_44 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[5]_i_87_n_0 ),
        .I2(\m_axis_tuser[5]_i_53_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_32_n_4 ),
        .I4(\m_axis_tuser[5]_i_86_n_0 ),
        .I5(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .O(\m_axis_tuser[5]_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[5]_i_45 
       (.I0(\GEN_SLOT[5].v__0 ),
        .O(\m_axis_tuser[5]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[5]_i_46 
       (.I0(DECIM_M[4]),
        .I1(\GEN_SLOT[5].v [5]),
        .I2(\GEN_SLOT[5].v [4]),
        .O(\m_axis_tuser[5]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h5AC30000)) 
    \m_axis_tuser[5]_i_47 
       (.I0(\m_axis_tuser[5]_i_58_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[5]_i_59_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .I4(\m_axis_tuser[5]_i_90_n_0 ),
        .O(\m_axis_tuser[5]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h9000090009999099)) 
    \m_axis_tuser[5]_i_48 
       (.I0(\GEN_SLOT[5].v [1]),
        .I1(DECIM_M[1]),
        .I2(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(\m_axis_tuser_reg[5]_i_32_n_4 ),
        .I5(\m_axis_tuser[5]_i_87_n_0 ),
        .O(\m_axis_tuser[5]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[5]_i_49 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_10_n_0 ),
        .I2(\m_axis_tuser[5]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .O(\GEN_SLOT[5].v [4]));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[5]_i_50 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_10_n_0 ),
        .I2(\m_axis_tuser[5]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .I4(\m_axis_tuser[5]_i_88_n_0 ),
        .I5(\m_axis_tuser[5]_i_85_n_0 ),
        .O(\GEN_SLOT[5].v__0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[5]_i_51 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_10_n_0 ),
        .I2(\m_axis_tuser[5]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .I4(\m_axis_tuser[5]_i_85_n_0 ),
        .O(\GEN_SLOT[5].v [5]));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[5]_i_52 
       (.I0(\m_axis_tuser[5]_i_87_n_0 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[5]_i_32_n_4 ),
        .I3(\m_axis_tuser[5]_i_86_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .O(\GEN_SLOT[5].v [1]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \m_axis_tuser[5]_i_53 
       (.I0(DECIM_M[2]),
        .I1(DECIM_M[1]),
        .I2(DECIM_M[3]),
        .I3(DECIM_M[4]),
        .I4(DECIM_M[0]),
        .O(\m_axis_tuser[5]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'hB748)) 
    \m_axis_tuser[5]_i_54 
       (.I0(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[5]_i_32_n_4 ),
        .I3(\m_axis_tuser[5]_i_87_n_0 ),
        .O(\GEN_SLOT[5].v [0]));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[5]_i_55 
       (.I0(\GEN_SLOT[5].v [0]),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[5]_i_13_n_4 ),
        .I3(\GEN_SLOT[5].v [1]),
        .I4(DECIM_M[1]),
        .I5(\GEN_SLOT[5].v1 ),
        .O(cond_mod4_return));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h7BB78448)) 
    \m_axis_tuser[5]_i_56 
       (.I0(\m_axis_tuser_reg[5]_i_13_n_4 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .I3(\m_axis_tuser_reg[5]_i_32_n_4 ),
        .I4(\m_axis_tuser[5]_i_87_n_0 ),
        .O(\m_axis_tuser[5]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h16C3803CBFFFD6FF)) 
    \m_axis_tuser[5]_i_57 
       (.I0(\m_axis_tuser[5]_i_87_n_0 ),
        .I1(\m_axis_tuser_reg[5]_i_32_n_4 ),
        .I2(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(\m_axis_tuser[5]_i_86_n_0 ),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[5]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[5]_i_58 
       (.I0(\m_axis_tuser[5]_i_87_n_0 ),
        .I1(\m_axis_tuser_reg[5]_i_32_n_4 ),
        .I2(\m_axis_tuser[5]_i_53_n_0 ),
        .I3(\m_axis_tuser[5]_i_86_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[5]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[5]_i_59 
       (.I0(\m_axis_tuser[5]_i_91_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[5]_i_92_n_0 ),
        .I3(\m_axis_tuser[5]_i_93_n_0 ),
        .I4(\m_axis_tuser_reg[5]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[5]_i_32_n_4 ),
        .O(\m_axis_tuser[5]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h2882822888882222)) 
    \m_axis_tuser[5]_i_6 
       (.I0(\m_axis_tuser[5]_i_22_n_0 ),
        .I1(DECIM_PHASE[2]),
        .I2(\m_axis_tuser[5]_i_23_n_0 ),
        .I3(DECIM_M[2]),
        .I4(\m_axis_tuser[5]_i_24_n_0 ),
        .I5(\GEN_SLOT[5].v1 ),
        .O(\m_axis_tuser[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[5]_i_60 
       (.I0(\m_axis_tuser[5]_i_91_n_0 ),
        .I1(\m_axis_tuser[5]_i_92_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[5]_i_93_n_0 ),
        .I4(\m_axis_tuser_reg[5]_i_31_n_4 ),
        .O(\m_axis_tuser[5]_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[5]_i_61 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[5]_i_92_n_0 ),
        .I2(\m_axis_tuser[5]_i_93_n_0 ),
        .O(\m_axis_tuser[5]_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[5]_i_62 
       (.I0(\m_axis_tuser[5]_i_94_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[5]_i_95_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_65_n_4 ),
        .O(\m_axis_tuser[5]_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[5]_i_63 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[5]_i_94_n_0 ),
        .I2(\m_axis_tuser[5]_i_95_n_0 ),
        .O(\m_axis_tuser[5]_i_63_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[5]_i_64 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_96_n_0 ),
        .I2(\m_axis_tuser[5]_i_97_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_98_n_4 ),
        .O(\m_axis_tuser[5]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[5]_i_66 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_63_n_0 ),
        .I2(\m_axis_tuser[5]_i_64_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_65_n_4 ),
        .I4(\m_axis_tuser[5]_i_107_n_0 ),
        .I5(\m_axis_tuser[5]_i_108_n_0 ),
        .O(\m_axis_tuser[5]_i_66_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[5]_i_67 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_30_n_0 ),
        .I2(\m_axis_tuser[5]_i_109_n_0 ),
        .O(\m_axis_tuser[5]_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[5]_i_68 
       (.I0(\m_axis_tuser[5]_i_93_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[5]_i_62_n_0 ),
        .O(\m_axis_tuser[5]_i_68_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[5]_i_69 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[5]_i_110_n_0 ),
        .I2(\m_axis_tuser_reg[5]_i_65_n_4 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(\m_axis_tuser[5]_i_111_n_0 ),
        .O(\m_axis_tuser[5]_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[5]_i_7 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[5]_i_23_n_0 ),
        .I2(\m_axis_tuser[5]_i_24_n_0 ),
        .O(\m_axis_tuser[5]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[5]_i_70 
       (.I0(\m_axis_tuser[5]_i_112_n_0 ),
        .O(\m_axis_tuser[5]_i_70_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[5]_i_71 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_109_n_0 ),
        .I2(\m_axis_tuser[5]_i_30_n_0 ),
        .O(\m_axis_tuser[5]_i_71_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[5]_i_72 
       (.I0(\m_axis_tuser[5]_i_62_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[5]_i_93_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[5]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[5]_i_73 
       (.I0(\m_axis_tuser_reg[5]_i_65_n_4 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser[5]_i_111_n_0 ),
        .I3(DECIM_M[1]),
        .I4(\m_axis_tuser[5]_i_110_n_0 ),
        .O(\m_axis_tuser[5]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[5]_i_74 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_29_n_0 ),
        .I2(\m_axis_tuser[5]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_31_n_4 ),
        .I4(\m_axis_tuser[5]_i_112_n_0 ),
        .I5(\m_axis_tuser[5]_i_109_n_0 ),
        .O(\m_axis_tuser[5]_i_74_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[5]_i_75 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_82_n_0 ),
        .I2(\m_axis_tuser[5]_i_84_n_0 ),
        .O(\m_axis_tuser[5]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[5]_i_76 
       (.I0(\m_axis_tuser[5]_i_92_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[5]_i_93_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_31_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[5]_i_113_n_0 ),
        .O(\m_axis_tuser[5]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h0D45541C455D1C04)) 
    \m_axis_tuser[5]_i_77 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[5]_i_111_n_0 ),
        .I2(\m_axis_tuser[5]_i_53_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_65_n_4 ),
        .I4(\m_axis_tuser[5]_i_110_n_0 ),
        .I5(\m_axis_tuser_reg[5]_i_31_n_4 ),
        .O(\m_axis_tuser[5]_i_77_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[5]_i_78 
       (.I0(\m_axis_tuser[5]_i_83_n_0 ),
        .O(\m_axis_tuser[5]_i_78_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[5]_i_79 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_84_n_0 ),
        .I2(\m_axis_tuser[5]_i_82_n_0 ),
        .O(\m_axis_tuser[5]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[5]_i_8 
       (.I0(\m_axis_tuser[5]_i_25_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[5]_i_26_n_0 ),
        .I3(\m_axis_tuser[5]_i_27_n_0 ),
        .I4(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[5]_i_13_n_4 ),
        .O(\m_axis_tuser[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h5AC30000)) 
    \m_axis_tuser[5]_i_80 
       (.I0(\m_axis_tuser[5]_i_92_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[5]_i_93_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_31_n_4 ),
        .I4(\m_axis_tuser[5]_i_114_n_0 ),
        .O(\m_axis_tuser[5]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h0469804880120433)) 
    \m_axis_tuser[5]_i_81 
       (.I0(\m_axis_tuser_reg[5]_i_31_n_4 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[5]_i_65_n_4 ),
        .I3(\m_axis_tuser[5]_i_111_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser[5]_i_110_n_0 ),
        .O(\m_axis_tuser[5]_i_81_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[5]_i_82 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_29_n_0 ),
        .I2(\m_axis_tuser[5]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_31_n_4 ),
        .O(\m_axis_tuser[5]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[5]_i_83 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_29_n_0 ),
        .I2(\m_axis_tuser[5]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_31_n_4 ),
        .I4(\m_axis_tuser[5]_i_112_n_0 ),
        .I5(\m_axis_tuser[5]_i_109_n_0 ),
        .O(\m_axis_tuser[5]_i_83_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[5]_i_84 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_29_n_0 ),
        .I2(\m_axis_tuser[5]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_31_n_4 ),
        .I4(\m_axis_tuser[5]_i_109_n_0 ),
        .O(\m_axis_tuser[5]_i_84_n_0 ));
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[5]_i_85 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_28_n_0 ),
        .I2(\m_axis_tuser[5]_i_82_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_32_n_4 ),
        .I4(\m_axis_tuser[5]_i_84_n_0 ),
        .O(\m_axis_tuser[5]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[5]_i_86 
       (.I0(\m_axis_tuser[5]_i_111_n_0 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[5]_i_65_n_4 ),
        .I3(\m_axis_tuser[5]_i_110_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser_reg[5]_i_31_n_4 ),
        .O(\m_axis_tuser[5]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h48848448B77B7BB7)) 
    \m_axis_tuser[5]_i_87 
       (.I0(\m_axis_tuser_reg[5]_i_31_n_4 ),
        .I1(\m_axis_tuser[5]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[5]_i_65_n_4 ),
        .I3(\m_axis_tuser_reg[5]_i_98_n_4 ),
        .I4(\m_axis_tuser[5]_i_115_n_0 ),
        .I5(phase0[0]),
        .O(\m_axis_tuser[5]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[5]_i_88 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_28_n_0 ),
        .I2(\m_axis_tuser[5]_i_82_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_32_n_4 ),
        .I4(\m_axis_tuser[5]_i_83_n_0 ),
        .I5(\m_axis_tuser[5]_i_84_n_0 ),
        .O(\m_axis_tuser[5]_i_88_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[5]_i_89 
       (.I0(\m_axis_tuser[5]_i_26_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[5]_i_27_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .O(\GEN_SLOT[5].v [3]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[5]_i_9 
       (.I0(\m_axis_tuser[5]_i_25_n_0 ),
        .I1(\m_axis_tuser[5]_i_26_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[5]_i_27_n_0 ),
        .I4(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .O(\m_axis_tuser[5]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'h6C39)) 
    \m_axis_tuser[5]_i_90 
       (.I0(\m_axis_tuser_reg[5]_i_12_n_4 ),
        .I1(\m_axis_tuser[5]_i_27_n_0 ),
        .I2(\m_axis_tuser[5]_i_26_n_0 ),
        .I3(DECIM_M[3]),
        .O(\m_axis_tuser[5]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h16C3803CBFFFD6FF)) 
    \m_axis_tuser[5]_i_91 
       (.I0(\m_axis_tuser[5]_i_111_n_0 ),
        .I1(\m_axis_tuser_reg[5]_i_65_n_4 ),
        .I2(\m_axis_tuser_reg[5]_i_31_n_4 ),
        .I3(\m_axis_tuser[5]_i_53_n_0 ),
        .I4(\m_axis_tuser[5]_i_110_n_0 ),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[5]_i_91_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[5]_i_92 
       (.I0(\m_axis_tuser[5]_i_111_n_0 ),
        .I1(\m_axis_tuser_reg[5]_i_65_n_4 ),
        .I2(\m_axis_tuser[5]_i_53_n_0 ),
        .I3(\m_axis_tuser[5]_i_110_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[5]_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[5]_i_93 
       (.I0(\m_axis_tuser[5]_i_116_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[5]_i_117_n_0 ),
        .I3(\m_axis_tuser[5]_i_118_n_0 ),
        .I4(\m_axis_tuser_reg[5]_i_98_n_4 ),
        .I5(\m_axis_tuser_reg[5]_i_65_n_4 ),
        .O(\m_axis_tuser[5]_i_93_n_0 ));
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[5]_i_94 
       (.I0(\m_axis_tuser[5]_i_116_n_0 ),
        .I1(\m_axis_tuser[5]_i_117_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[5]_i_118_n_0 ),
        .I4(\m_axis_tuser_reg[5]_i_98_n_4 ),
        .O(\m_axis_tuser[5]_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h2BD4D42BFFFF0000)) 
    \m_axis_tuser[5]_i_95 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[5]_i_117_n_0 ),
        .I2(\m_axis_tuser[5]_i_118_n_0 ),
        .I3(DECIM_M[3]),
        .I4(\m_axis_tuser[5]_i_119_n_0 ),
        .I5(\m_axis_tuser_reg[5]_i_98_n_4 ),
        .O(\m_axis_tuser[5]_i_95_n_0 ));
  LUT5 #(
    .INIT(32'hF7755110)) 
    \m_axis_tuser[5]_i_96 
       (.I0(DECIM_M[3]),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[5]_i_117_n_0 ),
        .I3(\m_axis_tuser[5]_i_118_n_0 ),
        .I4(\m_axis_tuser[5]_i_119_n_0 ),
        .O(\m_axis_tuser[5]_i_96_n_0 ));
  LUT4 #(
    .INIT(16'h2EE2)) 
    \m_axis_tuser[5]_i_97 
       (.I0(\GEN_SLOT[5].val [4]),
        .I1(\m_axis_tuser[5]_i_115_n_0 ),
        .I2(\m_axis_tuser[6]_i_121_n_0 ),
        .I3(\m_axis_tuser[5]_i_121_n_0 ),
        .O(\m_axis_tuser[5]_i_97_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[5]_i_99 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[5]_i_96_n_0 ),
        .I2(\m_axis_tuser[5]_i_97_n_0 ),
        .I3(\m_axis_tuser_reg[5]_i_98_n_4 ),
        .I4(\m_axis_tuser[5]_i_122_n_0 ),
        .I5(\m_axis_tuser[5]_i_130_n_0 ),
        .O(\m_axis_tuser[5]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h4884CC00844800CC)) 
    \m_axis_tuser[6]_i_1 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_2_n_0 ),
        .I2(\m_axis_tuser[6]_i_3_n_0 ),
        .I3(\m_axis_tuser[6]_i_4_n_0 ),
        .I4(\GEN_SLOT[6].v1 ),
        .I5(DECIM_PHASE[4]),
        .O(mask_comb[6]));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[6]_i_10 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[6]_i_26_n_0 ),
        .I2(\m_axis_tuser[6]_i_27_n_0 ),
        .O(\m_axis_tuser[6]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[6]_i_100 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_64_n_0 ),
        .I2(\m_axis_tuser[6]_i_108_n_0 ),
        .O(\m_axis_tuser[6]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[6]_i_101 
       (.I0(\m_axis_tuser[6]_i_117_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[6]_i_118_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_98_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[6]_i_95_n_0 ),
        .O(\m_axis_tuser[6]_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h514C04D510C4455D)) 
    \m_axis_tuser[6]_i_102 
       (.I0(DECIM_M[1]),
        .I1(phase0[0]),
        .I2(\m_axis_tuser[6]_i_115_n_0 ),
        .I3(p_0_out),
        .I4(phase0[1]),
        .I5(\m_axis_tuser_reg[6]_i_98_n_4 ),
        .O(\m_axis_tuser[6]_i_102_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[6]_i_103 
       (.I0(\m_axis_tuser[6]_i_107_n_0 ),
        .O(\m_axis_tuser[6]_i_103_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[6]_i_104 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_108_n_0 ),
        .I2(\m_axis_tuser[6]_i_64_n_0 ),
        .O(\m_axis_tuser[6]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h0909909099000099)) 
    \m_axis_tuser[6]_i_105 
       (.I0(\m_axis_tuser[6]_i_95_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[6]_i_117_n_0 ),
        .I3(DECIM_M[2]),
        .I4(\m_axis_tuser[6]_i_118_n_0 ),
        .I5(\m_axis_tuser_reg[6]_i_98_n_4 ),
        .O(\m_axis_tuser[6]_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h8010162920401C2C)) 
    \m_axis_tuser[6]_i_106 
       (.I0(\m_axis_tuser_reg[6]_i_98_n_4 ),
        .I1(phase0[1]),
        .I2(p_0_out),
        .I3(\m_axis_tuser[6]_i_115_n_0 ),
        .I4(phase0[0]),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[6]_i_106_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[6]_i_107 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_96_n_0 ),
        .I2(\m_axis_tuser[6]_i_97_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_98_n_4 ),
        .I4(\m_axis_tuser[6]_i_123_n_0 ),
        .I5(\m_axis_tuser[6]_i_131_n_0 ),
        .O(\m_axis_tuser[6]_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[6]_i_108 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_96_n_0 ),
        .I2(\m_axis_tuser[6]_i_97_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_98_n_4 ),
        .I4(\m_axis_tuser[6]_i_131_n_0 ),
        .O(\m_axis_tuser[6]_i_108_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[6]_i_109 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_63_n_0 ),
        .I2(\m_axis_tuser[6]_i_64_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_65_n_4 ),
        .I4(\m_axis_tuser[6]_i_108_n_0 ),
        .O(\m_axis_tuser[6]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hC33C66995AA5FF00)) 
    \m_axis_tuser[6]_i_11 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_28_n_0 ),
        .I2(\m_axis_tuser[6]_i_29_n_0 ),
        .I3(\m_axis_tuser[6]_i_30_n_0 ),
        .I4(\m_axis_tuser_reg[6]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[6]_i_32_n_4 ),
        .O(\m_axis_tuser[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hE3D01C2F8C4073BF)) 
    \m_axis_tuser[6]_i_110 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[6]_i_115_n_0 ),
        .I2(p_0_out),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .I5(\m_axis_tuser_reg[6]_i_98_n_4 ),
        .O(\m_axis_tuser[6]_i_110_n_0 ));
  LUT4 #(
    .INIT(16'hB748)) 
    \m_axis_tuser[6]_i_111 
       (.I0(\m_axis_tuser_reg[6]_i_98_n_4 ),
        .I1(p_0_out),
        .I2(\m_axis_tuser[6]_i_115_n_0 ),
        .I3(phase0[0]),
        .O(\m_axis_tuser[6]_i_111_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[6]_i_112 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_63_n_0 ),
        .I2(\m_axis_tuser[6]_i_64_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_65_n_4 ),
        .I4(\m_axis_tuser[6]_i_107_n_0 ),
        .I5(\m_axis_tuser[6]_i_108_n_0 ),
        .O(\m_axis_tuser[6]_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[6]_i_113 
       (.I0(\m_axis_tuser[6]_i_61_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[6]_i_62_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_31_n_4 ),
        .O(\m_axis_tuser[6]_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h6C39)) 
    \m_axis_tuser[6]_i_114 
       (.I0(\m_axis_tuser_reg[6]_i_31_n_4 ),
        .I1(\m_axis_tuser[6]_i_62_n_0 ),
        .I2(\m_axis_tuser[6]_i_61_n_0 ),
        .I3(DECIM_M[3]),
        .O(\m_axis_tuser[6]_i_114_n_0 ));
  LUT6 #(
    .INIT(64'hFF5DDF45DF455D04)) 
    \m_axis_tuser[6]_i_115 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_132_n_0 ),
        .I2(DECIM_M[3]),
        .I3(phase0[4]),
        .I4(phase0[3]),
        .I5(\m_axis_tuser[6]_i_133_n_0 ),
        .O(\m_axis_tuser[6]_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h803CD6FF16C3BFFF)) 
    \m_axis_tuser[6]_i_116 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[6]_i_115_n_0 ),
        .I2(\m_axis_tuser_reg[6]_i_98_n_4 ),
        .I3(p_0_out),
        .I4(DECIM_M[1]),
        .I5(phase0[1]),
        .O(\m_axis_tuser[6]_i_116_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h0C6F63FF)) 
    \m_axis_tuser[6]_i_117 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[6]_i_115_n_0 ),
        .I2(p_0_out),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .O(\m_axis_tuser[6]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'hC66C93936CC63939)) 
    \m_axis_tuser[6]_i_118 
       (.I0(\m_axis_tuser[6]_i_115_n_0 ),
        .I1(phase0[2]),
        .I2(DECIM_M[2]),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .I5(\m_axis_tuser[6]_i_134_n_0 ),
        .O(\m_axis_tuser[6]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h0056FF56FF560056)) 
    \m_axis_tuser[6]_i_119 
       (.I0(phase0[3]),
        .I1(phase0[1]),
        .I2(phase0[2]),
        .I3(\m_axis_tuser[6]_i_115_n_0 ),
        .I4(\m_axis_tuser[6]_i_135_n_0 ),
        .I5(\m_axis_tuser[6]_i_136_n_0 ),
        .O(\m_axis_tuser[6]_i_119_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT4 #(
    .INIT(16'h1FE0)) 
    \m_axis_tuser[6]_i_120 
       (.I0(phase0[1]),
        .I1(phase0[2]),
        .I2(phase0[3]),
        .I3(phase0[4]),
        .O(\GEN_SLOT[6].val ));
  LUT4 #(
    .INIT(16'h9A65)) 
    \m_axis_tuser[6]_i_121 
       (.I0(DECIM_M[4]),
        .I1(DECIM_M[3]),
        .I2(phase0[3]),
        .I3(phase0[4]),
        .O(\m_axis_tuser[6]_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h5D55FF5D55045D55)) 
    \m_axis_tuser[6]_i_122 
       (.I0(\m_axis_tuser[3]_i_121_n_0 ),
        .I1(phase0[1]),
        .I2(DECIM_M[1]),
        .I3(phase0[2]),
        .I4(DECIM_M[2]),
        .I5(\m_axis_tuser[6]_i_134_n_0 ),
        .O(\m_axis_tuser[6]_i_122_n_0 ));
  LUT6 #(
    .INIT(64'h2B2B022B00000000)) 
    \m_axis_tuser[6]_i_123 
       (.I0(DECIM_M[4]),
        .I1(phase0[4]),
        .I2(\m_axis_tuser[6]_i_122_n_0 ),
        .I3(phase0[3]),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[6]_i_115_n_0 ),
        .O(\m_axis_tuser[6]_i_123_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[6]_i_124 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_97_n_0 ),
        .I2(\m_axis_tuser[6]_i_131_n_0 ),
        .O(\m_axis_tuser[6]_i_124_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[6]_i_125 
       (.I0(\m_axis_tuser[6]_i_118_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[6]_i_119_n_0 ),
        .O(\m_axis_tuser[6]_i_125_n_0 ));
  LUT5 #(
    .INIT(32'h1C04455D)) 
    \m_axis_tuser[6]_i_126 
       (.I0(DECIM_M[1]),
        .I1(phase0[0]),
        .I2(p_0_out),
        .I3(\m_axis_tuser[6]_i_115_n_0 ),
        .I4(phase0[1]),
        .O(\m_axis_tuser[6]_i_126_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[6]_i_127 
       (.I0(\m_axis_tuser[6]_i_123_n_0 ),
        .O(\m_axis_tuser[6]_i_127_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[6]_i_128 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_131_n_0 ),
        .I2(\m_axis_tuser[6]_i_97_n_0 ),
        .O(\m_axis_tuser[6]_i_128_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[6]_i_129 
       (.I0(\m_axis_tuser[6]_i_119_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[6]_i_118_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[6]_i_129_n_0 ));
  LUT5 #(
    .INIT(32'h1049204A)) 
    \m_axis_tuser[6]_i_130 
       (.I0(phase0[1]),
        .I1(\m_axis_tuser[6]_i_115_n_0 ),
        .I2(p_0_out),
        .I3(phase0[0]),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[6]_i_130_n_0 ));
  LUT6 #(
    .INIT(64'h5C0C0CAC00A0A0F0)) 
    \m_axis_tuser[6]_i_131 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_137_n_0 ),
        .I2(\m_axis_tuser[6]_i_115_n_0 ),
        .I3(\m_axis_tuser[6]_i_138_n_0 ),
        .I4(\m_axis_tuser[6]_i_122_n_0 ),
        .I5(phase0[4]),
        .O(\m_axis_tuser[6]_i_131_n_0 ));
  LUT6 #(
    .INIT(64'h27B727B7212727B7)) 
    \m_axis_tuser[6]_i_132 
       (.I0(phase0[2]),
        .I1(DECIM_M[2]),
        .I2(phase0[1]),
        .I3(DECIM_M[1]),
        .I4(p_0_out),
        .I5(phase0[0]),
        .O(\m_axis_tuser[6]_i_132_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tuser[6]_i_133 
       (.I0(phase0[1]),
        .I1(phase0[2]),
        .O(\m_axis_tuser[6]_i_133_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'hFDDF)) 
    \m_axis_tuser[6]_i_134 
       (.I0(p_0_out),
        .I1(phase0[0]),
        .I2(DECIM_M[1]),
        .I3(phase0[1]),
        .O(\m_axis_tuser[6]_i_134_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT4 #(
    .INIT(16'h2DD2)) 
    \m_axis_tuser[6]_i_135 
       (.I0(DECIM_M[2]),
        .I1(phase0[2]),
        .I2(DECIM_M[3]),
        .I3(phase0[3]),
        .O(\m_axis_tuser[6]_i_135_n_0 ));
  LUT6 #(
    .INIT(64'h6666FF6F66066666)) 
    \m_axis_tuser[6]_i_136 
       (.I0(phase0[2]),
        .I1(DECIM_M[2]),
        .I2(p_0_out),
        .I3(phase0[0]),
        .I4(DECIM_M[1]),
        .I5(phase0[1]),
        .O(\m_axis_tuser[6]_i_136_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \m_axis_tuser[6]_i_137 
       (.I0(phase0[3]),
        .I1(phase0[2]),
        .I2(phase0[1]),
        .O(\m_axis_tuser[6]_i_137_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \m_axis_tuser[6]_i_138 
       (.I0(phase0[3]),
        .I1(DECIM_M[3]),
        .O(\m_axis_tuser[6]_i_138_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[6]_i_14 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_9_n_0 ),
        .I2(\GEN_SLOT[6].v [4]),
        .I3(\m_axis_tuser_reg[6]_i_13_n_4 ),
        .I4(\GEN_SLOT[6].v__0 ),
        .I5(\GEN_SLOT[6].v [5]),
        .O(\m_axis_tuser[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hD5FF7F55D4FF2B00)) 
    \m_axis_tuser[6]_i_15 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_9_n_0 ),
        .I2(\GEN_SLOT[6].v [4]),
        .I3(\m_axis_tuser_reg[6]_i_13_n_4 ),
        .I4(\GEN_SLOT[6].v [5]),
        .I5(\m_axis_tuser[6]_i_4_n_0 ),
        .O(\m_axis_tuser[6]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[6]_i_16 
       (.I0(\m_axis_tuser[6]_i_24_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[6]_i_8_n_0 ),
        .O(\m_axis_tuser[6]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[6]_i_17 
       (.I0(DECIM_M[1]),
        .I1(\GEN_SLOT[6].v [1]),
        .I2(\m_axis_tuser_reg[6]_i_13_n_4 ),
        .I3(p_0_out),
        .I4(\GEN_SLOT[6].v [0]),
        .O(\m_axis_tuser[6]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF2B00D4FF)) 
    \m_axis_tuser[6]_i_18 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_9_n_0 ),
        .I2(\GEN_SLOT[6].v [4]),
        .I3(\m_axis_tuser_reg[6]_i_13_n_4 ),
        .I4(\GEN_SLOT[6].v__0 ),
        .I5(\GEN_SLOT[6].v [5]),
        .O(\m_axis_tuser[6]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2A0080AA01005455)) 
    \m_axis_tuser[6]_i_19 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_9_n_0 ),
        .I2(\GEN_SLOT[6].v [4]),
        .I3(\m_axis_tuser_reg[6]_i_13_n_4 ),
        .I4(\GEN_SLOT[6].v [5]),
        .I5(\m_axis_tuser[6]_i_4_n_0 ),
        .O(\m_axis_tuser[6]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2882AA00822800AA)) 
    \m_axis_tuser[6]_i_2 
       (.I0(\m_axis_tuser[6]_i_6_n_0 ),
        .I1(\m_axis_tuser[6]_i_7_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[6]_i_8_n_0 ),
        .I4(\GEN_SLOT[6].v1 ),
        .I5(DECIM_PHASE[3]),
        .O(\m_axis_tuser[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[6]_i_20 
       (.I0(\m_axis_tuser[6]_i_8_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[6]_i_24_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[6]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[6]_i_21 
       (.I0(\m_axis_tuser_reg[6]_i_13_n_4 ),
        .I1(p_0_out),
        .I2(\GEN_SLOT[6].v [0]),
        .I3(DECIM_M[1]),
        .I4(\GEN_SLOT[6].v [1]),
        .O(\m_axis_tuser[6]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0999900090000999)) 
    \m_axis_tuser[6]_i_22 
       (.I0(cond_mod5_return),
        .I1(DECIM_PHASE[1]),
        .I2(\GEN_SLOT[6].v1 ),
        .I3(p_0_out),
        .I4(\m_axis_tuser[6]_i_56_n_0 ),
        .I5(DECIM_PHASE[0]),
        .O(\m_axis_tuser[6]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[6]_i_23 
       (.I0(\GEN_SLOT[6].v [0]),
        .I1(\m_axis_tuser_reg[6]_i_13_n_4 ),
        .I2(p_0_out),
        .I3(\GEN_SLOT[6].v [1]),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[6]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[6]_i_24 
       (.I0(\m_axis_tuser[6]_i_57_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[6]_i_58_n_0 ),
        .I3(\m_axis_tuser[6]_i_59_n_0 ),
        .I4(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[6]_i_13_n_4 ),
        .O(\m_axis_tuser[6]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[6]_i_25 
       (.I0(\m_axis_tuser[6]_i_57_n_0 ),
        .I1(\m_axis_tuser[6]_i_58_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[6]_i_59_n_0 ),
        .I4(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .O(\m_axis_tuser[6]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[6]_i_26 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[6]_i_58_n_0 ),
        .I2(\m_axis_tuser[6]_i_59_n_0 ),
        .O(\m_axis_tuser[6]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[6]_i_27 
       (.I0(\m_axis_tuser[6]_i_60_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[6]_i_61_n_0 ),
        .I3(\m_axis_tuser[6]_i_62_n_0 ),
        .I4(\m_axis_tuser_reg[6]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[6]_i_32_n_4 ),
        .O(\m_axis_tuser[6]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[6]_i_28 
       (.I0(\m_axis_tuser[6]_i_60_n_0 ),
        .I1(\m_axis_tuser[6]_i_61_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[6]_i_62_n_0 ),
        .I4(\m_axis_tuser_reg[6]_i_31_n_4 ),
        .O(\m_axis_tuser[6]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[6]_i_29 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[6]_i_61_n_0 ),
        .I2(\m_axis_tuser[6]_i_62_n_0 ),
        .O(\m_axis_tuser[6]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[6]_i_3 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[6]_i_7_n_0 ),
        .I2(\m_axis_tuser[6]_i_8_n_0 ),
        .O(\m_axis_tuser[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[6]_i_30 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_63_n_0 ),
        .I2(\m_axis_tuser[6]_i_64_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_65_n_4 ),
        .O(\m_axis_tuser[6]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[6]_i_33 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_28_n_0 ),
        .I2(\m_axis_tuser[6]_i_82_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_32_n_4 ),
        .I4(\m_axis_tuser[6]_i_83_n_0 ),
        .I5(\m_axis_tuser[6]_i_84_n_0 ),
        .O(\m_axis_tuser[6]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[6]_i_34 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_11_n_0 ),
        .I2(\m_axis_tuser[6]_i_85_n_0 ),
        .O(\m_axis_tuser[6]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[6]_i_35 
       (.I0(\m_axis_tuser[6]_i_59_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[6]_i_27_n_0 ),
        .O(\m_axis_tuser[6]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[6]_i_36 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[6]_i_86_n_0 ),
        .I2(\m_axis_tuser_reg[6]_i_32_n_4 ),
        .I3(p_0_out),
        .I4(\m_axis_tuser[6]_i_87_n_0 ),
        .O(\m_axis_tuser[6]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[6]_i_37 
       (.I0(\m_axis_tuser[6]_i_88_n_0 ),
        .O(\m_axis_tuser[6]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[6]_i_38 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_85_n_0 ),
        .I2(\m_axis_tuser[6]_i_11_n_0 ),
        .O(\m_axis_tuser[6]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[6]_i_39 
       (.I0(\m_axis_tuser[6]_i_27_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[6]_i_59_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[6]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hC33C66995AA5FF00)) 
    \m_axis_tuser[6]_i_4 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_9_n_0 ),
        .I2(\m_axis_tuser[6]_i_10_n_0 ),
        .I3(\m_axis_tuser[6]_i_11_n_0 ),
        .I4(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[6]_i_13_n_4 ),
        .O(\m_axis_tuser[6]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[6]_i_40 
       (.I0(\m_axis_tuser_reg[6]_i_32_n_4 ),
        .I1(p_0_out),
        .I2(\m_axis_tuser[6]_i_87_n_0 ),
        .I3(DECIM_M[1]),
        .I4(\m_axis_tuser[6]_i_86_n_0 ),
        .O(\m_axis_tuser[6]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[6]_i_41 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_10_n_0 ),
        .I2(\m_axis_tuser[6]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .I4(\m_axis_tuser[6]_i_88_n_0 ),
        .I5(\m_axis_tuser[6]_i_85_n_0 ),
        .O(\m_axis_tuser[6]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[6]_i_42 
       (.I0(DECIM_M[4]),
        .I1(\GEN_SLOT[6].v [4]),
        .I2(\GEN_SLOT[6].v [5]),
        .O(\m_axis_tuser[6]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[6]_i_43 
       (.I0(\m_axis_tuser[6]_i_58_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[6]_i_59_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\GEN_SLOT[6].v [3]),
        .O(\m_axis_tuser[6]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0D45541C455D1C04)) 
    \m_axis_tuser[6]_i_44 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[6]_i_87_n_0 ),
        .I2(p_0_out),
        .I3(\m_axis_tuser_reg[6]_i_32_n_4 ),
        .I4(\m_axis_tuser[6]_i_86_n_0 ),
        .I5(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .O(\m_axis_tuser[6]_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[6]_i_45 
       (.I0(\GEN_SLOT[6].v__0 ),
        .O(\m_axis_tuser[6]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[6]_i_46 
       (.I0(DECIM_M[4]),
        .I1(\GEN_SLOT[6].v [5]),
        .I2(\GEN_SLOT[6].v [4]),
        .O(\m_axis_tuser[6]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h5AC30000)) 
    \m_axis_tuser[6]_i_47 
       (.I0(\m_axis_tuser[6]_i_58_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[6]_i_59_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .I4(\m_axis_tuser[6]_i_90_n_0 ),
        .O(\m_axis_tuser[6]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h9000090009999099)) 
    \m_axis_tuser[6]_i_48 
       (.I0(\GEN_SLOT[6].v [1]),
        .I1(DECIM_M[1]),
        .I2(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .I3(p_0_out),
        .I4(\m_axis_tuser_reg[6]_i_32_n_4 ),
        .I5(\m_axis_tuser[6]_i_87_n_0 ),
        .O(\m_axis_tuser[6]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[6]_i_49 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_10_n_0 ),
        .I2(\m_axis_tuser[6]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .O(\GEN_SLOT[6].v [4]));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[6]_i_50 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_10_n_0 ),
        .I2(\m_axis_tuser[6]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .I4(\m_axis_tuser[6]_i_88_n_0 ),
        .I5(\m_axis_tuser[6]_i_85_n_0 ),
        .O(\GEN_SLOT[6].v__0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[6]_i_51 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_10_n_0 ),
        .I2(\m_axis_tuser[6]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .I4(\m_axis_tuser[6]_i_85_n_0 ),
        .O(\GEN_SLOT[6].v [5]));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[6]_i_52 
       (.I0(\m_axis_tuser[6]_i_87_n_0 ),
        .I1(p_0_out),
        .I2(\m_axis_tuser_reg[6]_i_32_n_4 ),
        .I3(\m_axis_tuser[6]_i_86_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .O(\GEN_SLOT[6].v [1]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \m_axis_tuser[6]_i_53 
       (.I0(DECIM_M[2]),
        .I1(DECIM_M[1]),
        .I2(DECIM_M[3]),
        .I3(DECIM_M[4]),
        .I4(DECIM_M[0]),
        .O(p_0_out));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'hB748)) 
    \m_axis_tuser[6]_i_54 
       (.I0(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .I1(p_0_out),
        .I2(\m_axis_tuser_reg[6]_i_32_n_4 ),
        .I3(\m_axis_tuser[6]_i_87_n_0 ),
        .O(\GEN_SLOT[6].v [0]));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[6]_i_55 
       (.I0(\GEN_SLOT[6].v [0]),
        .I1(p_0_out),
        .I2(\m_axis_tuser_reg[6]_i_13_n_4 ),
        .I3(\GEN_SLOT[6].v [1]),
        .I4(DECIM_M[1]),
        .I5(\GEN_SLOT[6].v1 ),
        .O(cond_mod5_return));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h7BB78448)) 
    \m_axis_tuser[6]_i_56 
       (.I0(\m_axis_tuser_reg[6]_i_13_n_4 ),
        .I1(p_0_out),
        .I2(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .I3(\m_axis_tuser_reg[6]_i_32_n_4 ),
        .I4(\m_axis_tuser[6]_i_87_n_0 ),
        .O(\m_axis_tuser[6]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h16C3803CBFFFD6FF)) 
    \m_axis_tuser[6]_i_57 
       (.I0(\m_axis_tuser[6]_i_87_n_0 ),
        .I1(\m_axis_tuser_reg[6]_i_32_n_4 ),
        .I2(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .I3(p_0_out),
        .I4(\m_axis_tuser[6]_i_86_n_0 ),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[6]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[6]_i_58 
       (.I0(\m_axis_tuser[6]_i_87_n_0 ),
        .I1(\m_axis_tuser_reg[6]_i_32_n_4 ),
        .I2(p_0_out),
        .I3(\m_axis_tuser[6]_i_86_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[6]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[6]_i_59 
       (.I0(\m_axis_tuser[6]_i_91_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[6]_i_92_n_0 ),
        .I3(\m_axis_tuser[6]_i_93_n_0 ),
        .I4(\m_axis_tuser_reg[6]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[6]_i_32_n_4 ),
        .O(\m_axis_tuser[6]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h2882822888882222)) 
    \m_axis_tuser[6]_i_6 
       (.I0(\m_axis_tuser[6]_i_22_n_0 ),
        .I1(DECIM_PHASE[2]),
        .I2(\m_axis_tuser[6]_i_23_n_0 ),
        .I3(DECIM_M[2]),
        .I4(\m_axis_tuser[6]_i_24_n_0 ),
        .I5(\GEN_SLOT[6].v1 ),
        .O(\m_axis_tuser[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[6]_i_60 
       (.I0(\m_axis_tuser[6]_i_91_n_0 ),
        .I1(\m_axis_tuser[6]_i_92_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[6]_i_93_n_0 ),
        .I4(\m_axis_tuser_reg[6]_i_31_n_4 ),
        .O(\m_axis_tuser[6]_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[6]_i_61 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[6]_i_92_n_0 ),
        .I2(\m_axis_tuser[6]_i_93_n_0 ),
        .O(\m_axis_tuser[6]_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[6]_i_62 
       (.I0(\m_axis_tuser[6]_i_94_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[6]_i_95_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_65_n_4 ),
        .O(\m_axis_tuser[6]_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[6]_i_63 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[6]_i_94_n_0 ),
        .I2(\m_axis_tuser[6]_i_95_n_0 ),
        .O(\m_axis_tuser[6]_i_63_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[6]_i_64 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_96_n_0 ),
        .I2(\m_axis_tuser[6]_i_97_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_98_n_4 ),
        .O(\m_axis_tuser[6]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[6]_i_66 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_63_n_0 ),
        .I2(\m_axis_tuser[6]_i_64_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_65_n_4 ),
        .I4(\m_axis_tuser[6]_i_107_n_0 ),
        .I5(\m_axis_tuser[6]_i_108_n_0 ),
        .O(\m_axis_tuser[6]_i_66_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[6]_i_67 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_30_n_0 ),
        .I2(\m_axis_tuser[6]_i_109_n_0 ),
        .O(\m_axis_tuser[6]_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[6]_i_68 
       (.I0(\m_axis_tuser[6]_i_93_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[6]_i_62_n_0 ),
        .O(\m_axis_tuser[6]_i_68_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[6]_i_69 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[6]_i_110_n_0 ),
        .I2(\m_axis_tuser_reg[6]_i_65_n_4 ),
        .I3(p_0_out),
        .I4(\m_axis_tuser[6]_i_111_n_0 ),
        .O(\m_axis_tuser[6]_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[6]_i_7 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[6]_i_23_n_0 ),
        .I2(\m_axis_tuser[6]_i_24_n_0 ),
        .O(\m_axis_tuser[6]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[6]_i_70 
       (.I0(\m_axis_tuser[6]_i_112_n_0 ),
        .O(\m_axis_tuser[6]_i_70_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[6]_i_71 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_109_n_0 ),
        .I2(\m_axis_tuser[6]_i_30_n_0 ),
        .O(\m_axis_tuser[6]_i_71_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[6]_i_72 
       (.I0(\m_axis_tuser[6]_i_62_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[6]_i_93_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[6]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[6]_i_73 
       (.I0(\m_axis_tuser_reg[6]_i_65_n_4 ),
        .I1(p_0_out),
        .I2(\m_axis_tuser[6]_i_111_n_0 ),
        .I3(DECIM_M[1]),
        .I4(\m_axis_tuser[6]_i_110_n_0 ),
        .O(\m_axis_tuser[6]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[6]_i_74 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_29_n_0 ),
        .I2(\m_axis_tuser[6]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_31_n_4 ),
        .I4(\m_axis_tuser[6]_i_112_n_0 ),
        .I5(\m_axis_tuser[6]_i_109_n_0 ),
        .O(\m_axis_tuser[6]_i_74_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[6]_i_75 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_82_n_0 ),
        .I2(\m_axis_tuser[6]_i_84_n_0 ),
        .O(\m_axis_tuser[6]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[6]_i_76 
       (.I0(\m_axis_tuser[6]_i_92_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[6]_i_93_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_31_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[6]_i_113_n_0 ),
        .O(\m_axis_tuser[6]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h0D45541C455D1C04)) 
    \m_axis_tuser[6]_i_77 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[6]_i_111_n_0 ),
        .I2(p_0_out),
        .I3(\m_axis_tuser_reg[6]_i_65_n_4 ),
        .I4(\m_axis_tuser[6]_i_110_n_0 ),
        .I5(\m_axis_tuser_reg[6]_i_31_n_4 ),
        .O(\m_axis_tuser[6]_i_77_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[6]_i_78 
       (.I0(\m_axis_tuser[6]_i_83_n_0 ),
        .O(\m_axis_tuser[6]_i_78_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[6]_i_79 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_84_n_0 ),
        .I2(\m_axis_tuser[6]_i_82_n_0 ),
        .O(\m_axis_tuser[6]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[6]_i_8 
       (.I0(\m_axis_tuser[6]_i_25_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[6]_i_26_n_0 ),
        .I3(\m_axis_tuser[6]_i_27_n_0 ),
        .I4(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[6]_i_13_n_4 ),
        .O(\m_axis_tuser[6]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h5AC30000)) 
    \m_axis_tuser[6]_i_80 
       (.I0(\m_axis_tuser[6]_i_92_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[6]_i_93_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_31_n_4 ),
        .I4(\m_axis_tuser[6]_i_114_n_0 ),
        .O(\m_axis_tuser[6]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h0469804880120433)) 
    \m_axis_tuser[6]_i_81 
       (.I0(\m_axis_tuser_reg[6]_i_31_n_4 ),
        .I1(p_0_out),
        .I2(\m_axis_tuser_reg[6]_i_65_n_4 ),
        .I3(\m_axis_tuser[6]_i_111_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser[6]_i_110_n_0 ),
        .O(\m_axis_tuser[6]_i_81_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[6]_i_82 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_29_n_0 ),
        .I2(\m_axis_tuser[6]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_31_n_4 ),
        .O(\m_axis_tuser[6]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[6]_i_83 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_29_n_0 ),
        .I2(\m_axis_tuser[6]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_31_n_4 ),
        .I4(\m_axis_tuser[6]_i_112_n_0 ),
        .I5(\m_axis_tuser[6]_i_109_n_0 ),
        .O(\m_axis_tuser[6]_i_83_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[6]_i_84 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_29_n_0 ),
        .I2(\m_axis_tuser[6]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_31_n_4 ),
        .I4(\m_axis_tuser[6]_i_109_n_0 ),
        .O(\m_axis_tuser[6]_i_84_n_0 ));
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[6]_i_85 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_28_n_0 ),
        .I2(\m_axis_tuser[6]_i_82_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_32_n_4 ),
        .I4(\m_axis_tuser[6]_i_84_n_0 ),
        .O(\m_axis_tuser[6]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[6]_i_86 
       (.I0(\m_axis_tuser[6]_i_111_n_0 ),
        .I1(p_0_out),
        .I2(\m_axis_tuser_reg[6]_i_65_n_4 ),
        .I3(\m_axis_tuser[6]_i_110_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser_reg[6]_i_31_n_4 ),
        .O(\m_axis_tuser[6]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'hB77B7BB748848448)) 
    \m_axis_tuser[6]_i_87 
       (.I0(\m_axis_tuser_reg[6]_i_31_n_4 ),
        .I1(p_0_out),
        .I2(\m_axis_tuser_reg[6]_i_65_n_4 ),
        .I3(\m_axis_tuser_reg[6]_i_98_n_4 ),
        .I4(\m_axis_tuser[6]_i_115_n_0 ),
        .I5(phase0[0]),
        .O(\m_axis_tuser[6]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[6]_i_88 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_28_n_0 ),
        .I2(\m_axis_tuser[6]_i_82_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_32_n_4 ),
        .I4(\m_axis_tuser[6]_i_83_n_0 ),
        .I5(\m_axis_tuser[6]_i_84_n_0 ),
        .O(\m_axis_tuser[6]_i_88_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[6]_i_89 
       (.I0(\m_axis_tuser[6]_i_26_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[6]_i_27_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .O(\GEN_SLOT[6].v [3]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[6]_i_9 
       (.I0(\m_axis_tuser[6]_i_25_n_0 ),
        .I1(\m_axis_tuser[6]_i_26_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[6]_i_27_n_0 ),
        .I4(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .O(\m_axis_tuser[6]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h6C39)) 
    \m_axis_tuser[6]_i_90 
       (.I0(\m_axis_tuser_reg[6]_i_12_n_4 ),
        .I1(\m_axis_tuser[6]_i_27_n_0 ),
        .I2(\m_axis_tuser[6]_i_26_n_0 ),
        .I3(DECIM_M[3]),
        .O(\m_axis_tuser[6]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h16C3803CBFFFD6FF)) 
    \m_axis_tuser[6]_i_91 
       (.I0(\m_axis_tuser[6]_i_111_n_0 ),
        .I1(\m_axis_tuser_reg[6]_i_65_n_4 ),
        .I2(\m_axis_tuser_reg[6]_i_31_n_4 ),
        .I3(p_0_out),
        .I4(\m_axis_tuser[6]_i_110_n_0 ),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[6]_i_91_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[6]_i_92 
       (.I0(\m_axis_tuser[6]_i_111_n_0 ),
        .I1(\m_axis_tuser_reg[6]_i_65_n_4 ),
        .I2(p_0_out),
        .I3(\m_axis_tuser[6]_i_110_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[6]_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[6]_i_93 
       (.I0(\m_axis_tuser[6]_i_116_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[6]_i_117_n_0 ),
        .I3(\m_axis_tuser[6]_i_118_n_0 ),
        .I4(\m_axis_tuser_reg[6]_i_98_n_4 ),
        .I5(\m_axis_tuser_reg[6]_i_65_n_4 ),
        .O(\m_axis_tuser[6]_i_93_n_0 ));
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[6]_i_94 
       (.I0(\m_axis_tuser[6]_i_116_n_0 ),
        .I1(\m_axis_tuser[6]_i_117_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[6]_i_118_n_0 ),
        .I4(\m_axis_tuser_reg[6]_i_98_n_4 ),
        .O(\m_axis_tuser[6]_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h2BD4D42BFFFF0000)) 
    \m_axis_tuser[6]_i_95 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[6]_i_117_n_0 ),
        .I2(\m_axis_tuser[6]_i_118_n_0 ),
        .I3(DECIM_M[3]),
        .I4(\m_axis_tuser[6]_i_119_n_0 ),
        .I5(\m_axis_tuser_reg[6]_i_98_n_4 ),
        .O(\m_axis_tuser[6]_i_95_n_0 ));
  LUT5 #(
    .INIT(32'hF7755110)) 
    \m_axis_tuser[6]_i_96 
       (.I0(DECIM_M[3]),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[6]_i_117_n_0 ),
        .I3(\m_axis_tuser[6]_i_118_n_0 ),
        .I4(\m_axis_tuser[6]_i_119_n_0 ),
        .O(\m_axis_tuser[6]_i_96_n_0 ));
  LUT4 #(
    .INIT(16'h2EE2)) 
    \m_axis_tuser[6]_i_97 
       (.I0(\GEN_SLOT[6].val ),
        .I1(\m_axis_tuser[6]_i_115_n_0 ),
        .I2(\m_axis_tuser[6]_i_121_n_0 ),
        .I3(\m_axis_tuser[6]_i_122_n_0 ),
        .O(\m_axis_tuser[6]_i_97_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[6]_i_99 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[6]_i_96_n_0 ),
        .I2(\m_axis_tuser[6]_i_97_n_0 ),
        .I3(\m_axis_tuser_reg[6]_i_98_n_4 ),
        .I4(\m_axis_tuser[6]_i_123_n_0 ),
        .I5(\m_axis_tuser[6]_i_131_n_0 ),
        .O(\m_axis_tuser[6]_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h4884CC00844800CC)) 
    \m_axis_tuser[7]_i_1 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_2_n_0 ),
        .I2(\m_axis_tuser[7]_i_3_n_0 ),
        .I3(\m_axis_tuser[7]_i_4_n_0 ),
        .I4(\GEN_SLOT[7].v1 ),
        .I5(DECIM_PHASE[4]),
        .O(mask_comb[7]));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[7]_i_10 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[7]_i_26_n_0 ),
        .I2(\m_axis_tuser[7]_i_27_n_0 ),
        .O(\m_axis_tuser[7]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[7]_i_100 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_64_n_0 ),
        .I2(\m_axis_tuser[7]_i_108_n_0 ),
        .O(\m_axis_tuser[7]_i_100_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[7]_i_101 
       (.I0(\m_axis_tuser[7]_i_117_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[7]_i_118_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_98_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[7]_i_95_n_0 ),
        .O(\m_axis_tuser[7]_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h1057453104755113)) 
    \m_axis_tuser[7]_i_102 
       (.I0(DECIM_M[1]),
        .I1(phase0[0]),
        .I2(\m_axis_tuser[7]_i_115_n_0 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(phase0[1]),
        .I5(\m_axis_tuser_reg[7]_i_98_n_4 ),
        .O(\m_axis_tuser[7]_i_102_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[7]_i_103 
       (.I0(\m_axis_tuser[7]_i_107_n_0 ),
        .O(\m_axis_tuser[7]_i_103_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[7]_i_104 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_108_n_0 ),
        .I2(\m_axis_tuser[7]_i_64_n_0 ),
        .O(\m_axis_tuser[7]_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h0909909099000099)) 
    \m_axis_tuser[7]_i_105 
       (.I0(\m_axis_tuser[7]_i_95_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[7]_i_117_n_0 ),
        .I3(DECIM_M[2]),
        .I4(\m_axis_tuser[7]_i_118_n_0 ),
        .I5(\m_axis_tuser_reg[7]_i_98_n_4 ),
        .O(\m_axis_tuser[7]_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h4986801043832040)) 
    \m_axis_tuser[7]_i_106 
       (.I0(\m_axis_tuser_reg[7]_i_98_n_4 ),
        .I1(phase0[1]),
        .I2(\m_axis_tuser[7]_i_53_n_0 ),
        .I3(\m_axis_tuser[7]_i_115_n_0 ),
        .I4(phase0[0]),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[7]_i_106_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[7]_i_107 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_96_n_0 ),
        .I2(\m_axis_tuser[7]_i_97_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_98_n_4 ),
        .I4(\m_axis_tuser[7]_i_122_n_0 ),
        .I5(\m_axis_tuser[7]_i_130_n_0 ),
        .O(\m_axis_tuser[7]_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[7]_i_108 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_96_n_0 ),
        .I2(\m_axis_tuser[7]_i_97_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_98_n_4 ),
        .I4(\m_axis_tuser[7]_i_130_n_0 ),
        .O(\m_axis_tuser[7]_i_108_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[7]_i_109 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_63_n_0 ),
        .I2(\m_axis_tuser[7]_i_64_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_65_n_4 ),
        .I4(\m_axis_tuser[7]_i_108_n_0 ),
        .O(\m_axis_tuser[7]_i_109_n_0 ));
  LUT6 #(
    .INIT(64'hC33C66995AA5FF00)) 
    \m_axis_tuser[7]_i_11 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_28_n_0 ),
        .I2(\m_axis_tuser[7]_i_29_n_0 ),
        .I3(\m_axis_tuser[7]_i_30_n_0 ),
        .I4(\m_axis_tuser_reg[7]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[7]_i_32_n_4 ),
        .O(\m_axis_tuser[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h794A86B5E62A19D5)) 
    \m_axis_tuser[7]_i_110 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[7]_i_115_n_0 ),
        .I2(\m_axis_tuser[7]_i_53_n_0 ),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .I5(\m_axis_tuser_reg[7]_i_98_n_4 ),
        .O(\m_axis_tuser[7]_i_110_n_0 ));
  LUT4 #(
    .INIT(16'h48B7)) 
    \m_axis_tuser[7]_i_111 
       (.I0(\m_axis_tuser_reg[7]_i_98_n_4 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser[7]_i_115_n_0 ),
        .I3(phase0[0]),
        .O(\m_axis_tuser[7]_i_111_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[7]_i_112 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_63_n_0 ),
        .I2(\m_axis_tuser[7]_i_64_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_65_n_4 ),
        .I4(\m_axis_tuser[7]_i_107_n_0 ),
        .I5(\m_axis_tuser[7]_i_108_n_0 ),
        .O(\m_axis_tuser[7]_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[7]_i_113 
       (.I0(\m_axis_tuser[7]_i_61_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[7]_i_62_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_31_n_4 ),
        .O(\m_axis_tuser[7]_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h6C39)) 
    \m_axis_tuser[7]_i_114 
       (.I0(\m_axis_tuser_reg[7]_i_31_n_4 ),
        .I1(\m_axis_tuser[7]_i_62_n_0 ),
        .I2(\m_axis_tuser[7]_i_61_n_0 ),
        .I3(DECIM_M[3]),
        .O(\m_axis_tuser[7]_i_114_n_0 ));
  LUT6 #(
    .INIT(64'hFF5DDF45DF455D04)) 
    \m_axis_tuser[7]_i_115 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_131_n_0 ),
        .I2(DECIM_M[3]),
        .I3(phase0[4]),
        .I4(phase0[3]),
        .I5(\m_axis_tuser[7]_i_132_n_0 ),
        .O(\m_axis_tuser[7]_i_115_n_0 ));
  LUT6 #(
    .INIT(64'h68966BFF0169FDFF)) 
    \m_axis_tuser[7]_i_116 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[7]_i_115_n_0 ),
        .I2(\m_axis_tuser_reg[7]_i_98_n_4 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(DECIM_M[1]),
        .I5(phase0[1]),
        .O(\m_axis_tuser[7]_i_116_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h86BF19DF)) 
    \m_axis_tuser[7]_i_117 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[7]_i_115_n_0 ),
        .I2(\m_axis_tuser[7]_i_53_n_0 ),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .O(\m_axis_tuser[7]_i_117_n_0 ));
  LUT6 #(
    .INIT(64'h0EFEF101FE0E01F1)) 
    \m_axis_tuser[7]_i_118 
       (.I0(phase0[0]),
        .I1(phase0[1]),
        .I2(\m_axis_tuser[7]_i_115_n_0 ),
        .I3(DECIM_M[2]),
        .I4(phase0[2]),
        .I5(\m_axis_tuser[7]_i_133_n_0 ),
        .O(\m_axis_tuser[7]_i_118_n_0 ));
  LUT6 #(
    .INIT(64'h2E2EE22EE22EE2E2)) 
    \m_axis_tuser[7]_i_119 
       (.I0(\GEN_SLOT[7].val [3]),
        .I1(\m_axis_tuser[7]_i_115_n_0 ),
        .I2(\m_axis_tuser[3]_i_121_n_0 ),
        .I3(DECIM_M[2]),
        .I4(phase0[2]),
        .I5(\m_axis_tuser[7]_i_133_n_0 ),
        .O(\m_axis_tuser[7]_i_119_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h01FFFE00)) 
    \m_axis_tuser[7]_i_120 
       (.I0(phase0[1]),
        .I1(phase0[0]),
        .I2(phase0[2]),
        .I3(phase0[3]),
        .I4(phase0[4]),
        .O(\GEN_SLOT[7].val [4]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hE888EEE8)) 
    \m_axis_tuser[7]_i_121 
       (.I0(DECIM_M[3]),
        .I1(phase0[3]),
        .I2(\m_axis_tuser[7]_i_133_n_0 ),
        .I3(phase0[2]),
        .I4(DECIM_M[2]),
        .O(\m_axis_tuser[7]_i_121_n_0 ));
  LUT6 #(
    .INIT(64'h202222B200000000)) 
    \m_axis_tuser[7]_i_122 
       (.I0(DECIM_M[4]),
        .I1(phase0[4]),
        .I2(DECIM_M[3]),
        .I3(phase0[3]),
        .I4(\m_axis_tuser[7]_i_135_n_0 ),
        .I5(\m_axis_tuser[7]_i_115_n_0 ),
        .O(\m_axis_tuser[7]_i_122_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[7]_i_123 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_97_n_0 ),
        .I2(\m_axis_tuser[7]_i_130_n_0 ),
        .O(\m_axis_tuser[7]_i_123_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[7]_i_124 
       (.I0(\m_axis_tuser[7]_i_118_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[7]_i_119_n_0 ),
        .O(\m_axis_tuser[7]_i_124_n_0 ));
  LUT5 #(
    .INIT(32'h15403157)) 
    \m_axis_tuser[7]_i_125 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser[7]_i_115_n_0 ),
        .I3(phase0[1]),
        .I4(phase0[0]),
        .O(\m_axis_tuser[7]_i_125_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[7]_i_126 
       (.I0(\m_axis_tuser[7]_i_122_n_0 ),
        .O(\m_axis_tuser[7]_i_126_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[7]_i_127 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_130_n_0 ),
        .I2(\m_axis_tuser[7]_i_97_n_0 ),
        .O(\m_axis_tuser[7]_i_127_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[7]_i_128 
       (.I0(\m_axis_tuser[7]_i_119_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[7]_i_118_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[7]_i_128_n_0 ));
  LUT5 #(
    .INIT(32'h81288422)) 
    \m_axis_tuser[7]_i_129 
       (.I0(phase0[0]),
        .I1(phase0[1]),
        .I2(\m_axis_tuser[7]_i_115_n_0 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[7]_i_129_n_0 ));
  LUT6 #(
    .INIT(64'h0CAC5C0CA0F000A0)) 
    \m_axis_tuser[7]_i_130 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_136_n_0 ),
        .I2(\m_axis_tuser[7]_i_115_n_0 ),
        .I3(\m_axis_tuser[7]_i_121_n_0 ),
        .I4(DECIM_M[3]),
        .I5(phase0[4]),
        .O(\m_axis_tuser[7]_i_130_n_0 ));
  LUT6 #(
    .INIT(64'h22B2B2BB27B727B7)) 
    \m_axis_tuser[7]_i_131 
       (.I0(phase0[2]),
        .I1(DECIM_M[2]),
        .I2(phase0[1]),
        .I3(DECIM_M[1]),
        .I4(\m_axis_tuser[7]_i_53_n_0 ),
        .I5(phase0[0]),
        .O(\m_axis_tuser[7]_i_131_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \m_axis_tuser[7]_i_132 
       (.I0(phase0[1]),
        .I1(phase0[0]),
        .I2(phase0[2]),
        .O(\m_axis_tuser[7]_i_132_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h20F2)) 
    \m_axis_tuser[7]_i_133 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(phase0[1]),
        .I3(DECIM_M[1]),
        .O(\m_axis_tuser[7]_i_133_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'h01FE)) 
    \m_axis_tuser[7]_i_134 
       (.I0(phase0[2]),
        .I1(phase0[0]),
        .I2(phase0[1]),
        .I3(phase0[3]),
        .O(\GEN_SLOT[7].val [3]));
  LUT6 #(
    .INIT(64'h20F20000FFFF20F2)) 
    \m_axis_tuser[7]_i_135 
       (.I0(phase0[0]),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(phase0[1]),
        .I3(DECIM_M[1]),
        .I4(phase0[2]),
        .I5(DECIM_M[2]),
        .O(\m_axis_tuser[7]_i_135_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT4 #(
    .INIT(16'hAAA8)) 
    \m_axis_tuser[7]_i_136 
       (.I0(phase0[3]),
        .I1(phase0[2]),
        .I2(phase0[0]),
        .I3(phase0[1]),
        .O(\m_axis_tuser[7]_i_136_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[7]_i_14 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_9_n_0 ),
        .I2(\GEN_SLOT[7].v [4]),
        .I3(\m_axis_tuser_reg[7]_i_13_n_4 ),
        .I4(\GEN_SLOT[7].v__0 ),
        .I5(\GEN_SLOT[7].v [5]),
        .O(\m_axis_tuser[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hD5FF7F55D4FF2B00)) 
    \m_axis_tuser[7]_i_15 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_9_n_0 ),
        .I2(\GEN_SLOT[7].v [4]),
        .I3(\m_axis_tuser_reg[7]_i_13_n_4 ),
        .I4(\GEN_SLOT[7].v [5]),
        .I5(\m_axis_tuser[7]_i_4_n_0 ),
        .O(\m_axis_tuser[7]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[7]_i_16 
       (.I0(\m_axis_tuser[7]_i_24_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[7]_i_8_n_0 ),
        .O(\m_axis_tuser[7]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[7]_i_17 
       (.I0(DECIM_M[1]),
        .I1(\GEN_SLOT[7].v [1]),
        .I2(\m_axis_tuser_reg[7]_i_13_n_4 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(\GEN_SLOT[7].v [0]),
        .O(\m_axis_tuser[7]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h0000FFFF2B00D4FF)) 
    \m_axis_tuser[7]_i_18 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_9_n_0 ),
        .I2(\GEN_SLOT[7].v [4]),
        .I3(\m_axis_tuser_reg[7]_i_13_n_4 ),
        .I4(\GEN_SLOT[7].v__0 ),
        .I5(\GEN_SLOT[7].v [5]),
        .O(\m_axis_tuser[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h2A0080AA01005455)) 
    \m_axis_tuser[7]_i_19 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_9_n_0 ),
        .I2(\GEN_SLOT[7].v [4]),
        .I3(\m_axis_tuser_reg[7]_i_13_n_4 ),
        .I4(\GEN_SLOT[7].v [5]),
        .I5(\m_axis_tuser[7]_i_4_n_0 ),
        .O(\m_axis_tuser[7]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h2882AA00822800AA)) 
    \m_axis_tuser[7]_i_2 
       (.I0(\m_axis_tuser[7]_i_6_n_0 ),
        .I1(\m_axis_tuser[7]_i_7_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[7]_i_8_n_0 ),
        .I4(\GEN_SLOT[7].v1 ),
        .I5(DECIM_PHASE[3]),
        .O(\m_axis_tuser[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[7]_i_20 
       (.I0(\m_axis_tuser[7]_i_8_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[7]_i_24_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[7]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[7]_i_21 
       (.I0(\m_axis_tuser_reg[7]_i_13_n_4 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\GEN_SLOT[7].v [0]),
        .I3(DECIM_M[1]),
        .I4(\GEN_SLOT[7].v [1]),
        .O(\m_axis_tuser[7]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0999900090000999)) 
    \m_axis_tuser[7]_i_22 
       (.I0(cond_mod6_return),
        .I1(DECIM_PHASE[1]),
        .I2(\GEN_SLOT[7].v1 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(\m_axis_tuser[7]_i_56_n_0 ),
        .I5(DECIM_PHASE[0]),
        .O(\m_axis_tuser[7]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[7]_i_23 
       (.I0(\GEN_SLOT[7].v [0]),
        .I1(\m_axis_tuser_reg[7]_i_13_n_4 ),
        .I2(\m_axis_tuser[7]_i_53_n_0 ),
        .I3(\GEN_SLOT[7].v [1]),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[7]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[7]_i_24 
       (.I0(\m_axis_tuser[7]_i_57_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[7]_i_58_n_0 ),
        .I3(\m_axis_tuser[7]_i_59_n_0 ),
        .I4(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[7]_i_13_n_4 ),
        .O(\m_axis_tuser[7]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[7]_i_25 
       (.I0(\m_axis_tuser[7]_i_57_n_0 ),
        .I1(\m_axis_tuser[7]_i_58_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[7]_i_59_n_0 ),
        .I4(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .O(\m_axis_tuser[7]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[7]_i_26 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[7]_i_58_n_0 ),
        .I2(\m_axis_tuser[7]_i_59_n_0 ),
        .O(\m_axis_tuser[7]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[7]_i_27 
       (.I0(\m_axis_tuser[7]_i_60_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[7]_i_61_n_0 ),
        .I3(\m_axis_tuser[7]_i_62_n_0 ),
        .I4(\m_axis_tuser_reg[7]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[7]_i_32_n_4 ),
        .O(\m_axis_tuser[7]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[7]_i_28 
       (.I0(\m_axis_tuser[7]_i_60_n_0 ),
        .I1(\m_axis_tuser[7]_i_61_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[7]_i_62_n_0 ),
        .I4(\m_axis_tuser_reg[7]_i_31_n_4 ),
        .O(\m_axis_tuser[7]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[7]_i_29 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[7]_i_61_n_0 ),
        .I2(\m_axis_tuser[7]_i_62_n_0 ),
        .O(\m_axis_tuser[7]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[7]_i_3 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[7]_i_7_n_0 ),
        .I2(\m_axis_tuser[7]_i_8_n_0 ),
        .O(\m_axis_tuser[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[7]_i_30 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_63_n_0 ),
        .I2(\m_axis_tuser[7]_i_64_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_65_n_4 ),
        .O(\m_axis_tuser[7]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[7]_i_33 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_28_n_0 ),
        .I2(\m_axis_tuser[7]_i_82_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_32_n_4 ),
        .I4(\m_axis_tuser[7]_i_83_n_0 ),
        .I5(\m_axis_tuser[7]_i_84_n_0 ),
        .O(\m_axis_tuser[7]_i_33_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[7]_i_34 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_11_n_0 ),
        .I2(\m_axis_tuser[7]_i_85_n_0 ),
        .O(\m_axis_tuser[7]_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[7]_i_35 
       (.I0(\m_axis_tuser[7]_i_59_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[7]_i_27_n_0 ),
        .O(\m_axis_tuser[7]_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[7]_i_36 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[7]_i_86_n_0 ),
        .I2(\m_axis_tuser_reg[7]_i_32_n_4 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(\m_axis_tuser[7]_i_87_n_0 ),
        .O(\m_axis_tuser[7]_i_36_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[7]_i_37 
       (.I0(\m_axis_tuser[7]_i_88_n_0 ),
        .O(\m_axis_tuser[7]_i_37_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[7]_i_38 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_85_n_0 ),
        .I2(\m_axis_tuser[7]_i_11_n_0 ),
        .O(\m_axis_tuser[7]_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[7]_i_39 
       (.I0(\m_axis_tuser[7]_i_27_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[7]_i_59_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[7]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hC33C66995AA5FF00)) 
    \m_axis_tuser[7]_i_4 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_9_n_0 ),
        .I2(\m_axis_tuser[7]_i_10_n_0 ),
        .I3(\m_axis_tuser[7]_i_11_n_0 ),
        .I4(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[7]_i_13_n_4 ),
        .O(\m_axis_tuser[7]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[7]_i_40 
       (.I0(\m_axis_tuser_reg[7]_i_32_n_4 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser[7]_i_87_n_0 ),
        .I3(DECIM_M[1]),
        .I4(\m_axis_tuser[7]_i_86_n_0 ),
        .O(\m_axis_tuser[7]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[7]_i_41 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_10_n_0 ),
        .I2(\m_axis_tuser[7]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .I4(\m_axis_tuser[7]_i_88_n_0 ),
        .I5(\m_axis_tuser[7]_i_85_n_0 ),
        .O(\m_axis_tuser[7]_i_41_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[7]_i_42 
       (.I0(DECIM_M[4]),
        .I1(\GEN_SLOT[7].v [4]),
        .I2(\GEN_SLOT[7].v [5]),
        .O(\m_axis_tuser[7]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[7]_i_43 
       (.I0(\m_axis_tuser[7]_i_58_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[7]_i_59_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\GEN_SLOT[7].v [3]),
        .O(\m_axis_tuser[7]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h0D45541C455D1C04)) 
    \m_axis_tuser[7]_i_44 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[7]_i_87_n_0 ),
        .I2(\m_axis_tuser[7]_i_53_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_32_n_4 ),
        .I4(\m_axis_tuser[7]_i_86_n_0 ),
        .I5(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .O(\m_axis_tuser[7]_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[7]_i_45 
       (.I0(\GEN_SLOT[7].v__0 ),
        .O(\m_axis_tuser[7]_i_45_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[7]_i_46 
       (.I0(DECIM_M[4]),
        .I1(\GEN_SLOT[7].v [5]),
        .I2(\GEN_SLOT[7].v [4]),
        .O(\m_axis_tuser[7]_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h5AC30000)) 
    \m_axis_tuser[7]_i_47 
       (.I0(\m_axis_tuser[7]_i_58_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[7]_i_59_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .I4(\m_axis_tuser[7]_i_90_n_0 ),
        .O(\m_axis_tuser[7]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h9000090009999099)) 
    \m_axis_tuser[7]_i_48 
       (.I0(\GEN_SLOT[7].v [1]),
        .I1(DECIM_M[1]),
        .I2(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(\m_axis_tuser_reg[7]_i_32_n_4 ),
        .I5(\m_axis_tuser[7]_i_87_n_0 ),
        .O(\m_axis_tuser[7]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[7]_i_49 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_10_n_0 ),
        .I2(\m_axis_tuser[7]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .O(\GEN_SLOT[7].v [4]));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[7]_i_50 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_10_n_0 ),
        .I2(\m_axis_tuser[7]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .I4(\m_axis_tuser[7]_i_88_n_0 ),
        .I5(\m_axis_tuser[7]_i_85_n_0 ),
        .O(\GEN_SLOT[7].v__0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[7]_i_51 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_10_n_0 ),
        .I2(\m_axis_tuser[7]_i_11_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .I4(\m_axis_tuser[7]_i_85_n_0 ),
        .O(\GEN_SLOT[7].v [5]));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[7]_i_52 
       (.I0(\m_axis_tuser[7]_i_87_n_0 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[7]_i_32_n_4 ),
        .I3(\m_axis_tuser[7]_i_86_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .O(\GEN_SLOT[7].v [1]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \m_axis_tuser[7]_i_53 
       (.I0(DECIM_M[2]),
        .I1(DECIM_M[1]),
        .I2(DECIM_M[3]),
        .I3(DECIM_M[4]),
        .I4(DECIM_M[0]),
        .O(\m_axis_tuser[7]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hB748)) 
    \m_axis_tuser[7]_i_54 
       (.I0(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[7]_i_32_n_4 ),
        .I3(\m_axis_tuser[7]_i_87_n_0 ),
        .O(\GEN_SLOT[7].v [0]));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[7]_i_55 
       (.I0(\GEN_SLOT[7].v [0]),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[7]_i_13_n_4 ),
        .I3(\GEN_SLOT[7].v [1]),
        .I4(DECIM_M[1]),
        .I5(\GEN_SLOT[7].v1 ),
        .O(cond_mod6_return));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h7BB78448)) 
    \m_axis_tuser[7]_i_56 
       (.I0(\m_axis_tuser_reg[7]_i_13_n_4 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .I3(\m_axis_tuser_reg[7]_i_32_n_4 ),
        .I4(\m_axis_tuser[7]_i_87_n_0 ),
        .O(\m_axis_tuser[7]_i_56_n_0 ));
  LUT6 #(
    .INIT(64'h16C3803CBFFFD6FF)) 
    \m_axis_tuser[7]_i_57 
       (.I0(\m_axis_tuser[7]_i_87_n_0 ),
        .I1(\m_axis_tuser_reg[7]_i_32_n_4 ),
        .I2(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(\m_axis_tuser[7]_i_86_n_0 ),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[7]_i_57_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[7]_i_58 
       (.I0(\m_axis_tuser[7]_i_87_n_0 ),
        .I1(\m_axis_tuser_reg[7]_i_32_n_4 ),
        .I2(\m_axis_tuser[7]_i_53_n_0 ),
        .I3(\m_axis_tuser[7]_i_86_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[7]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[7]_i_59 
       (.I0(\m_axis_tuser[7]_i_91_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[7]_i_92_n_0 ),
        .I3(\m_axis_tuser[7]_i_93_n_0 ),
        .I4(\m_axis_tuser_reg[7]_i_31_n_4 ),
        .I5(\m_axis_tuser_reg[7]_i_32_n_4 ),
        .O(\m_axis_tuser[7]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h2882822888882222)) 
    \m_axis_tuser[7]_i_6 
       (.I0(\m_axis_tuser[7]_i_22_n_0 ),
        .I1(DECIM_PHASE[2]),
        .I2(\m_axis_tuser[7]_i_23_n_0 ),
        .I3(DECIM_M[2]),
        .I4(\m_axis_tuser[7]_i_24_n_0 ),
        .I5(\GEN_SLOT[7].v1 ),
        .O(\m_axis_tuser[7]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[7]_i_60 
       (.I0(\m_axis_tuser[7]_i_91_n_0 ),
        .I1(\m_axis_tuser[7]_i_92_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[7]_i_93_n_0 ),
        .I4(\m_axis_tuser_reg[7]_i_31_n_4 ),
        .O(\m_axis_tuser[7]_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[7]_i_61 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[7]_i_92_n_0 ),
        .I2(\m_axis_tuser[7]_i_93_n_0 ),
        .O(\m_axis_tuser[7]_i_61_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[7]_i_62 
       (.I0(\m_axis_tuser[7]_i_94_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[7]_i_95_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_65_n_4 ),
        .O(\m_axis_tuser[7]_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[7]_i_63 
       (.I0(DECIM_M[3]),
        .I1(\m_axis_tuser[7]_i_94_n_0 ),
        .I2(\m_axis_tuser[7]_i_95_n_0 ),
        .O(\m_axis_tuser[7]_i_63_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[7]_i_64 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_96_n_0 ),
        .I2(\m_axis_tuser[7]_i_97_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_98_n_4 ),
        .O(\m_axis_tuser[7]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[7]_i_66 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_63_n_0 ),
        .I2(\m_axis_tuser[7]_i_64_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_65_n_4 ),
        .I4(\m_axis_tuser[7]_i_107_n_0 ),
        .I5(\m_axis_tuser[7]_i_108_n_0 ),
        .O(\m_axis_tuser[7]_i_66_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[7]_i_67 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_30_n_0 ),
        .I2(\m_axis_tuser[7]_i_109_n_0 ),
        .O(\m_axis_tuser[7]_i_67_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tuser[7]_i_68 
       (.I0(\m_axis_tuser[7]_i_93_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[7]_i_62_n_0 ),
        .O(\m_axis_tuser[7]_i_68_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \m_axis_tuser[7]_i_69 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[7]_i_110_n_0 ),
        .I2(\m_axis_tuser_reg[7]_i_65_n_4 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(\m_axis_tuser[7]_i_111_n_0 ),
        .O(\m_axis_tuser[7]_i_69_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hD4)) 
    \m_axis_tuser[7]_i_7 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[7]_i_23_n_0 ),
        .I2(\m_axis_tuser[7]_i_24_n_0 ),
        .O(\m_axis_tuser[7]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[7]_i_70 
       (.I0(\m_axis_tuser[7]_i_112_n_0 ),
        .O(\m_axis_tuser[7]_i_70_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[7]_i_71 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_109_n_0 ),
        .I2(\m_axis_tuser[7]_i_30_n_0 ),
        .O(\m_axis_tuser[7]_i_71_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tuser[7]_i_72 
       (.I0(\m_axis_tuser[7]_i_62_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[7]_i_93_n_0 ),
        .I3(DECIM_M[2]),
        .O(\m_axis_tuser[7]_i_72_n_0 ));
  LUT5 #(
    .INIT(32'h49080243)) 
    \m_axis_tuser[7]_i_73 
       (.I0(\m_axis_tuser_reg[7]_i_65_n_4 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser[7]_i_111_n_0 ),
        .I3(DECIM_M[1]),
        .I4(\m_axis_tuser[7]_i_110_n_0 ),
        .O(\m_axis_tuser[7]_i_73_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[7]_i_74 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_29_n_0 ),
        .I2(\m_axis_tuser[7]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_31_n_4 ),
        .I4(\m_axis_tuser[7]_i_112_n_0 ),
        .I5(\m_axis_tuser[7]_i_109_n_0 ),
        .O(\m_axis_tuser[7]_i_74_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \m_axis_tuser[7]_i_75 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_82_n_0 ),
        .I2(\m_axis_tuser[7]_i_84_n_0 ),
        .O(\m_axis_tuser[7]_i_75_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \m_axis_tuser[7]_i_76 
       (.I0(\m_axis_tuser[7]_i_92_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[7]_i_93_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_31_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\m_axis_tuser[7]_i_113_n_0 ),
        .O(\m_axis_tuser[7]_i_76_n_0 ));
  LUT6 #(
    .INIT(64'h0D45541C455D1C04)) 
    \m_axis_tuser[7]_i_77 
       (.I0(DECIM_M[1]),
        .I1(\m_axis_tuser[7]_i_111_n_0 ),
        .I2(\m_axis_tuser[7]_i_53_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_65_n_4 ),
        .I4(\m_axis_tuser[7]_i_110_n_0 ),
        .I5(\m_axis_tuser_reg[7]_i_31_n_4 ),
        .O(\m_axis_tuser[7]_i_77_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_axis_tuser[7]_i_78 
       (.I0(\m_axis_tuser[7]_i_83_n_0 ),
        .O(\m_axis_tuser[7]_i_78_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \m_axis_tuser[7]_i_79 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_84_n_0 ),
        .I2(\m_axis_tuser[7]_i_82_n_0 ),
        .O(\m_axis_tuser[7]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[7]_i_8 
       (.I0(\m_axis_tuser[7]_i_25_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[7]_i_26_n_0 ),
        .I3(\m_axis_tuser[7]_i_27_n_0 ),
        .I4(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .I5(\m_axis_tuser_reg[7]_i_13_n_4 ),
        .O(\m_axis_tuser[7]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h5AC30000)) 
    \m_axis_tuser[7]_i_80 
       (.I0(\m_axis_tuser[7]_i_92_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[7]_i_93_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_31_n_4 ),
        .I4(\m_axis_tuser[7]_i_114_n_0 ),
        .O(\m_axis_tuser[7]_i_80_n_0 ));
  LUT6 #(
    .INIT(64'h0469804880120433)) 
    \m_axis_tuser[7]_i_81 
       (.I0(\m_axis_tuser_reg[7]_i_31_n_4 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[7]_i_65_n_4 ),
        .I3(\m_axis_tuser[7]_i_111_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser[7]_i_110_n_0 ),
        .O(\m_axis_tuser[7]_i_81_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[7]_i_82 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_29_n_0 ),
        .I2(\m_axis_tuser[7]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_31_n_4 ),
        .O(\m_axis_tuser[7]_i_82_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[7]_i_83 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_29_n_0 ),
        .I2(\m_axis_tuser[7]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_31_n_4 ),
        .I4(\m_axis_tuser[7]_i_112_n_0 ),
        .I5(\m_axis_tuser[7]_i_109_n_0 ),
        .O(\m_axis_tuser[7]_i_83_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[7]_i_84 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_29_n_0 ),
        .I2(\m_axis_tuser[7]_i_30_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_31_n_4 ),
        .I4(\m_axis_tuser[7]_i_109_n_0 ),
        .O(\m_axis_tuser[7]_i_84_n_0 ));
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \m_axis_tuser[7]_i_85 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_28_n_0 ),
        .I2(\m_axis_tuser[7]_i_82_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_32_n_4 ),
        .I4(\m_axis_tuser[7]_i_84_n_0 ),
        .O(\m_axis_tuser[7]_i_85_n_0 ));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \m_axis_tuser[7]_i_86 
       (.I0(\m_axis_tuser[7]_i_111_n_0 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[7]_i_65_n_4 ),
        .I3(\m_axis_tuser[7]_i_110_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\m_axis_tuser_reg[7]_i_31_n_4 ),
        .O(\m_axis_tuser[7]_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h48848448B77B7BB7)) 
    \m_axis_tuser[7]_i_87 
       (.I0(\m_axis_tuser_reg[7]_i_31_n_4 ),
        .I1(\m_axis_tuser[7]_i_53_n_0 ),
        .I2(\m_axis_tuser_reg[7]_i_65_n_4 ),
        .I3(\m_axis_tuser_reg[7]_i_98_n_4 ),
        .I4(\m_axis_tuser[7]_i_115_n_0 ),
        .I5(phase0[0]),
        .O(\m_axis_tuser[7]_i_87_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[7]_i_88 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_28_n_0 ),
        .I2(\m_axis_tuser[7]_i_82_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_32_n_4 ),
        .I4(\m_axis_tuser[7]_i_83_n_0 ),
        .I5(\m_axis_tuser[7]_i_84_n_0 ),
        .O(\m_axis_tuser[7]_i_88_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \m_axis_tuser[7]_i_89 
       (.I0(\m_axis_tuser[7]_i_26_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\m_axis_tuser[7]_i_27_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .O(\GEN_SLOT[7].v [3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[7]_i_9 
       (.I0(\m_axis_tuser[7]_i_25_n_0 ),
        .I1(\m_axis_tuser[7]_i_26_n_0 ),
        .I2(DECIM_M[3]),
        .I3(\m_axis_tuser[7]_i_27_n_0 ),
        .I4(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .O(\m_axis_tuser[7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h6C39)) 
    \m_axis_tuser[7]_i_90 
       (.I0(\m_axis_tuser_reg[7]_i_12_n_4 ),
        .I1(\m_axis_tuser[7]_i_27_n_0 ),
        .I2(\m_axis_tuser[7]_i_26_n_0 ),
        .I3(DECIM_M[3]),
        .O(\m_axis_tuser[7]_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h16C3803CBFFFD6FF)) 
    \m_axis_tuser[7]_i_91 
       (.I0(\m_axis_tuser[7]_i_111_n_0 ),
        .I1(\m_axis_tuser_reg[7]_i_65_n_4 ),
        .I2(\m_axis_tuser_reg[7]_i_31_n_4 ),
        .I3(\m_axis_tuser[7]_i_53_n_0 ),
        .I4(\m_axis_tuser[7]_i_110_n_0 ),
        .I5(DECIM_M[1]),
        .O(\m_axis_tuser[7]_i_91_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \m_axis_tuser[7]_i_92 
       (.I0(\m_axis_tuser[7]_i_111_n_0 ),
        .I1(\m_axis_tuser_reg[7]_i_65_n_4 ),
        .I2(\m_axis_tuser[7]_i_53_n_0 ),
        .I3(\m_axis_tuser[7]_i_110_n_0 ),
        .I4(DECIM_M[1]),
        .O(\m_axis_tuser[7]_i_92_n_0 ));
  LUT6 #(
    .INIT(64'hA55A66993CC3FF00)) 
    \m_axis_tuser[7]_i_93 
       (.I0(\m_axis_tuser[7]_i_116_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[7]_i_117_n_0 ),
        .I3(\m_axis_tuser[7]_i_118_n_0 ),
        .I4(\m_axis_tuser_reg[7]_i_98_n_4 ),
        .I5(\m_axis_tuser_reg[7]_i_65_n_4 ),
        .O(\m_axis_tuser[7]_i_93_n_0 ));
  LUT5 #(
    .INIT(32'h2E8BAF0A)) 
    \m_axis_tuser[7]_i_94 
       (.I0(\m_axis_tuser[7]_i_116_n_0 ),
        .I1(\m_axis_tuser[7]_i_117_n_0 ),
        .I2(DECIM_M[2]),
        .I3(\m_axis_tuser[7]_i_118_n_0 ),
        .I4(\m_axis_tuser_reg[7]_i_98_n_4 ),
        .O(\m_axis_tuser[7]_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h2BD4D42BFFFF0000)) 
    \m_axis_tuser[7]_i_95 
       (.I0(DECIM_M[2]),
        .I1(\m_axis_tuser[7]_i_117_n_0 ),
        .I2(\m_axis_tuser[7]_i_118_n_0 ),
        .I3(DECIM_M[3]),
        .I4(\m_axis_tuser[7]_i_119_n_0 ),
        .I5(\m_axis_tuser_reg[7]_i_98_n_4 ),
        .O(\m_axis_tuser[7]_i_95_n_0 ));
  LUT5 #(
    .INIT(32'hF7755110)) 
    \m_axis_tuser[7]_i_96 
       (.I0(DECIM_M[3]),
        .I1(DECIM_M[2]),
        .I2(\m_axis_tuser[7]_i_117_n_0 ),
        .I3(\m_axis_tuser[7]_i_118_n_0 ),
        .I4(\m_axis_tuser[7]_i_119_n_0 ),
        .O(\m_axis_tuser[7]_i_96_n_0 ));
  LUT6 #(
    .INIT(64'h5CACAC5CAC5C5CAC)) 
    \m_axis_tuser[7]_i_97 
       (.I0(DECIM_M[4]),
        .I1(\GEN_SLOT[7].val [4]),
        .I2(\m_axis_tuser[7]_i_115_n_0 ),
        .I3(DECIM_M[3]),
        .I4(phase0[4]),
        .I5(\m_axis_tuser[7]_i_121_n_0 ),
        .O(\m_axis_tuser[7]_i_97_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \m_axis_tuser[7]_i_99 
       (.I0(DECIM_M[4]),
        .I1(\m_axis_tuser[7]_i_96_n_0 ),
        .I2(\m_axis_tuser[7]_i_97_n_0 ),
        .I3(\m_axis_tuser_reg[7]_i_98_n_4 ),
        .I4(\m_axis_tuser[7]_i_122_n_0 ),
        .I5(\m_axis_tuser[7]_i_130_n_0 ),
        .O(\m_axis_tuser[7]_i_99_n_0 ));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) 
  FDRE \m_axis_tuser_reg[0] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(mask_comb[0]),
        .Q(m_axis_tuser[0]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[0]_i_12 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[0]_i_12_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[0]_i_12_n_4 ,\m_axis_tuser_reg[0]_i_12_n_5 ,\m_axis_tuser_reg[0]_i_12_n_6 ,\m_axis_tuser_reg[0]_i_12_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[0]_i_33_n_0 ,\m_axis_tuser[0]_i_34_n_0 ,\m_axis_tuser[0]_i_35_n_0 ,\m_axis_tuser[0]_i_36_n_0 }),
        .O(\NLW_m_axis_tuser_reg[0]_i_12_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[0]_i_37_n_0 ,\m_axis_tuser[0]_i_38_n_0 ,\m_axis_tuser[0]_i_39_n_0 ,\m_axis_tuser[0]_i_40_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[0]_i_13 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[0]_i_13_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[0]_i_13_n_4 ,\m_axis_tuser_reg[0]_i_13_n_5 ,\m_axis_tuser_reg[0]_i_13_n_6 ,\m_axis_tuser_reg[0]_i_13_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[0]_i_41_n_0 ,\m_axis_tuser[0]_i_42_n_0 ,\m_axis_tuser[0]_i_43_n_0 ,\m_axis_tuser[0]_i_44_n_0 }),
        .O(\NLW_m_axis_tuser_reg[0]_i_13_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[0]_i_45_n_0 ,\m_axis_tuser[0]_i_46_n_0 ,\m_axis_tuser[0]_i_47_n_0 ,\m_axis_tuser[0]_i_48_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[0]_i_31 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[0]_i_31_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[0]_i_31_n_4 ,\m_axis_tuser_reg[0]_i_31_n_5 ,\m_axis_tuser_reg[0]_i_31_n_6 ,\m_axis_tuser_reg[0]_i_31_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[0]_i_65_n_0 ,\m_axis_tuser[0]_i_66_n_0 ,\m_axis_tuser[0]_i_67_n_0 ,\m_axis_tuser[0]_i_68_n_0 }),
        .O(\NLW_m_axis_tuser_reg[0]_i_31_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[0]_i_69_n_0 ,\m_axis_tuser[0]_i_70_n_0 ,\m_axis_tuser[0]_i_71_n_0 ,\m_axis_tuser[0]_i_72_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[0]_i_32 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[0]_i_32_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[0]_i_32_n_4 ,\m_axis_tuser_reg[0]_i_32_n_5 ,\m_axis_tuser_reg[0]_i_32_n_6 ,\m_axis_tuser_reg[0]_i_32_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[0]_i_73_n_0 ,\m_axis_tuser[0]_i_74_n_0 ,\m_axis_tuser[0]_i_75_n_0 ,\m_axis_tuser[0]_i_76_n_0 }),
        .O(\NLW_m_axis_tuser_reg[0]_i_32_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[0]_i_77_n_0 ,\m_axis_tuser[0]_i_78_n_0 ,\m_axis_tuser[0]_i_79_n_0 ,\m_axis_tuser[0]_i_80_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[0]_i_5 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[0]_i_5_CO_UNCONNECTED [7:4],\GEN_SLOT[0].v1 ,\m_axis_tuser_reg[0]_i_5_n_5 ,\m_axis_tuser_reg[0]_i_5_n_6 ,\m_axis_tuser_reg[0]_i_5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[0]_i_14_n_0 ,\m_axis_tuser[0]_i_15_n_0 ,\m_axis_tuser[0]_i_16_n_0 ,\m_axis_tuser[0]_i_17_n_0 }),
        .O(\NLW_m_axis_tuser_reg[0]_i_5_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[0]_i_18_n_0 ,\m_axis_tuser[0]_i_19_n_0 ,\m_axis_tuser[0]_i_20_n_0 ,\m_axis_tuser[0]_i_21_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[0]_i_64 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[0]_i_64_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[0]_i_64_n_4 ,\m_axis_tuser_reg[0]_i_64_n_5 ,\m_axis_tuser_reg[0]_i_64_n_6 ,\m_axis_tuser_reg[0]_i_64_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[0]_i_98_n_0 ,\m_axis_tuser[0]_i_99_n_0 ,\m_axis_tuser[0]_i_100_n_0 ,\m_axis_tuser[0]_i_101_n_0 }),
        .O(\NLW_m_axis_tuser_reg[0]_i_64_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[0]_i_102_n_0 ,\m_axis_tuser[0]_i_103_n_0 ,\m_axis_tuser[0]_i_104_n_0 ,\m_axis_tuser[0]_i_105_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[0]_i_97 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[0]_i_97_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[0]_i_97_n_4 ,\m_axis_tuser_reg[0]_i_97_n_5 ,\m_axis_tuser_reg[0]_i_97_n_6 ,\m_axis_tuser_reg[0]_i_97_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[0]_i_119_n_0 ,\m_axis_tuser[0]_i_120_n_0 ,\m_axis_tuser[0]_i_121_n_0 ,\m_axis_tuser[0]_i_122_n_0 }),
        .O(\NLW_m_axis_tuser_reg[0]_i_97_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[0]_i_123_n_0 ,\m_axis_tuser[0]_i_124_n_0 ,\m_axis_tuser[0]_i_125_n_0 ,\m_axis_tuser[0]_i_126_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) 
  FDRE \m_axis_tuser_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(mask_comb[1]),
        .Q(m_axis_tuser[1]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[1]_i_12 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[1]_i_12_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[1]_i_12_n_4 ,\m_axis_tuser_reg[1]_i_12_n_5 ,\m_axis_tuser_reg[1]_i_12_n_6 ,\m_axis_tuser_reg[1]_i_12_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[1]_i_33_n_0 ,\m_axis_tuser[1]_i_34_n_0 ,\m_axis_tuser[1]_i_35_n_0 ,\m_axis_tuser[1]_i_36_n_0 }),
        .O(\NLW_m_axis_tuser_reg[1]_i_12_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[1]_i_37_n_0 ,\m_axis_tuser[1]_i_38_n_0 ,\m_axis_tuser[1]_i_39_n_0 ,\m_axis_tuser[1]_i_40_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[1]_i_13 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[1]_i_13_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[1]_i_13_n_4 ,\m_axis_tuser_reg[1]_i_13_n_5 ,\m_axis_tuser_reg[1]_i_13_n_6 ,\m_axis_tuser_reg[1]_i_13_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[1]_i_41_n_0 ,\m_axis_tuser[1]_i_42_n_0 ,\m_axis_tuser[1]_i_43_n_0 ,\m_axis_tuser[1]_i_44_n_0 }),
        .O(\NLW_m_axis_tuser_reg[1]_i_13_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[1]_i_45_n_0 ,\m_axis_tuser[1]_i_46_n_0 ,\m_axis_tuser[1]_i_47_n_0 ,\m_axis_tuser[1]_i_48_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[1]_i_31 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[1]_i_31_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[1]_i_31_n_4 ,\m_axis_tuser_reg[1]_i_31_n_5 ,\m_axis_tuser_reg[1]_i_31_n_6 ,\m_axis_tuser_reg[1]_i_31_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[1]_i_65_n_0 ,\m_axis_tuser[1]_i_66_n_0 ,\m_axis_tuser[1]_i_67_n_0 ,\m_axis_tuser[1]_i_68_n_0 }),
        .O(\NLW_m_axis_tuser_reg[1]_i_31_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[1]_i_69_n_0 ,\m_axis_tuser[1]_i_70_n_0 ,\m_axis_tuser[1]_i_71_n_0 ,\m_axis_tuser[1]_i_72_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[1]_i_32 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[1]_i_32_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[1]_i_32_n_4 ,\m_axis_tuser_reg[1]_i_32_n_5 ,\m_axis_tuser_reg[1]_i_32_n_6 ,\m_axis_tuser_reg[1]_i_32_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[1]_i_73_n_0 ,\m_axis_tuser[1]_i_74_n_0 ,\m_axis_tuser[1]_i_75_n_0 ,\m_axis_tuser[1]_i_76_n_0 }),
        .O(\NLW_m_axis_tuser_reg[1]_i_32_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[1]_i_77_n_0 ,\m_axis_tuser[1]_i_78_n_0 ,\m_axis_tuser[1]_i_79_n_0 ,\m_axis_tuser[1]_i_80_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[1]_i_5 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[1]_i_5_CO_UNCONNECTED [7:4],\GEN_SLOT[1].v1 ,\m_axis_tuser_reg[1]_i_5_n_5 ,\m_axis_tuser_reg[1]_i_5_n_6 ,\m_axis_tuser_reg[1]_i_5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[1]_i_14_n_0 ,\m_axis_tuser[1]_i_15_n_0 ,\m_axis_tuser[1]_i_16_n_0 ,\m_axis_tuser[1]_i_17_n_0 }),
        .O(\NLW_m_axis_tuser_reg[1]_i_5_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[1]_i_18_n_0 ,\m_axis_tuser[1]_i_19_n_0 ,\m_axis_tuser[1]_i_20_n_0 ,\m_axis_tuser[1]_i_21_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[1]_i_64 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[1]_i_64_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[1]_i_64_n_4 ,\m_axis_tuser_reg[1]_i_64_n_5 ,\m_axis_tuser_reg[1]_i_64_n_6 ,\m_axis_tuser_reg[1]_i_64_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[1]_i_98_n_0 ,\m_axis_tuser[1]_i_99_n_0 ,\m_axis_tuser[1]_i_100_n_0 ,\m_axis_tuser[1]_i_101_n_0 }),
        .O(\NLW_m_axis_tuser_reg[1]_i_64_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[1]_i_102_n_0 ,\m_axis_tuser[1]_i_103_n_0 ,\m_axis_tuser[1]_i_104_n_0 ,\m_axis_tuser[1]_i_105_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[1]_i_97 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[1]_i_97_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[1]_i_97_n_4 ,\m_axis_tuser_reg[1]_i_97_n_5 ,\m_axis_tuser_reg[1]_i_97_n_6 ,\m_axis_tuser_reg[1]_i_97_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[1]_i_121_n_0 ,\m_axis_tuser[1]_i_122_n_0 ,\m_axis_tuser[1]_i_123_n_0 ,\m_axis_tuser[1]_i_124_n_0 }),
        .O(\NLW_m_axis_tuser_reg[1]_i_97_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[1]_i_125_n_0 ,\m_axis_tuser[1]_i_126_n_0 ,\m_axis_tuser[1]_i_127_n_0 ,\m_axis_tuser[1]_i_128_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) 
  FDRE \m_axis_tuser_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(mask_comb[2]),
        .Q(m_axis_tuser[2]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[2]_i_12 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[2]_i_12_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[2]_i_12_n_4 ,\m_axis_tuser_reg[2]_i_12_n_5 ,\m_axis_tuser_reg[2]_i_12_n_6 ,\m_axis_tuser_reg[2]_i_12_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[2]_i_33_n_0 ,\m_axis_tuser[2]_i_34_n_0 ,\m_axis_tuser[2]_i_35_n_0 ,\m_axis_tuser[2]_i_36_n_0 }),
        .O(\NLW_m_axis_tuser_reg[2]_i_12_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[2]_i_37_n_0 ,\m_axis_tuser[2]_i_38_n_0 ,\m_axis_tuser[2]_i_39_n_0 ,\m_axis_tuser[2]_i_40_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[2]_i_13 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[2]_i_13_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[2]_i_13_n_4 ,\m_axis_tuser_reg[2]_i_13_n_5 ,\m_axis_tuser_reg[2]_i_13_n_6 ,\m_axis_tuser_reg[2]_i_13_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[2]_i_41_n_0 ,\m_axis_tuser[2]_i_42_n_0 ,\m_axis_tuser[2]_i_43_n_0 ,\m_axis_tuser[2]_i_44_n_0 }),
        .O(\NLW_m_axis_tuser_reg[2]_i_13_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[2]_i_45_n_0 ,\m_axis_tuser[2]_i_46_n_0 ,\m_axis_tuser[2]_i_47_n_0 ,\m_axis_tuser[2]_i_48_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[2]_i_31 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[2]_i_31_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[2]_i_31_n_4 ,\m_axis_tuser_reg[2]_i_31_n_5 ,\m_axis_tuser_reg[2]_i_31_n_6 ,\m_axis_tuser_reg[2]_i_31_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[2]_i_65_n_0 ,\m_axis_tuser[2]_i_66_n_0 ,\m_axis_tuser[2]_i_67_n_0 ,\m_axis_tuser[2]_i_68_n_0 }),
        .O(\NLW_m_axis_tuser_reg[2]_i_31_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[2]_i_69_n_0 ,\m_axis_tuser[2]_i_70_n_0 ,\m_axis_tuser[2]_i_71_n_0 ,\m_axis_tuser[2]_i_72_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[2]_i_32 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[2]_i_32_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[2]_i_32_n_4 ,\m_axis_tuser_reg[2]_i_32_n_5 ,\m_axis_tuser_reg[2]_i_32_n_6 ,\m_axis_tuser_reg[2]_i_32_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[2]_i_73_n_0 ,\m_axis_tuser[2]_i_74_n_0 ,\m_axis_tuser[2]_i_75_n_0 ,\m_axis_tuser[2]_i_76_n_0 }),
        .O(\NLW_m_axis_tuser_reg[2]_i_32_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[2]_i_77_n_0 ,\m_axis_tuser[2]_i_78_n_0 ,\m_axis_tuser[2]_i_79_n_0 ,\m_axis_tuser[2]_i_80_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[2]_i_5 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[2]_i_5_CO_UNCONNECTED [7:4],\GEN_SLOT[2].v1 ,\m_axis_tuser_reg[2]_i_5_n_5 ,\m_axis_tuser_reg[2]_i_5_n_6 ,\m_axis_tuser_reg[2]_i_5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[2]_i_14_n_0 ,\m_axis_tuser[2]_i_15_n_0 ,\m_axis_tuser[2]_i_16_n_0 ,\m_axis_tuser[2]_i_17_n_0 }),
        .O(\NLW_m_axis_tuser_reg[2]_i_5_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[2]_i_18_n_0 ,\m_axis_tuser[2]_i_19_n_0 ,\m_axis_tuser[2]_i_20_n_0 ,\m_axis_tuser[2]_i_21_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[2]_i_64 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[2]_i_64_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[2]_i_64_n_4 ,\m_axis_tuser_reg[2]_i_64_n_5 ,\m_axis_tuser_reg[2]_i_64_n_6 ,\m_axis_tuser_reg[2]_i_64_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[2]_i_98_n_0 ,\m_axis_tuser[2]_i_99_n_0 ,\m_axis_tuser[2]_i_100_n_0 ,\m_axis_tuser[2]_i_101_n_0 }),
        .O(\NLW_m_axis_tuser_reg[2]_i_64_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[2]_i_102_n_0 ,\m_axis_tuser[2]_i_103_n_0 ,\m_axis_tuser[2]_i_104_n_0 ,\m_axis_tuser[2]_i_105_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[2]_i_97 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[2]_i_97_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[2]_i_97_n_4 ,\m_axis_tuser_reg[2]_i_97_n_5 ,\m_axis_tuser_reg[2]_i_97_n_6 ,\m_axis_tuser_reg[2]_i_97_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[2]_i_121_n_0 ,\m_axis_tuser[2]_i_122_n_0 ,\m_axis_tuser[2]_i_123_n_0 ,\m_axis_tuser[2]_i_124_n_0 }),
        .O(\NLW_m_axis_tuser_reg[2]_i_97_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[2]_i_125_n_0 ,\m_axis_tuser[2]_i_126_n_0 ,\m_axis_tuser[2]_i_127_n_0 ,\m_axis_tuser[2]_i_128_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) 
  FDRE \m_axis_tuser_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(mask_comb[3]),
        .Q(m_axis_tuser[3]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[3]_i_12 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[3]_i_12_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[3]_i_12_n_4 ,\m_axis_tuser_reg[3]_i_12_n_5 ,\m_axis_tuser_reg[3]_i_12_n_6 ,\m_axis_tuser_reg[3]_i_12_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[3]_i_33_n_0 ,\m_axis_tuser[3]_i_34_n_0 ,\m_axis_tuser[3]_i_35_n_0 ,\m_axis_tuser[3]_i_36_n_0 }),
        .O(\NLW_m_axis_tuser_reg[3]_i_12_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[3]_i_37_n_0 ,\m_axis_tuser[3]_i_38_n_0 ,\m_axis_tuser[3]_i_39_n_0 ,\m_axis_tuser[3]_i_40_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[3]_i_13 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[3]_i_13_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[3]_i_13_n_4 ,\m_axis_tuser_reg[3]_i_13_n_5 ,\m_axis_tuser_reg[3]_i_13_n_6 ,\m_axis_tuser_reg[3]_i_13_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[3]_i_41_n_0 ,\m_axis_tuser[3]_i_42_n_0 ,\m_axis_tuser[3]_i_43_n_0 ,\m_axis_tuser[3]_i_44_n_0 }),
        .O(\NLW_m_axis_tuser_reg[3]_i_13_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[3]_i_45_n_0 ,\m_axis_tuser[3]_i_46_n_0 ,\m_axis_tuser[3]_i_47_n_0 ,\m_axis_tuser[3]_i_48_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[3]_i_31 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[3]_i_31_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[3]_i_31_n_4 ,\m_axis_tuser_reg[3]_i_31_n_5 ,\m_axis_tuser_reg[3]_i_31_n_6 ,\m_axis_tuser_reg[3]_i_31_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[3]_i_65_n_0 ,\m_axis_tuser[3]_i_66_n_0 ,\m_axis_tuser[3]_i_67_n_0 ,\m_axis_tuser[3]_i_68_n_0 }),
        .O(\NLW_m_axis_tuser_reg[3]_i_31_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[3]_i_69_n_0 ,\m_axis_tuser[3]_i_70_n_0 ,\m_axis_tuser[3]_i_71_n_0 ,\m_axis_tuser[3]_i_72_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[3]_i_32 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[3]_i_32_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[3]_i_32_n_4 ,\m_axis_tuser_reg[3]_i_32_n_5 ,\m_axis_tuser_reg[3]_i_32_n_6 ,\m_axis_tuser_reg[3]_i_32_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[3]_i_73_n_0 ,\m_axis_tuser[3]_i_74_n_0 ,\m_axis_tuser[3]_i_75_n_0 ,\m_axis_tuser[3]_i_76_n_0 }),
        .O(\NLW_m_axis_tuser_reg[3]_i_32_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[3]_i_77_n_0 ,\m_axis_tuser[3]_i_78_n_0 ,\m_axis_tuser[3]_i_79_n_0 ,\m_axis_tuser[3]_i_80_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[3]_i_5 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[3]_i_5_CO_UNCONNECTED [7:4],\GEN_SLOT[3].v1 ,\m_axis_tuser_reg[3]_i_5_n_5 ,\m_axis_tuser_reg[3]_i_5_n_6 ,\m_axis_tuser_reg[3]_i_5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[3]_i_14_n_0 ,\m_axis_tuser[3]_i_15_n_0 ,\m_axis_tuser[3]_i_16_n_0 ,\m_axis_tuser[3]_i_17_n_0 }),
        .O(\NLW_m_axis_tuser_reg[3]_i_5_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[3]_i_18_n_0 ,\m_axis_tuser[3]_i_19_n_0 ,\m_axis_tuser[3]_i_20_n_0 ,\m_axis_tuser[3]_i_21_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[3]_i_64 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[3]_i_64_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[3]_i_64_n_4 ,\m_axis_tuser_reg[3]_i_64_n_5 ,\m_axis_tuser_reg[3]_i_64_n_6 ,\m_axis_tuser_reg[3]_i_64_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[3]_i_98_n_0 ,\m_axis_tuser[3]_i_99_n_0 ,\m_axis_tuser[3]_i_100_n_0 ,\m_axis_tuser[3]_i_101_n_0 }),
        .O(\NLW_m_axis_tuser_reg[3]_i_64_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[3]_i_102_n_0 ,\m_axis_tuser[3]_i_103_n_0 ,\m_axis_tuser[3]_i_104_n_0 ,\m_axis_tuser[3]_i_105_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[3]_i_97 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[3]_i_97_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[3]_i_97_n_4 ,\m_axis_tuser_reg[3]_i_97_n_5 ,\m_axis_tuser_reg[3]_i_97_n_6 ,\m_axis_tuser_reg[3]_i_97_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[3]_i_122_n_0 ,\m_axis_tuser[3]_i_123_n_0 ,\m_axis_tuser[3]_i_124_n_0 ,\m_axis_tuser[3]_i_125_n_0 }),
        .O(\NLW_m_axis_tuser_reg[3]_i_97_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[3]_i_126_n_0 ,\m_axis_tuser[3]_i_127_n_0 ,\m_axis_tuser[3]_i_128_n_0 ,\m_axis_tuser[3]_i_129_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) 
  FDRE \m_axis_tuser_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(mask_comb[4]),
        .Q(m_axis_tuser[4]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[4]_i_12 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[4]_i_12_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[4]_i_12_n_4 ,\m_axis_tuser_reg[4]_i_12_n_5 ,\m_axis_tuser_reg[4]_i_12_n_6 ,\m_axis_tuser_reg[4]_i_12_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[4]_i_33_n_0 ,\m_axis_tuser[4]_i_34_n_0 ,\m_axis_tuser[4]_i_35_n_0 ,\m_axis_tuser[4]_i_36_n_0 }),
        .O(\NLW_m_axis_tuser_reg[4]_i_12_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[4]_i_37_n_0 ,\m_axis_tuser[4]_i_38_n_0 ,\m_axis_tuser[4]_i_39_n_0 ,\m_axis_tuser[4]_i_40_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[4]_i_13 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[4]_i_13_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[4]_i_13_n_4 ,\m_axis_tuser_reg[4]_i_13_n_5 ,\m_axis_tuser_reg[4]_i_13_n_6 ,\m_axis_tuser_reg[4]_i_13_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[4]_i_41_n_0 ,\m_axis_tuser[4]_i_42_n_0 ,\m_axis_tuser[4]_i_43_n_0 ,\m_axis_tuser[4]_i_44_n_0 }),
        .O(\NLW_m_axis_tuser_reg[4]_i_13_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[4]_i_45_n_0 ,\m_axis_tuser[4]_i_46_n_0 ,\m_axis_tuser[4]_i_47_n_0 ,\m_axis_tuser[4]_i_48_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[4]_i_31 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[4]_i_31_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[4]_i_31_n_4 ,\m_axis_tuser_reg[4]_i_31_n_5 ,\m_axis_tuser_reg[4]_i_31_n_6 ,\m_axis_tuser_reg[4]_i_31_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[4]_i_68_n_0 ,\m_axis_tuser[4]_i_69_n_0 ,\m_axis_tuser[4]_i_70_n_0 ,\m_axis_tuser[4]_i_71_n_0 }),
        .O(\NLW_m_axis_tuser_reg[4]_i_31_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[4]_i_72_n_0 ,\m_axis_tuser[4]_i_73_n_0 ,\m_axis_tuser[4]_i_74_n_0 ,\m_axis_tuser[4]_i_75_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[4]_i_32 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[4]_i_32_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[4]_i_32_n_4 ,\m_axis_tuser_reg[4]_i_32_n_5 ,\m_axis_tuser_reg[4]_i_32_n_6 ,\m_axis_tuser_reg[4]_i_32_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[4]_i_76_n_0 ,\m_axis_tuser[4]_i_77_n_0 ,\m_axis_tuser[4]_i_78_n_0 ,\m_axis_tuser[4]_i_79_n_0 }),
        .O(\NLW_m_axis_tuser_reg[4]_i_32_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[4]_i_80_n_0 ,\m_axis_tuser[4]_i_81_n_0 ,\m_axis_tuser[4]_i_82_n_0 ,\m_axis_tuser[4]_i_83_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[4]_i_5 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[4]_i_5_CO_UNCONNECTED [7:4],\GEN_SLOT[4].v1 ,\m_axis_tuser_reg[4]_i_5_n_5 ,\m_axis_tuser_reg[4]_i_5_n_6 ,\m_axis_tuser_reg[4]_i_5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[4]_i_14_n_0 ,\m_axis_tuser[4]_i_15_n_0 ,\m_axis_tuser[4]_i_16_n_0 ,\m_axis_tuser[4]_i_17_n_0 }),
        .O(\NLW_m_axis_tuser_reg[4]_i_5_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[4]_i_18_n_0 ,\m_axis_tuser[4]_i_19_n_0 ,\m_axis_tuser[4]_i_20_n_0 ,\m_axis_tuser[4]_i_21_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[4]_i_67 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[4]_i_67_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[4]_i_67_n_4 ,\m_axis_tuser_reg[4]_i_67_n_5 ,\m_axis_tuser_reg[4]_i_67_n_6 ,\m_axis_tuser_reg[4]_i_67_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[4]_i_101_n_0 ,\m_axis_tuser[4]_i_102_n_0 ,\m_axis_tuser[4]_i_103_n_0 ,\m_axis_tuser[4]_i_104_n_0 }),
        .O(\NLW_m_axis_tuser_reg[4]_i_67_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[4]_i_105_n_0 ,\m_axis_tuser[4]_i_106_n_0 ,\m_axis_tuser[4]_i_107_n_0 ,\m_axis_tuser[4]_i_108_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[4]_i_92 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[4]_i_92_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[4]_i_92_n_4 ,\m_axis_tuser_reg[4]_i_92_n_5 ,\m_axis_tuser_reg[4]_i_92_n_6 ,\m_axis_tuser_reg[4]_i_92_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[4]_i_117_n_0 ,\m_axis_tuser[4]_i_118_n_0 ,\m_axis_tuser[4]_i_119_n_0 ,\m_axis_tuser[4]_i_120_n_0 }),
        .O(\NLW_m_axis_tuser_reg[4]_i_92_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[4]_i_121_n_0 ,\m_axis_tuser[4]_i_122_n_0 ,\m_axis_tuser[4]_i_123_n_0 ,\m_axis_tuser[4]_i_124_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) 
  FDRE \m_axis_tuser_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(mask_comb[5]),
        .Q(m_axis_tuser[5]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[5]_i_12 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[5]_i_12_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[5]_i_12_n_4 ,\m_axis_tuser_reg[5]_i_12_n_5 ,\m_axis_tuser_reg[5]_i_12_n_6 ,\m_axis_tuser_reg[5]_i_12_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[5]_i_33_n_0 ,\m_axis_tuser[5]_i_34_n_0 ,\m_axis_tuser[5]_i_35_n_0 ,\m_axis_tuser[5]_i_36_n_0 }),
        .O(\NLW_m_axis_tuser_reg[5]_i_12_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[5]_i_37_n_0 ,\m_axis_tuser[5]_i_38_n_0 ,\m_axis_tuser[5]_i_39_n_0 ,\m_axis_tuser[5]_i_40_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[5]_i_13 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[5]_i_13_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[5]_i_13_n_4 ,\m_axis_tuser_reg[5]_i_13_n_5 ,\m_axis_tuser_reg[5]_i_13_n_6 ,\m_axis_tuser_reg[5]_i_13_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[5]_i_41_n_0 ,\m_axis_tuser[5]_i_42_n_0 ,\m_axis_tuser[5]_i_43_n_0 ,\m_axis_tuser[5]_i_44_n_0 }),
        .O(\NLW_m_axis_tuser_reg[5]_i_13_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[5]_i_45_n_0 ,\m_axis_tuser[5]_i_46_n_0 ,\m_axis_tuser[5]_i_47_n_0 ,\m_axis_tuser[5]_i_48_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[5]_i_31 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[5]_i_31_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[5]_i_31_n_4 ,\m_axis_tuser_reg[5]_i_31_n_5 ,\m_axis_tuser_reg[5]_i_31_n_6 ,\m_axis_tuser_reg[5]_i_31_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[5]_i_66_n_0 ,\m_axis_tuser[5]_i_67_n_0 ,\m_axis_tuser[5]_i_68_n_0 ,\m_axis_tuser[5]_i_69_n_0 }),
        .O(\NLW_m_axis_tuser_reg[5]_i_31_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[5]_i_70_n_0 ,\m_axis_tuser[5]_i_71_n_0 ,\m_axis_tuser[5]_i_72_n_0 ,\m_axis_tuser[5]_i_73_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[5]_i_32 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[5]_i_32_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[5]_i_32_n_4 ,\m_axis_tuser_reg[5]_i_32_n_5 ,\m_axis_tuser_reg[5]_i_32_n_6 ,\m_axis_tuser_reg[5]_i_32_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[5]_i_74_n_0 ,\m_axis_tuser[5]_i_75_n_0 ,\m_axis_tuser[5]_i_76_n_0 ,\m_axis_tuser[5]_i_77_n_0 }),
        .O(\NLW_m_axis_tuser_reg[5]_i_32_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[5]_i_78_n_0 ,\m_axis_tuser[5]_i_79_n_0 ,\m_axis_tuser[5]_i_80_n_0 ,\m_axis_tuser[5]_i_81_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[5]_i_5 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[5]_i_5_CO_UNCONNECTED [7:4],\GEN_SLOT[5].v1 ,\m_axis_tuser_reg[5]_i_5_n_5 ,\m_axis_tuser_reg[5]_i_5_n_6 ,\m_axis_tuser_reg[5]_i_5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[5]_i_14_n_0 ,\m_axis_tuser[5]_i_15_n_0 ,\m_axis_tuser[5]_i_16_n_0 ,\m_axis_tuser[5]_i_17_n_0 }),
        .O(\NLW_m_axis_tuser_reg[5]_i_5_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[5]_i_18_n_0 ,\m_axis_tuser[5]_i_19_n_0 ,\m_axis_tuser[5]_i_20_n_0 ,\m_axis_tuser[5]_i_21_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[5]_i_65 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[5]_i_65_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[5]_i_65_n_4 ,\m_axis_tuser_reg[5]_i_65_n_5 ,\m_axis_tuser_reg[5]_i_65_n_6 ,\m_axis_tuser_reg[5]_i_65_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[5]_i_99_n_0 ,\m_axis_tuser[5]_i_100_n_0 ,\m_axis_tuser[5]_i_101_n_0 ,\m_axis_tuser[5]_i_102_n_0 }),
        .O(\NLW_m_axis_tuser_reg[5]_i_65_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[5]_i_103_n_0 ,\m_axis_tuser[5]_i_104_n_0 ,\m_axis_tuser[5]_i_105_n_0 ,\m_axis_tuser[5]_i_106_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[5]_i_98 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[5]_i_98_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[5]_i_98_n_4 ,\m_axis_tuser_reg[5]_i_98_n_5 ,\m_axis_tuser_reg[5]_i_98_n_6 ,\m_axis_tuser_reg[5]_i_98_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[5]_i_122_n_0 ,\m_axis_tuser[5]_i_123_n_0 ,\m_axis_tuser[5]_i_124_n_0 ,\m_axis_tuser[5]_i_125_n_0 }),
        .O(\NLW_m_axis_tuser_reg[5]_i_98_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[5]_i_126_n_0 ,\m_axis_tuser[5]_i_127_n_0 ,\m_axis_tuser[5]_i_128_n_0 ,\m_axis_tuser[5]_i_129_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) 
  FDRE \m_axis_tuser_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(mask_comb[6]),
        .Q(m_axis_tuser[6]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[6]_i_12 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[6]_i_12_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[6]_i_12_n_4 ,\m_axis_tuser_reg[6]_i_12_n_5 ,\m_axis_tuser_reg[6]_i_12_n_6 ,\m_axis_tuser_reg[6]_i_12_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[6]_i_33_n_0 ,\m_axis_tuser[6]_i_34_n_0 ,\m_axis_tuser[6]_i_35_n_0 ,\m_axis_tuser[6]_i_36_n_0 }),
        .O(\NLW_m_axis_tuser_reg[6]_i_12_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[6]_i_37_n_0 ,\m_axis_tuser[6]_i_38_n_0 ,\m_axis_tuser[6]_i_39_n_0 ,\m_axis_tuser[6]_i_40_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[6]_i_13 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[6]_i_13_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[6]_i_13_n_4 ,\m_axis_tuser_reg[6]_i_13_n_5 ,\m_axis_tuser_reg[6]_i_13_n_6 ,\m_axis_tuser_reg[6]_i_13_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[6]_i_41_n_0 ,\m_axis_tuser[6]_i_42_n_0 ,\m_axis_tuser[6]_i_43_n_0 ,\m_axis_tuser[6]_i_44_n_0 }),
        .O(\NLW_m_axis_tuser_reg[6]_i_13_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[6]_i_45_n_0 ,\m_axis_tuser[6]_i_46_n_0 ,\m_axis_tuser[6]_i_47_n_0 ,\m_axis_tuser[6]_i_48_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[6]_i_31 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[6]_i_31_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[6]_i_31_n_4 ,\m_axis_tuser_reg[6]_i_31_n_5 ,\m_axis_tuser_reg[6]_i_31_n_6 ,\m_axis_tuser_reg[6]_i_31_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[6]_i_66_n_0 ,\m_axis_tuser[6]_i_67_n_0 ,\m_axis_tuser[6]_i_68_n_0 ,\m_axis_tuser[6]_i_69_n_0 }),
        .O(\NLW_m_axis_tuser_reg[6]_i_31_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[6]_i_70_n_0 ,\m_axis_tuser[6]_i_71_n_0 ,\m_axis_tuser[6]_i_72_n_0 ,\m_axis_tuser[6]_i_73_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[6]_i_32 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[6]_i_32_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[6]_i_32_n_4 ,\m_axis_tuser_reg[6]_i_32_n_5 ,\m_axis_tuser_reg[6]_i_32_n_6 ,\m_axis_tuser_reg[6]_i_32_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[6]_i_74_n_0 ,\m_axis_tuser[6]_i_75_n_0 ,\m_axis_tuser[6]_i_76_n_0 ,\m_axis_tuser[6]_i_77_n_0 }),
        .O(\NLW_m_axis_tuser_reg[6]_i_32_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[6]_i_78_n_0 ,\m_axis_tuser[6]_i_79_n_0 ,\m_axis_tuser[6]_i_80_n_0 ,\m_axis_tuser[6]_i_81_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[6]_i_5 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[6]_i_5_CO_UNCONNECTED [7:4],\GEN_SLOT[6].v1 ,\m_axis_tuser_reg[6]_i_5_n_5 ,\m_axis_tuser_reg[6]_i_5_n_6 ,\m_axis_tuser_reg[6]_i_5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[6]_i_14_n_0 ,\m_axis_tuser[6]_i_15_n_0 ,\m_axis_tuser[6]_i_16_n_0 ,\m_axis_tuser[6]_i_17_n_0 }),
        .O(\NLW_m_axis_tuser_reg[6]_i_5_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[6]_i_18_n_0 ,\m_axis_tuser[6]_i_19_n_0 ,\m_axis_tuser[6]_i_20_n_0 ,\m_axis_tuser[6]_i_21_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[6]_i_65 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[6]_i_65_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[6]_i_65_n_4 ,\m_axis_tuser_reg[6]_i_65_n_5 ,\m_axis_tuser_reg[6]_i_65_n_6 ,\m_axis_tuser_reg[6]_i_65_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[6]_i_99_n_0 ,\m_axis_tuser[6]_i_100_n_0 ,\m_axis_tuser[6]_i_101_n_0 ,\m_axis_tuser[6]_i_102_n_0 }),
        .O(\NLW_m_axis_tuser_reg[6]_i_65_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[6]_i_103_n_0 ,\m_axis_tuser[6]_i_104_n_0 ,\m_axis_tuser[6]_i_105_n_0 ,\m_axis_tuser[6]_i_106_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[6]_i_98 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[6]_i_98_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[6]_i_98_n_4 ,\m_axis_tuser_reg[6]_i_98_n_5 ,\m_axis_tuser_reg[6]_i_98_n_6 ,\m_axis_tuser_reg[6]_i_98_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[6]_i_123_n_0 ,\m_axis_tuser[6]_i_124_n_0 ,\m_axis_tuser[6]_i_125_n_0 ,\m_axis_tuser[6]_i_126_n_0 }),
        .O(\NLW_m_axis_tuser_reg[6]_i_98_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[6]_i_127_n_0 ,\m_axis_tuser[6]_i_128_n_0 ,\m_axis_tuser[6]_i_129_n_0 ,\m_axis_tuser[6]_i_130_n_0 }));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TUSER" *) 
  FDRE \m_axis_tuser_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(mask_comb[7]),
        .Q(m_axis_tuser[7]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[7]_i_12 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[7]_i_12_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[7]_i_12_n_4 ,\m_axis_tuser_reg[7]_i_12_n_5 ,\m_axis_tuser_reg[7]_i_12_n_6 ,\m_axis_tuser_reg[7]_i_12_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[7]_i_33_n_0 ,\m_axis_tuser[7]_i_34_n_0 ,\m_axis_tuser[7]_i_35_n_0 ,\m_axis_tuser[7]_i_36_n_0 }),
        .O(\NLW_m_axis_tuser_reg[7]_i_12_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[7]_i_37_n_0 ,\m_axis_tuser[7]_i_38_n_0 ,\m_axis_tuser[7]_i_39_n_0 ,\m_axis_tuser[7]_i_40_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[7]_i_13 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[7]_i_13_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[7]_i_13_n_4 ,\m_axis_tuser_reg[7]_i_13_n_5 ,\m_axis_tuser_reg[7]_i_13_n_6 ,\m_axis_tuser_reg[7]_i_13_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[7]_i_41_n_0 ,\m_axis_tuser[7]_i_42_n_0 ,\m_axis_tuser[7]_i_43_n_0 ,\m_axis_tuser[7]_i_44_n_0 }),
        .O(\NLW_m_axis_tuser_reg[7]_i_13_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[7]_i_45_n_0 ,\m_axis_tuser[7]_i_46_n_0 ,\m_axis_tuser[7]_i_47_n_0 ,\m_axis_tuser[7]_i_48_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[7]_i_31 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[7]_i_31_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[7]_i_31_n_4 ,\m_axis_tuser_reg[7]_i_31_n_5 ,\m_axis_tuser_reg[7]_i_31_n_6 ,\m_axis_tuser_reg[7]_i_31_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[7]_i_66_n_0 ,\m_axis_tuser[7]_i_67_n_0 ,\m_axis_tuser[7]_i_68_n_0 ,\m_axis_tuser[7]_i_69_n_0 }),
        .O(\NLW_m_axis_tuser_reg[7]_i_31_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[7]_i_70_n_0 ,\m_axis_tuser[7]_i_71_n_0 ,\m_axis_tuser[7]_i_72_n_0 ,\m_axis_tuser[7]_i_73_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[7]_i_32 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[7]_i_32_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[7]_i_32_n_4 ,\m_axis_tuser_reg[7]_i_32_n_5 ,\m_axis_tuser_reg[7]_i_32_n_6 ,\m_axis_tuser_reg[7]_i_32_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[7]_i_74_n_0 ,\m_axis_tuser[7]_i_75_n_0 ,\m_axis_tuser[7]_i_76_n_0 ,\m_axis_tuser[7]_i_77_n_0 }),
        .O(\NLW_m_axis_tuser_reg[7]_i_32_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[7]_i_78_n_0 ,\m_axis_tuser[7]_i_79_n_0 ,\m_axis_tuser[7]_i_80_n_0 ,\m_axis_tuser[7]_i_81_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[7]_i_5 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[7]_i_5_CO_UNCONNECTED [7:4],\GEN_SLOT[7].v1 ,\m_axis_tuser_reg[7]_i_5_n_5 ,\m_axis_tuser_reg[7]_i_5_n_6 ,\m_axis_tuser_reg[7]_i_5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[7]_i_14_n_0 ,\m_axis_tuser[7]_i_15_n_0 ,\m_axis_tuser[7]_i_16_n_0 ,\m_axis_tuser[7]_i_17_n_0 }),
        .O(\NLW_m_axis_tuser_reg[7]_i_5_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[7]_i_18_n_0 ,\m_axis_tuser[7]_i_19_n_0 ,\m_axis_tuser[7]_i_20_n_0 ,\m_axis_tuser[7]_i_21_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[7]_i_65 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[7]_i_65_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[7]_i_65_n_4 ,\m_axis_tuser_reg[7]_i_65_n_5 ,\m_axis_tuser_reg[7]_i_65_n_6 ,\m_axis_tuser_reg[7]_i_65_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[7]_i_99_n_0 ,\m_axis_tuser[7]_i_100_n_0 ,\m_axis_tuser[7]_i_101_n_0 ,\m_axis_tuser[7]_i_102_n_0 }),
        .O(\NLW_m_axis_tuser_reg[7]_i_65_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[7]_i_103_n_0 ,\m_axis_tuser[7]_i_104_n_0 ,\m_axis_tuser[7]_i_105_n_0 ,\m_axis_tuser[7]_i_106_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tuser_reg[7]_i_98 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_m_axis_tuser_reg[7]_i_98_CO_UNCONNECTED [7:4],\m_axis_tuser_reg[7]_i_98_n_4 ,\m_axis_tuser_reg[7]_i_98_n_5 ,\m_axis_tuser_reg[7]_i_98_n_6 ,\m_axis_tuser_reg[7]_i_98_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[7]_i_122_n_0 ,\m_axis_tuser[7]_i_123_n_0 ,\m_axis_tuser[7]_i_124_n_0 ,\m_axis_tuser[7]_i_125_n_0 }),
        .O(\NLW_m_axis_tuser_reg[7]_i_98_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\m_axis_tuser[7]_i_126_n_0 ,\m_axis_tuser[7]_i_127_n_0 ,\m_axis_tuser[7]_i_128_n_0 ,\m_axis_tuser[7]_i_129_n_0 }));
  LUT6 #(
    .INIT(64'hFC00FC000000AA00)) 
    m_axis_tvalid_i_1
       (.I0(m_axis_tvalid_reg_0),
        .I1(m_axis_tvalid_i_2_n_0),
        .I2(m_axis_tvalid_i_3_n_0),
        .I3(aresetn),
        .I4(m_axis_tready),
        .I5(s_axis_tvalid),
        .O(m_axis_tvalid_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_tvalid_i_2
       (.I0(mask_comb[5]),
        .I1(mask_comb[7]),
        .I2(mask_comb[1]),
        .I3(mask_comb[3]),
        .O(m_axis_tvalid_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_tvalid_i_3
       (.I0(mask_comb[4]),
        .I1(mask_comb[6]),
        .I2(mask_comb[0]),
        .I3(mask_comb[2]),
        .O(m_axis_tvalid_i_3_n_0));
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) 
  FDRE m_axis_tvalid_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_axis_tvalid_i_1_n_0),
        .Q(m_axis_tvalid_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out_beat_count[0]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count[0]),
        .O(\out_beat_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[10]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[10]),
        .O(\out_beat_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[11]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[11]),
        .O(\out_beat_count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[12]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[12]),
        .O(\out_beat_count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[13]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[13]),
        .O(\out_beat_count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[14]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[14]),
        .O(\out_beat_count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[15]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[15]),
        .O(\out_beat_count[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[16]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[16]),
        .O(\out_beat_count[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[17]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[17]),
        .O(\out_beat_count[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[18]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[18]),
        .O(\out_beat_count[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[19]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[19]),
        .O(\out_beat_count[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[1]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[1]),
        .O(\out_beat_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[20]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[20]),
        .O(\out_beat_count[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[21]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[21]),
        .O(\out_beat_count[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[22]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[22]),
        .O(\out_beat_count[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[23]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[23]),
        .O(\out_beat_count[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[24]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[24]),
        .O(\out_beat_count[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[25]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[25]),
        .O(\out_beat_count[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[26]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[26]),
        .O(\out_beat_count[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[27]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[27]),
        .O(\out_beat_count[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[28]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[28]),
        .O(\out_beat_count[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[29]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[29]),
        .O(\out_beat_count[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[2]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[2]),
        .O(\out_beat_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[30]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[30]),
        .O(\out_beat_count[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFE0)) 
    \out_beat_count[31]_i_1 
       (.I0(m_axis_tvalid_i_3_n_0),
        .I1(m_axis_tvalid_i_2_n_0),
        .I2(s_axis_tvalid),
        .I3(cnt_clr),
        .O(\out_beat_count[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h6C939C63)) 
    \out_beat_count[31]_i_10 
       (.I0(DECIM_M[4]),
        .I1(DECIM_PHASE[4]),
        .I2(\GEN_SLOT[0].v1 ),
        .I3(\m_axis_tuser[0]_i_4_n_0 ),
        .I4(\m_axis_tuser[0]_i_3_n_0 ),
        .O(\out_beat_count[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'h6C939C63)) 
    \out_beat_count[31]_i_11 
       (.I0(DECIM_M[4]),
        .I1(DECIM_PHASE[4]),
        .I2(\GEN_SLOT[6].v1 ),
        .I3(\m_axis_tuser[6]_i_4_n_0 ),
        .I4(\m_axis_tuser[6]_i_3_n_0 ),
        .O(\out_beat_count[31]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h6C939C63)) 
    \out_beat_count[31]_i_12 
       (.I0(DECIM_M[4]),
        .I1(DECIM_PHASE[4]),
        .I2(\GEN_SLOT[4].v1 ),
        .I3(\m_axis_tuser[4]_i_4_n_0 ),
        .I4(\m_axis_tuser[4]_i_3_n_0 ),
        .O(\out_beat_count[31]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h6C939C63)) 
    \out_beat_count[31]_i_13 
       (.I0(DECIM_M[4]),
        .I1(DECIM_PHASE[4]),
        .I2(\GEN_SLOT[3].v1 ),
        .I3(\m_axis_tuser[3]_i_4_n_0 ),
        .I4(\m_axis_tuser[3]_i_3_n_0 ),
        .O(\out_beat_count[31]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h6C939C63)) 
    \out_beat_count[31]_i_14 
       (.I0(DECIM_M[4]),
        .I1(DECIM_PHASE[4]),
        .I2(\GEN_SLOT[1].v1 ),
        .I3(\m_axis_tuser[1]_i_4_n_0 ),
        .I4(\m_axis_tuser[1]_i_3_n_0 ),
        .O(\out_beat_count[31]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h6C939C63)) 
    \out_beat_count[31]_i_15 
       (.I0(DECIM_M[4]),
        .I1(DECIM_PHASE[4]),
        .I2(\GEN_SLOT[7].v1 ),
        .I3(\m_axis_tuser[7]_i_4_n_0 ),
        .I4(\m_axis_tuser[7]_i_3_n_0 ),
        .O(\out_beat_count[31]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h6C939C63)) 
    \out_beat_count[31]_i_16 
       (.I0(DECIM_M[4]),
        .I1(DECIM_PHASE[4]),
        .I2(\GEN_SLOT[5].v1 ),
        .I3(\m_axis_tuser[5]_i_4_n_0 ),
        .I4(\m_axis_tuser[5]_i_3_n_0 ),
        .O(\out_beat_count[31]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[31]_i_2 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[31]),
        .O(\out_beat_count[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFE0000)) 
    \out_beat_count[31]_i_3 
       (.I0(\out_beat_count[31]_i_5_n_0 ),
        .I1(\out_beat_count[31]_i_6_n_0 ),
        .I2(\out_beat_count[31]_i_7_n_0 ),
        .I3(\out_beat_count[31]_i_8_n_0 ),
        .I4(s_axis_tvalid),
        .I5(cnt_clr),
        .O(\out_beat_count[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \out_beat_count[31]_i_5 
       (.I0(\out_beat_count[31]_i_9_n_0 ),
        .I1(\m_axis_tuser[2]_i_2_n_0 ),
        .I2(\out_beat_count[31]_i_10_n_0 ),
        .I3(\m_axis_tuser[0]_i_2_n_0 ),
        .O(\out_beat_count[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \out_beat_count[31]_i_6 
       (.I0(\out_beat_count[31]_i_11_n_0 ),
        .I1(\m_axis_tuser[6]_i_2_n_0 ),
        .I2(\out_beat_count[31]_i_12_n_0 ),
        .I3(\m_axis_tuser[4]_i_2_n_0 ),
        .O(\out_beat_count[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \out_beat_count[31]_i_7 
       (.I0(\out_beat_count[31]_i_13_n_0 ),
        .I1(\m_axis_tuser[3]_i_2_n_0 ),
        .I2(\out_beat_count[31]_i_14_n_0 ),
        .I3(\m_axis_tuser[1]_i_2_n_0 ),
        .O(\out_beat_count[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \out_beat_count[31]_i_8 
       (.I0(\out_beat_count[31]_i_15_n_0 ),
        .I1(\m_axis_tuser[7]_i_2_n_0 ),
        .I2(\out_beat_count[31]_i_16_n_0 ),
        .I3(\m_axis_tuser[5]_i_2_n_0 ),
        .O(\out_beat_count[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h6C939C63)) 
    \out_beat_count[31]_i_9 
       (.I0(DECIM_M[4]),
        .I1(DECIM_PHASE[4]),
        .I2(\GEN_SLOT[2].v1 ),
        .I3(\m_axis_tuser[2]_i_4_n_0 ),
        .I4(\m_axis_tuser[2]_i_3_n_0 ),
        .O(\out_beat_count[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[3]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[3]),
        .O(\out_beat_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[4]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[4]),
        .O(\out_beat_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[5]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[5]),
        .O(\out_beat_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[6]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[6]),
        .O(\out_beat_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[7]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[7]),
        .O(\out_beat_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[8]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[8]),
        .O(\out_beat_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \out_beat_count[9]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(out_beat_count0[9]),
        .O(\out_beat_count[9]_i_1_n_0 ));
  FDRE \out_beat_count_reg[0] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[0]_i_1_n_0 ),
        .Q(out_beat_count[0]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[10] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[10]_i_1_n_0 ),
        .Q(out_beat_count[10]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[11] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[11]_i_1_n_0 ),
        .Q(out_beat_count[11]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[12] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[12]_i_1_n_0 ),
        .Q(out_beat_count[12]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[13] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[13]_i_1_n_0 ),
        .Q(out_beat_count[13]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[14] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[14]_i_1_n_0 ),
        .Q(out_beat_count[14]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[15] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[15]_i_1_n_0 ),
        .Q(out_beat_count[15]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[16] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[16]_i_1_n_0 ),
        .Q(out_beat_count[16]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \out_beat_count_reg[16]_i_2 
       (.CI(\out_beat_count_reg[8]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\out_beat_count_reg[16]_i_2_n_0 ,\out_beat_count_reg[16]_i_2_n_1 ,\out_beat_count_reg[16]_i_2_n_2 ,\out_beat_count_reg[16]_i_2_n_3 ,\out_beat_count_reg[16]_i_2_n_4 ,\out_beat_count_reg[16]_i_2_n_5 ,\out_beat_count_reg[16]_i_2_n_6 ,\out_beat_count_reg[16]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(out_beat_count0[16:9]),
        .S(out_beat_count[16:9]));
  FDRE \out_beat_count_reg[17] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[17]_i_1_n_0 ),
        .Q(out_beat_count[17]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[18] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[18]_i_1_n_0 ),
        .Q(out_beat_count[18]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[19] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[19]_i_1_n_0 ),
        .Q(out_beat_count[19]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[1] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[1]_i_1_n_0 ),
        .Q(out_beat_count[1]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[20] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[20]_i_1_n_0 ),
        .Q(out_beat_count[20]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[21] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[21]_i_1_n_0 ),
        .Q(out_beat_count[21]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[22] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[22]_i_1_n_0 ),
        .Q(out_beat_count[22]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[23] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[23]_i_1_n_0 ),
        .Q(out_beat_count[23]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[24] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[24]_i_1_n_0 ),
        .Q(out_beat_count[24]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \out_beat_count_reg[24]_i_2 
       (.CI(\out_beat_count_reg[16]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\out_beat_count_reg[24]_i_2_n_0 ,\out_beat_count_reg[24]_i_2_n_1 ,\out_beat_count_reg[24]_i_2_n_2 ,\out_beat_count_reg[24]_i_2_n_3 ,\out_beat_count_reg[24]_i_2_n_4 ,\out_beat_count_reg[24]_i_2_n_5 ,\out_beat_count_reg[24]_i_2_n_6 ,\out_beat_count_reg[24]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(out_beat_count0[24:17]),
        .S(out_beat_count[24:17]));
  FDRE \out_beat_count_reg[25] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[25]_i_1_n_0 ),
        .Q(out_beat_count[25]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[26] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[26]_i_1_n_0 ),
        .Q(out_beat_count[26]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[27] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[27]_i_1_n_0 ),
        .Q(out_beat_count[27]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[28] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[28]_i_1_n_0 ),
        .Q(out_beat_count[28]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[29] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[29]_i_1_n_0 ),
        .Q(out_beat_count[29]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[2] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[2]_i_1_n_0 ),
        .Q(out_beat_count[2]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[30] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[30]_i_1_n_0 ),
        .Q(out_beat_count[30]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[31] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[31]_i_2_n_0 ),
        .Q(out_beat_count[31]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \out_beat_count_reg[31]_i_4 
       (.CI(\out_beat_count_reg[24]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_out_beat_count_reg[31]_i_4_CO_UNCONNECTED [7:6],\out_beat_count_reg[31]_i_4_n_2 ,\out_beat_count_reg[31]_i_4_n_3 ,\out_beat_count_reg[31]_i_4_n_4 ,\out_beat_count_reg[31]_i_4_n_5 ,\out_beat_count_reg[31]_i_4_n_6 ,\out_beat_count_reg[31]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_out_beat_count_reg[31]_i_4_O_UNCONNECTED [7],out_beat_count0[31:25]}),
        .S({1'b0,out_beat_count[31:25]}));
  FDRE \out_beat_count_reg[3] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[3]_i_1_n_0 ),
        .Q(out_beat_count[3]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[4] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[4]_i_1_n_0 ),
        .Q(out_beat_count[4]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[5] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[5]_i_1_n_0 ),
        .Q(out_beat_count[5]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[6] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[6]_i_1_n_0 ),
        .Q(out_beat_count[6]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[7] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[7]_i_1_n_0 ),
        .Q(out_beat_count[7]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \out_beat_count_reg[8] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[8]_i_1_n_0 ),
        .Q(out_beat_count[8]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \out_beat_count_reg[8]_i_2 
       (.CI(out_beat_count[0]),
        .CI_TOP(1'b0),
        .CO({\out_beat_count_reg[8]_i_2_n_0 ,\out_beat_count_reg[8]_i_2_n_1 ,\out_beat_count_reg[8]_i_2_n_2 ,\out_beat_count_reg[8]_i_2_n_3 ,\out_beat_count_reg[8]_i_2_n_4 ,\out_beat_count_reg[8]_i_2_n_5 ,\out_beat_count_reg[8]_i_2_n_6 ,\out_beat_count_reg[8]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(out_beat_count0[8:1]),
        .S(out_beat_count[8:1]));
  FDRE \out_beat_count_reg[9] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\out_beat_count[9]_i_1_n_0 ),
        .Q(out_beat_count[9]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB77B7BB748848448)) 
    \phase0[0]_i_1 
       (.I0(v1),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\phase0_reg[2]_i_4_n_4 ),
        .I3(\phase0_reg[0]_i_2_n_4 ),
        .I4(\phase0_reg[0]_i_3_n_4 ),
        .I5(\phase0[0]_i_4_n_0 ),
        .O(cond_mod7_return[0]));
  LUT3 #(
    .INIT(8'h21)) 
    \phase0[0]_i_10 
       (.I0(DECIM_M[4]),
        .I1(\phase0[2]_i_22_n_0 ),
        .I2(\phase0[4]_i_19_n_0 ),
        .O(\phase0[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \phase0[0]_i_11 
       (.I0(\phase0[4]_i_17_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\phase0[2]_i_8_n_0 ),
        .I3(DECIM_M[2]),
        .O(\phase0[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h0900A059)) 
    \phase0[0]_i_12 
       (.I0(\phase0[2]_i_6_n_0 ),
        .I1(DECIM_M[1]),
        .I2(\phase0_reg[0]_i_3_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(\phase0[0]_i_4_n_0 ),
        .O(\phase0[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \phase0[0]_i_13 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_29_n_0 ),
        .I2(\phase0[0]_i_30_n_0 ),
        .I3(\phase0_reg[0]_i_21_n_4 ),
        .I4(\phase0[0]_i_31_n_0 ),
        .I5(\phase0[0]_i_32_n_0 ),
        .O(\phase0[0]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \phase0[0]_i_14 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_26_n_0 ),
        .I2(\phase0[0]_i_28_n_0 ),
        .O(\phase0[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \phase0[0]_i_15 
       (.I0(\phase0[2]_i_20_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\phase0[0]_i_33_n_0 ),
        .O(\phase0[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h0D45541C455D1C04)) 
    \phase0[0]_i_16 
       (.I0(DECIM_M[1]),
        .I1(\phase0[2]_i_17_n_0 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(\phase0_reg[0]_i_22_n_4 ),
        .I4(\phase0[2]_i_18_n_0 ),
        .I5(\phase0_reg[0]_i_21_n_4 ),
        .O(\phase0[0]_i_16_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase0[0]_i_17 
       (.I0(\phase0[0]_i_27_n_0 ),
        .O(\phase0[0]_i_17_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \phase0[0]_i_18 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_28_n_0 ),
        .I2(\phase0[0]_i_26_n_0 ),
        .O(\phase0[0]_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \phase0[0]_i_19 
       (.I0(\phase0[0]_i_33_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\phase0[2]_i_20_n_0 ),
        .I3(DECIM_M[2]),
        .O(\phase0[0]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0469804880120433)) 
    \phase0[0]_i_20 
       (.I0(\phase0_reg[0]_i_21_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\phase0_reg[0]_i_22_n_4 ),
        .I3(\phase0[2]_i_17_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\phase0[2]_i_18_n_0 ),
        .O(\phase0[0]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFF5DDF45)) 
    \phase0[0]_i_24 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_58_n_0 ),
        .I2(DECIM_M[3]),
        .I3(phase0[4]),
        .I4(phase0[3]),
        .O(\phase0[0]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hD4FF00D4)) 
    \phase0[0]_i_25 
       (.I0(DECIM_M[2]),
        .I1(\phase0[2]_i_19_n_0 ),
        .I2(\phase0[2]_i_20_n_0 ),
        .I3(DECIM_M[3]),
        .I4(\phase0[0]_i_33_n_0 ),
        .O(\phase0[0]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \phase0[0]_i_26 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_29_n_0 ),
        .I2(\phase0[0]_i_30_n_0 ),
        .I3(\phase0_reg[0]_i_21_n_4 ),
        .O(\phase0[0]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \phase0[0]_i_27 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_29_n_0 ),
        .I2(\phase0[0]_i_30_n_0 ),
        .I3(\phase0_reg[0]_i_21_n_4 ),
        .I4(\phase0[0]_i_31_n_0 ),
        .I5(\phase0[0]_i_32_n_0 ),
        .O(\phase0[0]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \phase0[0]_i_28 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_29_n_0 ),
        .I2(\phase0[0]_i_30_n_0 ),
        .I3(\phase0_reg[0]_i_21_n_4 ),
        .I4(\phase0[0]_i_32_n_0 ),
        .O(\phase0[0]_i_28_n_0 ));
  LUT5 #(
    .INIT(32'hD4FF00D4)) 
    \phase0[0]_i_29 
       (.I0(DECIM_M[2]),
        .I1(\phase0[2]_i_23_n_0 ),
        .I2(\phase0[2]_i_24_n_0 ),
        .I3(DECIM_M[3]),
        .I4(\phase0[0]_i_59_n_0 ),
        .O(\phase0[0]_i_29_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \phase0[0]_i_30 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_60_n_0 ),
        .I2(\phase0[0]_i_61_n_0 ),
        .I3(\phase0_reg[0]_i_22_n_4 ),
        .O(\phase0[0]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \phase0[0]_i_31 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_60_n_0 ),
        .I2(\phase0[0]_i_61_n_0 ),
        .I3(\phase0_reg[0]_i_22_n_4 ),
        .I4(\phase0[0]_i_62_n_0 ),
        .I5(\phase0[0]_i_63_n_0 ),
        .O(\phase0[0]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \phase0[0]_i_32 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_60_n_0 ),
        .I2(\phase0[0]_i_61_n_0 ),
        .I3(\phase0_reg[0]_i_22_n_4 ),
        .I4(\phase0[0]_i_63_n_0 ),
        .O(\phase0[0]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h2BD4D42BFFFF0000)) 
    \phase0[0]_i_33 
       (.I0(DECIM_M[2]),
        .I1(\phase0[2]_i_23_n_0 ),
        .I2(\phase0[2]_i_24_n_0 ),
        .I3(DECIM_M[3]),
        .I4(\phase0[0]_i_59_n_0 ),
        .I5(\phase0_reg[0]_i_21_n_4 ),
        .O(\phase0[0]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \phase0[0]_i_34 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_60_n_0 ),
        .I2(\phase0[0]_i_61_n_0 ),
        .I3(\phase0_reg[0]_i_22_n_4 ),
        .I4(\phase0[0]_i_62_n_0 ),
        .I5(\phase0[0]_i_63_n_0 ),
        .O(\phase0[0]_i_34_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \phase0[0]_i_35 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_30_n_0 ),
        .I2(\phase0[0]_i_32_n_0 ),
        .O(\phase0[0]_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \phase0[0]_i_36 
       (.I0(\phase0[2]_i_24_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\phase0[0]_i_59_n_0 ),
        .O(\phase0[0]_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \phase0[0]_i_37 
       (.I0(DECIM_M[1]),
        .I1(\phase0[2]_i_18_n_0 ),
        .I2(\phase0_reg[0]_i_22_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(\phase0[2]_i_17_n_0 ),
        .O(\phase0[0]_i_37_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase0[0]_i_38 
       (.I0(\phase0[0]_i_31_n_0 ),
        .O(\phase0[0]_i_38_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \phase0[0]_i_39 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_32_n_0 ),
        .I2(\phase0[0]_i_30_n_0 ),
        .O(\phase0[0]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hB77B7BB748848448)) 
    \phase0[0]_i_4 
       (.I0(\phase0_reg[0]_i_21_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\phase0_reg[0]_i_22_n_4 ),
        .I3(\phase0_reg[0]_i_23_n_4 ),
        .I4(\phase0[0]_i_24_n_0 ),
        .I5(phase0[0]),
        .O(\phase0[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \phase0[0]_i_40 
       (.I0(\phase0[0]_i_59_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\phase0[2]_i_24_n_0 ),
        .I3(DECIM_M[2]),
        .O(\phase0[0]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h4884B77B00000000)) 
    \phase0[0]_i_41 
       (.I0(\phase0_reg[0]_i_22_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\phase0_reg[0]_i_23_n_4 ),
        .I3(\phase0[0]_i_24_n_0 ),
        .I4(phase0[0]),
        .I5(\phase0[0]_i_64_n_0 ),
        .O(\phase0[0]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \phase0[0]_i_42 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_65_n_0 ),
        .I2(\phase0[0]_i_66_n_0 ),
        .I3(\phase0_reg[0]_i_23_n_4 ),
        .I4(\phase0[0]_i_50_n_0 ),
        .I5(\phase0[0]_i_67_n_0 ),
        .O(\phase0[0]_i_42_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \phase0[0]_i_43 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_61_n_0 ),
        .I2(\phase0[0]_i_63_n_0 ),
        .O(\phase0[0]_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \phase0[0]_i_44 
       (.I0(\phase0[0]_i_68_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\phase0[0]_i_69_n_0 ),
        .O(\phase0[0]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'h04D5514C455D10C4)) 
    \phase0[0]_i_45 
       (.I0(DECIM_M[1]),
        .I1(phase0[0]),
        .I2(\phase0[0]_i_24_n_0 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(phase0[1]),
        .I5(\phase0_reg[0]_i_23_n_4 ),
        .O(\phase0[0]_i_45_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase0[0]_i_46 
       (.I0(\phase0[0]_i_62_n_0 ),
        .O(\phase0[0]_i_46_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \phase0[0]_i_47 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_63_n_0 ),
        .I2(\phase0[0]_i_61_n_0 ),
        .O(\phase0[0]_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \phase0[0]_i_48 
       (.I0(\phase0[0]_i_69_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\phase0[0]_i_68_n_0 ),
        .I3(DECIM_M[2]),
        .O(\phase0[0]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h2040498680104383)) 
    \phase0[0]_i_49 
       (.I0(\phase0_reg[0]_i_23_n_4 ),
        .I1(phase0[1]),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(\phase0[0]_i_24_n_0 ),
        .I4(phase0[0]),
        .I5(DECIM_M[1]),
        .O(\phase0[0]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \phase0[0]_i_5 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_25_n_0 ),
        .I2(\phase0[0]_i_26_n_0 ),
        .I3(\phase0_reg[0]_i_3_n_4 ),
        .I4(\phase0[0]_i_27_n_0 ),
        .I5(\phase0[0]_i_28_n_0 ),
        .O(\phase0[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h222B022200000000)) 
    \phase0[0]_i_50 
       (.I0(DECIM_M[4]),
        .I1(phase0[4]),
        .I2(\phase0[0]_i_70_n_0 ),
        .I3(phase0[3]),
        .I4(DECIM_M[3]),
        .I5(\phase0[0]_i_24_n_0 ),
        .O(\phase0[0]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h666B5666DD44DD44)) 
    \phase0[0]_i_51 
       (.I0(DECIM_M[4]),
        .I1(phase0[4]),
        .I2(\phase0[0]_i_70_n_0 ),
        .I3(phase0[3]),
        .I4(DECIM_M[3]),
        .I5(\phase0[0]_i_24_n_0 ),
        .O(\phase0[0]_i_51_n_0 ));
  LUT6 #(
    .INIT(64'h05D741054117414D)) 
    \phase0[0]_i_52 
       (.I0(DECIM_M[3]),
        .I1(\phase0[0]_i_24_n_0 ),
        .I2(phase0[3]),
        .I3(DECIM_M[2]),
        .I4(phase0[2]),
        .I5(\phase0[0]_i_71_n_0 ),
        .O(\phase0[0]_i_52_n_0 ));
  LUT5 #(
    .INIT(32'h51753410)) 
    \phase0[0]_i_53 
       (.I0(DECIM_M[1]),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(phase0[0]),
        .I3(\phase0[0]_i_24_n_0 ),
        .I4(phase0[1]),
        .O(\phase0[0]_i_53_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase0[0]_i_54 
       (.I0(\phase0[0]_i_50_n_0 ),
        .O(\phase0[0]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h0822006262556615)) 
    \phase0[0]_i_55 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_24_n_0 ),
        .I2(DECIM_M[3]),
        .I3(phase0[3]),
        .I4(\phase0[0]_i_70_n_0 ),
        .I5(phase0[4]),
        .O(\phase0[0]_i_55_n_0 ));
  LUT6 #(
    .INIT(64'h066000C30660C300)) 
    \phase0[0]_i_56 
       (.I0(\phase0[0]_i_71_n_0 ),
        .I1(phase0[2]),
        .I2(DECIM_M[2]),
        .I3(phase0[3]),
        .I4(\phase0[0]_i_24_n_0 ),
        .I5(DECIM_M[3]),
        .O(\phase0[0]_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h28061805)) 
    \phase0[0]_i_57 
       (.I0(phase0[1]),
        .I1(\phase0[0]_i_24_n_0 ),
        .I2(phase0[0]),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(DECIM_M[1]),
        .O(\phase0[0]_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hD0FD0000FFFFD0FD)) 
    \phase0[0]_i_58 
       (.I0(\phase0[1]_i_3_n_0 ),
        .I1(phase0[0]),
        .I2(phase0[1]),
        .I3(DECIM_M[1]),
        .I4(phase0[2]),
        .I5(DECIM_M[2]),
        .O(\phase0[0]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h2BD4D42BFFFF0000)) 
    \phase0[0]_i_59 
       (.I0(DECIM_M[2]),
        .I1(\phase0[2]_i_25_n_0 ),
        .I2(\phase0[0]_i_68_n_0 ),
        .I3(DECIM_M[3]),
        .I4(\phase0[0]_i_69_n_0 ),
        .I5(\phase0_reg[0]_i_22_n_4 ),
        .O(\phase0[0]_i_59_n_0 ));
  LUT3 #(
    .INIT(8'hF4)) 
    \phase0[0]_i_6 
       (.I0(DECIM_M[4]),
        .I1(\phase0[4]_i_19_n_0 ),
        .I2(\phase0[2]_i_22_n_0 ),
        .O(\phase0[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hD4FF00D4)) 
    \phase0[0]_i_60 
       (.I0(DECIM_M[2]),
        .I1(\phase0[2]_i_25_n_0 ),
        .I2(\phase0[0]_i_68_n_0 ),
        .I3(DECIM_M[3]),
        .I4(\phase0[0]_i_69_n_0 ),
        .O(\phase0[0]_i_60_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \phase0[0]_i_61 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_65_n_0 ),
        .I2(\phase0[0]_i_66_n_0 ),
        .I3(\phase0_reg[0]_i_23_n_4 ),
        .O(\phase0[0]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \phase0[0]_i_62 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_65_n_0 ),
        .I2(\phase0[0]_i_66_n_0 ),
        .I3(\phase0_reg[0]_i_23_n_4 ),
        .I4(\phase0[0]_i_50_n_0 ),
        .I5(\phase0[0]_i_67_n_0 ),
        .O(\phase0[0]_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \phase0[0]_i_63 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_65_n_0 ),
        .I2(\phase0[0]_i_66_n_0 ),
        .I3(\phase0_reg[0]_i_23_n_4 ),
        .I4(\phase0[0]_i_67_n_0 ),
        .O(\phase0[0]_i_63_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h5959A959)) 
    \phase0[0]_i_64 
       (.I0(\phase0[2]_i_18_n_0 ),
        .I1(DECIM_M[1]),
        .I2(\phase0_reg[0]_i_22_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(\phase0[2]_i_17_n_0 ),
        .O(\phase0[0]_i_64_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h8A2F0EAB)) 
    \phase0[0]_i_65 
       (.I0(\phase0[0]_i_72_n_0 ),
        .I1(\phase0[0]_i_24_n_0 ),
        .I2(DECIM_M[3]),
        .I3(phase0[3]),
        .I4(\phase0[0]_i_70_n_0 ),
        .O(\phase0[0]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h4B8778784B4BB478)) 
    \phase0[0]_i_66 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_24_n_0 ),
        .I2(phase0[4]),
        .I3(DECIM_M[3]),
        .I4(phase0[3]),
        .I5(\phase0[0]_i_70_n_0 ),
        .O(\phase0[0]_i_66_n_0 ));
  LUT6 #(
    .INIT(64'h37003380808888C8)) 
    \phase0[0]_i_67 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_24_n_0 ),
        .I2(DECIM_M[3]),
        .I3(phase0[3]),
        .I4(\phase0[0]_i_70_n_0 ),
        .I5(phase0[4]),
        .O(\phase0[0]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hA35C5CA36F906F90)) 
    \phase0[0]_i_68 
       (.I0(\phase0[0]_i_71_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\phase0[0]_i_24_n_0 ),
        .I3(phase0[2]),
        .I4(\phase0[0]_i_73_n_0 ),
        .I5(\phase0_reg[0]_i_23_n_4 ),
        .O(\phase0[0]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h59A6A956C03F30CF)) 
    \phase0[0]_i_69 
       (.I0(\phase0[0]_i_72_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\phase0[0]_i_24_n_0 ),
        .I3(phase0[3]),
        .I4(\phase0[0]_i_70_n_0 ),
        .I5(\phase0_reg[0]_i_23_n_4 ),
        .O(\phase0[0]_i_69_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \phase0[0]_i_7 
       (.I0(\phase0[2]_i_8_n_0 ),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(\phase0[4]_i_17_n_0 ),
        .O(\phase0[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB0FB0000FFFFB0FB)) 
    \phase0[0]_i_70 
       (.I0(phase0[0]),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(phase0[1]),
        .I3(DECIM_M[1]),
        .I4(phase0[2]),
        .I5(DECIM_M[2]),
        .O(\phase0[0]_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'hB0FB)) 
    \phase0[0]_i_71 
       (.I0(phase0[0]),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(phase0[1]),
        .I3(DECIM_M[1]),
        .O(\phase0[0]_i_71_n_0 ));
  LUT5 #(
    .INIT(32'h7FB32310)) 
    \phase0[0]_i_72 
       (.I0(\phase0[0]_i_71_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\phase0[0]_i_24_n_0 ),
        .I3(phase0[2]),
        .I4(\phase0[0]_i_73_n_0 ),
        .O(\phase0[0]_i_72_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h63FF0C6F)) 
    \phase0[0]_i_73 
       (.I0(phase0[0]),
        .I1(\phase0[0]_i_24_n_0 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .O(\phase0[0]_i_73_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \phase0[0]_i_8 
       (.I0(DECIM_M[1]),
        .I1(\phase0[2]_i_6_n_0 ),
        .I2(\phase0_reg[0]_i_3_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(\phase0[0]_i_4_n_0 ),
        .O(\phase0[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase0[0]_i_9 
       (.I0(\phase0[2]_i_21_n_0 ),
        .O(\phase0[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \phase0[1]_i_1 
       (.I0(v[0]),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\phase0_reg[2]_i_4_n_4 ),
        .I3(v[1]),
        .I4(DECIM_M[1]),
        .I5(v1),
        .O(cond_mod7_return[1]));
  LUT4 #(
    .INIT(16'hB748)) 
    \phase0[1]_i_2 
       (.I0(\phase0_reg[0]_i_2_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\phase0_reg[0]_i_3_n_4 ),
        .I3(\phase0[0]_i_4_n_0 ),
        .O(v[0]));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \phase0[1]_i_3 
       (.I0(DECIM_M[2]),
        .I1(DECIM_M[1]),
        .I2(DECIM_M[3]),
        .I3(DECIM_M[4]),
        .I4(DECIM_M[0]),
        .O(\phase0[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \phase0[1]_i_4 
       (.I0(\phase0[0]_i_4_n_0 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\phase0_reg[0]_i_3_n_4 ),
        .I3(\phase0[2]_i_6_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\phase0_reg[0]_i_2_n_4 ),
        .O(v[1]));
  LUT6 #(
    .INIT(64'hA53C5AC369F069F0)) 
    \phase0[2]_i_1 
       (.I0(\phase0[2]_i_2_n_0 ),
        .I1(DECIM_M[2]),
        .I2(v[2]),
        .I3(\phase0_reg[2]_i_4_n_4 ),
        .I4(\phase0[2]_i_5_n_0 ),
        .I5(v1),
        .O(cond_mod7_return[2]));
  LUT3 #(
    .INIT(8'hF4)) 
    \phase0[2]_i_10 
       (.I0(DECIM_M[4]),
        .I1(v[4]),
        .I2(v[5]),
        .O(\phase0[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \phase0[2]_i_11 
       (.I0(v[2]),
        .I1(DECIM_M[2]),
        .I2(DECIM_M[3]),
        .I3(v[3]),
        .O(\phase0[2]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0D45541C455D1C04)) 
    \phase0[2]_i_12 
       (.I0(DECIM_M[1]),
        .I1(\phase0[0]_i_4_n_0 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(\phase0_reg[0]_i_3_n_4 ),
        .I4(\phase0[2]_i_6_n_0 ),
        .I5(\phase0_reg[0]_i_2_n_4 ),
        .O(\phase0[2]_i_12_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \phase0[2]_i_13 
       (.I0(v__0),
        .O(\phase0[2]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h21)) 
    \phase0[2]_i_14 
       (.I0(DECIM_M[4]),
        .I1(v[5]),
        .I2(v[4]),
        .O(\phase0[2]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \phase0[2]_i_15 
       (.I0(v[3]),
        .I1(DECIM_M[3]),
        .I2(v[2]),
        .I3(DECIM_M[2]),
        .O(\phase0[2]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h9000090009999099)) 
    \phase0[2]_i_16 
       (.I0(v[1]),
        .I1(DECIM_M[1]),
        .I2(\phase0_reg[0]_i_2_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(\phase0_reg[0]_i_3_n_4 ),
        .I5(\phase0[0]_i_4_n_0 ),
        .O(\phase0[2]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'hB748)) 
    \phase0[2]_i_17 
       (.I0(\phase0_reg[0]_i_23_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\phase0[0]_i_24_n_0 ),
        .I3(phase0[0]),
        .O(\phase0[2]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h1C2FE3D073BF8C40)) 
    \phase0[2]_i_18 
       (.I0(phase0[0]),
        .I1(\phase0[0]_i_24_n_0 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(DECIM_M[1]),
        .I4(phase0[1]),
        .I5(\phase0_reg[0]_i_23_n_4 ),
        .O(\phase0[2]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h16C3803CBFFFD6FF)) 
    \phase0[2]_i_19 
       (.I0(\phase0[2]_i_17_n_0 ),
        .I1(\phase0_reg[0]_i_22_n_4 ),
        .I2(\phase0_reg[0]_i_21_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(\phase0[2]_i_18_n_0 ),
        .I5(DECIM_M[1]),
        .O(\phase0[2]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h16C3803CBFFFD6FF)) 
    \phase0[2]_i_2 
       (.I0(\phase0[0]_i_4_n_0 ),
        .I1(\phase0_reg[0]_i_3_n_4 ),
        .I2(\phase0_reg[0]_i_2_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(\phase0[2]_i_6_n_0 ),
        .I5(DECIM_M[1]),
        .O(\phase0[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h69F0)) 
    \phase0[2]_i_20 
       (.I0(\phase0[2]_i_23_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\phase0[2]_i_24_n_0 ),
        .I3(\phase0_reg[0]_i_21_n_4 ),
        .O(\phase0[2]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \phase0[2]_i_21 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_25_n_0 ),
        .I2(\phase0[0]_i_26_n_0 ),
        .I3(\phase0_reg[0]_i_3_n_4 ),
        .I4(\phase0[0]_i_27_n_0 ),
        .I5(\phase0[0]_i_28_n_0 ),
        .O(\phase0[2]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \phase0[2]_i_22 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_25_n_0 ),
        .I2(\phase0[0]_i_26_n_0 ),
        .I3(\phase0_reg[0]_i_3_n_4 ),
        .I4(\phase0[0]_i_28_n_0 ),
        .O(\phase0[2]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \phase0[2]_i_23 
       (.I0(\phase0[2]_i_17_n_0 ),
        .I1(\phase0_reg[0]_i_22_n_4 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(\phase0[2]_i_18_n_0 ),
        .I4(DECIM_M[1]),
        .O(\phase0[2]_i_23_n_0 ));
  LUT4 #(
    .INIT(16'h69F0)) 
    \phase0[2]_i_24 
       (.I0(\phase0[2]_i_25_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\phase0[0]_i_68_n_0 ),
        .I3(\phase0_reg[0]_i_22_n_4 ),
        .O(\phase0[2]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h16C3BFFF803CD6FF)) 
    \phase0[2]_i_25 
       (.I0(phase0[0]),
        .I1(\phase0[0]_i_24_n_0 ),
        .I2(\phase0_reg[0]_i_23_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(DECIM_M[1]),
        .I5(phase0[1]),
        .O(\phase0[2]_i_25_n_0 ));
  LUT4 #(
    .INIT(16'h69F0)) 
    \phase0[2]_i_3 
       (.I0(\phase0[2]_i_7_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\phase0[2]_i_8_n_0 ),
        .I3(\phase0_reg[0]_i_2_n_4 ),
        .O(v[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \phase0[2]_i_5 
       (.I0(v[0]),
        .I1(\phase0_reg[2]_i_4_n_4 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(v[1]),
        .I4(DECIM_M[1]),
        .O(\phase0[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h34CB3BC44FB0BF40)) 
    \phase0[2]_i_6 
       (.I0(\phase0[2]_i_17_n_0 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\phase0_reg[0]_i_22_n_4 ),
        .I3(\phase0[2]_i_18_n_0 ),
        .I4(DECIM_M[1]),
        .I5(\phase0_reg[0]_i_21_n_4 ),
        .O(\phase0[2]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h630CFF6F)) 
    \phase0[2]_i_7 
       (.I0(\phase0[0]_i_4_n_0 ),
        .I1(\phase0_reg[0]_i_3_n_4 ),
        .I2(\phase0[1]_i_3_n_0 ),
        .I3(\phase0[2]_i_6_n_0 ),
        .I4(DECIM_M[1]),
        .O(\phase0[2]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h69F0)) 
    \phase0[2]_i_8 
       (.I0(\phase0[2]_i_19_n_0 ),
        .I1(DECIM_M[2]),
        .I2(\phase0[2]_i_20_n_0 ),
        .I3(\phase0_reg[0]_i_3_n_4 ),
        .O(\phase0[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \phase0[2]_i_9 
       (.I0(DECIM_M[4]),
        .I1(\phase0[4]_i_18_n_0 ),
        .I2(\phase0[4]_i_19_n_0 ),
        .I3(\phase0_reg[0]_i_2_n_4 ),
        .I4(\phase0[2]_i_21_n_0 ),
        .I5(\phase0[2]_i_22_n_0 ),
        .O(\phase0[2]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h69F0)) 
    \phase0[3]_i_1 
       (.I0(\phase0[4]_i_2_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\phase0[4]_i_3_n_0 ),
        .I3(v1),
        .O(cond_mod7_return[3]));
  LUT6 #(
    .INIT(64'h599AA665FFFF0000)) 
    \phase0[4]_i_1 
       (.I0(DECIM_M[4]),
        .I1(DECIM_M[3]),
        .I2(\phase0[4]_i_2_n_0 ),
        .I3(\phase0[4]_i_3_n_0 ),
        .I4(\phase0[4]_i_4_n_0 ),
        .I5(v1),
        .O(cond_mod7_return[4]));
  LUT5 #(
    .INIT(32'hD56BFF44)) 
    \phase0[4]_i_10 
       (.I0(DECIM_M[4]),
        .I1(v[4]),
        .I2(\phase0[4]_i_7_n_0 ),
        .I3(v[5]),
        .I4(\phase0_reg[2]_i_4_n_4 ),
        .O(\phase0[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2130FFFF00002130)) 
    \phase0[4]_i_11 
       (.I0(\phase0[2]_i_2_n_0 ),
        .I1(DECIM_M[2]),
        .I2(v[2]),
        .I3(\phase0_reg[2]_i_4_n_4 ),
        .I4(DECIM_M[3]),
        .I5(\phase0[4]_i_3_n_0 ),
        .O(\phase0[4]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h447D1444)) 
    \phase0[4]_i_12 
       (.I0(DECIM_M[1]),
        .I1(v[1]),
        .I2(\phase0_reg[2]_i_4_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(v[0]),
        .O(\phase0[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h002BFFD40000FFFF)) 
    \phase0[4]_i_13 
       (.I0(DECIM_M[4]),
        .I1(\phase0[4]_i_7_n_0 ),
        .I2(v[4]),
        .I3(v[5]),
        .I4(v__0),
        .I5(\phase0_reg[2]_i_4_n_4 ),
        .O(\phase0[4]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h02868501)) 
    \phase0[4]_i_14 
       (.I0(DECIM_M[4]),
        .I1(\phase0_reg[2]_i_4_n_4 ),
        .I2(v[5]),
        .I3(\phase0[4]_i_7_n_0 ),
        .I4(v[4]),
        .O(\phase0[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0909909099000099)) 
    \phase0[4]_i_15 
       (.I0(\phase0[4]_i_3_n_0 ),
        .I1(DECIM_M[3]),
        .I2(\phase0[2]_i_2_n_0 ),
        .I3(DECIM_M[2]),
        .I4(v[2]),
        .I5(\phase0_reg[2]_i_4_n_4 ),
        .O(\phase0[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h4884B77B00000000)) 
    \phase0[4]_i_16 
       (.I0(\phase0_reg[2]_i_4_n_4 ),
        .I1(\phase0[1]_i_3_n_0 ),
        .I2(\phase0_reg[0]_i_2_n_4 ),
        .I3(\phase0_reg[0]_i_3_n_4 ),
        .I4(\phase0[0]_i_4_n_0 ),
        .I5(\phase0[4]_i_22_n_0 ),
        .O(\phase0[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h2BD4D42BFFFF0000)) 
    \phase0[4]_i_17 
       (.I0(DECIM_M[2]),
        .I1(\phase0[2]_i_19_n_0 ),
        .I2(\phase0[2]_i_20_n_0 ),
        .I3(DECIM_M[3]),
        .I4(\phase0[0]_i_33_n_0 ),
        .I5(\phase0_reg[0]_i_3_n_4 ),
        .O(\phase0[4]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hD4FF00D4)) 
    \phase0[4]_i_18 
       (.I0(DECIM_M[2]),
        .I1(\phase0[2]_i_7_n_0 ),
        .I2(\phase0[2]_i_8_n_0 ),
        .I3(DECIM_M[3]),
        .I4(\phase0[4]_i_17_n_0 ),
        .O(\phase0[4]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \phase0[4]_i_19 
       (.I0(DECIM_M[4]),
        .I1(\phase0[0]_i_25_n_0 ),
        .I2(\phase0[0]_i_26_n_0 ),
        .I3(\phase0_reg[0]_i_3_n_4 ),
        .O(\phase0[4]_i_19_n_0 ));
  LUT5 #(
    .INIT(32'h7BF32130)) 
    \phase0[4]_i_2 
       (.I0(\phase0[2]_i_2_n_0 ),
        .I1(DECIM_M[2]),
        .I2(v[2]),
        .I3(\phase0_reg[2]_i_4_n_4 ),
        .I4(\phase0[2]_i_5_n_0 ),
        .O(\phase0[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \phase0[4]_i_20 
       (.I0(DECIM_M[4]),
        .I1(\phase0[4]_i_18_n_0 ),
        .I2(\phase0[4]_i_19_n_0 ),
        .I3(\phase0_reg[0]_i_2_n_4 ),
        .I4(\phase0[2]_i_21_n_0 ),
        .I5(\phase0[2]_i_22_n_0 ),
        .O(v__0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hD4FF2B00)) 
    \phase0[4]_i_21 
       (.I0(DECIM_M[4]),
        .I1(\phase0[4]_i_18_n_0 ),
        .I2(\phase0[4]_i_19_n_0 ),
        .I3(\phase0_reg[0]_i_2_n_4 ),
        .I4(\phase0[2]_i_22_n_0 ),
        .O(v[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h5959A959)) 
    \phase0[4]_i_22 
       (.I0(v[1]),
        .I1(DECIM_M[1]),
        .I2(\phase0_reg[2]_i_4_n_4 ),
        .I3(\phase0[1]_i_3_n_0 ),
        .I4(v[0]),
        .O(\phase0[4]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h2BD4D42BFFFF0000)) 
    \phase0[4]_i_3 
       (.I0(DECIM_M[2]),
        .I1(\phase0[2]_i_2_n_0 ),
        .I2(v[2]),
        .I3(DECIM_M[3]),
        .I4(v[3]),
        .I5(\phase0_reg[2]_i_4_n_4 ),
        .O(\phase0[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h69F0)) 
    \phase0[4]_i_4 
       (.I0(DECIM_M[4]),
        .I1(\phase0[4]_i_7_n_0 ),
        .I2(v[4]),
        .I3(\phase0_reg[2]_i_4_n_4 ),
        .O(\phase0[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2BD4D42BFFFF0000)) 
    \phase0[4]_i_6 
       (.I0(DECIM_M[2]),
        .I1(\phase0[2]_i_7_n_0 ),
        .I2(\phase0[2]_i_8_n_0 ),
        .I3(DECIM_M[3]),
        .I4(\phase0[4]_i_17_n_0 ),
        .I5(\phase0_reg[0]_i_2_n_4 ),
        .O(v[3]));
  LUT5 #(
    .INIT(32'hD4FF00D4)) 
    \phase0[4]_i_7 
       (.I0(DECIM_M[2]),
        .I1(\phase0[2]_i_2_n_0 ),
        .I2(v[2]),
        .I3(DECIM_M[3]),
        .I4(v[3]),
        .O(\phase0[4]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h69F0)) 
    \phase0[4]_i_8 
       (.I0(DECIM_M[4]),
        .I1(\phase0[4]_i_18_n_0 ),
        .I2(\phase0[4]_i_19_n_0 ),
        .I3(\phase0_reg[0]_i_2_n_4 ),
        .O(v[4]));
  LUT6 #(
    .INIT(64'hFFFF0000D4FF2B00)) 
    \phase0[4]_i_9 
       (.I0(DECIM_M[4]),
        .I1(\phase0[4]_i_7_n_0 ),
        .I2(v[4]),
        .I3(\phase0_reg[2]_i_4_n_4 ),
        .I4(v__0),
        .I5(v[5]),
        .O(\phase0[4]_i_9_n_0 ));
  FDRE \phase0_reg[0] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(cond_mod7_return[0]),
        .Q(phase0[0]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \phase0_reg[0]_i_2 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_phase0_reg[0]_i_2_CO_UNCONNECTED [7:4],\phase0_reg[0]_i_2_n_4 ,\phase0_reg[0]_i_2_n_5 ,\phase0_reg[0]_i_2_n_6 ,\phase0_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\phase0[0]_i_5_n_0 ,\phase0[0]_i_6_n_0 ,\phase0[0]_i_7_n_0 ,\phase0[0]_i_8_n_0 }),
        .O(\NLW_phase0_reg[0]_i_2_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\phase0[0]_i_9_n_0 ,\phase0[0]_i_10_n_0 ,\phase0[0]_i_11_n_0 ,\phase0[0]_i_12_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \phase0_reg[0]_i_21 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_phase0_reg[0]_i_21_CO_UNCONNECTED [7:4],\phase0_reg[0]_i_21_n_4 ,\phase0_reg[0]_i_21_n_5 ,\phase0_reg[0]_i_21_n_6 ,\phase0_reg[0]_i_21_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\phase0[0]_i_34_n_0 ,\phase0[0]_i_35_n_0 ,\phase0[0]_i_36_n_0 ,\phase0[0]_i_37_n_0 }),
        .O(\NLW_phase0_reg[0]_i_21_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\phase0[0]_i_38_n_0 ,\phase0[0]_i_39_n_0 ,\phase0[0]_i_40_n_0 ,\phase0[0]_i_41_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \phase0_reg[0]_i_22 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_phase0_reg[0]_i_22_CO_UNCONNECTED [7:4],\phase0_reg[0]_i_22_n_4 ,\phase0_reg[0]_i_22_n_5 ,\phase0_reg[0]_i_22_n_6 ,\phase0_reg[0]_i_22_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\phase0[0]_i_42_n_0 ,\phase0[0]_i_43_n_0 ,\phase0[0]_i_44_n_0 ,\phase0[0]_i_45_n_0 }),
        .O(\NLW_phase0_reg[0]_i_22_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\phase0[0]_i_46_n_0 ,\phase0[0]_i_47_n_0 ,\phase0[0]_i_48_n_0 ,\phase0[0]_i_49_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \phase0_reg[0]_i_23 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_phase0_reg[0]_i_23_CO_UNCONNECTED [7:4],\phase0_reg[0]_i_23_n_4 ,\phase0_reg[0]_i_23_n_5 ,\phase0_reg[0]_i_23_n_6 ,\phase0_reg[0]_i_23_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\phase0[0]_i_50_n_0 ,\phase0[0]_i_51_n_0 ,\phase0[0]_i_52_n_0 ,\phase0[0]_i_53_n_0 }),
        .O(\NLW_phase0_reg[0]_i_23_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\phase0[0]_i_54_n_0 ,\phase0[0]_i_55_n_0 ,\phase0[0]_i_56_n_0 ,\phase0[0]_i_57_n_0 }));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \phase0_reg[0]_i_3 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_phase0_reg[0]_i_3_CO_UNCONNECTED [7:4],\phase0_reg[0]_i_3_n_4 ,\phase0_reg[0]_i_3_n_5 ,\phase0_reg[0]_i_3_n_6 ,\phase0_reg[0]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\phase0[0]_i_13_n_0 ,\phase0[0]_i_14_n_0 ,\phase0[0]_i_15_n_0 ,\phase0[0]_i_16_n_0 }),
        .O(\NLW_phase0_reg[0]_i_3_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\phase0[0]_i_17_n_0 ,\phase0[0]_i_18_n_0 ,\phase0[0]_i_19_n_0 ,\phase0[0]_i_20_n_0 }));
  FDRE \phase0_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(cond_mod7_return[1]),
        .Q(phase0[1]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \phase0_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(cond_mod7_return[2]),
        .Q(phase0[2]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \phase0_reg[2]_i_4 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_phase0_reg[2]_i_4_CO_UNCONNECTED [7:4],\phase0_reg[2]_i_4_n_4 ,\phase0_reg[2]_i_4_n_5 ,\phase0_reg[2]_i_4_n_6 ,\phase0_reg[2]_i_4_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\phase0[2]_i_9_n_0 ,\phase0[2]_i_10_n_0 ,\phase0[2]_i_11_n_0 ,\phase0[2]_i_12_n_0 }),
        .O(\NLW_phase0_reg[2]_i_4_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\phase0[2]_i_13_n_0 ,\phase0[2]_i_14_n_0 ,\phase0[2]_i_15_n_0 ,\phase0[2]_i_16_n_0 }));
  FDRE \phase0_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(cond_mod7_return[3]),
        .Q(phase0[3]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \phase0_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(cond_mod7_return[4]),
        .Q(phase0[4]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \phase0_reg[4]_i_5 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\NLW_phase0_reg[4]_i_5_CO_UNCONNECTED [7:4],v1,\phase0_reg[4]_i_5_n_5 ,\phase0_reg[4]_i_5_n_6 ,\phase0_reg[4]_i_5_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,\phase0[4]_i_9_n_0 ,\phase0[4]_i_10_n_0 ,\phase0[4]_i_11_n_0 ,\phase0[4]_i_12_n_0 }),
        .O(\NLW_phase0_reg[4]_i_5_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,\phase0[4]_i_13_n_0 ,\phase0[4]_i_14_n_0 ,\phase0[4]_i_15_n_0 ,\phase0[4]_i_16_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[0]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[0]),
        .O(\sample_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[10]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[10]),
        .O(\sample_count[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[11]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[11]),
        .O(\sample_count[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[12]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[12]),
        .O(\sample_count[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[13]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[13]),
        .O(\sample_count[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[14]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[14]),
        .O(\sample_count[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[15]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[15]),
        .O(\sample_count[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[16]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[16]),
        .O(\sample_count[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[17]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[17]),
        .O(\sample_count[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[18]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[18]),
        .O(\sample_count[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[19]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[19]),
        .O(\sample_count[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[1]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[1]),
        .O(\sample_count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[20]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[20]),
        .O(\sample_count[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[21]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[21]),
        .O(\sample_count[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[22]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[22]),
        .O(\sample_count[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[23]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[23]),
        .O(\sample_count[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[24]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[24]),
        .O(\sample_count[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[25]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[25]),
        .O(\sample_count[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[26]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[26]),
        .O(\sample_count[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[27]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[27]),
        .O(\sample_count[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[28]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[28]),
        .O(\sample_count[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[29]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[29]),
        .O(\sample_count[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[2]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[2]),
        .O(\sample_count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[30]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[30]),
        .O(\sample_count[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[31]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[31]),
        .O(\sample_count[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[3]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[3]),
        .O(\sample_count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[4]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[4]),
        .O(\sample_count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[5]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[5]),
        .O(\sample_count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[6]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[6]),
        .O(\sample_count[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[7]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[7]),
        .O(\sample_count[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hFF969600)) 
    \sample_count[7]_i_10 
       (.I0(mask_comb[5]),
        .I1(mask_comb[4]),
        .I2(mask_comb[6]),
        .I3(mask_comb[7]),
        .I4(mask_comb[0]),
        .O(\sample_count[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h171717E817E8E8E8)) 
    \sample_count[7]_i_11 
       (.I0(mask_comb[2]),
        .I1(mask_comb[1]),
        .I2(mask_comb[3]),
        .I3(mask_comb[5]),
        .I4(mask_comb[4]),
        .I5(mask_comb[6]),
        .O(\sample_count[7]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \sample_count[7]_i_12 
       (.I0(mask_comb[5]),
        .I1(mask_comb[4]),
        .I2(mask_comb[6]),
        .I3(mask_comb[7]),
        .I4(mask_comb[0]),
        .O(\sample_count[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    \sample_count[7]_i_13 
       (.I0(\out_beat_count[31]_i_11_n_0 ),
        .I1(\m_axis_tuser[6]_i_2_n_0 ),
        .I2(\m_axis_tuser[4]_i_2_n_0 ),
        .I3(\out_beat_count[31]_i_12_n_0 ),
        .I4(\m_axis_tuser[5]_i_2_n_0 ),
        .I5(\out_beat_count[31]_i_16_n_0 ),
        .O(\sample_count[7]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \sample_count[7]_i_3 
       (.I0(sample_count[3]),
        .I1(\sample_count[7]_i_7_n_0 ),
        .I2(\sample_count[7]_i_8_n_0 ),
        .I3(\sample_count[7]_i_9_n_0 ),
        .I4(\sample_count[7]_i_10_n_0 ),
        .O(\sample_count[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h9556566A)) 
    \sample_count[7]_i_4 
       (.I0(sample_count[2]),
        .I1(\sample_count[7]_i_9_n_0 ),
        .I2(\sample_count[7]_i_8_n_0 ),
        .I3(\sample_count[7]_i_7_n_0 ),
        .I4(\sample_count[7]_i_10_n_0 ),
        .O(\sample_count[7]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \sample_count[7]_i_5 
       (.I0(sample_count[1]),
        .I1(\sample_count[7]_i_10_n_0 ),
        .I2(\sample_count[7]_i_11_n_0 ),
        .I3(\sample_count[7]_i_7_n_0 ),
        .O(\sample_count[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \sample_count[7]_i_6 
       (.I0(mask_comb[3]),
        .I1(mask_comb[1]),
        .I2(mask_comb[2]),
        .I3(sample_count[0]),
        .I4(\sample_count[7]_i_12_n_0 ),
        .O(\sample_count[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h9600009600969600)) 
    \sample_count[7]_i_7 
       (.I0(mask_comb[2]),
        .I1(mask_comb[1]),
        .I2(mask_comb[3]),
        .I3(mask_comb[0]),
        .I4(mask_comb[7]),
        .I5(\sample_count[7]_i_13_n_0 ),
        .O(\sample_count[7]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sample_count[7]_i_8 
       (.I0(mask_comb[3]),
        .I1(mask_comb[1]),
        .I2(mask_comb[2]),
        .O(\sample_count[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \sample_count[7]_i_9 
       (.I0(mask_comb[6]),
        .I1(mask_comb[4]),
        .I2(mask_comb[5]),
        .O(\sample_count[7]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[8]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[8]),
        .O(\sample_count[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \sample_count[9]_i_1 
       (.I0(\out_beat_count[31]_i_3_n_0 ),
        .I1(sample_count0[9]),
        .O(\sample_count[9]_i_1_n_0 ));
  FDRE \sample_count_reg[0] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[0]_i_1_n_0 ),
        .Q(sample_count[0]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[10] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[10]_i_1_n_0 ),
        .Q(sample_count[10]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[11] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[11]_i_1_n_0 ),
        .Q(sample_count[11]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[12] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[12]_i_1_n_0 ),
        .Q(sample_count[12]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[13] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[13]_i_1_n_0 ),
        .Q(sample_count[13]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[14] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[14]_i_1_n_0 ),
        .Q(sample_count[14]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[15] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[15]_i_1_n_0 ),
        .Q(sample_count[15]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \sample_count_reg[15]_i_2 
       (.CI(\sample_count_reg[7]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sample_count_reg[15]_i_2_n_0 ,\sample_count_reg[15]_i_2_n_1 ,\sample_count_reg[15]_i_2_n_2 ,\sample_count_reg[15]_i_2_n_3 ,\sample_count_reg[15]_i_2_n_4 ,\sample_count_reg[15]_i_2_n_5 ,\sample_count_reg[15]_i_2_n_6 ,\sample_count_reg[15]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(sample_count0[15:8]),
        .S(sample_count[15:8]));
  FDRE \sample_count_reg[16] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[16]_i_1_n_0 ),
        .Q(sample_count[16]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[17] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[17]_i_1_n_0 ),
        .Q(sample_count[17]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[18] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[18]_i_1_n_0 ),
        .Q(sample_count[18]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[19] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[19]_i_1_n_0 ),
        .Q(sample_count[19]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[1] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[1]_i_1_n_0 ),
        .Q(sample_count[1]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[20] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[20]_i_1_n_0 ),
        .Q(sample_count[20]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[21] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[21]_i_1_n_0 ),
        .Q(sample_count[21]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[22] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[22]_i_1_n_0 ),
        .Q(sample_count[22]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[23] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[23]_i_1_n_0 ),
        .Q(sample_count[23]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \sample_count_reg[23]_i_2 
       (.CI(\sample_count_reg[15]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sample_count_reg[23]_i_2_n_0 ,\sample_count_reg[23]_i_2_n_1 ,\sample_count_reg[23]_i_2_n_2 ,\sample_count_reg[23]_i_2_n_3 ,\sample_count_reg[23]_i_2_n_4 ,\sample_count_reg[23]_i_2_n_5 ,\sample_count_reg[23]_i_2_n_6 ,\sample_count_reg[23]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(sample_count0[23:16]),
        .S(sample_count[23:16]));
  FDRE \sample_count_reg[24] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[24]_i_1_n_0 ),
        .Q(sample_count[24]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[25] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[25]_i_1_n_0 ),
        .Q(sample_count[25]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[26] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[26]_i_1_n_0 ),
        .Q(sample_count[26]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[27] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[27]_i_1_n_0 ),
        .Q(sample_count[27]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[28] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[28]_i_1_n_0 ),
        .Q(sample_count[28]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[29] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[29]_i_1_n_0 ),
        .Q(sample_count[29]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[2] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[2]_i_1_n_0 ),
        .Q(sample_count[2]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[30] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[30]_i_1_n_0 ),
        .Q(sample_count[30]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[31] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[31]_i_1_n_0 ),
        .Q(sample_count[31]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \sample_count_reg[31]_i_2 
       (.CI(\sample_count_reg[23]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_sample_count_reg[31]_i_2_CO_UNCONNECTED [7],\sample_count_reg[31]_i_2_n_1 ,\sample_count_reg[31]_i_2_n_2 ,\sample_count_reg[31]_i_2_n_3 ,\sample_count_reg[31]_i_2_n_4 ,\sample_count_reg[31]_i_2_n_5 ,\sample_count_reg[31]_i_2_n_6 ,\sample_count_reg[31]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(sample_count0[31:24]),
        .S(sample_count[31:24]));
  FDRE \sample_count_reg[3] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[3]_i_1_n_0 ),
        .Q(sample_count[3]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[4] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[4]_i_1_n_0 ),
        .Q(sample_count[4]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[5] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[5]_i_1_n_0 ),
        .Q(sample_count[5]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[6] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[6]_i_1_n_0 ),
        .Q(sample_count[6]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[7] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[7]_i_1_n_0 ),
        .Q(sample_count[7]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \sample_count_reg[7]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\sample_count_reg[7]_i_2_n_0 ,\sample_count_reg[7]_i_2_n_1 ,\sample_count_reg[7]_i_2_n_2 ,\sample_count_reg[7]_i_2_n_3 ,\sample_count_reg[7]_i_2_n_4 ,\sample_count_reg[7]_i_2_n_5 ,\sample_count_reg[7]_i_2_n_6 ,\sample_count_reg[7]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,sample_count[3:0]}),
        .O(sample_count0[7:0]),
        .S({sample_count[7:4],\sample_count[7]_i_3_n_0 ,\sample_count[7]_i_4_n_0 ,\sample_count[7]_i_5_n_0 ,\sample_count[7]_i_6_n_0 }));
  FDRE \sample_count_reg[8] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[8]_i_1_n_0 ),
        .Q(sample_count[8]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
  FDRE \sample_count_reg[9] 
       (.C(aclk),
        .CE(\out_beat_count[31]_i_1_n_0 ),
        .D(\sample_count[9]_i_1_n_0 ),
        .Q(sample_count[9]),
        .R(\m_axis_tdata[511]_i_1_n_0 ));
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
