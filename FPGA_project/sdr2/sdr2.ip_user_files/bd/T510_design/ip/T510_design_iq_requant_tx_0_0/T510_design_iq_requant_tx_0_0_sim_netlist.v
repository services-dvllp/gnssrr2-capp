// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
// Date        : Sat Jul  4 14:00:42 2026
// Host        : DVLLP006 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Trivedi/2022p2/sdr2/sdr2.gen/sources_1/bd/T510_design/ip/T510_design_iq_requant_tx_0_0/T510_design_iq_requant_tx_0_0_sim_netlist.v
// Design      : T510_design_iq_requant_tx_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu47dr-ffve1156-2-i
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "T510_design_iq_requant_tx_0_0,iq_requant_tx,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "iq_requant_tx,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module T510_design_iq_requant_tx_0_0
   (aclk,
    aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    s_axis_tready,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tready,
    SCALE_SHIFT,
    LIMIT,
    BAND_DUAL,
    cnt_clr,
    clip_count);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXIS:M_AXIS, ASSOCIATED_RESET aresetn, FREQ_HZ 30720000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TDATA" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) input [255:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TVALID" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 S_AXIS TREADY" *) output s_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *) output [255:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *) input m_axis_tready;
  input [4:0]SCALE_SHIFT;
  input [13:0]LIMIT;
  input BAND_DUAL;
  input cnt_clr;
  output [31:0]clip_count;

  wire BAND_DUAL;
  wire [13:0]LIMIT;
  wire [4:0]SCALE_SHIFT;
  wire aclk;
  wire aresetn;
  wire [31:0]clip_count;
  wire cnt_clr;
  wire inst_n_0;
  wire inst_n_1;
  wire inst_n_10;
  wire inst_n_100;
  wire inst_n_101;
  wire inst_n_102;
  wire inst_n_103;
  wire inst_n_104;
  wire inst_n_105;
  wire inst_n_106;
  wire inst_n_107;
  wire inst_n_108;
  wire inst_n_109;
  wire inst_n_11;
  wire inst_n_110;
  wire inst_n_111;
  wire inst_n_112;
  wire inst_n_113;
  wire inst_n_114;
  wire inst_n_115;
  wire inst_n_116;
  wire inst_n_117;
  wire inst_n_118;
  wire inst_n_119;
  wire inst_n_12;
  wire inst_n_120;
  wire inst_n_121;
  wire inst_n_122;
  wire inst_n_123;
  wire inst_n_124;
  wire inst_n_125;
  wire inst_n_126;
  wire inst_n_127;
  wire inst_n_128;
  wire inst_n_129;
  wire inst_n_13;
  wire inst_n_130;
  wire inst_n_131;
  wire inst_n_132;
  wire inst_n_133;
  wire inst_n_134;
  wire inst_n_135;
  wire inst_n_136;
  wire inst_n_137;
  wire inst_n_138;
  wire inst_n_139;
  wire inst_n_14;
  wire inst_n_140;
  wire inst_n_141;
  wire inst_n_142;
  wire inst_n_143;
  wire inst_n_144;
  wire inst_n_145;
  wire inst_n_146;
  wire inst_n_147;
  wire inst_n_148;
  wire inst_n_149;
  wire inst_n_15;
  wire inst_n_150;
  wire inst_n_151;
  wire inst_n_152;
  wire inst_n_153;
  wire inst_n_154;
  wire inst_n_155;
  wire inst_n_156;
  wire inst_n_157;
  wire inst_n_158;
  wire inst_n_159;
  wire inst_n_16;
  wire inst_n_160;
  wire inst_n_161;
  wire inst_n_162;
  wire inst_n_163;
  wire inst_n_164;
  wire inst_n_165;
  wire inst_n_166;
  wire inst_n_167;
  wire inst_n_168;
  wire inst_n_169;
  wire inst_n_17;
  wire inst_n_170;
  wire inst_n_171;
  wire inst_n_172;
  wire inst_n_173;
  wire inst_n_174;
  wire inst_n_175;
  wire inst_n_176;
  wire inst_n_177;
  wire inst_n_178;
  wire inst_n_179;
  wire inst_n_18;
  wire inst_n_180;
  wire inst_n_181;
  wire inst_n_182;
  wire inst_n_183;
  wire inst_n_184;
  wire inst_n_185;
  wire inst_n_186;
  wire inst_n_187;
  wire inst_n_188;
  wire inst_n_189;
  wire inst_n_19;
  wire inst_n_190;
  wire inst_n_191;
  wire inst_n_192;
  wire inst_n_193;
  wire inst_n_194;
  wire inst_n_195;
  wire inst_n_196;
  wire inst_n_197;
  wire inst_n_198;
  wire inst_n_199;
  wire inst_n_2;
  wire inst_n_20;
  wire inst_n_200;
  wire inst_n_201;
  wire inst_n_202;
  wire inst_n_203;
  wire inst_n_204;
  wire inst_n_205;
  wire inst_n_206;
  wire inst_n_207;
  wire inst_n_208;
  wire inst_n_209;
  wire inst_n_21;
  wire inst_n_210;
  wire inst_n_211;
  wire inst_n_212;
  wire inst_n_213;
  wire inst_n_214;
  wire inst_n_215;
  wire inst_n_216;
  wire inst_n_217;
  wire inst_n_218;
  wire inst_n_219;
  wire inst_n_22;
  wire inst_n_220;
  wire inst_n_221;
  wire inst_n_222;
  wire inst_n_223;
  wire inst_n_224;
  wire inst_n_225;
  wire inst_n_226;
  wire inst_n_227;
  wire inst_n_228;
  wire inst_n_229;
  wire inst_n_23;
  wire inst_n_230;
  wire inst_n_231;
  wire inst_n_232;
  wire inst_n_233;
  wire inst_n_234;
  wire inst_n_235;
  wire inst_n_236;
  wire inst_n_237;
  wire inst_n_238;
  wire inst_n_239;
  wire inst_n_24;
  wire inst_n_240;
  wire inst_n_241;
  wire inst_n_242;
  wire inst_n_243;
  wire inst_n_244;
  wire inst_n_245;
  wire inst_n_246;
  wire inst_n_247;
  wire inst_n_248;
  wire inst_n_249;
  wire inst_n_25;
  wire inst_n_250;
  wire inst_n_251;
  wire inst_n_252;
  wire inst_n_253;
  wire inst_n_254;
  wire inst_n_255;
  wire inst_n_258;
  wire inst_n_259;
  wire inst_n_26;
  wire inst_n_260;
  wire inst_n_261;
  wire inst_n_262;
  wire inst_n_263;
  wire inst_n_266;
  wire inst_n_267;
  wire inst_n_268;
  wire inst_n_269;
  wire inst_n_27;
  wire inst_n_270;
  wire inst_n_271;
  wire inst_n_274;
  wire inst_n_275;
  wire inst_n_276;
  wire inst_n_277;
  wire inst_n_278;
  wire inst_n_279;
  wire inst_n_28;
  wire inst_n_282;
  wire inst_n_283;
  wire inst_n_284;
  wire inst_n_285;
  wire inst_n_286;
  wire inst_n_287;
  wire inst_n_288;
  wire inst_n_289;
  wire inst_n_29;
  wire inst_n_290;
  wire inst_n_291;
  wire inst_n_292;
  wire inst_n_293;
  wire inst_n_294;
  wire inst_n_295;
  wire inst_n_296;
  wire inst_n_297;
  wire inst_n_298;
  wire inst_n_299;
  wire inst_n_3;
  wire inst_n_30;
  wire inst_n_300;
  wire inst_n_301;
  wire inst_n_302;
  wire inst_n_303;
  wire inst_n_304;
  wire inst_n_305;
  wire inst_n_306;
  wire inst_n_307;
  wire inst_n_308;
  wire inst_n_309;
  wire inst_n_31;
  wire inst_n_32;
  wire inst_n_33;
  wire inst_n_34;
  wire inst_n_35;
  wire inst_n_36;
  wire inst_n_37;
  wire inst_n_38;
  wire inst_n_39;
  wire inst_n_4;
  wire inst_n_40;
  wire inst_n_41;
  wire inst_n_42;
  wire inst_n_43;
  wire inst_n_44;
  wire inst_n_45;
  wire inst_n_46;
  wire inst_n_47;
  wire inst_n_48;
  wire inst_n_49;
  wire inst_n_5;
  wire inst_n_50;
  wire inst_n_51;
  wire inst_n_52;
  wire inst_n_53;
  wire inst_n_54;
  wire inst_n_55;
  wire inst_n_56;
  wire inst_n_57;
  wire inst_n_58;
  wire inst_n_59;
  wire inst_n_6;
  wire inst_n_60;
  wire inst_n_61;
  wire inst_n_62;
  wire inst_n_63;
  wire inst_n_64;
  wire inst_n_65;
  wire inst_n_66;
  wire inst_n_67;
  wire inst_n_68;
  wire inst_n_69;
  wire inst_n_7;
  wire inst_n_70;
  wire inst_n_71;
  wire inst_n_72;
  wire inst_n_73;
  wire inst_n_74;
  wire inst_n_75;
  wire inst_n_76;
  wire inst_n_77;
  wire inst_n_78;
  wire inst_n_79;
  wire inst_n_8;
  wire inst_n_80;
  wire inst_n_81;
  wire inst_n_82;
  wire inst_n_83;
  wire inst_n_84;
  wire inst_n_85;
  wire inst_n_86;
  wire inst_n_87;
  wire inst_n_88;
  wire inst_n_89;
  wire inst_n_9;
  wire inst_n_90;
  wire inst_n_91;
  wire inst_n_92;
  wire inst_n_93;
  wire inst_n_94;
  wire inst_n_95;
  wire inst_n_96;
  wire inst_n_97;
  wire inst_n_98;
  wire inst_n_99;
  wire [255:0]m_axis_tdata;
  wire \m_axis_tdata[242]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[243]_INST_0_i_2_n_0 ;
  wire m_axis_tready;
  wire rcomp01;
  wire rcomp010_in;
  wire rcomp1;
  wire rcomp10_in;
  wire rcomp11;
  wire rcomp110_in;
  wire rcomp21;
  wire rcomp210_in;
  wire [255:0]s_axis_tdata;
  wire s_axis_tvalid;

  assign m_axis_tvalid = s_axis_tvalid;
  assign s_axis_tready = m_axis_tready;
  T510_design_iq_requant_tx_0_0_iq_requant_tx inst
       (.BAND_DUAL(BAND_DUAL),
        .CO(inst_n_254),
        .LIMIT(LIMIT),
        .\LIMIT[12]_0 (inst_n_45),
        .\LIMIT[12]_1 (inst_n_106),
        .\LIMIT[12]_2 (inst_n_167),
        .\LIMIT[12]_3 (inst_n_228),
        .\LIMIT[4]_0 (inst_n_252),
        .\LIMIT[9]_0 (inst_n_251),
        .LIMIT_11_sp_1(inst_n_13),
        .LIMIT_12_sp_1(inst_n_14),
        .LIMIT_3_sp_1(inst_n_5),
        .LIMIT_4_sp_1(inst_n_6),
        .LIMIT_6_sp_1(inst_n_253),
        .LIMIT_7_sp_1(inst_n_9),
        .LIMIT_8_sp_1(inst_n_10),
        .LIMIT_9_sp_1(inst_n_250),
        .SCALE_SHIFT(SCALE_SHIFT),
        .\SCALE_SHIFT[0]_0 (inst_n_2),
        .\SCALE_SHIFT[0]_1 (inst_n_3),
        .\SCALE_SHIFT[0]_10 (inst_n_22),
        .\SCALE_SHIFT[0]_100 (inst_n_158),
        .\SCALE_SHIFT[0]_101 (inst_n_159),
        .\SCALE_SHIFT[0]_102 (inst_n_160),
        .\SCALE_SHIFT[0]_103 (inst_n_161),
        .\SCALE_SHIFT[0]_104 (inst_n_162),
        .\SCALE_SHIFT[0]_105 (inst_n_163),
        .\SCALE_SHIFT[0]_106 (inst_n_170),
        .\SCALE_SHIFT[0]_107 (inst_n_171),
        .\SCALE_SHIFT[0]_108 (inst_n_172),
        .\SCALE_SHIFT[0]_109 (inst_n_174),
        .\SCALE_SHIFT[0]_11 (inst_n_23),
        .\SCALE_SHIFT[0]_110 (inst_n_175),
        .\SCALE_SHIFT[0]_111 (inst_n_176),
        .\SCALE_SHIFT[0]_112 (inst_n_177),
        .\SCALE_SHIFT[0]_113 (inst_n_178),
        .\SCALE_SHIFT[0]_114 (inst_n_179),
        .\SCALE_SHIFT[0]_115 (inst_n_180),
        .\SCALE_SHIFT[0]_116 (inst_n_186),
        .\SCALE_SHIFT[0]_117 (inst_n_187),
        .\SCALE_SHIFT[0]_118 (inst_n_188),
        .\SCALE_SHIFT[0]_119 (inst_n_190),
        .\SCALE_SHIFT[0]_12 (inst_n_24),
        .\SCALE_SHIFT[0]_120 (inst_n_191),
        .\SCALE_SHIFT[0]_121 (inst_n_192),
        .\SCALE_SHIFT[0]_122 (inst_n_193),
        .\SCALE_SHIFT[0]_123 (inst_n_194),
        .\SCALE_SHIFT[0]_124 (inst_n_195),
        .\SCALE_SHIFT[0]_125 (inst_n_196),
        .\SCALE_SHIFT[0]_126 (inst_n_200),
        .\SCALE_SHIFT[0]_127 (inst_n_201),
        .\SCALE_SHIFT[0]_128 (inst_n_202),
        .\SCALE_SHIFT[0]_129 (inst_n_204),
        .\SCALE_SHIFT[0]_13 (inst_n_25),
        .\SCALE_SHIFT[0]_130 (inst_n_205),
        .\SCALE_SHIFT[0]_131 (inst_n_206),
        .\SCALE_SHIFT[0]_132 (inst_n_207),
        .\SCALE_SHIFT[0]_133 (inst_n_208),
        .\SCALE_SHIFT[0]_134 (inst_n_209),
        .\SCALE_SHIFT[0]_135 (inst_n_210),
        .\SCALE_SHIFT[0]_136 (inst_n_214),
        .\SCALE_SHIFT[0]_137 (inst_n_215),
        .\SCALE_SHIFT[0]_138 (inst_n_216),
        .\SCALE_SHIFT[0]_139 (inst_n_218),
        .\SCALE_SHIFT[0]_14 (inst_n_26),
        .\SCALE_SHIFT[0]_140 (inst_n_219),
        .\SCALE_SHIFT[0]_141 (inst_n_220),
        .\SCALE_SHIFT[0]_142 (inst_n_221),
        .\SCALE_SHIFT[0]_143 (inst_n_222),
        .\SCALE_SHIFT[0]_144 (inst_n_223),
        .\SCALE_SHIFT[0]_145 (inst_n_224),
        .\SCALE_SHIFT[0]_146 (inst_n_231),
        .\SCALE_SHIFT[0]_147 (inst_n_232),
        .\SCALE_SHIFT[0]_148 (inst_n_233),
        .\SCALE_SHIFT[0]_149 (inst_n_235),
        .\SCALE_SHIFT[0]_15 (inst_n_27),
        .\SCALE_SHIFT[0]_150 (inst_n_236),
        .\SCALE_SHIFT[0]_151 (inst_n_237),
        .\SCALE_SHIFT[0]_152 (inst_n_238),
        .\SCALE_SHIFT[0]_153 (inst_n_239),
        .\SCALE_SHIFT[0]_154 (inst_n_240),
        .\SCALE_SHIFT[0]_155 (inst_n_241),
        .\SCALE_SHIFT[0]_156 (inst_n_247),
        .\SCALE_SHIFT[0]_157 (inst_n_248),
        .\SCALE_SHIFT[0]_158 (inst_n_249),
        .\SCALE_SHIFT[0]_159 (inst_n_255),
        .\SCALE_SHIFT[0]_16 (inst_n_31),
        .\SCALE_SHIFT[0]_160 (rcomp10_in),
        .\SCALE_SHIFT[0]_161 (rcomp1),
        .\SCALE_SHIFT[0]_162 (inst_n_258),
        .\SCALE_SHIFT[0]_163 (inst_n_259),
        .\SCALE_SHIFT[0]_164 (inst_n_260),
        .\SCALE_SHIFT[0]_165 (inst_n_261),
        .\SCALE_SHIFT[0]_166 (inst_n_262),
        .\SCALE_SHIFT[0]_167 (inst_n_263),
        .\SCALE_SHIFT[0]_168 (rcomp010_in),
        .\SCALE_SHIFT[0]_169 (rcomp01),
        .\SCALE_SHIFT[0]_17 (inst_n_32),
        .\SCALE_SHIFT[0]_170 (inst_n_266),
        .\SCALE_SHIFT[0]_171 (inst_n_267),
        .\SCALE_SHIFT[0]_172 (inst_n_268),
        .\SCALE_SHIFT[0]_173 (inst_n_269),
        .\SCALE_SHIFT[0]_174 (inst_n_270),
        .\SCALE_SHIFT[0]_175 (inst_n_271),
        .\SCALE_SHIFT[0]_176 (rcomp110_in),
        .\SCALE_SHIFT[0]_177 (rcomp11),
        .\SCALE_SHIFT[0]_178 (inst_n_274),
        .\SCALE_SHIFT[0]_179 (inst_n_275),
        .\SCALE_SHIFT[0]_18 (inst_n_33),
        .\SCALE_SHIFT[0]_180 (inst_n_276),
        .\SCALE_SHIFT[0]_181 (inst_n_277),
        .\SCALE_SHIFT[0]_182 (inst_n_278),
        .\SCALE_SHIFT[0]_183 (inst_n_279),
        .\SCALE_SHIFT[0]_184 (rcomp210_in),
        .\SCALE_SHIFT[0]_185 (rcomp21),
        .\SCALE_SHIFT[0]_186 (inst_n_282),
        .\SCALE_SHIFT[0]_187 (inst_n_283),
        .\SCALE_SHIFT[0]_188 (inst_n_284),
        .\SCALE_SHIFT[0]_189 (inst_n_285),
        .\SCALE_SHIFT[0]_19 (inst_n_35),
        .\SCALE_SHIFT[0]_2 (inst_n_4),
        .\SCALE_SHIFT[0]_20 (inst_n_36),
        .\SCALE_SHIFT[0]_21 (inst_n_37),
        .\SCALE_SHIFT[0]_22 (inst_n_38),
        .\SCALE_SHIFT[0]_23 (inst_n_39),
        .\SCALE_SHIFT[0]_24 (inst_n_40),
        .\SCALE_SHIFT[0]_25 (inst_n_41),
        .\SCALE_SHIFT[0]_26 (inst_n_48),
        .\SCALE_SHIFT[0]_27 (inst_n_49),
        .\SCALE_SHIFT[0]_28 (inst_n_50),
        .\SCALE_SHIFT[0]_29 (inst_n_52),
        .\SCALE_SHIFT[0]_3 (inst_n_7),
        .\SCALE_SHIFT[0]_30 (inst_n_53),
        .\SCALE_SHIFT[0]_31 (inst_n_54),
        .\SCALE_SHIFT[0]_32 (inst_n_55),
        .\SCALE_SHIFT[0]_33 (inst_n_56),
        .\SCALE_SHIFT[0]_34 (inst_n_57),
        .\SCALE_SHIFT[0]_35 (inst_n_58),
        .\SCALE_SHIFT[0]_36 (inst_n_64),
        .\SCALE_SHIFT[0]_37 (inst_n_65),
        .\SCALE_SHIFT[0]_38 (inst_n_66),
        .\SCALE_SHIFT[0]_39 (inst_n_68),
        .\SCALE_SHIFT[0]_4 (inst_n_8),
        .\SCALE_SHIFT[0]_40 (inst_n_69),
        .\SCALE_SHIFT[0]_41 (inst_n_70),
        .\SCALE_SHIFT[0]_42 (inst_n_71),
        .\SCALE_SHIFT[0]_43 (inst_n_72),
        .\SCALE_SHIFT[0]_44 (inst_n_73),
        .\SCALE_SHIFT[0]_45 (inst_n_74),
        .\SCALE_SHIFT[0]_46 (inst_n_78),
        .\SCALE_SHIFT[0]_47 (inst_n_79),
        .\SCALE_SHIFT[0]_48 (inst_n_80),
        .\SCALE_SHIFT[0]_49 (inst_n_82),
        .\SCALE_SHIFT[0]_5 (inst_n_11),
        .\SCALE_SHIFT[0]_50 (inst_n_83),
        .\SCALE_SHIFT[0]_51 (inst_n_84),
        .\SCALE_SHIFT[0]_52 (inst_n_85),
        .\SCALE_SHIFT[0]_53 (inst_n_86),
        .\SCALE_SHIFT[0]_54 (inst_n_87),
        .\SCALE_SHIFT[0]_55 (inst_n_88),
        .\SCALE_SHIFT[0]_56 (inst_n_92),
        .\SCALE_SHIFT[0]_57 (inst_n_93),
        .\SCALE_SHIFT[0]_58 (inst_n_94),
        .\SCALE_SHIFT[0]_59 (inst_n_96),
        .\SCALE_SHIFT[0]_6 (inst_n_17),
        .\SCALE_SHIFT[0]_60 (inst_n_97),
        .\SCALE_SHIFT[0]_61 (inst_n_98),
        .\SCALE_SHIFT[0]_62 (inst_n_99),
        .\SCALE_SHIFT[0]_63 (inst_n_100),
        .\SCALE_SHIFT[0]_64 (inst_n_101),
        .\SCALE_SHIFT[0]_65 (inst_n_102),
        .\SCALE_SHIFT[0]_66 (inst_n_109),
        .\SCALE_SHIFT[0]_67 (inst_n_110),
        .\SCALE_SHIFT[0]_68 (inst_n_111),
        .\SCALE_SHIFT[0]_69 (inst_n_113),
        .\SCALE_SHIFT[0]_7 (inst_n_18),
        .\SCALE_SHIFT[0]_70 (inst_n_114),
        .\SCALE_SHIFT[0]_71 (inst_n_115),
        .\SCALE_SHIFT[0]_72 (inst_n_116),
        .\SCALE_SHIFT[0]_73 (inst_n_117),
        .\SCALE_SHIFT[0]_74 (inst_n_118),
        .\SCALE_SHIFT[0]_75 (inst_n_119),
        .\SCALE_SHIFT[0]_76 (inst_n_125),
        .\SCALE_SHIFT[0]_77 (inst_n_126),
        .\SCALE_SHIFT[0]_78 (inst_n_127),
        .\SCALE_SHIFT[0]_79 (inst_n_129),
        .\SCALE_SHIFT[0]_8 (inst_n_19),
        .\SCALE_SHIFT[0]_80 (inst_n_130),
        .\SCALE_SHIFT[0]_81 (inst_n_131),
        .\SCALE_SHIFT[0]_82 (inst_n_132),
        .\SCALE_SHIFT[0]_83 (inst_n_133),
        .\SCALE_SHIFT[0]_84 (inst_n_134),
        .\SCALE_SHIFT[0]_85 (inst_n_135),
        .\SCALE_SHIFT[0]_86 (inst_n_139),
        .\SCALE_SHIFT[0]_87 (inst_n_140),
        .\SCALE_SHIFT[0]_88 (inst_n_141),
        .\SCALE_SHIFT[0]_89 (inst_n_143),
        .\SCALE_SHIFT[0]_9 (inst_n_21),
        .\SCALE_SHIFT[0]_90 (inst_n_144),
        .\SCALE_SHIFT[0]_91 (inst_n_145),
        .\SCALE_SHIFT[0]_92 (inst_n_146),
        .\SCALE_SHIFT[0]_93 (inst_n_147),
        .\SCALE_SHIFT[0]_94 (inst_n_148),
        .\SCALE_SHIFT[0]_95 (inst_n_149),
        .\SCALE_SHIFT[0]_96 (inst_n_153),
        .\SCALE_SHIFT[0]_97 (inst_n_154),
        .\SCALE_SHIFT[0]_98 (inst_n_155),
        .\SCALE_SHIFT[0]_99 (inst_n_157),
        .\SCALE_SHIFT[1]_0 (inst_n_12),
        .\SCALE_SHIFT[1]_1 (inst_n_15),
        .\SCALE_SHIFT[1]_10 (inst_n_44),
        .\SCALE_SHIFT[1]_100 (inst_n_307),
        .\SCALE_SHIFT[1]_101 (inst_n_308),
        .\SCALE_SHIFT[1]_102 (inst_n_309),
        .\SCALE_SHIFT[1]_11 (inst_n_46),
        .\SCALE_SHIFT[1]_12 (inst_n_47),
        .\SCALE_SHIFT[1]_13 (inst_n_51),
        .\SCALE_SHIFT[1]_14 (inst_n_59),
        .\SCALE_SHIFT[1]_15 (inst_n_60),
        .\SCALE_SHIFT[1]_16 (inst_n_61),
        .\SCALE_SHIFT[1]_17 (inst_n_62),
        .\SCALE_SHIFT[1]_18 (inst_n_63),
        .\SCALE_SHIFT[1]_19 (inst_n_67),
        .\SCALE_SHIFT[1]_2 (inst_n_16),
        .\SCALE_SHIFT[1]_20 (inst_n_75),
        .\SCALE_SHIFT[1]_21 (inst_n_76),
        .\SCALE_SHIFT[1]_22 (inst_n_77),
        .\SCALE_SHIFT[1]_23 (inst_n_81),
        .\SCALE_SHIFT[1]_24 (inst_n_89),
        .\SCALE_SHIFT[1]_25 (inst_n_90),
        .\SCALE_SHIFT[1]_26 (inst_n_91),
        .\SCALE_SHIFT[1]_27 (inst_n_95),
        .\SCALE_SHIFT[1]_28 (inst_n_103),
        .\SCALE_SHIFT[1]_29 (inst_n_104),
        .\SCALE_SHIFT[1]_3 (inst_n_20),
        .\SCALE_SHIFT[1]_30 (inst_n_105),
        .\SCALE_SHIFT[1]_31 (inst_n_107),
        .\SCALE_SHIFT[1]_32 (inst_n_108),
        .\SCALE_SHIFT[1]_33 (inst_n_112),
        .\SCALE_SHIFT[1]_34 (inst_n_120),
        .\SCALE_SHIFT[1]_35 (inst_n_121),
        .\SCALE_SHIFT[1]_36 (inst_n_122),
        .\SCALE_SHIFT[1]_37 (inst_n_123),
        .\SCALE_SHIFT[1]_38 (inst_n_124),
        .\SCALE_SHIFT[1]_39 (inst_n_128),
        .\SCALE_SHIFT[1]_4 (inst_n_28),
        .\SCALE_SHIFT[1]_40 (inst_n_136),
        .\SCALE_SHIFT[1]_41 (inst_n_137),
        .\SCALE_SHIFT[1]_42 (inst_n_138),
        .\SCALE_SHIFT[1]_43 (inst_n_142),
        .\SCALE_SHIFT[1]_44 (inst_n_150),
        .\SCALE_SHIFT[1]_45 (inst_n_151),
        .\SCALE_SHIFT[1]_46 (inst_n_152),
        .\SCALE_SHIFT[1]_47 (inst_n_156),
        .\SCALE_SHIFT[1]_48 (inst_n_164),
        .\SCALE_SHIFT[1]_49 (inst_n_165),
        .\SCALE_SHIFT[1]_5 (inst_n_29),
        .\SCALE_SHIFT[1]_50 (inst_n_166),
        .\SCALE_SHIFT[1]_51 (inst_n_168),
        .\SCALE_SHIFT[1]_52 (inst_n_169),
        .\SCALE_SHIFT[1]_53 (inst_n_173),
        .\SCALE_SHIFT[1]_54 (inst_n_181),
        .\SCALE_SHIFT[1]_55 (inst_n_182),
        .\SCALE_SHIFT[1]_56 (inst_n_183),
        .\SCALE_SHIFT[1]_57 (inst_n_184),
        .\SCALE_SHIFT[1]_58 (inst_n_185),
        .\SCALE_SHIFT[1]_59 (inst_n_189),
        .\SCALE_SHIFT[1]_6 (inst_n_30),
        .\SCALE_SHIFT[1]_60 (inst_n_197),
        .\SCALE_SHIFT[1]_61 (inst_n_198),
        .\SCALE_SHIFT[1]_62 (inst_n_199),
        .\SCALE_SHIFT[1]_63 (inst_n_203),
        .\SCALE_SHIFT[1]_64 (inst_n_211),
        .\SCALE_SHIFT[1]_65 (inst_n_212),
        .\SCALE_SHIFT[1]_66 (inst_n_213),
        .\SCALE_SHIFT[1]_67 (inst_n_217),
        .\SCALE_SHIFT[1]_68 (inst_n_225),
        .\SCALE_SHIFT[1]_69 (inst_n_226),
        .\SCALE_SHIFT[1]_7 (inst_n_34),
        .\SCALE_SHIFT[1]_70 (inst_n_227),
        .\SCALE_SHIFT[1]_71 (inst_n_229),
        .\SCALE_SHIFT[1]_72 (inst_n_230),
        .\SCALE_SHIFT[1]_73 (inst_n_234),
        .\SCALE_SHIFT[1]_74 (inst_n_242),
        .\SCALE_SHIFT[1]_75 (inst_n_243),
        .\SCALE_SHIFT[1]_76 (inst_n_244),
        .\SCALE_SHIFT[1]_77 (inst_n_245),
        .\SCALE_SHIFT[1]_78 (inst_n_246),
        .\SCALE_SHIFT[1]_79 (inst_n_286),
        .\SCALE_SHIFT[1]_8 (inst_n_42),
        .\SCALE_SHIFT[1]_80 (inst_n_287),
        .\SCALE_SHIFT[1]_81 (inst_n_288),
        .\SCALE_SHIFT[1]_82 (inst_n_289),
        .\SCALE_SHIFT[1]_83 (inst_n_290),
        .\SCALE_SHIFT[1]_84 (inst_n_291),
        .\SCALE_SHIFT[1]_85 (inst_n_292),
        .\SCALE_SHIFT[1]_86 (inst_n_293),
        .\SCALE_SHIFT[1]_87 (inst_n_294),
        .\SCALE_SHIFT[1]_88 (inst_n_295),
        .\SCALE_SHIFT[1]_89 (inst_n_296),
        .\SCALE_SHIFT[1]_9 (inst_n_43),
        .\SCALE_SHIFT[1]_90 (inst_n_297),
        .\SCALE_SHIFT[1]_91 (inst_n_298),
        .\SCALE_SHIFT[1]_92 (inst_n_299),
        .\SCALE_SHIFT[1]_93 (inst_n_300),
        .\SCALE_SHIFT[1]_94 (inst_n_301),
        .\SCALE_SHIFT[1]_95 (inst_n_302),
        .\SCALE_SHIFT[1]_96 (inst_n_303),
        .\SCALE_SHIFT[1]_97 (inst_n_304),
        .\SCALE_SHIFT[1]_98 (inst_n_305),
        .\SCALE_SHIFT[1]_99 (inst_n_306),
        .SCALE_SHIFT_0_sp_1(inst_n_1),
        .SCALE_SHIFT_1_sp_1(inst_n_0),
        .aclk(aclk),
        .aresetn(aresetn),
        .clip_count(clip_count),
        .cnt_clr(cnt_clr),
        .m_axis_tready(m_axis_tready),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \m_axis_tdata[0]_INST_0 
       (.I0(rcomp10_in),
        .I1(LIMIT[0]),
        .I2(rcomp1),
        .I3(inst_n_0),
        .O(m_axis_tdata[0]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[100]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_99),
        .I2(inst_n_267),
        .I3(inst_n_5),
        .I4(inst_n_266),
        .I5(LIMIT[4]),
        .O(m_axis_tdata[100]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[101]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_100),
        .I2(inst_n_267),
        .I3(inst_n_6),
        .I4(inst_n_266),
        .I5(LIMIT[5]),
        .O(m_axis_tdata[101]));
  LUT6 #(
    .INIT(64'hC0C0C0C09090F000)) 
    \m_axis_tdata[102]_INST_0 
       (.I0(inst_n_252),
        .I1(LIMIT[6]),
        .I2(BAND_DUAL),
        .I3(inst_n_108),
        .I4(inst_n_267),
        .I5(inst_n_266),
        .O(m_axis_tdata[102]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[103]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_109),
        .I2(inst_n_267),
        .I3(inst_n_253),
        .I4(inst_n_266),
        .I5(LIMIT[7]),
        .O(m_axis_tdata[103]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[104]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_101),
        .I2(inst_n_267),
        .I3(inst_n_9),
        .I4(inst_n_266),
        .I5(LIMIT[8]),
        .O(m_axis_tdata[104]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[105]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_102),
        .I2(inst_n_267),
        .I3(inst_n_10),
        .I4(inst_n_266),
        .I5(LIMIT[9]),
        .O(m_axis_tdata[105]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[106]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_110),
        .I2(inst_n_267),
        .I3(inst_n_251),
        .I4(inst_n_266),
        .I5(LIMIT[10]),
        .O(m_axis_tdata[106]));
  LUT6 #(
    .INIT(64'hC0C0C0C09090F000)) 
    \m_axis_tdata[107]_INST_0 
       (.I0(inst_n_250),
        .I1(LIMIT[11]),
        .I2(BAND_DUAL),
        .I3(inst_n_111),
        .I4(inst_n_267),
        .I5(inst_n_266),
        .O(m_axis_tdata[107]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[108]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_103),
        .I2(inst_n_267),
        .I3(inst_n_13),
        .I4(inst_n_266),
        .I5(LIMIT[12]),
        .O(m_axis_tdata[108]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[109]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_104),
        .I2(inst_n_267),
        .I3(inst_n_14),
        .I4(inst_n_266),
        .I5(LIMIT[13]),
        .O(m_axis_tdata[109]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[10]_INST_0 
       (.I0(LIMIT[10]),
        .I1(rcomp10_in),
        .I2(inst_n_251),
        .I3(rcomp1),
        .I4(inst_n_18),
        .O(m_axis_tdata[10]));
  LUT5 #(
    .INIT(32'h02220200)) 
    \m_axis_tdata[110]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_266),
        .I2(inst_n_106),
        .I3(inst_n_267),
        .I4(inst_n_105),
        .O(m_axis_tdata[110]));
  LUT5 #(
    .INIT(32'h02220200)) 
    \m_axis_tdata[111]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_266),
        .I2(inst_n_106),
        .I3(inst_n_267),
        .I4(inst_n_107),
        .O(m_axis_tdata[111]));
  LUT5 #(
    .INIT(32'hAA00A808)) 
    \m_axis_tdata[112]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_112),
        .I2(inst_n_262),
        .I3(LIMIT[0]),
        .I4(inst_n_263),
        .O(m_axis_tdata[112]));
  LUT6 #(
    .INIT(64'hAAAA000008A8A808)) 
    \m_axis_tdata[113]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_113),
        .I2(inst_n_262),
        .I3(LIMIT[0]),
        .I4(LIMIT[1]),
        .I5(inst_n_263),
        .O(m_axis_tdata[113]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[114]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_114),
        .I2(inst_n_262),
        .I3(\m_axis_tdata[242]_INST_0_i_2_n_0 ),
        .I4(inst_n_263),
        .I5(LIMIT[2]),
        .O(m_axis_tdata[114]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[115]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_115),
        .I2(inst_n_262),
        .I3(\m_axis_tdata[243]_INST_0_i_2_n_0 ),
        .I4(inst_n_263),
        .I5(LIMIT[3]),
        .O(m_axis_tdata[115]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[116]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_116),
        .I2(inst_n_262),
        .I3(inst_n_5),
        .I4(inst_n_263),
        .I5(LIMIT[4]),
        .O(m_axis_tdata[116]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[117]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_117),
        .I2(inst_n_262),
        .I3(inst_n_6),
        .I4(inst_n_263),
        .I5(LIMIT[5]),
        .O(m_axis_tdata[117]));
  LUT6 #(
    .INIT(64'hC0C0C0C09090F000)) 
    \m_axis_tdata[118]_INST_0 
       (.I0(inst_n_252),
        .I1(LIMIT[6]),
        .I2(BAND_DUAL),
        .I3(inst_n_124),
        .I4(inst_n_262),
        .I5(inst_n_263),
        .O(m_axis_tdata[118]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[119]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_125),
        .I2(inst_n_262),
        .I3(inst_n_253),
        .I4(inst_n_263),
        .I5(LIMIT[7]),
        .O(m_axis_tdata[119]));
  LUT5 #(
    .INIT(32'hC9CFC9C0)) 
    \m_axis_tdata[11]_INST_0 
       (.I0(inst_n_250),
        .I1(LIMIT[11]),
        .I2(rcomp10_in),
        .I3(rcomp1),
        .I4(inst_n_19),
        .O(m_axis_tdata[11]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[120]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_118),
        .I2(inst_n_262),
        .I3(inst_n_9),
        .I4(inst_n_263),
        .I5(LIMIT[8]),
        .O(m_axis_tdata[120]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[121]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_119),
        .I2(inst_n_262),
        .I3(inst_n_10),
        .I4(inst_n_263),
        .I5(LIMIT[9]),
        .O(m_axis_tdata[121]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[122]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_126),
        .I2(inst_n_262),
        .I3(inst_n_251),
        .I4(inst_n_263),
        .I5(LIMIT[10]),
        .O(m_axis_tdata[122]));
  LUT6 #(
    .INIT(64'hC0C0C0C09090F000)) 
    \m_axis_tdata[123]_INST_0 
       (.I0(inst_n_250),
        .I1(LIMIT[11]),
        .I2(BAND_DUAL),
        .I3(inst_n_127),
        .I4(inst_n_262),
        .I5(inst_n_263),
        .O(m_axis_tdata[123]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[124]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_120),
        .I2(inst_n_262),
        .I3(inst_n_13),
        .I4(inst_n_263),
        .I5(LIMIT[12]),
        .O(m_axis_tdata[124]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[125]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_121),
        .I2(inst_n_262),
        .I3(inst_n_14),
        .I4(inst_n_263),
        .I5(LIMIT[13]),
        .O(m_axis_tdata[125]));
  LUT5 #(
    .INIT(32'h02220200)) 
    \m_axis_tdata[126]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_263),
        .I2(inst_n_106),
        .I3(inst_n_262),
        .I4(inst_n_122),
        .O(m_axis_tdata[126]));
  LUT5 #(
    .INIT(32'h02220200)) 
    \m_axis_tdata[127]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_263),
        .I2(inst_n_106),
        .I3(inst_n_262),
        .I4(inst_n_123),
        .O(m_axis_tdata[127]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \m_axis_tdata[128]_INST_0 
       (.I0(rcomp110_in),
        .I1(LIMIT[0]),
        .I2(rcomp11),
        .I3(inst_n_128),
        .O(m_axis_tdata[128]));
  LUT5 #(
    .INIT(32'h9CDD9C88)) 
    \m_axis_tdata[129]_INST_0 
       (.I0(rcomp110_in),
        .I1(LIMIT[1]),
        .I2(LIMIT[0]),
        .I3(rcomp11),
        .I4(inst_n_129),
        .O(m_axis_tdata[129]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[12]_INST_0 
       (.I0(LIMIT[12]),
        .I1(rcomp10_in),
        .I2(inst_n_13),
        .I3(rcomp1),
        .I4(inst_n_12),
        .O(m_axis_tdata[12]));
  LUT6 #(
    .INIT(64'h999CDDDD999C8888)) 
    \m_axis_tdata[130]_INST_0 
       (.I0(rcomp110_in),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(rcomp11),
        .I5(inst_n_130),
        .O(m_axis_tdata[130]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[131]_INST_0 
       (.I0(LIMIT[3]),
        .I1(rcomp110_in),
        .I2(\m_axis_tdata[243]_INST_0_i_2_n_0 ),
        .I3(rcomp11),
        .I4(inst_n_131),
        .O(m_axis_tdata[131]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[132]_INST_0 
       (.I0(LIMIT[4]),
        .I1(rcomp110_in),
        .I2(inst_n_5),
        .I3(rcomp11),
        .I4(inst_n_132),
        .O(m_axis_tdata[132]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[133]_INST_0 
       (.I0(LIMIT[5]),
        .I1(rcomp110_in),
        .I2(inst_n_6),
        .I3(rcomp11),
        .I4(inst_n_133),
        .O(m_axis_tdata[133]));
  LUT5 #(
    .INIT(32'hC9CFC9C0)) 
    \m_axis_tdata[134]_INST_0 
       (.I0(inst_n_252),
        .I1(LIMIT[6]),
        .I2(rcomp110_in),
        .I3(rcomp11),
        .I4(inst_n_138),
        .O(m_axis_tdata[134]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[135]_INST_0 
       (.I0(LIMIT[7]),
        .I1(rcomp110_in),
        .I2(inst_n_253),
        .I3(rcomp11),
        .I4(inst_n_139),
        .O(m_axis_tdata[135]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[136]_INST_0 
       (.I0(LIMIT[8]),
        .I1(rcomp110_in),
        .I2(inst_n_9),
        .I3(rcomp11),
        .I4(inst_n_134),
        .O(m_axis_tdata[136]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[137]_INST_0 
       (.I0(LIMIT[9]),
        .I1(rcomp110_in),
        .I2(inst_n_10),
        .I3(rcomp11),
        .I4(inst_n_135),
        .O(m_axis_tdata[137]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[138]_INST_0 
       (.I0(LIMIT[10]),
        .I1(rcomp110_in),
        .I2(inst_n_251),
        .I3(rcomp11),
        .I4(inst_n_140),
        .O(m_axis_tdata[138]));
  LUT5 #(
    .INIT(32'hC9CFC9C0)) 
    \m_axis_tdata[139]_INST_0 
       (.I0(inst_n_250),
        .I1(LIMIT[11]),
        .I2(rcomp110_in),
        .I3(rcomp11),
        .I4(inst_n_141),
        .O(m_axis_tdata[139]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[13]_INST_0 
       (.I0(LIMIT[13]),
        .I1(rcomp10_in),
        .I2(inst_n_14),
        .I3(rcomp1),
        .I4(inst_n_15),
        .O(m_axis_tdata[13]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[140]_INST_0 
       (.I0(LIMIT[12]),
        .I1(rcomp110_in),
        .I2(inst_n_13),
        .I3(rcomp11),
        .I4(inst_n_136),
        .O(m_axis_tdata[140]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[141]_INST_0 
       (.I0(LIMIT[13]),
        .I1(rcomp110_in),
        .I2(inst_n_14),
        .I3(rcomp11),
        .I4(inst_n_137),
        .O(m_axis_tdata[141]));
  LUT6 #(
    .INIT(64'h0000000000B8FFB8)) 
    \m_axis_tdata[142]_INST_0 
       (.I0(inst_n_300),
        .I1(SCALE_SHIFT[0]),
        .I2(inst_n_298),
        .I3(rcomp11),
        .I4(inst_n_167),
        .I5(rcomp110_in),
        .O(m_axis_tdata[142]));
  LUT6 #(
    .INIT(64'h0000000000B8FFB8)) 
    \m_axis_tdata[143]_INST_0 
       (.I0(inst_n_298),
        .I1(SCALE_SHIFT[0]),
        .I2(inst_n_299),
        .I3(rcomp11),
        .I4(inst_n_167),
        .I5(rcomp110_in),
        .O(m_axis_tdata[143]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \m_axis_tdata[144]_INST_0 
       (.I0(inst_n_277),
        .I1(LIMIT[0]),
        .I2(inst_n_276),
        .I3(inst_n_142),
        .O(m_axis_tdata[144]));
  LUT5 #(
    .INIT(32'h9CDD9C88)) 
    \m_axis_tdata[145]_INST_0 
       (.I0(inst_n_277),
        .I1(LIMIT[1]),
        .I2(LIMIT[0]),
        .I3(inst_n_276),
        .I4(inst_n_143),
        .O(m_axis_tdata[145]));
  LUT6 #(
    .INIT(64'h999CDDDD999C8888)) 
    \m_axis_tdata[146]_INST_0 
       (.I0(inst_n_277),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(inst_n_276),
        .I5(inst_n_144),
        .O(m_axis_tdata[146]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[147]_INST_0 
       (.I0(LIMIT[3]),
        .I1(inst_n_277),
        .I2(\m_axis_tdata[243]_INST_0_i_2_n_0 ),
        .I3(inst_n_276),
        .I4(inst_n_145),
        .O(m_axis_tdata[147]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[148]_INST_0 
       (.I0(LIMIT[4]),
        .I1(inst_n_277),
        .I2(inst_n_5),
        .I3(inst_n_276),
        .I4(inst_n_146),
        .O(m_axis_tdata[148]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[149]_INST_0 
       (.I0(LIMIT[5]),
        .I1(inst_n_277),
        .I2(inst_n_6),
        .I3(inst_n_276),
        .I4(inst_n_147),
        .O(m_axis_tdata[149]));
  LUT6 #(
    .INIT(64'h0000000000B8FFB8)) 
    \m_axis_tdata[14]_INST_0 
       (.I0(inst_n_288),
        .I1(SCALE_SHIFT[0]),
        .I2(inst_n_286),
        .I3(rcomp1),
        .I4(inst_n_45),
        .I5(rcomp10_in),
        .O(m_axis_tdata[14]));
  LUT5 #(
    .INIT(32'hC9CFC9C0)) 
    \m_axis_tdata[150]_INST_0 
       (.I0(inst_n_252),
        .I1(LIMIT[6]),
        .I2(inst_n_277),
        .I3(inst_n_276),
        .I4(inst_n_152),
        .O(m_axis_tdata[150]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[151]_INST_0 
       (.I0(LIMIT[7]),
        .I1(inst_n_277),
        .I2(inst_n_253),
        .I3(inst_n_276),
        .I4(inst_n_153),
        .O(m_axis_tdata[151]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[152]_INST_0 
       (.I0(LIMIT[8]),
        .I1(inst_n_277),
        .I2(inst_n_9),
        .I3(inst_n_276),
        .I4(inst_n_148),
        .O(m_axis_tdata[152]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[153]_INST_0 
       (.I0(LIMIT[9]),
        .I1(inst_n_277),
        .I2(inst_n_10),
        .I3(inst_n_276),
        .I4(inst_n_149),
        .O(m_axis_tdata[153]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[154]_INST_0 
       (.I0(LIMIT[10]),
        .I1(inst_n_277),
        .I2(inst_n_251),
        .I3(inst_n_276),
        .I4(inst_n_154),
        .O(m_axis_tdata[154]));
  LUT5 #(
    .INIT(32'hC9CFC9C0)) 
    \m_axis_tdata[155]_INST_0 
       (.I0(inst_n_250),
        .I1(LIMIT[11]),
        .I2(inst_n_277),
        .I3(inst_n_276),
        .I4(inst_n_155),
        .O(m_axis_tdata[155]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[156]_INST_0 
       (.I0(LIMIT[12]),
        .I1(inst_n_277),
        .I2(inst_n_13),
        .I3(inst_n_276),
        .I4(inst_n_150),
        .O(m_axis_tdata[156]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[157]_INST_0 
       (.I0(LIMIT[13]),
        .I1(inst_n_277),
        .I2(inst_n_14),
        .I3(inst_n_276),
        .I4(inst_n_151),
        .O(m_axis_tdata[157]));
  LUT6 #(
    .INIT(64'h0000000000B8FFB8)) 
    \m_axis_tdata[158]_INST_0 
       (.I0(inst_n_303),
        .I1(SCALE_SHIFT[0]),
        .I2(inst_n_301),
        .I3(inst_n_276),
        .I4(inst_n_167),
        .I5(inst_n_277),
        .O(m_axis_tdata[158]));
  LUT6 #(
    .INIT(64'h0000000000B8FFB8)) 
    \m_axis_tdata[159]_INST_0 
       (.I0(inst_n_301),
        .I1(SCALE_SHIFT[0]),
        .I2(inst_n_302),
        .I3(inst_n_276),
        .I4(inst_n_167),
        .I5(inst_n_277),
        .O(m_axis_tdata[159]));
  LUT6 #(
    .INIT(64'h0000000000B8FFB8)) 
    \m_axis_tdata[15]_INST_0 
       (.I0(inst_n_286),
        .I1(SCALE_SHIFT[0]),
        .I2(inst_n_287),
        .I3(rcomp1),
        .I4(inst_n_45),
        .I5(rcomp10_in),
        .O(m_axis_tdata[15]));
  LUT5 #(
    .INIT(32'hAA00A808)) 
    \m_axis_tdata[160]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_156),
        .I2(inst_n_275),
        .I3(LIMIT[0]),
        .I4(inst_n_274),
        .O(m_axis_tdata[160]));
  LUT6 #(
    .INIT(64'hAAAA000008A8A808)) 
    \m_axis_tdata[161]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_157),
        .I2(inst_n_275),
        .I3(LIMIT[0]),
        .I4(LIMIT[1]),
        .I5(inst_n_274),
        .O(m_axis_tdata[161]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[162]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_158),
        .I2(inst_n_275),
        .I3(\m_axis_tdata[242]_INST_0_i_2_n_0 ),
        .I4(inst_n_274),
        .I5(LIMIT[2]),
        .O(m_axis_tdata[162]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[163]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_159),
        .I2(inst_n_275),
        .I3(\m_axis_tdata[243]_INST_0_i_2_n_0 ),
        .I4(inst_n_274),
        .I5(LIMIT[3]),
        .O(m_axis_tdata[163]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[164]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_160),
        .I2(inst_n_275),
        .I3(inst_n_5),
        .I4(inst_n_274),
        .I5(LIMIT[4]),
        .O(m_axis_tdata[164]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[165]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_161),
        .I2(inst_n_275),
        .I3(inst_n_6),
        .I4(inst_n_274),
        .I5(LIMIT[5]),
        .O(m_axis_tdata[165]));
  LUT6 #(
    .INIT(64'hC0C0C0C09090F000)) 
    \m_axis_tdata[166]_INST_0 
       (.I0(inst_n_252),
        .I1(LIMIT[6]),
        .I2(BAND_DUAL),
        .I3(inst_n_169),
        .I4(inst_n_275),
        .I5(inst_n_274),
        .O(m_axis_tdata[166]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[167]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_170),
        .I2(inst_n_275),
        .I3(inst_n_253),
        .I4(inst_n_274),
        .I5(LIMIT[7]),
        .O(m_axis_tdata[167]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[168]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_162),
        .I2(inst_n_275),
        .I3(inst_n_9),
        .I4(inst_n_274),
        .I5(LIMIT[8]),
        .O(m_axis_tdata[168]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[169]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_163),
        .I2(inst_n_275),
        .I3(inst_n_10),
        .I4(inst_n_274),
        .I5(LIMIT[9]),
        .O(m_axis_tdata[169]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \m_axis_tdata[16]_INST_0 
       (.I0(inst_n_261),
        .I1(LIMIT[0]),
        .I2(inst_n_260),
        .I3(inst_n_20),
        .O(m_axis_tdata[16]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[170]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_171),
        .I2(inst_n_275),
        .I3(inst_n_251),
        .I4(inst_n_274),
        .I5(LIMIT[10]),
        .O(m_axis_tdata[170]));
  LUT6 #(
    .INIT(64'hC0C0C0C09090F000)) 
    \m_axis_tdata[171]_INST_0 
       (.I0(inst_n_250),
        .I1(LIMIT[11]),
        .I2(BAND_DUAL),
        .I3(inst_n_172),
        .I4(inst_n_275),
        .I5(inst_n_274),
        .O(m_axis_tdata[171]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[172]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_164),
        .I2(inst_n_275),
        .I3(inst_n_13),
        .I4(inst_n_274),
        .I5(LIMIT[12]),
        .O(m_axis_tdata[172]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[173]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_165),
        .I2(inst_n_275),
        .I3(inst_n_14),
        .I4(inst_n_274),
        .I5(LIMIT[13]),
        .O(m_axis_tdata[173]));
  LUT5 #(
    .INIT(32'h02220200)) 
    \m_axis_tdata[174]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_274),
        .I2(inst_n_167),
        .I3(inst_n_275),
        .I4(inst_n_166),
        .O(m_axis_tdata[174]));
  LUT5 #(
    .INIT(32'h02220200)) 
    \m_axis_tdata[175]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_274),
        .I2(inst_n_167),
        .I3(inst_n_275),
        .I4(inst_n_168),
        .O(m_axis_tdata[175]));
  LUT5 #(
    .INIT(32'hAA00A808)) 
    \m_axis_tdata[176]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_173),
        .I2(inst_n_270),
        .I3(LIMIT[0]),
        .I4(inst_n_271),
        .O(m_axis_tdata[176]));
  LUT6 #(
    .INIT(64'hAAAA000008A8A808)) 
    \m_axis_tdata[177]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_174),
        .I2(inst_n_270),
        .I3(LIMIT[0]),
        .I4(LIMIT[1]),
        .I5(inst_n_271),
        .O(m_axis_tdata[177]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[178]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_175),
        .I2(inst_n_270),
        .I3(\m_axis_tdata[242]_INST_0_i_2_n_0 ),
        .I4(inst_n_271),
        .I5(LIMIT[2]),
        .O(m_axis_tdata[178]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[179]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_176),
        .I2(inst_n_270),
        .I3(\m_axis_tdata[243]_INST_0_i_2_n_0 ),
        .I4(inst_n_271),
        .I5(LIMIT[3]),
        .O(m_axis_tdata[179]));
  LUT5 #(
    .INIT(32'h9CDD9C88)) 
    \m_axis_tdata[17]_INST_0 
       (.I0(inst_n_261),
        .I1(LIMIT[1]),
        .I2(LIMIT[0]),
        .I3(inst_n_260),
        .I4(inst_n_21),
        .O(m_axis_tdata[17]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[180]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_177),
        .I2(inst_n_270),
        .I3(inst_n_5),
        .I4(inst_n_271),
        .I5(LIMIT[4]),
        .O(m_axis_tdata[180]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[181]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_178),
        .I2(inst_n_270),
        .I3(inst_n_6),
        .I4(inst_n_271),
        .I5(LIMIT[5]),
        .O(m_axis_tdata[181]));
  LUT6 #(
    .INIT(64'hC0C0C0C09090F000)) 
    \m_axis_tdata[182]_INST_0 
       (.I0(inst_n_252),
        .I1(LIMIT[6]),
        .I2(BAND_DUAL),
        .I3(inst_n_185),
        .I4(inst_n_270),
        .I5(inst_n_271),
        .O(m_axis_tdata[182]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[183]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_186),
        .I2(inst_n_270),
        .I3(inst_n_253),
        .I4(inst_n_271),
        .I5(LIMIT[7]),
        .O(m_axis_tdata[183]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[184]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_179),
        .I2(inst_n_270),
        .I3(inst_n_9),
        .I4(inst_n_271),
        .I5(LIMIT[8]),
        .O(m_axis_tdata[184]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[185]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_180),
        .I2(inst_n_270),
        .I3(inst_n_10),
        .I4(inst_n_271),
        .I5(LIMIT[9]),
        .O(m_axis_tdata[185]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[186]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_187),
        .I2(inst_n_270),
        .I3(inst_n_251),
        .I4(inst_n_271),
        .I5(LIMIT[10]),
        .O(m_axis_tdata[186]));
  LUT6 #(
    .INIT(64'hC0C0C0C09090F000)) 
    \m_axis_tdata[187]_INST_0 
       (.I0(inst_n_250),
        .I1(LIMIT[11]),
        .I2(BAND_DUAL),
        .I3(inst_n_188),
        .I4(inst_n_270),
        .I5(inst_n_271),
        .O(m_axis_tdata[187]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[188]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_181),
        .I2(inst_n_270),
        .I3(inst_n_13),
        .I4(inst_n_271),
        .I5(LIMIT[12]),
        .O(m_axis_tdata[188]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[189]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_182),
        .I2(inst_n_270),
        .I3(inst_n_14),
        .I4(inst_n_271),
        .I5(LIMIT[13]),
        .O(m_axis_tdata[189]));
  LUT6 #(
    .INIT(64'h999CDDDD999C8888)) 
    \m_axis_tdata[18]_INST_0 
       (.I0(inst_n_261),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(inst_n_260),
        .I5(inst_n_22),
        .O(m_axis_tdata[18]));
  LUT5 #(
    .INIT(32'h02220200)) 
    \m_axis_tdata[190]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_271),
        .I2(inst_n_167),
        .I3(inst_n_270),
        .I4(inst_n_183),
        .O(m_axis_tdata[190]));
  LUT5 #(
    .INIT(32'h02220200)) 
    \m_axis_tdata[191]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_271),
        .I2(inst_n_167),
        .I3(inst_n_270),
        .I4(inst_n_184),
        .O(m_axis_tdata[191]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \m_axis_tdata[192]_INST_0 
       (.I0(rcomp210_in),
        .I1(LIMIT[0]),
        .I2(rcomp21),
        .I3(inst_n_189),
        .O(m_axis_tdata[192]));
  LUT5 #(
    .INIT(32'h9CDD9C88)) 
    \m_axis_tdata[193]_INST_0 
       (.I0(rcomp210_in),
        .I1(LIMIT[1]),
        .I2(LIMIT[0]),
        .I3(rcomp21),
        .I4(inst_n_190),
        .O(m_axis_tdata[193]));
  LUT6 #(
    .INIT(64'h999CDDDD999C8888)) 
    \m_axis_tdata[194]_INST_0 
       (.I0(rcomp210_in),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(rcomp21),
        .I5(inst_n_191),
        .O(m_axis_tdata[194]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[195]_INST_0 
       (.I0(LIMIT[3]),
        .I1(rcomp210_in),
        .I2(\m_axis_tdata[243]_INST_0_i_2_n_0 ),
        .I3(rcomp21),
        .I4(inst_n_192),
        .O(m_axis_tdata[195]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[196]_INST_0 
       (.I0(LIMIT[4]),
        .I1(rcomp210_in),
        .I2(inst_n_5),
        .I3(rcomp21),
        .I4(inst_n_193),
        .O(m_axis_tdata[196]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[197]_INST_0 
       (.I0(LIMIT[5]),
        .I1(rcomp210_in),
        .I2(inst_n_6),
        .I3(rcomp21),
        .I4(inst_n_194),
        .O(m_axis_tdata[197]));
  LUT5 #(
    .INIT(32'hC9CFC9C0)) 
    \m_axis_tdata[198]_INST_0 
       (.I0(inst_n_252),
        .I1(LIMIT[6]),
        .I2(rcomp210_in),
        .I3(rcomp21),
        .I4(inst_n_199),
        .O(m_axis_tdata[198]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[199]_INST_0 
       (.I0(LIMIT[7]),
        .I1(rcomp210_in),
        .I2(inst_n_253),
        .I3(rcomp21),
        .I4(inst_n_200),
        .O(m_axis_tdata[199]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[19]_INST_0 
       (.I0(LIMIT[3]),
        .I1(inst_n_261),
        .I2(\m_axis_tdata[243]_INST_0_i_2_n_0 ),
        .I3(inst_n_260),
        .I4(inst_n_23),
        .O(m_axis_tdata[19]));
  LUT5 #(
    .INIT(32'h9CDD9C88)) 
    \m_axis_tdata[1]_INST_0 
       (.I0(rcomp10_in),
        .I1(LIMIT[1]),
        .I2(LIMIT[0]),
        .I3(rcomp1),
        .I4(inst_n_1),
        .O(m_axis_tdata[1]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[200]_INST_0 
       (.I0(LIMIT[8]),
        .I1(rcomp210_in),
        .I2(inst_n_9),
        .I3(rcomp21),
        .I4(inst_n_195),
        .O(m_axis_tdata[200]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[201]_INST_0 
       (.I0(LIMIT[9]),
        .I1(rcomp210_in),
        .I2(inst_n_10),
        .I3(rcomp21),
        .I4(inst_n_196),
        .O(m_axis_tdata[201]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[202]_INST_0 
       (.I0(LIMIT[10]),
        .I1(rcomp210_in),
        .I2(inst_n_251),
        .I3(rcomp21),
        .I4(inst_n_201),
        .O(m_axis_tdata[202]));
  LUT5 #(
    .INIT(32'hC9CFC9C0)) 
    \m_axis_tdata[203]_INST_0 
       (.I0(inst_n_250),
        .I1(LIMIT[11]),
        .I2(rcomp210_in),
        .I3(rcomp21),
        .I4(inst_n_202),
        .O(m_axis_tdata[203]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[204]_INST_0 
       (.I0(LIMIT[12]),
        .I1(rcomp210_in),
        .I2(inst_n_13),
        .I3(rcomp21),
        .I4(inst_n_197),
        .O(m_axis_tdata[204]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[205]_INST_0 
       (.I0(LIMIT[13]),
        .I1(rcomp210_in),
        .I2(inst_n_14),
        .I3(rcomp21),
        .I4(inst_n_198),
        .O(m_axis_tdata[205]));
  LUT6 #(
    .INIT(64'h0000000000B8FFB8)) 
    \m_axis_tdata[206]_INST_0 
       (.I0(inst_n_306),
        .I1(SCALE_SHIFT[0]),
        .I2(inst_n_304),
        .I3(rcomp21),
        .I4(inst_n_228),
        .I5(rcomp210_in),
        .O(m_axis_tdata[206]));
  LUT6 #(
    .INIT(64'h0000000000B8FFB8)) 
    \m_axis_tdata[207]_INST_0 
       (.I0(inst_n_304),
        .I1(SCALE_SHIFT[0]),
        .I2(inst_n_305),
        .I3(rcomp21),
        .I4(inst_n_228),
        .I5(rcomp210_in),
        .O(m_axis_tdata[207]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \m_axis_tdata[208]_INST_0 
       (.I0(inst_n_285),
        .I1(LIMIT[0]),
        .I2(inst_n_284),
        .I3(inst_n_203),
        .O(m_axis_tdata[208]));
  LUT5 #(
    .INIT(32'h9CDD9C88)) 
    \m_axis_tdata[209]_INST_0 
       (.I0(inst_n_285),
        .I1(LIMIT[1]),
        .I2(LIMIT[0]),
        .I3(inst_n_284),
        .I4(inst_n_204),
        .O(m_axis_tdata[209]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[20]_INST_0 
       (.I0(LIMIT[4]),
        .I1(inst_n_261),
        .I2(inst_n_5),
        .I3(inst_n_260),
        .I4(inst_n_24),
        .O(m_axis_tdata[20]));
  LUT6 #(
    .INIT(64'h999CDDDD999C8888)) 
    \m_axis_tdata[210]_INST_0 
       (.I0(inst_n_285),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(inst_n_284),
        .I5(inst_n_205),
        .O(m_axis_tdata[210]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[211]_INST_0 
       (.I0(LIMIT[3]),
        .I1(inst_n_285),
        .I2(\m_axis_tdata[243]_INST_0_i_2_n_0 ),
        .I3(inst_n_284),
        .I4(inst_n_206),
        .O(m_axis_tdata[211]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[212]_INST_0 
       (.I0(LIMIT[4]),
        .I1(inst_n_285),
        .I2(inst_n_5),
        .I3(inst_n_284),
        .I4(inst_n_207),
        .O(m_axis_tdata[212]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[213]_INST_0 
       (.I0(LIMIT[5]),
        .I1(inst_n_285),
        .I2(inst_n_6),
        .I3(inst_n_284),
        .I4(inst_n_208),
        .O(m_axis_tdata[213]));
  LUT5 #(
    .INIT(32'hC9CFC9C0)) 
    \m_axis_tdata[214]_INST_0 
       (.I0(inst_n_252),
        .I1(LIMIT[6]),
        .I2(inst_n_285),
        .I3(inst_n_284),
        .I4(inst_n_213),
        .O(m_axis_tdata[214]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[215]_INST_0 
       (.I0(LIMIT[7]),
        .I1(inst_n_285),
        .I2(inst_n_253),
        .I3(inst_n_284),
        .I4(inst_n_214),
        .O(m_axis_tdata[215]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[216]_INST_0 
       (.I0(LIMIT[8]),
        .I1(inst_n_285),
        .I2(inst_n_9),
        .I3(inst_n_284),
        .I4(inst_n_209),
        .O(m_axis_tdata[216]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[217]_INST_0 
       (.I0(LIMIT[9]),
        .I1(inst_n_285),
        .I2(inst_n_10),
        .I3(inst_n_284),
        .I4(inst_n_210),
        .O(m_axis_tdata[217]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[218]_INST_0 
       (.I0(LIMIT[10]),
        .I1(inst_n_285),
        .I2(inst_n_251),
        .I3(inst_n_284),
        .I4(inst_n_215),
        .O(m_axis_tdata[218]));
  LUT5 #(
    .INIT(32'hC9CFC9C0)) 
    \m_axis_tdata[219]_INST_0 
       (.I0(inst_n_250),
        .I1(LIMIT[11]),
        .I2(inst_n_285),
        .I3(inst_n_284),
        .I4(inst_n_216),
        .O(m_axis_tdata[219]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[21]_INST_0 
       (.I0(LIMIT[5]),
        .I1(inst_n_261),
        .I2(inst_n_6),
        .I3(inst_n_260),
        .I4(inst_n_25),
        .O(m_axis_tdata[21]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[220]_INST_0 
       (.I0(LIMIT[12]),
        .I1(inst_n_285),
        .I2(inst_n_13),
        .I3(inst_n_284),
        .I4(inst_n_211),
        .O(m_axis_tdata[220]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[221]_INST_0 
       (.I0(LIMIT[13]),
        .I1(inst_n_285),
        .I2(inst_n_14),
        .I3(inst_n_284),
        .I4(inst_n_212),
        .O(m_axis_tdata[221]));
  LUT6 #(
    .INIT(64'h0000000000B8FFB8)) 
    \m_axis_tdata[222]_INST_0 
       (.I0(inst_n_309),
        .I1(SCALE_SHIFT[0]),
        .I2(inst_n_307),
        .I3(inst_n_284),
        .I4(inst_n_228),
        .I5(inst_n_285),
        .O(m_axis_tdata[222]));
  LUT6 #(
    .INIT(64'h0000000000B8FFB8)) 
    \m_axis_tdata[223]_INST_0 
       (.I0(inst_n_307),
        .I1(SCALE_SHIFT[0]),
        .I2(inst_n_308),
        .I3(inst_n_284),
        .I4(inst_n_228),
        .I5(inst_n_285),
        .O(m_axis_tdata[223]));
  LUT5 #(
    .INIT(32'hAA00A808)) 
    \m_axis_tdata[224]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_217),
        .I2(inst_n_283),
        .I3(LIMIT[0]),
        .I4(inst_n_282),
        .O(m_axis_tdata[224]));
  LUT6 #(
    .INIT(64'hAAAA000008A8A808)) 
    \m_axis_tdata[225]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_218),
        .I2(inst_n_283),
        .I3(LIMIT[0]),
        .I4(LIMIT[1]),
        .I5(inst_n_282),
        .O(m_axis_tdata[225]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[226]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_219),
        .I2(inst_n_283),
        .I3(\m_axis_tdata[242]_INST_0_i_2_n_0 ),
        .I4(inst_n_282),
        .I5(LIMIT[2]),
        .O(m_axis_tdata[226]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[227]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_220),
        .I2(inst_n_283),
        .I3(\m_axis_tdata[243]_INST_0_i_2_n_0 ),
        .I4(inst_n_282),
        .I5(LIMIT[3]),
        .O(m_axis_tdata[227]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[228]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_221),
        .I2(inst_n_283),
        .I3(inst_n_5),
        .I4(inst_n_282),
        .I5(LIMIT[4]),
        .O(m_axis_tdata[228]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[229]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_222),
        .I2(inst_n_283),
        .I3(inst_n_6),
        .I4(inst_n_282),
        .I5(LIMIT[5]),
        .O(m_axis_tdata[229]));
  LUT5 #(
    .INIT(32'hC9CFC9C0)) 
    \m_axis_tdata[22]_INST_0 
       (.I0(inst_n_252),
        .I1(LIMIT[6]),
        .I2(inst_n_261),
        .I3(inst_n_260),
        .I4(inst_n_30),
        .O(m_axis_tdata[22]));
  LUT6 #(
    .INIT(64'hC0C0C0C09090F000)) 
    \m_axis_tdata[230]_INST_0 
       (.I0(inst_n_252),
        .I1(LIMIT[6]),
        .I2(BAND_DUAL),
        .I3(inst_n_230),
        .I4(inst_n_283),
        .I5(inst_n_282),
        .O(m_axis_tdata[230]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[231]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_231),
        .I2(inst_n_283),
        .I3(inst_n_253),
        .I4(inst_n_282),
        .I5(LIMIT[7]),
        .O(m_axis_tdata[231]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[232]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_223),
        .I2(inst_n_283),
        .I3(inst_n_9),
        .I4(inst_n_282),
        .I5(LIMIT[8]),
        .O(m_axis_tdata[232]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[233]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_224),
        .I2(inst_n_283),
        .I3(inst_n_10),
        .I4(inst_n_282),
        .I5(LIMIT[9]),
        .O(m_axis_tdata[233]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[234]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_232),
        .I2(inst_n_283),
        .I3(inst_n_251),
        .I4(inst_n_282),
        .I5(LIMIT[10]),
        .O(m_axis_tdata[234]));
  LUT6 #(
    .INIT(64'hC0C0C0C09090F000)) 
    \m_axis_tdata[235]_INST_0 
       (.I0(inst_n_250),
        .I1(LIMIT[11]),
        .I2(BAND_DUAL),
        .I3(inst_n_233),
        .I4(inst_n_283),
        .I5(inst_n_282),
        .O(m_axis_tdata[235]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[236]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_225),
        .I2(inst_n_283),
        .I3(inst_n_13),
        .I4(inst_n_282),
        .I5(LIMIT[12]),
        .O(m_axis_tdata[236]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[237]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_226),
        .I2(inst_n_283),
        .I3(inst_n_14),
        .I4(inst_n_282),
        .I5(LIMIT[13]),
        .O(m_axis_tdata[237]));
  LUT5 #(
    .INIT(32'h02220200)) 
    \m_axis_tdata[238]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_282),
        .I2(inst_n_228),
        .I3(inst_n_283),
        .I4(inst_n_227),
        .O(m_axis_tdata[238]));
  LUT5 #(
    .INIT(32'h02220200)) 
    \m_axis_tdata[239]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_282),
        .I2(inst_n_228),
        .I3(inst_n_283),
        .I4(inst_n_229),
        .O(m_axis_tdata[239]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[23]_INST_0 
       (.I0(LIMIT[7]),
        .I1(inst_n_261),
        .I2(inst_n_253),
        .I3(inst_n_260),
        .I4(inst_n_31),
        .O(m_axis_tdata[23]));
  LUT5 #(
    .INIT(32'hAA00A808)) 
    \m_axis_tdata[240]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_234),
        .I2(inst_n_278),
        .I3(LIMIT[0]),
        .I4(inst_n_279),
        .O(m_axis_tdata[240]));
  LUT6 #(
    .INIT(64'hAAAA000008A8A808)) 
    \m_axis_tdata[241]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_235),
        .I2(inst_n_278),
        .I3(LIMIT[0]),
        .I4(LIMIT[1]),
        .I5(inst_n_279),
        .O(m_axis_tdata[241]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[242]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_236),
        .I2(inst_n_278),
        .I3(\m_axis_tdata[242]_INST_0_i_2_n_0 ),
        .I4(inst_n_279),
        .I5(LIMIT[2]),
        .O(m_axis_tdata[242]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \m_axis_tdata[242]_INST_0_i_2 
       (.I0(LIMIT[1]),
        .I1(LIMIT[0]),
        .I2(LIMIT[2]),
        .O(\m_axis_tdata[242]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[243]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_237),
        .I2(inst_n_278),
        .I3(\m_axis_tdata[243]_INST_0_i_2_n_0 ),
        .I4(inst_n_279),
        .I5(LIMIT[3]),
        .O(m_axis_tdata[243]));
  (* SOFT_HLUTNM = "soft_lutpair216" *) 
  LUT4 #(
    .INIT(16'hFE01)) 
    \m_axis_tdata[243]_INST_0_i_2 
       (.I0(LIMIT[2]),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(LIMIT[3]),
        .O(\m_axis_tdata[243]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[244]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_238),
        .I2(inst_n_278),
        .I3(inst_n_5),
        .I4(inst_n_279),
        .I5(LIMIT[4]),
        .O(m_axis_tdata[244]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[245]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_239),
        .I2(inst_n_278),
        .I3(inst_n_6),
        .I4(inst_n_279),
        .I5(LIMIT[5]),
        .O(m_axis_tdata[245]));
  LUT6 #(
    .INIT(64'hC0C0C0C09090F000)) 
    \m_axis_tdata[246]_INST_0 
       (.I0(inst_n_252),
        .I1(LIMIT[6]),
        .I2(BAND_DUAL),
        .I3(inst_n_246),
        .I4(inst_n_278),
        .I5(inst_n_279),
        .O(m_axis_tdata[246]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[247]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_247),
        .I2(inst_n_278),
        .I3(inst_n_253),
        .I4(inst_n_279),
        .I5(LIMIT[7]),
        .O(m_axis_tdata[247]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[248]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_240),
        .I2(inst_n_278),
        .I3(inst_n_9),
        .I4(inst_n_279),
        .I5(LIMIT[8]),
        .O(m_axis_tdata[248]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[249]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_241),
        .I2(inst_n_278),
        .I3(inst_n_10),
        .I4(inst_n_279),
        .I5(LIMIT[9]),
        .O(m_axis_tdata[249]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[24]_INST_0 
       (.I0(LIMIT[8]),
        .I1(inst_n_261),
        .I2(inst_n_9),
        .I3(inst_n_260),
        .I4(inst_n_26),
        .O(m_axis_tdata[24]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[250]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_248),
        .I2(inst_n_278),
        .I3(inst_n_251),
        .I4(inst_n_279),
        .I5(LIMIT[10]),
        .O(m_axis_tdata[250]));
  LUT6 #(
    .INIT(64'hC0C0C0C09090F000)) 
    \m_axis_tdata[251]_INST_0 
       (.I0(inst_n_250),
        .I1(LIMIT[11]),
        .I2(BAND_DUAL),
        .I3(inst_n_249),
        .I4(inst_n_278),
        .I5(inst_n_279),
        .O(m_axis_tdata[251]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[252]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_242),
        .I2(inst_n_278),
        .I3(inst_n_13),
        .I4(inst_n_279),
        .I5(LIMIT[12]),
        .O(m_axis_tdata[252]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[253]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_243),
        .I2(inst_n_278),
        .I3(inst_n_14),
        .I4(inst_n_279),
        .I5(LIMIT[13]),
        .O(m_axis_tdata[253]));
  LUT5 #(
    .INIT(32'h02220200)) 
    \m_axis_tdata[254]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_279),
        .I2(inst_n_228),
        .I3(inst_n_278),
        .I4(inst_n_244),
        .O(m_axis_tdata[254]));
  LUT5 #(
    .INIT(32'h02220200)) 
    \m_axis_tdata[255]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_279),
        .I2(inst_n_228),
        .I3(inst_n_278),
        .I4(inst_n_245),
        .O(m_axis_tdata[255]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[25]_INST_0 
       (.I0(LIMIT[9]),
        .I1(inst_n_261),
        .I2(inst_n_10),
        .I3(inst_n_260),
        .I4(inst_n_27),
        .O(m_axis_tdata[25]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[26]_INST_0 
       (.I0(LIMIT[10]),
        .I1(inst_n_261),
        .I2(inst_n_251),
        .I3(inst_n_260),
        .I4(inst_n_32),
        .O(m_axis_tdata[26]));
  LUT5 #(
    .INIT(32'hC9CFC9C0)) 
    \m_axis_tdata[27]_INST_0 
       (.I0(inst_n_250),
        .I1(LIMIT[11]),
        .I2(inst_n_261),
        .I3(inst_n_260),
        .I4(inst_n_33),
        .O(m_axis_tdata[27]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[28]_INST_0 
       (.I0(LIMIT[12]),
        .I1(inst_n_261),
        .I2(inst_n_13),
        .I3(inst_n_260),
        .I4(inst_n_28),
        .O(m_axis_tdata[28]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[29]_INST_0 
       (.I0(LIMIT[13]),
        .I1(inst_n_261),
        .I2(inst_n_14),
        .I3(inst_n_260),
        .I4(inst_n_29),
        .O(m_axis_tdata[29]));
  LUT6 #(
    .INIT(64'h999CDDDD999C8888)) 
    \m_axis_tdata[2]_INST_0 
       (.I0(rcomp10_in),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(rcomp1),
        .I5(inst_n_2),
        .O(m_axis_tdata[2]));
  LUT6 #(
    .INIT(64'h0000000000B8FFB8)) 
    \m_axis_tdata[30]_INST_0 
       (.I0(inst_n_291),
        .I1(SCALE_SHIFT[0]),
        .I2(inst_n_289),
        .I3(inst_n_260),
        .I4(inst_n_45),
        .I5(inst_n_261),
        .O(m_axis_tdata[30]));
  LUT6 #(
    .INIT(64'h0000000000B8FFB8)) 
    \m_axis_tdata[31]_INST_0 
       (.I0(inst_n_289),
        .I1(SCALE_SHIFT[0]),
        .I2(inst_n_290),
        .I3(inst_n_260),
        .I4(inst_n_45),
        .I5(inst_n_261),
        .O(m_axis_tdata[31]));
  LUT5 #(
    .INIT(32'hAA00A808)) 
    \m_axis_tdata[32]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_34),
        .I2(inst_n_259),
        .I3(LIMIT[0]),
        .I4(inst_n_258),
        .O(m_axis_tdata[32]));
  LUT6 #(
    .INIT(64'hAAAA000008A8A808)) 
    \m_axis_tdata[33]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_35),
        .I2(inst_n_259),
        .I3(LIMIT[0]),
        .I4(LIMIT[1]),
        .I5(inst_n_258),
        .O(m_axis_tdata[33]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[34]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_36),
        .I2(inst_n_259),
        .I3(\m_axis_tdata[242]_INST_0_i_2_n_0 ),
        .I4(inst_n_258),
        .I5(LIMIT[2]),
        .O(m_axis_tdata[34]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[35]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_37),
        .I2(inst_n_259),
        .I3(\m_axis_tdata[243]_INST_0_i_2_n_0 ),
        .I4(inst_n_258),
        .I5(LIMIT[3]),
        .O(m_axis_tdata[35]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[36]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_38),
        .I2(inst_n_259),
        .I3(inst_n_5),
        .I4(inst_n_258),
        .I5(LIMIT[4]),
        .O(m_axis_tdata[36]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[37]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_39),
        .I2(inst_n_259),
        .I3(inst_n_6),
        .I4(inst_n_258),
        .I5(LIMIT[5]),
        .O(m_axis_tdata[37]));
  LUT6 #(
    .INIT(64'hC0C0C0C09090F000)) 
    \m_axis_tdata[38]_INST_0 
       (.I0(inst_n_252),
        .I1(LIMIT[6]),
        .I2(BAND_DUAL),
        .I3(inst_n_47),
        .I4(inst_n_259),
        .I5(inst_n_258),
        .O(m_axis_tdata[38]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[39]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_48),
        .I2(inst_n_259),
        .I3(inst_n_253),
        .I4(inst_n_258),
        .I5(LIMIT[7]),
        .O(m_axis_tdata[39]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[3]_INST_0 
       (.I0(LIMIT[3]),
        .I1(rcomp10_in),
        .I2(\m_axis_tdata[243]_INST_0_i_2_n_0 ),
        .I3(rcomp1),
        .I4(inst_n_3),
        .O(m_axis_tdata[3]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[40]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_40),
        .I2(inst_n_259),
        .I3(inst_n_9),
        .I4(inst_n_258),
        .I5(LIMIT[8]),
        .O(m_axis_tdata[40]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[41]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_41),
        .I2(inst_n_259),
        .I3(inst_n_10),
        .I4(inst_n_258),
        .I5(LIMIT[9]),
        .O(m_axis_tdata[41]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[42]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_49),
        .I2(inst_n_259),
        .I3(inst_n_251),
        .I4(inst_n_258),
        .I5(LIMIT[10]),
        .O(m_axis_tdata[42]));
  LUT6 #(
    .INIT(64'hC0C0C0C09090F000)) 
    \m_axis_tdata[43]_INST_0 
       (.I0(inst_n_250),
        .I1(LIMIT[11]),
        .I2(BAND_DUAL),
        .I3(inst_n_50),
        .I4(inst_n_259),
        .I5(inst_n_258),
        .O(m_axis_tdata[43]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[44]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_42),
        .I2(inst_n_259),
        .I3(inst_n_13),
        .I4(inst_n_258),
        .I5(LIMIT[12]),
        .O(m_axis_tdata[44]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[45]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_43),
        .I2(inst_n_259),
        .I3(inst_n_14),
        .I4(inst_n_258),
        .I5(LIMIT[13]),
        .O(m_axis_tdata[45]));
  LUT5 #(
    .INIT(32'h02220200)) 
    \m_axis_tdata[46]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_258),
        .I2(inst_n_45),
        .I3(inst_n_259),
        .I4(inst_n_44),
        .O(m_axis_tdata[46]));
  LUT5 #(
    .INIT(32'h02220200)) 
    \m_axis_tdata[47]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_258),
        .I2(inst_n_45),
        .I3(inst_n_259),
        .I4(inst_n_46),
        .O(m_axis_tdata[47]));
  LUT5 #(
    .INIT(32'hAA00A808)) 
    \m_axis_tdata[48]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_51),
        .I2(inst_n_254),
        .I3(LIMIT[0]),
        .I4(inst_n_255),
        .O(m_axis_tdata[48]));
  LUT6 #(
    .INIT(64'hAAAA000008A8A808)) 
    \m_axis_tdata[49]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_52),
        .I2(inst_n_254),
        .I3(LIMIT[0]),
        .I4(LIMIT[1]),
        .I5(inst_n_255),
        .O(m_axis_tdata[49]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[4]_INST_0 
       (.I0(LIMIT[4]),
        .I1(rcomp10_in),
        .I2(inst_n_5),
        .I3(rcomp1),
        .I4(inst_n_4),
        .O(m_axis_tdata[4]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[50]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_53),
        .I2(inst_n_254),
        .I3(\m_axis_tdata[242]_INST_0_i_2_n_0 ),
        .I4(inst_n_255),
        .I5(LIMIT[2]),
        .O(m_axis_tdata[50]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[51]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_54),
        .I2(inst_n_254),
        .I3(\m_axis_tdata[243]_INST_0_i_2_n_0 ),
        .I4(inst_n_255),
        .I5(LIMIT[3]),
        .O(m_axis_tdata[51]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[52]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_55),
        .I2(inst_n_254),
        .I3(inst_n_5),
        .I4(inst_n_255),
        .I5(LIMIT[4]),
        .O(m_axis_tdata[52]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[53]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_56),
        .I2(inst_n_254),
        .I3(inst_n_6),
        .I4(inst_n_255),
        .I5(LIMIT[5]),
        .O(m_axis_tdata[53]));
  LUT6 #(
    .INIT(64'hC0C0C0C09090F000)) 
    \m_axis_tdata[54]_INST_0 
       (.I0(inst_n_252),
        .I1(LIMIT[6]),
        .I2(BAND_DUAL),
        .I3(inst_n_63),
        .I4(inst_n_254),
        .I5(inst_n_255),
        .O(m_axis_tdata[54]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[55]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_64),
        .I2(inst_n_254),
        .I3(inst_n_253),
        .I4(inst_n_255),
        .I5(LIMIT[7]),
        .O(m_axis_tdata[55]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[56]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_57),
        .I2(inst_n_254),
        .I3(inst_n_9),
        .I4(inst_n_255),
        .I5(LIMIT[8]),
        .O(m_axis_tdata[56]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[57]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_58),
        .I2(inst_n_254),
        .I3(inst_n_10),
        .I4(inst_n_255),
        .I5(LIMIT[9]),
        .O(m_axis_tdata[57]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[58]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_65),
        .I2(inst_n_254),
        .I3(inst_n_251),
        .I4(inst_n_255),
        .I5(LIMIT[10]),
        .O(m_axis_tdata[58]));
  LUT6 #(
    .INIT(64'hC0C0C0C09090F000)) 
    \m_axis_tdata[59]_INST_0 
       (.I0(inst_n_250),
        .I1(LIMIT[11]),
        .I2(BAND_DUAL),
        .I3(inst_n_66),
        .I4(inst_n_254),
        .I5(inst_n_255),
        .O(m_axis_tdata[59]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[5]_INST_0 
       (.I0(LIMIT[5]),
        .I1(rcomp10_in),
        .I2(inst_n_6),
        .I3(rcomp1),
        .I4(inst_n_7),
        .O(m_axis_tdata[5]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[60]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_59),
        .I2(inst_n_254),
        .I3(inst_n_13),
        .I4(inst_n_255),
        .I5(LIMIT[12]),
        .O(m_axis_tdata[60]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[61]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_60),
        .I2(inst_n_254),
        .I3(inst_n_14),
        .I4(inst_n_255),
        .I5(LIMIT[13]),
        .O(m_axis_tdata[61]));
  LUT5 #(
    .INIT(32'h02220200)) 
    \m_axis_tdata[62]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_255),
        .I2(inst_n_45),
        .I3(inst_n_254),
        .I4(inst_n_61),
        .O(m_axis_tdata[62]));
  LUT5 #(
    .INIT(32'h02220200)) 
    \m_axis_tdata[63]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_255),
        .I2(inst_n_45),
        .I3(inst_n_254),
        .I4(inst_n_62),
        .O(m_axis_tdata[63]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \m_axis_tdata[64]_INST_0 
       (.I0(rcomp010_in),
        .I1(LIMIT[0]),
        .I2(rcomp01),
        .I3(inst_n_67),
        .O(m_axis_tdata[64]));
  LUT5 #(
    .INIT(32'h9CDD9C88)) 
    \m_axis_tdata[65]_INST_0 
       (.I0(rcomp010_in),
        .I1(LIMIT[1]),
        .I2(LIMIT[0]),
        .I3(rcomp01),
        .I4(inst_n_68),
        .O(m_axis_tdata[65]));
  LUT6 #(
    .INIT(64'h999CDDDD999C8888)) 
    \m_axis_tdata[66]_INST_0 
       (.I0(rcomp010_in),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(rcomp01),
        .I5(inst_n_69),
        .O(m_axis_tdata[66]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[67]_INST_0 
       (.I0(LIMIT[3]),
        .I1(rcomp010_in),
        .I2(\m_axis_tdata[243]_INST_0_i_2_n_0 ),
        .I3(rcomp01),
        .I4(inst_n_70),
        .O(m_axis_tdata[67]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[68]_INST_0 
       (.I0(LIMIT[4]),
        .I1(rcomp010_in),
        .I2(inst_n_5),
        .I3(rcomp01),
        .I4(inst_n_71),
        .O(m_axis_tdata[68]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[69]_INST_0 
       (.I0(LIMIT[5]),
        .I1(rcomp010_in),
        .I2(inst_n_6),
        .I3(rcomp01),
        .I4(inst_n_72),
        .O(m_axis_tdata[69]));
  LUT5 #(
    .INIT(32'hC9CFC9C0)) 
    \m_axis_tdata[6]_INST_0 
       (.I0(inst_n_252),
        .I1(LIMIT[6]),
        .I2(rcomp10_in),
        .I3(rcomp1),
        .I4(inst_n_16),
        .O(m_axis_tdata[6]));
  LUT5 #(
    .INIT(32'hC9CFC9C0)) 
    \m_axis_tdata[70]_INST_0 
       (.I0(inst_n_252),
        .I1(LIMIT[6]),
        .I2(rcomp010_in),
        .I3(rcomp01),
        .I4(inst_n_77),
        .O(m_axis_tdata[70]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[71]_INST_0 
       (.I0(LIMIT[7]),
        .I1(rcomp010_in),
        .I2(inst_n_253),
        .I3(rcomp01),
        .I4(inst_n_78),
        .O(m_axis_tdata[71]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[72]_INST_0 
       (.I0(LIMIT[8]),
        .I1(rcomp010_in),
        .I2(inst_n_9),
        .I3(rcomp01),
        .I4(inst_n_73),
        .O(m_axis_tdata[72]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[73]_INST_0 
       (.I0(LIMIT[9]),
        .I1(rcomp010_in),
        .I2(inst_n_10),
        .I3(rcomp01),
        .I4(inst_n_74),
        .O(m_axis_tdata[73]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[74]_INST_0 
       (.I0(LIMIT[10]),
        .I1(rcomp010_in),
        .I2(inst_n_251),
        .I3(rcomp01),
        .I4(inst_n_79),
        .O(m_axis_tdata[74]));
  LUT5 #(
    .INIT(32'hC9CFC9C0)) 
    \m_axis_tdata[75]_INST_0 
       (.I0(inst_n_250),
        .I1(LIMIT[11]),
        .I2(rcomp010_in),
        .I3(rcomp01),
        .I4(inst_n_80),
        .O(m_axis_tdata[75]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[76]_INST_0 
       (.I0(LIMIT[12]),
        .I1(rcomp010_in),
        .I2(inst_n_13),
        .I3(rcomp01),
        .I4(inst_n_75),
        .O(m_axis_tdata[76]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[77]_INST_0 
       (.I0(LIMIT[13]),
        .I1(rcomp010_in),
        .I2(inst_n_14),
        .I3(rcomp01),
        .I4(inst_n_76),
        .O(m_axis_tdata[77]));
  LUT6 #(
    .INIT(64'h0000000000B8FFB8)) 
    \m_axis_tdata[78]_INST_0 
       (.I0(inst_n_294),
        .I1(SCALE_SHIFT[0]),
        .I2(inst_n_292),
        .I3(rcomp01),
        .I4(inst_n_106),
        .I5(rcomp010_in),
        .O(m_axis_tdata[78]));
  LUT6 #(
    .INIT(64'h0000000000B8FFB8)) 
    \m_axis_tdata[79]_INST_0 
       (.I0(inst_n_292),
        .I1(SCALE_SHIFT[0]),
        .I2(inst_n_293),
        .I3(rcomp01),
        .I4(inst_n_106),
        .I5(rcomp010_in),
        .O(m_axis_tdata[79]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[7]_INST_0 
       (.I0(LIMIT[7]),
        .I1(rcomp10_in),
        .I2(inst_n_253),
        .I3(rcomp1),
        .I4(inst_n_17),
        .O(m_axis_tdata[7]));
  LUT4 #(
    .INIT(16'hCDC8)) 
    \m_axis_tdata[80]_INST_0 
       (.I0(inst_n_269),
        .I1(LIMIT[0]),
        .I2(inst_n_268),
        .I3(inst_n_81),
        .O(m_axis_tdata[80]));
  LUT5 #(
    .INIT(32'h9CDD9C88)) 
    \m_axis_tdata[81]_INST_0 
       (.I0(inst_n_269),
        .I1(LIMIT[1]),
        .I2(LIMIT[0]),
        .I3(inst_n_268),
        .I4(inst_n_82),
        .O(m_axis_tdata[81]));
  LUT6 #(
    .INIT(64'h999CDDDD999C8888)) 
    \m_axis_tdata[82]_INST_0 
       (.I0(inst_n_269),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(inst_n_268),
        .I5(inst_n_83),
        .O(m_axis_tdata[82]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[83]_INST_0 
       (.I0(LIMIT[3]),
        .I1(inst_n_269),
        .I2(\m_axis_tdata[243]_INST_0_i_2_n_0 ),
        .I3(inst_n_268),
        .I4(inst_n_84),
        .O(m_axis_tdata[83]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[84]_INST_0 
       (.I0(LIMIT[4]),
        .I1(inst_n_269),
        .I2(inst_n_5),
        .I3(inst_n_268),
        .I4(inst_n_85),
        .O(m_axis_tdata[84]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[85]_INST_0 
       (.I0(LIMIT[5]),
        .I1(inst_n_269),
        .I2(inst_n_6),
        .I3(inst_n_268),
        .I4(inst_n_86),
        .O(m_axis_tdata[85]));
  LUT5 #(
    .INIT(32'hC9CFC9C0)) 
    \m_axis_tdata[86]_INST_0 
       (.I0(inst_n_252),
        .I1(LIMIT[6]),
        .I2(inst_n_269),
        .I3(inst_n_268),
        .I4(inst_n_91),
        .O(m_axis_tdata[86]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[87]_INST_0 
       (.I0(LIMIT[7]),
        .I1(inst_n_269),
        .I2(inst_n_253),
        .I3(inst_n_268),
        .I4(inst_n_92),
        .O(m_axis_tdata[87]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[88]_INST_0 
       (.I0(LIMIT[8]),
        .I1(inst_n_269),
        .I2(inst_n_9),
        .I3(inst_n_268),
        .I4(inst_n_87),
        .O(m_axis_tdata[88]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[89]_INST_0 
       (.I0(LIMIT[9]),
        .I1(inst_n_269),
        .I2(inst_n_10),
        .I3(inst_n_268),
        .I4(inst_n_88),
        .O(m_axis_tdata[89]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[8]_INST_0 
       (.I0(LIMIT[8]),
        .I1(rcomp10_in),
        .I2(inst_n_9),
        .I3(rcomp1),
        .I4(inst_n_8),
        .O(m_axis_tdata[8]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[90]_INST_0 
       (.I0(LIMIT[10]),
        .I1(inst_n_269),
        .I2(inst_n_251),
        .I3(inst_n_268),
        .I4(inst_n_93),
        .O(m_axis_tdata[90]));
  LUT5 #(
    .INIT(32'hC9CFC9C0)) 
    \m_axis_tdata[91]_INST_0 
       (.I0(inst_n_250),
        .I1(LIMIT[11]),
        .I2(inst_n_269),
        .I3(inst_n_268),
        .I4(inst_n_94),
        .O(m_axis_tdata[91]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[92]_INST_0 
       (.I0(LIMIT[12]),
        .I1(inst_n_269),
        .I2(inst_n_13),
        .I3(inst_n_268),
        .I4(inst_n_89),
        .O(m_axis_tdata[92]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[93]_INST_0 
       (.I0(LIMIT[13]),
        .I1(inst_n_269),
        .I2(inst_n_14),
        .I3(inst_n_268),
        .I4(inst_n_90),
        .O(m_axis_tdata[93]));
  LUT6 #(
    .INIT(64'h0000000000B8FFB8)) 
    \m_axis_tdata[94]_INST_0 
       (.I0(inst_n_297),
        .I1(SCALE_SHIFT[0]),
        .I2(inst_n_295),
        .I3(inst_n_268),
        .I4(inst_n_106),
        .I5(inst_n_269),
        .O(m_axis_tdata[94]));
  LUT6 #(
    .INIT(64'h0000000000B8FFB8)) 
    \m_axis_tdata[95]_INST_0 
       (.I0(inst_n_295),
        .I1(SCALE_SHIFT[0]),
        .I2(inst_n_296),
        .I3(inst_n_268),
        .I4(inst_n_106),
        .I5(inst_n_269),
        .O(m_axis_tdata[95]));
  LUT5 #(
    .INIT(32'hAA00A808)) 
    \m_axis_tdata[96]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_95),
        .I2(inst_n_267),
        .I3(LIMIT[0]),
        .I4(inst_n_266),
        .O(m_axis_tdata[96]));
  LUT6 #(
    .INIT(64'hAAAA000008A8A808)) 
    \m_axis_tdata[97]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_96),
        .I2(inst_n_267),
        .I3(LIMIT[0]),
        .I4(LIMIT[1]),
        .I5(inst_n_266),
        .O(m_axis_tdata[97]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[98]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_97),
        .I2(inst_n_267),
        .I3(\m_axis_tdata[242]_INST_0_i_2_n_0 ),
        .I4(inst_n_266),
        .I5(LIMIT[2]),
        .O(m_axis_tdata[98]));
  LUT6 #(
    .INIT(64'hAAAA08A8000008A8)) 
    \m_axis_tdata[99]_INST_0 
       (.I0(BAND_DUAL),
        .I1(inst_n_98),
        .I2(inst_n_267),
        .I3(\m_axis_tdata[243]_INST_0_i_2_n_0 ),
        .I4(inst_n_266),
        .I5(LIMIT[3]),
        .O(m_axis_tdata[99]));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    \m_axis_tdata[9]_INST_0 
       (.I0(LIMIT[9]),
        .I1(rcomp10_in),
        .I2(inst_n_10),
        .I3(rcomp1),
        .I4(inst_n_11),
        .O(m_axis_tdata[9]));
endmodule

(* ORIG_REF_NAME = "iq_requant_tx" *) 
module T510_design_iq_requant_tx_0_0_iq_requant_tx
   (SCALE_SHIFT_1_sp_1,
    SCALE_SHIFT_0_sp_1,
    \SCALE_SHIFT[0]_0 ,
    \SCALE_SHIFT[0]_1 ,
    \SCALE_SHIFT[0]_2 ,
    LIMIT_3_sp_1,
    LIMIT_4_sp_1,
    \SCALE_SHIFT[0]_3 ,
    \SCALE_SHIFT[0]_4 ,
    LIMIT_7_sp_1,
    LIMIT_8_sp_1,
    \SCALE_SHIFT[0]_5 ,
    \SCALE_SHIFT[1]_0 ,
    LIMIT_11_sp_1,
    LIMIT_12_sp_1,
    \SCALE_SHIFT[1]_1 ,
    \SCALE_SHIFT[1]_2 ,
    \SCALE_SHIFT[0]_6 ,
    \SCALE_SHIFT[0]_7 ,
    \SCALE_SHIFT[0]_8 ,
    \SCALE_SHIFT[1]_3 ,
    \SCALE_SHIFT[0]_9 ,
    \SCALE_SHIFT[0]_10 ,
    \SCALE_SHIFT[0]_11 ,
    \SCALE_SHIFT[0]_12 ,
    \SCALE_SHIFT[0]_13 ,
    \SCALE_SHIFT[0]_14 ,
    \SCALE_SHIFT[0]_15 ,
    \SCALE_SHIFT[1]_4 ,
    \SCALE_SHIFT[1]_5 ,
    \SCALE_SHIFT[1]_6 ,
    \SCALE_SHIFT[0]_16 ,
    \SCALE_SHIFT[0]_17 ,
    \SCALE_SHIFT[0]_18 ,
    \SCALE_SHIFT[1]_7 ,
    \SCALE_SHIFT[0]_19 ,
    \SCALE_SHIFT[0]_20 ,
    \SCALE_SHIFT[0]_21 ,
    \SCALE_SHIFT[0]_22 ,
    \SCALE_SHIFT[0]_23 ,
    \SCALE_SHIFT[0]_24 ,
    \SCALE_SHIFT[0]_25 ,
    \SCALE_SHIFT[1]_8 ,
    \SCALE_SHIFT[1]_9 ,
    \SCALE_SHIFT[1]_10 ,
    \LIMIT[12]_0 ,
    \SCALE_SHIFT[1]_11 ,
    \SCALE_SHIFT[1]_12 ,
    \SCALE_SHIFT[0]_26 ,
    \SCALE_SHIFT[0]_27 ,
    \SCALE_SHIFT[0]_28 ,
    \SCALE_SHIFT[1]_13 ,
    \SCALE_SHIFT[0]_29 ,
    \SCALE_SHIFT[0]_30 ,
    \SCALE_SHIFT[0]_31 ,
    \SCALE_SHIFT[0]_32 ,
    \SCALE_SHIFT[0]_33 ,
    \SCALE_SHIFT[0]_34 ,
    \SCALE_SHIFT[0]_35 ,
    \SCALE_SHIFT[1]_14 ,
    \SCALE_SHIFT[1]_15 ,
    \SCALE_SHIFT[1]_16 ,
    \SCALE_SHIFT[1]_17 ,
    \SCALE_SHIFT[1]_18 ,
    \SCALE_SHIFT[0]_36 ,
    \SCALE_SHIFT[0]_37 ,
    \SCALE_SHIFT[0]_38 ,
    \SCALE_SHIFT[1]_19 ,
    \SCALE_SHIFT[0]_39 ,
    \SCALE_SHIFT[0]_40 ,
    \SCALE_SHIFT[0]_41 ,
    \SCALE_SHIFT[0]_42 ,
    \SCALE_SHIFT[0]_43 ,
    \SCALE_SHIFT[0]_44 ,
    \SCALE_SHIFT[0]_45 ,
    \SCALE_SHIFT[1]_20 ,
    \SCALE_SHIFT[1]_21 ,
    \SCALE_SHIFT[1]_22 ,
    \SCALE_SHIFT[0]_46 ,
    \SCALE_SHIFT[0]_47 ,
    \SCALE_SHIFT[0]_48 ,
    \SCALE_SHIFT[1]_23 ,
    \SCALE_SHIFT[0]_49 ,
    \SCALE_SHIFT[0]_50 ,
    \SCALE_SHIFT[0]_51 ,
    \SCALE_SHIFT[0]_52 ,
    \SCALE_SHIFT[0]_53 ,
    \SCALE_SHIFT[0]_54 ,
    \SCALE_SHIFT[0]_55 ,
    \SCALE_SHIFT[1]_24 ,
    \SCALE_SHIFT[1]_25 ,
    \SCALE_SHIFT[1]_26 ,
    \SCALE_SHIFT[0]_56 ,
    \SCALE_SHIFT[0]_57 ,
    \SCALE_SHIFT[0]_58 ,
    \SCALE_SHIFT[1]_27 ,
    \SCALE_SHIFT[0]_59 ,
    \SCALE_SHIFT[0]_60 ,
    \SCALE_SHIFT[0]_61 ,
    \SCALE_SHIFT[0]_62 ,
    \SCALE_SHIFT[0]_63 ,
    \SCALE_SHIFT[0]_64 ,
    \SCALE_SHIFT[0]_65 ,
    \SCALE_SHIFT[1]_28 ,
    \SCALE_SHIFT[1]_29 ,
    \SCALE_SHIFT[1]_30 ,
    \LIMIT[12]_1 ,
    \SCALE_SHIFT[1]_31 ,
    \SCALE_SHIFT[1]_32 ,
    \SCALE_SHIFT[0]_66 ,
    \SCALE_SHIFT[0]_67 ,
    \SCALE_SHIFT[0]_68 ,
    \SCALE_SHIFT[1]_33 ,
    \SCALE_SHIFT[0]_69 ,
    \SCALE_SHIFT[0]_70 ,
    \SCALE_SHIFT[0]_71 ,
    \SCALE_SHIFT[0]_72 ,
    \SCALE_SHIFT[0]_73 ,
    \SCALE_SHIFT[0]_74 ,
    \SCALE_SHIFT[0]_75 ,
    \SCALE_SHIFT[1]_34 ,
    \SCALE_SHIFT[1]_35 ,
    \SCALE_SHIFT[1]_36 ,
    \SCALE_SHIFT[1]_37 ,
    \SCALE_SHIFT[1]_38 ,
    \SCALE_SHIFT[0]_76 ,
    \SCALE_SHIFT[0]_77 ,
    \SCALE_SHIFT[0]_78 ,
    \SCALE_SHIFT[1]_39 ,
    \SCALE_SHIFT[0]_79 ,
    \SCALE_SHIFT[0]_80 ,
    \SCALE_SHIFT[0]_81 ,
    \SCALE_SHIFT[0]_82 ,
    \SCALE_SHIFT[0]_83 ,
    \SCALE_SHIFT[0]_84 ,
    \SCALE_SHIFT[0]_85 ,
    \SCALE_SHIFT[1]_40 ,
    \SCALE_SHIFT[1]_41 ,
    \SCALE_SHIFT[1]_42 ,
    \SCALE_SHIFT[0]_86 ,
    \SCALE_SHIFT[0]_87 ,
    \SCALE_SHIFT[0]_88 ,
    \SCALE_SHIFT[1]_43 ,
    \SCALE_SHIFT[0]_89 ,
    \SCALE_SHIFT[0]_90 ,
    \SCALE_SHIFT[0]_91 ,
    \SCALE_SHIFT[0]_92 ,
    \SCALE_SHIFT[0]_93 ,
    \SCALE_SHIFT[0]_94 ,
    \SCALE_SHIFT[0]_95 ,
    \SCALE_SHIFT[1]_44 ,
    \SCALE_SHIFT[1]_45 ,
    \SCALE_SHIFT[1]_46 ,
    \SCALE_SHIFT[0]_96 ,
    \SCALE_SHIFT[0]_97 ,
    \SCALE_SHIFT[0]_98 ,
    \SCALE_SHIFT[1]_47 ,
    \SCALE_SHIFT[0]_99 ,
    \SCALE_SHIFT[0]_100 ,
    \SCALE_SHIFT[0]_101 ,
    \SCALE_SHIFT[0]_102 ,
    \SCALE_SHIFT[0]_103 ,
    \SCALE_SHIFT[0]_104 ,
    \SCALE_SHIFT[0]_105 ,
    \SCALE_SHIFT[1]_48 ,
    \SCALE_SHIFT[1]_49 ,
    \SCALE_SHIFT[1]_50 ,
    \LIMIT[12]_2 ,
    \SCALE_SHIFT[1]_51 ,
    \SCALE_SHIFT[1]_52 ,
    \SCALE_SHIFT[0]_106 ,
    \SCALE_SHIFT[0]_107 ,
    \SCALE_SHIFT[0]_108 ,
    \SCALE_SHIFT[1]_53 ,
    \SCALE_SHIFT[0]_109 ,
    \SCALE_SHIFT[0]_110 ,
    \SCALE_SHIFT[0]_111 ,
    \SCALE_SHIFT[0]_112 ,
    \SCALE_SHIFT[0]_113 ,
    \SCALE_SHIFT[0]_114 ,
    \SCALE_SHIFT[0]_115 ,
    \SCALE_SHIFT[1]_54 ,
    \SCALE_SHIFT[1]_55 ,
    \SCALE_SHIFT[1]_56 ,
    \SCALE_SHIFT[1]_57 ,
    \SCALE_SHIFT[1]_58 ,
    \SCALE_SHIFT[0]_116 ,
    \SCALE_SHIFT[0]_117 ,
    \SCALE_SHIFT[0]_118 ,
    \SCALE_SHIFT[1]_59 ,
    \SCALE_SHIFT[0]_119 ,
    \SCALE_SHIFT[0]_120 ,
    \SCALE_SHIFT[0]_121 ,
    \SCALE_SHIFT[0]_122 ,
    \SCALE_SHIFT[0]_123 ,
    \SCALE_SHIFT[0]_124 ,
    \SCALE_SHIFT[0]_125 ,
    \SCALE_SHIFT[1]_60 ,
    \SCALE_SHIFT[1]_61 ,
    \SCALE_SHIFT[1]_62 ,
    \SCALE_SHIFT[0]_126 ,
    \SCALE_SHIFT[0]_127 ,
    \SCALE_SHIFT[0]_128 ,
    \SCALE_SHIFT[1]_63 ,
    \SCALE_SHIFT[0]_129 ,
    \SCALE_SHIFT[0]_130 ,
    \SCALE_SHIFT[0]_131 ,
    \SCALE_SHIFT[0]_132 ,
    \SCALE_SHIFT[0]_133 ,
    \SCALE_SHIFT[0]_134 ,
    \SCALE_SHIFT[0]_135 ,
    \SCALE_SHIFT[1]_64 ,
    \SCALE_SHIFT[1]_65 ,
    \SCALE_SHIFT[1]_66 ,
    \SCALE_SHIFT[0]_136 ,
    \SCALE_SHIFT[0]_137 ,
    \SCALE_SHIFT[0]_138 ,
    \SCALE_SHIFT[1]_67 ,
    \SCALE_SHIFT[0]_139 ,
    \SCALE_SHIFT[0]_140 ,
    \SCALE_SHIFT[0]_141 ,
    \SCALE_SHIFT[0]_142 ,
    \SCALE_SHIFT[0]_143 ,
    \SCALE_SHIFT[0]_144 ,
    \SCALE_SHIFT[0]_145 ,
    \SCALE_SHIFT[1]_68 ,
    \SCALE_SHIFT[1]_69 ,
    \SCALE_SHIFT[1]_70 ,
    \LIMIT[12]_3 ,
    \SCALE_SHIFT[1]_71 ,
    \SCALE_SHIFT[1]_72 ,
    \SCALE_SHIFT[0]_146 ,
    \SCALE_SHIFT[0]_147 ,
    \SCALE_SHIFT[0]_148 ,
    \SCALE_SHIFT[1]_73 ,
    \SCALE_SHIFT[0]_149 ,
    \SCALE_SHIFT[0]_150 ,
    \SCALE_SHIFT[0]_151 ,
    \SCALE_SHIFT[0]_152 ,
    \SCALE_SHIFT[0]_153 ,
    \SCALE_SHIFT[0]_154 ,
    \SCALE_SHIFT[0]_155 ,
    \SCALE_SHIFT[1]_74 ,
    \SCALE_SHIFT[1]_75 ,
    \SCALE_SHIFT[1]_76 ,
    \SCALE_SHIFT[1]_77 ,
    \SCALE_SHIFT[1]_78 ,
    \SCALE_SHIFT[0]_156 ,
    \SCALE_SHIFT[0]_157 ,
    \SCALE_SHIFT[0]_158 ,
    LIMIT_9_sp_1,
    \LIMIT[9]_0 ,
    \LIMIT[4]_0 ,
    LIMIT_6_sp_1,
    CO,
    \SCALE_SHIFT[0]_159 ,
    \SCALE_SHIFT[0]_160 ,
    \SCALE_SHIFT[0]_161 ,
    \SCALE_SHIFT[0]_162 ,
    \SCALE_SHIFT[0]_163 ,
    \SCALE_SHIFT[0]_164 ,
    \SCALE_SHIFT[0]_165 ,
    \SCALE_SHIFT[0]_166 ,
    \SCALE_SHIFT[0]_167 ,
    \SCALE_SHIFT[0]_168 ,
    \SCALE_SHIFT[0]_169 ,
    \SCALE_SHIFT[0]_170 ,
    \SCALE_SHIFT[0]_171 ,
    \SCALE_SHIFT[0]_172 ,
    \SCALE_SHIFT[0]_173 ,
    \SCALE_SHIFT[0]_174 ,
    \SCALE_SHIFT[0]_175 ,
    \SCALE_SHIFT[0]_176 ,
    \SCALE_SHIFT[0]_177 ,
    \SCALE_SHIFT[0]_178 ,
    \SCALE_SHIFT[0]_179 ,
    \SCALE_SHIFT[0]_180 ,
    \SCALE_SHIFT[0]_181 ,
    \SCALE_SHIFT[0]_182 ,
    \SCALE_SHIFT[0]_183 ,
    \SCALE_SHIFT[0]_184 ,
    \SCALE_SHIFT[0]_185 ,
    \SCALE_SHIFT[0]_186 ,
    \SCALE_SHIFT[0]_187 ,
    \SCALE_SHIFT[0]_188 ,
    \SCALE_SHIFT[0]_189 ,
    \SCALE_SHIFT[1]_79 ,
    \SCALE_SHIFT[1]_80 ,
    \SCALE_SHIFT[1]_81 ,
    \SCALE_SHIFT[1]_82 ,
    \SCALE_SHIFT[1]_83 ,
    \SCALE_SHIFT[1]_84 ,
    \SCALE_SHIFT[1]_85 ,
    \SCALE_SHIFT[1]_86 ,
    \SCALE_SHIFT[1]_87 ,
    \SCALE_SHIFT[1]_88 ,
    \SCALE_SHIFT[1]_89 ,
    \SCALE_SHIFT[1]_90 ,
    \SCALE_SHIFT[1]_91 ,
    \SCALE_SHIFT[1]_92 ,
    \SCALE_SHIFT[1]_93 ,
    \SCALE_SHIFT[1]_94 ,
    \SCALE_SHIFT[1]_95 ,
    \SCALE_SHIFT[1]_96 ,
    \SCALE_SHIFT[1]_97 ,
    \SCALE_SHIFT[1]_98 ,
    \SCALE_SHIFT[1]_99 ,
    \SCALE_SHIFT[1]_100 ,
    \SCALE_SHIFT[1]_101 ,
    \SCALE_SHIFT[1]_102 ,
    clip_count,
    LIMIT,
    BAND_DUAL,
    SCALE_SHIFT,
    s_axis_tdata,
    cnt_clr,
    aresetn,
    s_axis_tvalid,
    m_axis_tready,
    aclk);
  output SCALE_SHIFT_1_sp_1;
  output SCALE_SHIFT_0_sp_1;
  output \SCALE_SHIFT[0]_0 ;
  output \SCALE_SHIFT[0]_1 ;
  output \SCALE_SHIFT[0]_2 ;
  output LIMIT_3_sp_1;
  output LIMIT_4_sp_1;
  output \SCALE_SHIFT[0]_3 ;
  output \SCALE_SHIFT[0]_4 ;
  output LIMIT_7_sp_1;
  output LIMIT_8_sp_1;
  output \SCALE_SHIFT[0]_5 ;
  output \SCALE_SHIFT[1]_0 ;
  output LIMIT_11_sp_1;
  output LIMIT_12_sp_1;
  output \SCALE_SHIFT[1]_1 ;
  output \SCALE_SHIFT[1]_2 ;
  output \SCALE_SHIFT[0]_6 ;
  output \SCALE_SHIFT[0]_7 ;
  output \SCALE_SHIFT[0]_8 ;
  output \SCALE_SHIFT[1]_3 ;
  output \SCALE_SHIFT[0]_9 ;
  output \SCALE_SHIFT[0]_10 ;
  output \SCALE_SHIFT[0]_11 ;
  output \SCALE_SHIFT[0]_12 ;
  output \SCALE_SHIFT[0]_13 ;
  output \SCALE_SHIFT[0]_14 ;
  output \SCALE_SHIFT[0]_15 ;
  output \SCALE_SHIFT[1]_4 ;
  output \SCALE_SHIFT[1]_5 ;
  output \SCALE_SHIFT[1]_6 ;
  output \SCALE_SHIFT[0]_16 ;
  output \SCALE_SHIFT[0]_17 ;
  output \SCALE_SHIFT[0]_18 ;
  output \SCALE_SHIFT[1]_7 ;
  output \SCALE_SHIFT[0]_19 ;
  output \SCALE_SHIFT[0]_20 ;
  output \SCALE_SHIFT[0]_21 ;
  output \SCALE_SHIFT[0]_22 ;
  output \SCALE_SHIFT[0]_23 ;
  output \SCALE_SHIFT[0]_24 ;
  output \SCALE_SHIFT[0]_25 ;
  output \SCALE_SHIFT[1]_8 ;
  output \SCALE_SHIFT[1]_9 ;
  output \SCALE_SHIFT[1]_10 ;
  output \LIMIT[12]_0 ;
  output \SCALE_SHIFT[1]_11 ;
  output \SCALE_SHIFT[1]_12 ;
  output \SCALE_SHIFT[0]_26 ;
  output \SCALE_SHIFT[0]_27 ;
  output \SCALE_SHIFT[0]_28 ;
  output \SCALE_SHIFT[1]_13 ;
  output \SCALE_SHIFT[0]_29 ;
  output \SCALE_SHIFT[0]_30 ;
  output \SCALE_SHIFT[0]_31 ;
  output \SCALE_SHIFT[0]_32 ;
  output \SCALE_SHIFT[0]_33 ;
  output \SCALE_SHIFT[0]_34 ;
  output \SCALE_SHIFT[0]_35 ;
  output \SCALE_SHIFT[1]_14 ;
  output \SCALE_SHIFT[1]_15 ;
  output \SCALE_SHIFT[1]_16 ;
  output \SCALE_SHIFT[1]_17 ;
  output \SCALE_SHIFT[1]_18 ;
  output \SCALE_SHIFT[0]_36 ;
  output \SCALE_SHIFT[0]_37 ;
  output \SCALE_SHIFT[0]_38 ;
  output \SCALE_SHIFT[1]_19 ;
  output \SCALE_SHIFT[0]_39 ;
  output \SCALE_SHIFT[0]_40 ;
  output \SCALE_SHIFT[0]_41 ;
  output \SCALE_SHIFT[0]_42 ;
  output \SCALE_SHIFT[0]_43 ;
  output \SCALE_SHIFT[0]_44 ;
  output \SCALE_SHIFT[0]_45 ;
  output \SCALE_SHIFT[1]_20 ;
  output \SCALE_SHIFT[1]_21 ;
  output \SCALE_SHIFT[1]_22 ;
  output \SCALE_SHIFT[0]_46 ;
  output \SCALE_SHIFT[0]_47 ;
  output \SCALE_SHIFT[0]_48 ;
  output \SCALE_SHIFT[1]_23 ;
  output \SCALE_SHIFT[0]_49 ;
  output \SCALE_SHIFT[0]_50 ;
  output \SCALE_SHIFT[0]_51 ;
  output \SCALE_SHIFT[0]_52 ;
  output \SCALE_SHIFT[0]_53 ;
  output \SCALE_SHIFT[0]_54 ;
  output \SCALE_SHIFT[0]_55 ;
  output \SCALE_SHIFT[1]_24 ;
  output \SCALE_SHIFT[1]_25 ;
  output \SCALE_SHIFT[1]_26 ;
  output \SCALE_SHIFT[0]_56 ;
  output \SCALE_SHIFT[0]_57 ;
  output \SCALE_SHIFT[0]_58 ;
  output \SCALE_SHIFT[1]_27 ;
  output \SCALE_SHIFT[0]_59 ;
  output \SCALE_SHIFT[0]_60 ;
  output \SCALE_SHIFT[0]_61 ;
  output \SCALE_SHIFT[0]_62 ;
  output \SCALE_SHIFT[0]_63 ;
  output \SCALE_SHIFT[0]_64 ;
  output \SCALE_SHIFT[0]_65 ;
  output \SCALE_SHIFT[1]_28 ;
  output \SCALE_SHIFT[1]_29 ;
  output \SCALE_SHIFT[1]_30 ;
  output \LIMIT[12]_1 ;
  output \SCALE_SHIFT[1]_31 ;
  output \SCALE_SHIFT[1]_32 ;
  output \SCALE_SHIFT[0]_66 ;
  output \SCALE_SHIFT[0]_67 ;
  output \SCALE_SHIFT[0]_68 ;
  output \SCALE_SHIFT[1]_33 ;
  output \SCALE_SHIFT[0]_69 ;
  output \SCALE_SHIFT[0]_70 ;
  output \SCALE_SHIFT[0]_71 ;
  output \SCALE_SHIFT[0]_72 ;
  output \SCALE_SHIFT[0]_73 ;
  output \SCALE_SHIFT[0]_74 ;
  output \SCALE_SHIFT[0]_75 ;
  output \SCALE_SHIFT[1]_34 ;
  output \SCALE_SHIFT[1]_35 ;
  output \SCALE_SHIFT[1]_36 ;
  output \SCALE_SHIFT[1]_37 ;
  output \SCALE_SHIFT[1]_38 ;
  output \SCALE_SHIFT[0]_76 ;
  output \SCALE_SHIFT[0]_77 ;
  output \SCALE_SHIFT[0]_78 ;
  output \SCALE_SHIFT[1]_39 ;
  output \SCALE_SHIFT[0]_79 ;
  output \SCALE_SHIFT[0]_80 ;
  output \SCALE_SHIFT[0]_81 ;
  output \SCALE_SHIFT[0]_82 ;
  output \SCALE_SHIFT[0]_83 ;
  output \SCALE_SHIFT[0]_84 ;
  output \SCALE_SHIFT[0]_85 ;
  output \SCALE_SHIFT[1]_40 ;
  output \SCALE_SHIFT[1]_41 ;
  output \SCALE_SHIFT[1]_42 ;
  output \SCALE_SHIFT[0]_86 ;
  output \SCALE_SHIFT[0]_87 ;
  output \SCALE_SHIFT[0]_88 ;
  output \SCALE_SHIFT[1]_43 ;
  output \SCALE_SHIFT[0]_89 ;
  output \SCALE_SHIFT[0]_90 ;
  output \SCALE_SHIFT[0]_91 ;
  output \SCALE_SHIFT[0]_92 ;
  output \SCALE_SHIFT[0]_93 ;
  output \SCALE_SHIFT[0]_94 ;
  output \SCALE_SHIFT[0]_95 ;
  output \SCALE_SHIFT[1]_44 ;
  output \SCALE_SHIFT[1]_45 ;
  output \SCALE_SHIFT[1]_46 ;
  output \SCALE_SHIFT[0]_96 ;
  output \SCALE_SHIFT[0]_97 ;
  output \SCALE_SHIFT[0]_98 ;
  output \SCALE_SHIFT[1]_47 ;
  output \SCALE_SHIFT[0]_99 ;
  output \SCALE_SHIFT[0]_100 ;
  output \SCALE_SHIFT[0]_101 ;
  output \SCALE_SHIFT[0]_102 ;
  output \SCALE_SHIFT[0]_103 ;
  output \SCALE_SHIFT[0]_104 ;
  output \SCALE_SHIFT[0]_105 ;
  output \SCALE_SHIFT[1]_48 ;
  output \SCALE_SHIFT[1]_49 ;
  output \SCALE_SHIFT[1]_50 ;
  output \LIMIT[12]_2 ;
  output \SCALE_SHIFT[1]_51 ;
  output \SCALE_SHIFT[1]_52 ;
  output \SCALE_SHIFT[0]_106 ;
  output \SCALE_SHIFT[0]_107 ;
  output \SCALE_SHIFT[0]_108 ;
  output \SCALE_SHIFT[1]_53 ;
  output \SCALE_SHIFT[0]_109 ;
  output \SCALE_SHIFT[0]_110 ;
  output \SCALE_SHIFT[0]_111 ;
  output \SCALE_SHIFT[0]_112 ;
  output \SCALE_SHIFT[0]_113 ;
  output \SCALE_SHIFT[0]_114 ;
  output \SCALE_SHIFT[0]_115 ;
  output \SCALE_SHIFT[1]_54 ;
  output \SCALE_SHIFT[1]_55 ;
  output \SCALE_SHIFT[1]_56 ;
  output \SCALE_SHIFT[1]_57 ;
  output \SCALE_SHIFT[1]_58 ;
  output \SCALE_SHIFT[0]_116 ;
  output \SCALE_SHIFT[0]_117 ;
  output \SCALE_SHIFT[0]_118 ;
  output \SCALE_SHIFT[1]_59 ;
  output \SCALE_SHIFT[0]_119 ;
  output \SCALE_SHIFT[0]_120 ;
  output \SCALE_SHIFT[0]_121 ;
  output \SCALE_SHIFT[0]_122 ;
  output \SCALE_SHIFT[0]_123 ;
  output \SCALE_SHIFT[0]_124 ;
  output \SCALE_SHIFT[0]_125 ;
  output \SCALE_SHIFT[1]_60 ;
  output \SCALE_SHIFT[1]_61 ;
  output \SCALE_SHIFT[1]_62 ;
  output \SCALE_SHIFT[0]_126 ;
  output \SCALE_SHIFT[0]_127 ;
  output \SCALE_SHIFT[0]_128 ;
  output \SCALE_SHIFT[1]_63 ;
  output \SCALE_SHIFT[0]_129 ;
  output \SCALE_SHIFT[0]_130 ;
  output \SCALE_SHIFT[0]_131 ;
  output \SCALE_SHIFT[0]_132 ;
  output \SCALE_SHIFT[0]_133 ;
  output \SCALE_SHIFT[0]_134 ;
  output \SCALE_SHIFT[0]_135 ;
  output \SCALE_SHIFT[1]_64 ;
  output \SCALE_SHIFT[1]_65 ;
  output \SCALE_SHIFT[1]_66 ;
  output \SCALE_SHIFT[0]_136 ;
  output \SCALE_SHIFT[0]_137 ;
  output \SCALE_SHIFT[0]_138 ;
  output \SCALE_SHIFT[1]_67 ;
  output \SCALE_SHIFT[0]_139 ;
  output \SCALE_SHIFT[0]_140 ;
  output \SCALE_SHIFT[0]_141 ;
  output \SCALE_SHIFT[0]_142 ;
  output \SCALE_SHIFT[0]_143 ;
  output \SCALE_SHIFT[0]_144 ;
  output \SCALE_SHIFT[0]_145 ;
  output \SCALE_SHIFT[1]_68 ;
  output \SCALE_SHIFT[1]_69 ;
  output \SCALE_SHIFT[1]_70 ;
  output \LIMIT[12]_3 ;
  output \SCALE_SHIFT[1]_71 ;
  output \SCALE_SHIFT[1]_72 ;
  output \SCALE_SHIFT[0]_146 ;
  output \SCALE_SHIFT[0]_147 ;
  output \SCALE_SHIFT[0]_148 ;
  output \SCALE_SHIFT[1]_73 ;
  output \SCALE_SHIFT[0]_149 ;
  output \SCALE_SHIFT[0]_150 ;
  output \SCALE_SHIFT[0]_151 ;
  output \SCALE_SHIFT[0]_152 ;
  output \SCALE_SHIFT[0]_153 ;
  output \SCALE_SHIFT[0]_154 ;
  output \SCALE_SHIFT[0]_155 ;
  output \SCALE_SHIFT[1]_74 ;
  output \SCALE_SHIFT[1]_75 ;
  output \SCALE_SHIFT[1]_76 ;
  output \SCALE_SHIFT[1]_77 ;
  output \SCALE_SHIFT[1]_78 ;
  output \SCALE_SHIFT[0]_156 ;
  output \SCALE_SHIFT[0]_157 ;
  output \SCALE_SHIFT[0]_158 ;
  output LIMIT_9_sp_1;
  output \LIMIT[9]_0 ;
  output \LIMIT[4]_0 ;
  output LIMIT_6_sp_1;
  output [0:0]CO;
  output [0:0]\SCALE_SHIFT[0]_159 ;
  output [0:0]\SCALE_SHIFT[0]_160 ;
  output [0:0]\SCALE_SHIFT[0]_161 ;
  output [0:0]\SCALE_SHIFT[0]_162 ;
  output [0:0]\SCALE_SHIFT[0]_163 ;
  output [0:0]\SCALE_SHIFT[0]_164 ;
  output [0:0]\SCALE_SHIFT[0]_165 ;
  output [0:0]\SCALE_SHIFT[0]_166 ;
  output [0:0]\SCALE_SHIFT[0]_167 ;
  output [0:0]\SCALE_SHIFT[0]_168 ;
  output [0:0]\SCALE_SHIFT[0]_169 ;
  output [0:0]\SCALE_SHIFT[0]_170 ;
  output [0:0]\SCALE_SHIFT[0]_171 ;
  output [0:0]\SCALE_SHIFT[0]_172 ;
  output [0:0]\SCALE_SHIFT[0]_173 ;
  output [0:0]\SCALE_SHIFT[0]_174 ;
  output [0:0]\SCALE_SHIFT[0]_175 ;
  output [0:0]\SCALE_SHIFT[0]_176 ;
  output [0:0]\SCALE_SHIFT[0]_177 ;
  output [0:0]\SCALE_SHIFT[0]_178 ;
  output [0:0]\SCALE_SHIFT[0]_179 ;
  output [0:0]\SCALE_SHIFT[0]_180 ;
  output [0:0]\SCALE_SHIFT[0]_181 ;
  output [0:0]\SCALE_SHIFT[0]_182 ;
  output [0:0]\SCALE_SHIFT[0]_183 ;
  output [0:0]\SCALE_SHIFT[0]_184 ;
  output [0:0]\SCALE_SHIFT[0]_185 ;
  output [0:0]\SCALE_SHIFT[0]_186 ;
  output [0:0]\SCALE_SHIFT[0]_187 ;
  output [0:0]\SCALE_SHIFT[0]_188 ;
  output [0:0]\SCALE_SHIFT[0]_189 ;
  output \SCALE_SHIFT[1]_79 ;
  output \SCALE_SHIFT[1]_80 ;
  output \SCALE_SHIFT[1]_81 ;
  output \SCALE_SHIFT[1]_82 ;
  output \SCALE_SHIFT[1]_83 ;
  output \SCALE_SHIFT[1]_84 ;
  output \SCALE_SHIFT[1]_85 ;
  output \SCALE_SHIFT[1]_86 ;
  output \SCALE_SHIFT[1]_87 ;
  output \SCALE_SHIFT[1]_88 ;
  output \SCALE_SHIFT[1]_89 ;
  output \SCALE_SHIFT[1]_90 ;
  output \SCALE_SHIFT[1]_91 ;
  output \SCALE_SHIFT[1]_92 ;
  output \SCALE_SHIFT[1]_93 ;
  output \SCALE_SHIFT[1]_94 ;
  output \SCALE_SHIFT[1]_95 ;
  output \SCALE_SHIFT[1]_96 ;
  output \SCALE_SHIFT[1]_97 ;
  output \SCALE_SHIFT[1]_98 ;
  output \SCALE_SHIFT[1]_99 ;
  output \SCALE_SHIFT[1]_100 ;
  output \SCALE_SHIFT[1]_101 ;
  output \SCALE_SHIFT[1]_102 ;
  output [31:0]clip_count;
  input [13:0]LIMIT;
  input BAND_DUAL;
  input [4:0]SCALE_SHIFT;
  input [255:0]s_axis_tdata;
  input cnt_clr;
  input aresetn;
  input s_axis_tvalid;
  input m_axis_tready;
  input aclk;

  wire BAND_DUAL;
  wire [0:0]CO;
  wire [13:0]LIMIT;
  wire \LIMIT[12]_0 ;
  wire \LIMIT[12]_1 ;
  wire \LIMIT[12]_2 ;
  wire \LIMIT[12]_3 ;
  wire \LIMIT[4]_0 ;
  wire \LIMIT[9]_0 ;
  wire LIMIT_11_sn_1;
  wire LIMIT_12_sn_1;
  wire LIMIT_3_sn_1;
  wire LIMIT_4_sn_1;
  wire LIMIT_6_sn_1;
  wire LIMIT_7_sn_1;
  wire LIMIT_8_sn_1;
  wire LIMIT_9_sn_1;
  wire [4:0]SCALE_SHIFT;
  wire \SCALE_SHIFT[0]_0 ;
  wire \SCALE_SHIFT[0]_1 ;
  wire \SCALE_SHIFT[0]_10 ;
  wire \SCALE_SHIFT[0]_100 ;
  wire \SCALE_SHIFT[0]_101 ;
  wire \SCALE_SHIFT[0]_102 ;
  wire \SCALE_SHIFT[0]_103 ;
  wire \SCALE_SHIFT[0]_104 ;
  wire \SCALE_SHIFT[0]_105 ;
  wire \SCALE_SHIFT[0]_106 ;
  wire \SCALE_SHIFT[0]_107 ;
  wire \SCALE_SHIFT[0]_108 ;
  wire \SCALE_SHIFT[0]_109 ;
  wire \SCALE_SHIFT[0]_11 ;
  wire \SCALE_SHIFT[0]_110 ;
  wire \SCALE_SHIFT[0]_111 ;
  wire \SCALE_SHIFT[0]_112 ;
  wire \SCALE_SHIFT[0]_113 ;
  wire \SCALE_SHIFT[0]_114 ;
  wire \SCALE_SHIFT[0]_115 ;
  wire \SCALE_SHIFT[0]_116 ;
  wire \SCALE_SHIFT[0]_117 ;
  wire \SCALE_SHIFT[0]_118 ;
  wire \SCALE_SHIFT[0]_119 ;
  wire \SCALE_SHIFT[0]_12 ;
  wire \SCALE_SHIFT[0]_120 ;
  wire \SCALE_SHIFT[0]_121 ;
  wire \SCALE_SHIFT[0]_122 ;
  wire \SCALE_SHIFT[0]_123 ;
  wire \SCALE_SHIFT[0]_124 ;
  wire \SCALE_SHIFT[0]_125 ;
  wire \SCALE_SHIFT[0]_126 ;
  wire \SCALE_SHIFT[0]_127 ;
  wire \SCALE_SHIFT[0]_128 ;
  wire \SCALE_SHIFT[0]_129 ;
  wire \SCALE_SHIFT[0]_13 ;
  wire \SCALE_SHIFT[0]_130 ;
  wire \SCALE_SHIFT[0]_131 ;
  wire \SCALE_SHIFT[0]_132 ;
  wire \SCALE_SHIFT[0]_133 ;
  wire \SCALE_SHIFT[0]_134 ;
  wire \SCALE_SHIFT[0]_135 ;
  wire \SCALE_SHIFT[0]_136 ;
  wire \SCALE_SHIFT[0]_137 ;
  wire \SCALE_SHIFT[0]_138 ;
  wire \SCALE_SHIFT[0]_139 ;
  wire \SCALE_SHIFT[0]_14 ;
  wire \SCALE_SHIFT[0]_140 ;
  wire \SCALE_SHIFT[0]_141 ;
  wire \SCALE_SHIFT[0]_142 ;
  wire \SCALE_SHIFT[0]_143 ;
  wire \SCALE_SHIFT[0]_144 ;
  wire \SCALE_SHIFT[0]_145 ;
  wire \SCALE_SHIFT[0]_146 ;
  wire \SCALE_SHIFT[0]_147 ;
  wire \SCALE_SHIFT[0]_148 ;
  wire \SCALE_SHIFT[0]_149 ;
  wire \SCALE_SHIFT[0]_15 ;
  wire \SCALE_SHIFT[0]_150 ;
  wire \SCALE_SHIFT[0]_151 ;
  wire \SCALE_SHIFT[0]_152 ;
  wire \SCALE_SHIFT[0]_153 ;
  wire \SCALE_SHIFT[0]_154 ;
  wire \SCALE_SHIFT[0]_155 ;
  wire \SCALE_SHIFT[0]_156 ;
  wire \SCALE_SHIFT[0]_157 ;
  wire \SCALE_SHIFT[0]_158 ;
  wire [0:0]\SCALE_SHIFT[0]_159 ;
  wire \SCALE_SHIFT[0]_16 ;
  wire [0:0]\SCALE_SHIFT[0]_160 ;
  wire [0:0]\SCALE_SHIFT[0]_161 ;
  wire [0:0]\SCALE_SHIFT[0]_162 ;
  wire [0:0]\SCALE_SHIFT[0]_163 ;
  wire [0:0]\SCALE_SHIFT[0]_164 ;
  wire [0:0]\SCALE_SHIFT[0]_165 ;
  wire [0:0]\SCALE_SHIFT[0]_166 ;
  wire [0:0]\SCALE_SHIFT[0]_167 ;
  wire [0:0]\SCALE_SHIFT[0]_168 ;
  wire [0:0]\SCALE_SHIFT[0]_169 ;
  wire \SCALE_SHIFT[0]_17 ;
  wire [0:0]\SCALE_SHIFT[0]_170 ;
  wire [0:0]\SCALE_SHIFT[0]_171 ;
  wire [0:0]\SCALE_SHIFT[0]_172 ;
  wire [0:0]\SCALE_SHIFT[0]_173 ;
  wire [0:0]\SCALE_SHIFT[0]_174 ;
  wire [0:0]\SCALE_SHIFT[0]_175 ;
  wire [0:0]\SCALE_SHIFT[0]_176 ;
  wire [0:0]\SCALE_SHIFT[0]_177 ;
  wire [0:0]\SCALE_SHIFT[0]_178 ;
  wire [0:0]\SCALE_SHIFT[0]_179 ;
  wire \SCALE_SHIFT[0]_18 ;
  wire [0:0]\SCALE_SHIFT[0]_180 ;
  wire [0:0]\SCALE_SHIFT[0]_181 ;
  wire [0:0]\SCALE_SHIFT[0]_182 ;
  wire [0:0]\SCALE_SHIFT[0]_183 ;
  wire [0:0]\SCALE_SHIFT[0]_184 ;
  wire [0:0]\SCALE_SHIFT[0]_185 ;
  wire [0:0]\SCALE_SHIFT[0]_186 ;
  wire [0:0]\SCALE_SHIFT[0]_187 ;
  wire [0:0]\SCALE_SHIFT[0]_188 ;
  wire [0:0]\SCALE_SHIFT[0]_189 ;
  wire \SCALE_SHIFT[0]_19 ;
  wire \SCALE_SHIFT[0]_2 ;
  wire \SCALE_SHIFT[0]_20 ;
  wire \SCALE_SHIFT[0]_21 ;
  wire \SCALE_SHIFT[0]_22 ;
  wire \SCALE_SHIFT[0]_23 ;
  wire \SCALE_SHIFT[0]_24 ;
  wire \SCALE_SHIFT[0]_25 ;
  wire \SCALE_SHIFT[0]_26 ;
  wire \SCALE_SHIFT[0]_27 ;
  wire \SCALE_SHIFT[0]_28 ;
  wire \SCALE_SHIFT[0]_29 ;
  wire \SCALE_SHIFT[0]_3 ;
  wire \SCALE_SHIFT[0]_30 ;
  wire \SCALE_SHIFT[0]_31 ;
  wire \SCALE_SHIFT[0]_32 ;
  wire \SCALE_SHIFT[0]_33 ;
  wire \SCALE_SHIFT[0]_34 ;
  wire \SCALE_SHIFT[0]_35 ;
  wire \SCALE_SHIFT[0]_36 ;
  wire \SCALE_SHIFT[0]_37 ;
  wire \SCALE_SHIFT[0]_38 ;
  wire \SCALE_SHIFT[0]_39 ;
  wire \SCALE_SHIFT[0]_4 ;
  wire \SCALE_SHIFT[0]_40 ;
  wire \SCALE_SHIFT[0]_41 ;
  wire \SCALE_SHIFT[0]_42 ;
  wire \SCALE_SHIFT[0]_43 ;
  wire \SCALE_SHIFT[0]_44 ;
  wire \SCALE_SHIFT[0]_45 ;
  wire \SCALE_SHIFT[0]_46 ;
  wire \SCALE_SHIFT[0]_47 ;
  wire \SCALE_SHIFT[0]_48 ;
  wire \SCALE_SHIFT[0]_49 ;
  wire \SCALE_SHIFT[0]_5 ;
  wire \SCALE_SHIFT[0]_50 ;
  wire \SCALE_SHIFT[0]_51 ;
  wire \SCALE_SHIFT[0]_52 ;
  wire \SCALE_SHIFT[0]_53 ;
  wire \SCALE_SHIFT[0]_54 ;
  wire \SCALE_SHIFT[0]_55 ;
  wire \SCALE_SHIFT[0]_56 ;
  wire \SCALE_SHIFT[0]_57 ;
  wire \SCALE_SHIFT[0]_58 ;
  wire \SCALE_SHIFT[0]_59 ;
  wire \SCALE_SHIFT[0]_6 ;
  wire \SCALE_SHIFT[0]_60 ;
  wire \SCALE_SHIFT[0]_61 ;
  wire \SCALE_SHIFT[0]_62 ;
  wire \SCALE_SHIFT[0]_63 ;
  wire \SCALE_SHIFT[0]_64 ;
  wire \SCALE_SHIFT[0]_65 ;
  wire \SCALE_SHIFT[0]_66 ;
  wire \SCALE_SHIFT[0]_67 ;
  wire \SCALE_SHIFT[0]_68 ;
  wire \SCALE_SHIFT[0]_69 ;
  wire \SCALE_SHIFT[0]_7 ;
  wire \SCALE_SHIFT[0]_70 ;
  wire \SCALE_SHIFT[0]_71 ;
  wire \SCALE_SHIFT[0]_72 ;
  wire \SCALE_SHIFT[0]_73 ;
  wire \SCALE_SHIFT[0]_74 ;
  wire \SCALE_SHIFT[0]_75 ;
  wire \SCALE_SHIFT[0]_76 ;
  wire \SCALE_SHIFT[0]_77 ;
  wire \SCALE_SHIFT[0]_78 ;
  wire \SCALE_SHIFT[0]_79 ;
  wire \SCALE_SHIFT[0]_8 ;
  wire \SCALE_SHIFT[0]_80 ;
  wire \SCALE_SHIFT[0]_81 ;
  wire \SCALE_SHIFT[0]_82 ;
  wire \SCALE_SHIFT[0]_83 ;
  wire \SCALE_SHIFT[0]_84 ;
  wire \SCALE_SHIFT[0]_85 ;
  wire \SCALE_SHIFT[0]_86 ;
  wire \SCALE_SHIFT[0]_87 ;
  wire \SCALE_SHIFT[0]_88 ;
  wire \SCALE_SHIFT[0]_89 ;
  wire \SCALE_SHIFT[0]_9 ;
  wire \SCALE_SHIFT[0]_90 ;
  wire \SCALE_SHIFT[0]_91 ;
  wire \SCALE_SHIFT[0]_92 ;
  wire \SCALE_SHIFT[0]_93 ;
  wire \SCALE_SHIFT[0]_94 ;
  wire \SCALE_SHIFT[0]_95 ;
  wire \SCALE_SHIFT[0]_96 ;
  wire \SCALE_SHIFT[0]_97 ;
  wire \SCALE_SHIFT[0]_98 ;
  wire \SCALE_SHIFT[0]_99 ;
  wire \SCALE_SHIFT[1]_0 ;
  wire \SCALE_SHIFT[1]_1 ;
  wire \SCALE_SHIFT[1]_10 ;
  wire \SCALE_SHIFT[1]_100 ;
  wire \SCALE_SHIFT[1]_101 ;
  wire \SCALE_SHIFT[1]_102 ;
  wire \SCALE_SHIFT[1]_11 ;
  wire \SCALE_SHIFT[1]_12 ;
  wire \SCALE_SHIFT[1]_13 ;
  wire \SCALE_SHIFT[1]_14 ;
  wire \SCALE_SHIFT[1]_15 ;
  wire \SCALE_SHIFT[1]_16 ;
  wire \SCALE_SHIFT[1]_17 ;
  wire \SCALE_SHIFT[1]_18 ;
  wire \SCALE_SHIFT[1]_19 ;
  wire \SCALE_SHIFT[1]_2 ;
  wire \SCALE_SHIFT[1]_20 ;
  wire \SCALE_SHIFT[1]_21 ;
  wire \SCALE_SHIFT[1]_22 ;
  wire \SCALE_SHIFT[1]_23 ;
  wire \SCALE_SHIFT[1]_24 ;
  wire \SCALE_SHIFT[1]_25 ;
  wire \SCALE_SHIFT[1]_26 ;
  wire \SCALE_SHIFT[1]_27 ;
  wire \SCALE_SHIFT[1]_28 ;
  wire \SCALE_SHIFT[1]_29 ;
  wire \SCALE_SHIFT[1]_3 ;
  wire \SCALE_SHIFT[1]_30 ;
  wire \SCALE_SHIFT[1]_31 ;
  wire \SCALE_SHIFT[1]_32 ;
  wire \SCALE_SHIFT[1]_33 ;
  wire \SCALE_SHIFT[1]_34 ;
  wire \SCALE_SHIFT[1]_35 ;
  wire \SCALE_SHIFT[1]_36 ;
  wire \SCALE_SHIFT[1]_37 ;
  wire \SCALE_SHIFT[1]_38 ;
  wire \SCALE_SHIFT[1]_39 ;
  wire \SCALE_SHIFT[1]_4 ;
  wire \SCALE_SHIFT[1]_40 ;
  wire \SCALE_SHIFT[1]_41 ;
  wire \SCALE_SHIFT[1]_42 ;
  wire \SCALE_SHIFT[1]_43 ;
  wire \SCALE_SHIFT[1]_44 ;
  wire \SCALE_SHIFT[1]_45 ;
  wire \SCALE_SHIFT[1]_46 ;
  wire \SCALE_SHIFT[1]_47 ;
  wire \SCALE_SHIFT[1]_48 ;
  wire \SCALE_SHIFT[1]_49 ;
  wire \SCALE_SHIFT[1]_5 ;
  wire \SCALE_SHIFT[1]_50 ;
  wire \SCALE_SHIFT[1]_51 ;
  wire \SCALE_SHIFT[1]_52 ;
  wire \SCALE_SHIFT[1]_53 ;
  wire \SCALE_SHIFT[1]_54 ;
  wire \SCALE_SHIFT[1]_55 ;
  wire \SCALE_SHIFT[1]_56 ;
  wire \SCALE_SHIFT[1]_57 ;
  wire \SCALE_SHIFT[1]_58 ;
  wire \SCALE_SHIFT[1]_59 ;
  wire \SCALE_SHIFT[1]_6 ;
  wire \SCALE_SHIFT[1]_60 ;
  wire \SCALE_SHIFT[1]_61 ;
  wire \SCALE_SHIFT[1]_62 ;
  wire \SCALE_SHIFT[1]_63 ;
  wire \SCALE_SHIFT[1]_64 ;
  wire \SCALE_SHIFT[1]_65 ;
  wire \SCALE_SHIFT[1]_66 ;
  wire \SCALE_SHIFT[1]_67 ;
  wire \SCALE_SHIFT[1]_68 ;
  wire \SCALE_SHIFT[1]_69 ;
  wire \SCALE_SHIFT[1]_7 ;
  wire \SCALE_SHIFT[1]_70 ;
  wire \SCALE_SHIFT[1]_71 ;
  wire \SCALE_SHIFT[1]_72 ;
  wire \SCALE_SHIFT[1]_73 ;
  wire \SCALE_SHIFT[1]_74 ;
  wire \SCALE_SHIFT[1]_75 ;
  wire \SCALE_SHIFT[1]_76 ;
  wire \SCALE_SHIFT[1]_77 ;
  wire \SCALE_SHIFT[1]_78 ;
  wire \SCALE_SHIFT[1]_79 ;
  wire \SCALE_SHIFT[1]_8 ;
  wire \SCALE_SHIFT[1]_80 ;
  wire \SCALE_SHIFT[1]_81 ;
  wire \SCALE_SHIFT[1]_82 ;
  wire \SCALE_SHIFT[1]_83 ;
  wire \SCALE_SHIFT[1]_84 ;
  wire \SCALE_SHIFT[1]_85 ;
  wire \SCALE_SHIFT[1]_86 ;
  wire \SCALE_SHIFT[1]_87 ;
  wire \SCALE_SHIFT[1]_88 ;
  wire \SCALE_SHIFT[1]_89 ;
  wire \SCALE_SHIFT[1]_9 ;
  wire \SCALE_SHIFT[1]_90 ;
  wire \SCALE_SHIFT[1]_91 ;
  wire \SCALE_SHIFT[1]_92 ;
  wire \SCALE_SHIFT[1]_93 ;
  wire \SCALE_SHIFT[1]_94 ;
  wire \SCALE_SHIFT[1]_95 ;
  wire \SCALE_SHIFT[1]_96 ;
  wire \SCALE_SHIFT[1]_97 ;
  wire \SCALE_SHIFT[1]_98 ;
  wire \SCALE_SHIFT[1]_99 ;
  wire SCALE_SHIFT_0_sn_1;
  wire SCALE_SHIFT_1_sn_1;
  wire aclk;
  wire aresetn;
  wire [31:0]clip_count;
  wire clip_count0;
  wire \clip_count[31]_i_2_n_0 ;
  wire \clip_count[7]_i_10_n_0 ;
  wire \clip_count[7]_i_11_n_0 ;
  wire \clip_count[7]_i_12_n_0 ;
  wire \clip_count[7]_i_2_n_0 ;
  wire \clip_count[7]_i_3_n_0 ;
  wire \clip_count[7]_i_4_n_0 ;
  wire \clip_count[7]_i_9_n_0 ;
  wire \clip_count_reg[15]_i_1_n_0 ;
  wire \clip_count_reg[15]_i_1_n_1 ;
  wire \clip_count_reg[15]_i_1_n_10 ;
  wire \clip_count_reg[15]_i_1_n_11 ;
  wire \clip_count_reg[15]_i_1_n_12 ;
  wire \clip_count_reg[15]_i_1_n_13 ;
  wire \clip_count_reg[15]_i_1_n_14 ;
  wire \clip_count_reg[15]_i_1_n_15 ;
  wire \clip_count_reg[15]_i_1_n_2 ;
  wire \clip_count_reg[15]_i_1_n_3 ;
  wire \clip_count_reg[15]_i_1_n_4 ;
  wire \clip_count_reg[15]_i_1_n_5 ;
  wire \clip_count_reg[15]_i_1_n_6 ;
  wire \clip_count_reg[15]_i_1_n_7 ;
  wire \clip_count_reg[15]_i_1_n_8 ;
  wire \clip_count_reg[15]_i_1_n_9 ;
  wire \clip_count_reg[23]_i_1_n_0 ;
  wire \clip_count_reg[23]_i_1_n_1 ;
  wire \clip_count_reg[23]_i_1_n_10 ;
  wire \clip_count_reg[23]_i_1_n_11 ;
  wire \clip_count_reg[23]_i_1_n_12 ;
  wire \clip_count_reg[23]_i_1_n_13 ;
  wire \clip_count_reg[23]_i_1_n_14 ;
  wire \clip_count_reg[23]_i_1_n_15 ;
  wire \clip_count_reg[23]_i_1_n_2 ;
  wire \clip_count_reg[23]_i_1_n_3 ;
  wire \clip_count_reg[23]_i_1_n_4 ;
  wire \clip_count_reg[23]_i_1_n_5 ;
  wire \clip_count_reg[23]_i_1_n_6 ;
  wire \clip_count_reg[23]_i_1_n_7 ;
  wire \clip_count_reg[23]_i_1_n_8 ;
  wire \clip_count_reg[23]_i_1_n_9 ;
  wire \clip_count_reg[31]_i_3_n_1 ;
  wire \clip_count_reg[31]_i_3_n_10 ;
  wire \clip_count_reg[31]_i_3_n_11 ;
  wire \clip_count_reg[31]_i_3_n_12 ;
  wire \clip_count_reg[31]_i_3_n_13 ;
  wire \clip_count_reg[31]_i_3_n_14 ;
  wire \clip_count_reg[31]_i_3_n_15 ;
  wire \clip_count_reg[31]_i_3_n_2 ;
  wire \clip_count_reg[31]_i_3_n_3 ;
  wire \clip_count_reg[31]_i_3_n_4 ;
  wire \clip_count_reg[31]_i_3_n_5 ;
  wire \clip_count_reg[31]_i_3_n_6 ;
  wire \clip_count_reg[31]_i_3_n_7 ;
  wire \clip_count_reg[31]_i_3_n_8 ;
  wire \clip_count_reg[31]_i_3_n_9 ;
  wire \clip_count_reg[7]_i_1_n_0 ;
  wire \clip_count_reg[7]_i_1_n_1 ;
  wire \clip_count_reg[7]_i_1_n_10 ;
  wire \clip_count_reg[7]_i_1_n_11 ;
  wire \clip_count_reg[7]_i_1_n_12 ;
  wire \clip_count_reg[7]_i_1_n_13 ;
  wire \clip_count_reg[7]_i_1_n_14 ;
  wire \clip_count_reg[7]_i_1_n_15 ;
  wire \clip_count_reg[7]_i_1_n_2 ;
  wire \clip_count_reg[7]_i_1_n_3 ;
  wire \clip_count_reg[7]_i_1_n_4 ;
  wire \clip_count_reg[7]_i_1_n_5 ;
  wire \clip_count_reg[7]_i_1_n_6 ;
  wire \clip_count_reg[7]_i_1_n_7 ;
  wire \clip_count_reg[7]_i_1_n_8 ;
  wire \clip_count_reg[7]_i_1_n_9 ;
  wire cnt_clr;
  wire \m_axis_tdata[100]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[101]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[102]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[103]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[104]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[105]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[106]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[107]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[108]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[109]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[10]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[110]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[110]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[110]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_100_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_101_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_102_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_103_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_104_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_105_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_106_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_107_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_108_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_109_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_10_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_110_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_111_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_112_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_113_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_114_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_11_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_12_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_13_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_14_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_15_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_16_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_17_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_18_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_19_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_1_n_1 ;
  wire \m_axis_tdata[111]_INST_0_i_1_n_2 ;
  wire \m_axis_tdata[111]_INST_0_i_1_n_3 ;
  wire \m_axis_tdata[111]_INST_0_i_1_n_4 ;
  wire \m_axis_tdata[111]_INST_0_i_1_n_5 ;
  wire \m_axis_tdata[111]_INST_0_i_1_n_6 ;
  wire \m_axis_tdata[111]_INST_0_i_1_n_7 ;
  wire \m_axis_tdata[111]_INST_0_i_20_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_21_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_21_n_1 ;
  wire \m_axis_tdata[111]_INST_0_i_21_n_2 ;
  wire \m_axis_tdata[111]_INST_0_i_21_n_3 ;
  wire \m_axis_tdata[111]_INST_0_i_21_n_4 ;
  wire \m_axis_tdata[111]_INST_0_i_21_n_5 ;
  wire \m_axis_tdata[111]_INST_0_i_21_n_6 ;
  wire \m_axis_tdata[111]_INST_0_i_21_n_7 ;
  wire \m_axis_tdata[111]_INST_0_i_22_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_23_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_24_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_25_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_26_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_27_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_28_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_29_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_2_n_1 ;
  wire \m_axis_tdata[111]_INST_0_i_2_n_2 ;
  wire \m_axis_tdata[111]_INST_0_i_2_n_3 ;
  wire \m_axis_tdata[111]_INST_0_i_2_n_4 ;
  wire \m_axis_tdata[111]_INST_0_i_2_n_5 ;
  wire \m_axis_tdata[111]_INST_0_i_2_n_6 ;
  wire \m_axis_tdata[111]_INST_0_i_2_n_7 ;
  wire \m_axis_tdata[111]_INST_0_i_30_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_31_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_32_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_33_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_34_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_35_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_36_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_37_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_38_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_39_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_40_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_41_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_42_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_43_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_44_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_45_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_46_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_47_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_48_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_49_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_4_n_1 ;
  wire \m_axis_tdata[111]_INST_0_i_4_n_2 ;
  wire \m_axis_tdata[111]_INST_0_i_4_n_3 ;
  wire \m_axis_tdata[111]_INST_0_i_4_n_4 ;
  wire \m_axis_tdata[111]_INST_0_i_4_n_5 ;
  wire \m_axis_tdata[111]_INST_0_i_4_n_6 ;
  wire \m_axis_tdata[111]_INST_0_i_4_n_7 ;
  wire \m_axis_tdata[111]_INST_0_i_50_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_51_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_52_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_53_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_54_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_55_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_56_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_57_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_58_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_59_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_60_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_61_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_62_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_63_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_64_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_65_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_66_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_67_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_68_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_69_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_70_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_71_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_72_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_73_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_74_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_75_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_76_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_77_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_78_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_79_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_7_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_80_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_81_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_82_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_83_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_84_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_85_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_86_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_87_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_88_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_89_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_8_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_90_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_91_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_92_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_93_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_94_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_95_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_96_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_97_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_98_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_99_n_0 ;
  wire \m_axis_tdata[111]_INST_0_i_9_n_0 ;
  wire \m_axis_tdata[113]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[114]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[115]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[116]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[117]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[118]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[119]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[11]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[120]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[121]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[122]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[123]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[124]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[125]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[126]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[126]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[126]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_100_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_101_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_102_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_103_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_104_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_105_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_106_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_107_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_108_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_109_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_10_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_110_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_111_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_112_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_113_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_114_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_115_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_11_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_12_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_13_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_14_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_15_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_16_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_17_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_18_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_19_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_1_n_1 ;
  wire \m_axis_tdata[127]_INST_0_i_1_n_2 ;
  wire \m_axis_tdata[127]_INST_0_i_1_n_3 ;
  wire \m_axis_tdata[127]_INST_0_i_1_n_4 ;
  wire \m_axis_tdata[127]_INST_0_i_1_n_5 ;
  wire \m_axis_tdata[127]_INST_0_i_1_n_6 ;
  wire \m_axis_tdata[127]_INST_0_i_1_n_7 ;
  wire \m_axis_tdata[127]_INST_0_i_20_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_21_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_22_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_22_n_1 ;
  wire \m_axis_tdata[127]_INST_0_i_22_n_2 ;
  wire \m_axis_tdata[127]_INST_0_i_22_n_3 ;
  wire \m_axis_tdata[127]_INST_0_i_22_n_4 ;
  wire \m_axis_tdata[127]_INST_0_i_22_n_5 ;
  wire \m_axis_tdata[127]_INST_0_i_22_n_6 ;
  wire \m_axis_tdata[127]_INST_0_i_22_n_7 ;
  wire \m_axis_tdata[127]_INST_0_i_23_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_24_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_25_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_26_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_27_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_28_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_29_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_30_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_31_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_32_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_33_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_34_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_35_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_36_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_37_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_38_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_39_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_3_n_1 ;
  wire \m_axis_tdata[127]_INST_0_i_3_n_2 ;
  wire \m_axis_tdata[127]_INST_0_i_3_n_3 ;
  wire \m_axis_tdata[127]_INST_0_i_3_n_4 ;
  wire \m_axis_tdata[127]_INST_0_i_3_n_5 ;
  wire \m_axis_tdata[127]_INST_0_i_3_n_6 ;
  wire \m_axis_tdata[127]_INST_0_i_3_n_7 ;
  wire \m_axis_tdata[127]_INST_0_i_40_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_41_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_42_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_43_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_44_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_45_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_46_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_47_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_48_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_49_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_50_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_51_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_52_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_53_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_54_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_55_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_56_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_57_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_58_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_59_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_5_n_1 ;
  wire \m_axis_tdata[127]_INST_0_i_5_n_2 ;
  wire \m_axis_tdata[127]_INST_0_i_5_n_3 ;
  wire \m_axis_tdata[127]_INST_0_i_5_n_4 ;
  wire \m_axis_tdata[127]_INST_0_i_5_n_5 ;
  wire \m_axis_tdata[127]_INST_0_i_5_n_6 ;
  wire \m_axis_tdata[127]_INST_0_i_5_n_7 ;
  wire \m_axis_tdata[127]_INST_0_i_60_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_61_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_62_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_63_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_64_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_65_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_66_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_67_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_68_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_69_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_70_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_71_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_72_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_73_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_74_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_75_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_76_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_77_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_78_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_79_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_7_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_80_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_81_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_82_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_83_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_84_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_85_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_86_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_87_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_88_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_89_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_8_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_90_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_91_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_92_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_93_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_94_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_95_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_96_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_97_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_98_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_99_n_0 ;
  wire \m_axis_tdata[127]_INST_0_i_9_n_0 ;
  wire \m_axis_tdata[129]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[12]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[130]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[131]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[132]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[133]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[134]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[135]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[136]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[137]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[138]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[139]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[13]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[140]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[141]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[142]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_100_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_101_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_102_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_103_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_104_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_105_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_106_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_107_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_108_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_109_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_10_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_110_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_111_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_112_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_113_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_114_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_115_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_116_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_11_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_12_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_13_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_14_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_15_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_16_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_17_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_18_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_19_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_20_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_21_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_22_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_23_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_24_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_25_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_26_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_26_n_1 ;
  wire \m_axis_tdata[143]_INST_0_i_26_n_2 ;
  wire \m_axis_tdata[143]_INST_0_i_26_n_3 ;
  wire \m_axis_tdata[143]_INST_0_i_26_n_4 ;
  wire \m_axis_tdata[143]_INST_0_i_26_n_5 ;
  wire \m_axis_tdata[143]_INST_0_i_26_n_6 ;
  wire \m_axis_tdata[143]_INST_0_i_26_n_7 ;
  wire \m_axis_tdata[143]_INST_0_i_27_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_28_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_29_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_30_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_31_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_32_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_33_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_34_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_35_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_36_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_37_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_38_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_39_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_3_n_1 ;
  wire \m_axis_tdata[143]_INST_0_i_3_n_2 ;
  wire \m_axis_tdata[143]_INST_0_i_3_n_3 ;
  wire \m_axis_tdata[143]_INST_0_i_3_n_4 ;
  wire \m_axis_tdata[143]_INST_0_i_3_n_5 ;
  wire \m_axis_tdata[143]_INST_0_i_3_n_6 ;
  wire \m_axis_tdata[143]_INST_0_i_3_n_7 ;
  wire \m_axis_tdata[143]_INST_0_i_40_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_41_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_42_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_43_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_44_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_45_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_46_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_47_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_48_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_49_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_4_n_1 ;
  wire \m_axis_tdata[143]_INST_0_i_4_n_2 ;
  wire \m_axis_tdata[143]_INST_0_i_4_n_3 ;
  wire \m_axis_tdata[143]_INST_0_i_4_n_4 ;
  wire \m_axis_tdata[143]_INST_0_i_4_n_5 ;
  wire \m_axis_tdata[143]_INST_0_i_4_n_6 ;
  wire \m_axis_tdata[143]_INST_0_i_4_n_7 ;
  wire \m_axis_tdata[143]_INST_0_i_50_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_51_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_52_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_53_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_54_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_55_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_56_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_57_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_58_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_59_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_60_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_61_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_62_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_63_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_64_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_65_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_66_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_67_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_68_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_69_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_70_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_71_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_72_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_73_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_74_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_75_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_76_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_77_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_78_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_79_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_7_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_80_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_81_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_82_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_83_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_84_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_85_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_86_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_87_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_88_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_89_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_8_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_90_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_91_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_92_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_93_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_94_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_95_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_96_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_97_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_98_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_99_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_9_n_0 ;
  wire \m_axis_tdata[143]_INST_0_i_9_n_1 ;
  wire \m_axis_tdata[143]_INST_0_i_9_n_2 ;
  wire \m_axis_tdata[143]_INST_0_i_9_n_3 ;
  wire \m_axis_tdata[143]_INST_0_i_9_n_4 ;
  wire \m_axis_tdata[143]_INST_0_i_9_n_5 ;
  wire \m_axis_tdata[143]_INST_0_i_9_n_6 ;
  wire \m_axis_tdata[143]_INST_0_i_9_n_7 ;
  wire \m_axis_tdata[145]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[146]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[147]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[148]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[149]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[14]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[150]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[151]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[152]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[153]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[154]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[155]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[156]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[157]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[158]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_100_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_101_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_102_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_103_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_104_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_105_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_106_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_107_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_108_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_109_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_10_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_110_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_111_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_112_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_113_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_114_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_115_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_116_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_11_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_12_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_13_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_14_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_15_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_16_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_17_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_18_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_19_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_20_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_21_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_22_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_23_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_24_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_25_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_26_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_26_n_1 ;
  wire \m_axis_tdata[159]_INST_0_i_26_n_2 ;
  wire \m_axis_tdata[159]_INST_0_i_26_n_3 ;
  wire \m_axis_tdata[159]_INST_0_i_26_n_4 ;
  wire \m_axis_tdata[159]_INST_0_i_26_n_5 ;
  wire \m_axis_tdata[159]_INST_0_i_26_n_6 ;
  wire \m_axis_tdata[159]_INST_0_i_26_n_7 ;
  wire \m_axis_tdata[159]_INST_0_i_27_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_28_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_29_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_30_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_31_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_32_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_33_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_34_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_35_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_36_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_37_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_38_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_39_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_3_n_1 ;
  wire \m_axis_tdata[159]_INST_0_i_3_n_2 ;
  wire \m_axis_tdata[159]_INST_0_i_3_n_3 ;
  wire \m_axis_tdata[159]_INST_0_i_3_n_4 ;
  wire \m_axis_tdata[159]_INST_0_i_3_n_5 ;
  wire \m_axis_tdata[159]_INST_0_i_3_n_6 ;
  wire \m_axis_tdata[159]_INST_0_i_3_n_7 ;
  wire \m_axis_tdata[159]_INST_0_i_40_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_41_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_42_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_43_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_44_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_45_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_46_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_47_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_48_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_49_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_4_n_1 ;
  wire \m_axis_tdata[159]_INST_0_i_4_n_2 ;
  wire \m_axis_tdata[159]_INST_0_i_4_n_3 ;
  wire \m_axis_tdata[159]_INST_0_i_4_n_4 ;
  wire \m_axis_tdata[159]_INST_0_i_4_n_5 ;
  wire \m_axis_tdata[159]_INST_0_i_4_n_6 ;
  wire \m_axis_tdata[159]_INST_0_i_4_n_7 ;
  wire \m_axis_tdata[159]_INST_0_i_50_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_51_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_52_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_53_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_54_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_55_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_56_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_57_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_58_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_59_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_60_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_61_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_62_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_63_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_64_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_65_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_66_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_67_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_68_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_69_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_70_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_71_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_72_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_73_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_74_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_75_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_76_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_77_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_78_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_79_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_7_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_80_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_81_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_82_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_83_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_84_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_85_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_86_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_87_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_88_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_89_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_8_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_90_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_91_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_92_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_93_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_94_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_95_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_96_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_97_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_98_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_99_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_9_n_0 ;
  wire \m_axis_tdata[159]_INST_0_i_9_n_1 ;
  wire \m_axis_tdata[159]_INST_0_i_9_n_2 ;
  wire \m_axis_tdata[159]_INST_0_i_9_n_3 ;
  wire \m_axis_tdata[159]_INST_0_i_9_n_4 ;
  wire \m_axis_tdata[159]_INST_0_i_9_n_5 ;
  wire \m_axis_tdata[159]_INST_0_i_9_n_6 ;
  wire \m_axis_tdata[159]_INST_0_i_9_n_7 ;
  wire \m_axis_tdata[15]_INST_0_i_100_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_101_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_102_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_103_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_104_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_105_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_106_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_107_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_108_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_109_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_10_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_110_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_111_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_112_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_113_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_114_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_115_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_116_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_11_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_12_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_13_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_14_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_15_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_16_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_17_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_18_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_19_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_20_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_21_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_22_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_23_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_24_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_25_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_26_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_26_n_1 ;
  wire \m_axis_tdata[15]_INST_0_i_26_n_2 ;
  wire \m_axis_tdata[15]_INST_0_i_26_n_3 ;
  wire \m_axis_tdata[15]_INST_0_i_26_n_4 ;
  wire \m_axis_tdata[15]_INST_0_i_26_n_5 ;
  wire \m_axis_tdata[15]_INST_0_i_26_n_6 ;
  wire \m_axis_tdata[15]_INST_0_i_26_n_7 ;
  wire \m_axis_tdata[15]_INST_0_i_27_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_28_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_29_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_30_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_31_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_32_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_33_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_34_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_35_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_36_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_37_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_38_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_39_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_3_n_1 ;
  wire \m_axis_tdata[15]_INST_0_i_3_n_2 ;
  wire \m_axis_tdata[15]_INST_0_i_3_n_3 ;
  wire \m_axis_tdata[15]_INST_0_i_3_n_4 ;
  wire \m_axis_tdata[15]_INST_0_i_3_n_5 ;
  wire \m_axis_tdata[15]_INST_0_i_3_n_6 ;
  wire \m_axis_tdata[15]_INST_0_i_3_n_7 ;
  wire \m_axis_tdata[15]_INST_0_i_40_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_41_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_42_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_43_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_44_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_45_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_46_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_47_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_48_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_49_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_4_n_1 ;
  wire \m_axis_tdata[15]_INST_0_i_4_n_2 ;
  wire \m_axis_tdata[15]_INST_0_i_4_n_3 ;
  wire \m_axis_tdata[15]_INST_0_i_4_n_4 ;
  wire \m_axis_tdata[15]_INST_0_i_4_n_5 ;
  wire \m_axis_tdata[15]_INST_0_i_4_n_6 ;
  wire \m_axis_tdata[15]_INST_0_i_4_n_7 ;
  wire \m_axis_tdata[15]_INST_0_i_50_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_51_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_52_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_53_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_54_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_55_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_56_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_57_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_58_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_59_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_60_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_61_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_62_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_63_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_64_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_65_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_66_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_67_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_68_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_69_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_70_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_71_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_72_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_73_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_74_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_75_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_76_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_77_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_78_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_79_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_7_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_80_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_81_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_82_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_83_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_84_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_85_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_86_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_87_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_88_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_89_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_8_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_90_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_91_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_92_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_93_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_94_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_95_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_96_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_97_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_98_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_99_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_9_n_0 ;
  wire \m_axis_tdata[15]_INST_0_i_9_n_1 ;
  wire \m_axis_tdata[15]_INST_0_i_9_n_2 ;
  wire \m_axis_tdata[15]_INST_0_i_9_n_3 ;
  wire \m_axis_tdata[15]_INST_0_i_9_n_4 ;
  wire \m_axis_tdata[15]_INST_0_i_9_n_5 ;
  wire \m_axis_tdata[15]_INST_0_i_9_n_6 ;
  wire \m_axis_tdata[15]_INST_0_i_9_n_7 ;
  wire \m_axis_tdata[161]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[162]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[163]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[164]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[165]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[166]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[167]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[168]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[169]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[170]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[171]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[172]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[173]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[174]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[174]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[174]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_100_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_101_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_102_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_103_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_104_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_105_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_106_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_107_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_108_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_109_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_10_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_110_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_111_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_112_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_113_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_114_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_11_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_12_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_13_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_14_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_15_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_16_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_17_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_18_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_19_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_1_n_1 ;
  wire \m_axis_tdata[175]_INST_0_i_1_n_2 ;
  wire \m_axis_tdata[175]_INST_0_i_1_n_3 ;
  wire \m_axis_tdata[175]_INST_0_i_1_n_4 ;
  wire \m_axis_tdata[175]_INST_0_i_1_n_5 ;
  wire \m_axis_tdata[175]_INST_0_i_1_n_6 ;
  wire \m_axis_tdata[175]_INST_0_i_1_n_7 ;
  wire \m_axis_tdata[175]_INST_0_i_20_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_21_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_21_n_1 ;
  wire \m_axis_tdata[175]_INST_0_i_21_n_2 ;
  wire \m_axis_tdata[175]_INST_0_i_21_n_3 ;
  wire \m_axis_tdata[175]_INST_0_i_21_n_4 ;
  wire \m_axis_tdata[175]_INST_0_i_21_n_5 ;
  wire \m_axis_tdata[175]_INST_0_i_21_n_6 ;
  wire \m_axis_tdata[175]_INST_0_i_21_n_7 ;
  wire \m_axis_tdata[175]_INST_0_i_22_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_23_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_24_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_25_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_26_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_27_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_28_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_29_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_2_n_1 ;
  wire \m_axis_tdata[175]_INST_0_i_2_n_2 ;
  wire \m_axis_tdata[175]_INST_0_i_2_n_3 ;
  wire \m_axis_tdata[175]_INST_0_i_2_n_4 ;
  wire \m_axis_tdata[175]_INST_0_i_2_n_5 ;
  wire \m_axis_tdata[175]_INST_0_i_2_n_6 ;
  wire \m_axis_tdata[175]_INST_0_i_2_n_7 ;
  wire \m_axis_tdata[175]_INST_0_i_30_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_31_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_32_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_33_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_34_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_35_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_36_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_37_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_38_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_39_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_40_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_41_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_42_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_43_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_44_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_45_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_46_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_47_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_48_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_49_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_4_n_1 ;
  wire \m_axis_tdata[175]_INST_0_i_4_n_2 ;
  wire \m_axis_tdata[175]_INST_0_i_4_n_3 ;
  wire \m_axis_tdata[175]_INST_0_i_4_n_4 ;
  wire \m_axis_tdata[175]_INST_0_i_4_n_5 ;
  wire \m_axis_tdata[175]_INST_0_i_4_n_6 ;
  wire \m_axis_tdata[175]_INST_0_i_4_n_7 ;
  wire \m_axis_tdata[175]_INST_0_i_50_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_51_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_52_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_53_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_54_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_55_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_56_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_57_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_58_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_59_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_60_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_61_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_62_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_63_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_64_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_65_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_66_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_67_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_68_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_69_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_70_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_71_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_72_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_73_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_74_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_75_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_76_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_77_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_78_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_79_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_7_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_80_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_81_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_82_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_83_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_84_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_85_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_86_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_87_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_88_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_89_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_8_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_90_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_91_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_92_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_93_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_94_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_95_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_96_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_97_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_98_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_99_n_0 ;
  wire \m_axis_tdata[175]_INST_0_i_9_n_0 ;
  wire \m_axis_tdata[177]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[178]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[179]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[17]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[180]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[181]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[182]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[183]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[184]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[185]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[186]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[187]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[188]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[189]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[18]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[190]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[190]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[190]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_100_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_101_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_102_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_103_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_104_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_105_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_106_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_107_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_108_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_109_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_10_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_110_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_111_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_112_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_113_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_114_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_115_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_11_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_12_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_13_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_14_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_15_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_16_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_17_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_18_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_19_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_1_n_1 ;
  wire \m_axis_tdata[191]_INST_0_i_1_n_2 ;
  wire \m_axis_tdata[191]_INST_0_i_1_n_3 ;
  wire \m_axis_tdata[191]_INST_0_i_1_n_4 ;
  wire \m_axis_tdata[191]_INST_0_i_1_n_5 ;
  wire \m_axis_tdata[191]_INST_0_i_1_n_6 ;
  wire \m_axis_tdata[191]_INST_0_i_1_n_7 ;
  wire \m_axis_tdata[191]_INST_0_i_20_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_21_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_22_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_22_n_1 ;
  wire \m_axis_tdata[191]_INST_0_i_22_n_2 ;
  wire \m_axis_tdata[191]_INST_0_i_22_n_3 ;
  wire \m_axis_tdata[191]_INST_0_i_22_n_4 ;
  wire \m_axis_tdata[191]_INST_0_i_22_n_5 ;
  wire \m_axis_tdata[191]_INST_0_i_22_n_6 ;
  wire \m_axis_tdata[191]_INST_0_i_22_n_7 ;
  wire \m_axis_tdata[191]_INST_0_i_23_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_24_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_25_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_26_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_27_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_28_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_29_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_30_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_31_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_32_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_33_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_34_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_35_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_36_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_37_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_38_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_39_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_3_n_1 ;
  wire \m_axis_tdata[191]_INST_0_i_3_n_2 ;
  wire \m_axis_tdata[191]_INST_0_i_3_n_3 ;
  wire \m_axis_tdata[191]_INST_0_i_3_n_4 ;
  wire \m_axis_tdata[191]_INST_0_i_3_n_5 ;
  wire \m_axis_tdata[191]_INST_0_i_3_n_6 ;
  wire \m_axis_tdata[191]_INST_0_i_3_n_7 ;
  wire \m_axis_tdata[191]_INST_0_i_40_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_41_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_42_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_43_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_44_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_45_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_46_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_47_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_48_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_49_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_50_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_51_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_52_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_53_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_54_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_55_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_56_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_57_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_58_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_59_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_5_n_1 ;
  wire \m_axis_tdata[191]_INST_0_i_5_n_2 ;
  wire \m_axis_tdata[191]_INST_0_i_5_n_3 ;
  wire \m_axis_tdata[191]_INST_0_i_5_n_4 ;
  wire \m_axis_tdata[191]_INST_0_i_5_n_5 ;
  wire \m_axis_tdata[191]_INST_0_i_5_n_6 ;
  wire \m_axis_tdata[191]_INST_0_i_5_n_7 ;
  wire \m_axis_tdata[191]_INST_0_i_60_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_61_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_62_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_63_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_64_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_65_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_66_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_67_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_68_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_69_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_70_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_71_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_72_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_73_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_74_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_75_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_76_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_77_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_78_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_79_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_7_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_80_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_81_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_82_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_83_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_84_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_85_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_86_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_87_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_88_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_89_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_8_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_90_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_91_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_92_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_93_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_94_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_95_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_96_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_97_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_98_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_99_n_0 ;
  wire \m_axis_tdata[191]_INST_0_i_9_n_0 ;
  wire \m_axis_tdata[193]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[194]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[195]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[196]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[197]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[198]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[199]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[19]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[1]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[200]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[201]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[202]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[203]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[204]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[205]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[206]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_100_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_101_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_102_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_103_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_104_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_105_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_106_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_107_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_108_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_109_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_10_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_110_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_111_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_112_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_113_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_114_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_115_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_116_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_11_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_12_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_13_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_14_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_15_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_16_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_17_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_18_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_19_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_20_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_21_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_22_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_23_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_24_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_25_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_26_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_26_n_1 ;
  wire \m_axis_tdata[207]_INST_0_i_26_n_2 ;
  wire \m_axis_tdata[207]_INST_0_i_26_n_3 ;
  wire \m_axis_tdata[207]_INST_0_i_26_n_4 ;
  wire \m_axis_tdata[207]_INST_0_i_26_n_5 ;
  wire \m_axis_tdata[207]_INST_0_i_26_n_6 ;
  wire \m_axis_tdata[207]_INST_0_i_26_n_7 ;
  wire \m_axis_tdata[207]_INST_0_i_27_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_28_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_29_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_30_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_31_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_32_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_33_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_34_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_35_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_36_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_37_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_38_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_39_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_3_n_1 ;
  wire \m_axis_tdata[207]_INST_0_i_3_n_2 ;
  wire \m_axis_tdata[207]_INST_0_i_3_n_3 ;
  wire \m_axis_tdata[207]_INST_0_i_3_n_4 ;
  wire \m_axis_tdata[207]_INST_0_i_3_n_5 ;
  wire \m_axis_tdata[207]_INST_0_i_3_n_6 ;
  wire \m_axis_tdata[207]_INST_0_i_3_n_7 ;
  wire \m_axis_tdata[207]_INST_0_i_40_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_41_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_42_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_43_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_44_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_45_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_46_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_47_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_48_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_49_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_4_n_1 ;
  wire \m_axis_tdata[207]_INST_0_i_4_n_2 ;
  wire \m_axis_tdata[207]_INST_0_i_4_n_3 ;
  wire \m_axis_tdata[207]_INST_0_i_4_n_4 ;
  wire \m_axis_tdata[207]_INST_0_i_4_n_5 ;
  wire \m_axis_tdata[207]_INST_0_i_4_n_6 ;
  wire \m_axis_tdata[207]_INST_0_i_4_n_7 ;
  wire \m_axis_tdata[207]_INST_0_i_50_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_51_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_52_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_53_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_54_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_55_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_56_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_57_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_58_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_59_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_60_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_61_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_62_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_63_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_64_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_65_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_66_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_67_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_68_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_69_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_70_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_71_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_72_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_73_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_74_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_75_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_76_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_77_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_78_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_79_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_7_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_80_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_81_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_82_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_83_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_84_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_85_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_86_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_87_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_88_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_89_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_8_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_90_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_91_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_92_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_93_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_94_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_95_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_96_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_97_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_98_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_99_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_9_n_0 ;
  wire \m_axis_tdata[207]_INST_0_i_9_n_1 ;
  wire \m_axis_tdata[207]_INST_0_i_9_n_2 ;
  wire \m_axis_tdata[207]_INST_0_i_9_n_3 ;
  wire \m_axis_tdata[207]_INST_0_i_9_n_4 ;
  wire \m_axis_tdata[207]_INST_0_i_9_n_5 ;
  wire \m_axis_tdata[207]_INST_0_i_9_n_6 ;
  wire \m_axis_tdata[207]_INST_0_i_9_n_7 ;
  wire \m_axis_tdata[209]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[20]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[210]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[211]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[212]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[213]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[214]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[215]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[216]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[217]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[218]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[219]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[21]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[220]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[221]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[222]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_100_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_101_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_102_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_103_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_104_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_105_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_106_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_107_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_108_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_109_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_10_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_110_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_111_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_112_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_113_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_114_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_115_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_116_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_11_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_12_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_13_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_14_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_15_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_16_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_17_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_18_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_19_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_20_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_21_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_22_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_23_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_24_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_25_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_26_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_26_n_1 ;
  wire \m_axis_tdata[223]_INST_0_i_26_n_2 ;
  wire \m_axis_tdata[223]_INST_0_i_26_n_3 ;
  wire \m_axis_tdata[223]_INST_0_i_26_n_4 ;
  wire \m_axis_tdata[223]_INST_0_i_26_n_5 ;
  wire \m_axis_tdata[223]_INST_0_i_26_n_6 ;
  wire \m_axis_tdata[223]_INST_0_i_26_n_7 ;
  wire \m_axis_tdata[223]_INST_0_i_27_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_28_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_29_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_30_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_31_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_32_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_33_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_34_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_35_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_36_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_37_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_38_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_39_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_3_n_1 ;
  wire \m_axis_tdata[223]_INST_0_i_3_n_2 ;
  wire \m_axis_tdata[223]_INST_0_i_3_n_3 ;
  wire \m_axis_tdata[223]_INST_0_i_3_n_4 ;
  wire \m_axis_tdata[223]_INST_0_i_3_n_5 ;
  wire \m_axis_tdata[223]_INST_0_i_3_n_6 ;
  wire \m_axis_tdata[223]_INST_0_i_3_n_7 ;
  wire \m_axis_tdata[223]_INST_0_i_40_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_41_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_42_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_43_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_44_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_45_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_46_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_47_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_48_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_49_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_4_n_1 ;
  wire \m_axis_tdata[223]_INST_0_i_4_n_2 ;
  wire \m_axis_tdata[223]_INST_0_i_4_n_3 ;
  wire \m_axis_tdata[223]_INST_0_i_4_n_4 ;
  wire \m_axis_tdata[223]_INST_0_i_4_n_5 ;
  wire \m_axis_tdata[223]_INST_0_i_4_n_6 ;
  wire \m_axis_tdata[223]_INST_0_i_4_n_7 ;
  wire \m_axis_tdata[223]_INST_0_i_50_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_51_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_52_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_53_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_54_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_55_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_56_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_57_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_58_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_59_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_60_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_61_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_62_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_63_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_64_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_65_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_66_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_67_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_68_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_69_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_70_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_71_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_72_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_73_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_74_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_75_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_76_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_77_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_78_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_79_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_7_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_80_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_81_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_82_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_83_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_84_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_85_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_86_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_87_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_88_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_89_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_8_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_90_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_91_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_92_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_93_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_94_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_95_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_96_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_97_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_98_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_99_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_9_n_0 ;
  wire \m_axis_tdata[223]_INST_0_i_9_n_1 ;
  wire \m_axis_tdata[223]_INST_0_i_9_n_2 ;
  wire \m_axis_tdata[223]_INST_0_i_9_n_3 ;
  wire \m_axis_tdata[223]_INST_0_i_9_n_4 ;
  wire \m_axis_tdata[223]_INST_0_i_9_n_5 ;
  wire \m_axis_tdata[223]_INST_0_i_9_n_6 ;
  wire \m_axis_tdata[223]_INST_0_i_9_n_7 ;
  wire \m_axis_tdata[225]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[226]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[227]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[228]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[229]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[22]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[230]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[231]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[232]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[233]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[234]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[235]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[236]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[237]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[238]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[238]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[238]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_100_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_101_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_102_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_103_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_104_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_105_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_106_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_107_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_108_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_109_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_10_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_110_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_111_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_112_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_113_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_114_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_11_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_12_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_13_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_14_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_15_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_16_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_17_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_18_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_19_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_1_n_1 ;
  wire \m_axis_tdata[239]_INST_0_i_1_n_2 ;
  wire \m_axis_tdata[239]_INST_0_i_1_n_3 ;
  wire \m_axis_tdata[239]_INST_0_i_1_n_4 ;
  wire \m_axis_tdata[239]_INST_0_i_1_n_5 ;
  wire \m_axis_tdata[239]_INST_0_i_1_n_6 ;
  wire \m_axis_tdata[239]_INST_0_i_1_n_7 ;
  wire \m_axis_tdata[239]_INST_0_i_20_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_21_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_21_n_1 ;
  wire \m_axis_tdata[239]_INST_0_i_21_n_2 ;
  wire \m_axis_tdata[239]_INST_0_i_21_n_3 ;
  wire \m_axis_tdata[239]_INST_0_i_21_n_4 ;
  wire \m_axis_tdata[239]_INST_0_i_21_n_5 ;
  wire \m_axis_tdata[239]_INST_0_i_21_n_6 ;
  wire \m_axis_tdata[239]_INST_0_i_21_n_7 ;
  wire \m_axis_tdata[239]_INST_0_i_22_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_23_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_24_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_25_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_26_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_27_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_28_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_29_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_2_n_1 ;
  wire \m_axis_tdata[239]_INST_0_i_2_n_2 ;
  wire \m_axis_tdata[239]_INST_0_i_2_n_3 ;
  wire \m_axis_tdata[239]_INST_0_i_2_n_4 ;
  wire \m_axis_tdata[239]_INST_0_i_2_n_5 ;
  wire \m_axis_tdata[239]_INST_0_i_2_n_6 ;
  wire \m_axis_tdata[239]_INST_0_i_2_n_7 ;
  wire \m_axis_tdata[239]_INST_0_i_30_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_31_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_32_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_33_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_34_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_35_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_36_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_37_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_38_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_39_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_40_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_41_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_42_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_43_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_44_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_45_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_46_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_47_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_48_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_49_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_4_n_1 ;
  wire \m_axis_tdata[239]_INST_0_i_4_n_2 ;
  wire \m_axis_tdata[239]_INST_0_i_4_n_3 ;
  wire \m_axis_tdata[239]_INST_0_i_4_n_4 ;
  wire \m_axis_tdata[239]_INST_0_i_4_n_5 ;
  wire \m_axis_tdata[239]_INST_0_i_4_n_6 ;
  wire \m_axis_tdata[239]_INST_0_i_4_n_7 ;
  wire \m_axis_tdata[239]_INST_0_i_50_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_51_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_52_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_53_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_54_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_55_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_56_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_57_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_58_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_59_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_60_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_61_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_62_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_63_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_64_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_65_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_66_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_67_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_68_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_69_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_70_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_71_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_72_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_73_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_74_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_75_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_76_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_77_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_78_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_79_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_7_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_80_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_81_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_82_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_83_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_84_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_85_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_86_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_87_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_88_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_89_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_8_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_90_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_91_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_92_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_93_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_94_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_95_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_96_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_97_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_98_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_99_n_0 ;
  wire \m_axis_tdata[239]_INST_0_i_9_n_0 ;
  wire \m_axis_tdata[23]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[241]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[242]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[243]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[244]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[245]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[246]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[247]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[248]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[249]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[24]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[250]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[251]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[252]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[253]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[254]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[254]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[254]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_100_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_101_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_102_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_103_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_104_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_105_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_106_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_107_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_108_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_109_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_10_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_110_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_111_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_112_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_113_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_114_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_115_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_11_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_12_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_13_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_14_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_15_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_16_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_17_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_18_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_19_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_1_n_1 ;
  wire \m_axis_tdata[255]_INST_0_i_1_n_2 ;
  wire \m_axis_tdata[255]_INST_0_i_1_n_3 ;
  wire \m_axis_tdata[255]_INST_0_i_1_n_4 ;
  wire \m_axis_tdata[255]_INST_0_i_1_n_5 ;
  wire \m_axis_tdata[255]_INST_0_i_1_n_6 ;
  wire \m_axis_tdata[255]_INST_0_i_1_n_7 ;
  wire \m_axis_tdata[255]_INST_0_i_20_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_21_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_22_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_22_n_1 ;
  wire \m_axis_tdata[255]_INST_0_i_22_n_2 ;
  wire \m_axis_tdata[255]_INST_0_i_22_n_3 ;
  wire \m_axis_tdata[255]_INST_0_i_22_n_4 ;
  wire \m_axis_tdata[255]_INST_0_i_22_n_5 ;
  wire \m_axis_tdata[255]_INST_0_i_22_n_6 ;
  wire \m_axis_tdata[255]_INST_0_i_22_n_7 ;
  wire \m_axis_tdata[255]_INST_0_i_23_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_24_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_25_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_26_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_27_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_28_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_29_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_30_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_31_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_32_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_33_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_34_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_35_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_36_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_37_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_38_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_39_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_3_n_1 ;
  wire \m_axis_tdata[255]_INST_0_i_3_n_2 ;
  wire \m_axis_tdata[255]_INST_0_i_3_n_3 ;
  wire \m_axis_tdata[255]_INST_0_i_3_n_4 ;
  wire \m_axis_tdata[255]_INST_0_i_3_n_5 ;
  wire \m_axis_tdata[255]_INST_0_i_3_n_6 ;
  wire \m_axis_tdata[255]_INST_0_i_3_n_7 ;
  wire \m_axis_tdata[255]_INST_0_i_40_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_41_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_42_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_43_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_44_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_45_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_46_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_47_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_48_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_49_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_50_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_51_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_52_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_53_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_54_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_55_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_56_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_57_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_58_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_59_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_5_n_1 ;
  wire \m_axis_tdata[255]_INST_0_i_5_n_2 ;
  wire \m_axis_tdata[255]_INST_0_i_5_n_3 ;
  wire \m_axis_tdata[255]_INST_0_i_5_n_4 ;
  wire \m_axis_tdata[255]_INST_0_i_5_n_5 ;
  wire \m_axis_tdata[255]_INST_0_i_5_n_6 ;
  wire \m_axis_tdata[255]_INST_0_i_5_n_7 ;
  wire \m_axis_tdata[255]_INST_0_i_60_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_61_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_62_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_63_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_64_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_65_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_66_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_67_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_68_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_69_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_70_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_71_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_72_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_73_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_74_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_75_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_76_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_77_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_78_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_79_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_7_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_80_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_81_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_82_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_83_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_84_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_85_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_86_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_87_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_88_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_89_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_8_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_90_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_91_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_92_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_93_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_94_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_95_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_96_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_97_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_98_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_99_n_0 ;
  wire \m_axis_tdata[255]_INST_0_i_9_n_0 ;
  wire \m_axis_tdata[25]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[26]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[27]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[28]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[29]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[2]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[30]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_100_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_101_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_102_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_103_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_104_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_105_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_106_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_107_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_108_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_109_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_10_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_110_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_111_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_112_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_113_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_114_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_115_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_116_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_11_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_12_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_13_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_14_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_15_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_16_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_17_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_18_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_19_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_20_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_21_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_22_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_23_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_24_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_25_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_26_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_26_n_1 ;
  wire \m_axis_tdata[31]_INST_0_i_26_n_2 ;
  wire \m_axis_tdata[31]_INST_0_i_26_n_3 ;
  wire \m_axis_tdata[31]_INST_0_i_26_n_4 ;
  wire \m_axis_tdata[31]_INST_0_i_26_n_5 ;
  wire \m_axis_tdata[31]_INST_0_i_26_n_6 ;
  wire \m_axis_tdata[31]_INST_0_i_26_n_7 ;
  wire \m_axis_tdata[31]_INST_0_i_27_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_28_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_29_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_30_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_31_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_32_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_33_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_34_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_35_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_36_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_37_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_38_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_39_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_3_n_1 ;
  wire \m_axis_tdata[31]_INST_0_i_3_n_2 ;
  wire \m_axis_tdata[31]_INST_0_i_3_n_3 ;
  wire \m_axis_tdata[31]_INST_0_i_3_n_4 ;
  wire \m_axis_tdata[31]_INST_0_i_3_n_5 ;
  wire \m_axis_tdata[31]_INST_0_i_3_n_6 ;
  wire \m_axis_tdata[31]_INST_0_i_3_n_7 ;
  wire \m_axis_tdata[31]_INST_0_i_40_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_41_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_42_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_43_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_44_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_45_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_46_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_47_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_48_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_49_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_4_n_1 ;
  wire \m_axis_tdata[31]_INST_0_i_4_n_2 ;
  wire \m_axis_tdata[31]_INST_0_i_4_n_3 ;
  wire \m_axis_tdata[31]_INST_0_i_4_n_4 ;
  wire \m_axis_tdata[31]_INST_0_i_4_n_5 ;
  wire \m_axis_tdata[31]_INST_0_i_4_n_6 ;
  wire \m_axis_tdata[31]_INST_0_i_4_n_7 ;
  wire \m_axis_tdata[31]_INST_0_i_50_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_51_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_52_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_53_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_54_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_55_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_56_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_57_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_58_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_59_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_60_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_61_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_62_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_63_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_64_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_65_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_66_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_67_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_68_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_69_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_70_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_71_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_72_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_73_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_74_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_75_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_76_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_77_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_78_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_79_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_7_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_80_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_81_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_82_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_83_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_84_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_85_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_86_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_87_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_88_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_89_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_8_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_90_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_91_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_92_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_93_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_94_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_95_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_96_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_97_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_98_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_99_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_9_n_0 ;
  wire \m_axis_tdata[31]_INST_0_i_9_n_1 ;
  wire \m_axis_tdata[31]_INST_0_i_9_n_2 ;
  wire \m_axis_tdata[31]_INST_0_i_9_n_3 ;
  wire \m_axis_tdata[31]_INST_0_i_9_n_4 ;
  wire \m_axis_tdata[31]_INST_0_i_9_n_5 ;
  wire \m_axis_tdata[31]_INST_0_i_9_n_6 ;
  wire \m_axis_tdata[31]_INST_0_i_9_n_7 ;
  wire \m_axis_tdata[33]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[34]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[35]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[36]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[37]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[38]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[39]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[3]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[40]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[41]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[42]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[43]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[44]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[45]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[46]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[46]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[46]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_100_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_101_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_102_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_103_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_104_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_105_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_106_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_107_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_108_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_109_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_10_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_110_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_111_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_112_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_113_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_114_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_11_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_12_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_13_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_14_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_15_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_16_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_17_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_18_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_19_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_1_n_1 ;
  wire \m_axis_tdata[47]_INST_0_i_1_n_2 ;
  wire \m_axis_tdata[47]_INST_0_i_1_n_3 ;
  wire \m_axis_tdata[47]_INST_0_i_1_n_4 ;
  wire \m_axis_tdata[47]_INST_0_i_1_n_5 ;
  wire \m_axis_tdata[47]_INST_0_i_1_n_6 ;
  wire \m_axis_tdata[47]_INST_0_i_1_n_7 ;
  wire \m_axis_tdata[47]_INST_0_i_20_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_21_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_21_n_1 ;
  wire \m_axis_tdata[47]_INST_0_i_21_n_2 ;
  wire \m_axis_tdata[47]_INST_0_i_21_n_3 ;
  wire \m_axis_tdata[47]_INST_0_i_21_n_4 ;
  wire \m_axis_tdata[47]_INST_0_i_21_n_5 ;
  wire \m_axis_tdata[47]_INST_0_i_21_n_6 ;
  wire \m_axis_tdata[47]_INST_0_i_21_n_7 ;
  wire \m_axis_tdata[47]_INST_0_i_22_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_23_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_24_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_25_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_26_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_27_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_28_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_29_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_2_n_1 ;
  wire \m_axis_tdata[47]_INST_0_i_2_n_2 ;
  wire \m_axis_tdata[47]_INST_0_i_2_n_3 ;
  wire \m_axis_tdata[47]_INST_0_i_2_n_4 ;
  wire \m_axis_tdata[47]_INST_0_i_2_n_5 ;
  wire \m_axis_tdata[47]_INST_0_i_2_n_6 ;
  wire \m_axis_tdata[47]_INST_0_i_2_n_7 ;
  wire \m_axis_tdata[47]_INST_0_i_30_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_31_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_32_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_33_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_34_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_35_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_36_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_37_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_38_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_39_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_40_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_41_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_42_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_43_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_44_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_45_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_46_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_47_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_48_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_49_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_4_n_1 ;
  wire \m_axis_tdata[47]_INST_0_i_4_n_2 ;
  wire \m_axis_tdata[47]_INST_0_i_4_n_3 ;
  wire \m_axis_tdata[47]_INST_0_i_4_n_4 ;
  wire \m_axis_tdata[47]_INST_0_i_4_n_5 ;
  wire \m_axis_tdata[47]_INST_0_i_4_n_6 ;
  wire \m_axis_tdata[47]_INST_0_i_4_n_7 ;
  wire \m_axis_tdata[47]_INST_0_i_50_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_51_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_52_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_53_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_54_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_55_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_56_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_57_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_58_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_59_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_60_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_61_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_62_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_63_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_64_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_65_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_66_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_67_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_68_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_69_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_70_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_71_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_72_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_73_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_74_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_75_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_76_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_77_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_78_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_79_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_7_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_80_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_81_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_82_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_83_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_84_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_85_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_86_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_87_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_88_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_89_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_8_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_90_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_91_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_92_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_93_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_94_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_95_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_96_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_97_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_98_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_99_n_0 ;
  wire \m_axis_tdata[47]_INST_0_i_9_n_0 ;
  wire \m_axis_tdata[49]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[4]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[50]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[51]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[52]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[53]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[54]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[55]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[56]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[57]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[58]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[59]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[5]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[60]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[61]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[62]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[62]_INST_0_i_3_n_0 ;
  wire \m_axis_tdata[62]_INST_0_i_4_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_100_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_101_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_102_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_103_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_104_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_105_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_106_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_107_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_108_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_109_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_10_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_110_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_111_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_112_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_113_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_114_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_115_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_11_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_12_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_13_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_14_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_15_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_16_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_17_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_18_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_19_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_1_n_1 ;
  wire \m_axis_tdata[63]_INST_0_i_1_n_2 ;
  wire \m_axis_tdata[63]_INST_0_i_1_n_3 ;
  wire \m_axis_tdata[63]_INST_0_i_1_n_4 ;
  wire \m_axis_tdata[63]_INST_0_i_1_n_5 ;
  wire \m_axis_tdata[63]_INST_0_i_1_n_6 ;
  wire \m_axis_tdata[63]_INST_0_i_1_n_7 ;
  wire \m_axis_tdata[63]_INST_0_i_20_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_21_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_22_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_22_n_1 ;
  wire \m_axis_tdata[63]_INST_0_i_22_n_2 ;
  wire \m_axis_tdata[63]_INST_0_i_22_n_3 ;
  wire \m_axis_tdata[63]_INST_0_i_22_n_4 ;
  wire \m_axis_tdata[63]_INST_0_i_22_n_5 ;
  wire \m_axis_tdata[63]_INST_0_i_22_n_6 ;
  wire \m_axis_tdata[63]_INST_0_i_22_n_7 ;
  wire \m_axis_tdata[63]_INST_0_i_23_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_24_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_25_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_26_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_27_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_28_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_29_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_30_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_31_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_32_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_33_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_34_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_35_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_36_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_37_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_38_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_39_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_3_n_1 ;
  wire \m_axis_tdata[63]_INST_0_i_3_n_2 ;
  wire \m_axis_tdata[63]_INST_0_i_3_n_3 ;
  wire \m_axis_tdata[63]_INST_0_i_3_n_4 ;
  wire \m_axis_tdata[63]_INST_0_i_3_n_5 ;
  wire \m_axis_tdata[63]_INST_0_i_3_n_6 ;
  wire \m_axis_tdata[63]_INST_0_i_3_n_7 ;
  wire \m_axis_tdata[63]_INST_0_i_40_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_41_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_42_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_43_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_44_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_45_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_46_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_47_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_48_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_49_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_50_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_51_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_52_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_53_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_54_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_55_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_56_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_57_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_58_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_59_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_5_n_1 ;
  wire \m_axis_tdata[63]_INST_0_i_5_n_2 ;
  wire \m_axis_tdata[63]_INST_0_i_5_n_3 ;
  wire \m_axis_tdata[63]_INST_0_i_5_n_4 ;
  wire \m_axis_tdata[63]_INST_0_i_5_n_5 ;
  wire \m_axis_tdata[63]_INST_0_i_5_n_6 ;
  wire \m_axis_tdata[63]_INST_0_i_5_n_7 ;
  wire \m_axis_tdata[63]_INST_0_i_60_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_61_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_62_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_63_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_64_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_65_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_66_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_67_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_68_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_69_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_70_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_71_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_72_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_73_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_74_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_75_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_76_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_77_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_78_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_79_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_7_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_80_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_81_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_82_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_83_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_84_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_85_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_86_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_87_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_88_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_89_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_8_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_90_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_91_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_92_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_93_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_94_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_95_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_96_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_97_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_98_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_99_n_0 ;
  wire \m_axis_tdata[63]_INST_0_i_9_n_0 ;
  wire \m_axis_tdata[65]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[66]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[67]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[68]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[69]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[6]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[70]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[71]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[72]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[73]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[74]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[75]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[76]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[77]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[78]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_100_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_101_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_102_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_103_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_104_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_105_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_106_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_107_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_108_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_109_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_10_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_110_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_111_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_112_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_113_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_114_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_115_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_116_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_11_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_12_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_13_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_14_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_15_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_16_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_17_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_18_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_19_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_20_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_21_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_22_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_23_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_24_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_25_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_26_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_26_n_1 ;
  wire \m_axis_tdata[79]_INST_0_i_26_n_2 ;
  wire \m_axis_tdata[79]_INST_0_i_26_n_3 ;
  wire \m_axis_tdata[79]_INST_0_i_26_n_4 ;
  wire \m_axis_tdata[79]_INST_0_i_26_n_5 ;
  wire \m_axis_tdata[79]_INST_0_i_26_n_6 ;
  wire \m_axis_tdata[79]_INST_0_i_26_n_7 ;
  wire \m_axis_tdata[79]_INST_0_i_27_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_28_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_29_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_30_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_31_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_32_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_33_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_34_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_35_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_36_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_37_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_38_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_39_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_3_n_1 ;
  wire \m_axis_tdata[79]_INST_0_i_3_n_2 ;
  wire \m_axis_tdata[79]_INST_0_i_3_n_3 ;
  wire \m_axis_tdata[79]_INST_0_i_3_n_4 ;
  wire \m_axis_tdata[79]_INST_0_i_3_n_5 ;
  wire \m_axis_tdata[79]_INST_0_i_3_n_6 ;
  wire \m_axis_tdata[79]_INST_0_i_3_n_7 ;
  wire \m_axis_tdata[79]_INST_0_i_40_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_41_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_42_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_43_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_44_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_45_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_46_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_47_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_48_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_49_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_4_n_1 ;
  wire \m_axis_tdata[79]_INST_0_i_4_n_2 ;
  wire \m_axis_tdata[79]_INST_0_i_4_n_3 ;
  wire \m_axis_tdata[79]_INST_0_i_4_n_4 ;
  wire \m_axis_tdata[79]_INST_0_i_4_n_5 ;
  wire \m_axis_tdata[79]_INST_0_i_4_n_6 ;
  wire \m_axis_tdata[79]_INST_0_i_4_n_7 ;
  wire \m_axis_tdata[79]_INST_0_i_50_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_51_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_52_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_53_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_54_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_55_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_56_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_57_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_58_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_59_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_60_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_61_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_62_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_63_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_64_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_65_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_66_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_67_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_68_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_69_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_70_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_71_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_72_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_73_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_74_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_75_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_76_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_77_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_78_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_79_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_7_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_80_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_81_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_82_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_83_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_84_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_85_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_86_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_87_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_88_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_89_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_8_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_90_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_91_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_92_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_93_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_94_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_95_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_96_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_97_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_98_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_99_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_9_n_0 ;
  wire \m_axis_tdata[79]_INST_0_i_9_n_1 ;
  wire \m_axis_tdata[79]_INST_0_i_9_n_2 ;
  wire \m_axis_tdata[79]_INST_0_i_9_n_3 ;
  wire \m_axis_tdata[79]_INST_0_i_9_n_4 ;
  wire \m_axis_tdata[79]_INST_0_i_9_n_5 ;
  wire \m_axis_tdata[79]_INST_0_i_9_n_6 ;
  wire \m_axis_tdata[79]_INST_0_i_9_n_7 ;
  wire \m_axis_tdata[7]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[81]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[82]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[83]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[84]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[85]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[86]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[87]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[88]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[89]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[8]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[90]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[91]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[92]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[93]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[94]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_100_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_101_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_102_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_103_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_104_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_105_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_106_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_107_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_108_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_109_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_10_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_110_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_111_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_112_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_113_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_114_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_115_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_116_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_11_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_12_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_13_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_14_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_15_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_16_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_17_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_18_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_19_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_20_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_21_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_22_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_23_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_24_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_25_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_26_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_26_n_1 ;
  wire \m_axis_tdata[95]_INST_0_i_26_n_2 ;
  wire \m_axis_tdata[95]_INST_0_i_26_n_3 ;
  wire \m_axis_tdata[95]_INST_0_i_26_n_4 ;
  wire \m_axis_tdata[95]_INST_0_i_26_n_5 ;
  wire \m_axis_tdata[95]_INST_0_i_26_n_6 ;
  wire \m_axis_tdata[95]_INST_0_i_26_n_7 ;
  wire \m_axis_tdata[95]_INST_0_i_27_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_28_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_29_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_30_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_31_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_32_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_33_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_34_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_35_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_36_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_37_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_38_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_39_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_3_n_1 ;
  wire \m_axis_tdata[95]_INST_0_i_3_n_2 ;
  wire \m_axis_tdata[95]_INST_0_i_3_n_3 ;
  wire \m_axis_tdata[95]_INST_0_i_3_n_4 ;
  wire \m_axis_tdata[95]_INST_0_i_3_n_5 ;
  wire \m_axis_tdata[95]_INST_0_i_3_n_6 ;
  wire \m_axis_tdata[95]_INST_0_i_3_n_7 ;
  wire \m_axis_tdata[95]_INST_0_i_40_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_41_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_42_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_43_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_44_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_45_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_46_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_47_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_48_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_49_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_4_n_1 ;
  wire \m_axis_tdata[95]_INST_0_i_4_n_2 ;
  wire \m_axis_tdata[95]_INST_0_i_4_n_3 ;
  wire \m_axis_tdata[95]_INST_0_i_4_n_4 ;
  wire \m_axis_tdata[95]_INST_0_i_4_n_5 ;
  wire \m_axis_tdata[95]_INST_0_i_4_n_6 ;
  wire \m_axis_tdata[95]_INST_0_i_4_n_7 ;
  wire \m_axis_tdata[95]_INST_0_i_50_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_51_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_52_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_53_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_54_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_55_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_56_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_57_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_58_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_59_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_5_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_60_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_61_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_62_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_63_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_64_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_65_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_66_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_67_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_68_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_69_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_6_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_70_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_71_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_72_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_73_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_74_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_75_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_76_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_77_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_78_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_79_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_7_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_80_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_81_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_82_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_83_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_84_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_85_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_86_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_87_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_88_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_89_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_8_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_90_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_91_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_92_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_93_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_94_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_95_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_96_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_97_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_98_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_99_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_9_n_0 ;
  wire \m_axis_tdata[95]_INST_0_i_9_n_1 ;
  wire \m_axis_tdata[95]_INST_0_i_9_n_2 ;
  wire \m_axis_tdata[95]_INST_0_i_9_n_3 ;
  wire \m_axis_tdata[95]_INST_0_i_9_n_4 ;
  wire \m_axis_tdata[95]_INST_0_i_9_n_5 ;
  wire \m_axis_tdata[95]_INST_0_i_9_n_6 ;
  wire \m_axis_tdata[95]_INST_0_i_9_n_7 ;
  wire \m_axis_tdata[97]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[98]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[99]_INST_0_i_2_n_0 ;
  wire \m_axis_tdata[9]_INST_0_i_2_n_0 ;
  wire m_axis_tready;
  wire p_0_in10_out;
  wire p_1_in15_out;
  wire p_2_in5_out;
  wire p_3_in0_out;
  wire [255:0]s_axis_tdata;
  wire s_axis_tvalid;
  wire [7:7]\NLW_clip_count_reg[31]_i_3_CO_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[111]_INST_0_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[111]_INST_0_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[111]_INST_0_i_21_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[111]_INST_0_i_4_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[127]_INST_0_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[127]_INST_0_i_22_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[127]_INST_0_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[127]_INST_0_i_5_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[143]_INST_0_i_26_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[143]_INST_0_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[143]_INST_0_i_4_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[143]_INST_0_i_9_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[159]_INST_0_i_26_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[159]_INST_0_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[159]_INST_0_i_4_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[159]_INST_0_i_9_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[15]_INST_0_i_26_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[15]_INST_0_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[15]_INST_0_i_4_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[15]_INST_0_i_9_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[175]_INST_0_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[175]_INST_0_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[175]_INST_0_i_21_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[175]_INST_0_i_4_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[191]_INST_0_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[191]_INST_0_i_22_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[191]_INST_0_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[191]_INST_0_i_5_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[207]_INST_0_i_26_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[207]_INST_0_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[207]_INST_0_i_4_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[207]_INST_0_i_9_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[223]_INST_0_i_26_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[223]_INST_0_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[223]_INST_0_i_4_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[223]_INST_0_i_9_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[239]_INST_0_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[239]_INST_0_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[239]_INST_0_i_21_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[239]_INST_0_i_4_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[255]_INST_0_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[255]_INST_0_i_22_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[255]_INST_0_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[255]_INST_0_i_5_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[31]_INST_0_i_26_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[31]_INST_0_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[31]_INST_0_i_4_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[31]_INST_0_i_9_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[47]_INST_0_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[47]_INST_0_i_2_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[47]_INST_0_i_21_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[47]_INST_0_i_4_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[63]_INST_0_i_1_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[63]_INST_0_i_22_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[63]_INST_0_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[63]_INST_0_i_5_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[79]_INST_0_i_26_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[79]_INST_0_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[79]_INST_0_i_4_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[79]_INST_0_i_9_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[95]_INST_0_i_26_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[95]_INST_0_i_3_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[95]_INST_0_i_4_O_UNCONNECTED ;
  wire [7:0]\NLW_m_axis_tdata[95]_INST_0_i_9_O_UNCONNECTED ;

  assign LIMIT_11_sp_1 = LIMIT_11_sn_1;
  assign LIMIT_12_sp_1 = LIMIT_12_sn_1;
  assign LIMIT_3_sp_1 = LIMIT_3_sn_1;
  assign LIMIT_4_sp_1 = LIMIT_4_sn_1;
  assign LIMIT_6_sp_1 = LIMIT_6_sn_1;
  assign LIMIT_7_sp_1 = LIMIT_7_sn_1;
  assign LIMIT_8_sp_1 = LIMIT_8_sn_1;
  assign LIMIT_9_sp_1 = LIMIT_9_sn_1;
  assign SCALE_SHIFT_0_sp_1 = SCALE_SHIFT_0_sn_1;
  assign SCALE_SHIFT_1_sp_1 = SCALE_SHIFT_1_sn_1;
  LUT2 #(
    .INIT(4'hB)) 
    \clip_count[31]_i_1 
       (.I0(cnt_clr),
        .I1(aresetn),
        .O(clip_count0));
  LUT2 #(
    .INIT(4'h8)) 
    \clip_count[31]_i_2 
       (.I0(s_axis_tvalid),
        .I1(m_axis_tready),
        .O(\clip_count[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \clip_count[7]_i_10 
       (.I0(\SCALE_SHIFT[0]_178 ),
        .I1(\SCALE_SHIFT[0]_179 ),
        .I2(BAND_DUAL),
        .I3(\SCALE_SHIFT[0]_180 ),
        .I4(\SCALE_SHIFT[0]_181 ),
        .O(\clip_count[7]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \clip_count[7]_i_11 
       (.I0(\SCALE_SHIFT[0]_170 ),
        .I1(\SCALE_SHIFT[0]_171 ),
        .I2(BAND_DUAL),
        .I3(\SCALE_SHIFT[0]_172 ),
        .I4(\SCALE_SHIFT[0]_173 ),
        .O(\clip_count[7]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \clip_count[7]_i_12 
       (.I0(\SCALE_SHIFT[0]_186 ),
        .I1(\SCALE_SHIFT[0]_187 ),
        .I2(BAND_DUAL),
        .I3(\SCALE_SHIFT[0]_188 ),
        .I4(\SCALE_SHIFT[0]_189 ),
        .O(\clip_count[7]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \clip_count[7]_i_2 
       (.I0(clip_count[2]),
        .I1(p_1_in15_out),
        .I2(p_2_in5_out),
        .I3(p_0_in10_out),
        .I4(p_3_in0_out),
        .O(\clip_count[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h9556566A)) 
    \clip_count[7]_i_3 
       (.I0(clip_count[1]),
        .I1(p_0_in10_out),
        .I2(p_2_in5_out),
        .I3(p_3_in0_out),
        .I4(p_1_in15_out),
        .O(\clip_count[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \clip_count[7]_i_4 
       (.I0(clip_count[0]),
        .I1(p_1_in15_out),
        .I2(p_3_in0_out),
        .I3(p_0_in10_out),
        .I4(p_2_in5_out),
        .O(\clip_count[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA8)) 
    \clip_count[7]_i_5 
       (.I0(BAND_DUAL),
        .I1(CO),
        .I2(\SCALE_SHIFT[0]_159 ),
        .I3(\SCALE_SHIFT[0]_160 ),
        .I4(\SCALE_SHIFT[0]_161 ),
        .I5(\clip_count[7]_i_9_n_0 ),
        .O(p_1_in15_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA8)) 
    \clip_count[7]_i_6 
       (.I0(BAND_DUAL),
        .I1(\SCALE_SHIFT[0]_174 ),
        .I2(\SCALE_SHIFT[0]_175 ),
        .I3(\SCALE_SHIFT[0]_176 ),
        .I4(\SCALE_SHIFT[0]_177 ),
        .I5(\clip_count[7]_i_10_n_0 ),
        .O(p_2_in5_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA8)) 
    \clip_count[7]_i_7 
       (.I0(BAND_DUAL),
        .I1(\SCALE_SHIFT[0]_166 ),
        .I2(\SCALE_SHIFT[0]_167 ),
        .I3(\SCALE_SHIFT[0]_168 ),
        .I4(\SCALE_SHIFT[0]_169 ),
        .I5(\clip_count[7]_i_11_n_0 ),
        .O(p_0_in10_out));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFA8)) 
    \clip_count[7]_i_8 
       (.I0(BAND_DUAL),
        .I1(\SCALE_SHIFT[0]_182 ),
        .I2(\SCALE_SHIFT[0]_183 ),
        .I3(\SCALE_SHIFT[0]_184 ),
        .I4(\SCALE_SHIFT[0]_185 ),
        .I5(\clip_count[7]_i_12_n_0 ),
        .O(p_3_in0_out));
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \clip_count[7]_i_9 
       (.I0(\SCALE_SHIFT[0]_162 ),
        .I1(\SCALE_SHIFT[0]_163 ),
        .I2(BAND_DUAL),
        .I3(\SCALE_SHIFT[0]_164 ),
        .I4(\SCALE_SHIFT[0]_165 ),
        .O(\clip_count[7]_i_9_n_0 ));
  FDRE \clip_count_reg[0] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[7]_i_1_n_15 ),
        .Q(clip_count[0]),
        .R(clip_count0));
  FDRE \clip_count_reg[10] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[15]_i_1_n_13 ),
        .Q(clip_count[10]),
        .R(clip_count0));
  FDRE \clip_count_reg[11] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[15]_i_1_n_12 ),
        .Q(clip_count[11]),
        .R(clip_count0));
  FDRE \clip_count_reg[12] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[15]_i_1_n_11 ),
        .Q(clip_count[12]),
        .R(clip_count0));
  FDRE \clip_count_reg[13] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[15]_i_1_n_10 ),
        .Q(clip_count[13]),
        .R(clip_count0));
  FDRE \clip_count_reg[14] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[15]_i_1_n_9 ),
        .Q(clip_count[14]),
        .R(clip_count0));
  FDRE \clip_count_reg[15] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[15]_i_1_n_8 ),
        .Q(clip_count[15]),
        .R(clip_count0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \clip_count_reg[15]_i_1 
       (.CI(\clip_count_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\clip_count_reg[15]_i_1_n_0 ,\clip_count_reg[15]_i_1_n_1 ,\clip_count_reg[15]_i_1_n_2 ,\clip_count_reg[15]_i_1_n_3 ,\clip_count_reg[15]_i_1_n_4 ,\clip_count_reg[15]_i_1_n_5 ,\clip_count_reg[15]_i_1_n_6 ,\clip_count_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\clip_count_reg[15]_i_1_n_8 ,\clip_count_reg[15]_i_1_n_9 ,\clip_count_reg[15]_i_1_n_10 ,\clip_count_reg[15]_i_1_n_11 ,\clip_count_reg[15]_i_1_n_12 ,\clip_count_reg[15]_i_1_n_13 ,\clip_count_reg[15]_i_1_n_14 ,\clip_count_reg[15]_i_1_n_15 }),
        .S(clip_count[15:8]));
  FDRE \clip_count_reg[16] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[23]_i_1_n_15 ),
        .Q(clip_count[16]),
        .R(clip_count0));
  FDRE \clip_count_reg[17] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[23]_i_1_n_14 ),
        .Q(clip_count[17]),
        .R(clip_count0));
  FDRE \clip_count_reg[18] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[23]_i_1_n_13 ),
        .Q(clip_count[18]),
        .R(clip_count0));
  FDRE \clip_count_reg[19] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[23]_i_1_n_12 ),
        .Q(clip_count[19]),
        .R(clip_count0));
  FDRE \clip_count_reg[1] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[7]_i_1_n_14 ),
        .Q(clip_count[1]),
        .R(clip_count0));
  FDRE \clip_count_reg[20] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[23]_i_1_n_11 ),
        .Q(clip_count[20]),
        .R(clip_count0));
  FDRE \clip_count_reg[21] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[23]_i_1_n_10 ),
        .Q(clip_count[21]),
        .R(clip_count0));
  FDRE \clip_count_reg[22] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[23]_i_1_n_9 ),
        .Q(clip_count[22]),
        .R(clip_count0));
  FDRE \clip_count_reg[23] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[23]_i_1_n_8 ),
        .Q(clip_count[23]),
        .R(clip_count0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \clip_count_reg[23]_i_1 
       (.CI(\clip_count_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\clip_count_reg[23]_i_1_n_0 ,\clip_count_reg[23]_i_1_n_1 ,\clip_count_reg[23]_i_1_n_2 ,\clip_count_reg[23]_i_1_n_3 ,\clip_count_reg[23]_i_1_n_4 ,\clip_count_reg[23]_i_1_n_5 ,\clip_count_reg[23]_i_1_n_6 ,\clip_count_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\clip_count_reg[23]_i_1_n_8 ,\clip_count_reg[23]_i_1_n_9 ,\clip_count_reg[23]_i_1_n_10 ,\clip_count_reg[23]_i_1_n_11 ,\clip_count_reg[23]_i_1_n_12 ,\clip_count_reg[23]_i_1_n_13 ,\clip_count_reg[23]_i_1_n_14 ,\clip_count_reg[23]_i_1_n_15 }),
        .S(clip_count[23:16]));
  FDRE \clip_count_reg[24] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[31]_i_3_n_15 ),
        .Q(clip_count[24]),
        .R(clip_count0));
  FDRE \clip_count_reg[25] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[31]_i_3_n_14 ),
        .Q(clip_count[25]),
        .R(clip_count0));
  FDRE \clip_count_reg[26] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[31]_i_3_n_13 ),
        .Q(clip_count[26]),
        .R(clip_count0));
  FDRE \clip_count_reg[27] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[31]_i_3_n_12 ),
        .Q(clip_count[27]),
        .R(clip_count0));
  FDRE \clip_count_reg[28] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[31]_i_3_n_11 ),
        .Q(clip_count[28]),
        .R(clip_count0));
  FDRE \clip_count_reg[29] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[31]_i_3_n_10 ),
        .Q(clip_count[29]),
        .R(clip_count0));
  FDRE \clip_count_reg[2] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[7]_i_1_n_13 ),
        .Q(clip_count[2]),
        .R(clip_count0));
  FDRE \clip_count_reg[30] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[31]_i_3_n_9 ),
        .Q(clip_count[30]),
        .R(clip_count0));
  FDRE \clip_count_reg[31] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[31]_i_3_n_8 ),
        .Q(clip_count[31]),
        .R(clip_count0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \clip_count_reg[31]_i_3 
       (.CI(\clip_count_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_clip_count_reg[31]_i_3_CO_UNCONNECTED [7],\clip_count_reg[31]_i_3_n_1 ,\clip_count_reg[31]_i_3_n_2 ,\clip_count_reg[31]_i_3_n_3 ,\clip_count_reg[31]_i_3_n_4 ,\clip_count_reg[31]_i_3_n_5 ,\clip_count_reg[31]_i_3_n_6 ,\clip_count_reg[31]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\clip_count_reg[31]_i_3_n_8 ,\clip_count_reg[31]_i_3_n_9 ,\clip_count_reg[31]_i_3_n_10 ,\clip_count_reg[31]_i_3_n_11 ,\clip_count_reg[31]_i_3_n_12 ,\clip_count_reg[31]_i_3_n_13 ,\clip_count_reg[31]_i_3_n_14 ,\clip_count_reg[31]_i_3_n_15 }),
        .S(clip_count[31:24]));
  FDRE \clip_count_reg[3] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[7]_i_1_n_12 ),
        .Q(clip_count[3]),
        .R(clip_count0));
  FDRE \clip_count_reg[4] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[7]_i_1_n_11 ),
        .Q(clip_count[4]),
        .R(clip_count0));
  FDRE \clip_count_reg[5] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[7]_i_1_n_10 ),
        .Q(clip_count[5]),
        .R(clip_count0));
  FDRE \clip_count_reg[6] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[7]_i_1_n_9 ),
        .Q(clip_count[6]),
        .R(clip_count0));
  FDRE \clip_count_reg[7] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[7]_i_1_n_8 ),
        .Q(clip_count[7]),
        .R(clip_count0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 \clip_count_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\clip_count_reg[7]_i_1_n_0 ,\clip_count_reg[7]_i_1_n_1 ,\clip_count_reg[7]_i_1_n_2 ,\clip_count_reg[7]_i_1_n_3 ,\clip_count_reg[7]_i_1_n_4 ,\clip_count_reg[7]_i_1_n_5 ,\clip_count_reg[7]_i_1_n_6 ,\clip_count_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,clip_count[2:0]}),
        .O({\clip_count_reg[7]_i_1_n_8 ,\clip_count_reg[7]_i_1_n_9 ,\clip_count_reg[7]_i_1_n_10 ,\clip_count_reg[7]_i_1_n_11 ,\clip_count_reg[7]_i_1_n_12 ,\clip_count_reg[7]_i_1_n_13 ,\clip_count_reg[7]_i_1_n_14 ,\clip_count_reg[7]_i_1_n_15 }),
        .S({clip_count[7:3],\clip_count[7]_i_2_n_0 ,\clip_count[7]_i_3_n_0 ,\clip_count[7]_i_4_n_0 }));
  FDRE \clip_count_reg[8] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[15]_i_1_n_15 ),
        .Q(clip_count[8]),
        .R(clip_count0));
  FDRE \clip_count_reg[9] 
       (.C(aclk),
        .CE(\clip_count[31]_i_2_n_0 ),
        .D(\clip_count_reg[15]_i_1_n_14 ),
        .Q(clip_count[9]),
        .R(clip_count0));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[0]_INST_0_i_1 
       (.I0(SCALE_SHIFT[1]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[0]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(SCALE_SHIFT[0]),
        .O(SCALE_SHIFT_1_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[100]_INST_0_i_1 
       (.I0(\m_axis_tdata[100]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[101]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_62 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[100]_INST_0_i_2 
       (.I0(s_axis_tdata[97]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[99]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[100]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair156" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[101]_INST_0_i_1 
       (.I0(\m_axis_tdata[101]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[102]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_63 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[101]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[98]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[103]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[101]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[102]_INST_0_i_1 
       (.I0(\m_axis_tdata[103]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[105]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[102]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_32 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[102]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[99]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[104]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[102]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[103]_INST_0_i_1 
       (.I0(\m_axis_tdata[103]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[105]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[104]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[106]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_66 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[103]_INST_0_i_2 
       (.I0(s_axis_tdata[96]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[100]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[103]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[104]_INST_0_i_1 
       (.I0(\m_axis_tdata[104]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[106]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[105]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[107]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_64 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[104]_INST_0_i_2 
       (.I0(s_axis_tdata[97]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[101]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[104]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[105]_INST_0_i_1 
       (.I0(\m_axis_tdata[105]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[107]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[106]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[108]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_65 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[105]_INST_0_i_2 
       (.I0(s_axis_tdata[98]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[102]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[105]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[106]_INST_0_i_1 
       (.I0(\m_axis_tdata[106]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[108]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[107]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[109]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_67 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[106]_INST_0_i_2 
       (.I0(s_axis_tdata[99]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[103]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[106]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[107]_INST_0_i_1 
       (.I0(\m_axis_tdata[107]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[109]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[108]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[110]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_68 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[107]_INST_0_i_2 
       (.I0(s_axis_tdata[100]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[96]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[104]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[107]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[108]_INST_0_i_1 
       (.I0(\m_axis_tdata[108]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[110]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[109]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[111]_INST_0_i_38_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_28 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[108]_INST_0_i_2 
       (.I0(s_axis_tdata[101]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[97]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[105]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[108]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \m_axis_tdata[109]_INST_0_i_1 
       (.I0(\m_axis_tdata[110]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[110]_INST_0_i_3_n_0 ),
        .I3(\m_axis_tdata[109]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[111]_INST_0_i_38_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_29 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[109]_INST_0_i_2 
       (.I0(s_axis_tdata[102]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[98]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[106]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[109]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[10]_INST_0_i_1 
       (.I0(\m_axis_tdata[10]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[12]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[11]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[13]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_7 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[10]_INST_0_i_2 
       (.I0(s_axis_tdata[3]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[7]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[10]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[110]_INST_0_i_1 
       (.I0(\m_axis_tdata[110]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[110]_INST_0_i_3_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_38_n_0 ),
        .I4(\m_axis_tdata[111]_INST_0_i_39_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_30 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[110]_INST_0_i_2 
       (.I0(s_axis_tdata[103]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[99]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[107]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[110]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[110]_INST_0_i_3 
       (.I0(s_axis_tdata[97]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[105]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[110]_INST_0_i_4_n_0 ),
        .O(\m_axis_tdata[110]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[110]_INST_0_i_4 
       (.I0(s_axis_tdata[101]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[109]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[110]_INST_0_i_4_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[111]_INST_0_i_1 
       (.CI(\m_axis_tdata[111]_INST_0_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_170 ,\m_axis_tdata[111]_INST_0_i_1_n_1 ,\m_axis_tdata[111]_INST_0_i_1_n_2 ,\m_axis_tdata[111]_INST_0_i_1_n_3 ,\m_axis_tdata[111]_INST_0_i_1_n_4 ,\m_axis_tdata[111]_INST_0_i_1_n_5 ,\m_axis_tdata[111]_INST_0_i_1_n_6 ,\m_axis_tdata[111]_INST_0_i_1_n_7 }),
        .DI({\m_axis_tdata[111]_INST_0_i_5_n_0 ,\m_axis_tdata[111]_INST_0_i_6_n_0 ,\m_axis_tdata[111]_INST_0_i_7_n_0 ,\m_axis_tdata[111]_INST_0_i_8_n_0 ,\m_axis_tdata[111]_INST_0_i_9_n_0 ,\m_axis_tdata[111]_INST_0_i_10_n_0 ,\m_axis_tdata[111]_INST_0_i_11_n_0 ,\m_axis_tdata[111]_INST_0_i_12_n_0 }),
        .O(\NLW_m_axis_tdata[111]_INST_0_i_1_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[111]_INST_0_i_13_n_0 ,\m_axis_tdata[111]_INST_0_i_14_n_0 ,\m_axis_tdata[111]_INST_0_i_15_n_0 ,\m_axis_tdata[111]_INST_0_i_16_n_0 ,\m_axis_tdata[111]_INST_0_i_17_n_0 ,\m_axis_tdata[111]_INST_0_i_18_n_0 ,\m_axis_tdata[111]_INST_0_i_19_n_0 ,\m_axis_tdata[111]_INST_0_i_20_n_0 }));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[111]_INST_0_i_10 
       (.I0(\m_axis_tdata[111]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[111]_INST_0_i_100 
       (.I0(s_axis_tdata[97]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[105]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[111]),
        .O(\m_axis_tdata[111]_INST_0_i_100_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[111]_INST_0_i_101 
       (.I0(s_axis_tdata[110]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[102]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[111]),
        .O(\m_axis_tdata[111]_INST_0_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888888)) 
    \m_axis_tdata[111]_INST_0_i_102 
       (.I0(\m_axis_tdata[111]_INST_0_i_114_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[103]),
        .I4(SCALE_SHIFT[4]),
        .I5(s_axis_tdata[111]),
        .O(\m_axis_tdata[111]_INST_0_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[111]_INST_0_i_103 
       (.I0(s_axis_tdata[108]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[100]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[111]),
        .O(\m_axis_tdata[111]_INST_0_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[111]_INST_0_i_104 
       (.I0(s_axis_tdata[105]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[97]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[111]),
        .O(\m_axis_tdata[111]_INST_0_i_104_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[111]_INST_0_i_105 
       (.I0(s_axis_tdata[106]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[98]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[111]),
        .O(\m_axis_tdata[111]_INST_0_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[111]_INST_0_i_106 
       (.I0(s_axis_tdata[103]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[111]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[111]_INST_0_i_114_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_106_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[111]_INST_0_i_107 
       (.I0(s_axis_tdata[104]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[96]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[111]),
        .O(\m_axis_tdata[111]_INST_0_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[111]_INST_0_i_108 
       (.I0(s_axis_tdata[101]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[109]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[111]_INST_0_i_104_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[111]_INST_0_i_109 
       (.I0(s_axis_tdata[102]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[110]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[111]_INST_0_i_105_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_109_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[111]_INST_0_i_11 
       (.I0(\m_axis_tdata[111]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[111]_INST_0_i_110 
       (.I0(s_axis_tdata[100]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[108]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[111]_INST_0_i_107_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_110_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[111]_INST_0_i_111 
       (.I0(s_axis_tdata[103]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[111]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[111]_INST_0_i_111_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[111]_INST_0_i_112 
       (.I0(s_axis_tdata[99]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[107]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[111]),
        .O(\m_axis_tdata[111]_INST_0_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[111]_INST_0_i_113 
       (.I0(s_axis_tdata[101]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[109]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[111]),
        .O(\m_axis_tdata[111]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[111]_INST_0_i_114 
       (.I0(s_axis_tdata[107]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[99]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[111]),
        .O(\m_axis_tdata[111]_INST_0_i_114_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[111]_INST_0_i_12 
       (.I0(\m_axis_tdata[111]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \m_axis_tdata[111]_INST_0_i_13 
       (.I0(\m_axis_tdata[111]_INST_0_i_57_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_58_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_59_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[111]_INST_0_i_14 
       (.I0(\m_axis_tdata[111]_INST_0_i_60_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_61_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_57_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[111]_INST_0_i_15 
       (.I0(\m_axis_tdata[111]_INST_0_i_62_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_63_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_60_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[111]_INST_0_i_16 
       (.I0(\m_axis_tdata[111]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_65_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_62_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[111]_INST_0_i_17 
       (.I0(\m_axis_tdata[111]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_64_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[111]_INST_0_i_18 
       (.I0(\m_axis_tdata[111]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[111]_INST_0_i_19 
       (.I0(\m_axis_tdata[111]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_19_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[111]_INST_0_i_2 
       (.CI(\m_axis_tdata[111]_INST_0_i_21_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_171 ,\m_axis_tdata[111]_INST_0_i_2_n_1 ,\m_axis_tdata[111]_INST_0_i_2_n_2 ,\m_axis_tdata[111]_INST_0_i_2_n_3 ,\m_axis_tdata[111]_INST_0_i_2_n_4 ,\m_axis_tdata[111]_INST_0_i_2_n_5 ,\m_axis_tdata[111]_INST_0_i_2_n_6 ,\m_axis_tdata[111]_INST_0_i_2_n_7 }),
        .DI({\m_axis_tdata[111]_INST_0_i_22_n_0 ,\m_axis_tdata[111]_INST_0_i_23_n_0 ,\m_axis_tdata[111]_INST_0_i_24_n_0 ,\m_axis_tdata[111]_INST_0_i_25_n_0 ,\m_axis_tdata[111]_INST_0_i_26_n_0 ,\m_axis_tdata[111]_INST_0_i_27_n_0 ,\m_axis_tdata[111]_INST_0_i_28_n_0 ,\m_axis_tdata[111]_INST_0_i_29_n_0 }),
        .O(\NLW_m_axis_tdata[111]_INST_0_i_2_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[111]_INST_0_i_30_n_0 ,\m_axis_tdata[111]_INST_0_i_31_n_0 ,\m_axis_tdata[111]_INST_0_i_32_n_0 ,\m_axis_tdata[111]_INST_0_i_33_n_0 ,\m_axis_tdata[111]_INST_0_i_34_n_0 ,\m_axis_tdata[111]_INST_0_i_35_n_0 ,\m_axis_tdata[111]_INST_0_i_36_n_0 ,\m_axis_tdata[111]_INST_0_i_37_n_0 }));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[111]_INST_0_i_20 
       (.I0(\m_axis_tdata[111]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_20_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[111]_INST_0_i_21 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[111]_INST_0_i_21_n_0 ,\m_axis_tdata[111]_INST_0_i_21_n_1 ,\m_axis_tdata[111]_INST_0_i_21_n_2 ,\m_axis_tdata[111]_INST_0_i_21_n_3 ,\m_axis_tdata[111]_INST_0_i_21_n_4 ,\m_axis_tdata[111]_INST_0_i_21_n_5 ,\m_axis_tdata[111]_INST_0_i_21_n_6 ,\m_axis_tdata[111]_INST_0_i_21_n_7 }),
        .DI({\m_axis_tdata[111]_INST_0_i_73_n_0 ,\m_axis_tdata[111]_INST_0_i_74_n_0 ,\m_axis_tdata[111]_INST_0_i_75_n_0 ,\m_axis_tdata[111]_INST_0_i_76_n_0 ,\m_axis_tdata[111]_INST_0_i_77_n_0 ,\m_axis_tdata[111]_INST_0_i_78_n_0 ,\m_axis_tdata[111]_INST_0_i_79_n_0 ,\m_axis_tdata[111]_INST_0_i_80_n_0 }),
        .O(\NLW_m_axis_tdata[111]_INST_0_i_21_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[111]_INST_0_i_81_n_0 ,\m_axis_tdata[111]_INST_0_i_82_n_0 ,\m_axis_tdata[111]_INST_0_i_83_n_0 ,\m_axis_tdata[111]_INST_0_i_84_n_0 ,\m_axis_tdata[111]_INST_0_i_85_n_0 ,\m_axis_tdata[111]_INST_0_i_86_n_0 ,\m_axis_tdata[111]_INST_0_i_87_n_0 ,\m_axis_tdata[111]_INST_0_i_88_n_0 }));
  LUT5 #(
    .INIT(32'hFF004700)) 
    \m_axis_tdata[111]_INST_0_i_22 
       (.I0(\m_axis_tdata[111]_INST_0_i_57_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_58_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_59_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[111]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[111]_INST_0_i_23 
       (.I0(\m_axis_tdata[111]_INST_0_i_60_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_61_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_57_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[111]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[111]_INST_0_i_24 
       (.I0(\m_axis_tdata[111]_INST_0_i_62_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_63_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_60_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[111]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[111]_INST_0_i_25 
       (.I0(\m_axis_tdata[111]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_65_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_62_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[111]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[111]_INST_0_i_26 
       (.I0(\m_axis_tdata[111]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_64_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[111]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[111]_INST_0_i_27 
       (.I0(\m_axis_tdata[111]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[111]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[111]_INST_0_i_28 
       (.I0(\m_axis_tdata[111]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[111]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[111]_INST_0_i_29 
       (.I0(\m_axis_tdata[111]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[111]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[111]_INST_0_i_3 
       (.I0(\m_axis_tdata[111]_INST_0_i_38_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[111]_INST_0_i_39_n_0 ),
        .I3(SCALE_SHIFT[0]),
        .I4(\m_axis_tdata[111]_INST_0_i_40_n_0 ),
        .O(\SCALE_SHIFT[1]_31 ));
  LUT5 #(
    .INIT(32'h0047B800)) 
    \m_axis_tdata[111]_INST_0_i_30 
       (.I0(\m_axis_tdata[111]_INST_0_i_57_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_58_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_59_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[111]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[111]_INST_0_i_31 
       (.I0(\m_axis_tdata[111]_INST_0_i_60_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_61_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_57_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[111]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[111]_INST_0_i_32 
       (.I0(\m_axis_tdata[111]_INST_0_i_62_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_63_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_60_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[111]_INST_0_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[111]_INST_0_i_33 
       (.I0(\m_axis_tdata[111]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_65_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_62_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[111]_INST_0_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[111]_INST_0_i_34 
       (.I0(\m_axis_tdata[111]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_64_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[111]_INST_0_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[111]_INST_0_i_35 
       (.I0(\m_axis_tdata[111]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[111]_INST_0_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[111]_INST_0_i_36 
       (.I0(\m_axis_tdata[111]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[111]_INST_0_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[111]_INST_0_i_37 
       (.I0(\m_axis_tdata[111]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[111]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[111]_INST_0_i_38 
       (.I0(s_axis_tdata[96]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[104]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[111]_INST_0_i_89_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[111]_INST_0_i_39 
       (.I0(s_axis_tdata[98]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[106]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[111]_INST_0_i_90_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_39_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[111]_INST_0_i_4 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[111]_INST_0_i_4_n_0 ,\m_axis_tdata[111]_INST_0_i_4_n_1 ,\m_axis_tdata[111]_INST_0_i_4_n_2 ,\m_axis_tdata[111]_INST_0_i_4_n_3 ,\m_axis_tdata[111]_INST_0_i_4_n_4 ,\m_axis_tdata[111]_INST_0_i_4_n_5 ,\m_axis_tdata[111]_INST_0_i_4_n_6 ,\m_axis_tdata[111]_INST_0_i_4_n_7 }),
        .DI({\m_axis_tdata[111]_INST_0_i_41_n_0 ,\m_axis_tdata[111]_INST_0_i_42_n_0 ,\m_axis_tdata[111]_INST_0_i_43_n_0 ,\m_axis_tdata[111]_INST_0_i_44_n_0 ,\m_axis_tdata[111]_INST_0_i_45_n_0 ,\m_axis_tdata[111]_INST_0_i_46_n_0 ,\m_axis_tdata[111]_INST_0_i_47_n_0 ,\m_axis_tdata[111]_INST_0_i_48_n_0 }),
        .O(\NLW_m_axis_tdata[111]_INST_0_i_4_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[111]_INST_0_i_49_n_0 ,\m_axis_tdata[111]_INST_0_i_50_n_0 ,\m_axis_tdata[111]_INST_0_i_51_n_0 ,\m_axis_tdata[111]_INST_0_i_52_n_0 ,\m_axis_tdata[111]_INST_0_i_53_n_0 ,\m_axis_tdata[111]_INST_0_i_54_n_0 ,\m_axis_tdata[111]_INST_0_i_55_n_0 ,\m_axis_tdata[111]_INST_0_i_56_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[111]_INST_0_i_40 
       (.I0(\m_axis_tdata[110]_INST_0_i_3_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[111]_INST_0_i_91_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_40_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[111]_INST_0_i_41 
       (.I0(\SCALE_SHIFT[1]_30 ),
        .I1(\SCALE_SHIFT[1]_31 ),
        .O(\m_axis_tdata[111]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[111]_INST_0_i_42 
       (.I0(\SCALE_SHIFT[1]_28 ),
        .I1(LIMIT[12]),
        .I2(LIMIT[13]),
        .I3(\SCALE_SHIFT[1]_29 ),
        .O(\m_axis_tdata[111]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[111]_INST_0_i_43 
       (.I0(\SCALE_SHIFT[0]_67 ),
        .I1(LIMIT[10]),
        .I2(LIMIT[11]),
        .I3(\SCALE_SHIFT[0]_68 ),
        .O(\m_axis_tdata[111]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[111]_INST_0_i_44 
       (.I0(\SCALE_SHIFT[0]_64 ),
        .I1(LIMIT[8]),
        .I2(LIMIT[9]),
        .I3(\SCALE_SHIFT[0]_65 ),
        .O(\m_axis_tdata[111]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[111]_INST_0_i_45 
       (.I0(\SCALE_SHIFT[1]_32 ),
        .I1(LIMIT[6]),
        .I2(LIMIT[7]),
        .I3(\SCALE_SHIFT[0]_66 ),
        .O(\m_axis_tdata[111]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[111]_INST_0_i_46 
       (.I0(\SCALE_SHIFT[0]_62 ),
        .I1(LIMIT[4]),
        .I2(LIMIT[5]),
        .I3(\SCALE_SHIFT[0]_63 ),
        .O(\m_axis_tdata[111]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[111]_INST_0_i_47 
       (.I0(\SCALE_SHIFT[0]_60 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[3]),
        .I3(\SCALE_SHIFT[0]_61 ),
        .O(\m_axis_tdata[111]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[111]_INST_0_i_48 
       (.I0(\SCALE_SHIFT[1]_27 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_59 ),
        .O(\m_axis_tdata[111]_INST_0_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata[111]_INST_0_i_49 
       (.I0(\SCALE_SHIFT[1]_30 ),
        .I1(\SCALE_SHIFT[1]_31 ),
        .O(\m_axis_tdata[111]_INST_0_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[111]_INST_0_i_5 
       (.I0(\m_axis_tdata[111]_INST_0_i_57_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_58_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_59_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[111]_INST_0_i_50 
       (.I0(\SCALE_SHIFT[1]_28 ),
        .I1(LIMIT[12]),
        .I2(\SCALE_SHIFT[1]_29 ),
        .I3(LIMIT[13]),
        .O(\m_axis_tdata[111]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[111]_INST_0_i_51 
       (.I0(\SCALE_SHIFT[0]_67 ),
        .I1(LIMIT[10]),
        .I2(\SCALE_SHIFT[0]_68 ),
        .I3(LIMIT[11]),
        .O(\m_axis_tdata[111]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[111]_INST_0_i_52 
       (.I0(\SCALE_SHIFT[0]_64 ),
        .I1(LIMIT[8]),
        .I2(\SCALE_SHIFT[0]_65 ),
        .I3(LIMIT[9]),
        .O(\m_axis_tdata[111]_INST_0_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[111]_INST_0_i_53 
       (.I0(\SCALE_SHIFT[1]_32 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[0]_66 ),
        .I3(LIMIT[7]),
        .O(\m_axis_tdata[111]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[111]_INST_0_i_54 
       (.I0(\SCALE_SHIFT[0]_62 ),
        .I1(LIMIT[4]),
        .I2(\SCALE_SHIFT[0]_63 ),
        .I3(LIMIT[5]),
        .O(\m_axis_tdata[111]_INST_0_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[111]_INST_0_i_55 
       (.I0(\SCALE_SHIFT[0]_60 ),
        .I1(LIMIT[2]),
        .I2(\SCALE_SHIFT[0]_61 ),
        .I3(LIMIT[3]),
        .O(\m_axis_tdata[111]_INST_0_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[111]_INST_0_i_56 
       (.I0(\SCALE_SHIFT[1]_27 ),
        .I1(LIMIT[0]),
        .I2(\SCALE_SHIFT[0]_59 ),
        .I3(LIMIT[1]),
        .O(\m_axis_tdata[111]_INST_0_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[111]_INST_0_i_57 
       (.I0(\m_axis_tdata[111]_INST_0_i_92_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[111]_INST_0_i_93_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \m_axis_tdata[111]_INST_0_i_58 
       (.I0(\m_axis_tdata[111]_INST_0_i_94_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[111]_INST_0_i_95_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[111]_INST_0_i_96_n_0 ),
        .I5(\m_axis_tdata[111]_INST_0_i_97_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_58_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[111]_INST_0_i_59 
       (.I0(\m_axis_tdata[111]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_93_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[111]_INST_0_i_98_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_59_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[111]_INST_0_i_6 
       (.I0(\m_axis_tdata[111]_INST_0_i_60_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_61_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_57_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[111]_INST_0_i_60 
       (.I0(\m_axis_tdata[111]_INST_0_i_99_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[111]_INST_0_i_100_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[111]_INST_0_i_92_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[111]_INST_0_i_61 
       (.I0(\m_axis_tdata[111]_INST_0_i_101_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[111]_INST_0_i_96_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_94_n_0 ),
        .I4(\m_axis_tdata[111]_INST_0_i_95_n_0 ),
        .I5(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[111]_INST_0_i_61_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[111]_INST_0_i_62 
       (.I0(\m_axis_tdata[111]_INST_0_i_99_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[111]_INST_0_i_100_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_102_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[111]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[111]_INST_0_i_63 
       (.I0(\m_axis_tdata[111]_INST_0_i_103_n_0 ),
        .I1(\m_axis_tdata[111]_INST_0_i_94_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[111]_INST_0_i_101_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[111]_INST_0_i_96_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_63_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[111]_INST_0_i_64 
       (.I0(\m_axis_tdata[111]_INST_0_i_104_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[111]_INST_0_i_99_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[111]_INST_0_i_102_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[111]_INST_0_i_65 
       (.I0(\m_axis_tdata[111]_INST_0_i_105_n_0 ),
        .I1(\m_axis_tdata[111]_INST_0_i_101_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[111]_INST_0_i_103_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[111]_INST_0_i_94_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_65_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[111]_INST_0_i_66 
       (.I0(\m_axis_tdata[111]_INST_0_i_104_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[111]_INST_0_i_99_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_106_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[111]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[111]_INST_0_i_67 
       (.I0(\m_axis_tdata[111]_INST_0_i_107_n_0 ),
        .I1(\m_axis_tdata[111]_INST_0_i_103_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[111]_INST_0_i_105_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[111]_INST_0_i_101_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_67_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair153" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[111]_INST_0_i_68 
       (.I0(\m_axis_tdata[111]_INST_0_i_108_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[111]_INST_0_i_106_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_68_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[111]_INST_0_i_69 
       (.I0(\m_axis_tdata[111]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[111]_INST_0_i_103_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_109_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[111]_INST_0_i_69_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[111]_INST_0_i_7 
       (.I0(\m_axis_tdata[111]_INST_0_i_62_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_63_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_60_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair155" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[111]_INST_0_i_70 
       (.I0(\m_axis_tdata[111]_INST_0_i_91_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[111]_INST_0_i_108_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[111]_INST_0_i_71 
       (.I0(\m_axis_tdata[111]_INST_0_i_110_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[111]_INST_0_i_109_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_71_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair152" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[111]_INST_0_i_72 
       (.I0(\m_axis_tdata[111]_INST_0_i_39_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[111]_INST_0_i_110_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_72_n_0 ));
  LUT3 #(
    .INIT(8'h13)) 
    \m_axis_tdata[111]_INST_0_i_73 
       (.I0(\SCALE_SHIFT[1]_30 ),
        .I1(\LIMIT[12]_1 ),
        .I2(\SCALE_SHIFT[1]_31 ),
        .O(\m_axis_tdata[111]_INST_0_i_73_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[111]_INST_0_i_74 
       (.I0(\SCALE_SHIFT[1]_28 ),
        .I1(LIMIT_11_sn_1),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_29 ),
        .O(\m_axis_tdata[111]_INST_0_i_74_n_0 ));
  LUT5 #(
    .INIT(32'h0009999F)) 
    \m_axis_tdata[111]_INST_0_i_75 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\SCALE_SHIFT[0]_67 ),
        .I3(\LIMIT[9]_0 ),
        .I4(\SCALE_SHIFT[0]_68 ),
        .O(\m_axis_tdata[111]_INST_0_i_75_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[111]_INST_0_i_76 
       (.I0(\SCALE_SHIFT[0]_64 ),
        .I1(LIMIT_7_sn_1),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_65 ),
        .O(\m_axis_tdata[111]_INST_0_i_76_n_0 ));
  LUT5 #(
    .INIT(32'h000909FF)) 
    \m_axis_tdata[111]_INST_0_i_77 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_32 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_66 ),
        .O(\m_axis_tdata[111]_INST_0_i_77_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[111]_INST_0_i_78 
       (.I0(\SCALE_SHIFT[0]_62 ),
        .I1(LIMIT_3_sn_1),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_63 ),
        .O(\m_axis_tdata[111]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h000011141117FFFC)) 
    \m_axis_tdata[111]_INST_0_i_79 
       (.I0(\SCALE_SHIFT[0]_60 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_61 ),
        .O(\m_axis_tdata[111]_INST_0_i_79_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[111]_INST_0_i_8 
       (.I0(\m_axis_tdata[111]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_65_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_62_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h047C)) 
    \m_axis_tdata[111]_INST_0_i_80 
       (.I0(\SCALE_SHIFT[1]_27 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_59 ),
        .O(\m_axis_tdata[111]_INST_0_i_80_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \m_axis_tdata[111]_INST_0_i_81 
       (.I0(\SCALE_SHIFT[1]_30 ),
        .I1(\LIMIT[12]_1 ),
        .I2(\SCALE_SHIFT[1]_31 ),
        .O(\m_axis_tdata[111]_INST_0_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[111]_INST_0_i_82 
       (.I0(LIMIT_11_sn_1),
        .I1(\SCALE_SHIFT[1]_28 ),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_29 ),
        .O(\m_axis_tdata[111]_INST_0_i_82_n_0 ));
  LUT5 #(
    .INIT(32'h09900660)) 
    \m_axis_tdata[111]_INST_0_i_83 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\LIMIT[9]_0 ),
        .I3(\SCALE_SHIFT[0]_67 ),
        .I4(\SCALE_SHIFT[0]_68 ),
        .O(\m_axis_tdata[111]_INST_0_i_83_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[111]_INST_0_i_84 
       (.I0(LIMIT_7_sn_1),
        .I1(\SCALE_SHIFT[0]_64 ),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_65 ),
        .O(\m_axis_tdata[111]_INST_0_i_84_n_0 ));
  LUT5 #(
    .INIT(32'h00969600)) 
    \m_axis_tdata[111]_INST_0_i_85 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_32 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_66 ),
        .O(\m_axis_tdata[111]_INST_0_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[111]_INST_0_i_86 
       (.I0(LIMIT_3_sn_1),
        .I1(\SCALE_SHIFT[0]_62 ),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_63 ),
        .O(\m_axis_tdata[111]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h0001666866680001)) 
    \m_axis_tdata[111]_INST_0_i_87 
       (.I0(\SCALE_SHIFT[0]_60 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_61 ),
        .O(\m_axis_tdata[111]_INST_0_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h1881)) 
    \m_axis_tdata[111]_INST_0_i_88 
       (.I0(\SCALE_SHIFT[1]_27 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_59 ),
        .O(\m_axis_tdata[111]_INST_0_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[111]_INST_0_i_89 
       (.I0(s_axis_tdata[100]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[108]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[111]_INST_0_i_89_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[111]_INST_0_i_9 
       (.I0(\m_axis_tdata[111]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[111]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[111]_INST_0_i_64_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[111]_INST_0_i_90 
       (.I0(s_axis_tdata[102]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[110]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[111]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[111]_INST_0_i_91 
       (.I0(s_axis_tdata[99]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[107]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[111]_INST_0_i_111_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \m_axis_tdata[111]_INST_0_i_92 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[103]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[111]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[111]_INST_0_i_112_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_92_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[111]_INST_0_i_93 
       (.I0(\m_axis_tdata[111]_INST_0_i_100_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[111]_INST_0_i_113_n_0 ),
        .O(\m_axis_tdata[111]_INST_0_i_93_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[111]_INST_0_i_94 
       (.I0(s_axis_tdata[96]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[104]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[111]),
        .O(\m_axis_tdata[111]_INST_0_i_94_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[111]_INST_0_i_95 
       (.I0(s_axis_tdata[100]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[108]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[111]),
        .O(\m_axis_tdata[111]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[111]_INST_0_i_96 
       (.I0(s_axis_tdata[98]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[106]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[111]),
        .O(\m_axis_tdata[111]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[111]_INST_0_i_97 
       (.I0(s_axis_tdata[102]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[110]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[111]),
        .O(\m_axis_tdata[111]_INST_0_i_97_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \m_axis_tdata[111]_INST_0_i_98 
       (.I0(\m_axis_tdata[111]_INST_0_i_112_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[103]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[3]),
        .I5(s_axis_tdata[111]),
        .O(\m_axis_tdata[111]_INST_0_i_98_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[111]_INST_0_i_99 
       (.I0(s_axis_tdata[109]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[101]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[111]),
        .O(\m_axis_tdata[111]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[112]_INST_0_i_1 
       (.I0(SCALE_SHIFT[1]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[112]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_33 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[113]_INST_0_i_1 
       (.I0(\m_axis_tdata[113]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[114]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_69 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[113]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[112]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[113]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair163" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[114]_INST_0_i_1 
       (.I0(\m_axis_tdata[114]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[115]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_70 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[114]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[113]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[114]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[115]_INST_0_i_1 
       (.I0(\m_axis_tdata[115]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[116]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_71 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[115]_INST_0_i_2 
       (.I0(s_axis_tdata[112]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[114]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[115]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair162" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[116]_INST_0_i_1 
       (.I0(\m_axis_tdata[116]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[117]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_72 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[116]_INST_0_i_2 
       (.I0(s_axis_tdata[113]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[115]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[116]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[117]_INST_0_i_1 
       (.I0(\m_axis_tdata[117]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[118]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_73 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[117]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[114]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[119]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[117]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[118]_INST_0_i_1 
       (.I0(\m_axis_tdata[119]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[121]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[118]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_38 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[118]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[115]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[120]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[118]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[119]_INST_0_i_1 
       (.I0(\m_axis_tdata[119]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[121]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[120]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[122]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_76 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[119]_INST_0_i_2 
       (.I0(s_axis_tdata[112]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[116]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[119]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[11]_INST_0_i_1 
       (.I0(\m_axis_tdata[11]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[13]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[12]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[14]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_8 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[11]_INST_0_i_2 
       (.I0(s_axis_tdata[4]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[0]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[8]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[11]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[120]_INST_0_i_1 
       (.I0(\m_axis_tdata[120]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[122]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[121]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[123]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_74 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[120]_INST_0_i_2 
       (.I0(s_axis_tdata[113]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[117]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[120]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[121]_INST_0_i_1 
       (.I0(\m_axis_tdata[121]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[123]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[122]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[124]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_75 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[121]_INST_0_i_2 
       (.I0(s_axis_tdata[114]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[118]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[121]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[122]_INST_0_i_1 
       (.I0(\m_axis_tdata[122]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[124]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[123]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[125]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_77 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[122]_INST_0_i_2 
       (.I0(s_axis_tdata[115]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[119]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[122]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[123]_INST_0_i_1 
       (.I0(\m_axis_tdata[123]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[125]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[124]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[126]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_78 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[123]_INST_0_i_2 
       (.I0(s_axis_tdata[116]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[112]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[120]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[123]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[124]_INST_0_i_1 
       (.I0(\m_axis_tdata[124]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[126]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[125]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[127]_INST_0_i_39_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_34 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[124]_INST_0_i_2 
       (.I0(s_axis_tdata[117]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[113]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[121]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[124]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \m_axis_tdata[125]_INST_0_i_1 
       (.I0(\m_axis_tdata[126]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[126]_INST_0_i_3_n_0 ),
        .I3(\m_axis_tdata[125]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[127]_INST_0_i_39_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_35 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[125]_INST_0_i_2 
       (.I0(s_axis_tdata[118]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[114]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[122]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[125]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[126]_INST_0_i_1 
       (.I0(\m_axis_tdata[126]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[126]_INST_0_i_3_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_39_n_0 ),
        .I4(\m_axis_tdata[127]_INST_0_i_40_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_36 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[126]_INST_0_i_2 
       (.I0(s_axis_tdata[119]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[115]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[123]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[126]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[126]_INST_0_i_3 
       (.I0(s_axis_tdata[113]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[121]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[126]_INST_0_i_4_n_0 ),
        .O(\m_axis_tdata[126]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[126]_INST_0_i_4 
       (.I0(s_axis_tdata[117]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[125]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[126]_INST_0_i_4_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[127]_INST_0_i_1 
       (.CI(\m_axis_tdata[127]_INST_0_i_5_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_167 ,\m_axis_tdata[127]_INST_0_i_1_n_1 ,\m_axis_tdata[127]_INST_0_i_1_n_2 ,\m_axis_tdata[127]_INST_0_i_1_n_3 ,\m_axis_tdata[127]_INST_0_i_1_n_4 ,\m_axis_tdata[127]_INST_0_i_1_n_5 ,\m_axis_tdata[127]_INST_0_i_1_n_6 ,\m_axis_tdata[127]_INST_0_i_1_n_7 }),
        .DI({\m_axis_tdata[127]_INST_0_i_6_n_0 ,\m_axis_tdata[127]_INST_0_i_7_n_0 ,\m_axis_tdata[127]_INST_0_i_8_n_0 ,\m_axis_tdata[127]_INST_0_i_9_n_0 ,\m_axis_tdata[127]_INST_0_i_10_n_0 ,\m_axis_tdata[127]_INST_0_i_11_n_0 ,\m_axis_tdata[127]_INST_0_i_12_n_0 ,\m_axis_tdata[127]_INST_0_i_13_n_0 }),
        .O(\NLW_m_axis_tdata[127]_INST_0_i_1_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[127]_INST_0_i_14_n_0 ,\m_axis_tdata[127]_INST_0_i_15_n_0 ,\m_axis_tdata[127]_INST_0_i_16_n_0 ,\m_axis_tdata[127]_INST_0_i_17_n_0 ,\m_axis_tdata[127]_INST_0_i_18_n_0 ,\m_axis_tdata[127]_INST_0_i_19_n_0 ,\m_axis_tdata[127]_INST_0_i_20_n_0 ,\m_axis_tdata[127]_INST_0_i_21_n_0 }));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[127]_INST_0_i_10 
       (.I0(\m_axis_tdata[127]_INST_0_i_67_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_68_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[127]_INST_0_i_100 
       (.I0(s_axis_tdata[125]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[117]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[127]),
        .O(\m_axis_tdata[127]_INST_0_i_100_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[127]_INST_0_i_101 
       (.I0(s_axis_tdata[113]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[121]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[127]),
        .O(\m_axis_tdata[127]_INST_0_i_101_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[127]_INST_0_i_102 
       (.I0(s_axis_tdata[126]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[118]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[127]),
        .O(\m_axis_tdata[127]_INST_0_i_102_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888888)) 
    \m_axis_tdata[127]_INST_0_i_103 
       (.I0(\m_axis_tdata[127]_INST_0_i_115_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[119]),
        .I4(SCALE_SHIFT[4]),
        .I5(s_axis_tdata[127]),
        .O(\m_axis_tdata[127]_INST_0_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[127]_INST_0_i_104 
       (.I0(s_axis_tdata[124]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[116]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[127]),
        .O(\m_axis_tdata[127]_INST_0_i_104_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[127]_INST_0_i_105 
       (.I0(s_axis_tdata[121]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[113]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[127]),
        .O(\m_axis_tdata[127]_INST_0_i_105_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[127]_INST_0_i_106 
       (.I0(s_axis_tdata[122]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[114]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[127]),
        .O(\m_axis_tdata[127]_INST_0_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[127]_INST_0_i_107 
       (.I0(s_axis_tdata[119]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[127]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[127]_INST_0_i_115_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[127]_INST_0_i_108 
       (.I0(s_axis_tdata[120]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[112]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[127]),
        .O(\m_axis_tdata[127]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[127]_INST_0_i_109 
       (.I0(s_axis_tdata[117]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[125]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[127]_INST_0_i_105_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_109_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[127]_INST_0_i_11 
       (.I0(\m_axis_tdata[127]_INST_0_i_69_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_70_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_67_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[127]_INST_0_i_110 
       (.I0(s_axis_tdata[118]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[126]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[127]_INST_0_i_106_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[127]_INST_0_i_111 
       (.I0(s_axis_tdata[116]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[124]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[127]_INST_0_i_108_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_111_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[127]_INST_0_i_112 
       (.I0(s_axis_tdata[119]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[127]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[127]_INST_0_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[127]_INST_0_i_113 
       (.I0(s_axis_tdata[115]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[123]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[127]),
        .O(\m_axis_tdata[127]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[127]_INST_0_i_114 
       (.I0(s_axis_tdata[117]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[125]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[127]),
        .O(\m_axis_tdata[127]_INST_0_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[127]_INST_0_i_115 
       (.I0(s_axis_tdata[123]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[115]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[127]),
        .O(\m_axis_tdata[127]_INST_0_i_115_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[127]_INST_0_i_12 
       (.I0(\m_axis_tdata[127]_INST_0_i_71_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_69_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[127]_INST_0_i_13 
       (.I0(\m_axis_tdata[127]_INST_0_i_41_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_71_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \m_axis_tdata[127]_INST_0_i_14 
       (.I0(\m_axis_tdata[127]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_59_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_60_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[127]_INST_0_i_15 
       (.I0(\m_axis_tdata[127]_INST_0_i_61_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_62_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_58_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[127]_INST_0_i_16 
       (.I0(\m_axis_tdata[127]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_61_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[127]_INST_0_i_17 
       (.I0(\m_axis_tdata[127]_INST_0_i_65_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_66_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[127]_INST_0_i_18 
       (.I0(\m_axis_tdata[127]_INST_0_i_67_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_68_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[127]_INST_0_i_19 
       (.I0(\m_axis_tdata[127]_INST_0_i_69_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_70_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_67_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \m_axis_tdata[127]_INST_0_i_2 
       (.I0(LIMIT[12]),
        .I1(LIMIT_9_sn_1),
        .I2(LIMIT[11]),
        .I3(LIMIT[13]),
        .O(\LIMIT[12]_1 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[127]_INST_0_i_20 
       (.I0(\m_axis_tdata[127]_INST_0_i_71_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_69_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[127]_INST_0_i_21 
       (.I0(\m_axis_tdata[127]_INST_0_i_41_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_71_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_21_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[127]_INST_0_i_22 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[127]_INST_0_i_22_n_0 ,\m_axis_tdata[127]_INST_0_i_22_n_1 ,\m_axis_tdata[127]_INST_0_i_22_n_2 ,\m_axis_tdata[127]_INST_0_i_22_n_3 ,\m_axis_tdata[127]_INST_0_i_22_n_4 ,\m_axis_tdata[127]_INST_0_i_22_n_5 ,\m_axis_tdata[127]_INST_0_i_22_n_6 ,\m_axis_tdata[127]_INST_0_i_22_n_7 }),
        .DI({\m_axis_tdata[127]_INST_0_i_74_n_0 ,\m_axis_tdata[127]_INST_0_i_75_n_0 ,\m_axis_tdata[127]_INST_0_i_76_n_0 ,\m_axis_tdata[127]_INST_0_i_77_n_0 ,\m_axis_tdata[127]_INST_0_i_78_n_0 ,\m_axis_tdata[127]_INST_0_i_79_n_0 ,\m_axis_tdata[127]_INST_0_i_80_n_0 ,\m_axis_tdata[127]_INST_0_i_81_n_0 }),
        .O(\NLW_m_axis_tdata[127]_INST_0_i_22_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[127]_INST_0_i_82_n_0 ,\m_axis_tdata[127]_INST_0_i_83_n_0 ,\m_axis_tdata[127]_INST_0_i_84_n_0 ,\m_axis_tdata[127]_INST_0_i_85_n_0 ,\m_axis_tdata[127]_INST_0_i_86_n_0 ,\m_axis_tdata[127]_INST_0_i_87_n_0 ,\m_axis_tdata[127]_INST_0_i_88_n_0 ,\m_axis_tdata[127]_INST_0_i_89_n_0 }));
  LUT5 #(
    .INIT(32'hFF004700)) 
    \m_axis_tdata[127]_INST_0_i_23 
       (.I0(\m_axis_tdata[127]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_59_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_60_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[127]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[127]_INST_0_i_24 
       (.I0(\m_axis_tdata[127]_INST_0_i_61_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_62_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_58_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[127]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[127]_INST_0_i_25 
       (.I0(\m_axis_tdata[127]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_61_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[127]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[127]_INST_0_i_26 
       (.I0(\m_axis_tdata[127]_INST_0_i_65_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_66_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[127]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[127]_INST_0_i_27 
       (.I0(\m_axis_tdata[127]_INST_0_i_67_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_68_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[127]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[127]_INST_0_i_28 
       (.I0(\m_axis_tdata[127]_INST_0_i_69_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_70_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_67_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[127]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[127]_INST_0_i_29 
       (.I0(\m_axis_tdata[127]_INST_0_i_71_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_69_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[127]_INST_0_i_29_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[127]_INST_0_i_3 
       (.CI(\m_axis_tdata[127]_INST_0_i_22_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_166 ,\m_axis_tdata[127]_INST_0_i_3_n_1 ,\m_axis_tdata[127]_INST_0_i_3_n_2 ,\m_axis_tdata[127]_INST_0_i_3_n_3 ,\m_axis_tdata[127]_INST_0_i_3_n_4 ,\m_axis_tdata[127]_INST_0_i_3_n_5 ,\m_axis_tdata[127]_INST_0_i_3_n_6 ,\m_axis_tdata[127]_INST_0_i_3_n_7 }),
        .DI({\m_axis_tdata[127]_INST_0_i_23_n_0 ,\m_axis_tdata[127]_INST_0_i_24_n_0 ,\m_axis_tdata[127]_INST_0_i_25_n_0 ,\m_axis_tdata[127]_INST_0_i_26_n_0 ,\m_axis_tdata[127]_INST_0_i_27_n_0 ,\m_axis_tdata[127]_INST_0_i_28_n_0 ,\m_axis_tdata[127]_INST_0_i_29_n_0 ,\m_axis_tdata[127]_INST_0_i_30_n_0 }),
        .O(\NLW_m_axis_tdata[127]_INST_0_i_3_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[127]_INST_0_i_31_n_0 ,\m_axis_tdata[127]_INST_0_i_32_n_0 ,\m_axis_tdata[127]_INST_0_i_33_n_0 ,\m_axis_tdata[127]_INST_0_i_34_n_0 ,\m_axis_tdata[127]_INST_0_i_35_n_0 ,\m_axis_tdata[127]_INST_0_i_36_n_0 ,\m_axis_tdata[127]_INST_0_i_37_n_0 ,\m_axis_tdata[127]_INST_0_i_38_n_0 }));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[127]_INST_0_i_30 
       (.I0(\m_axis_tdata[127]_INST_0_i_41_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_71_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[127]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h0047B800)) 
    \m_axis_tdata[127]_INST_0_i_31 
       (.I0(\m_axis_tdata[127]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_59_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_60_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[127]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[127]_INST_0_i_32 
       (.I0(\m_axis_tdata[127]_INST_0_i_61_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_62_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_58_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[127]_INST_0_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[127]_INST_0_i_33 
       (.I0(\m_axis_tdata[127]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_61_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[127]_INST_0_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[127]_INST_0_i_34 
       (.I0(\m_axis_tdata[127]_INST_0_i_65_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_66_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[127]_INST_0_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[127]_INST_0_i_35 
       (.I0(\m_axis_tdata[127]_INST_0_i_67_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_68_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[127]_INST_0_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[127]_INST_0_i_36 
       (.I0(\m_axis_tdata[127]_INST_0_i_69_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_70_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_67_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[127]_INST_0_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[127]_INST_0_i_37 
       (.I0(\m_axis_tdata[127]_INST_0_i_71_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_69_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[127]_INST_0_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[127]_INST_0_i_38 
       (.I0(\m_axis_tdata[127]_INST_0_i_41_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_71_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[127]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[127]_INST_0_i_39 
       (.I0(s_axis_tdata[112]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[120]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[127]_INST_0_i_90_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[127]_INST_0_i_4 
       (.I0(\m_axis_tdata[127]_INST_0_i_39_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[127]_INST_0_i_40_n_0 ),
        .I3(SCALE_SHIFT[0]),
        .I4(\m_axis_tdata[127]_INST_0_i_41_n_0 ),
        .O(\SCALE_SHIFT[1]_37 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[127]_INST_0_i_40 
       (.I0(s_axis_tdata[114]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[122]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[127]_INST_0_i_91_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[127]_INST_0_i_41 
       (.I0(\m_axis_tdata[126]_INST_0_i_3_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[127]_INST_0_i_92_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_41_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[127]_INST_0_i_42 
       (.I0(\SCALE_SHIFT[1]_36 ),
        .I1(\SCALE_SHIFT[1]_37 ),
        .O(\m_axis_tdata[127]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[127]_INST_0_i_43 
       (.I0(\SCALE_SHIFT[1]_34 ),
        .I1(LIMIT[12]),
        .I2(LIMIT[13]),
        .I3(\SCALE_SHIFT[1]_35 ),
        .O(\m_axis_tdata[127]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[127]_INST_0_i_44 
       (.I0(\SCALE_SHIFT[0]_77 ),
        .I1(LIMIT[10]),
        .I2(LIMIT[11]),
        .I3(\SCALE_SHIFT[0]_78 ),
        .O(\m_axis_tdata[127]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[127]_INST_0_i_45 
       (.I0(\SCALE_SHIFT[0]_74 ),
        .I1(LIMIT[8]),
        .I2(LIMIT[9]),
        .I3(\SCALE_SHIFT[0]_75 ),
        .O(\m_axis_tdata[127]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[127]_INST_0_i_46 
       (.I0(\SCALE_SHIFT[1]_38 ),
        .I1(LIMIT[6]),
        .I2(LIMIT[7]),
        .I3(\SCALE_SHIFT[0]_76 ),
        .O(\m_axis_tdata[127]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[127]_INST_0_i_47 
       (.I0(\SCALE_SHIFT[0]_72 ),
        .I1(LIMIT[4]),
        .I2(LIMIT[5]),
        .I3(\SCALE_SHIFT[0]_73 ),
        .O(\m_axis_tdata[127]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[127]_INST_0_i_48 
       (.I0(\SCALE_SHIFT[0]_70 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[3]),
        .I3(\SCALE_SHIFT[0]_71 ),
        .O(\m_axis_tdata[127]_INST_0_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[127]_INST_0_i_49 
       (.I0(\SCALE_SHIFT[1]_33 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_69 ),
        .O(\m_axis_tdata[127]_INST_0_i_49_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[127]_INST_0_i_5 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[127]_INST_0_i_5_n_0 ,\m_axis_tdata[127]_INST_0_i_5_n_1 ,\m_axis_tdata[127]_INST_0_i_5_n_2 ,\m_axis_tdata[127]_INST_0_i_5_n_3 ,\m_axis_tdata[127]_INST_0_i_5_n_4 ,\m_axis_tdata[127]_INST_0_i_5_n_5 ,\m_axis_tdata[127]_INST_0_i_5_n_6 ,\m_axis_tdata[127]_INST_0_i_5_n_7 }),
        .DI({\m_axis_tdata[127]_INST_0_i_42_n_0 ,\m_axis_tdata[127]_INST_0_i_43_n_0 ,\m_axis_tdata[127]_INST_0_i_44_n_0 ,\m_axis_tdata[127]_INST_0_i_45_n_0 ,\m_axis_tdata[127]_INST_0_i_46_n_0 ,\m_axis_tdata[127]_INST_0_i_47_n_0 ,\m_axis_tdata[127]_INST_0_i_48_n_0 ,\m_axis_tdata[127]_INST_0_i_49_n_0 }),
        .O(\NLW_m_axis_tdata[127]_INST_0_i_5_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[127]_INST_0_i_50_n_0 ,\m_axis_tdata[127]_INST_0_i_51_n_0 ,\m_axis_tdata[127]_INST_0_i_52_n_0 ,\m_axis_tdata[127]_INST_0_i_53_n_0 ,\m_axis_tdata[127]_INST_0_i_54_n_0 ,\m_axis_tdata[127]_INST_0_i_55_n_0 ,\m_axis_tdata[127]_INST_0_i_56_n_0 ,\m_axis_tdata[127]_INST_0_i_57_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata[127]_INST_0_i_50 
       (.I0(\SCALE_SHIFT[1]_36 ),
        .I1(\SCALE_SHIFT[1]_37 ),
        .O(\m_axis_tdata[127]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[127]_INST_0_i_51 
       (.I0(\SCALE_SHIFT[1]_34 ),
        .I1(LIMIT[12]),
        .I2(\SCALE_SHIFT[1]_35 ),
        .I3(LIMIT[13]),
        .O(\m_axis_tdata[127]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[127]_INST_0_i_52 
       (.I0(\SCALE_SHIFT[0]_77 ),
        .I1(LIMIT[10]),
        .I2(\SCALE_SHIFT[0]_78 ),
        .I3(LIMIT[11]),
        .O(\m_axis_tdata[127]_INST_0_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[127]_INST_0_i_53 
       (.I0(\SCALE_SHIFT[0]_74 ),
        .I1(LIMIT[8]),
        .I2(\SCALE_SHIFT[0]_75 ),
        .I3(LIMIT[9]),
        .O(\m_axis_tdata[127]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[127]_INST_0_i_54 
       (.I0(\SCALE_SHIFT[1]_38 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[0]_76 ),
        .I3(LIMIT[7]),
        .O(\m_axis_tdata[127]_INST_0_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[127]_INST_0_i_55 
       (.I0(\SCALE_SHIFT[0]_72 ),
        .I1(LIMIT[4]),
        .I2(\SCALE_SHIFT[0]_73 ),
        .I3(LIMIT[5]),
        .O(\m_axis_tdata[127]_INST_0_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[127]_INST_0_i_56 
       (.I0(\SCALE_SHIFT[0]_70 ),
        .I1(LIMIT[2]),
        .I2(\SCALE_SHIFT[0]_71 ),
        .I3(LIMIT[3]),
        .O(\m_axis_tdata[127]_INST_0_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[127]_INST_0_i_57 
       (.I0(\SCALE_SHIFT[1]_33 ),
        .I1(LIMIT[0]),
        .I2(\SCALE_SHIFT[0]_69 ),
        .I3(LIMIT[1]),
        .O(\m_axis_tdata[127]_INST_0_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[127]_INST_0_i_58 
       (.I0(\m_axis_tdata[127]_INST_0_i_93_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[127]_INST_0_i_94_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \m_axis_tdata[127]_INST_0_i_59 
       (.I0(\m_axis_tdata[127]_INST_0_i_95_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[127]_INST_0_i_96_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[127]_INST_0_i_97_n_0 ),
        .I5(\m_axis_tdata[127]_INST_0_i_98_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_59_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[127]_INST_0_i_6 
       (.I0(\m_axis_tdata[127]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_59_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_60_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[127]_INST_0_i_60 
       (.I0(\m_axis_tdata[127]_INST_0_i_59_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_94_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[127]_INST_0_i_99_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_60_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[127]_INST_0_i_61 
       (.I0(\m_axis_tdata[127]_INST_0_i_100_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[127]_INST_0_i_101_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[127]_INST_0_i_93_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[127]_INST_0_i_62 
       (.I0(\m_axis_tdata[127]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[127]_INST_0_i_97_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_95_n_0 ),
        .I4(\m_axis_tdata[127]_INST_0_i_96_n_0 ),
        .I5(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[127]_INST_0_i_62_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[127]_INST_0_i_63 
       (.I0(\m_axis_tdata[127]_INST_0_i_100_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[127]_INST_0_i_101_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_103_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[127]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[127]_INST_0_i_64 
       (.I0(\m_axis_tdata[127]_INST_0_i_104_n_0 ),
        .I1(\m_axis_tdata[127]_INST_0_i_95_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[127]_INST_0_i_102_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[127]_INST_0_i_97_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_64_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[127]_INST_0_i_65 
       (.I0(\m_axis_tdata[127]_INST_0_i_105_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[127]_INST_0_i_100_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[127]_INST_0_i_103_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[127]_INST_0_i_66 
       (.I0(\m_axis_tdata[127]_INST_0_i_106_n_0 ),
        .I1(\m_axis_tdata[127]_INST_0_i_102_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[127]_INST_0_i_104_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[127]_INST_0_i_95_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_66_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[127]_INST_0_i_67 
       (.I0(\m_axis_tdata[127]_INST_0_i_105_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[127]_INST_0_i_100_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_107_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[127]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[127]_INST_0_i_68 
       (.I0(\m_axis_tdata[127]_INST_0_i_108_n_0 ),
        .I1(\m_axis_tdata[127]_INST_0_i_104_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[127]_INST_0_i_106_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[127]_INST_0_i_102_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_68_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair160" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[127]_INST_0_i_69 
       (.I0(\m_axis_tdata[127]_INST_0_i_109_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[127]_INST_0_i_107_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_69_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[127]_INST_0_i_7 
       (.I0(\m_axis_tdata[127]_INST_0_i_61_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_62_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_58_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[127]_INST_0_i_70 
       (.I0(\m_axis_tdata[127]_INST_0_i_108_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[127]_INST_0_i_104_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_110_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[127]_INST_0_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair161" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[127]_INST_0_i_71 
       (.I0(\m_axis_tdata[127]_INST_0_i_92_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[127]_INST_0_i_109_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_71_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[127]_INST_0_i_72 
       (.I0(\m_axis_tdata[127]_INST_0_i_111_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[127]_INST_0_i_110_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_72_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair159" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[127]_INST_0_i_73 
       (.I0(\m_axis_tdata[127]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[127]_INST_0_i_111_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_73_n_0 ));
  LUT3 #(
    .INIT(8'h13)) 
    \m_axis_tdata[127]_INST_0_i_74 
       (.I0(\SCALE_SHIFT[1]_36 ),
        .I1(\LIMIT[12]_1 ),
        .I2(\SCALE_SHIFT[1]_37 ),
        .O(\m_axis_tdata[127]_INST_0_i_74_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[127]_INST_0_i_75 
       (.I0(\SCALE_SHIFT[1]_34 ),
        .I1(LIMIT_11_sn_1),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_35 ),
        .O(\m_axis_tdata[127]_INST_0_i_75_n_0 ));
  LUT5 #(
    .INIT(32'h0009999F)) 
    \m_axis_tdata[127]_INST_0_i_76 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\SCALE_SHIFT[0]_77 ),
        .I3(\LIMIT[9]_0 ),
        .I4(\SCALE_SHIFT[0]_78 ),
        .O(\m_axis_tdata[127]_INST_0_i_76_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[127]_INST_0_i_77 
       (.I0(\SCALE_SHIFT[0]_74 ),
        .I1(LIMIT_7_sn_1),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_75 ),
        .O(\m_axis_tdata[127]_INST_0_i_77_n_0 ));
  LUT5 #(
    .INIT(32'h000909FF)) 
    \m_axis_tdata[127]_INST_0_i_78 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_38 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_76 ),
        .O(\m_axis_tdata[127]_INST_0_i_78_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[127]_INST_0_i_79 
       (.I0(\SCALE_SHIFT[0]_72 ),
        .I1(LIMIT_3_sn_1),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_73 ),
        .O(\m_axis_tdata[127]_INST_0_i_79_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[127]_INST_0_i_8 
       (.I0(\m_axis_tdata[127]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_61_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000011141117FFFC)) 
    \m_axis_tdata[127]_INST_0_i_80 
       (.I0(\SCALE_SHIFT[0]_70 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_71 ),
        .O(\m_axis_tdata[127]_INST_0_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h047C)) 
    \m_axis_tdata[127]_INST_0_i_81 
       (.I0(\SCALE_SHIFT[1]_33 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_69 ),
        .O(\m_axis_tdata[127]_INST_0_i_81_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \m_axis_tdata[127]_INST_0_i_82 
       (.I0(\SCALE_SHIFT[1]_36 ),
        .I1(\LIMIT[12]_1 ),
        .I2(\SCALE_SHIFT[1]_37 ),
        .O(\m_axis_tdata[127]_INST_0_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[127]_INST_0_i_83 
       (.I0(LIMIT_11_sn_1),
        .I1(\SCALE_SHIFT[1]_34 ),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_35 ),
        .O(\m_axis_tdata[127]_INST_0_i_83_n_0 ));
  LUT5 #(
    .INIT(32'h09900660)) 
    \m_axis_tdata[127]_INST_0_i_84 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\LIMIT[9]_0 ),
        .I3(\SCALE_SHIFT[0]_77 ),
        .I4(\SCALE_SHIFT[0]_78 ),
        .O(\m_axis_tdata[127]_INST_0_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[127]_INST_0_i_85 
       (.I0(LIMIT_7_sn_1),
        .I1(\SCALE_SHIFT[0]_74 ),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_75 ),
        .O(\m_axis_tdata[127]_INST_0_i_85_n_0 ));
  LUT5 #(
    .INIT(32'h00969600)) 
    \m_axis_tdata[127]_INST_0_i_86 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_38 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_76 ),
        .O(\m_axis_tdata[127]_INST_0_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[127]_INST_0_i_87 
       (.I0(LIMIT_3_sn_1),
        .I1(\SCALE_SHIFT[0]_72 ),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_73 ),
        .O(\m_axis_tdata[127]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h0001666866680001)) 
    \m_axis_tdata[127]_INST_0_i_88 
       (.I0(\SCALE_SHIFT[0]_70 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_71 ),
        .O(\m_axis_tdata[127]_INST_0_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h1881)) 
    \m_axis_tdata[127]_INST_0_i_89 
       (.I0(\SCALE_SHIFT[1]_33 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_69 ),
        .O(\m_axis_tdata[127]_INST_0_i_89_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[127]_INST_0_i_9 
       (.I0(\m_axis_tdata[127]_INST_0_i_65_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[127]_INST_0_i_66_n_0 ),
        .I3(\m_axis_tdata[127]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[127]_INST_0_i_90 
       (.I0(s_axis_tdata[116]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[124]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[127]_INST_0_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[127]_INST_0_i_91 
       (.I0(s_axis_tdata[118]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[126]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[127]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[127]_INST_0_i_92 
       (.I0(s_axis_tdata[115]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[123]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[127]_INST_0_i_112_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \m_axis_tdata[127]_INST_0_i_93 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[119]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[127]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[127]_INST_0_i_113_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_93_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair154" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[127]_INST_0_i_94 
       (.I0(\m_axis_tdata[127]_INST_0_i_101_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[127]_INST_0_i_114_n_0 ),
        .O(\m_axis_tdata[127]_INST_0_i_94_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[127]_INST_0_i_95 
       (.I0(s_axis_tdata[112]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[120]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[127]),
        .O(\m_axis_tdata[127]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[127]_INST_0_i_96 
       (.I0(s_axis_tdata[116]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[124]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[127]),
        .O(\m_axis_tdata[127]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[127]_INST_0_i_97 
       (.I0(s_axis_tdata[114]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[122]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[127]),
        .O(\m_axis_tdata[127]_INST_0_i_97_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[127]_INST_0_i_98 
       (.I0(s_axis_tdata[118]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[126]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[127]),
        .O(\m_axis_tdata[127]_INST_0_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \m_axis_tdata[127]_INST_0_i_99 
       (.I0(\m_axis_tdata[127]_INST_0_i_113_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[119]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[3]),
        .I5(s_axis_tdata[127]),
        .O(\m_axis_tdata[127]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[128]_INST_0_i_1 
       (.I0(SCALE_SHIFT[1]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[128]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_39 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[129]_INST_0_i_1 
       (.I0(\m_axis_tdata[129]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[130]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_79 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[129]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[128]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[129]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[12]_INST_0_i_1 
       (.I0(\m_axis_tdata[12]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[14]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[13]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[15]_INST_0_i_5_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[12]_INST_0_i_2 
       (.I0(s_axis_tdata[5]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[1]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[9]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[12]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[130]_INST_0_i_1 
       (.I0(\m_axis_tdata[130]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[131]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_80 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[130]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[129]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[130]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair170" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[131]_INST_0_i_1 
       (.I0(\m_axis_tdata[131]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[132]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_81 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[131]_INST_0_i_2 
       (.I0(s_axis_tdata[128]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[130]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[131]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[132]_INST_0_i_1 
       (.I0(\m_axis_tdata[132]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[133]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_82 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[132]_INST_0_i_2 
       (.I0(s_axis_tdata[129]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[131]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[132]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair169" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[133]_INST_0_i_1 
       (.I0(\m_axis_tdata[133]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[134]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_83 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[133]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[130]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[135]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[133]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[134]_INST_0_i_1 
       (.I0(\m_axis_tdata[135]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[137]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[134]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_42 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[134]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[131]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[136]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[134]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[135]_INST_0_i_1 
       (.I0(\m_axis_tdata[135]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[137]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[136]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[138]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_86 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[135]_INST_0_i_2 
       (.I0(s_axis_tdata[128]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[132]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[135]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[136]_INST_0_i_1 
       (.I0(\m_axis_tdata[136]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[138]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[137]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[139]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_84 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[136]_INST_0_i_2 
       (.I0(s_axis_tdata[129]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[133]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[136]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[137]_INST_0_i_1 
       (.I0(\m_axis_tdata[137]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[139]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[138]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[140]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_85 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[137]_INST_0_i_2 
       (.I0(s_axis_tdata[130]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[134]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[137]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[138]_INST_0_i_1 
       (.I0(\m_axis_tdata[138]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[140]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[139]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[141]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_87 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[138]_INST_0_i_2 
       (.I0(s_axis_tdata[131]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[135]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[138]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[139]_INST_0_i_1 
       (.I0(\m_axis_tdata[139]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[141]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[140]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[142]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_88 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[139]_INST_0_i_2 
       (.I0(s_axis_tdata[132]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[128]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[136]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[139]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[13]_INST_0_i_1 
       (.I0(\m_axis_tdata[13]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[15]_INST_0_i_5_n_0 ),
        .I3(SCALE_SHIFT[0]),
        .I4(\SCALE_SHIFT[1]_81 ),
        .O(\SCALE_SHIFT[1]_1 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[13]_INST_0_i_2 
       (.I0(s_axis_tdata[6]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[2]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[10]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[13]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[140]_INST_0_i_1 
       (.I0(\m_axis_tdata[140]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[142]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[141]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[143]_INST_0_i_5_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_40 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[140]_INST_0_i_2 
       (.I0(s_axis_tdata[133]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[129]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[137]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[140]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[141]_INST_0_i_1 
       (.I0(\m_axis_tdata[141]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[143]_INST_0_i_5_n_0 ),
        .I3(SCALE_SHIFT[0]),
        .I4(\SCALE_SHIFT[1]_93 ),
        .O(\SCALE_SHIFT[1]_41 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[141]_INST_0_i_2 
       (.I0(s_axis_tdata[134]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[130]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[138]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[141]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[142]_INST_0_i_1 
       (.I0(\m_axis_tdata[142]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[143]_INST_0_i_7_n_0 ),
        .O(\SCALE_SHIFT[1]_93 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[142]_INST_0_i_2 
       (.I0(s_axis_tdata[135]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[131]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[139]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[142]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair168" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[143]_INST_0_i_1 
       (.I0(\m_axis_tdata[143]_INST_0_i_5_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[143]_INST_0_i_6_n_0 ),
        .O(\SCALE_SHIFT[1]_91 ));
  LUT5 #(
    .INIT(32'hFF004700)) 
    \m_axis_tdata[143]_INST_0_i_10 
       (.I0(\m_axis_tdata[143]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[143]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[143]_INST_0_i_100 
       (.I0(s_axis_tdata[134]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[142]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[143]),
        .O(\m_axis_tdata[143]_INST_0_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \m_axis_tdata[143]_INST_0_i_101 
       (.I0(\m_axis_tdata[143]_INST_0_i_114_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[135]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[3]),
        .I5(s_axis_tdata[143]),
        .O(\m_axis_tdata[143]_INST_0_i_101_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[143]_INST_0_i_102 
       (.I0(s_axis_tdata[141]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[133]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[143]),
        .O(\m_axis_tdata[143]_INST_0_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[143]_INST_0_i_103 
       (.I0(s_axis_tdata[129]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[137]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[143]),
        .O(\m_axis_tdata[143]_INST_0_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[143]_INST_0_i_104 
       (.I0(s_axis_tdata[142]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[134]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[143]),
        .O(\m_axis_tdata[143]_INST_0_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888888)) 
    \m_axis_tdata[143]_INST_0_i_105 
       (.I0(\m_axis_tdata[143]_INST_0_i_116_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[135]),
        .I4(SCALE_SHIFT[4]),
        .I5(s_axis_tdata[143]),
        .O(\m_axis_tdata[143]_INST_0_i_105_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[143]_INST_0_i_106 
       (.I0(s_axis_tdata[140]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[132]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[143]),
        .O(\m_axis_tdata[143]_INST_0_i_106_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[143]_INST_0_i_107 
       (.I0(s_axis_tdata[137]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[129]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[143]),
        .O(\m_axis_tdata[143]_INST_0_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[143]_INST_0_i_108 
       (.I0(s_axis_tdata[138]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[130]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[143]),
        .O(\m_axis_tdata[143]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[143]_INST_0_i_109 
       (.I0(s_axis_tdata[135]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[143]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[143]_INST_0_i_116_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_109_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[143]_INST_0_i_11 
       (.I0(\m_axis_tdata[143]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[143]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[143]_INST_0_i_110 
       (.I0(s_axis_tdata[136]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[128]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[143]),
        .O(\m_axis_tdata[143]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[143]_INST_0_i_111 
       (.I0(s_axis_tdata[133]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[141]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[143]_INST_0_i_107_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[143]_INST_0_i_112 
       (.I0(s_axis_tdata[134]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[142]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[143]_INST_0_i_108_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[143]_INST_0_i_113 
       (.I0(s_axis_tdata[132]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[140]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[143]_INST_0_i_110_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[143]_INST_0_i_114 
       (.I0(s_axis_tdata[131]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[139]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[143]),
        .O(\m_axis_tdata[143]_INST_0_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[143]_INST_0_i_115 
       (.I0(s_axis_tdata[133]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[141]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[143]),
        .O(\m_axis_tdata[143]_INST_0_i_115_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[143]_INST_0_i_116 
       (.I0(s_axis_tdata[139]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[131]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[143]),
        .O(\m_axis_tdata[143]_INST_0_i_116_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[143]_INST_0_i_12 
       (.I0(\m_axis_tdata[143]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[143]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[143]_INST_0_i_13 
       (.I0(\m_axis_tdata[143]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[143]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[143]_INST_0_i_14 
       (.I0(\m_axis_tdata[143]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[143]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[143]_INST_0_i_15 
       (.I0(\m_axis_tdata[143]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_72_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[143]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[143]_INST_0_i_16 
       (.I0(\m_axis_tdata[143]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_74_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[143]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[143]_INST_0_i_17 
       (.I0(\SCALE_SHIFT[1]_92 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_76_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[143]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h0047B800)) 
    \m_axis_tdata[143]_INST_0_i_18 
       (.I0(\m_axis_tdata[143]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[143]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[143]_INST_0_i_19 
       (.I0(\m_axis_tdata[143]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[143]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[143]_INST_0_i_2 
       (.I0(\m_axis_tdata[143]_INST_0_i_7_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[143]_INST_0_i_8_n_0 ),
        .O(\SCALE_SHIFT[1]_92 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[143]_INST_0_i_20 
       (.I0(\m_axis_tdata[143]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[143]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[143]_INST_0_i_21 
       (.I0(\m_axis_tdata[143]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[143]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[143]_INST_0_i_22 
       (.I0(\m_axis_tdata[143]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[143]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[143]_INST_0_i_23 
       (.I0(\m_axis_tdata[143]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_72_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[143]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[143]_INST_0_i_24 
       (.I0(\m_axis_tdata[143]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_74_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[143]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[143]_INST_0_i_25 
       (.I0(\SCALE_SHIFT[1]_92 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_76_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[143]_INST_0_i_25_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[143]_INST_0_i_26 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[143]_INST_0_i_26_n_0 ,\m_axis_tdata[143]_INST_0_i_26_n_1 ,\m_axis_tdata[143]_INST_0_i_26_n_2 ,\m_axis_tdata[143]_INST_0_i_26_n_3 ,\m_axis_tdata[143]_INST_0_i_26_n_4 ,\m_axis_tdata[143]_INST_0_i_26_n_5 ,\m_axis_tdata[143]_INST_0_i_26_n_6 ,\m_axis_tdata[143]_INST_0_i_26_n_7 }),
        .DI({\m_axis_tdata[143]_INST_0_i_79_n_0 ,\m_axis_tdata[143]_INST_0_i_80_n_0 ,\m_axis_tdata[143]_INST_0_i_81_n_0 ,\m_axis_tdata[143]_INST_0_i_82_n_0 ,\m_axis_tdata[143]_INST_0_i_83_n_0 ,\m_axis_tdata[143]_INST_0_i_84_n_0 ,\m_axis_tdata[143]_INST_0_i_85_n_0 ,\m_axis_tdata[143]_INST_0_i_86_n_0 }),
        .O(\NLW_m_axis_tdata[143]_INST_0_i_26_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[143]_INST_0_i_87_n_0 ,\m_axis_tdata[143]_INST_0_i_88_n_0 ,\m_axis_tdata[143]_INST_0_i_89_n_0 ,\m_axis_tdata[143]_INST_0_i_90_n_0 ,\m_axis_tdata[143]_INST_0_i_91_n_0 ,\m_axis_tdata[143]_INST_0_i_92_n_0 ,\m_axis_tdata[143]_INST_0_i_93_n_0 ,\m_axis_tdata[143]_INST_0_i_94_n_0 }));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[143]_INST_0_i_27 
       (.I0(\m_axis_tdata[143]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[143]_INST_0_i_28 
       (.I0(\m_axis_tdata[143]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[143]_INST_0_i_29 
       (.I0(\m_axis_tdata[143]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_29_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[143]_INST_0_i_3 
       (.CI(\m_axis_tdata[143]_INST_0_i_9_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_177 ,\m_axis_tdata[143]_INST_0_i_3_n_1 ,\m_axis_tdata[143]_INST_0_i_3_n_2 ,\m_axis_tdata[143]_INST_0_i_3_n_3 ,\m_axis_tdata[143]_INST_0_i_3_n_4 ,\m_axis_tdata[143]_INST_0_i_3_n_5 ,\m_axis_tdata[143]_INST_0_i_3_n_6 ,\m_axis_tdata[143]_INST_0_i_3_n_7 }),
        .DI({\m_axis_tdata[143]_INST_0_i_10_n_0 ,\m_axis_tdata[143]_INST_0_i_11_n_0 ,\m_axis_tdata[143]_INST_0_i_12_n_0 ,\m_axis_tdata[143]_INST_0_i_13_n_0 ,\m_axis_tdata[143]_INST_0_i_14_n_0 ,\m_axis_tdata[143]_INST_0_i_15_n_0 ,\m_axis_tdata[143]_INST_0_i_16_n_0 ,\m_axis_tdata[143]_INST_0_i_17_n_0 }),
        .O(\NLW_m_axis_tdata[143]_INST_0_i_3_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[143]_INST_0_i_18_n_0 ,\m_axis_tdata[143]_INST_0_i_19_n_0 ,\m_axis_tdata[143]_INST_0_i_20_n_0 ,\m_axis_tdata[143]_INST_0_i_21_n_0 ,\m_axis_tdata[143]_INST_0_i_22_n_0 ,\m_axis_tdata[143]_INST_0_i_23_n_0 ,\m_axis_tdata[143]_INST_0_i_24_n_0 ,\m_axis_tdata[143]_INST_0_i_25_n_0 }));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[143]_INST_0_i_30 
       (.I0(\m_axis_tdata[143]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[143]_INST_0_i_31 
       (.I0(\m_axis_tdata[143]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[143]_INST_0_i_32 
       (.I0(\m_axis_tdata[143]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_72_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[143]_INST_0_i_33 
       (.I0(\m_axis_tdata[143]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_74_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[143]_INST_0_i_34 
       (.I0(\SCALE_SHIFT[1]_92 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_76_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \m_axis_tdata[143]_INST_0_i_35 
       (.I0(\m_axis_tdata[143]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[143]_INST_0_i_36 
       (.I0(\m_axis_tdata[143]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[143]_INST_0_i_37 
       (.I0(\m_axis_tdata[143]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[143]_INST_0_i_38 
       (.I0(\m_axis_tdata[143]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[143]_INST_0_i_39 
       (.I0(\m_axis_tdata[143]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_39_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[143]_INST_0_i_4 
       (.CI(\m_axis_tdata[143]_INST_0_i_26_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_176 ,\m_axis_tdata[143]_INST_0_i_4_n_1 ,\m_axis_tdata[143]_INST_0_i_4_n_2 ,\m_axis_tdata[143]_INST_0_i_4_n_3 ,\m_axis_tdata[143]_INST_0_i_4_n_4 ,\m_axis_tdata[143]_INST_0_i_4_n_5 ,\m_axis_tdata[143]_INST_0_i_4_n_6 ,\m_axis_tdata[143]_INST_0_i_4_n_7 }),
        .DI({\m_axis_tdata[143]_INST_0_i_27_n_0 ,\m_axis_tdata[143]_INST_0_i_28_n_0 ,\m_axis_tdata[143]_INST_0_i_29_n_0 ,\m_axis_tdata[143]_INST_0_i_30_n_0 ,\m_axis_tdata[143]_INST_0_i_31_n_0 ,\m_axis_tdata[143]_INST_0_i_32_n_0 ,\m_axis_tdata[143]_INST_0_i_33_n_0 ,\m_axis_tdata[143]_INST_0_i_34_n_0 }),
        .O(\NLW_m_axis_tdata[143]_INST_0_i_4_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[143]_INST_0_i_35_n_0 ,\m_axis_tdata[143]_INST_0_i_36_n_0 ,\m_axis_tdata[143]_INST_0_i_37_n_0 ,\m_axis_tdata[143]_INST_0_i_38_n_0 ,\m_axis_tdata[143]_INST_0_i_39_n_0 ,\m_axis_tdata[143]_INST_0_i_40_n_0 ,\m_axis_tdata[143]_INST_0_i_41_n_0 ,\m_axis_tdata[143]_INST_0_i_42_n_0 }));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[143]_INST_0_i_40 
       (.I0(\m_axis_tdata[143]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_72_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[143]_INST_0_i_41 
       (.I0(\m_axis_tdata[143]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_74_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[143]_INST_0_i_42 
       (.I0(\SCALE_SHIFT[1]_92 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_76_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[143]_INST_0_i_43 
       (.I0(s_axis_tdata[132]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[140]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[143]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[143]_INST_0_i_44 
       (.I0(s_axis_tdata[134]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[142]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[143]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[143]_INST_0_i_45 
       (.I0(s_axis_tdata[133]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[141]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[143]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[143]_INST_0_i_46 
       (.I0(s_axis_tdata[135]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[143]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[143]_INST_0_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[143]_INST_0_i_47 
       (.I0(\SCALE_SHIFT[1]_93 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_91 ),
        .I3(\SCALE_SHIFT[1]_92 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[143]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[143]_INST_0_i_48 
       (.I0(\SCALE_SHIFT[1]_40 ),
        .I1(LIMIT_11_sn_1),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_41 ),
        .O(\m_axis_tdata[143]_INST_0_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h0009999F)) 
    \m_axis_tdata[143]_INST_0_i_49 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\SCALE_SHIFT[0]_87 ),
        .I3(\LIMIT[9]_0 ),
        .I4(\SCALE_SHIFT[0]_88 ),
        .O(\m_axis_tdata[143]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[143]_INST_0_i_5 
       (.I0(s_axis_tdata[128]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[136]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[143]_INST_0_i_43_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[143]_INST_0_i_50 
       (.I0(\SCALE_SHIFT[0]_84 ),
        .I1(LIMIT_7_sn_1),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_85 ),
        .O(\m_axis_tdata[143]_INST_0_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h000909FF)) 
    \m_axis_tdata[143]_INST_0_i_51 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_42 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_86 ),
        .O(\m_axis_tdata[143]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[143]_INST_0_i_52 
       (.I0(\SCALE_SHIFT[0]_82 ),
        .I1(LIMIT_3_sn_1),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_83 ),
        .O(\m_axis_tdata[143]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h000011141117FFFC)) 
    \m_axis_tdata[143]_INST_0_i_53 
       (.I0(\SCALE_SHIFT[0]_80 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_81 ),
        .O(\m_axis_tdata[143]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h047C)) 
    \m_axis_tdata[143]_INST_0_i_54 
       (.I0(\SCALE_SHIFT[1]_39 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_79 ),
        .O(\m_axis_tdata[143]_INST_0_i_54_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[143]_INST_0_i_55 
       (.I0(\SCALE_SHIFT[1]_93 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_91 ),
        .I3(\SCALE_SHIFT[1]_92 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[143]_INST_0_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[143]_INST_0_i_56 
       (.I0(LIMIT_11_sn_1),
        .I1(\SCALE_SHIFT[1]_40 ),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_41 ),
        .O(\m_axis_tdata[143]_INST_0_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h09900660)) 
    \m_axis_tdata[143]_INST_0_i_57 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\LIMIT[9]_0 ),
        .I3(\SCALE_SHIFT[0]_87 ),
        .I4(\SCALE_SHIFT[0]_88 ),
        .O(\m_axis_tdata[143]_INST_0_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[143]_INST_0_i_58 
       (.I0(LIMIT_7_sn_1),
        .I1(\SCALE_SHIFT[0]_84 ),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_85 ),
        .O(\m_axis_tdata[143]_INST_0_i_58_n_0 ));
  LUT5 #(
    .INIT(32'h00969600)) 
    \m_axis_tdata[143]_INST_0_i_59 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_42 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_86 ),
        .O(\m_axis_tdata[143]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[143]_INST_0_i_6 
       (.I0(s_axis_tdata[130]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[138]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[143]_INST_0_i_44_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[143]_INST_0_i_60 
       (.I0(LIMIT_3_sn_1),
        .I1(\SCALE_SHIFT[0]_82 ),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_83 ),
        .O(\m_axis_tdata[143]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h0001666866680001)) 
    \m_axis_tdata[143]_INST_0_i_61 
       (.I0(\SCALE_SHIFT[0]_80 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_81 ),
        .O(\m_axis_tdata[143]_INST_0_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h1881)) 
    \m_axis_tdata[143]_INST_0_i_62 
       (.I0(\SCALE_SHIFT[1]_39 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_79 ),
        .O(\m_axis_tdata[143]_INST_0_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[143]_INST_0_i_63 
       (.I0(\m_axis_tdata[143]_INST_0_i_95_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[143]_INST_0_i_96_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \m_axis_tdata[143]_INST_0_i_64 
       (.I0(\m_axis_tdata[143]_INST_0_i_97_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[143]_INST_0_i_98_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[143]_INST_0_i_99_n_0 ),
        .I5(\m_axis_tdata[143]_INST_0_i_100_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_64_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[143]_INST_0_i_65 
       (.I0(\m_axis_tdata[143]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[143]_INST_0_i_96_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[143]_INST_0_i_101_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_65_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[143]_INST_0_i_66 
       (.I0(\m_axis_tdata[143]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[143]_INST_0_i_103_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[143]_INST_0_i_95_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[143]_INST_0_i_67 
       (.I0(\m_axis_tdata[143]_INST_0_i_104_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[143]_INST_0_i_99_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_97_n_0 ),
        .I4(\m_axis_tdata[143]_INST_0_i_98_n_0 ),
        .I5(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[143]_INST_0_i_67_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[143]_INST_0_i_68 
       (.I0(\m_axis_tdata[143]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[143]_INST_0_i_103_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_105_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[143]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[143]_INST_0_i_69 
       (.I0(\m_axis_tdata[143]_INST_0_i_106_n_0 ),
        .I1(\m_axis_tdata[143]_INST_0_i_97_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[143]_INST_0_i_104_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[143]_INST_0_i_99_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[143]_INST_0_i_7 
       (.I0(s_axis_tdata[129]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[137]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[143]_INST_0_i_45_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[143]_INST_0_i_70 
       (.I0(\m_axis_tdata[143]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[143]_INST_0_i_102_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[143]_INST_0_i_105_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[143]_INST_0_i_71 
       (.I0(\m_axis_tdata[143]_INST_0_i_108_n_0 ),
        .I1(\m_axis_tdata[143]_INST_0_i_104_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[143]_INST_0_i_106_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[143]_INST_0_i_97_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_71_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[143]_INST_0_i_72 
       (.I0(\m_axis_tdata[143]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[143]_INST_0_i_102_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_109_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[143]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[143]_INST_0_i_73 
       (.I0(\m_axis_tdata[143]_INST_0_i_110_n_0 ),
        .I1(\m_axis_tdata[143]_INST_0_i_106_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[143]_INST_0_i_108_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[143]_INST_0_i_104_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_73_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair165" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[143]_INST_0_i_74 
       (.I0(\m_axis_tdata[143]_INST_0_i_111_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[143]_INST_0_i_109_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_74_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[143]_INST_0_i_75 
       (.I0(\m_axis_tdata[143]_INST_0_i_110_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[143]_INST_0_i_106_n_0 ),
        .I3(\m_axis_tdata[143]_INST_0_i_112_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[143]_INST_0_i_75_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair167" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[143]_INST_0_i_76 
       (.I0(\m_axis_tdata[143]_INST_0_i_8_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[143]_INST_0_i_111_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[143]_INST_0_i_77 
       (.I0(\m_axis_tdata[143]_INST_0_i_113_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[143]_INST_0_i_112_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_77_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair164" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[143]_INST_0_i_78 
       (.I0(\m_axis_tdata[143]_INST_0_i_6_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[143]_INST_0_i_113_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_78_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[143]_INST_0_i_79 
       (.I0(\SCALE_SHIFT[1]_93 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_91 ),
        .I3(\SCALE_SHIFT[1]_92 ),
        .O(\m_axis_tdata[143]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[143]_INST_0_i_8 
       (.I0(s_axis_tdata[131]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[139]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[143]_INST_0_i_46_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[143]_INST_0_i_80 
       (.I0(\SCALE_SHIFT[1]_40 ),
        .I1(LIMIT[12]),
        .I2(LIMIT[13]),
        .I3(\SCALE_SHIFT[1]_41 ),
        .O(\m_axis_tdata[143]_INST_0_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[143]_INST_0_i_81 
       (.I0(\SCALE_SHIFT[0]_87 ),
        .I1(LIMIT[10]),
        .I2(LIMIT[11]),
        .I3(\SCALE_SHIFT[0]_88 ),
        .O(\m_axis_tdata[143]_INST_0_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[143]_INST_0_i_82 
       (.I0(\SCALE_SHIFT[0]_84 ),
        .I1(LIMIT[8]),
        .I2(LIMIT[9]),
        .I3(\SCALE_SHIFT[0]_85 ),
        .O(\m_axis_tdata[143]_INST_0_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[143]_INST_0_i_83 
       (.I0(\SCALE_SHIFT[1]_42 ),
        .I1(LIMIT[6]),
        .I2(LIMIT[7]),
        .I3(\SCALE_SHIFT[0]_86 ),
        .O(\m_axis_tdata[143]_INST_0_i_83_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[143]_INST_0_i_84 
       (.I0(\SCALE_SHIFT[0]_82 ),
        .I1(LIMIT[4]),
        .I2(LIMIT[5]),
        .I3(\SCALE_SHIFT[0]_83 ),
        .O(\m_axis_tdata[143]_INST_0_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[143]_INST_0_i_85 
       (.I0(\SCALE_SHIFT[0]_80 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[3]),
        .I3(\SCALE_SHIFT[0]_81 ),
        .O(\m_axis_tdata[143]_INST_0_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[143]_INST_0_i_86 
       (.I0(\SCALE_SHIFT[1]_39 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_79 ),
        .O(\m_axis_tdata[143]_INST_0_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[143]_INST_0_i_87 
       (.I0(\SCALE_SHIFT[1]_93 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_91 ),
        .I3(\SCALE_SHIFT[1]_92 ),
        .O(\m_axis_tdata[143]_INST_0_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[143]_INST_0_i_88 
       (.I0(\SCALE_SHIFT[1]_40 ),
        .I1(LIMIT[12]),
        .I2(\SCALE_SHIFT[1]_41 ),
        .I3(LIMIT[13]),
        .O(\m_axis_tdata[143]_INST_0_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[143]_INST_0_i_89 
       (.I0(\SCALE_SHIFT[0]_87 ),
        .I1(LIMIT[10]),
        .I2(\SCALE_SHIFT[0]_88 ),
        .I3(LIMIT[11]),
        .O(\m_axis_tdata[143]_INST_0_i_89_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[143]_INST_0_i_9 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[143]_INST_0_i_9_n_0 ,\m_axis_tdata[143]_INST_0_i_9_n_1 ,\m_axis_tdata[143]_INST_0_i_9_n_2 ,\m_axis_tdata[143]_INST_0_i_9_n_3 ,\m_axis_tdata[143]_INST_0_i_9_n_4 ,\m_axis_tdata[143]_INST_0_i_9_n_5 ,\m_axis_tdata[143]_INST_0_i_9_n_6 ,\m_axis_tdata[143]_INST_0_i_9_n_7 }),
        .DI({\m_axis_tdata[143]_INST_0_i_47_n_0 ,\m_axis_tdata[143]_INST_0_i_48_n_0 ,\m_axis_tdata[143]_INST_0_i_49_n_0 ,\m_axis_tdata[143]_INST_0_i_50_n_0 ,\m_axis_tdata[143]_INST_0_i_51_n_0 ,\m_axis_tdata[143]_INST_0_i_52_n_0 ,\m_axis_tdata[143]_INST_0_i_53_n_0 ,\m_axis_tdata[143]_INST_0_i_54_n_0 }),
        .O(\NLW_m_axis_tdata[143]_INST_0_i_9_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[143]_INST_0_i_55_n_0 ,\m_axis_tdata[143]_INST_0_i_56_n_0 ,\m_axis_tdata[143]_INST_0_i_57_n_0 ,\m_axis_tdata[143]_INST_0_i_58_n_0 ,\m_axis_tdata[143]_INST_0_i_59_n_0 ,\m_axis_tdata[143]_INST_0_i_60_n_0 ,\m_axis_tdata[143]_INST_0_i_61_n_0 ,\m_axis_tdata[143]_INST_0_i_62_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[143]_INST_0_i_90 
       (.I0(\SCALE_SHIFT[0]_84 ),
        .I1(LIMIT[8]),
        .I2(\SCALE_SHIFT[0]_85 ),
        .I3(LIMIT[9]),
        .O(\m_axis_tdata[143]_INST_0_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[143]_INST_0_i_91 
       (.I0(\SCALE_SHIFT[1]_42 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[0]_86 ),
        .I3(LIMIT[7]),
        .O(\m_axis_tdata[143]_INST_0_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[143]_INST_0_i_92 
       (.I0(\SCALE_SHIFT[0]_82 ),
        .I1(LIMIT[4]),
        .I2(\SCALE_SHIFT[0]_83 ),
        .I3(LIMIT[5]),
        .O(\m_axis_tdata[143]_INST_0_i_92_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[143]_INST_0_i_93 
       (.I0(\SCALE_SHIFT[0]_80 ),
        .I1(LIMIT[2]),
        .I2(\SCALE_SHIFT[0]_81 ),
        .I3(LIMIT[3]),
        .O(\m_axis_tdata[143]_INST_0_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[143]_INST_0_i_94 
       (.I0(\SCALE_SHIFT[1]_39 ),
        .I1(LIMIT[0]),
        .I2(\SCALE_SHIFT[0]_79 ),
        .I3(LIMIT[1]),
        .O(\m_axis_tdata[143]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \m_axis_tdata[143]_INST_0_i_95 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[135]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[143]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[143]_INST_0_i_114_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[143]_INST_0_i_96 
       (.I0(\m_axis_tdata[143]_INST_0_i_103_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[143]_INST_0_i_115_n_0 ),
        .O(\m_axis_tdata[143]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[143]_INST_0_i_97 
       (.I0(s_axis_tdata[128]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[136]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[143]),
        .O(\m_axis_tdata[143]_INST_0_i_97_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[143]_INST_0_i_98 
       (.I0(s_axis_tdata[132]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[140]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[143]),
        .O(\m_axis_tdata[143]_INST_0_i_98_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[143]_INST_0_i_99 
       (.I0(s_axis_tdata[130]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[138]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[143]),
        .O(\m_axis_tdata[143]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[144]_INST_0_i_1 
       (.I0(SCALE_SHIFT[1]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[144]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_43 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[145]_INST_0_i_1 
       (.I0(\m_axis_tdata[145]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[146]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_89 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[145]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[144]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[145]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair177" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[146]_INST_0_i_1 
       (.I0(\m_axis_tdata[146]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[147]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_90 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[146]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[145]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[146]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[147]_INST_0_i_1 
       (.I0(\m_axis_tdata[147]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[148]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_91 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[147]_INST_0_i_2 
       (.I0(s_axis_tdata[144]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[146]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[147]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair176" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[148]_INST_0_i_1 
       (.I0(\m_axis_tdata[148]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[149]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_92 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[148]_INST_0_i_2 
       (.I0(s_axis_tdata[145]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[147]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[148]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair171" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[149]_INST_0_i_1 
       (.I0(\m_axis_tdata[149]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[150]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_93 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[149]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[146]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[151]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[149]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[14]_INST_0_i_1 
       (.I0(\m_axis_tdata[14]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[15]_INST_0_i_7_n_0 ),
        .O(\SCALE_SHIFT[1]_81 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[14]_INST_0_i_2 
       (.I0(s_axis_tdata[7]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[3]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[11]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[14]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[150]_INST_0_i_1 
       (.I0(\m_axis_tdata[151]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[153]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[150]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_46 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[150]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[147]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[152]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[150]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[151]_INST_0_i_1 
       (.I0(\m_axis_tdata[151]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[153]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[152]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[154]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_96 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[151]_INST_0_i_2 
       (.I0(s_axis_tdata[144]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[148]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[151]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[152]_INST_0_i_1 
       (.I0(\m_axis_tdata[152]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[154]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[153]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[155]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_94 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[152]_INST_0_i_2 
       (.I0(s_axis_tdata[145]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[149]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[152]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[153]_INST_0_i_1 
       (.I0(\m_axis_tdata[153]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[155]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[154]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[156]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_95 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[153]_INST_0_i_2 
       (.I0(s_axis_tdata[146]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[150]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[153]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[154]_INST_0_i_1 
       (.I0(\m_axis_tdata[154]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[156]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[155]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[157]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_97 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[154]_INST_0_i_2 
       (.I0(s_axis_tdata[147]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[151]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[154]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[155]_INST_0_i_1 
       (.I0(\m_axis_tdata[155]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[157]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[156]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[158]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_98 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[155]_INST_0_i_2 
       (.I0(s_axis_tdata[148]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[144]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[152]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[155]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[156]_INST_0_i_1 
       (.I0(\m_axis_tdata[156]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[158]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[157]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[159]_INST_0_i_5_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_44 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[156]_INST_0_i_2 
       (.I0(s_axis_tdata[149]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[145]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[153]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[156]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[157]_INST_0_i_1 
       (.I0(\m_axis_tdata[157]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[159]_INST_0_i_5_n_0 ),
        .I3(SCALE_SHIFT[0]),
        .I4(\SCALE_SHIFT[1]_96 ),
        .O(\SCALE_SHIFT[1]_45 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[157]_INST_0_i_2 
       (.I0(s_axis_tdata[150]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[146]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[154]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[157]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[158]_INST_0_i_1 
       (.I0(\m_axis_tdata[158]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[159]_INST_0_i_7_n_0 ),
        .O(\SCALE_SHIFT[1]_96 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[158]_INST_0_i_2 
       (.I0(s_axis_tdata[151]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[147]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[155]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[158]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair175" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[159]_INST_0_i_1 
       (.I0(\m_axis_tdata[159]_INST_0_i_5_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[159]_INST_0_i_6_n_0 ),
        .O(\SCALE_SHIFT[1]_94 ));
  LUT5 #(
    .INIT(32'hFF004700)) 
    \m_axis_tdata[159]_INST_0_i_10 
       (.I0(\m_axis_tdata[159]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[159]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[159]_INST_0_i_100 
       (.I0(s_axis_tdata[150]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[158]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[159]),
        .O(\m_axis_tdata[159]_INST_0_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \m_axis_tdata[159]_INST_0_i_101 
       (.I0(\m_axis_tdata[159]_INST_0_i_114_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[151]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[3]),
        .I5(s_axis_tdata[159]),
        .O(\m_axis_tdata[159]_INST_0_i_101_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[159]_INST_0_i_102 
       (.I0(s_axis_tdata[157]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[149]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[159]),
        .O(\m_axis_tdata[159]_INST_0_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[159]_INST_0_i_103 
       (.I0(s_axis_tdata[145]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[153]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[159]),
        .O(\m_axis_tdata[159]_INST_0_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[159]_INST_0_i_104 
       (.I0(s_axis_tdata[158]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[150]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[159]),
        .O(\m_axis_tdata[159]_INST_0_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888888)) 
    \m_axis_tdata[159]_INST_0_i_105 
       (.I0(\m_axis_tdata[159]_INST_0_i_116_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[151]),
        .I4(SCALE_SHIFT[4]),
        .I5(s_axis_tdata[159]),
        .O(\m_axis_tdata[159]_INST_0_i_105_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[159]_INST_0_i_106 
       (.I0(s_axis_tdata[156]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[148]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[159]),
        .O(\m_axis_tdata[159]_INST_0_i_106_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[159]_INST_0_i_107 
       (.I0(s_axis_tdata[153]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[145]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[159]),
        .O(\m_axis_tdata[159]_INST_0_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[159]_INST_0_i_108 
       (.I0(s_axis_tdata[154]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[146]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[159]),
        .O(\m_axis_tdata[159]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[159]_INST_0_i_109 
       (.I0(s_axis_tdata[151]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[159]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[159]_INST_0_i_116_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_109_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[159]_INST_0_i_11 
       (.I0(\m_axis_tdata[159]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[159]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[159]_INST_0_i_110 
       (.I0(s_axis_tdata[152]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[144]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[159]),
        .O(\m_axis_tdata[159]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[159]_INST_0_i_111 
       (.I0(s_axis_tdata[149]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[157]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[159]_INST_0_i_107_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[159]_INST_0_i_112 
       (.I0(s_axis_tdata[150]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[158]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[159]_INST_0_i_108_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[159]_INST_0_i_113 
       (.I0(s_axis_tdata[148]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[156]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[159]_INST_0_i_110_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[159]_INST_0_i_114 
       (.I0(s_axis_tdata[147]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[155]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[159]),
        .O(\m_axis_tdata[159]_INST_0_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[159]_INST_0_i_115 
       (.I0(s_axis_tdata[149]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[157]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[159]),
        .O(\m_axis_tdata[159]_INST_0_i_115_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[159]_INST_0_i_116 
       (.I0(s_axis_tdata[155]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[147]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[159]),
        .O(\m_axis_tdata[159]_INST_0_i_116_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[159]_INST_0_i_12 
       (.I0(\m_axis_tdata[159]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[159]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[159]_INST_0_i_13 
       (.I0(\m_axis_tdata[159]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[159]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[159]_INST_0_i_14 
       (.I0(\m_axis_tdata[159]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[159]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[159]_INST_0_i_15 
       (.I0(\m_axis_tdata[159]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_72_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[159]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[159]_INST_0_i_16 
       (.I0(\m_axis_tdata[159]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_74_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[159]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[159]_INST_0_i_17 
       (.I0(\SCALE_SHIFT[1]_95 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_76_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[159]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h0047B800)) 
    \m_axis_tdata[159]_INST_0_i_18 
       (.I0(\m_axis_tdata[159]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[159]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[159]_INST_0_i_19 
       (.I0(\m_axis_tdata[159]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[159]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[159]_INST_0_i_2 
       (.I0(\m_axis_tdata[159]_INST_0_i_7_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[159]_INST_0_i_8_n_0 ),
        .O(\SCALE_SHIFT[1]_95 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[159]_INST_0_i_20 
       (.I0(\m_axis_tdata[159]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[159]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[159]_INST_0_i_21 
       (.I0(\m_axis_tdata[159]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[159]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[159]_INST_0_i_22 
       (.I0(\m_axis_tdata[159]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[159]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[159]_INST_0_i_23 
       (.I0(\m_axis_tdata[159]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_72_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[159]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[159]_INST_0_i_24 
       (.I0(\m_axis_tdata[159]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_74_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[159]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[159]_INST_0_i_25 
       (.I0(\SCALE_SHIFT[1]_95 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_76_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[159]_INST_0_i_25_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[159]_INST_0_i_26 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[159]_INST_0_i_26_n_0 ,\m_axis_tdata[159]_INST_0_i_26_n_1 ,\m_axis_tdata[159]_INST_0_i_26_n_2 ,\m_axis_tdata[159]_INST_0_i_26_n_3 ,\m_axis_tdata[159]_INST_0_i_26_n_4 ,\m_axis_tdata[159]_INST_0_i_26_n_5 ,\m_axis_tdata[159]_INST_0_i_26_n_6 ,\m_axis_tdata[159]_INST_0_i_26_n_7 }),
        .DI({\m_axis_tdata[159]_INST_0_i_79_n_0 ,\m_axis_tdata[159]_INST_0_i_80_n_0 ,\m_axis_tdata[159]_INST_0_i_81_n_0 ,\m_axis_tdata[159]_INST_0_i_82_n_0 ,\m_axis_tdata[159]_INST_0_i_83_n_0 ,\m_axis_tdata[159]_INST_0_i_84_n_0 ,\m_axis_tdata[159]_INST_0_i_85_n_0 ,\m_axis_tdata[159]_INST_0_i_86_n_0 }),
        .O(\NLW_m_axis_tdata[159]_INST_0_i_26_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[159]_INST_0_i_87_n_0 ,\m_axis_tdata[159]_INST_0_i_88_n_0 ,\m_axis_tdata[159]_INST_0_i_89_n_0 ,\m_axis_tdata[159]_INST_0_i_90_n_0 ,\m_axis_tdata[159]_INST_0_i_91_n_0 ,\m_axis_tdata[159]_INST_0_i_92_n_0 ,\m_axis_tdata[159]_INST_0_i_93_n_0 ,\m_axis_tdata[159]_INST_0_i_94_n_0 }));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[159]_INST_0_i_27 
       (.I0(\m_axis_tdata[159]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[159]_INST_0_i_28 
       (.I0(\m_axis_tdata[159]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[159]_INST_0_i_29 
       (.I0(\m_axis_tdata[159]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_29_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[159]_INST_0_i_3 
       (.CI(\m_axis_tdata[159]_INST_0_i_9_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_180 ,\m_axis_tdata[159]_INST_0_i_3_n_1 ,\m_axis_tdata[159]_INST_0_i_3_n_2 ,\m_axis_tdata[159]_INST_0_i_3_n_3 ,\m_axis_tdata[159]_INST_0_i_3_n_4 ,\m_axis_tdata[159]_INST_0_i_3_n_5 ,\m_axis_tdata[159]_INST_0_i_3_n_6 ,\m_axis_tdata[159]_INST_0_i_3_n_7 }),
        .DI({\m_axis_tdata[159]_INST_0_i_10_n_0 ,\m_axis_tdata[159]_INST_0_i_11_n_0 ,\m_axis_tdata[159]_INST_0_i_12_n_0 ,\m_axis_tdata[159]_INST_0_i_13_n_0 ,\m_axis_tdata[159]_INST_0_i_14_n_0 ,\m_axis_tdata[159]_INST_0_i_15_n_0 ,\m_axis_tdata[159]_INST_0_i_16_n_0 ,\m_axis_tdata[159]_INST_0_i_17_n_0 }),
        .O(\NLW_m_axis_tdata[159]_INST_0_i_3_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[159]_INST_0_i_18_n_0 ,\m_axis_tdata[159]_INST_0_i_19_n_0 ,\m_axis_tdata[159]_INST_0_i_20_n_0 ,\m_axis_tdata[159]_INST_0_i_21_n_0 ,\m_axis_tdata[159]_INST_0_i_22_n_0 ,\m_axis_tdata[159]_INST_0_i_23_n_0 ,\m_axis_tdata[159]_INST_0_i_24_n_0 ,\m_axis_tdata[159]_INST_0_i_25_n_0 }));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[159]_INST_0_i_30 
       (.I0(\m_axis_tdata[159]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[159]_INST_0_i_31 
       (.I0(\m_axis_tdata[159]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[159]_INST_0_i_32 
       (.I0(\m_axis_tdata[159]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_72_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[159]_INST_0_i_33 
       (.I0(\m_axis_tdata[159]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_74_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[159]_INST_0_i_34 
       (.I0(\SCALE_SHIFT[1]_95 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_76_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \m_axis_tdata[159]_INST_0_i_35 
       (.I0(\m_axis_tdata[159]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[159]_INST_0_i_36 
       (.I0(\m_axis_tdata[159]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[159]_INST_0_i_37 
       (.I0(\m_axis_tdata[159]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[159]_INST_0_i_38 
       (.I0(\m_axis_tdata[159]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[159]_INST_0_i_39 
       (.I0(\m_axis_tdata[159]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_39_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[159]_INST_0_i_4 
       (.CI(\m_axis_tdata[159]_INST_0_i_26_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_181 ,\m_axis_tdata[159]_INST_0_i_4_n_1 ,\m_axis_tdata[159]_INST_0_i_4_n_2 ,\m_axis_tdata[159]_INST_0_i_4_n_3 ,\m_axis_tdata[159]_INST_0_i_4_n_4 ,\m_axis_tdata[159]_INST_0_i_4_n_5 ,\m_axis_tdata[159]_INST_0_i_4_n_6 ,\m_axis_tdata[159]_INST_0_i_4_n_7 }),
        .DI({\m_axis_tdata[159]_INST_0_i_27_n_0 ,\m_axis_tdata[159]_INST_0_i_28_n_0 ,\m_axis_tdata[159]_INST_0_i_29_n_0 ,\m_axis_tdata[159]_INST_0_i_30_n_0 ,\m_axis_tdata[159]_INST_0_i_31_n_0 ,\m_axis_tdata[159]_INST_0_i_32_n_0 ,\m_axis_tdata[159]_INST_0_i_33_n_0 ,\m_axis_tdata[159]_INST_0_i_34_n_0 }),
        .O(\NLW_m_axis_tdata[159]_INST_0_i_4_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[159]_INST_0_i_35_n_0 ,\m_axis_tdata[159]_INST_0_i_36_n_0 ,\m_axis_tdata[159]_INST_0_i_37_n_0 ,\m_axis_tdata[159]_INST_0_i_38_n_0 ,\m_axis_tdata[159]_INST_0_i_39_n_0 ,\m_axis_tdata[159]_INST_0_i_40_n_0 ,\m_axis_tdata[159]_INST_0_i_41_n_0 ,\m_axis_tdata[159]_INST_0_i_42_n_0 }));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[159]_INST_0_i_40 
       (.I0(\m_axis_tdata[159]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_72_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[159]_INST_0_i_41 
       (.I0(\m_axis_tdata[159]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_74_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[159]_INST_0_i_42 
       (.I0(\SCALE_SHIFT[1]_95 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_76_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[159]_INST_0_i_43 
       (.I0(s_axis_tdata[148]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[156]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[159]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[159]_INST_0_i_44 
       (.I0(s_axis_tdata[150]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[158]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[159]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[159]_INST_0_i_45 
       (.I0(s_axis_tdata[149]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[157]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[159]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[159]_INST_0_i_46 
       (.I0(s_axis_tdata[151]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[159]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[159]_INST_0_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[159]_INST_0_i_47 
       (.I0(\SCALE_SHIFT[1]_96 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_94 ),
        .I3(\SCALE_SHIFT[1]_95 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[159]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[159]_INST_0_i_48 
       (.I0(\SCALE_SHIFT[1]_44 ),
        .I1(LIMIT_11_sn_1),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_45 ),
        .O(\m_axis_tdata[159]_INST_0_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h0009999F)) 
    \m_axis_tdata[159]_INST_0_i_49 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\SCALE_SHIFT[0]_97 ),
        .I3(\LIMIT[9]_0 ),
        .I4(\SCALE_SHIFT[0]_98 ),
        .O(\m_axis_tdata[159]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[159]_INST_0_i_5 
       (.I0(s_axis_tdata[144]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[152]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[159]_INST_0_i_43_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[159]_INST_0_i_50 
       (.I0(\SCALE_SHIFT[0]_94 ),
        .I1(LIMIT_7_sn_1),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_95 ),
        .O(\m_axis_tdata[159]_INST_0_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h000909FF)) 
    \m_axis_tdata[159]_INST_0_i_51 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_46 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_96 ),
        .O(\m_axis_tdata[159]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[159]_INST_0_i_52 
       (.I0(\SCALE_SHIFT[0]_92 ),
        .I1(LIMIT_3_sn_1),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_93 ),
        .O(\m_axis_tdata[159]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h000011141117FFFC)) 
    \m_axis_tdata[159]_INST_0_i_53 
       (.I0(\SCALE_SHIFT[0]_90 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_91 ),
        .O(\m_axis_tdata[159]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h047C)) 
    \m_axis_tdata[159]_INST_0_i_54 
       (.I0(\SCALE_SHIFT[1]_43 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_89 ),
        .O(\m_axis_tdata[159]_INST_0_i_54_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[159]_INST_0_i_55 
       (.I0(\SCALE_SHIFT[1]_96 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_94 ),
        .I3(\SCALE_SHIFT[1]_95 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[159]_INST_0_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[159]_INST_0_i_56 
       (.I0(LIMIT_11_sn_1),
        .I1(\SCALE_SHIFT[1]_44 ),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_45 ),
        .O(\m_axis_tdata[159]_INST_0_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h09900660)) 
    \m_axis_tdata[159]_INST_0_i_57 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\LIMIT[9]_0 ),
        .I3(\SCALE_SHIFT[0]_97 ),
        .I4(\SCALE_SHIFT[0]_98 ),
        .O(\m_axis_tdata[159]_INST_0_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[159]_INST_0_i_58 
       (.I0(LIMIT_7_sn_1),
        .I1(\SCALE_SHIFT[0]_94 ),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_95 ),
        .O(\m_axis_tdata[159]_INST_0_i_58_n_0 ));
  LUT5 #(
    .INIT(32'h00969600)) 
    \m_axis_tdata[159]_INST_0_i_59 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_46 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_96 ),
        .O(\m_axis_tdata[159]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[159]_INST_0_i_6 
       (.I0(s_axis_tdata[146]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[154]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[159]_INST_0_i_44_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[159]_INST_0_i_60 
       (.I0(LIMIT_3_sn_1),
        .I1(\SCALE_SHIFT[0]_92 ),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_93 ),
        .O(\m_axis_tdata[159]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h0001666866680001)) 
    \m_axis_tdata[159]_INST_0_i_61 
       (.I0(\SCALE_SHIFT[0]_90 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_91 ),
        .O(\m_axis_tdata[159]_INST_0_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h1881)) 
    \m_axis_tdata[159]_INST_0_i_62 
       (.I0(\SCALE_SHIFT[1]_43 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_89 ),
        .O(\m_axis_tdata[159]_INST_0_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[159]_INST_0_i_63 
       (.I0(\m_axis_tdata[159]_INST_0_i_95_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[159]_INST_0_i_96_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \m_axis_tdata[159]_INST_0_i_64 
       (.I0(\m_axis_tdata[159]_INST_0_i_97_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[159]_INST_0_i_98_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[159]_INST_0_i_99_n_0 ),
        .I5(\m_axis_tdata[159]_INST_0_i_100_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_64_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[159]_INST_0_i_65 
       (.I0(\m_axis_tdata[159]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[159]_INST_0_i_96_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[159]_INST_0_i_101_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_65_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[159]_INST_0_i_66 
       (.I0(\m_axis_tdata[159]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[159]_INST_0_i_103_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[159]_INST_0_i_95_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[159]_INST_0_i_67 
       (.I0(\m_axis_tdata[159]_INST_0_i_104_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[159]_INST_0_i_99_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_97_n_0 ),
        .I4(\m_axis_tdata[159]_INST_0_i_98_n_0 ),
        .I5(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[159]_INST_0_i_67_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[159]_INST_0_i_68 
       (.I0(\m_axis_tdata[159]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[159]_INST_0_i_103_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_105_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[159]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[159]_INST_0_i_69 
       (.I0(\m_axis_tdata[159]_INST_0_i_106_n_0 ),
        .I1(\m_axis_tdata[159]_INST_0_i_97_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[159]_INST_0_i_104_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[159]_INST_0_i_99_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[159]_INST_0_i_7 
       (.I0(s_axis_tdata[145]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[153]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[159]_INST_0_i_45_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[159]_INST_0_i_70 
       (.I0(\m_axis_tdata[159]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[159]_INST_0_i_102_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[159]_INST_0_i_105_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[159]_INST_0_i_71 
       (.I0(\m_axis_tdata[159]_INST_0_i_108_n_0 ),
        .I1(\m_axis_tdata[159]_INST_0_i_104_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[159]_INST_0_i_106_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[159]_INST_0_i_97_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_71_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[159]_INST_0_i_72 
       (.I0(\m_axis_tdata[159]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[159]_INST_0_i_102_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_109_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[159]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[159]_INST_0_i_73 
       (.I0(\m_axis_tdata[159]_INST_0_i_110_n_0 ),
        .I1(\m_axis_tdata[159]_INST_0_i_106_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[159]_INST_0_i_108_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[159]_INST_0_i_104_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_73_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair173" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[159]_INST_0_i_74 
       (.I0(\m_axis_tdata[159]_INST_0_i_111_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[159]_INST_0_i_109_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_74_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[159]_INST_0_i_75 
       (.I0(\m_axis_tdata[159]_INST_0_i_110_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[159]_INST_0_i_106_n_0 ),
        .I3(\m_axis_tdata[159]_INST_0_i_112_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[159]_INST_0_i_75_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair174" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[159]_INST_0_i_76 
       (.I0(\m_axis_tdata[159]_INST_0_i_8_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[159]_INST_0_i_111_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[159]_INST_0_i_77 
       (.I0(\m_axis_tdata[159]_INST_0_i_113_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[159]_INST_0_i_112_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_77_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair172" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[159]_INST_0_i_78 
       (.I0(\m_axis_tdata[159]_INST_0_i_6_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[159]_INST_0_i_113_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_78_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[159]_INST_0_i_79 
       (.I0(\SCALE_SHIFT[1]_96 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_94 ),
        .I3(\SCALE_SHIFT[1]_95 ),
        .O(\m_axis_tdata[159]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[159]_INST_0_i_8 
       (.I0(s_axis_tdata[147]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[155]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[159]_INST_0_i_46_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[159]_INST_0_i_80 
       (.I0(\SCALE_SHIFT[1]_44 ),
        .I1(LIMIT[12]),
        .I2(LIMIT[13]),
        .I3(\SCALE_SHIFT[1]_45 ),
        .O(\m_axis_tdata[159]_INST_0_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[159]_INST_0_i_81 
       (.I0(\SCALE_SHIFT[0]_97 ),
        .I1(LIMIT[10]),
        .I2(LIMIT[11]),
        .I3(\SCALE_SHIFT[0]_98 ),
        .O(\m_axis_tdata[159]_INST_0_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[159]_INST_0_i_82 
       (.I0(\SCALE_SHIFT[0]_94 ),
        .I1(LIMIT[8]),
        .I2(LIMIT[9]),
        .I3(\SCALE_SHIFT[0]_95 ),
        .O(\m_axis_tdata[159]_INST_0_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[159]_INST_0_i_83 
       (.I0(\SCALE_SHIFT[1]_46 ),
        .I1(LIMIT[6]),
        .I2(LIMIT[7]),
        .I3(\SCALE_SHIFT[0]_96 ),
        .O(\m_axis_tdata[159]_INST_0_i_83_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[159]_INST_0_i_84 
       (.I0(\SCALE_SHIFT[0]_92 ),
        .I1(LIMIT[4]),
        .I2(LIMIT[5]),
        .I3(\SCALE_SHIFT[0]_93 ),
        .O(\m_axis_tdata[159]_INST_0_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[159]_INST_0_i_85 
       (.I0(\SCALE_SHIFT[0]_90 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[3]),
        .I3(\SCALE_SHIFT[0]_91 ),
        .O(\m_axis_tdata[159]_INST_0_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[159]_INST_0_i_86 
       (.I0(\SCALE_SHIFT[1]_43 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_89 ),
        .O(\m_axis_tdata[159]_INST_0_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[159]_INST_0_i_87 
       (.I0(\SCALE_SHIFT[1]_96 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_94 ),
        .I3(\SCALE_SHIFT[1]_95 ),
        .O(\m_axis_tdata[159]_INST_0_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[159]_INST_0_i_88 
       (.I0(\SCALE_SHIFT[1]_44 ),
        .I1(LIMIT[12]),
        .I2(\SCALE_SHIFT[1]_45 ),
        .I3(LIMIT[13]),
        .O(\m_axis_tdata[159]_INST_0_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[159]_INST_0_i_89 
       (.I0(\SCALE_SHIFT[0]_97 ),
        .I1(LIMIT[10]),
        .I2(\SCALE_SHIFT[0]_98 ),
        .I3(LIMIT[11]),
        .O(\m_axis_tdata[159]_INST_0_i_89_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[159]_INST_0_i_9 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[159]_INST_0_i_9_n_0 ,\m_axis_tdata[159]_INST_0_i_9_n_1 ,\m_axis_tdata[159]_INST_0_i_9_n_2 ,\m_axis_tdata[159]_INST_0_i_9_n_3 ,\m_axis_tdata[159]_INST_0_i_9_n_4 ,\m_axis_tdata[159]_INST_0_i_9_n_5 ,\m_axis_tdata[159]_INST_0_i_9_n_6 ,\m_axis_tdata[159]_INST_0_i_9_n_7 }),
        .DI({\m_axis_tdata[159]_INST_0_i_47_n_0 ,\m_axis_tdata[159]_INST_0_i_48_n_0 ,\m_axis_tdata[159]_INST_0_i_49_n_0 ,\m_axis_tdata[159]_INST_0_i_50_n_0 ,\m_axis_tdata[159]_INST_0_i_51_n_0 ,\m_axis_tdata[159]_INST_0_i_52_n_0 ,\m_axis_tdata[159]_INST_0_i_53_n_0 ,\m_axis_tdata[159]_INST_0_i_54_n_0 }),
        .O(\NLW_m_axis_tdata[159]_INST_0_i_9_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[159]_INST_0_i_55_n_0 ,\m_axis_tdata[159]_INST_0_i_56_n_0 ,\m_axis_tdata[159]_INST_0_i_57_n_0 ,\m_axis_tdata[159]_INST_0_i_58_n_0 ,\m_axis_tdata[159]_INST_0_i_59_n_0 ,\m_axis_tdata[159]_INST_0_i_60_n_0 ,\m_axis_tdata[159]_INST_0_i_61_n_0 ,\m_axis_tdata[159]_INST_0_i_62_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[159]_INST_0_i_90 
       (.I0(\SCALE_SHIFT[0]_94 ),
        .I1(LIMIT[8]),
        .I2(\SCALE_SHIFT[0]_95 ),
        .I3(LIMIT[9]),
        .O(\m_axis_tdata[159]_INST_0_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[159]_INST_0_i_91 
       (.I0(\SCALE_SHIFT[1]_46 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[0]_96 ),
        .I3(LIMIT[7]),
        .O(\m_axis_tdata[159]_INST_0_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[159]_INST_0_i_92 
       (.I0(\SCALE_SHIFT[0]_92 ),
        .I1(LIMIT[4]),
        .I2(\SCALE_SHIFT[0]_93 ),
        .I3(LIMIT[5]),
        .O(\m_axis_tdata[159]_INST_0_i_92_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[159]_INST_0_i_93 
       (.I0(\SCALE_SHIFT[0]_90 ),
        .I1(LIMIT[2]),
        .I2(\SCALE_SHIFT[0]_91 ),
        .I3(LIMIT[3]),
        .O(\m_axis_tdata[159]_INST_0_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[159]_INST_0_i_94 
       (.I0(\SCALE_SHIFT[1]_43 ),
        .I1(LIMIT[0]),
        .I2(\SCALE_SHIFT[0]_89 ),
        .I3(LIMIT[1]),
        .O(\m_axis_tdata[159]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \m_axis_tdata[159]_INST_0_i_95 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[151]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[159]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[159]_INST_0_i_114_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair166" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[159]_INST_0_i_96 
       (.I0(\m_axis_tdata[159]_INST_0_i_103_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[159]_INST_0_i_115_n_0 ),
        .O(\m_axis_tdata[159]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[159]_INST_0_i_97 
       (.I0(s_axis_tdata[144]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[152]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[159]),
        .O(\m_axis_tdata[159]_INST_0_i_97_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[159]_INST_0_i_98 
       (.I0(s_axis_tdata[148]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[156]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[159]),
        .O(\m_axis_tdata[159]_INST_0_i_98_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[159]_INST_0_i_99 
       (.I0(s_axis_tdata[146]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[154]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[159]),
        .O(\m_axis_tdata[159]_INST_0_i_99_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair116" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[15]_INST_0_i_1 
       (.I0(\m_axis_tdata[15]_INST_0_i_5_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[15]_INST_0_i_6_n_0 ),
        .O(\SCALE_SHIFT[1]_79 ));
  LUT5 #(
    .INIT(32'hFF004700)) 
    \m_axis_tdata[15]_INST_0_i_10 
       (.I0(\m_axis_tdata[15]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[15]_INST_0_i_100 
       (.I0(s_axis_tdata[6]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[14]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[15]),
        .O(\m_axis_tdata[15]_INST_0_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \m_axis_tdata[15]_INST_0_i_101 
       (.I0(\m_axis_tdata[15]_INST_0_i_114_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[7]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[3]),
        .I5(s_axis_tdata[15]),
        .O(\m_axis_tdata[15]_INST_0_i_101_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[15]_INST_0_i_102 
       (.I0(s_axis_tdata[13]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[5]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[15]),
        .O(\m_axis_tdata[15]_INST_0_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[15]_INST_0_i_103 
       (.I0(s_axis_tdata[1]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[9]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[15]),
        .O(\m_axis_tdata[15]_INST_0_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[15]_INST_0_i_104 
       (.I0(s_axis_tdata[14]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[6]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[15]),
        .O(\m_axis_tdata[15]_INST_0_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888888)) 
    \m_axis_tdata[15]_INST_0_i_105 
       (.I0(\m_axis_tdata[15]_INST_0_i_116_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[7]),
        .I4(SCALE_SHIFT[4]),
        .I5(s_axis_tdata[15]),
        .O(\m_axis_tdata[15]_INST_0_i_105_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[15]_INST_0_i_106 
       (.I0(s_axis_tdata[12]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[4]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[15]),
        .O(\m_axis_tdata[15]_INST_0_i_106_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[15]_INST_0_i_107 
       (.I0(s_axis_tdata[9]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[1]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[15]),
        .O(\m_axis_tdata[15]_INST_0_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[15]_INST_0_i_108 
       (.I0(s_axis_tdata[10]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[2]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[15]),
        .O(\m_axis_tdata[15]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[15]_INST_0_i_109 
       (.I0(s_axis_tdata[7]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[15]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[15]_INST_0_i_116_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_109_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[15]_INST_0_i_11 
       (.I0(\m_axis_tdata[15]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[15]_INST_0_i_110 
       (.I0(s_axis_tdata[8]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[0]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[15]),
        .O(\m_axis_tdata[15]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[15]_INST_0_i_111 
       (.I0(s_axis_tdata[5]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[13]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[15]_INST_0_i_107_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[15]_INST_0_i_112 
       (.I0(s_axis_tdata[6]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[14]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[15]_INST_0_i_108_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[15]_INST_0_i_113 
       (.I0(s_axis_tdata[4]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[12]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[15]_INST_0_i_110_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[15]_INST_0_i_114 
       (.I0(s_axis_tdata[3]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[11]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[15]),
        .O(\m_axis_tdata[15]_INST_0_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[15]_INST_0_i_115 
       (.I0(s_axis_tdata[5]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[13]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[15]),
        .O(\m_axis_tdata[15]_INST_0_i_115_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[15]_INST_0_i_116 
       (.I0(s_axis_tdata[11]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[3]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[15]),
        .O(\m_axis_tdata[15]_INST_0_i_116_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[15]_INST_0_i_12 
       (.I0(\m_axis_tdata[15]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[15]_INST_0_i_13 
       (.I0(\m_axis_tdata[15]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[15]_INST_0_i_14 
       (.I0(\m_axis_tdata[15]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[15]_INST_0_i_15 
       (.I0(\m_axis_tdata[15]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_72_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[15]_INST_0_i_16 
       (.I0(\m_axis_tdata[15]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_74_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[15]_INST_0_i_17 
       (.I0(\SCALE_SHIFT[1]_80 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_76_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h0047B800)) 
    \m_axis_tdata[15]_INST_0_i_18 
       (.I0(\m_axis_tdata[15]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[15]_INST_0_i_19 
       (.I0(\m_axis_tdata[15]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[15]_INST_0_i_2 
       (.I0(\m_axis_tdata[15]_INST_0_i_7_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[15]_INST_0_i_8_n_0 ),
        .O(\SCALE_SHIFT[1]_80 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[15]_INST_0_i_20 
       (.I0(\m_axis_tdata[15]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[15]_INST_0_i_21 
       (.I0(\m_axis_tdata[15]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[15]_INST_0_i_22 
       (.I0(\m_axis_tdata[15]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[15]_INST_0_i_23 
       (.I0(\m_axis_tdata[15]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_72_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[15]_INST_0_i_24 
       (.I0(\m_axis_tdata[15]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_74_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[15]_INST_0_i_25 
       (.I0(\SCALE_SHIFT[1]_80 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_76_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_25_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[15]_INST_0_i_26 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[15]_INST_0_i_26_n_0 ,\m_axis_tdata[15]_INST_0_i_26_n_1 ,\m_axis_tdata[15]_INST_0_i_26_n_2 ,\m_axis_tdata[15]_INST_0_i_26_n_3 ,\m_axis_tdata[15]_INST_0_i_26_n_4 ,\m_axis_tdata[15]_INST_0_i_26_n_5 ,\m_axis_tdata[15]_INST_0_i_26_n_6 ,\m_axis_tdata[15]_INST_0_i_26_n_7 }),
        .DI({\m_axis_tdata[15]_INST_0_i_79_n_0 ,\m_axis_tdata[15]_INST_0_i_80_n_0 ,\m_axis_tdata[15]_INST_0_i_81_n_0 ,\m_axis_tdata[15]_INST_0_i_82_n_0 ,\m_axis_tdata[15]_INST_0_i_83_n_0 ,\m_axis_tdata[15]_INST_0_i_84_n_0 ,\m_axis_tdata[15]_INST_0_i_85_n_0 ,\m_axis_tdata[15]_INST_0_i_86_n_0 }),
        .O(\NLW_m_axis_tdata[15]_INST_0_i_26_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[15]_INST_0_i_87_n_0 ,\m_axis_tdata[15]_INST_0_i_88_n_0 ,\m_axis_tdata[15]_INST_0_i_89_n_0 ,\m_axis_tdata[15]_INST_0_i_90_n_0 ,\m_axis_tdata[15]_INST_0_i_91_n_0 ,\m_axis_tdata[15]_INST_0_i_92_n_0 ,\m_axis_tdata[15]_INST_0_i_93_n_0 ,\m_axis_tdata[15]_INST_0_i_94_n_0 }));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[15]_INST_0_i_27 
       (.I0(\m_axis_tdata[15]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[15]_INST_0_i_28 
       (.I0(\m_axis_tdata[15]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[15]_INST_0_i_29 
       (.I0(\m_axis_tdata[15]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_29_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[15]_INST_0_i_3 
       (.CI(\m_axis_tdata[15]_INST_0_i_9_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_161 ,\m_axis_tdata[15]_INST_0_i_3_n_1 ,\m_axis_tdata[15]_INST_0_i_3_n_2 ,\m_axis_tdata[15]_INST_0_i_3_n_3 ,\m_axis_tdata[15]_INST_0_i_3_n_4 ,\m_axis_tdata[15]_INST_0_i_3_n_5 ,\m_axis_tdata[15]_INST_0_i_3_n_6 ,\m_axis_tdata[15]_INST_0_i_3_n_7 }),
        .DI({\m_axis_tdata[15]_INST_0_i_10_n_0 ,\m_axis_tdata[15]_INST_0_i_11_n_0 ,\m_axis_tdata[15]_INST_0_i_12_n_0 ,\m_axis_tdata[15]_INST_0_i_13_n_0 ,\m_axis_tdata[15]_INST_0_i_14_n_0 ,\m_axis_tdata[15]_INST_0_i_15_n_0 ,\m_axis_tdata[15]_INST_0_i_16_n_0 ,\m_axis_tdata[15]_INST_0_i_17_n_0 }),
        .O(\NLW_m_axis_tdata[15]_INST_0_i_3_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[15]_INST_0_i_18_n_0 ,\m_axis_tdata[15]_INST_0_i_19_n_0 ,\m_axis_tdata[15]_INST_0_i_20_n_0 ,\m_axis_tdata[15]_INST_0_i_21_n_0 ,\m_axis_tdata[15]_INST_0_i_22_n_0 ,\m_axis_tdata[15]_INST_0_i_23_n_0 ,\m_axis_tdata[15]_INST_0_i_24_n_0 ,\m_axis_tdata[15]_INST_0_i_25_n_0 }));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[15]_INST_0_i_30 
       (.I0(\m_axis_tdata[15]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[15]_INST_0_i_31 
       (.I0(\m_axis_tdata[15]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[15]_INST_0_i_32 
       (.I0(\m_axis_tdata[15]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_72_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[15]_INST_0_i_33 
       (.I0(\m_axis_tdata[15]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_74_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[15]_INST_0_i_34 
       (.I0(\SCALE_SHIFT[1]_80 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_76_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \m_axis_tdata[15]_INST_0_i_35 
       (.I0(\m_axis_tdata[15]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[15]_INST_0_i_36 
       (.I0(\m_axis_tdata[15]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[15]_INST_0_i_37 
       (.I0(\m_axis_tdata[15]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[15]_INST_0_i_38 
       (.I0(\m_axis_tdata[15]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[15]_INST_0_i_39 
       (.I0(\m_axis_tdata[15]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_39_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[15]_INST_0_i_4 
       (.CI(\m_axis_tdata[15]_INST_0_i_26_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_160 ,\m_axis_tdata[15]_INST_0_i_4_n_1 ,\m_axis_tdata[15]_INST_0_i_4_n_2 ,\m_axis_tdata[15]_INST_0_i_4_n_3 ,\m_axis_tdata[15]_INST_0_i_4_n_4 ,\m_axis_tdata[15]_INST_0_i_4_n_5 ,\m_axis_tdata[15]_INST_0_i_4_n_6 ,\m_axis_tdata[15]_INST_0_i_4_n_7 }),
        .DI({\m_axis_tdata[15]_INST_0_i_27_n_0 ,\m_axis_tdata[15]_INST_0_i_28_n_0 ,\m_axis_tdata[15]_INST_0_i_29_n_0 ,\m_axis_tdata[15]_INST_0_i_30_n_0 ,\m_axis_tdata[15]_INST_0_i_31_n_0 ,\m_axis_tdata[15]_INST_0_i_32_n_0 ,\m_axis_tdata[15]_INST_0_i_33_n_0 ,\m_axis_tdata[15]_INST_0_i_34_n_0 }),
        .O(\NLW_m_axis_tdata[15]_INST_0_i_4_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[15]_INST_0_i_35_n_0 ,\m_axis_tdata[15]_INST_0_i_36_n_0 ,\m_axis_tdata[15]_INST_0_i_37_n_0 ,\m_axis_tdata[15]_INST_0_i_38_n_0 ,\m_axis_tdata[15]_INST_0_i_39_n_0 ,\m_axis_tdata[15]_INST_0_i_40_n_0 ,\m_axis_tdata[15]_INST_0_i_41_n_0 ,\m_axis_tdata[15]_INST_0_i_42_n_0 }));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[15]_INST_0_i_40 
       (.I0(\m_axis_tdata[15]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_72_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[15]_INST_0_i_41 
       (.I0(\m_axis_tdata[15]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_74_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[15]_INST_0_i_42 
       (.I0(\SCALE_SHIFT[1]_80 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_76_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[15]_INST_0_i_43 
       (.I0(s_axis_tdata[4]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[12]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[15]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[15]_INST_0_i_44 
       (.I0(s_axis_tdata[6]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[14]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[15]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[15]_INST_0_i_45 
       (.I0(s_axis_tdata[5]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[13]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[15]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[15]_INST_0_i_46 
       (.I0(s_axis_tdata[7]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[15]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[15]_INST_0_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[15]_INST_0_i_47 
       (.I0(\SCALE_SHIFT[1]_81 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_79 ),
        .I3(\SCALE_SHIFT[1]_80 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[15]_INST_0_i_48 
       (.I0(\SCALE_SHIFT[1]_0 ),
        .I1(LIMIT_11_sn_1),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_1 ),
        .O(\m_axis_tdata[15]_INST_0_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h0009999F)) 
    \m_axis_tdata[15]_INST_0_i_49 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\SCALE_SHIFT[0]_7 ),
        .I3(\LIMIT[9]_0 ),
        .I4(\SCALE_SHIFT[0]_8 ),
        .O(\m_axis_tdata[15]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[15]_INST_0_i_5 
       (.I0(s_axis_tdata[0]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[8]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[15]_INST_0_i_43_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[15]_INST_0_i_50 
       (.I0(\SCALE_SHIFT[0]_4 ),
        .I1(LIMIT_7_sn_1),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_5 ),
        .O(\m_axis_tdata[15]_INST_0_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h000909FF)) 
    \m_axis_tdata[15]_INST_0_i_51 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_2 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_6 ),
        .O(\m_axis_tdata[15]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[15]_INST_0_i_52 
       (.I0(\SCALE_SHIFT[0]_2 ),
        .I1(LIMIT_3_sn_1),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_3 ),
        .O(\m_axis_tdata[15]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h000011141117FFFC)) 
    \m_axis_tdata[15]_INST_0_i_53 
       (.I0(\SCALE_SHIFT[0]_0 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_1 ),
        .O(\m_axis_tdata[15]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h047C)) 
    \m_axis_tdata[15]_INST_0_i_54 
       (.I0(SCALE_SHIFT_1_sn_1),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(SCALE_SHIFT_0_sn_1),
        .O(\m_axis_tdata[15]_INST_0_i_54_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[15]_INST_0_i_55 
       (.I0(\SCALE_SHIFT[1]_81 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_79 ),
        .I3(\SCALE_SHIFT[1]_80 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[15]_INST_0_i_56 
       (.I0(LIMIT_11_sn_1),
        .I1(\SCALE_SHIFT[1]_0 ),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_1 ),
        .O(\m_axis_tdata[15]_INST_0_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h09900660)) 
    \m_axis_tdata[15]_INST_0_i_57 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\LIMIT[9]_0 ),
        .I3(\SCALE_SHIFT[0]_7 ),
        .I4(\SCALE_SHIFT[0]_8 ),
        .O(\m_axis_tdata[15]_INST_0_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[15]_INST_0_i_58 
       (.I0(LIMIT_7_sn_1),
        .I1(\SCALE_SHIFT[0]_4 ),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_5 ),
        .O(\m_axis_tdata[15]_INST_0_i_58_n_0 ));
  LUT5 #(
    .INIT(32'h00969600)) 
    \m_axis_tdata[15]_INST_0_i_59 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_2 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_6 ),
        .O(\m_axis_tdata[15]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[15]_INST_0_i_6 
       (.I0(s_axis_tdata[2]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[10]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[15]_INST_0_i_44_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[15]_INST_0_i_60 
       (.I0(LIMIT_3_sn_1),
        .I1(\SCALE_SHIFT[0]_2 ),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_3 ),
        .O(\m_axis_tdata[15]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h0001666866680001)) 
    \m_axis_tdata[15]_INST_0_i_61 
       (.I0(\SCALE_SHIFT[0]_0 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_1 ),
        .O(\m_axis_tdata[15]_INST_0_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h1881)) 
    \m_axis_tdata[15]_INST_0_i_62 
       (.I0(SCALE_SHIFT_1_sn_1),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(SCALE_SHIFT_0_sn_1),
        .O(\m_axis_tdata[15]_INST_0_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[15]_INST_0_i_63 
       (.I0(\m_axis_tdata[15]_INST_0_i_95_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[15]_INST_0_i_96_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \m_axis_tdata[15]_INST_0_i_64 
       (.I0(\m_axis_tdata[15]_INST_0_i_97_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[15]_INST_0_i_98_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[15]_INST_0_i_99_n_0 ),
        .I5(\m_axis_tdata[15]_INST_0_i_100_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_64_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[15]_INST_0_i_65 
       (.I0(\m_axis_tdata[15]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[15]_INST_0_i_96_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[15]_INST_0_i_101_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_65_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[15]_INST_0_i_66 
       (.I0(\m_axis_tdata[15]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[15]_INST_0_i_103_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[15]_INST_0_i_95_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[15]_INST_0_i_67 
       (.I0(\m_axis_tdata[15]_INST_0_i_104_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[15]_INST_0_i_99_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_97_n_0 ),
        .I4(\m_axis_tdata[15]_INST_0_i_98_n_0 ),
        .I5(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[15]_INST_0_i_67_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[15]_INST_0_i_68 
       (.I0(\m_axis_tdata[15]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[15]_INST_0_i_103_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_105_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[15]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[15]_INST_0_i_69 
       (.I0(\m_axis_tdata[15]_INST_0_i_106_n_0 ),
        .I1(\m_axis_tdata[15]_INST_0_i_97_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[15]_INST_0_i_104_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[15]_INST_0_i_99_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[15]_INST_0_i_7 
       (.I0(s_axis_tdata[1]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[9]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[15]_INST_0_i_45_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[15]_INST_0_i_70 
       (.I0(\m_axis_tdata[15]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[15]_INST_0_i_102_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[15]_INST_0_i_105_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[15]_INST_0_i_71 
       (.I0(\m_axis_tdata[15]_INST_0_i_108_n_0 ),
        .I1(\m_axis_tdata[15]_INST_0_i_104_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[15]_INST_0_i_106_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[15]_INST_0_i_97_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_71_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[15]_INST_0_i_72 
       (.I0(\m_axis_tdata[15]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[15]_INST_0_i_102_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_109_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[15]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[15]_INST_0_i_73 
       (.I0(\m_axis_tdata[15]_INST_0_i_110_n_0 ),
        .I1(\m_axis_tdata[15]_INST_0_i_106_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[15]_INST_0_i_108_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[15]_INST_0_i_104_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_73_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[15]_INST_0_i_74 
       (.I0(\m_axis_tdata[15]_INST_0_i_111_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[15]_INST_0_i_109_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_74_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[15]_INST_0_i_75 
       (.I0(\m_axis_tdata[15]_INST_0_i_110_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[15]_INST_0_i_106_n_0 ),
        .I3(\m_axis_tdata[15]_INST_0_i_112_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[15]_INST_0_i_75_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair115" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[15]_INST_0_i_76 
       (.I0(\m_axis_tdata[15]_INST_0_i_8_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[15]_INST_0_i_111_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[15]_INST_0_i_77 
       (.I0(\m_axis_tdata[15]_INST_0_i_113_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[15]_INST_0_i_112_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_77_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[15]_INST_0_i_78 
       (.I0(\m_axis_tdata[15]_INST_0_i_6_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[15]_INST_0_i_113_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_78_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[15]_INST_0_i_79 
       (.I0(\SCALE_SHIFT[1]_81 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_79 ),
        .I3(\SCALE_SHIFT[1]_80 ),
        .O(\m_axis_tdata[15]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[15]_INST_0_i_8 
       (.I0(s_axis_tdata[3]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[11]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[15]_INST_0_i_46_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[15]_INST_0_i_80 
       (.I0(\SCALE_SHIFT[1]_0 ),
        .I1(LIMIT[12]),
        .I2(LIMIT[13]),
        .I3(\SCALE_SHIFT[1]_1 ),
        .O(\m_axis_tdata[15]_INST_0_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[15]_INST_0_i_81 
       (.I0(\SCALE_SHIFT[0]_7 ),
        .I1(LIMIT[10]),
        .I2(LIMIT[11]),
        .I3(\SCALE_SHIFT[0]_8 ),
        .O(\m_axis_tdata[15]_INST_0_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[15]_INST_0_i_82 
       (.I0(\SCALE_SHIFT[0]_4 ),
        .I1(LIMIT[8]),
        .I2(LIMIT[9]),
        .I3(\SCALE_SHIFT[0]_5 ),
        .O(\m_axis_tdata[15]_INST_0_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[15]_INST_0_i_83 
       (.I0(\SCALE_SHIFT[1]_2 ),
        .I1(LIMIT[6]),
        .I2(LIMIT[7]),
        .I3(\SCALE_SHIFT[0]_6 ),
        .O(\m_axis_tdata[15]_INST_0_i_83_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[15]_INST_0_i_84 
       (.I0(\SCALE_SHIFT[0]_2 ),
        .I1(LIMIT[4]),
        .I2(LIMIT[5]),
        .I3(\SCALE_SHIFT[0]_3 ),
        .O(\m_axis_tdata[15]_INST_0_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[15]_INST_0_i_85 
       (.I0(\SCALE_SHIFT[0]_0 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[3]),
        .I3(\SCALE_SHIFT[0]_1 ),
        .O(\m_axis_tdata[15]_INST_0_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[15]_INST_0_i_86 
       (.I0(SCALE_SHIFT_1_sn_1),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(SCALE_SHIFT_0_sn_1),
        .O(\m_axis_tdata[15]_INST_0_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[15]_INST_0_i_87 
       (.I0(\SCALE_SHIFT[1]_81 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_79 ),
        .I3(\SCALE_SHIFT[1]_80 ),
        .O(\m_axis_tdata[15]_INST_0_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[15]_INST_0_i_88 
       (.I0(\SCALE_SHIFT[1]_0 ),
        .I1(LIMIT[12]),
        .I2(\SCALE_SHIFT[1]_1 ),
        .I3(LIMIT[13]),
        .O(\m_axis_tdata[15]_INST_0_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[15]_INST_0_i_89 
       (.I0(\SCALE_SHIFT[0]_7 ),
        .I1(LIMIT[10]),
        .I2(\SCALE_SHIFT[0]_8 ),
        .I3(LIMIT[11]),
        .O(\m_axis_tdata[15]_INST_0_i_89_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[15]_INST_0_i_9 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[15]_INST_0_i_9_n_0 ,\m_axis_tdata[15]_INST_0_i_9_n_1 ,\m_axis_tdata[15]_INST_0_i_9_n_2 ,\m_axis_tdata[15]_INST_0_i_9_n_3 ,\m_axis_tdata[15]_INST_0_i_9_n_4 ,\m_axis_tdata[15]_INST_0_i_9_n_5 ,\m_axis_tdata[15]_INST_0_i_9_n_6 ,\m_axis_tdata[15]_INST_0_i_9_n_7 }),
        .DI({\m_axis_tdata[15]_INST_0_i_47_n_0 ,\m_axis_tdata[15]_INST_0_i_48_n_0 ,\m_axis_tdata[15]_INST_0_i_49_n_0 ,\m_axis_tdata[15]_INST_0_i_50_n_0 ,\m_axis_tdata[15]_INST_0_i_51_n_0 ,\m_axis_tdata[15]_INST_0_i_52_n_0 ,\m_axis_tdata[15]_INST_0_i_53_n_0 ,\m_axis_tdata[15]_INST_0_i_54_n_0 }),
        .O(\NLW_m_axis_tdata[15]_INST_0_i_9_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[15]_INST_0_i_55_n_0 ,\m_axis_tdata[15]_INST_0_i_56_n_0 ,\m_axis_tdata[15]_INST_0_i_57_n_0 ,\m_axis_tdata[15]_INST_0_i_58_n_0 ,\m_axis_tdata[15]_INST_0_i_59_n_0 ,\m_axis_tdata[15]_INST_0_i_60_n_0 ,\m_axis_tdata[15]_INST_0_i_61_n_0 ,\m_axis_tdata[15]_INST_0_i_62_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[15]_INST_0_i_90 
       (.I0(\SCALE_SHIFT[0]_4 ),
        .I1(LIMIT[8]),
        .I2(\SCALE_SHIFT[0]_5 ),
        .I3(LIMIT[9]),
        .O(\m_axis_tdata[15]_INST_0_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[15]_INST_0_i_91 
       (.I0(\SCALE_SHIFT[1]_2 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[0]_6 ),
        .I3(LIMIT[7]),
        .O(\m_axis_tdata[15]_INST_0_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[15]_INST_0_i_92 
       (.I0(\SCALE_SHIFT[0]_2 ),
        .I1(LIMIT[4]),
        .I2(\SCALE_SHIFT[0]_3 ),
        .I3(LIMIT[5]),
        .O(\m_axis_tdata[15]_INST_0_i_92_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[15]_INST_0_i_93 
       (.I0(\SCALE_SHIFT[0]_0 ),
        .I1(LIMIT[2]),
        .I2(\SCALE_SHIFT[0]_1 ),
        .I3(LIMIT[3]),
        .O(\m_axis_tdata[15]_INST_0_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[15]_INST_0_i_94 
       (.I0(SCALE_SHIFT_1_sn_1),
        .I1(LIMIT[0]),
        .I2(SCALE_SHIFT_0_sn_1),
        .I3(LIMIT[1]),
        .O(\m_axis_tdata[15]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \m_axis_tdata[15]_INST_0_i_95 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[7]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[15]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[15]_INST_0_i_114_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[15]_INST_0_i_96 
       (.I0(\m_axis_tdata[15]_INST_0_i_103_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[15]_INST_0_i_115_n_0 ),
        .O(\m_axis_tdata[15]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[15]_INST_0_i_97 
       (.I0(s_axis_tdata[0]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[8]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[15]),
        .O(\m_axis_tdata[15]_INST_0_i_97_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[15]_INST_0_i_98 
       (.I0(s_axis_tdata[4]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[12]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[15]),
        .O(\m_axis_tdata[15]_INST_0_i_98_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[15]_INST_0_i_99 
       (.I0(s_axis_tdata[2]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[10]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[15]),
        .O(\m_axis_tdata[15]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[160]_INST_0_i_1 
       (.I0(SCALE_SHIFT[1]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[160]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_47 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[161]_INST_0_i_1 
       (.I0(\m_axis_tdata[161]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[162]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_99 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[161]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[160]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[161]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[162]_INST_0_i_1 
       (.I0(\m_axis_tdata[162]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[163]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_100 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[162]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[161]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[162]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair183" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[163]_INST_0_i_1 
       (.I0(\m_axis_tdata[163]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[164]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_101 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[163]_INST_0_i_2 
       (.I0(s_axis_tdata[160]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[162]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[163]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[164]_INST_0_i_1 
       (.I0(\m_axis_tdata[164]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[165]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_102 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[164]_INST_0_i_2 
       (.I0(s_axis_tdata[161]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[163]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[164]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair182" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[165]_INST_0_i_1 
       (.I0(\m_axis_tdata[165]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[166]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_103 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[165]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[162]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[167]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[165]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[166]_INST_0_i_1 
       (.I0(\m_axis_tdata[167]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[169]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[166]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_52 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[166]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[163]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[168]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[166]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[167]_INST_0_i_1 
       (.I0(\m_axis_tdata[167]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[169]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[168]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[170]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_106 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[167]_INST_0_i_2 
       (.I0(s_axis_tdata[160]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[164]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[167]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[168]_INST_0_i_1 
       (.I0(\m_axis_tdata[168]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[170]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[169]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[171]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_104 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[168]_INST_0_i_2 
       (.I0(s_axis_tdata[161]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[165]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[168]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[169]_INST_0_i_1 
       (.I0(\m_axis_tdata[169]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[171]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[170]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[172]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_105 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[169]_INST_0_i_2 
       (.I0(s_axis_tdata[162]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[166]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[169]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[16]_INST_0_i_1 
       (.I0(SCALE_SHIFT[1]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[16]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_3 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[170]_INST_0_i_1 
       (.I0(\m_axis_tdata[170]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[172]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[171]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[173]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_107 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[170]_INST_0_i_2 
       (.I0(s_axis_tdata[163]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[167]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[170]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[171]_INST_0_i_1 
       (.I0(\m_axis_tdata[171]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[173]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[172]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[174]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_108 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[171]_INST_0_i_2 
       (.I0(s_axis_tdata[164]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[160]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[168]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[171]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[172]_INST_0_i_1 
       (.I0(\m_axis_tdata[172]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[174]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[173]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[175]_INST_0_i_38_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_48 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[172]_INST_0_i_2 
       (.I0(s_axis_tdata[165]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[161]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[169]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[172]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \m_axis_tdata[173]_INST_0_i_1 
       (.I0(\m_axis_tdata[174]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[174]_INST_0_i_3_n_0 ),
        .I3(\m_axis_tdata[173]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[175]_INST_0_i_38_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_49 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[173]_INST_0_i_2 
       (.I0(s_axis_tdata[166]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[162]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[170]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[173]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[174]_INST_0_i_1 
       (.I0(\m_axis_tdata[174]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[174]_INST_0_i_3_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_38_n_0 ),
        .I4(\m_axis_tdata[175]_INST_0_i_39_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_50 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[174]_INST_0_i_2 
       (.I0(s_axis_tdata[167]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[163]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[171]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[174]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[174]_INST_0_i_3 
       (.I0(s_axis_tdata[161]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[169]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[174]_INST_0_i_4_n_0 ),
        .O(\m_axis_tdata[174]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[174]_INST_0_i_4 
       (.I0(s_axis_tdata[165]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[173]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[174]_INST_0_i_4_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[175]_INST_0_i_1 
       (.CI(\m_axis_tdata[175]_INST_0_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_178 ,\m_axis_tdata[175]_INST_0_i_1_n_1 ,\m_axis_tdata[175]_INST_0_i_1_n_2 ,\m_axis_tdata[175]_INST_0_i_1_n_3 ,\m_axis_tdata[175]_INST_0_i_1_n_4 ,\m_axis_tdata[175]_INST_0_i_1_n_5 ,\m_axis_tdata[175]_INST_0_i_1_n_6 ,\m_axis_tdata[175]_INST_0_i_1_n_7 }),
        .DI({\m_axis_tdata[175]_INST_0_i_5_n_0 ,\m_axis_tdata[175]_INST_0_i_6_n_0 ,\m_axis_tdata[175]_INST_0_i_7_n_0 ,\m_axis_tdata[175]_INST_0_i_8_n_0 ,\m_axis_tdata[175]_INST_0_i_9_n_0 ,\m_axis_tdata[175]_INST_0_i_10_n_0 ,\m_axis_tdata[175]_INST_0_i_11_n_0 ,\m_axis_tdata[175]_INST_0_i_12_n_0 }),
        .O(\NLW_m_axis_tdata[175]_INST_0_i_1_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[175]_INST_0_i_13_n_0 ,\m_axis_tdata[175]_INST_0_i_14_n_0 ,\m_axis_tdata[175]_INST_0_i_15_n_0 ,\m_axis_tdata[175]_INST_0_i_16_n_0 ,\m_axis_tdata[175]_INST_0_i_17_n_0 ,\m_axis_tdata[175]_INST_0_i_18_n_0 ,\m_axis_tdata[175]_INST_0_i_19_n_0 ,\m_axis_tdata[175]_INST_0_i_20_n_0 }));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[175]_INST_0_i_10 
       (.I0(\m_axis_tdata[175]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[175]_INST_0_i_100 
       (.I0(s_axis_tdata[161]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[169]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[175]),
        .O(\m_axis_tdata[175]_INST_0_i_100_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[175]_INST_0_i_101 
       (.I0(s_axis_tdata[174]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[166]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[175]),
        .O(\m_axis_tdata[175]_INST_0_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888888)) 
    \m_axis_tdata[175]_INST_0_i_102 
       (.I0(\m_axis_tdata[175]_INST_0_i_114_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[167]),
        .I4(SCALE_SHIFT[4]),
        .I5(s_axis_tdata[175]),
        .O(\m_axis_tdata[175]_INST_0_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[175]_INST_0_i_103 
       (.I0(s_axis_tdata[172]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[164]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[175]),
        .O(\m_axis_tdata[175]_INST_0_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[175]_INST_0_i_104 
       (.I0(s_axis_tdata[169]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[161]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[175]),
        .O(\m_axis_tdata[175]_INST_0_i_104_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[175]_INST_0_i_105 
       (.I0(s_axis_tdata[170]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[162]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[175]),
        .O(\m_axis_tdata[175]_INST_0_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[175]_INST_0_i_106 
       (.I0(s_axis_tdata[167]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[175]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[175]_INST_0_i_114_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_106_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[175]_INST_0_i_107 
       (.I0(s_axis_tdata[168]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[160]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[175]),
        .O(\m_axis_tdata[175]_INST_0_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[175]_INST_0_i_108 
       (.I0(s_axis_tdata[165]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[173]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[175]_INST_0_i_104_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[175]_INST_0_i_109 
       (.I0(s_axis_tdata[166]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[174]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[175]_INST_0_i_105_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_109_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[175]_INST_0_i_11 
       (.I0(\m_axis_tdata[175]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[175]_INST_0_i_110 
       (.I0(s_axis_tdata[164]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[172]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[175]_INST_0_i_107_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_110_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[175]_INST_0_i_111 
       (.I0(s_axis_tdata[167]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[175]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[175]_INST_0_i_111_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[175]_INST_0_i_112 
       (.I0(s_axis_tdata[163]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[171]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[175]),
        .O(\m_axis_tdata[175]_INST_0_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[175]_INST_0_i_113 
       (.I0(s_axis_tdata[165]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[173]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[175]),
        .O(\m_axis_tdata[175]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[175]_INST_0_i_114 
       (.I0(s_axis_tdata[171]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[163]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[175]),
        .O(\m_axis_tdata[175]_INST_0_i_114_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[175]_INST_0_i_12 
       (.I0(\m_axis_tdata[175]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \m_axis_tdata[175]_INST_0_i_13 
       (.I0(\m_axis_tdata[175]_INST_0_i_57_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_58_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_59_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[175]_INST_0_i_14 
       (.I0(\m_axis_tdata[175]_INST_0_i_60_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_61_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_57_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[175]_INST_0_i_15 
       (.I0(\m_axis_tdata[175]_INST_0_i_62_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_63_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_60_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[175]_INST_0_i_16 
       (.I0(\m_axis_tdata[175]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_65_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_62_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[175]_INST_0_i_17 
       (.I0(\m_axis_tdata[175]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_64_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[175]_INST_0_i_18 
       (.I0(\m_axis_tdata[175]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[175]_INST_0_i_19 
       (.I0(\m_axis_tdata[175]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_19_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[175]_INST_0_i_2 
       (.CI(\m_axis_tdata[175]_INST_0_i_21_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_179 ,\m_axis_tdata[175]_INST_0_i_2_n_1 ,\m_axis_tdata[175]_INST_0_i_2_n_2 ,\m_axis_tdata[175]_INST_0_i_2_n_3 ,\m_axis_tdata[175]_INST_0_i_2_n_4 ,\m_axis_tdata[175]_INST_0_i_2_n_5 ,\m_axis_tdata[175]_INST_0_i_2_n_6 ,\m_axis_tdata[175]_INST_0_i_2_n_7 }),
        .DI({\m_axis_tdata[175]_INST_0_i_22_n_0 ,\m_axis_tdata[175]_INST_0_i_23_n_0 ,\m_axis_tdata[175]_INST_0_i_24_n_0 ,\m_axis_tdata[175]_INST_0_i_25_n_0 ,\m_axis_tdata[175]_INST_0_i_26_n_0 ,\m_axis_tdata[175]_INST_0_i_27_n_0 ,\m_axis_tdata[175]_INST_0_i_28_n_0 ,\m_axis_tdata[175]_INST_0_i_29_n_0 }),
        .O(\NLW_m_axis_tdata[175]_INST_0_i_2_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[175]_INST_0_i_30_n_0 ,\m_axis_tdata[175]_INST_0_i_31_n_0 ,\m_axis_tdata[175]_INST_0_i_32_n_0 ,\m_axis_tdata[175]_INST_0_i_33_n_0 ,\m_axis_tdata[175]_INST_0_i_34_n_0 ,\m_axis_tdata[175]_INST_0_i_35_n_0 ,\m_axis_tdata[175]_INST_0_i_36_n_0 ,\m_axis_tdata[175]_INST_0_i_37_n_0 }));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[175]_INST_0_i_20 
       (.I0(\m_axis_tdata[175]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_20_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[175]_INST_0_i_21 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[175]_INST_0_i_21_n_0 ,\m_axis_tdata[175]_INST_0_i_21_n_1 ,\m_axis_tdata[175]_INST_0_i_21_n_2 ,\m_axis_tdata[175]_INST_0_i_21_n_3 ,\m_axis_tdata[175]_INST_0_i_21_n_4 ,\m_axis_tdata[175]_INST_0_i_21_n_5 ,\m_axis_tdata[175]_INST_0_i_21_n_6 ,\m_axis_tdata[175]_INST_0_i_21_n_7 }),
        .DI({\m_axis_tdata[175]_INST_0_i_73_n_0 ,\m_axis_tdata[175]_INST_0_i_74_n_0 ,\m_axis_tdata[175]_INST_0_i_75_n_0 ,\m_axis_tdata[175]_INST_0_i_76_n_0 ,\m_axis_tdata[175]_INST_0_i_77_n_0 ,\m_axis_tdata[175]_INST_0_i_78_n_0 ,\m_axis_tdata[175]_INST_0_i_79_n_0 ,\m_axis_tdata[175]_INST_0_i_80_n_0 }),
        .O(\NLW_m_axis_tdata[175]_INST_0_i_21_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[175]_INST_0_i_81_n_0 ,\m_axis_tdata[175]_INST_0_i_82_n_0 ,\m_axis_tdata[175]_INST_0_i_83_n_0 ,\m_axis_tdata[175]_INST_0_i_84_n_0 ,\m_axis_tdata[175]_INST_0_i_85_n_0 ,\m_axis_tdata[175]_INST_0_i_86_n_0 ,\m_axis_tdata[175]_INST_0_i_87_n_0 ,\m_axis_tdata[175]_INST_0_i_88_n_0 }));
  LUT5 #(
    .INIT(32'hFF004700)) 
    \m_axis_tdata[175]_INST_0_i_22 
       (.I0(\m_axis_tdata[175]_INST_0_i_57_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_58_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_59_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[175]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[175]_INST_0_i_23 
       (.I0(\m_axis_tdata[175]_INST_0_i_60_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_61_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_57_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[175]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[175]_INST_0_i_24 
       (.I0(\m_axis_tdata[175]_INST_0_i_62_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_63_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_60_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[175]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[175]_INST_0_i_25 
       (.I0(\m_axis_tdata[175]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_65_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_62_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[175]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[175]_INST_0_i_26 
       (.I0(\m_axis_tdata[175]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_64_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[175]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[175]_INST_0_i_27 
       (.I0(\m_axis_tdata[175]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[175]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[175]_INST_0_i_28 
       (.I0(\m_axis_tdata[175]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[175]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[175]_INST_0_i_29 
       (.I0(\m_axis_tdata[175]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[175]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[175]_INST_0_i_3 
       (.I0(\m_axis_tdata[175]_INST_0_i_38_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[175]_INST_0_i_39_n_0 ),
        .I3(SCALE_SHIFT[0]),
        .I4(\m_axis_tdata[175]_INST_0_i_40_n_0 ),
        .O(\SCALE_SHIFT[1]_51 ));
  LUT5 #(
    .INIT(32'h0047B800)) 
    \m_axis_tdata[175]_INST_0_i_30 
       (.I0(\m_axis_tdata[175]_INST_0_i_57_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_58_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_59_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[175]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[175]_INST_0_i_31 
       (.I0(\m_axis_tdata[175]_INST_0_i_60_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_61_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_57_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[175]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[175]_INST_0_i_32 
       (.I0(\m_axis_tdata[175]_INST_0_i_62_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_63_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_60_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[175]_INST_0_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[175]_INST_0_i_33 
       (.I0(\m_axis_tdata[175]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_65_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_62_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[175]_INST_0_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[175]_INST_0_i_34 
       (.I0(\m_axis_tdata[175]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_64_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[175]_INST_0_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[175]_INST_0_i_35 
       (.I0(\m_axis_tdata[175]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[175]_INST_0_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[175]_INST_0_i_36 
       (.I0(\m_axis_tdata[175]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[175]_INST_0_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[175]_INST_0_i_37 
       (.I0(\m_axis_tdata[175]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[175]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[175]_INST_0_i_38 
       (.I0(s_axis_tdata[160]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[168]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[175]_INST_0_i_89_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[175]_INST_0_i_39 
       (.I0(s_axis_tdata[162]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[170]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[175]_INST_0_i_90_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_39_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[175]_INST_0_i_4 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[175]_INST_0_i_4_n_0 ,\m_axis_tdata[175]_INST_0_i_4_n_1 ,\m_axis_tdata[175]_INST_0_i_4_n_2 ,\m_axis_tdata[175]_INST_0_i_4_n_3 ,\m_axis_tdata[175]_INST_0_i_4_n_4 ,\m_axis_tdata[175]_INST_0_i_4_n_5 ,\m_axis_tdata[175]_INST_0_i_4_n_6 ,\m_axis_tdata[175]_INST_0_i_4_n_7 }),
        .DI({\m_axis_tdata[175]_INST_0_i_41_n_0 ,\m_axis_tdata[175]_INST_0_i_42_n_0 ,\m_axis_tdata[175]_INST_0_i_43_n_0 ,\m_axis_tdata[175]_INST_0_i_44_n_0 ,\m_axis_tdata[175]_INST_0_i_45_n_0 ,\m_axis_tdata[175]_INST_0_i_46_n_0 ,\m_axis_tdata[175]_INST_0_i_47_n_0 ,\m_axis_tdata[175]_INST_0_i_48_n_0 }),
        .O(\NLW_m_axis_tdata[175]_INST_0_i_4_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[175]_INST_0_i_49_n_0 ,\m_axis_tdata[175]_INST_0_i_50_n_0 ,\m_axis_tdata[175]_INST_0_i_51_n_0 ,\m_axis_tdata[175]_INST_0_i_52_n_0 ,\m_axis_tdata[175]_INST_0_i_53_n_0 ,\m_axis_tdata[175]_INST_0_i_54_n_0 ,\m_axis_tdata[175]_INST_0_i_55_n_0 ,\m_axis_tdata[175]_INST_0_i_56_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[175]_INST_0_i_40 
       (.I0(\m_axis_tdata[174]_INST_0_i_3_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[175]_INST_0_i_91_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_40_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[175]_INST_0_i_41 
       (.I0(\SCALE_SHIFT[1]_50 ),
        .I1(\SCALE_SHIFT[1]_51 ),
        .O(\m_axis_tdata[175]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[175]_INST_0_i_42 
       (.I0(\SCALE_SHIFT[1]_48 ),
        .I1(LIMIT[12]),
        .I2(LIMIT[13]),
        .I3(\SCALE_SHIFT[1]_49 ),
        .O(\m_axis_tdata[175]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[175]_INST_0_i_43 
       (.I0(\SCALE_SHIFT[0]_107 ),
        .I1(LIMIT[10]),
        .I2(LIMIT[11]),
        .I3(\SCALE_SHIFT[0]_108 ),
        .O(\m_axis_tdata[175]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[175]_INST_0_i_44 
       (.I0(\SCALE_SHIFT[0]_104 ),
        .I1(LIMIT[8]),
        .I2(LIMIT[9]),
        .I3(\SCALE_SHIFT[0]_105 ),
        .O(\m_axis_tdata[175]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[175]_INST_0_i_45 
       (.I0(\SCALE_SHIFT[1]_52 ),
        .I1(LIMIT[6]),
        .I2(LIMIT[7]),
        .I3(\SCALE_SHIFT[0]_106 ),
        .O(\m_axis_tdata[175]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[175]_INST_0_i_46 
       (.I0(\SCALE_SHIFT[0]_102 ),
        .I1(LIMIT[4]),
        .I2(LIMIT[5]),
        .I3(\SCALE_SHIFT[0]_103 ),
        .O(\m_axis_tdata[175]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[175]_INST_0_i_47 
       (.I0(\SCALE_SHIFT[0]_100 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[3]),
        .I3(\SCALE_SHIFT[0]_101 ),
        .O(\m_axis_tdata[175]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[175]_INST_0_i_48 
       (.I0(\SCALE_SHIFT[1]_47 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_99 ),
        .O(\m_axis_tdata[175]_INST_0_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata[175]_INST_0_i_49 
       (.I0(\SCALE_SHIFT[1]_50 ),
        .I1(\SCALE_SHIFT[1]_51 ),
        .O(\m_axis_tdata[175]_INST_0_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[175]_INST_0_i_5 
       (.I0(\m_axis_tdata[175]_INST_0_i_57_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_58_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_59_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[175]_INST_0_i_50 
       (.I0(\SCALE_SHIFT[1]_48 ),
        .I1(LIMIT[12]),
        .I2(\SCALE_SHIFT[1]_49 ),
        .I3(LIMIT[13]),
        .O(\m_axis_tdata[175]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[175]_INST_0_i_51 
       (.I0(\SCALE_SHIFT[0]_107 ),
        .I1(LIMIT[10]),
        .I2(\SCALE_SHIFT[0]_108 ),
        .I3(LIMIT[11]),
        .O(\m_axis_tdata[175]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[175]_INST_0_i_52 
       (.I0(\SCALE_SHIFT[0]_104 ),
        .I1(LIMIT[8]),
        .I2(\SCALE_SHIFT[0]_105 ),
        .I3(LIMIT[9]),
        .O(\m_axis_tdata[175]_INST_0_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[175]_INST_0_i_53 
       (.I0(\SCALE_SHIFT[1]_52 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[0]_106 ),
        .I3(LIMIT[7]),
        .O(\m_axis_tdata[175]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[175]_INST_0_i_54 
       (.I0(\SCALE_SHIFT[0]_102 ),
        .I1(LIMIT[4]),
        .I2(\SCALE_SHIFT[0]_103 ),
        .I3(LIMIT[5]),
        .O(\m_axis_tdata[175]_INST_0_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[175]_INST_0_i_55 
       (.I0(\SCALE_SHIFT[0]_100 ),
        .I1(LIMIT[2]),
        .I2(\SCALE_SHIFT[0]_101 ),
        .I3(LIMIT[3]),
        .O(\m_axis_tdata[175]_INST_0_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[175]_INST_0_i_56 
       (.I0(\SCALE_SHIFT[1]_47 ),
        .I1(LIMIT[0]),
        .I2(\SCALE_SHIFT[0]_99 ),
        .I3(LIMIT[1]),
        .O(\m_axis_tdata[175]_INST_0_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[175]_INST_0_i_57 
       (.I0(\m_axis_tdata[175]_INST_0_i_92_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[175]_INST_0_i_93_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \m_axis_tdata[175]_INST_0_i_58 
       (.I0(\m_axis_tdata[175]_INST_0_i_94_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[175]_INST_0_i_95_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[175]_INST_0_i_96_n_0 ),
        .I5(\m_axis_tdata[175]_INST_0_i_97_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_58_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[175]_INST_0_i_59 
       (.I0(\m_axis_tdata[175]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_93_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[175]_INST_0_i_98_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_59_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[175]_INST_0_i_6 
       (.I0(\m_axis_tdata[175]_INST_0_i_60_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_61_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_57_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[175]_INST_0_i_60 
       (.I0(\m_axis_tdata[175]_INST_0_i_99_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[175]_INST_0_i_100_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[175]_INST_0_i_92_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[175]_INST_0_i_61 
       (.I0(\m_axis_tdata[175]_INST_0_i_101_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[175]_INST_0_i_96_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_94_n_0 ),
        .I4(\m_axis_tdata[175]_INST_0_i_95_n_0 ),
        .I5(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[175]_INST_0_i_61_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[175]_INST_0_i_62 
       (.I0(\m_axis_tdata[175]_INST_0_i_99_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[175]_INST_0_i_100_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_102_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[175]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[175]_INST_0_i_63 
       (.I0(\m_axis_tdata[175]_INST_0_i_103_n_0 ),
        .I1(\m_axis_tdata[175]_INST_0_i_94_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[175]_INST_0_i_101_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[175]_INST_0_i_96_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_63_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[175]_INST_0_i_64 
       (.I0(\m_axis_tdata[175]_INST_0_i_104_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[175]_INST_0_i_99_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[175]_INST_0_i_102_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[175]_INST_0_i_65 
       (.I0(\m_axis_tdata[175]_INST_0_i_105_n_0 ),
        .I1(\m_axis_tdata[175]_INST_0_i_101_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[175]_INST_0_i_103_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[175]_INST_0_i_94_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_65_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[175]_INST_0_i_66 
       (.I0(\m_axis_tdata[175]_INST_0_i_104_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[175]_INST_0_i_99_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_106_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[175]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[175]_INST_0_i_67 
       (.I0(\m_axis_tdata[175]_INST_0_i_107_n_0 ),
        .I1(\m_axis_tdata[175]_INST_0_i_103_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[175]_INST_0_i_105_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[175]_INST_0_i_101_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_67_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair179" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[175]_INST_0_i_68 
       (.I0(\m_axis_tdata[175]_INST_0_i_108_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[175]_INST_0_i_106_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_68_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[175]_INST_0_i_69 
       (.I0(\m_axis_tdata[175]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[175]_INST_0_i_103_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_109_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[175]_INST_0_i_69_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[175]_INST_0_i_7 
       (.I0(\m_axis_tdata[175]_INST_0_i_62_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_63_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_60_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair181" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[175]_INST_0_i_70 
       (.I0(\m_axis_tdata[175]_INST_0_i_91_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[175]_INST_0_i_108_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[175]_INST_0_i_71 
       (.I0(\m_axis_tdata[175]_INST_0_i_110_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[175]_INST_0_i_109_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_71_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair178" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[175]_INST_0_i_72 
       (.I0(\m_axis_tdata[175]_INST_0_i_39_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[175]_INST_0_i_110_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_72_n_0 ));
  LUT3 #(
    .INIT(8'h13)) 
    \m_axis_tdata[175]_INST_0_i_73 
       (.I0(\SCALE_SHIFT[1]_50 ),
        .I1(\LIMIT[12]_2 ),
        .I2(\SCALE_SHIFT[1]_51 ),
        .O(\m_axis_tdata[175]_INST_0_i_73_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[175]_INST_0_i_74 
       (.I0(\SCALE_SHIFT[1]_48 ),
        .I1(LIMIT_11_sn_1),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_49 ),
        .O(\m_axis_tdata[175]_INST_0_i_74_n_0 ));
  LUT5 #(
    .INIT(32'h0009999F)) 
    \m_axis_tdata[175]_INST_0_i_75 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\SCALE_SHIFT[0]_107 ),
        .I3(\LIMIT[9]_0 ),
        .I4(\SCALE_SHIFT[0]_108 ),
        .O(\m_axis_tdata[175]_INST_0_i_75_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[175]_INST_0_i_76 
       (.I0(\SCALE_SHIFT[0]_104 ),
        .I1(LIMIT_7_sn_1),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_105 ),
        .O(\m_axis_tdata[175]_INST_0_i_76_n_0 ));
  LUT5 #(
    .INIT(32'h000909FF)) 
    \m_axis_tdata[175]_INST_0_i_77 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_52 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_106 ),
        .O(\m_axis_tdata[175]_INST_0_i_77_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[175]_INST_0_i_78 
       (.I0(\SCALE_SHIFT[0]_102 ),
        .I1(LIMIT_3_sn_1),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_103 ),
        .O(\m_axis_tdata[175]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h000011141117FFFC)) 
    \m_axis_tdata[175]_INST_0_i_79 
       (.I0(\SCALE_SHIFT[0]_100 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_101 ),
        .O(\m_axis_tdata[175]_INST_0_i_79_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[175]_INST_0_i_8 
       (.I0(\m_axis_tdata[175]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_65_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_62_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h047C)) 
    \m_axis_tdata[175]_INST_0_i_80 
       (.I0(\SCALE_SHIFT[1]_47 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_99 ),
        .O(\m_axis_tdata[175]_INST_0_i_80_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \m_axis_tdata[175]_INST_0_i_81 
       (.I0(\SCALE_SHIFT[1]_50 ),
        .I1(\LIMIT[12]_2 ),
        .I2(\SCALE_SHIFT[1]_51 ),
        .O(\m_axis_tdata[175]_INST_0_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[175]_INST_0_i_82 
       (.I0(LIMIT_11_sn_1),
        .I1(\SCALE_SHIFT[1]_48 ),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_49 ),
        .O(\m_axis_tdata[175]_INST_0_i_82_n_0 ));
  LUT5 #(
    .INIT(32'h09900660)) 
    \m_axis_tdata[175]_INST_0_i_83 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\LIMIT[9]_0 ),
        .I3(\SCALE_SHIFT[0]_107 ),
        .I4(\SCALE_SHIFT[0]_108 ),
        .O(\m_axis_tdata[175]_INST_0_i_83_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[175]_INST_0_i_84 
       (.I0(LIMIT_7_sn_1),
        .I1(\SCALE_SHIFT[0]_104 ),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_105 ),
        .O(\m_axis_tdata[175]_INST_0_i_84_n_0 ));
  LUT5 #(
    .INIT(32'h00969600)) 
    \m_axis_tdata[175]_INST_0_i_85 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_52 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_106 ),
        .O(\m_axis_tdata[175]_INST_0_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[175]_INST_0_i_86 
       (.I0(LIMIT_3_sn_1),
        .I1(\SCALE_SHIFT[0]_102 ),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_103 ),
        .O(\m_axis_tdata[175]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h0001666866680001)) 
    \m_axis_tdata[175]_INST_0_i_87 
       (.I0(\SCALE_SHIFT[0]_100 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_101 ),
        .O(\m_axis_tdata[175]_INST_0_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h1881)) 
    \m_axis_tdata[175]_INST_0_i_88 
       (.I0(\SCALE_SHIFT[1]_47 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_99 ),
        .O(\m_axis_tdata[175]_INST_0_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[175]_INST_0_i_89 
       (.I0(s_axis_tdata[164]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[172]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[175]_INST_0_i_89_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[175]_INST_0_i_9 
       (.I0(\m_axis_tdata[175]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[175]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[175]_INST_0_i_64_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[175]_INST_0_i_90 
       (.I0(s_axis_tdata[166]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[174]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[175]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[175]_INST_0_i_91 
       (.I0(s_axis_tdata[163]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[171]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[175]_INST_0_i_111_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \m_axis_tdata[175]_INST_0_i_92 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[167]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[175]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[175]_INST_0_i_112_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_92_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[175]_INST_0_i_93 
       (.I0(\m_axis_tdata[175]_INST_0_i_100_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[175]_INST_0_i_113_n_0 ),
        .O(\m_axis_tdata[175]_INST_0_i_93_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[175]_INST_0_i_94 
       (.I0(s_axis_tdata[160]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[168]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[175]),
        .O(\m_axis_tdata[175]_INST_0_i_94_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[175]_INST_0_i_95 
       (.I0(s_axis_tdata[164]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[172]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[175]),
        .O(\m_axis_tdata[175]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[175]_INST_0_i_96 
       (.I0(s_axis_tdata[162]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[170]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[175]),
        .O(\m_axis_tdata[175]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[175]_INST_0_i_97 
       (.I0(s_axis_tdata[166]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[174]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[175]),
        .O(\m_axis_tdata[175]_INST_0_i_97_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \m_axis_tdata[175]_INST_0_i_98 
       (.I0(\m_axis_tdata[175]_INST_0_i_112_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[167]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[3]),
        .I5(s_axis_tdata[175]),
        .O(\m_axis_tdata[175]_INST_0_i_98_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[175]_INST_0_i_99 
       (.I0(s_axis_tdata[173]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[165]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[175]),
        .O(\m_axis_tdata[175]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[176]_INST_0_i_1 
       (.I0(SCALE_SHIFT[1]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[176]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_53 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[177]_INST_0_i_1 
       (.I0(\m_axis_tdata[177]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[178]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_109 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[177]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[176]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[177]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair189" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[178]_INST_0_i_1 
       (.I0(\m_axis_tdata[178]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[179]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_110 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[178]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[177]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[178]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[179]_INST_0_i_1 
       (.I0(\m_axis_tdata[179]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[180]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_111 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[179]_INST_0_i_2 
       (.I0(s_axis_tdata[176]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[178]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[179]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[17]_INST_0_i_1 
       (.I0(\m_axis_tdata[17]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[18]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_9 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[17]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[16]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[17]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair188" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[180]_INST_0_i_1 
       (.I0(\m_axis_tdata[180]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[181]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_112 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[180]_INST_0_i_2 
       (.I0(s_axis_tdata[177]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[179]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[180]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair184" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[181]_INST_0_i_1 
       (.I0(\m_axis_tdata[181]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[182]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_113 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[181]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[178]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[183]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[181]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[182]_INST_0_i_1 
       (.I0(\m_axis_tdata[183]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[185]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[182]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_58 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[182]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[179]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[184]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[182]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[183]_INST_0_i_1 
       (.I0(\m_axis_tdata[183]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[185]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[184]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[186]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_116 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[183]_INST_0_i_2 
       (.I0(s_axis_tdata[176]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[180]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[183]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[184]_INST_0_i_1 
       (.I0(\m_axis_tdata[184]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[186]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[185]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[187]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_114 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[184]_INST_0_i_2 
       (.I0(s_axis_tdata[177]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[181]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[184]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[185]_INST_0_i_1 
       (.I0(\m_axis_tdata[185]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[187]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[186]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[188]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_115 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[185]_INST_0_i_2 
       (.I0(s_axis_tdata[178]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[182]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[185]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[186]_INST_0_i_1 
       (.I0(\m_axis_tdata[186]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[188]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[187]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[189]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_117 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[186]_INST_0_i_2 
       (.I0(s_axis_tdata[179]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[183]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[186]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[187]_INST_0_i_1 
       (.I0(\m_axis_tdata[187]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[189]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[188]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[190]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_118 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[187]_INST_0_i_2 
       (.I0(s_axis_tdata[180]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[176]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[184]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[187]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[188]_INST_0_i_1 
       (.I0(\m_axis_tdata[188]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[190]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[189]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[191]_INST_0_i_39_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_54 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[188]_INST_0_i_2 
       (.I0(s_axis_tdata[181]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[177]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[185]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[188]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \m_axis_tdata[189]_INST_0_i_1 
       (.I0(\m_axis_tdata[190]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[190]_INST_0_i_3_n_0 ),
        .I3(\m_axis_tdata[189]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[191]_INST_0_i_39_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_55 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[189]_INST_0_i_2 
       (.I0(s_axis_tdata[182]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[178]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[186]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[189]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair125" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[18]_INST_0_i_1 
       (.I0(\m_axis_tdata[18]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[19]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_10 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[18]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[17]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[18]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[190]_INST_0_i_1 
       (.I0(\m_axis_tdata[190]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[190]_INST_0_i_3_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_39_n_0 ),
        .I4(\m_axis_tdata[191]_INST_0_i_40_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_56 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[190]_INST_0_i_2 
       (.I0(s_axis_tdata[183]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[179]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[187]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[190]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[190]_INST_0_i_3 
       (.I0(s_axis_tdata[177]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[185]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[190]_INST_0_i_4_n_0 ),
        .O(\m_axis_tdata[190]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[190]_INST_0_i_4 
       (.I0(s_axis_tdata[181]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[189]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[190]_INST_0_i_4_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[191]_INST_0_i_1 
       (.CI(\m_axis_tdata[191]_INST_0_i_5_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_175 ,\m_axis_tdata[191]_INST_0_i_1_n_1 ,\m_axis_tdata[191]_INST_0_i_1_n_2 ,\m_axis_tdata[191]_INST_0_i_1_n_3 ,\m_axis_tdata[191]_INST_0_i_1_n_4 ,\m_axis_tdata[191]_INST_0_i_1_n_5 ,\m_axis_tdata[191]_INST_0_i_1_n_6 ,\m_axis_tdata[191]_INST_0_i_1_n_7 }),
        .DI({\m_axis_tdata[191]_INST_0_i_6_n_0 ,\m_axis_tdata[191]_INST_0_i_7_n_0 ,\m_axis_tdata[191]_INST_0_i_8_n_0 ,\m_axis_tdata[191]_INST_0_i_9_n_0 ,\m_axis_tdata[191]_INST_0_i_10_n_0 ,\m_axis_tdata[191]_INST_0_i_11_n_0 ,\m_axis_tdata[191]_INST_0_i_12_n_0 ,\m_axis_tdata[191]_INST_0_i_13_n_0 }),
        .O(\NLW_m_axis_tdata[191]_INST_0_i_1_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[191]_INST_0_i_14_n_0 ,\m_axis_tdata[191]_INST_0_i_15_n_0 ,\m_axis_tdata[191]_INST_0_i_16_n_0 ,\m_axis_tdata[191]_INST_0_i_17_n_0 ,\m_axis_tdata[191]_INST_0_i_18_n_0 ,\m_axis_tdata[191]_INST_0_i_19_n_0 ,\m_axis_tdata[191]_INST_0_i_20_n_0 ,\m_axis_tdata[191]_INST_0_i_21_n_0 }));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[191]_INST_0_i_10 
       (.I0(\m_axis_tdata[191]_INST_0_i_67_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_68_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[191]_INST_0_i_100 
       (.I0(s_axis_tdata[189]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[181]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[191]),
        .O(\m_axis_tdata[191]_INST_0_i_100_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[191]_INST_0_i_101 
       (.I0(s_axis_tdata[177]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[185]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[191]),
        .O(\m_axis_tdata[191]_INST_0_i_101_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[191]_INST_0_i_102 
       (.I0(s_axis_tdata[190]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[182]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[191]),
        .O(\m_axis_tdata[191]_INST_0_i_102_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888888)) 
    \m_axis_tdata[191]_INST_0_i_103 
       (.I0(\m_axis_tdata[191]_INST_0_i_115_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[183]),
        .I4(SCALE_SHIFT[4]),
        .I5(s_axis_tdata[191]),
        .O(\m_axis_tdata[191]_INST_0_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[191]_INST_0_i_104 
       (.I0(s_axis_tdata[188]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[180]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[191]),
        .O(\m_axis_tdata[191]_INST_0_i_104_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[191]_INST_0_i_105 
       (.I0(s_axis_tdata[185]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[177]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[191]),
        .O(\m_axis_tdata[191]_INST_0_i_105_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[191]_INST_0_i_106 
       (.I0(s_axis_tdata[186]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[178]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[191]),
        .O(\m_axis_tdata[191]_INST_0_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[191]_INST_0_i_107 
       (.I0(s_axis_tdata[183]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[191]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[191]_INST_0_i_115_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[191]_INST_0_i_108 
       (.I0(s_axis_tdata[184]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[176]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[191]),
        .O(\m_axis_tdata[191]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[191]_INST_0_i_109 
       (.I0(s_axis_tdata[181]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[189]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[191]_INST_0_i_105_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_109_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[191]_INST_0_i_11 
       (.I0(\m_axis_tdata[191]_INST_0_i_69_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_70_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_67_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[191]_INST_0_i_110 
       (.I0(s_axis_tdata[182]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[190]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[191]_INST_0_i_106_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[191]_INST_0_i_111 
       (.I0(s_axis_tdata[180]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[188]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[191]_INST_0_i_108_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_111_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[191]_INST_0_i_112 
       (.I0(s_axis_tdata[183]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[191]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[191]_INST_0_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[191]_INST_0_i_113 
       (.I0(s_axis_tdata[179]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[187]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[191]),
        .O(\m_axis_tdata[191]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[191]_INST_0_i_114 
       (.I0(s_axis_tdata[181]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[189]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[191]),
        .O(\m_axis_tdata[191]_INST_0_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[191]_INST_0_i_115 
       (.I0(s_axis_tdata[187]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[179]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[191]),
        .O(\m_axis_tdata[191]_INST_0_i_115_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[191]_INST_0_i_12 
       (.I0(\m_axis_tdata[191]_INST_0_i_71_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_69_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[191]_INST_0_i_13 
       (.I0(\m_axis_tdata[191]_INST_0_i_41_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_71_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \m_axis_tdata[191]_INST_0_i_14 
       (.I0(\m_axis_tdata[191]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_59_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_60_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[191]_INST_0_i_15 
       (.I0(\m_axis_tdata[191]_INST_0_i_61_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_62_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_58_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[191]_INST_0_i_16 
       (.I0(\m_axis_tdata[191]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_61_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[191]_INST_0_i_17 
       (.I0(\m_axis_tdata[191]_INST_0_i_65_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_66_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[191]_INST_0_i_18 
       (.I0(\m_axis_tdata[191]_INST_0_i_67_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_68_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[191]_INST_0_i_19 
       (.I0(\m_axis_tdata[191]_INST_0_i_69_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_70_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_67_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \m_axis_tdata[191]_INST_0_i_2 
       (.I0(LIMIT[12]),
        .I1(LIMIT_9_sn_1),
        .I2(LIMIT[11]),
        .I3(LIMIT[13]),
        .O(\LIMIT[12]_2 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[191]_INST_0_i_20 
       (.I0(\m_axis_tdata[191]_INST_0_i_71_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_69_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[191]_INST_0_i_21 
       (.I0(\m_axis_tdata[191]_INST_0_i_41_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_71_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_21_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[191]_INST_0_i_22 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[191]_INST_0_i_22_n_0 ,\m_axis_tdata[191]_INST_0_i_22_n_1 ,\m_axis_tdata[191]_INST_0_i_22_n_2 ,\m_axis_tdata[191]_INST_0_i_22_n_3 ,\m_axis_tdata[191]_INST_0_i_22_n_4 ,\m_axis_tdata[191]_INST_0_i_22_n_5 ,\m_axis_tdata[191]_INST_0_i_22_n_6 ,\m_axis_tdata[191]_INST_0_i_22_n_7 }),
        .DI({\m_axis_tdata[191]_INST_0_i_74_n_0 ,\m_axis_tdata[191]_INST_0_i_75_n_0 ,\m_axis_tdata[191]_INST_0_i_76_n_0 ,\m_axis_tdata[191]_INST_0_i_77_n_0 ,\m_axis_tdata[191]_INST_0_i_78_n_0 ,\m_axis_tdata[191]_INST_0_i_79_n_0 ,\m_axis_tdata[191]_INST_0_i_80_n_0 ,\m_axis_tdata[191]_INST_0_i_81_n_0 }),
        .O(\NLW_m_axis_tdata[191]_INST_0_i_22_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[191]_INST_0_i_82_n_0 ,\m_axis_tdata[191]_INST_0_i_83_n_0 ,\m_axis_tdata[191]_INST_0_i_84_n_0 ,\m_axis_tdata[191]_INST_0_i_85_n_0 ,\m_axis_tdata[191]_INST_0_i_86_n_0 ,\m_axis_tdata[191]_INST_0_i_87_n_0 ,\m_axis_tdata[191]_INST_0_i_88_n_0 ,\m_axis_tdata[191]_INST_0_i_89_n_0 }));
  LUT5 #(
    .INIT(32'hFF004700)) 
    \m_axis_tdata[191]_INST_0_i_23 
       (.I0(\m_axis_tdata[191]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_59_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_60_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[191]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[191]_INST_0_i_24 
       (.I0(\m_axis_tdata[191]_INST_0_i_61_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_62_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_58_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[191]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[191]_INST_0_i_25 
       (.I0(\m_axis_tdata[191]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_61_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[191]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[191]_INST_0_i_26 
       (.I0(\m_axis_tdata[191]_INST_0_i_65_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_66_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[191]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[191]_INST_0_i_27 
       (.I0(\m_axis_tdata[191]_INST_0_i_67_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_68_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[191]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[191]_INST_0_i_28 
       (.I0(\m_axis_tdata[191]_INST_0_i_69_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_70_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_67_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[191]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[191]_INST_0_i_29 
       (.I0(\m_axis_tdata[191]_INST_0_i_71_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_69_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[191]_INST_0_i_29_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[191]_INST_0_i_3 
       (.CI(\m_axis_tdata[191]_INST_0_i_22_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_174 ,\m_axis_tdata[191]_INST_0_i_3_n_1 ,\m_axis_tdata[191]_INST_0_i_3_n_2 ,\m_axis_tdata[191]_INST_0_i_3_n_3 ,\m_axis_tdata[191]_INST_0_i_3_n_4 ,\m_axis_tdata[191]_INST_0_i_3_n_5 ,\m_axis_tdata[191]_INST_0_i_3_n_6 ,\m_axis_tdata[191]_INST_0_i_3_n_7 }),
        .DI({\m_axis_tdata[191]_INST_0_i_23_n_0 ,\m_axis_tdata[191]_INST_0_i_24_n_0 ,\m_axis_tdata[191]_INST_0_i_25_n_0 ,\m_axis_tdata[191]_INST_0_i_26_n_0 ,\m_axis_tdata[191]_INST_0_i_27_n_0 ,\m_axis_tdata[191]_INST_0_i_28_n_0 ,\m_axis_tdata[191]_INST_0_i_29_n_0 ,\m_axis_tdata[191]_INST_0_i_30_n_0 }),
        .O(\NLW_m_axis_tdata[191]_INST_0_i_3_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[191]_INST_0_i_31_n_0 ,\m_axis_tdata[191]_INST_0_i_32_n_0 ,\m_axis_tdata[191]_INST_0_i_33_n_0 ,\m_axis_tdata[191]_INST_0_i_34_n_0 ,\m_axis_tdata[191]_INST_0_i_35_n_0 ,\m_axis_tdata[191]_INST_0_i_36_n_0 ,\m_axis_tdata[191]_INST_0_i_37_n_0 ,\m_axis_tdata[191]_INST_0_i_38_n_0 }));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[191]_INST_0_i_30 
       (.I0(\m_axis_tdata[191]_INST_0_i_41_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_71_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[191]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h0047B800)) 
    \m_axis_tdata[191]_INST_0_i_31 
       (.I0(\m_axis_tdata[191]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_59_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_60_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[191]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[191]_INST_0_i_32 
       (.I0(\m_axis_tdata[191]_INST_0_i_61_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_62_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_58_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[191]_INST_0_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[191]_INST_0_i_33 
       (.I0(\m_axis_tdata[191]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_61_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[191]_INST_0_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[191]_INST_0_i_34 
       (.I0(\m_axis_tdata[191]_INST_0_i_65_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_66_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[191]_INST_0_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[191]_INST_0_i_35 
       (.I0(\m_axis_tdata[191]_INST_0_i_67_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_68_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[191]_INST_0_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[191]_INST_0_i_36 
       (.I0(\m_axis_tdata[191]_INST_0_i_69_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_70_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_67_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[191]_INST_0_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[191]_INST_0_i_37 
       (.I0(\m_axis_tdata[191]_INST_0_i_71_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_69_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[191]_INST_0_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[191]_INST_0_i_38 
       (.I0(\m_axis_tdata[191]_INST_0_i_41_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_71_n_0 ),
        .I4(\LIMIT[12]_2 ),
        .O(\m_axis_tdata[191]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[191]_INST_0_i_39 
       (.I0(s_axis_tdata[176]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[184]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[191]_INST_0_i_90_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[191]_INST_0_i_4 
       (.I0(\m_axis_tdata[191]_INST_0_i_39_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[191]_INST_0_i_40_n_0 ),
        .I3(SCALE_SHIFT[0]),
        .I4(\m_axis_tdata[191]_INST_0_i_41_n_0 ),
        .O(\SCALE_SHIFT[1]_57 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[191]_INST_0_i_40 
       (.I0(s_axis_tdata[178]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[186]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[191]_INST_0_i_91_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[191]_INST_0_i_41 
       (.I0(\m_axis_tdata[190]_INST_0_i_3_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[191]_INST_0_i_92_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_41_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[191]_INST_0_i_42 
       (.I0(\SCALE_SHIFT[1]_56 ),
        .I1(\SCALE_SHIFT[1]_57 ),
        .O(\m_axis_tdata[191]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[191]_INST_0_i_43 
       (.I0(\SCALE_SHIFT[1]_54 ),
        .I1(LIMIT[12]),
        .I2(LIMIT[13]),
        .I3(\SCALE_SHIFT[1]_55 ),
        .O(\m_axis_tdata[191]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[191]_INST_0_i_44 
       (.I0(\SCALE_SHIFT[0]_117 ),
        .I1(LIMIT[10]),
        .I2(LIMIT[11]),
        .I3(\SCALE_SHIFT[0]_118 ),
        .O(\m_axis_tdata[191]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[191]_INST_0_i_45 
       (.I0(\SCALE_SHIFT[0]_114 ),
        .I1(LIMIT[8]),
        .I2(LIMIT[9]),
        .I3(\SCALE_SHIFT[0]_115 ),
        .O(\m_axis_tdata[191]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[191]_INST_0_i_46 
       (.I0(\SCALE_SHIFT[1]_58 ),
        .I1(LIMIT[6]),
        .I2(LIMIT[7]),
        .I3(\SCALE_SHIFT[0]_116 ),
        .O(\m_axis_tdata[191]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[191]_INST_0_i_47 
       (.I0(\SCALE_SHIFT[0]_112 ),
        .I1(LIMIT[4]),
        .I2(LIMIT[5]),
        .I3(\SCALE_SHIFT[0]_113 ),
        .O(\m_axis_tdata[191]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[191]_INST_0_i_48 
       (.I0(\SCALE_SHIFT[0]_110 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[3]),
        .I3(\SCALE_SHIFT[0]_111 ),
        .O(\m_axis_tdata[191]_INST_0_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[191]_INST_0_i_49 
       (.I0(\SCALE_SHIFT[1]_53 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_109 ),
        .O(\m_axis_tdata[191]_INST_0_i_49_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[191]_INST_0_i_5 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[191]_INST_0_i_5_n_0 ,\m_axis_tdata[191]_INST_0_i_5_n_1 ,\m_axis_tdata[191]_INST_0_i_5_n_2 ,\m_axis_tdata[191]_INST_0_i_5_n_3 ,\m_axis_tdata[191]_INST_0_i_5_n_4 ,\m_axis_tdata[191]_INST_0_i_5_n_5 ,\m_axis_tdata[191]_INST_0_i_5_n_6 ,\m_axis_tdata[191]_INST_0_i_5_n_7 }),
        .DI({\m_axis_tdata[191]_INST_0_i_42_n_0 ,\m_axis_tdata[191]_INST_0_i_43_n_0 ,\m_axis_tdata[191]_INST_0_i_44_n_0 ,\m_axis_tdata[191]_INST_0_i_45_n_0 ,\m_axis_tdata[191]_INST_0_i_46_n_0 ,\m_axis_tdata[191]_INST_0_i_47_n_0 ,\m_axis_tdata[191]_INST_0_i_48_n_0 ,\m_axis_tdata[191]_INST_0_i_49_n_0 }),
        .O(\NLW_m_axis_tdata[191]_INST_0_i_5_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[191]_INST_0_i_50_n_0 ,\m_axis_tdata[191]_INST_0_i_51_n_0 ,\m_axis_tdata[191]_INST_0_i_52_n_0 ,\m_axis_tdata[191]_INST_0_i_53_n_0 ,\m_axis_tdata[191]_INST_0_i_54_n_0 ,\m_axis_tdata[191]_INST_0_i_55_n_0 ,\m_axis_tdata[191]_INST_0_i_56_n_0 ,\m_axis_tdata[191]_INST_0_i_57_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata[191]_INST_0_i_50 
       (.I0(\SCALE_SHIFT[1]_56 ),
        .I1(\SCALE_SHIFT[1]_57 ),
        .O(\m_axis_tdata[191]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[191]_INST_0_i_51 
       (.I0(\SCALE_SHIFT[1]_54 ),
        .I1(LIMIT[12]),
        .I2(\SCALE_SHIFT[1]_55 ),
        .I3(LIMIT[13]),
        .O(\m_axis_tdata[191]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[191]_INST_0_i_52 
       (.I0(\SCALE_SHIFT[0]_117 ),
        .I1(LIMIT[10]),
        .I2(\SCALE_SHIFT[0]_118 ),
        .I3(LIMIT[11]),
        .O(\m_axis_tdata[191]_INST_0_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[191]_INST_0_i_53 
       (.I0(\SCALE_SHIFT[0]_114 ),
        .I1(LIMIT[8]),
        .I2(\SCALE_SHIFT[0]_115 ),
        .I3(LIMIT[9]),
        .O(\m_axis_tdata[191]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[191]_INST_0_i_54 
       (.I0(\SCALE_SHIFT[1]_58 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[0]_116 ),
        .I3(LIMIT[7]),
        .O(\m_axis_tdata[191]_INST_0_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[191]_INST_0_i_55 
       (.I0(\SCALE_SHIFT[0]_112 ),
        .I1(LIMIT[4]),
        .I2(\SCALE_SHIFT[0]_113 ),
        .I3(LIMIT[5]),
        .O(\m_axis_tdata[191]_INST_0_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[191]_INST_0_i_56 
       (.I0(\SCALE_SHIFT[0]_110 ),
        .I1(LIMIT[2]),
        .I2(\SCALE_SHIFT[0]_111 ),
        .I3(LIMIT[3]),
        .O(\m_axis_tdata[191]_INST_0_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[191]_INST_0_i_57 
       (.I0(\SCALE_SHIFT[1]_53 ),
        .I1(LIMIT[0]),
        .I2(\SCALE_SHIFT[0]_109 ),
        .I3(LIMIT[1]),
        .O(\m_axis_tdata[191]_INST_0_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[191]_INST_0_i_58 
       (.I0(\m_axis_tdata[191]_INST_0_i_93_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[191]_INST_0_i_94_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \m_axis_tdata[191]_INST_0_i_59 
       (.I0(\m_axis_tdata[191]_INST_0_i_95_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[191]_INST_0_i_96_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[191]_INST_0_i_97_n_0 ),
        .I5(\m_axis_tdata[191]_INST_0_i_98_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_59_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[191]_INST_0_i_6 
       (.I0(\m_axis_tdata[191]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_59_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_60_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[191]_INST_0_i_60 
       (.I0(\m_axis_tdata[191]_INST_0_i_59_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_94_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[191]_INST_0_i_99_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_60_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[191]_INST_0_i_61 
       (.I0(\m_axis_tdata[191]_INST_0_i_100_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[191]_INST_0_i_101_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[191]_INST_0_i_93_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[191]_INST_0_i_62 
       (.I0(\m_axis_tdata[191]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[191]_INST_0_i_97_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_95_n_0 ),
        .I4(\m_axis_tdata[191]_INST_0_i_96_n_0 ),
        .I5(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[191]_INST_0_i_62_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[191]_INST_0_i_63 
       (.I0(\m_axis_tdata[191]_INST_0_i_100_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[191]_INST_0_i_101_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_103_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[191]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[191]_INST_0_i_64 
       (.I0(\m_axis_tdata[191]_INST_0_i_104_n_0 ),
        .I1(\m_axis_tdata[191]_INST_0_i_95_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[191]_INST_0_i_102_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[191]_INST_0_i_97_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_64_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[191]_INST_0_i_65 
       (.I0(\m_axis_tdata[191]_INST_0_i_105_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[191]_INST_0_i_100_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[191]_INST_0_i_103_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[191]_INST_0_i_66 
       (.I0(\m_axis_tdata[191]_INST_0_i_106_n_0 ),
        .I1(\m_axis_tdata[191]_INST_0_i_102_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[191]_INST_0_i_104_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[191]_INST_0_i_95_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_66_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[191]_INST_0_i_67 
       (.I0(\m_axis_tdata[191]_INST_0_i_105_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[191]_INST_0_i_100_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_107_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[191]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[191]_INST_0_i_68 
       (.I0(\m_axis_tdata[191]_INST_0_i_108_n_0 ),
        .I1(\m_axis_tdata[191]_INST_0_i_104_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[191]_INST_0_i_106_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[191]_INST_0_i_102_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_68_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair186" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[191]_INST_0_i_69 
       (.I0(\m_axis_tdata[191]_INST_0_i_109_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[191]_INST_0_i_107_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_69_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[191]_INST_0_i_7 
       (.I0(\m_axis_tdata[191]_INST_0_i_61_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_62_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_58_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[191]_INST_0_i_70 
       (.I0(\m_axis_tdata[191]_INST_0_i_108_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[191]_INST_0_i_104_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_110_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[191]_INST_0_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair187" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[191]_INST_0_i_71 
       (.I0(\m_axis_tdata[191]_INST_0_i_92_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[191]_INST_0_i_109_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_71_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[191]_INST_0_i_72 
       (.I0(\m_axis_tdata[191]_INST_0_i_111_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[191]_INST_0_i_110_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_72_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair185" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[191]_INST_0_i_73 
       (.I0(\m_axis_tdata[191]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[191]_INST_0_i_111_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_73_n_0 ));
  LUT3 #(
    .INIT(8'h13)) 
    \m_axis_tdata[191]_INST_0_i_74 
       (.I0(\SCALE_SHIFT[1]_56 ),
        .I1(\LIMIT[12]_2 ),
        .I2(\SCALE_SHIFT[1]_57 ),
        .O(\m_axis_tdata[191]_INST_0_i_74_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[191]_INST_0_i_75 
       (.I0(\SCALE_SHIFT[1]_54 ),
        .I1(LIMIT_11_sn_1),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_55 ),
        .O(\m_axis_tdata[191]_INST_0_i_75_n_0 ));
  LUT5 #(
    .INIT(32'h0009999F)) 
    \m_axis_tdata[191]_INST_0_i_76 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\SCALE_SHIFT[0]_117 ),
        .I3(\LIMIT[9]_0 ),
        .I4(\SCALE_SHIFT[0]_118 ),
        .O(\m_axis_tdata[191]_INST_0_i_76_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[191]_INST_0_i_77 
       (.I0(\SCALE_SHIFT[0]_114 ),
        .I1(LIMIT_7_sn_1),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_115 ),
        .O(\m_axis_tdata[191]_INST_0_i_77_n_0 ));
  LUT5 #(
    .INIT(32'h000909FF)) 
    \m_axis_tdata[191]_INST_0_i_78 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_58 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_116 ),
        .O(\m_axis_tdata[191]_INST_0_i_78_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[191]_INST_0_i_79 
       (.I0(\SCALE_SHIFT[0]_112 ),
        .I1(LIMIT_3_sn_1),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_113 ),
        .O(\m_axis_tdata[191]_INST_0_i_79_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[191]_INST_0_i_8 
       (.I0(\m_axis_tdata[191]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_61_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000011141117FFFC)) 
    \m_axis_tdata[191]_INST_0_i_80 
       (.I0(\SCALE_SHIFT[0]_110 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_111 ),
        .O(\m_axis_tdata[191]_INST_0_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h047C)) 
    \m_axis_tdata[191]_INST_0_i_81 
       (.I0(\SCALE_SHIFT[1]_53 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_109 ),
        .O(\m_axis_tdata[191]_INST_0_i_81_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \m_axis_tdata[191]_INST_0_i_82 
       (.I0(\SCALE_SHIFT[1]_56 ),
        .I1(\LIMIT[12]_2 ),
        .I2(\SCALE_SHIFT[1]_57 ),
        .O(\m_axis_tdata[191]_INST_0_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[191]_INST_0_i_83 
       (.I0(LIMIT_11_sn_1),
        .I1(\SCALE_SHIFT[1]_54 ),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_55 ),
        .O(\m_axis_tdata[191]_INST_0_i_83_n_0 ));
  LUT5 #(
    .INIT(32'h09900660)) 
    \m_axis_tdata[191]_INST_0_i_84 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\LIMIT[9]_0 ),
        .I3(\SCALE_SHIFT[0]_117 ),
        .I4(\SCALE_SHIFT[0]_118 ),
        .O(\m_axis_tdata[191]_INST_0_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[191]_INST_0_i_85 
       (.I0(LIMIT_7_sn_1),
        .I1(\SCALE_SHIFT[0]_114 ),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_115 ),
        .O(\m_axis_tdata[191]_INST_0_i_85_n_0 ));
  LUT5 #(
    .INIT(32'h00969600)) 
    \m_axis_tdata[191]_INST_0_i_86 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_58 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_116 ),
        .O(\m_axis_tdata[191]_INST_0_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[191]_INST_0_i_87 
       (.I0(LIMIT_3_sn_1),
        .I1(\SCALE_SHIFT[0]_112 ),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_113 ),
        .O(\m_axis_tdata[191]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h0001666866680001)) 
    \m_axis_tdata[191]_INST_0_i_88 
       (.I0(\SCALE_SHIFT[0]_110 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_111 ),
        .O(\m_axis_tdata[191]_INST_0_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h1881)) 
    \m_axis_tdata[191]_INST_0_i_89 
       (.I0(\SCALE_SHIFT[1]_53 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_109 ),
        .O(\m_axis_tdata[191]_INST_0_i_89_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[191]_INST_0_i_9 
       (.I0(\m_axis_tdata[191]_INST_0_i_65_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[191]_INST_0_i_66_n_0 ),
        .I3(\m_axis_tdata[191]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[191]_INST_0_i_90 
       (.I0(s_axis_tdata[180]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[188]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[191]_INST_0_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[191]_INST_0_i_91 
       (.I0(s_axis_tdata[182]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[190]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[191]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[191]_INST_0_i_92 
       (.I0(s_axis_tdata[179]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[187]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[191]_INST_0_i_112_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \m_axis_tdata[191]_INST_0_i_93 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[183]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[191]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[191]_INST_0_i_113_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_93_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair180" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[191]_INST_0_i_94 
       (.I0(\m_axis_tdata[191]_INST_0_i_101_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[191]_INST_0_i_114_n_0 ),
        .O(\m_axis_tdata[191]_INST_0_i_94_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[191]_INST_0_i_95 
       (.I0(s_axis_tdata[176]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[184]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[191]),
        .O(\m_axis_tdata[191]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[191]_INST_0_i_96 
       (.I0(s_axis_tdata[180]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[188]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[191]),
        .O(\m_axis_tdata[191]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[191]_INST_0_i_97 
       (.I0(s_axis_tdata[178]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[186]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[191]),
        .O(\m_axis_tdata[191]_INST_0_i_97_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[191]_INST_0_i_98 
       (.I0(s_axis_tdata[182]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[190]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[191]),
        .O(\m_axis_tdata[191]_INST_0_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \m_axis_tdata[191]_INST_0_i_99 
       (.I0(\m_axis_tdata[191]_INST_0_i_113_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[183]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[3]),
        .I5(s_axis_tdata[191]),
        .O(\m_axis_tdata[191]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[192]_INST_0_i_1 
       (.I0(SCALE_SHIFT[1]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[192]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_59 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[193]_INST_0_i_1 
       (.I0(\m_axis_tdata[193]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[194]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_119 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[193]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[192]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[193]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[194]_INST_0_i_1 
       (.I0(\m_axis_tdata[194]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[195]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_120 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[194]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[193]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[194]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair196" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[195]_INST_0_i_1 
       (.I0(\m_axis_tdata[195]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[196]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_121 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[195]_INST_0_i_2 
       (.I0(s_axis_tdata[192]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[194]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[195]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[196]_INST_0_i_1 
       (.I0(\m_axis_tdata[196]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[197]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_122 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[196]_INST_0_i_2 
       (.I0(s_axis_tdata[193]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[195]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[196]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair195" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[197]_INST_0_i_1 
       (.I0(\m_axis_tdata[197]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[198]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_123 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[197]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[194]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[199]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[197]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[198]_INST_0_i_1 
       (.I0(\m_axis_tdata[199]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[201]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[198]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_62 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[198]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[195]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[200]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[198]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[199]_INST_0_i_1 
       (.I0(\m_axis_tdata[199]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[201]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[200]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[202]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_126 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[199]_INST_0_i_2 
       (.I0(s_axis_tdata[192]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[196]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[199]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[19]_INST_0_i_1 
       (.I0(\m_axis_tdata[19]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[20]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_11 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[19]_INST_0_i_2 
       (.I0(s_axis_tdata[16]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[18]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[19]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[1]_INST_0_i_1 
       (.I0(\m_axis_tdata[1]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[2]_INST_0_i_2_n_0 ),
        .O(SCALE_SHIFT_0_sn_1));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[1]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[0]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[1]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[200]_INST_0_i_1 
       (.I0(\m_axis_tdata[200]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[202]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[201]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[203]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_124 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[200]_INST_0_i_2 
       (.I0(s_axis_tdata[193]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[197]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[200]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[201]_INST_0_i_1 
       (.I0(\m_axis_tdata[201]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[203]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[202]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[204]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_125 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[201]_INST_0_i_2 
       (.I0(s_axis_tdata[194]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[198]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[201]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[202]_INST_0_i_1 
       (.I0(\m_axis_tdata[202]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[204]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[203]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[205]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_127 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[202]_INST_0_i_2 
       (.I0(s_axis_tdata[195]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[199]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[202]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[203]_INST_0_i_1 
       (.I0(\m_axis_tdata[203]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[205]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[204]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[206]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_128 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[203]_INST_0_i_2 
       (.I0(s_axis_tdata[196]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[192]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[200]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[203]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[204]_INST_0_i_1 
       (.I0(\m_axis_tdata[204]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[206]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[205]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[207]_INST_0_i_5_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_60 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[204]_INST_0_i_2 
       (.I0(s_axis_tdata[197]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[193]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[201]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[204]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[205]_INST_0_i_1 
       (.I0(\m_axis_tdata[205]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[207]_INST_0_i_5_n_0 ),
        .I3(SCALE_SHIFT[0]),
        .I4(\SCALE_SHIFT[1]_99 ),
        .O(\SCALE_SHIFT[1]_61 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[205]_INST_0_i_2 
       (.I0(s_axis_tdata[198]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[194]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[202]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[205]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[206]_INST_0_i_1 
       (.I0(\m_axis_tdata[206]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[207]_INST_0_i_7_n_0 ),
        .O(\SCALE_SHIFT[1]_99 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[206]_INST_0_i_2 
       (.I0(s_axis_tdata[199]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[195]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[203]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[206]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair194" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[207]_INST_0_i_1 
       (.I0(\m_axis_tdata[207]_INST_0_i_5_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[207]_INST_0_i_6_n_0 ),
        .O(\SCALE_SHIFT[1]_97 ));
  LUT5 #(
    .INIT(32'hFF004700)) 
    \m_axis_tdata[207]_INST_0_i_10 
       (.I0(\m_axis_tdata[207]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[207]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[207]_INST_0_i_100 
       (.I0(s_axis_tdata[198]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[206]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[207]),
        .O(\m_axis_tdata[207]_INST_0_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \m_axis_tdata[207]_INST_0_i_101 
       (.I0(\m_axis_tdata[207]_INST_0_i_114_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[199]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[3]),
        .I5(s_axis_tdata[207]),
        .O(\m_axis_tdata[207]_INST_0_i_101_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[207]_INST_0_i_102 
       (.I0(s_axis_tdata[205]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[197]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[207]),
        .O(\m_axis_tdata[207]_INST_0_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[207]_INST_0_i_103 
       (.I0(s_axis_tdata[193]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[201]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[207]),
        .O(\m_axis_tdata[207]_INST_0_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[207]_INST_0_i_104 
       (.I0(s_axis_tdata[206]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[198]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[207]),
        .O(\m_axis_tdata[207]_INST_0_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888888)) 
    \m_axis_tdata[207]_INST_0_i_105 
       (.I0(\m_axis_tdata[207]_INST_0_i_116_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[199]),
        .I4(SCALE_SHIFT[4]),
        .I5(s_axis_tdata[207]),
        .O(\m_axis_tdata[207]_INST_0_i_105_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[207]_INST_0_i_106 
       (.I0(s_axis_tdata[204]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[196]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[207]),
        .O(\m_axis_tdata[207]_INST_0_i_106_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[207]_INST_0_i_107 
       (.I0(s_axis_tdata[201]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[193]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[207]),
        .O(\m_axis_tdata[207]_INST_0_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[207]_INST_0_i_108 
       (.I0(s_axis_tdata[202]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[194]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[207]),
        .O(\m_axis_tdata[207]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[207]_INST_0_i_109 
       (.I0(s_axis_tdata[199]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[207]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[207]_INST_0_i_116_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_109_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[207]_INST_0_i_11 
       (.I0(\m_axis_tdata[207]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[207]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[207]_INST_0_i_110 
       (.I0(s_axis_tdata[200]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[192]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[207]),
        .O(\m_axis_tdata[207]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[207]_INST_0_i_111 
       (.I0(s_axis_tdata[197]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[205]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[207]_INST_0_i_107_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[207]_INST_0_i_112 
       (.I0(s_axis_tdata[198]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[206]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[207]_INST_0_i_108_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[207]_INST_0_i_113 
       (.I0(s_axis_tdata[196]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[204]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[207]_INST_0_i_110_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[207]_INST_0_i_114 
       (.I0(s_axis_tdata[195]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[203]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[207]),
        .O(\m_axis_tdata[207]_INST_0_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[207]_INST_0_i_115 
       (.I0(s_axis_tdata[197]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[205]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[207]),
        .O(\m_axis_tdata[207]_INST_0_i_115_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[207]_INST_0_i_116 
       (.I0(s_axis_tdata[203]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[195]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[207]),
        .O(\m_axis_tdata[207]_INST_0_i_116_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[207]_INST_0_i_12 
       (.I0(\m_axis_tdata[207]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[207]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[207]_INST_0_i_13 
       (.I0(\m_axis_tdata[207]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[207]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[207]_INST_0_i_14 
       (.I0(\m_axis_tdata[207]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[207]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[207]_INST_0_i_15 
       (.I0(\m_axis_tdata[207]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_72_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[207]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[207]_INST_0_i_16 
       (.I0(\m_axis_tdata[207]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_74_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[207]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[207]_INST_0_i_17 
       (.I0(\SCALE_SHIFT[1]_98 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_76_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[207]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h0047B800)) 
    \m_axis_tdata[207]_INST_0_i_18 
       (.I0(\m_axis_tdata[207]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[207]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[207]_INST_0_i_19 
       (.I0(\m_axis_tdata[207]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[207]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[207]_INST_0_i_2 
       (.I0(\m_axis_tdata[207]_INST_0_i_7_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[207]_INST_0_i_8_n_0 ),
        .O(\SCALE_SHIFT[1]_98 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[207]_INST_0_i_20 
       (.I0(\m_axis_tdata[207]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[207]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[207]_INST_0_i_21 
       (.I0(\m_axis_tdata[207]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[207]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[207]_INST_0_i_22 
       (.I0(\m_axis_tdata[207]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[207]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[207]_INST_0_i_23 
       (.I0(\m_axis_tdata[207]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_72_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[207]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[207]_INST_0_i_24 
       (.I0(\m_axis_tdata[207]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_74_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[207]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[207]_INST_0_i_25 
       (.I0(\SCALE_SHIFT[1]_98 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_76_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[207]_INST_0_i_25_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[207]_INST_0_i_26 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[207]_INST_0_i_26_n_0 ,\m_axis_tdata[207]_INST_0_i_26_n_1 ,\m_axis_tdata[207]_INST_0_i_26_n_2 ,\m_axis_tdata[207]_INST_0_i_26_n_3 ,\m_axis_tdata[207]_INST_0_i_26_n_4 ,\m_axis_tdata[207]_INST_0_i_26_n_5 ,\m_axis_tdata[207]_INST_0_i_26_n_6 ,\m_axis_tdata[207]_INST_0_i_26_n_7 }),
        .DI({\m_axis_tdata[207]_INST_0_i_79_n_0 ,\m_axis_tdata[207]_INST_0_i_80_n_0 ,\m_axis_tdata[207]_INST_0_i_81_n_0 ,\m_axis_tdata[207]_INST_0_i_82_n_0 ,\m_axis_tdata[207]_INST_0_i_83_n_0 ,\m_axis_tdata[207]_INST_0_i_84_n_0 ,\m_axis_tdata[207]_INST_0_i_85_n_0 ,\m_axis_tdata[207]_INST_0_i_86_n_0 }),
        .O(\NLW_m_axis_tdata[207]_INST_0_i_26_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[207]_INST_0_i_87_n_0 ,\m_axis_tdata[207]_INST_0_i_88_n_0 ,\m_axis_tdata[207]_INST_0_i_89_n_0 ,\m_axis_tdata[207]_INST_0_i_90_n_0 ,\m_axis_tdata[207]_INST_0_i_91_n_0 ,\m_axis_tdata[207]_INST_0_i_92_n_0 ,\m_axis_tdata[207]_INST_0_i_93_n_0 ,\m_axis_tdata[207]_INST_0_i_94_n_0 }));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[207]_INST_0_i_27 
       (.I0(\m_axis_tdata[207]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[207]_INST_0_i_28 
       (.I0(\m_axis_tdata[207]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[207]_INST_0_i_29 
       (.I0(\m_axis_tdata[207]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_29_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[207]_INST_0_i_3 
       (.CI(\m_axis_tdata[207]_INST_0_i_9_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_185 ,\m_axis_tdata[207]_INST_0_i_3_n_1 ,\m_axis_tdata[207]_INST_0_i_3_n_2 ,\m_axis_tdata[207]_INST_0_i_3_n_3 ,\m_axis_tdata[207]_INST_0_i_3_n_4 ,\m_axis_tdata[207]_INST_0_i_3_n_5 ,\m_axis_tdata[207]_INST_0_i_3_n_6 ,\m_axis_tdata[207]_INST_0_i_3_n_7 }),
        .DI({\m_axis_tdata[207]_INST_0_i_10_n_0 ,\m_axis_tdata[207]_INST_0_i_11_n_0 ,\m_axis_tdata[207]_INST_0_i_12_n_0 ,\m_axis_tdata[207]_INST_0_i_13_n_0 ,\m_axis_tdata[207]_INST_0_i_14_n_0 ,\m_axis_tdata[207]_INST_0_i_15_n_0 ,\m_axis_tdata[207]_INST_0_i_16_n_0 ,\m_axis_tdata[207]_INST_0_i_17_n_0 }),
        .O(\NLW_m_axis_tdata[207]_INST_0_i_3_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[207]_INST_0_i_18_n_0 ,\m_axis_tdata[207]_INST_0_i_19_n_0 ,\m_axis_tdata[207]_INST_0_i_20_n_0 ,\m_axis_tdata[207]_INST_0_i_21_n_0 ,\m_axis_tdata[207]_INST_0_i_22_n_0 ,\m_axis_tdata[207]_INST_0_i_23_n_0 ,\m_axis_tdata[207]_INST_0_i_24_n_0 ,\m_axis_tdata[207]_INST_0_i_25_n_0 }));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[207]_INST_0_i_30 
       (.I0(\m_axis_tdata[207]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[207]_INST_0_i_31 
       (.I0(\m_axis_tdata[207]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[207]_INST_0_i_32 
       (.I0(\m_axis_tdata[207]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_72_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[207]_INST_0_i_33 
       (.I0(\m_axis_tdata[207]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_74_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[207]_INST_0_i_34 
       (.I0(\SCALE_SHIFT[1]_98 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_76_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \m_axis_tdata[207]_INST_0_i_35 
       (.I0(\m_axis_tdata[207]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[207]_INST_0_i_36 
       (.I0(\m_axis_tdata[207]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[207]_INST_0_i_37 
       (.I0(\m_axis_tdata[207]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[207]_INST_0_i_38 
       (.I0(\m_axis_tdata[207]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[207]_INST_0_i_39 
       (.I0(\m_axis_tdata[207]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_39_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[207]_INST_0_i_4 
       (.CI(\m_axis_tdata[207]_INST_0_i_26_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_184 ,\m_axis_tdata[207]_INST_0_i_4_n_1 ,\m_axis_tdata[207]_INST_0_i_4_n_2 ,\m_axis_tdata[207]_INST_0_i_4_n_3 ,\m_axis_tdata[207]_INST_0_i_4_n_4 ,\m_axis_tdata[207]_INST_0_i_4_n_5 ,\m_axis_tdata[207]_INST_0_i_4_n_6 ,\m_axis_tdata[207]_INST_0_i_4_n_7 }),
        .DI({\m_axis_tdata[207]_INST_0_i_27_n_0 ,\m_axis_tdata[207]_INST_0_i_28_n_0 ,\m_axis_tdata[207]_INST_0_i_29_n_0 ,\m_axis_tdata[207]_INST_0_i_30_n_0 ,\m_axis_tdata[207]_INST_0_i_31_n_0 ,\m_axis_tdata[207]_INST_0_i_32_n_0 ,\m_axis_tdata[207]_INST_0_i_33_n_0 ,\m_axis_tdata[207]_INST_0_i_34_n_0 }),
        .O(\NLW_m_axis_tdata[207]_INST_0_i_4_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[207]_INST_0_i_35_n_0 ,\m_axis_tdata[207]_INST_0_i_36_n_0 ,\m_axis_tdata[207]_INST_0_i_37_n_0 ,\m_axis_tdata[207]_INST_0_i_38_n_0 ,\m_axis_tdata[207]_INST_0_i_39_n_0 ,\m_axis_tdata[207]_INST_0_i_40_n_0 ,\m_axis_tdata[207]_INST_0_i_41_n_0 ,\m_axis_tdata[207]_INST_0_i_42_n_0 }));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[207]_INST_0_i_40 
       (.I0(\m_axis_tdata[207]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_72_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[207]_INST_0_i_41 
       (.I0(\m_axis_tdata[207]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_74_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[207]_INST_0_i_42 
       (.I0(\SCALE_SHIFT[1]_98 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_76_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[207]_INST_0_i_43 
       (.I0(s_axis_tdata[196]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[204]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[207]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[207]_INST_0_i_44 
       (.I0(s_axis_tdata[198]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[206]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[207]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[207]_INST_0_i_45 
       (.I0(s_axis_tdata[197]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[205]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[207]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[207]_INST_0_i_46 
       (.I0(s_axis_tdata[199]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[207]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[207]_INST_0_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[207]_INST_0_i_47 
       (.I0(\SCALE_SHIFT[1]_99 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_97 ),
        .I3(\SCALE_SHIFT[1]_98 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[207]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[207]_INST_0_i_48 
       (.I0(\SCALE_SHIFT[1]_60 ),
        .I1(LIMIT_11_sn_1),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_61 ),
        .O(\m_axis_tdata[207]_INST_0_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h0009999F)) 
    \m_axis_tdata[207]_INST_0_i_49 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\SCALE_SHIFT[0]_127 ),
        .I3(\LIMIT[9]_0 ),
        .I4(\SCALE_SHIFT[0]_128 ),
        .O(\m_axis_tdata[207]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[207]_INST_0_i_5 
       (.I0(s_axis_tdata[192]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[200]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[207]_INST_0_i_43_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[207]_INST_0_i_50 
       (.I0(\SCALE_SHIFT[0]_124 ),
        .I1(LIMIT_7_sn_1),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_125 ),
        .O(\m_axis_tdata[207]_INST_0_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h000909FF)) 
    \m_axis_tdata[207]_INST_0_i_51 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_62 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_126 ),
        .O(\m_axis_tdata[207]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[207]_INST_0_i_52 
       (.I0(\SCALE_SHIFT[0]_122 ),
        .I1(LIMIT_3_sn_1),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_123 ),
        .O(\m_axis_tdata[207]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h000011141117FFFC)) 
    \m_axis_tdata[207]_INST_0_i_53 
       (.I0(\SCALE_SHIFT[0]_120 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_121 ),
        .O(\m_axis_tdata[207]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h047C)) 
    \m_axis_tdata[207]_INST_0_i_54 
       (.I0(\SCALE_SHIFT[1]_59 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_119 ),
        .O(\m_axis_tdata[207]_INST_0_i_54_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[207]_INST_0_i_55 
       (.I0(\SCALE_SHIFT[1]_99 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_97 ),
        .I3(\SCALE_SHIFT[1]_98 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[207]_INST_0_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[207]_INST_0_i_56 
       (.I0(LIMIT_11_sn_1),
        .I1(\SCALE_SHIFT[1]_60 ),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_61 ),
        .O(\m_axis_tdata[207]_INST_0_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h09900660)) 
    \m_axis_tdata[207]_INST_0_i_57 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\LIMIT[9]_0 ),
        .I3(\SCALE_SHIFT[0]_127 ),
        .I4(\SCALE_SHIFT[0]_128 ),
        .O(\m_axis_tdata[207]_INST_0_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[207]_INST_0_i_58 
       (.I0(LIMIT_7_sn_1),
        .I1(\SCALE_SHIFT[0]_124 ),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_125 ),
        .O(\m_axis_tdata[207]_INST_0_i_58_n_0 ));
  LUT5 #(
    .INIT(32'h00969600)) 
    \m_axis_tdata[207]_INST_0_i_59 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_62 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_126 ),
        .O(\m_axis_tdata[207]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[207]_INST_0_i_6 
       (.I0(s_axis_tdata[194]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[202]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[207]_INST_0_i_44_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[207]_INST_0_i_60 
       (.I0(LIMIT_3_sn_1),
        .I1(\SCALE_SHIFT[0]_122 ),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_123 ),
        .O(\m_axis_tdata[207]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h0001666866680001)) 
    \m_axis_tdata[207]_INST_0_i_61 
       (.I0(\SCALE_SHIFT[0]_120 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_121 ),
        .O(\m_axis_tdata[207]_INST_0_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h1881)) 
    \m_axis_tdata[207]_INST_0_i_62 
       (.I0(\SCALE_SHIFT[1]_59 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_119 ),
        .O(\m_axis_tdata[207]_INST_0_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[207]_INST_0_i_63 
       (.I0(\m_axis_tdata[207]_INST_0_i_95_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[207]_INST_0_i_96_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \m_axis_tdata[207]_INST_0_i_64 
       (.I0(\m_axis_tdata[207]_INST_0_i_97_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[207]_INST_0_i_98_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[207]_INST_0_i_99_n_0 ),
        .I5(\m_axis_tdata[207]_INST_0_i_100_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_64_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[207]_INST_0_i_65 
       (.I0(\m_axis_tdata[207]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[207]_INST_0_i_96_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[207]_INST_0_i_101_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_65_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[207]_INST_0_i_66 
       (.I0(\m_axis_tdata[207]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[207]_INST_0_i_103_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[207]_INST_0_i_95_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[207]_INST_0_i_67 
       (.I0(\m_axis_tdata[207]_INST_0_i_104_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[207]_INST_0_i_99_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_97_n_0 ),
        .I4(\m_axis_tdata[207]_INST_0_i_98_n_0 ),
        .I5(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[207]_INST_0_i_67_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[207]_INST_0_i_68 
       (.I0(\m_axis_tdata[207]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[207]_INST_0_i_103_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_105_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[207]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[207]_INST_0_i_69 
       (.I0(\m_axis_tdata[207]_INST_0_i_106_n_0 ),
        .I1(\m_axis_tdata[207]_INST_0_i_97_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[207]_INST_0_i_104_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[207]_INST_0_i_99_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[207]_INST_0_i_7 
       (.I0(s_axis_tdata[193]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[201]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[207]_INST_0_i_45_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[207]_INST_0_i_70 
       (.I0(\m_axis_tdata[207]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[207]_INST_0_i_102_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[207]_INST_0_i_105_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[207]_INST_0_i_71 
       (.I0(\m_axis_tdata[207]_INST_0_i_108_n_0 ),
        .I1(\m_axis_tdata[207]_INST_0_i_104_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[207]_INST_0_i_106_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[207]_INST_0_i_97_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_71_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[207]_INST_0_i_72 
       (.I0(\m_axis_tdata[207]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[207]_INST_0_i_102_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_109_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[207]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[207]_INST_0_i_73 
       (.I0(\m_axis_tdata[207]_INST_0_i_110_n_0 ),
        .I1(\m_axis_tdata[207]_INST_0_i_106_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[207]_INST_0_i_108_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[207]_INST_0_i_104_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_73_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair191" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[207]_INST_0_i_74 
       (.I0(\m_axis_tdata[207]_INST_0_i_111_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[207]_INST_0_i_109_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_74_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[207]_INST_0_i_75 
       (.I0(\m_axis_tdata[207]_INST_0_i_110_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[207]_INST_0_i_106_n_0 ),
        .I3(\m_axis_tdata[207]_INST_0_i_112_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[207]_INST_0_i_75_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair193" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[207]_INST_0_i_76 
       (.I0(\m_axis_tdata[207]_INST_0_i_8_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[207]_INST_0_i_111_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[207]_INST_0_i_77 
       (.I0(\m_axis_tdata[207]_INST_0_i_113_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[207]_INST_0_i_112_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_77_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair190" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[207]_INST_0_i_78 
       (.I0(\m_axis_tdata[207]_INST_0_i_6_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[207]_INST_0_i_113_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_78_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[207]_INST_0_i_79 
       (.I0(\SCALE_SHIFT[1]_99 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_97 ),
        .I3(\SCALE_SHIFT[1]_98 ),
        .O(\m_axis_tdata[207]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[207]_INST_0_i_8 
       (.I0(s_axis_tdata[195]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[203]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[207]_INST_0_i_46_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[207]_INST_0_i_80 
       (.I0(\SCALE_SHIFT[1]_60 ),
        .I1(LIMIT[12]),
        .I2(LIMIT[13]),
        .I3(\SCALE_SHIFT[1]_61 ),
        .O(\m_axis_tdata[207]_INST_0_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[207]_INST_0_i_81 
       (.I0(\SCALE_SHIFT[0]_127 ),
        .I1(LIMIT[10]),
        .I2(LIMIT[11]),
        .I3(\SCALE_SHIFT[0]_128 ),
        .O(\m_axis_tdata[207]_INST_0_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[207]_INST_0_i_82 
       (.I0(\SCALE_SHIFT[0]_124 ),
        .I1(LIMIT[8]),
        .I2(LIMIT[9]),
        .I3(\SCALE_SHIFT[0]_125 ),
        .O(\m_axis_tdata[207]_INST_0_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[207]_INST_0_i_83 
       (.I0(\SCALE_SHIFT[1]_62 ),
        .I1(LIMIT[6]),
        .I2(LIMIT[7]),
        .I3(\SCALE_SHIFT[0]_126 ),
        .O(\m_axis_tdata[207]_INST_0_i_83_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[207]_INST_0_i_84 
       (.I0(\SCALE_SHIFT[0]_122 ),
        .I1(LIMIT[4]),
        .I2(LIMIT[5]),
        .I3(\SCALE_SHIFT[0]_123 ),
        .O(\m_axis_tdata[207]_INST_0_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[207]_INST_0_i_85 
       (.I0(\SCALE_SHIFT[0]_120 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[3]),
        .I3(\SCALE_SHIFT[0]_121 ),
        .O(\m_axis_tdata[207]_INST_0_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[207]_INST_0_i_86 
       (.I0(\SCALE_SHIFT[1]_59 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_119 ),
        .O(\m_axis_tdata[207]_INST_0_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[207]_INST_0_i_87 
       (.I0(\SCALE_SHIFT[1]_99 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_97 ),
        .I3(\SCALE_SHIFT[1]_98 ),
        .O(\m_axis_tdata[207]_INST_0_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[207]_INST_0_i_88 
       (.I0(\SCALE_SHIFT[1]_60 ),
        .I1(LIMIT[12]),
        .I2(\SCALE_SHIFT[1]_61 ),
        .I3(LIMIT[13]),
        .O(\m_axis_tdata[207]_INST_0_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[207]_INST_0_i_89 
       (.I0(\SCALE_SHIFT[0]_127 ),
        .I1(LIMIT[10]),
        .I2(\SCALE_SHIFT[0]_128 ),
        .I3(LIMIT[11]),
        .O(\m_axis_tdata[207]_INST_0_i_89_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[207]_INST_0_i_9 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[207]_INST_0_i_9_n_0 ,\m_axis_tdata[207]_INST_0_i_9_n_1 ,\m_axis_tdata[207]_INST_0_i_9_n_2 ,\m_axis_tdata[207]_INST_0_i_9_n_3 ,\m_axis_tdata[207]_INST_0_i_9_n_4 ,\m_axis_tdata[207]_INST_0_i_9_n_5 ,\m_axis_tdata[207]_INST_0_i_9_n_6 ,\m_axis_tdata[207]_INST_0_i_9_n_7 }),
        .DI({\m_axis_tdata[207]_INST_0_i_47_n_0 ,\m_axis_tdata[207]_INST_0_i_48_n_0 ,\m_axis_tdata[207]_INST_0_i_49_n_0 ,\m_axis_tdata[207]_INST_0_i_50_n_0 ,\m_axis_tdata[207]_INST_0_i_51_n_0 ,\m_axis_tdata[207]_INST_0_i_52_n_0 ,\m_axis_tdata[207]_INST_0_i_53_n_0 ,\m_axis_tdata[207]_INST_0_i_54_n_0 }),
        .O(\NLW_m_axis_tdata[207]_INST_0_i_9_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[207]_INST_0_i_55_n_0 ,\m_axis_tdata[207]_INST_0_i_56_n_0 ,\m_axis_tdata[207]_INST_0_i_57_n_0 ,\m_axis_tdata[207]_INST_0_i_58_n_0 ,\m_axis_tdata[207]_INST_0_i_59_n_0 ,\m_axis_tdata[207]_INST_0_i_60_n_0 ,\m_axis_tdata[207]_INST_0_i_61_n_0 ,\m_axis_tdata[207]_INST_0_i_62_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[207]_INST_0_i_90 
       (.I0(\SCALE_SHIFT[0]_124 ),
        .I1(LIMIT[8]),
        .I2(\SCALE_SHIFT[0]_125 ),
        .I3(LIMIT[9]),
        .O(\m_axis_tdata[207]_INST_0_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[207]_INST_0_i_91 
       (.I0(\SCALE_SHIFT[1]_62 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[0]_126 ),
        .I3(LIMIT[7]),
        .O(\m_axis_tdata[207]_INST_0_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[207]_INST_0_i_92 
       (.I0(\SCALE_SHIFT[0]_122 ),
        .I1(LIMIT[4]),
        .I2(\SCALE_SHIFT[0]_123 ),
        .I3(LIMIT[5]),
        .O(\m_axis_tdata[207]_INST_0_i_92_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[207]_INST_0_i_93 
       (.I0(\SCALE_SHIFT[0]_120 ),
        .I1(LIMIT[2]),
        .I2(\SCALE_SHIFT[0]_121 ),
        .I3(LIMIT[3]),
        .O(\m_axis_tdata[207]_INST_0_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[207]_INST_0_i_94 
       (.I0(\SCALE_SHIFT[1]_59 ),
        .I1(LIMIT[0]),
        .I2(\SCALE_SHIFT[0]_119 ),
        .I3(LIMIT[1]),
        .O(\m_axis_tdata[207]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \m_axis_tdata[207]_INST_0_i_95 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[199]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[207]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[207]_INST_0_i_114_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[207]_INST_0_i_96 
       (.I0(\m_axis_tdata[207]_INST_0_i_103_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[207]_INST_0_i_115_n_0 ),
        .O(\m_axis_tdata[207]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[207]_INST_0_i_97 
       (.I0(s_axis_tdata[192]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[200]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[207]),
        .O(\m_axis_tdata[207]_INST_0_i_97_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[207]_INST_0_i_98 
       (.I0(s_axis_tdata[196]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[204]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[207]),
        .O(\m_axis_tdata[207]_INST_0_i_98_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[207]_INST_0_i_99 
       (.I0(s_axis_tdata[194]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[202]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[207]),
        .O(\m_axis_tdata[207]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[208]_INST_0_i_1 
       (.I0(SCALE_SHIFT[1]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[208]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_63 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[209]_INST_0_i_1 
       (.I0(\m_axis_tdata[209]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[210]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_129 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[209]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[208]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[209]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair124" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[20]_INST_0_i_1 
       (.I0(\m_axis_tdata[20]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[21]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_12 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[20]_INST_0_i_2 
       (.I0(s_axis_tdata[17]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[19]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[20]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair203" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[210]_INST_0_i_1 
       (.I0(\m_axis_tdata[210]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[211]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_130 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[210]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[209]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[210]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[211]_INST_0_i_1 
       (.I0(\m_axis_tdata[211]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[212]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_131 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[211]_INST_0_i_2 
       (.I0(s_axis_tdata[208]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[210]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[211]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair202" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[212]_INST_0_i_1 
       (.I0(\m_axis_tdata[212]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[213]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_132 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[212]_INST_0_i_2 
       (.I0(s_axis_tdata[209]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[211]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[212]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair197" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[213]_INST_0_i_1 
       (.I0(\m_axis_tdata[213]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[214]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_133 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[213]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[210]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[215]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[213]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[214]_INST_0_i_1 
       (.I0(\m_axis_tdata[215]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[217]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[214]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_66 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[214]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[211]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[216]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[214]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[215]_INST_0_i_1 
       (.I0(\m_axis_tdata[215]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[217]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[216]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[218]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_136 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[215]_INST_0_i_2 
       (.I0(s_axis_tdata[208]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[212]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[215]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[216]_INST_0_i_1 
       (.I0(\m_axis_tdata[216]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[218]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[217]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[219]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_134 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[216]_INST_0_i_2 
       (.I0(s_axis_tdata[209]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[213]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[216]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[217]_INST_0_i_1 
       (.I0(\m_axis_tdata[217]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[219]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[218]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[220]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_135 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[217]_INST_0_i_2 
       (.I0(s_axis_tdata[210]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[214]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[217]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[218]_INST_0_i_1 
       (.I0(\m_axis_tdata[218]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[220]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[219]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[221]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_137 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[218]_INST_0_i_2 
       (.I0(s_axis_tdata[211]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[215]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[218]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[219]_INST_0_i_1 
       (.I0(\m_axis_tdata[219]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[221]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[220]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[222]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_138 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[219]_INST_0_i_2 
       (.I0(s_axis_tdata[212]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[208]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[216]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[219]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair119" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[21]_INST_0_i_1 
       (.I0(\m_axis_tdata[21]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[22]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_13 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[21]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[18]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[23]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[21]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[220]_INST_0_i_1 
       (.I0(\m_axis_tdata[220]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[222]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[221]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[223]_INST_0_i_5_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_64 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[220]_INST_0_i_2 
       (.I0(s_axis_tdata[213]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[209]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[217]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[220]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[221]_INST_0_i_1 
       (.I0(\m_axis_tdata[221]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[223]_INST_0_i_5_n_0 ),
        .I3(SCALE_SHIFT[0]),
        .I4(\SCALE_SHIFT[1]_102 ),
        .O(\SCALE_SHIFT[1]_65 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[221]_INST_0_i_2 
       (.I0(s_axis_tdata[214]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[210]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[218]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[221]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[222]_INST_0_i_1 
       (.I0(\m_axis_tdata[222]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[223]_INST_0_i_7_n_0 ),
        .O(\SCALE_SHIFT[1]_102 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[222]_INST_0_i_2 
       (.I0(s_axis_tdata[215]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[211]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[219]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[222]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair201" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[223]_INST_0_i_1 
       (.I0(\m_axis_tdata[223]_INST_0_i_5_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[223]_INST_0_i_6_n_0 ),
        .O(\SCALE_SHIFT[1]_100 ));
  LUT5 #(
    .INIT(32'hFF004700)) 
    \m_axis_tdata[223]_INST_0_i_10 
       (.I0(\m_axis_tdata[223]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[223]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[223]_INST_0_i_100 
       (.I0(s_axis_tdata[214]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[222]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[223]),
        .O(\m_axis_tdata[223]_INST_0_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \m_axis_tdata[223]_INST_0_i_101 
       (.I0(\m_axis_tdata[223]_INST_0_i_114_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[215]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[3]),
        .I5(s_axis_tdata[223]),
        .O(\m_axis_tdata[223]_INST_0_i_101_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[223]_INST_0_i_102 
       (.I0(s_axis_tdata[221]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[213]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[223]),
        .O(\m_axis_tdata[223]_INST_0_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[223]_INST_0_i_103 
       (.I0(s_axis_tdata[209]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[217]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[223]),
        .O(\m_axis_tdata[223]_INST_0_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[223]_INST_0_i_104 
       (.I0(s_axis_tdata[222]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[214]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[223]),
        .O(\m_axis_tdata[223]_INST_0_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888888)) 
    \m_axis_tdata[223]_INST_0_i_105 
       (.I0(\m_axis_tdata[223]_INST_0_i_116_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[215]),
        .I4(SCALE_SHIFT[4]),
        .I5(s_axis_tdata[223]),
        .O(\m_axis_tdata[223]_INST_0_i_105_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[223]_INST_0_i_106 
       (.I0(s_axis_tdata[220]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[212]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[223]),
        .O(\m_axis_tdata[223]_INST_0_i_106_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[223]_INST_0_i_107 
       (.I0(s_axis_tdata[217]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[209]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[223]),
        .O(\m_axis_tdata[223]_INST_0_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[223]_INST_0_i_108 
       (.I0(s_axis_tdata[218]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[210]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[223]),
        .O(\m_axis_tdata[223]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[223]_INST_0_i_109 
       (.I0(s_axis_tdata[215]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[223]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[223]_INST_0_i_116_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_109_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[223]_INST_0_i_11 
       (.I0(\m_axis_tdata[223]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[223]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[223]_INST_0_i_110 
       (.I0(s_axis_tdata[216]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[208]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[223]),
        .O(\m_axis_tdata[223]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[223]_INST_0_i_111 
       (.I0(s_axis_tdata[213]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[221]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[223]_INST_0_i_107_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[223]_INST_0_i_112 
       (.I0(s_axis_tdata[214]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[222]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[223]_INST_0_i_108_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[223]_INST_0_i_113 
       (.I0(s_axis_tdata[212]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[220]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[223]_INST_0_i_110_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[223]_INST_0_i_114 
       (.I0(s_axis_tdata[211]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[219]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[223]),
        .O(\m_axis_tdata[223]_INST_0_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[223]_INST_0_i_115 
       (.I0(s_axis_tdata[213]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[221]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[223]),
        .O(\m_axis_tdata[223]_INST_0_i_115_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[223]_INST_0_i_116 
       (.I0(s_axis_tdata[219]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[211]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[223]),
        .O(\m_axis_tdata[223]_INST_0_i_116_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[223]_INST_0_i_12 
       (.I0(\m_axis_tdata[223]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[223]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[223]_INST_0_i_13 
       (.I0(\m_axis_tdata[223]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[223]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[223]_INST_0_i_14 
       (.I0(\m_axis_tdata[223]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[223]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[223]_INST_0_i_15 
       (.I0(\m_axis_tdata[223]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_72_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[223]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[223]_INST_0_i_16 
       (.I0(\m_axis_tdata[223]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_74_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[223]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[223]_INST_0_i_17 
       (.I0(\SCALE_SHIFT[1]_101 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_76_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[223]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h0047B800)) 
    \m_axis_tdata[223]_INST_0_i_18 
       (.I0(\m_axis_tdata[223]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[223]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[223]_INST_0_i_19 
       (.I0(\m_axis_tdata[223]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[223]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[223]_INST_0_i_2 
       (.I0(\m_axis_tdata[223]_INST_0_i_7_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[223]_INST_0_i_8_n_0 ),
        .O(\SCALE_SHIFT[1]_101 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[223]_INST_0_i_20 
       (.I0(\m_axis_tdata[223]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[223]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[223]_INST_0_i_21 
       (.I0(\m_axis_tdata[223]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[223]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[223]_INST_0_i_22 
       (.I0(\m_axis_tdata[223]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[223]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[223]_INST_0_i_23 
       (.I0(\m_axis_tdata[223]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_72_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[223]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[223]_INST_0_i_24 
       (.I0(\m_axis_tdata[223]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_74_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[223]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[223]_INST_0_i_25 
       (.I0(\SCALE_SHIFT[1]_101 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_76_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[223]_INST_0_i_25_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[223]_INST_0_i_26 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[223]_INST_0_i_26_n_0 ,\m_axis_tdata[223]_INST_0_i_26_n_1 ,\m_axis_tdata[223]_INST_0_i_26_n_2 ,\m_axis_tdata[223]_INST_0_i_26_n_3 ,\m_axis_tdata[223]_INST_0_i_26_n_4 ,\m_axis_tdata[223]_INST_0_i_26_n_5 ,\m_axis_tdata[223]_INST_0_i_26_n_6 ,\m_axis_tdata[223]_INST_0_i_26_n_7 }),
        .DI({\m_axis_tdata[223]_INST_0_i_79_n_0 ,\m_axis_tdata[223]_INST_0_i_80_n_0 ,\m_axis_tdata[223]_INST_0_i_81_n_0 ,\m_axis_tdata[223]_INST_0_i_82_n_0 ,\m_axis_tdata[223]_INST_0_i_83_n_0 ,\m_axis_tdata[223]_INST_0_i_84_n_0 ,\m_axis_tdata[223]_INST_0_i_85_n_0 ,\m_axis_tdata[223]_INST_0_i_86_n_0 }),
        .O(\NLW_m_axis_tdata[223]_INST_0_i_26_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[223]_INST_0_i_87_n_0 ,\m_axis_tdata[223]_INST_0_i_88_n_0 ,\m_axis_tdata[223]_INST_0_i_89_n_0 ,\m_axis_tdata[223]_INST_0_i_90_n_0 ,\m_axis_tdata[223]_INST_0_i_91_n_0 ,\m_axis_tdata[223]_INST_0_i_92_n_0 ,\m_axis_tdata[223]_INST_0_i_93_n_0 ,\m_axis_tdata[223]_INST_0_i_94_n_0 }));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[223]_INST_0_i_27 
       (.I0(\m_axis_tdata[223]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[223]_INST_0_i_28 
       (.I0(\m_axis_tdata[223]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[223]_INST_0_i_29 
       (.I0(\m_axis_tdata[223]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_29_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[223]_INST_0_i_3 
       (.CI(\m_axis_tdata[223]_INST_0_i_9_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_188 ,\m_axis_tdata[223]_INST_0_i_3_n_1 ,\m_axis_tdata[223]_INST_0_i_3_n_2 ,\m_axis_tdata[223]_INST_0_i_3_n_3 ,\m_axis_tdata[223]_INST_0_i_3_n_4 ,\m_axis_tdata[223]_INST_0_i_3_n_5 ,\m_axis_tdata[223]_INST_0_i_3_n_6 ,\m_axis_tdata[223]_INST_0_i_3_n_7 }),
        .DI({\m_axis_tdata[223]_INST_0_i_10_n_0 ,\m_axis_tdata[223]_INST_0_i_11_n_0 ,\m_axis_tdata[223]_INST_0_i_12_n_0 ,\m_axis_tdata[223]_INST_0_i_13_n_0 ,\m_axis_tdata[223]_INST_0_i_14_n_0 ,\m_axis_tdata[223]_INST_0_i_15_n_0 ,\m_axis_tdata[223]_INST_0_i_16_n_0 ,\m_axis_tdata[223]_INST_0_i_17_n_0 }),
        .O(\NLW_m_axis_tdata[223]_INST_0_i_3_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[223]_INST_0_i_18_n_0 ,\m_axis_tdata[223]_INST_0_i_19_n_0 ,\m_axis_tdata[223]_INST_0_i_20_n_0 ,\m_axis_tdata[223]_INST_0_i_21_n_0 ,\m_axis_tdata[223]_INST_0_i_22_n_0 ,\m_axis_tdata[223]_INST_0_i_23_n_0 ,\m_axis_tdata[223]_INST_0_i_24_n_0 ,\m_axis_tdata[223]_INST_0_i_25_n_0 }));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[223]_INST_0_i_30 
       (.I0(\m_axis_tdata[223]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[223]_INST_0_i_31 
       (.I0(\m_axis_tdata[223]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[223]_INST_0_i_32 
       (.I0(\m_axis_tdata[223]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_72_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[223]_INST_0_i_33 
       (.I0(\m_axis_tdata[223]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_74_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[223]_INST_0_i_34 
       (.I0(\SCALE_SHIFT[1]_101 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_76_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \m_axis_tdata[223]_INST_0_i_35 
       (.I0(\m_axis_tdata[223]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[223]_INST_0_i_36 
       (.I0(\m_axis_tdata[223]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[223]_INST_0_i_37 
       (.I0(\m_axis_tdata[223]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[223]_INST_0_i_38 
       (.I0(\m_axis_tdata[223]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[223]_INST_0_i_39 
       (.I0(\m_axis_tdata[223]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_39_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[223]_INST_0_i_4 
       (.CI(\m_axis_tdata[223]_INST_0_i_26_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_189 ,\m_axis_tdata[223]_INST_0_i_4_n_1 ,\m_axis_tdata[223]_INST_0_i_4_n_2 ,\m_axis_tdata[223]_INST_0_i_4_n_3 ,\m_axis_tdata[223]_INST_0_i_4_n_4 ,\m_axis_tdata[223]_INST_0_i_4_n_5 ,\m_axis_tdata[223]_INST_0_i_4_n_6 ,\m_axis_tdata[223]_INST_0_i_4_n_7 }),
        .DI({\m_axis_tdata[223]_INST_0_i_27_n_0 ,\m_axis_tdata[223]_INST_0_i_28_n_0 ,\m_axis_tdata[223]_INST_0_i_29_n_0 ,\m_axis_tdata[223]_INST_0_i_30_n_0 ,\m_axis_tdata[223]_INST_0_i_31_n_0 ,\m_axis_tdata[223]_INST_0_i_32_n_0 ,\m_axis_tdata[223]_INST_0_i_33_n_0 ,\m_axis_tdata[223]_INST_0_i_34_n_0 }),
        .O(\NLW_m_axis_tdata[223]_INST_0_i_4_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[223]_INST_0_i_35_n_0 ,\m_axis_tdata[223]_INST_0_i_36_n_0 ,\m_axis_tdata[223]_INST_0_i_37_n_0 ,\m_axis_tdata[223]_INST_0_i_38_n_0 ,\m_axis_tdata[223]_INST_0_i_39_n_0 ,\m_axis_tdata[223]_INST_0_i_40_n_0 ,\m_axis_tdata[223]_INST_0_i_41_n_0 ,\m_axis_tdata[223]_INST_0_i_42_n_0 }));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[223]_INST_0_i_40 
       (.I0(\m_axis_tdata[223]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_72_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[223]_INST_0_i_41 
       (.I0(\m_axis_tdata[223]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_74_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[223]_INST_0_i_42 
       (.I0(\SCALE_SHIFT[1]_101 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_76_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[223]_INST_0_i_43 
       (.I0(s_axis_tdata[212]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[220]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[223]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[223]_INST_0_i_44 
       (.I0(s_axis_tdata[214]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[222]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[223]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[223]_INST_0_i_45 
       (.I0(s_axis_tdata[213]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[221]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[223]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[223]_INST_0_i_46 
       (.I0(s_axis_tdata[215]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[223]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[223]_INST_0_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[223]_INST_0_i_47 
       (.I0(\SCALE_SHIFT[1]_102 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_100 ),
        .I3(\SCALE_SHIFT[1]_101 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[223]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[223]_INST_0_i_48 
       (.I0(\SCALE_SHIFT[1]_64 ),
        .I1(LIMIT_11_sn_1),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_65 ),
        .O(\m_axis_tdata[223]_INST_0_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h0009999F)) 
    \m_axis_tdata[223]_INST_0_i_49 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\SCALE_SHIFT[0]_137 ),
        .I3(\LIMIT[9]_0 ),
        .I4(\SCALE_SHIFT[0]_138 ),
        .O(\m_axis_tdata[223]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[223]_INST_0_i_5 
       (.I0(s_axis_tdata[208]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[216]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[223]_INST_0_i_43_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[223]_INST_0_i_50 
       (.I0(\SCALE_SHIFT[0]_134 ),
        .I1(LIMIT_7_sn_1),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_135 ),
        .O(\m_axis_tdata[223]_INST_0_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h000909FF)) 
    \m_axis_tdata[223]_INST_0_i_51 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_66 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_136 ),
        .O(\m_axis_tdata[223]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[223]_INST_0_i_52 
       (.I0(\SCALE_SHIFT[0]_132 ),
        .I1(LIMIT_3_sn_1),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_133 ),
        .O(\m_axis_tdata[223]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h000011141117FFFC)) 
    \m_axis_tdata[223]_INST_0_i_53 
       (.I0(\SCALE_SHIFT[0]_130 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_131 ),
        .O(\m_axis_tdata[223]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h047C)) 
    \m_axis_tdata[223]_INST_0_i_54 
       (.I0(\SCALE_SHIFT[1]_63 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_129 ),
        .O(\m_axis_tdata[223]_INST_0_i_54_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[223]_INST_0_i_55 
       (.I0(\SCALE_SHIFT[1]_102 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_100 ),
        .I3(\SCALE_SHIFT[1]_101 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[223]_INST_0_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[223]_INST_0_i_56 
       (.I0(LIMIT_11_sn_1),
        .I1(\SCALE_SHIFT[1]_64 ),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_65 ),
        .O(\m_axis_tdata[223]_INST_0_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h09900660)) 
    \m_axis_tdata[223]_INST_0_i_57 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\LIMIT[9]_0 ),
        .I3(\SCALE_SHIFT[0]_137 ),
        .I4(\SCALE_SHIFT[0]_138 ),
        .O(\m_axis_tdata[223]_INST_0_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[223]_INST_0_i_58 
       (.I0(LIMIT_7_sn_1),
        .I1(\SCALE_SHIFT[0]_134 ),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_135 ),
        .O(\m_axis_tdata[223]_INST_0_i_58_n_0 ));
  LUT5 #(
    .INIT(32'h00969600)) 
    \m_axis_tdata[223]_INST_0_i_59 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_66 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_136 ),
        .O(\m_axis_tdata[223]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[223]_INST_0_i_6 
       (.I0(s_axis_tdata[210]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[218]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[223]_INST_0_i_44_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[223]_INST_0_i_60 
       (.I0(LIMIT_3_sn_1),
        .I1(\SCALE_SHIFT[0]_132 ),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_133 ),
        .O(\m_axis_tdata[223]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h0001666866680001)) 
    \m_axis_tdata[223]_INST_0_i_61 
       (.I0(\SCALE_SHIFT[0]_130 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_131 ),
        .O(\m_axis_tdata[223]_INST_0_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h1881)) 
    \m_axis_tdata[223]_INST_0_i_62 
       (.I0(\SCALE_SHIFT[1]_63 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_129 ),
        .O(\m_axis_tdata[223]_INST_0_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[223]_INST_0_i_63 
       (.I0(\m_axis_tdata[223]_INST_0_i_95_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[223]_INST_0_i_96_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \m_axis_tdata[223]_INST_0_i_64 
       (.I0(\m_axis_tdata[223]_INST_0_i_97_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[223]_INST_0_i_98_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[223]_INST_0_i_99_n_0 ),
        .I5(\m_axis_tdata[223]_INST_0_i_100_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_64_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[223]_INST_0_i_65 
       (.I0(\m_axis_tdata[223]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[223]_INST_0_i_96_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[223]_INST_0_i_101_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_65_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[223]_INST_0_i_66 
       (.I0(\m_axis_tdata[223]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[223]_INST_0_i_103_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[223]_INST_0_i_95_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[223]_INST_0_i_67 
       (.I0(\m_axis_tdata[223]_INST_0_i_104_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[223]_INST_0_i_99_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_97_n_0 ),
        .I4(\m_axis_tdata[223]_INST_0_i_98_n_0 ),
        .I5(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[223]_INST_0_i_67_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[223]_INST_0_i_68 
       (.I0(\m_axis_tdata[223]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[223]_INST_0_i_103_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_105_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[223]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[223]_INST_0_i_69 
       (.I0(\m_axis_tdata[223]_INST_0_i_106_n_0 ),
        .I1(\m_axis_tdata[223]_INST_0_i_97_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[223]_INST_0_i_104_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[223]_INST_0_i_99_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[223]_INST_0_i_7 
       (.I0(s_axis_tdata[209]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[217]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[223]_INST_0_i_45_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[223]_INST_0_i_70 
       (.I0(\m_axis_tdata[223]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[223]_INST_0_i_102_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[223]_INST_0_i_105_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[223]_INST_0_i_71 
       (.I0(\m_axis_tdata[223]_INST_0_i_108_n_0 ),
        .I1(\m_axis_tdata[223]_INST_0_i_104_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[223]_INST_0_i_106_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[223]_INST_0_i_97_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_71_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[223]_INST_0_i_72 
       (.I0(\m_axis_tdata[223]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[223]_INST_0_i_102_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_109_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[223]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[223]_INST_0_i_73 
       (.I0(\m_axis_tdata[223]_INST_0_i_110_n_0 ),
        .I1(\m_axis_tdata[223]_INST_0_i_106_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[223]_INST_0_i_108_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[223]_INST_0_i_104_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_73_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair199" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[223]_INST_0_i_74 
       (.I0(\m_axis_tdata[223]_INST_0_i_111_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[223]_INST_0_i_109_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_74_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[223]_INST_0_i_75 
       (.I0(\m_axis_tdata[223]_INST_0_i_110_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[223]_INST_0_i_106_n_0 ),
        .I3(\m_axis_tdata[223]_INST_0_i_112_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[223]_INST_0_i_75_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair200" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[223]_INST_0_i_76 
       (.I0(\m_axis_tdata[223]_INST_0_i_8_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[223]_INST_0_i_111_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[223]_INST_0_i_77 
       (.I0(\m_axis_tdata[223]_INST_0_i_113_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[223]_INST_0_i_112_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_77_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair198" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[223]_INST_0_i_78 
       (.I0(\m_axis_tdata[223]_INST_0_i_6_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[223]_INST_0_i_113_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_78_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[223]_INST_0_i_79 
       (.I0(\SCALE_SHIFT[1]_102 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_100 ),
        .I3(\SCALE_SHIFT[1]_101 ),
        .O(\m_axis_tdata[223]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[223]_INST_0_i_8 
       (.I0(s_axis_tdata[211]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[219]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[223]_INST_0_i_46_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[223]_INST_0_i_80 
       (.I0(\SCALE_SHIFT[1]_64 ),
        .I1(LIMIT[12]),
        .I2(LIMIT[13]),
        .I3(\SCALE_SHIFT[1]_65 ),
        .O(\m_axis_tdata[223]_INST_0_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[223]_INST_0_i_81 
       (.I0(\SCALE_SHIFT[0]_137 ),
        .I1(LIMIT[10]),
        .I2(LIMIT[11]),
        .I3(\SCALE_SHIFT[0]_138 ),
        .O(\m_axis_tdata[223]_INST_0_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[223]_INST_0_i_82 
       (.I0(\SCALE_SHIFT[0]_134 ),
        .I1(LIMIT[8]),
        .I2(LIMIT[9]),
        .I3(\SCALE_SHIFT[0]_135 ),
        .O(\m_axis_tdata[223]_INST_0_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[223]_INST_0_i_83 
       (.I0(\SCALE_SHIFT[1]_66 ),
        .I1(LIMIT[6]),
        .I2(LIMIT[7]),
        .I3(\SCALE_SHIFT[0]_136 ),
        .O(\m_axis_tdata[223]_INST_0_i_83_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[223]_INST_0_i_84 
       (.I0(\SCALE_SHIFT[0]_132 ),
        .I1(LIMIT[4]),
        .I2(LIMIT[5]),
        .I3(\SCALE_SHIFT[0]_133 ),
        .O(\m_axis_tdata[223]_INST_0_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[223]_INST_0_i_85 
       (.I0(\SCALE_SHIFT[0]_130 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[3]),
        .I3(\SCALE_SHIFT[0]_131 ),
        .O(\m_axis_tdata[223]_INST_0_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[223]_INST_0_i_86 
       (.I0(\SCALE_SHIFT[1]_63 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_129 ),
        .O(\m_axis_tdata[223]_INST_0_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[223]_INST_0_i_87 
       (.I0(\SCALE_SHIFT[1]_102 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_100 ),
        .I3(\SCALE_SHIFT[1]_101 ),
        .O(\m_axis_tdata[223]_INST_0_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[223]_INST_0_i_88 
       (.I0(\SCALE_SHIFT[1]_64 ),
        .I1(LIMIT[12]),
        .I2(\SCALE_SHIFT[1]_65 ),
        .I3(LIMIT[13]),
        .O(\m_axis_tdata[223]_INST_0_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[223]_INST_0_i_89 
       (.I0(\SCALE_SHIFT[0]_137 ),
        .I1(LIMIT[10]),
        .I2(\SCALE_SHIFT[0]_138 ),
        .I3(LIMIT[11]),
        .O(\m_axis_tdata[223]_INST_0_i_89_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[223]_INST_0_i_9 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[223]_INST_0_i_9_n_0 ,\m_axis_tdata[223]_INST_0_i_9_n_1 ,\m_axis_tdata[223]_INST_0_i_9_n_2 ,\m_axis_tdata[223]_INST_0_i_9_n_3 ,\m_axis_tdata[223]_INST_0_i_9_n_4 ,\m_axis_tdata[223]_INST_0_i_9_n_5 ,\m_axis_tdata[223]_INST_0_i_9_n_6 ,\m_axis_tdata[223]_INST_0_i_9_n_7 }),
        .DI({\m_axis_tdata[223]_INST_0_i_47_n_0 ,\m_axis_tdata[223]_INST_0_i_48_n_0 ,\m_axis_tdata[223]_INST_0_i_49_n_0 ,\m_axis_tdata[223]_INST_0_i_50_n_0 ,\m_axis_tdata[223]_INST_0_i_51_n_0 ,\m_axis_tdata[223]_INST_0_i_52_n_0 ,\m_axis_tdata[223]_INST_0_i_53_n_0 ,\m_axis_tdata[223]_INST_0_i_54_n_0 }),
        .O(\NLW_m_axis_tdata[223]_INST_0_i_9_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[223]_INST_0_i_55_n_0 ,\m_axis_tdata[223]_INST_0_i_56_n_0 ,\m_axis_tdata[223]_INST_0_i_57_n_0 ,\m_axis_tdata[223]_INST_0_i_58_n_0 ,\m_axis_tdata[223]_INST_0_i_59_n_0 ,\m_axis_tdata[223]_INST_0_i_60_n_0 ,\m_axis_tdata[223]_INST_0_i_61_n_0 ,\m_axis_tdata[223]_INST_0_i_62_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[223]_INST_0_i_90 
       (.I0(\SCALE_SHIFT[0]_134 ),
        .I1(LIMIT[8]),
        .I2(\SCALE_SHIFT[0]_135 ),
        .I3(LIMIT[9]),
        .O(\m_axis_tdata[223]_INST_0_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[223]_INST_0_i_91 
       (.I0(\SCALE_SHIFT[1]_66 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[0]_136 ),
        .I3(LIMIT[7]),
        .O(\m_axis_tdata[223]_INST_0_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[223]_INST_0_i_92 
       (.I0(\SCALE_SHIFT[0]_132 ),
        .I1(LIMIT[4]),
        .I2(\SCALE_SHIFT[0]_133 ),
        .I3(LIMIT[5]),
        .O(\m_axis_tdata[223]_INST_0_i_92_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[223]_INST_0_i_93 
       (.I0(\SCALE_SHIFT[0]_130 ),
        .I1(LIMIT[2]),
        .I2(\SCALE_SHIFT[0]_131 ),
        .I3(LIMIT[3]),
        .O(\m_axis_tdata[223]_INST_0_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[223]_INST_0_i_94 
       (.I0(\SCALE_SHIFT[1]_63 ),
        .I1(LIMIT[0]),
        .I2(\SCALE_SHIFT[0]_129 ),
        .I3(LIMIT[1]),
        .O(\m_axis_tdata[223]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \m_axis_tdata[223]_INST_0_i_95 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[215]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[223]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[223]_INST_0_i_114_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair192" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[223]_INST_0_i_96 
       (.I0(\m_axis_tdata[223]_INST_0_i_103_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[223]_INST_0_i_115_n_0 ),
        .O(\m_axis_tdata[223]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[223]_INST_0_i_97 
       (.I0(s_axis_tdata[208]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[216]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[223]),
        .O(\m_axis_tdata[223]_INST_0_i_97_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[223]_INST_0_i_98 
       (.I0(s_axis_tdata[212]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[220]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[223]),
        .O(\m_axis_tdata[223]_INST_0_i_98_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[223]_INST_0_i_99 
       (.I0(s_axis_tdata[210]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[218]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[223]),
        .O(\m_axis_tdata[223]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[224]_INST_0_i_1 
       (.I0(SCALE_SHIFT[1]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[224]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_67 ));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[225]_INST_0_i_1 
       (.I0(\m_axis_tdata[225]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[226]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_139 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[225]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[224]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[225]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[226]_INST_0_i_1 
       (.I0(\m_axis_tdata[226]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[227]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_140 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[226]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[225]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[226]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair209" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[227]_INST_0_i_1 
       (.I0(\m_axis_tdata[227]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[228]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_141 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[227]_INST_0_i_2 
       (.I0(s_axis_tdata[224]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[226]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[227]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[228]_INST_0_i_1 
       (.I0(\m_axis_tdata[228]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[229]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_142 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[228]_INST_0_i_2 
       (.I0(s_axis_tdata[225]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[227]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[228]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair208" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[229]_INST_0_i_1 
       (.I0(\m_axis_tdata[229]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[230]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_143 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[229]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[226]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[231]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[229]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[22]_INST_0_i_1 
       (.I0(\m_axis_tdata[23]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[25]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[22]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_6 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[22]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[19]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[24]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[22]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[230]_INST_0_i_1 
       (.I0(\m_axis_tdata[231]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[233]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[230]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_72 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[230]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[227]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[232]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[230]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[231]_INST_0_i_1 
       (.I0(\m_axis_tdata[231]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[233]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[232]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[234]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_146 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[231]_INST_0_i_2 
       (.I0(s_axis_tdata[224]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[228]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[231]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[232]_INST_0_i_1 
       (.I0(\m_axis_tdata[232]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[234]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[233]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[235]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_144 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[232]_INST_0_i_2 
       (.I0(s_axis_tdata[225]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[229]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[232]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[233]_INST_0_i_1 
       (.I0(\m_axis_tdata[233]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[235]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[234]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[236]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_145 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[233]_INST_0_i_2 
       (.I0(s_axis_tdata[226]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[230]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[233]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[234]_INST_0_i_1 
       (.I0(\m_axis_tdata[234]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[236]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[235]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[237]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_147 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[234]_INST_0_i_2 
       (.I0(s_axis_tdata[227]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[231]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[234]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[235]_INST_0_i_1 
       (.I0(\m_axis_tdata[235]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[237]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[236]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[238]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_148 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[235]_INST_0_i_2 
       (.I0(s_axis_tdata[228]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[224]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[232]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[235]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[236]_INST_0_i_1 
       (.I0(\m_axis_tdata[236]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[238]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[237]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[239]_INST_0_i_38_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_68 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[236]_INST_0_i_2 
       (.I0(s_axis_tdata[229]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[225]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[233]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[236]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \m_axis_tdata[237]_INST_0_i_1 
       (.I0(\m_axis_tdata[238]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[238]_INST_0_i_3_n_0 ),
        .I3(\m_axis_tdata[237]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[239]_INST_0_i_38_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_69 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[237]_INST_0_i_2 
       (.I0(s_axis_tdata[230]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[226]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[234]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[237]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[238]_INST_0_i_1 
       (.I0(\m_axis_tdata[238]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[238]_INST_0_i_3_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_38_n_0 ),
        .I4(\m_axis_tdata[239]_INST_0_i_39_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_70 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[238]_INST_0_i_2 
       (.I0(s_axis_tdata[231]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[227]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[235]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[238]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[238]_INST_0_i_3 
       (.I0(s_axis_tdata[225]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[233]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[238]_INST_0_i_4_n_0 ),
        .O(\m_axis_tdata[238]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[238]_INST_0_i_4 
       (.I0(s_axis_tdata[229]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[237]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[238]_INST_0_i_4_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[239]_INST_0_i_1 
       (.CI(\m_axis_tdata[239]_INST_0_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_186 ,\m_axis_tdata[239]_INST_0_i_1_n_1 ,\m_axis_tdata[239]_INST_0_i_1_n_2 ,\m_axis_tdata[239]_INST_0_i_1_n_3 ,\m_axis_tdata[239]_INST_0_i_1_n_4 ,\m_axis_tdata[239]_INST_0_i_1_n_5 ,\m_axis_tdata[239]_INST_0_i_1_n_6 ,\m_axis_tdata[239]_INST_0_i_1_n_7 }),
        .DI({\m_axis_tdata[239]_INST_0_i_5_n_0 ,\m_axis_tdata[239]_INST_0_i_6_n_0 ,\m_axis_tdata[239]_INST_0_i_7_n_0 ,\m_axis_tdata[239]_INST_0_i_8_n_0 ,\m_axis_tdata[239]_INST_0_i_9_n_0 ,\m_axis_tdata[239]_INST_0_i_10_n_0 ,\m_axis_tdata[239]_INST_0_i_11_n_0 ,\m_axis_tdata[239]_INST_0_i_12_n_0 }),
        .O(\NLW_m_axis_tdata[239]_INST_0_i_1_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[239]_INST_0_i_13_n_0 ,\m_axis_tdata[239]_INST_0_i_14_n_0 ,\m_axis_tdata[239]_INST_0_i_15_n_0 ,\m_axis_tdata[239]_INST_0_i_16_n_0 ,\m_axis_tdata[239]_INST_0_i_17_n_0 ,\m_axis_tdata[239]_INST_0_i_18_n_0 ,\m_axis_tdata[239]_INST_0_i_19_n_0 ,\m_axis_tdata[239]_INST_0_i_20_n_0 }));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[239]_INST_0_i_10 
       (.I0(\m_axis_tdata[239]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[239]_INST_0_i_100 
       (.I0(s_axis_tdata[225]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[233]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[239]),
        .O(\m_axis_tdata[239]_INST_0_i_100_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[239]_INST_0_i_101 
       (.I0(s_axis_tdata[238]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[230]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[239]),
        .O(\m_axis_tdata[239]_INST_0_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888888)) 
    \m_axis_tdata[239]_INST_0_i_102 
       (.I0(\m_axis_tdata[239]_INST_0_i_114_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[231]),
        .I4(SCALE_SHIFT[4]),
        .I5(s_axis_tdata[239]),
        .O(\m_axis_tdata[239]_INST_0_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[239]_INST_0_i_103 
       (.I0(s_axis_tdata[236]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[228]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[239]),
        .O(\m_axis_tdata[239]_INST_0_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[239]_INST_0_i_104 
       (.I0(s_axis_tdata[233]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[225]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[239]),
        .O(\m_axis_tdata[239]_INST_0_i_104_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[239]_INST_0_i_105 
       (.I0(s_axis_tdata[234]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[226]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[239]),
        .O(\m_axis_tdata[239]_INST_0_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[239]_INST_0_i_106 
       (.I0(s_axis_tdata[231]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[239]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[239]_INST_0_i_114_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_106_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[239]_INST_0_i_107 
       (.I0(s_axis_tdata[232]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[224]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[239]),
        .O(\m_axis_tdata[239]_INST_0_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[239]_INST_0_i_108 
       (.I0(s_axis_tdata[229]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[237]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[239]_INST_0_i_104_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[239]_INST_0_i_109 
       (.I0(s_axis_tdata[230]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[238]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[239]_INST_0_i_105_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_109_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[239]_INST_0_i_11 
       (.I0(\m_axis_tdata[239]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[239]_INST_0_i_110 
       (.I0(s_axis_tdata[228]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[236]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[239]_INST_0_i_107_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_110_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[239]_INST_0_i_111 
       (.I0(s_axis_tdata[231]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[239]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[239]_INST_0_i_111_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[239]_INST_0_i_112 
       (.I0(s_axis_tdata[227]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[235]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[239]),
        .O(\m_axis_tdata[239]_INST_0_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[239]_INST_0_i_113 
       (.I0(s_axis_tdata[229]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[237]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[239]),
        .O(\m_axis_tdata[239]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[239]_INST_0_i_114 
       (.I0(s_axis_tdata[235]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[227]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[239]),
        .O(\m_axis_tdata[239]_INST_0_i_114_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[239]_INST_0_i_12 
       (.I0(\m_axis_tdata[239]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \m_axis_tdata[239]_INST_0_i_13 
       (.I0(\m_axis_tdata[239]_INST_0_i_57_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_58_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_59_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[239]_INST_0_i_14 
       (.I0(\m_axis_tdata[239]_INST_0_i_60_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_61_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_57_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[239]_INST_0_i_15 
       (.I0(\m_axis_tdata[239]_INST_0_i_62_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_63_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_60_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[239]_INST_0_i_16 
       (.I0(\m_axis_tdata[239]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_65_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_62_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[239]_INST_0_i_17 
       (.I0(\m_axis_tdata[239]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_64_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[239]_INST_0_i_18 
       (.I0(\m_axis_tdata[239]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[239]_INST_0_i_19 
       (.I0(\m_axis_tdata[239]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_19_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[239]_INST_0_i_2 
       (.CI(\m_axis_tdata[239]_INST_0_i_21_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_187 ,\m_axis_tdata[239]_INST_0_i_2_n_1 ,\m_axis_tdata[239]_INST_0_i_2_n_2 ,\m_axis_tdata[239]_INST_0_i_2_n_3 ,\m_axis_tdata[239]_INST_0_i_2_n_4 ,\m_axis_tdata[239]_INST_0_i_2_n_5 ,\m_axis_tdata[239]_INST_0_i_2_n_6 ,\m_axis_tdata[239]_INST_0_i_2_n_7 }),
        .DI({\m_axis_tdata[239]_INST_0_i_22_n_0 ,\m_axis_tdata[239]_INST_0_i_23_n_0 ,\m_axis_tdata[239]_INST_0_i_24_n_0 ,\m_axis_tdata[239]_INST_0_i_25_n_0 ,\m_axis_tdata[239]_INST_0_i_26_n_0 ,\m_axis_tdata[239]_INST_0_i_27_n_0 ,\m_axis_tdata[239]_INST_0_i_28_n_0 ,\m_axis_tdata[239]_INST_0_i_29_n_0 }),
        .O(\NLW_m_axis_tdata[239]_INST_0_i_2_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[239]_INST_0_i_30_n_0 ,\m_axis_tdata[239]_INST_0_i_31_n_0 ,\m_axis_tdata[239]_INST_0_i_32_n_0 ,\m_axis_tdata[239]_INST_0_i_33_n_0 ,\m_axis_tdata[239]_INST_0_i_34_n_0 ,\m_axis_tdata[239]_INST_0_i_35_n_0 ,\m_axis_tdata[239]_INST_0_i_36_n_0 ,\m_axis_tdata[239]_INST_0_i_37_n_0 }));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[239]_INST_0_i_20 
       (.I0(\m_axis_tdata[239]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_20_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[239]_INST_0_i_21 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[239]_INST_0_i_21_n_0 ,\m_axis_tdata[239]_INST_0_i_21_n_1 ,\m_axis_tdata[239]_INST_0_i_21_n_2 ,\m_axis_tdata[239]_INST_0_i_21_n_3 ,\m_axis_tdata[239]_INST_0_i_21_n_4 ,\m_axis_tdata[239]_INST_0_i_21_n_5 ,\m_axis_tdata[239]_INST_0_i_21_n_6 ,\m_axis_tdata[239]_INST_0_i_21_n_7 }),
        .DI({\m_axis_tdata[239]_INST_0_i_73_n_0 ,\m_axis_tdata[239]_INST_0_i_74_n_0 ,\m_axis_tdata[239]_INST_0_i_75_n_0 ,\m_axis_tdata[239]_INST_0_i_76_n_0 ,\m_axis_tdata[239]_INST_0_i_77_n_0 ,\m_axis_tdata[239]_INST_0_i_78_n_0 ,\m_axis_tdata[239]_INST_0_i_79_n_0 ,\m_axis_tdata[239]_INST_0_i_80_n_0 }),
        .O(\NLW_m_axis_tdata[239]_INST_0_i_21_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[239]_INST_0_i_81_n_0 ,\m_axis_tdata[239]_INST_0_i_82_n_0 ,\m_axis_tdata[239]_INST_0_i_83_n_0 ,\m_axis_tdata[239]_INST_0_i_84_n_0 ,\m_axis_tdata[239]_INST_0_i_85_n_0 ,\m_axis_tdata[239]_INST_0_i_86_n_0 ,\m_axis_tdata[239]_INST_0_i_87_n_0 ,\m_axis_tdata[239]_INST_0_i_88_n_0 }));
  LUT5 #(
    .INIT(32'hFF004700)) 
    \m_axis_tdata[239]_INST_0_i_22 
       (.I0(\m_axis_tdata[239]_INST_0_i_57_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_58_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_59_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[239]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[239]_INST_0_i_23 
       (.I0(\m_axis_tdata[239]_INST_0_i_60_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_61_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_57_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[239]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[239]_INST_0_i_24 
       (.I0(\m_axis_tdata[239]_INST_0_i_62_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_63_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_60_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[239]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[239]_INST_0_i_25 
       (.I0(\m_axis_tdata[239]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_65_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_62_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[239]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[239]_INST_0_i_26 
       (.I0(\m_axis_tdata[239]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_64_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[239]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[239]_INST_0_i_27 
       (.I0(\m_axis_tdata[239]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[239]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[239]_INST_0_i_28 
       (.I0(\m_axis_tdata[239]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[239]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[239]_INST_0_i_29 
       (.I0(\m_axis_tdata[239]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[239]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[239]_INST_0_i_3 
       (.I0(\m_axis_tdata[239]_INST_0_i_38_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[239]_INST_0_i_39_n_0 ),
        .I3(SCALE_SHIFT[0]),
        .I4(\m_axis_tdata[239]_INST_0_i_40_n_0 ),
        .O(\SCALE_SHIFT[1]_71 ));
  LUT5 #(
    .INIT(32'h0047B800)) 
    \m_axis_tdata[239]_INST_0_i_30 
       (.I0(\m_axis_tdata[239]_INST_0_i_57_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_58_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_59_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[239]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[239]_INST_0_i_31 
       (.I0(\m_axis_tdata[239]_INST_0_i_60_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_61_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_57_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[239]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[239]_INST_0_i_32 
       (.I0(\m_axis_tdata[239]_INST_0_i_62_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_63_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_60_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[239]_INST_0_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[239]_INST_0_i_33 
       (.I0(\m_axis_tdata[239]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_65_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_62_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[239]_INST_0_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[239]_INST_0_i_34 
       (.I0(\m_axis_tdata[239]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_64_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[239]_INST_0_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[239]_INST_0_i_35 
       (.I0(\m_axis_tdata[239]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[239]_INST_0_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[239]_INST_0_i_36 
       (.I0(\m_axis_tdata[239]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[239]_INST_0_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[239]_INST_0_i_37 
       (.I0(\m_axis_tdata[239]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[239]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[239]_INST_0_i_38 
       (.I0(s_axis_tdata[224]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[232]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[239]_INST_0_i_89_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[239]_INST_0_i_39 
       (.I0(s_axis_tdata[226]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[234]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[239]_INST_0_i_90_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_39_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[239]_INST_0_i_4 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[239]_INST_0_i_4_n_0 ,\m_axis_tdata[239]_INST_0_i_4_n_1 ,\m_axis_tdata[239]_INST_0_i_4_n_2 ,\m_axis_tdata[239]_INST_0_i_4_n_3 ,\m_axis_tdata[239]_INST_0_i_4_n_4 ,\m_axis_tdata[239]_INST_0_i_4_n_5 ,\m_axis_tdata[239]_INST_0_i_4_n_6 ,\m_axis_tdata[239]_INST_0_i_4_n_7 }),
        .DI({\m_axis_tdata[239]_INST_0_i_41_n_0 ,\m_axis_tdata[239]_INST_0_i_42_n_0 ,\m_axis_tdata[239]_INST_0_i_43_n_0 ,\m_axis_tdata[239]_INST_0_i_44_n_0 ,\m_axis_tdata[239]_INST_0_i_45_n_0 ,\m_axis_tdata[239]_INST_0_i_46_n_0 ,\m_axis_tdata[239]_INST_0_i_47_n_0 ,\m_axis_tdata[239]_INST_0_i_48_n_0 }),
        .O(\NLW_m_axis_tdata[239]_INST_0_i_4_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[239]_INST_0_i_49_n_0 ,\m_axis_tdata[239]_INST_0_i_50_n_0 ,\m_axis_tdata[239]_INST_0_i_51_n_0 ,\m_axis_tdata[239]_INST_0_i_52_n_0 ,\m_axis_tdata[239]_INST_0_i_53_n_0 ,\m_axis_tdata[239]_INST_0_i_54_n_0 ,\m_axis_tdata[239]_INST_0_i_55_n_0 ,\m_axis_tdata[239]_INST_0_i_56_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[239]_INST_0_i_40 
       (.I0(\m_axis_tdata[238]_INST_0_i_3_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[239]_INST_0_i_91_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_40_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[239]_INST_0_i_41 
       (.I0(\SCALE_SHIFT[1]_70 ),
        .I1(\SCALE_SHIFT[1]_71 ),
        .O(\m_axis_tdata[239]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[239]_INST_0_i_42 
       (.I0(\SCALE_SHIFT[1]_68 ),
        .I1(LIMIT[12]),
        .I2(LIMIT[13]),
        .I3(\SCALE_SHIFT[1]_69 ),
        .O(\m_axis_tdata[239]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[239]_INST_0_i_43 
       (.I0(\SCALE_SHIFT[0]_147 ),
        .I1(LIMIT[10]),
        .I2(LIMIT[11]),
        .I3(\SCALE_SHIFT[0]_148 ),
        .O(\m_axis_tdata[239]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[239]_INST_0_i_44 
       (.I0(\SCALE_SHIFT[0]_144 ),
        .I1(LIMIT[8]),
        .I2(LIMIT[9]),
        .I3(\SCALE_SHIFT[0]_145 ),
        .O(\m_axis_tdata[239]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[239]_INST_0_i_45 
       (.I0(\SCALE_SHIFT[1]_72 ),
        .I1(LIMIT[6]),
        .I2(LIMIT[7]),
        .I3(\SCALE_SHIFT[0]_146 ),
        .O(\m_axis_tdata[239]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[239]_INST_0_i_46 
       (.I0(\SCALE_SHIFT[0]_142 ),
        .I1(LIMIT[4]),
        .I2(LIMIT[5]),
        .I3(\SCALE_SHIFT[0]_143 ),
        .O(\m_axis_tdata[239]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[239]_INST_0_i_47 
       (.I0(\SCALE_SHIFT[0]_140 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[3]),
        .I3(\SCALE_SHIFT[0]_141 ),
        .O(\m_axis_tdata[239]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[239]_INST_0_i_48 
       (.I0(\SCALE_SHIFT[1]_67 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_139 ),
        .O(\m_axis_tdata[239]_INST_0_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata[239]_INST_0_i_49 
       (.I0(\SCALE_SHIFT[1]_70 ),
        .I1(\SCALE_SHIFT[1]_71 ),
        .O(\m_axis_tdata[239]_INST_0_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[239]_INST_0_i_5 
       (.I0(\m_axis_tdata[239]_INST_0_i_57_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_58_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_59_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[239]_INST_0_i_50 
       (.I0(\SCALE_SHIFT[1]_68 ),
        .I1(LIMIT[12]),
        .I2(\SCALE_SHIFT[1]_69 ),
        .I3(LIMIT[13]),
        .O(\m_axis_tdata[239]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[239]_INST_0_i_51 
       (.I0(\SCALE_SHIFT[0]_147 ),
        .I1(LIMIT[10]),
        .I2(\SCALE_SHIFT[0]_148 ),
        .I3(LIMIT[11]),
        .O(\m_axis_tdata[239]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[239]_INST_0_i_52 
       (.I0(\SCALE_SHIFT[0]_144 ),
        .I1(LIMIT[8]),
        .I2(\SCALE_SHIFT[0]_145 ),
        .I3(LIMIT[9]),
        .O(\m_axis_tdata[239]_INST_0_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[239]_INST_0_i_53 
       (.I0(\SCALE_SHIFT[1]_72 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[0]_146 ),
        .I3(LIMIT[7]),
        .O(\m_axis_tdata[239]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[239]_INST_0_i_54 
       (.I0(\SCALE_SHIFT[0]_142 ),
        .I1(LIMIT[4]),
        .I2(\SCALE_SHIFT[0]_143 ),
        .I3(LIMIT[5]),
        .O(\m_axis_tdata[239]_INST_0_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[239]_INST_0_i_55 
       (.I0(\SCALE_SHIFT[0]_140 ),
        .I1(LIMIT[2]),
        .I2(\SCALE_SHIFT[0]_141 ),
        .I3(LIMIT[3]),
        .O(\m_axis_tdata[239]_INST_0_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[239]_INST_0_i_56 
       (.I0(\SCALE_SHIFT[1]_67 ),
        .I1(LIMIT[0]),
        .I2(\SCALE_SHIFT[0]_139 ),
        .I3(LIMIT[1]),
        .O(\m_axis_tdata[239]_INST_0_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[239]_INST_0_i_57 
       (.I0(\m_axis_tdata[239]_INST_0_i_92_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[239]_INST_0_i_93_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \m_axis_tdata[239]_INST_0_i_58 
       (.I0(\m_axis_tdata[239]_INST_0_i_94_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[239]_INST_0_i_95_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[239]_INST_0_i_96_n_0 ),
        .I5(\m_axis_tdata[239]_INST_0_i_97_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_58_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[239]_INST_0_i_59 
       (.I0(\m_axis_tdata[239]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_93_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[239]_INST_0_i_98_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_59_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[239]_INST_0_i_6 
       (.I0(\m_axis_tdata[239]_INST_0_i_60_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_61_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_57_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[239]_INST_0_i_60 
       (.I0(\m_axis_tdata[239]_INST_0_i_99_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[239]_INST_0_i_100_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[239]_INST_0_i_92_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[239]_INST_0_i_61 
       (.I0(\m_axis_tdata[239]_INST_0_i_101_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[239]_INST_0_i_96_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_94_n_0 ),
        .I4(\m_axis_tdata[239]_INST_0_i_95_n_0 ),
        .I5(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[239]_INST_0_i_61_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[239]_INST_0_i_62 
       (.I0(\m_axis_tdata[239]_INST_0_i_99_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[239]_INST_0_i_100_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_102_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[239]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[239]_INST_0_i_63 
       (.I0(\m_axis_tdata[239]_INST_0_i_103_n_0 ),
        .I1(\m_axis_tdata[239]_INST_0_i_94_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[239]_INST_0_i_101_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[239]_INST_0_i_96_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_63_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[239]_INST_0_i_64 
       (.I0(\m_axis_tdata[239]_INST_0_i_104_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[239]_INST_0_i_99_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[239]_INST_0_i_102_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[239]_INST_0_i_65 
       (.I0(\m_axis_tdata[239]_INST_0_i_105_n_0 ),
        .I1(\m_axis_tdata[239]_INST_0_i_101_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[239]_INST_0_i_103_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[239]_INST_0_i_94_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_65_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[239]_INST_0_i_66 
       (.I0(\m_axis_tdata[239]_INST_0_i_104_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[239]_INST_0_i_99_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_106_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[239]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[239]_INST_0_i_67 
       (.I0(\m_axis_tdata[239]_INST_0_i_107_n_0 ),
        .I1(\m_axis_tdata[239]_INST_0_i_103_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[239]_INST_0_i_105_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[239]_INST_0_i_101_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_67_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair205" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[239]_INST_0_i_68 
       (.I0(\m_axis_tdata[239]_INST_0_i_108_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[239]_INST_0_i_106_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_68_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[239]_INST_0_i_69 
       (.I0(\m_axis_tdata[239]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[239]_INST_0_i_103_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_109_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[239]_INST_0_i_69_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[239]_INST_0_i_7 
       (.I0(\m_axis_tdata[239]_INST_0_i_62_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_63_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_60_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair207" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[239]_INST_0_i_70 
       (.I0(\m_axis_tdata[239]_INST_0_i_91_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[239]_INST_0_i_108_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[239]_INST_0_i_71 
       (.I0(\m_axis_tdata[239]_INST_0_i_110_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[239]_INST_0_i_109_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_71_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair204" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[239]_INST_0_i_72 
       (.I0(\m_axis_tdata[239]_INST_0_i_39_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[239]_INST_0_i_110_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_72_n_0 ));
  LUT3 #(
    .INIT(8'h13)) 
    \m_axis_tdata[239]_INST_0_i_73 
       (.I0(\SCALE_SHIFT[1]_70 ),
        .I1(\LIMIT[12]_3 ),
        .I2(\SCALE_SHIFT[1]_71 ),
        .O(\m_axis_tdata[239]_INST_0_i_73_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[239]_INST_0_i_74 
       (.I0(\SCALE_SHIFT[1]_68 ),
        .I1(LIMIT_11_sn_1),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_69 ),
        .O(\m_axis_tdata[239]_INST_0_i_74_n_0 ));
  LUT5 #(
    .INIT(32'h0009999F)) 
    \m_axis_tdata[239]_INST_0_i_75 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\SCALE_SHIFT[0]_147 ),
        .I3(\LIMIT[9]_0 ),
        .I4(\SCALE_SHIFT[0]_148 ),
        .O(\m_axis_tdata[239]_INST_0_i_75_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[239]_INST_0_i_76 
       (.I0(\SCALE_SHIFT[0]_144 ),
        .I1(LIMIT_7_sn_1),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_145 ),
        .O(\m_axis_tdata[239]_INST_0_i_76_n_0 ));
  LUT5 #(
    .INIT(32'h000909FF)) 
    \m_axis_tdata[239]_INST_0_i_77 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_72 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_146 ),
        .O(\m_axis_tdata[239]_INST_0_i_77_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[239]_INST_0_i_78 
       (.I0(\SCALE_SHIFT[0]_142 ),
        .I1(LIMIT_3_sn_1),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_143 ),
        .O(\m_axis_tdata[239]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h000011141117FFFC)) 
    \m_axis_tdata[239]_INST_0_i_79 
       (.I0(\SCALE_SHIFT[0]_140 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_141 ),
        .O(\m_axis_tdata[239]_INST_0_i_79_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[239]_INST_0_i_8 
       (.I0(\m_axis_tdata[239]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_65_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_62_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h047C)) 
    \m_axis_tdata[239]_INST_0_i_80 
       (.I0(\SCALE_SHIFT[1]_67 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_139 ),
        .O(\m_axis_tdata[239]_INST_0_i_80_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \m_axis_tdata[239]_INST_0_i_81 
       (.I0(\SCALE_SHIFT[1]_70 ),
        .I1(\LIMIT[12]_3 ),
        .I2(\SCALE_SHIFT[1]_71 ),
        .O(\m_axis_tdata[239]_INST_0_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[239]_INST_0_i_82 
       (.I0(LIMIT_11_sn_1),
        .I1(\SCALE_SHIFT[1]_68 ),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_69 ),
        .O(\m_axis_tdata[239]_INST_0_i_82_n_0 ));
  LUT5 #(
    .INIT(32'h09900660)) 
    \m_axis_tdata[239]_INST_0_i_83 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\LIMIT[9]_0 ),
        .I3(\SCALE_SHIFT[0]_147 ),
        .I4(\SCALE_SHIFT[0]_148 ),
        .O(\m_axis_tdata[239]_INST_0_i_83_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[239]_INST_0_i_84 
       (.I0(LIMIT_7_sn_1),
        .I1(\SCALE_SHIFT[0]_144 ),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_145 ),
        .O(\m_axis_tdata[239]_INST_0_i_84_n_0 ));
  LUT5 #(
    .INIT(32'h00969600)) 
    \m_axis_tdata[239]_INST_0_i_85 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_72 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_146 ),
        .O(\m_axis_tdata[239]_INST_0_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[239]_INST_0_i_86 
       (.I0(LIMIT_3_sn_1),
        .I1(\SCALE_SHIFT[0]_142 ),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_143 ),
        .O(\m_axis_tdata[239]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h0001666866680001)) 
    \m_axis_tdata[239]_INST_0_i_87 
       (.I0(\SCALE_SHIFT[0]_140 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_141 ),
        .O(\m_axis_tdata[239]_INST_0_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h1881)) 
    \m_axis_tdata[239]_INST_0_i_88 
       (.I0(\SCALE_SHIFT[1]_67 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_139 ),
        .O(\m_axis_tdata[239]_INST_0_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[239]_INST_0_i_89 
       (.I0(s_axis_tdata[228]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[236]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[239]_INST_0_i_89_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[239]_INST_0_i_9 
       (.I0(\m_axis_tdata[239]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[239]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[239]_INST_0_i_64_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[239]_INST_0_i_90 
       (.I0(s_axis_tdata[230]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[238]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[239]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[239]_INST_0_i_91 
       (.I0(s_axis_tdata[227]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[235]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[239]_INST_0_i_111_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \m_axis_tdata[239]_INST_0_i_92 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[231]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[239]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[239]_INST_0_i_112_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_92_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[239]_INST_0_i_93 
       (.I0(\m_axis_tdata[239]_INST_0_i_100_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[239]_INST_0_i_113_n_0 ),
        .O(\m_axis_tdata[239]_INST_0_i_93_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[239]_INST_0_i_94 
       (.I0(s_axis_tdata[224]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[232]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[239]),
        .O(\m_axis_tdata[239]_INST_0_i_94_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[239]_INST_0_i_95 
       (.I0(s_axis_tdata[228]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[236]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[239]),
        .O(\m_axis_tdata[239]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[239]_INST_0_i_96 
       (.I0(s_axis_tdata[226]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[234]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[239]),
        .O(\m_axis_tdata[239]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[239]_INST_0_i_97 
       (.I0(s_axis_tdata[230]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[238]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[239]),
        .O(\m_axis_tdata[239]_INST_0_i_97_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \m_axis_tdata[239]_INST_0_i_98 
       (.I0(\m_axis_tdata[239]_INST_0_i_112_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[231]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[3]),
        .I5(s_axis_tdata[239]),
        .O(\m_axis_tdata[239]_INST_0_i_98_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[239]_INST_0_i_99 
       (.I0(s_axis_tdata[237]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[229]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[239]),
        .O(\m_axis_tdata[239]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[23]_INST_0_i_1 
       (.I0(\m_axis_tdata[23]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[25]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[24]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[26]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_16 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[23]_INST_0_i_2 
       (.I0(s_axis_tdata[16]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[20]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[240]_INST_0_i_1 
       (.I0(SCALE_SHIFT[1]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[240]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_73 ));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[241]_INST_0_i_1 
       (.I0(\m_axis_tdata[241]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[242]_INST_0_i_3_n_0 ),
        .O(\SCALE_SHIFT[0]_149 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[241]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[240]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[241]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair215" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[242]_INST_0_i_1 
       (.I0(\m_axis_tdata[242]_INST_0_i_3_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[243]_INST_0_i_3_n_0 ),
        .O(\SCALE_SHIFT[0]_150 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[242]_INST_0_i_3 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[241]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[242]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[243]_INST_0_i_1 
       (.I0(\m_axis_tdata[243]_INST_0_i_3_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[244]_INST_0_i_3_n_0 ),
        .O(\SCALE_SHIFT[0]_151 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[243]_INST_0_i_3 
       (.I0(s_axis_tdata[240]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[242]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[243]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair214" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[244]_INST_0_i_1 
       (.I0(\m_axis_tdata[244]_INST_0_i_3_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[245]_INST_0_i_3_n_0 ),
        .O(\SCALE_SHIFT[0]_152 ));
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \m_axis_tdata[244]_INST_0_i_2 
       (.I0(LIMIT[3]),
        .I1(LIMIT[1]),
        .I2(LIMIT[0]),
        .I3(LIMIT[2]),
        .I4(LIMIT[4]),
        .O(LIMIT_3_sn_1));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[244]_INST_0_i_3 
       (.I0(s_axis_tdata[241]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[243]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[244]_INST_0_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair210" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[245]_INST_0_i_1 
       (.I0(\m_axis_tdata[245]_INST_0_i_3_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[246]_INST_0_i_3_n_0 ),
        .O(\SCALE_SHIFT[0]_153 ));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    \m_axis_tdata[245]_INST_0_i_2 
       (.I0(LIMIT[4]),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(LIMIT[5]),
        .O(LIMIT_4_sn_1));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[245]_INST_0_i_3 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[242]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[247]_INST_0_i_3_n_0 ),
        .O(\m_axis_tdata[245]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \m_axis_tdata[246]_INST_0_i_1 
       (.I0(LIMIT[4]),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(LIMIT[5]),
        .O(\LIMIT[4]_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[246]_INST_0_i_2 
       (.I0(\m_axis_tdata[247]_INST_0_i_3_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[249]_INST_0_i_3_n_0 ),
        .I3(\m_axis_tdata[246]_INST_0_i_3_n_0 ),
        .I4(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_78 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[246]_INST_0_i_3 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[243]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[248]_INST_0_i_3_n_0 ),
        .O(\m_axis_tdata[246]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[247]_INST_0_i_1 
       (.I0(\m_axis_tdata[247]_INST_0_i_3_n_0 ),
        .I1(\m_axis_tdata[249]_INST_0_i_3_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[248]_INST_0_i_3_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[250]_INST_0_i_3_n_0 ),
        .O(\SCALE_SHIFT[0]_156 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \m_axis_tdata[247]_INST_0_i_2 
       (.I0(LIMIT[6]),
        .I1(\LIMIT[4]_0 ),
        .I2(LIMIT[7]),
        .O(LIMIT_6_sn_1));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[247]_INST_0_i_3 
       (.I0(s_axis_tdata[240]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[244]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[247]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[248]_INST_0_i_1 
       (.I0(\m_axis_tdata[248]_INST_0_i_3_n_0 ),
        .I1(\m_axis_tdata[250]_INST_0_i_3_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[249]_INST_0_i_3_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[251]_INST_0_i_3_n_0 ),
        .O(\SCALE_SHIFT[0]_154 ));
  LUT4 #(
    .INIT(16'hFB04)) 
    \m_axis_tdata[248]_INST_0_i_2 
       (.I0(LIMIT[7]),
        .I1(\LIMIT[4]_0 ),
        .I2(LIMIT[6]),
        .I3(LIMIT[8]),
        .O(LIMIT_7_sn_1));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[248]_INST_0_i_3 
       (.I0(s_axis_tdata[241]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[245]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[248]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[249]_INST_0_i_1 
       (.I0(\m_axis_tdata[249]_INST_0_i_3_n_0 ),
        .I1(\m_axis_tdata[251]_INST_0_i_3_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[250]_INST_0_i_3_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[252]_INST_0_i_3_n_0 ),
        .O(\SCALE_SHIFT[0]_155 ));
  LUT5 #(
    .INIT(32'hFFEF0010)) 
    \m_axis_tdata[249]_INST_0_i_2 
       (.I0(LIMIT[8]),
        .I1(LIMIT[6]),
        .I2(\LIMIT[4]_0 ),
        .I3(LIMIT[7]),
        .I4(LIMIT[9]),
        .O(LIMIT_8_sn_1));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[249]_INST_0_i_3 
       (.I0(s_axis_tdata[242]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[246]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[249]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[24]_INST_0_i_1 
       (.I0(\m_axis_tdata[24]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[26]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[25]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[27]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_14 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[24]_INST_0_i_2 
       (.I0(s_axis_tdata[17]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[21]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[24]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[250]_INST_0_i_1 
       (.I0(\m_axis_tdata[250]_INST_0_i_3_n_0 ),
        .I1(\m_axis_tdata[252]_INST_0_i_3_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[251]_INST_0_i_3_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[253]_INST_0_i_3_n_0 ),
        .O(\SCALE_SHIFT[0]_157 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000010)) 
    \m_axis_tdata[250]_INST_0_i_2 
       (.I0(LIMIT[9]),
        .I1(LIMIT[7]),
        .I2(\LIMIT[4]_0 ),
        .I3(LIMIT[6]),
        .I4(LIMIT[8]),
        .I5(LIMIT[10]),
        .O(\LIMIT[9]_0 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[250]_INST_0_i_3 
       (.I0(s_axis_tdata[243]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[247]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[250]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[251]_INST_0_i_1 
       (.I0(LIMIT[9]),
        .I1(LIMIT[7]),
        .I2(\LIMIT[4]_0 ),
        .I3(LIMIT[6]),
        .I4(LIMIT[8]),
        .I5(LIMIT[10]),
        .O(LIMIT_9_sn_1));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[251]_INST_0_i_2 
       (.I0(\m_axis_tdata[251]_INST_0_i_3_n_0 ),
        .I1(\m_axis_tdata[253]_INST_0_i_3_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[252]_INST_0_i_3_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[254]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_158 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[251]_INST_0_i_3 
       (.I0(s_axis_tdata[244]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[240]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[248]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[251]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[252]_INST_0_i_1 
       (.I0(\m_axis_tdata[252]_INST_0_i_3_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[254]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[253]_INST_0_i_3_n_0 ),
        .I4(\m_axis_tdata[255]_INST_0_i_39_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_74 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \m_axis_tdata[252]_INST_0_i_2 
       (.I0(LIMIT[11]),
        .I1(LIMIT_9_sn_1),
        .I2(LIMIT[12]),
        .O(LIMIT_11_sn_1));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[252]_INST_0_i_3 
       (.I0(s_axis_tdata[245]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[241]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[249]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[252]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \m_axis_tdata[253]_INST_0_i_1 
       (.I0(\m_axis_tdata[254]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[254]_INST_0_i_3_n_0 ),
        .I3(\m_axis_tdata[253]_INST_0_i_3_n_0 ),
        .I4(\m_axis_tdata[255]_INST_0_i_39_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_75 ));
  LUT4 #(
    .INIT(16'hFB04)) 
    \m_axis_tdata[253]_INST_0_i_2 
       (.I0(LIMIT[12]),
        .I1(LIMIT_9_sn_1),
        .I2(LIMIT[11]),
        .I3(LIMIT[13]),
        .O(LIMIT_12_sn_1));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[253]_INST_0_i_3 
       (.I0(s_axis_tdata[246]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[242]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[250]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[253]_INST_0_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[254]_INST_0_i_1 
       (.I0(\m_axis_tdata[254]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[254]_INST_0_i_3_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_39_n_0 ),
        .I4(\m_axis_tdata[255]_INST_0_i_40_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_76 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[254]_INST_0_i_2 
       (.I0(s_axis_tdata[247]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[243]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[251]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[254]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[254]_INST_0_i_3 
       (.I0(s_axis_tdata[241]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[249]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[254]_INST_0_i_4_n_0 ),
        .O(\m_axis_tdata[254]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[254]_INST_0_i_4 
       (.I0(s_axis_tdata[245]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[253]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[254]_INST_0_i_4_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[255]_INST_0_i_1 
       (.CI(\m_axis_tdata[255]_INST_0_i_5_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_183 ,\m_axis_tdata[255]_INST_0_i_1_n_1 ,\m_axis_tdata[255]_INST_0_i_1_n_2 ,\m_axis_tdata[255]_INST_0_i_1_n_3 ,\m_axis_tdata[255]_INST_0_i_1_n_4 ,\m_axis_tdata[255]_INST_0_i_1_n_5 ,\m_axis_tdata[255]_INST_0_i_1_n_6 ,\m_axis_tdata[255]_INST_0_i_1_n_7 }),
        .DI({\m_axis_tdata[255]_INST_0_i_6_n_0 ,\m_axis_tdata[255]_INST_0_i_7_n_0 ,\m_axis_tdata[255]_INST_0_i_8_n_0 ,\m_axis_tdata[255]_INST_0_i_9_n_0 ,\m_axis_tdata[255]_INST_0_i_10_n_0 ,\m_axis_tdata[255]_INST_0_i_11_n_0 ,\m_axis_tdata[255]_INST_0_i_12_n_0 ,\m_axis_tdata[255]_INST_0_i_13_n_0 }),
        .O(\NLW_m_axis_tdata[255]_INST_0_i_1_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[255]_INST_0_i_14_n_0 ,\m_axis_tdata[255]_INST_0_i_15_n_0 ,\m_axis_tdata[255]_INST_0_i_16_n_0 ,\m_axis_tdata[255]_INST_0_i_17_n_0 ,\m_axis_tdata[255]_INST_0_i_18_n_0 ,\m_axis_tdata[255]_INST_0_i_19_n_0 ,\m_axis_tdata[255]_INST_0_i_20_n_0 ,\m_axis_tdata[255]_INST_0_i_21_n_0 }));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[255]_INST_0_i_10 
       (.I0(\m_axis_tdata[255]_INST_0_i_67_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_68_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[255]_INST_0_i_100 
       (.I0(s_axis_tdata[253]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[245]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[255]),
        .O(\m_axis_tdata[255]_INST_0_i_100_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[255]_INST_0_i_101 
       (.I0(s_axis_tdata[241]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[249]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[255]),
        .O(\m_axis_tdata[255]_INST_0_i_101_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[255]_INST_0_i_102 
       (.I0(s_axis_tdata[254]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[246]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[255]),
        .O(\m_axis_tdata[255]_INST_0_i_102_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888888)) 
    \m_axis_tdata[255]_INST_0_i_103 
       (.I0(\m_axis_tdata[255]_INST_0_i_115_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[247]),
        .I4(SCALE_SHIFT[4]),
        .I5(s_axis_tdata[255]),
        .O(\m_axis_tdata[255]_INST_0_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[255]_INST_0_i_104 
       (.I0(s_axis_tdata[252]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[244]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[255]),
        .O(\m_axis_tdata[255]_INST_0_i_104_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[255]_INST_0_i_105 
       (.I0(s_axis_tdata[249]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[241]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[255]),
        .O(\m_axis_tdata[255]_INST_0_i_105_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[255]_INST_0_i_106 
       (.I0(s_axis_tdata[250]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[242]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[255]),
        .O(\m_axis_tdata[255]_INST_0_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[255]_INST_0_i_107 
       (.I0(s_axis_tdata[247]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[255]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[255]_INST_0_i_115_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[255]_INST_0_i_108 
       (.I0(s_axis_tdata[248]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[240]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[255]),
        .O(\m_axis_tdata[255]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[255]_INST_0_i_109 
       (.I0(s_axis_tdata[245]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[253]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[255]_INST_0_i_105_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_109_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[255]_INST_0_i_11 
       (.I0(\m_axis_tdata[255]_INST_0_i_69_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_70_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_67_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[255]_INST_0_i_110 
       (.I0(s_axis_tdata[246]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[254]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[255]_INST_0_i_106_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[255]_INST_0_i_111 
       (.I0(s_axis_tdata[244]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[252]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[255]_INST_0_i_108_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_111_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[255]_INST_0_i_112 
       (.I0(s_axis_tdata[247]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[255]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[255]_INST_0_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[255]_INST_0_i_113 
       (.I0(s_axis_tdata[243]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[251]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[255]),
        .O(\m_axis_tdata[255]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[255]_INST_0_i_114 
       (.I0(s_axis_tdata[245]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[253]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[255]),
        .O(\m_axis_tdata[255]_INST_0_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[255]_INST_0_i_115 
       (.I0(s_axis_tdata[251]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[243]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[255]),
        .O(\m_axis_tdata[255]_INST_0_i_115_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[255]_INST_0_i_12 
       (.I0(\m_axis_tdata[255]_INST_0_i_71_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_69_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[255]_INST_0_i_13 
       (.I0(\m_axis_tdata[255]_INST_0_i_41_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_71_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \m_axis_tdata[255]_INST_0_i_14 
       (.I0(\m_axis_tdata[255]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_59_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_60_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[255]_INST_0_i_15 
       (.I0(\m_axis_tdata[255]_INST_0_i_61_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_62_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_58_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[255]_INST_0_i_16 
       (.I0(\m_axis_tdata[255]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_61_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[255]_INST_0_i_17 
       (.I0(\m_axis_tdata[255]_INST_0_i_65_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_66_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[255]_INST_0_i_18 
       (.I0(\m_axis_tdata[255]_INST_0_i_67_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_68_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[255]_INST_0_i_19 
       (.I0(\m_axis_tdata[255]_INST_0_i_69_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_70_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_67_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \m_axis_tdata[255]_INST_0_i_2 
       (.I0(LIMIT[12]),
        .I1(LIMIT_9_sn_1),
        .I2(LIMIT[11]),
        .I3(LIMIT[13]),
        .O(\LIMIT[12]_3 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[255]_INST_0_i_20 
       (.I0(\m_axis_tdata[255]_INST_0_i_71_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_69_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[255]_INST_0_i_21 
       (.I0(\m_axis_tdata[255]_INST_0_i_41_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_71_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_21_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[255]_INST_0_i_22 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[255]_INST_0_i_22_n_0 ,\m_axis_tdata[255]_INST_0_i_22_n_1 ,\m_axis_tdata[255]_INST_0_i_22_n_2 ,\m_axis_tdata[255]_INST_0_i_22_n_3 ,\m_axis_tdata[255]_INST_0_i_22_n_4 ,\m_axis_tdata[255]_INST_0_i_22_n_5 ,\m_axis_tdata[255]_INST_0_i_22_n_6 ,\m_axis_tdata[255]_INST_0_i_22_n_7 }),
        .DI({\m_axis_tdata[255]_INST_0_i_74_n_0 ,\m_axis_tdata[255]_INST_0_i_75_n_0 ,\m_axis_tdata[255]_INST_0_i_76_n_0 ,\m_axis_tdata[255]_INST_0_i_77_n_0 ,\m_axis_tdata[255]_INST_0_i_78_n_0 ,\m_axis_tdata[255]_INST_0_i_79_n_0 ,\m_axis_tdata[255]_INST_0_i_80_n_0 ,\m_axis_tdata[255]_INST_0_i_81_n_0 }),
        .O(\NLW_m_axis_tdata[255]_INST_0_i_22_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[255]_INST_0_i_82_n_0 ,\m_axis_tdata[255]_INST_0_i_83_n_0 ,\m_axis_tdata[255]_INST_0_i_84_n_0 ,\m_axis_tdata[255]_INST_0_i_85_n_0 ,\m_axis_tdata[255]_INST_0_i_86_n_0 ,\m_axis_tdata[255]_INST_0_i_87_n_0 ,\m_axis_tdata[255]_INST_0_i_88_n_0 ,\m_axis_tdata[255]_INST_0_i_89_n_0 }));
  LUT5 #(
    .INIT(32'hFF004700)) 
    \m_axis_tdata[255]_INST_0_i_23 
       (.I0(\m_axis_tdata[255]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_59_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_60_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[255]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[255]_INST_0_i_24 
       (.I0(\m_axis_tdata[255]_INST_0_i_61_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_62_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_58_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[255]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[255]_INST_0_i_25 
       (.I0(\m_axis_tdata[255]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_61_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[255]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[255]_INST_0_i_26 
       (.I0(\m_axis_tdata[255]_INST_0_i_65_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_66_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[255]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[255]_INST_0_i_27 
       (.I0(\m_axis_tdata[255]_INST_0_i_67_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_68_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[255]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[255]_INST_0_i_28 
       (.I0(\m_axis_tdata[255]_INST_0_i_69_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_70_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_67_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[255]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[255]_INST_0_i_29 
       (.I0(\m_axis_tdata[255]_INST_0_i_71_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_69_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[255]_INST_0_i_29_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[255]_INST_0_i_3 
       (.CI(\m_axis_tdata[255]_INST_0_i_22_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_182 ,\m_axis_tdata[255]_INST_0_i_3_n_1 ,\m_axis_tdata[255]_INST_0_i_3_n_2 ,\m_axis_tdata[255]_INST_0_i_3_n_3 ,\m_axis_tdata[255]_INST_0_i_3_n_4 ,\m_axis_tdata[255]_INST_0_i_3_n_5 ,\m_axis_tdata[255]_INST_0_i_3_n_6 ,\m_axis_tdata[255]_INST_0_i_3_n_7 }),
        .DI({\m_axis_tdata[255]_INST_0_i_23_n_0 ,\m_axis_tdata[255]_INST_0_i_24_n_0 ,\m_axis_tdata[255]_INST_0_i_25_n_0 ,\m_axis_tdata[255]_INST_0_i_26_n_0 ,\m_axis_tdata[255]_INST_0_i_27_n_0 ,\m_axis_tdata[255]_INST_0_i_28_n_0 ,\m_axis_tdata[255]_INST_0_i_29_n_0 ,\m_axis_tdata[255]_INST_0_i_30_n_0 }),
        .O(\NLW_m_axis_tdata[255]_INST_0_i_3_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[255]_INST_0_i_31_n_0 ,\m_axis_tdata[255]_INST_0_i_32_n_0 ,\m_axis_tdata[255]_INST_0_i_33_n_0 ,\m_axis_tdata[255]_INST_0_i_34_n_0 ,\m_axis_tdata[255]_INST_0_i_35_n_0 ,\m_axis_tdata[255]_INST_0_i_36_n_0 ,\m_axis_tdata[255]_INST_0_i_37_n_0 ,\m_axis_tdata[255]_INST_0_i_38_n_0 }));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[255]_INST_0_i_30 
       (.I0(\m_axis_tdata[255]_INST_0_i_41_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_71_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[255]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h0047B800)) 
    \m_axis_tdata[255]_INST_0_i_31 
       (.I0(\m_axis_tdata[255]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_59_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_60_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[255]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[255]_INST_0_i_32 
       (.I0(\m_axis_tdata[255]_INST_0_i_61_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_62_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_58_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[255]_INST_0_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[255]_INST_0_i_33 
       (.I0(\m_axis_tdata[255]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_61_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[255]_INST_0_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[255]_INST_0_i_34 
       (.I0(\m_axis_tdata[255]_INST_0_i_65_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_66_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[255]_INST_0_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[255]_INST_0_i_35 
       (.I0(\m_axis_tdata[255]_INST_0_i_67_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_68_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[255]_INST_0_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[255]_INST_0_i_36 
       (.I0(\m_axis_tdata[255]_INST_0_i_69_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_70_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_67_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[255]_INST_0_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[255]_INST_0_i_37 
       (.I0(\m_axis_tdata[255]_INST_0_i_71_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_69_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[255]_INST_0_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[255]_INST_0_i_38 
       (.I0(\m_axis_tdata[255]_INST_0_i_41_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_71_n_0 ),
        .I4(\LIMIT[12]_3 ),
        .O(\m_axis_tdata[255]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[255]_INST_0_i_39 
       (.I0(s_axis_tdata[240]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[248]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[255]_INST_0_i_90_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[255]_INST_0_i_4 
       (.I0(\m_axis_tdata[255]_INST_0_i_39_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[255]_INST_0_i_40_n_0 ),
        .I3(SCALE_SHIFT[0]),
        .I4(\m_axis_tdata[255]_INST_0_i_41_n_0 ),
        .O(\SCALE_SHIFT[1]_77 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[255]_INST_0_i_40 
       (.I0(s_axis_tdata[242]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[250]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[255]_INST_0_i_91_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[255]_INST_0_i_41 
       (.I0(\m_axis_tdata[254]_INST_0_i_3_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[255]_INST_0_i_92_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_41_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[255]_INST_0_i_42 
       (.I0(\SCALE_SHIFT[1]_76 ),
        .I1(\SCALE_SHIFT[1]_77 ),
        .O(\m_axis_tdata[255]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[255]_INST_0_i_43 
       (.I0(\SCALE_SHIFT[1]_74 ),
        .I1(LIMIT[12]),
        .I2(LIMIT[13]),
        .I3(\SCALE_SHIFT[1]_75 ),
        .O(\m_axis_tdata[255]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[255]_INST_0_i_44 
       (.I0(\SCALE_SHIFT[0]_157 ),
        .I1(LIMIT[10]),
        .I2(LIMIT[11]),
        .I3(\SCALE_SHIFT[0]_158 ),
        .O(\m_axis_tdata[255]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[255]_INST_0_i_45 
       (.I0(\SCALE_SHIFT[0]_154 ),
        .I1(LIMIT[8]),
        .I2(LIMIT[9]),
        .I3(\SCALE_SHIFT[0]_155 ),
        .O(\m_axis_tdata[255]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[255]_INST_0_i_46 
       (.I0(\SCALE_SHIFT[1]_78 ),
        .I1(LIMIT[6]),
        .I2(LIMIT[7]),
        .I3(\SCALE_SHIFT[0]_156 ),
        .O(\m_axis_tdata[255]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[255]_INST_0_i_47 
       (.I0(\SCALE_SHIFT[0]_152 ),
        .I1(LIMIT[4]),
        .I2(LIMIT[5]),
        .I3(\SCALE_SHIFT[0]_153 ),
        .O(\m_axis_tdata[255]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[255]_INST_0_i_48 
       (.I0(\SCALE_SHIFT[0]_150 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[3]),
        .I3(\SCALE_SHIFT[0]_151 ),
        .O(\m_axis_tdata[255]_INST_0_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[255]_INST_0_i_49 
       (.I0(\SCALE_SHIFT[1]_73 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_149 ),
        .O(\m_axis_tdata[255]_INST_0_i_49_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[255]_INST_0_i_5 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[255]_INST_0_i_5_n_0 ,\m_axis_tdata[255]_INST_0_i_5_n_1 ,\m_axis_tdata[255]_INST_0_i_5_n_2 ,\m_axis_tdata[255]_INST_0_i_5_n_3 ,\m_axis_tdata[255]_INST_0_i_5_n_4 ,\m_axis_tdata[255]_INST_0_i_5_n_5 ,\m_axis_tdata[255]_INST_0_i_5_n_6 ,\m_axis_tdata[255]_INST_0_i_5_n_7 }),
        .DI({\m_axis_tdata[255]_INST_0_i_42_n_0 ,\m_axis_tdata[255]_INST_0_i_43_n_0 ,\m_axis_tdata[255]_INST_0_i_44_n_0 ,\m_axis_tdata[255]_INST_0_i_45_n_0 ,\m_axis_tdata[255]_INST_0_i_46_n_0 ,\m_axis_tdata[255]_INST_0_i_47_n_0 ,\m_axis_tdata[255]_INST_0_i_48_n_0 ,\m_axis_tdata[255]_INST_0_i_49_n_0 }),
        .O(\NLW_m_axis_tdata[255]_INST_0_i_5_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[255]_INST_0_i_50_n_0 ,\m_axis_tdata[255]_INST_0_i_51_n_0 ,\m_axis_tdata[255]_INST_0_i_52_n_0 ,\m_axis_tdata[255]_INST_0_i_53_n_0 ,\m_axis_tdata[255]_INST_0_i_54_n_0 ,\m_axis_tdata[255]_INST_0_i_55_n_0 ,\m_axis_tdata[255]_INST_0_i_56_n_0 ,\m_axis_tdata[255]_INST_0_i_57_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata[255]_INST_0_i_50 
       (.I0(\SCALE_SHIFT[1]_76 ),
        .I1(\SCALE_SHIFT[1]_77 ),
        .O(\m_axis_tdata[255]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[255]_INST_0_i_51 
       (.I0(\SCALE_SHIFT[1]_74 ),
        .I1(LIMIT[12]),
        .I2(\SCALE_SHIFT[1]_75 ),
        .I3(LIMIT[13]),
        .O(\m_axis_tdata[255]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[255]_INST_0_i_52 
       (.I0(\SCALE_SHIFT[0]_157 ),
        .I1(LIMIT[10]),
        .I2(\SCALE_SHIFT[0]_158 ),
        .I3(LIMIT[11]),
        .O(\m_axis_tdata[255]_INST_0_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[255]_INST_0_i_53 
       (.I0(\SCALE_SHIFT[0]_154 ),
        .I1(LIMIT[8]),
        .I2(\SCALE_SHIFT[0]_155 ),
        .I3(LIMIT[9]),
        .O(\m_axis_tdata[255]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[255]_INST_0_i_54 
       (.I0(\SCALE_SHIFT[1]_78 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[0]_156 ),
        .I3(LIMIT[7]),
        .O(\m_axis_tdata[255]_INST_0_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[255]_INST_0_i_55 
       (.I0(\SCALE_SHIFT[0]_152 ),
        .I1(LIMIT[4]),
        .I2(\SCALE_SHIFT[0]_153 ),
        .I3(LIMIT[5]),
        .O(\m_axis_tdata[255]_INST_0_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[255]_INST_0_i_56 
       (.I0(\SCALE_SHIFT[0]_150 ),
        .I1(LIMIT[2]),
        .I2(\SCALE_SHIFT[0]_151 ),
        .I3(LIMIT[3]),
        .O(\m_axis_tdata[255]_INST_0_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[255]_INST_0_i_57 
       (.I0(\SCALE_SHIFT[1]_73 ),
        .I1(LIMIT[0]),
        .I2(\SCALE_SHIFT[0]_149 ),
        .I3(LIMIT[1]),
        .O(\m_axis_tdata[255]_INST_0_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[255]_INST_0_i_58 
       (.I0(\m_axis_tdata[255]_INST_0_i_93_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[255]_INST_0_i_94_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \m_axis_tdata[255]_INST_0_i_59 
       (.I0(\m_axis_tdata[255]_INST_0_i_95_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[255]_INST_0_i_96_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[255]_INST_0_i_97_n_0 ),
        .I5(\m_axis_tdata[255]_INST_0_i_98_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_59_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[255]_INST_0_i_6 
       (.I0(\m_axis_tdata[255]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_59_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_60_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[255]_INST_0_i_60 
       (.I0(\m_axis_tdata[255]_INST_0_i_59_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_94_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[255]_INST_0_i_99_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_60_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[255]_INST_0_i_61 
       (.I0(\m_axis_tdata[255]_INST_0_i_100_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[255]_INST_0_i_101_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[255]_INST_0_i_93_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[255]_INST_0_i_62 
       (.I0(\m_axis_tdata[255]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[255]_INST_0_i_97_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_95_n_0 ),
        .I4(\m_axis_tdata[255]_INST_0_i_96_n_0 ),
        .I5(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[255]_INST_0_i_62_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[255]_INST_0_i_63 
       (.I0(\m_axis_tdata[255]_INST_0_i_100_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[255]_INST_0_i_101_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_103_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[255]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[255]_INST_0_i_64 
       (.I0(\m_axis_tdata[255]_INST_0_i_104_n_0 ),
        .I1(\m_axis_tdata[255]_INST_0_i_95_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[255]_INST_0_i_102_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[255]_INST_0_i_97_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_64_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[255]_INST_0_i_65 
       (.I0(\m_axis_tdata[255]_INST_0_i_105_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[255]_INST_0_i_100_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[255]_INST_0_i_103_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[255]_INST_0_i_66 
       (.I0(\m_axis_tdata[255]_INST_0_i_106_n_0 ),
        .I1(\m_axis_tdata[255]_INST_0_i_102_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[255]_INST_0_i_104_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[255]_INST_0_i_95_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_66_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[255]_INST_0_i_67 
       (.I0(\m_axis_tdata[255]_INST_0_i_105_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[255]_INST_0_i_100_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_107_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[255]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[255]_INST_0_i_68 
       (.I0(\m_axis_tdata[255]_INST_0_i_108_n_0 ),
        .I1(\m_axis_tdata[255]_INST_0_i_104_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[255]_INST_0_i_106_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[255]_INST_0_i_102_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_68_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair212" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[255]_INST_0_i_69 
       (.I0(\m_axis_tdata[255]_INST_0_i_109_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[255]_INST_0_i_107_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_69_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[255]_INST_0_i_7 
       (.I0(\m_axis_tdata[255]_INST_0_i_61_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_62_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_58_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[255]_INST_0_i_70 
       (.I0(\m_axis_tdata[255]_INST_0_i_108_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[255]_INST_0_i_104_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_110_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[255]_INST_0_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair213" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[255]_INST_0_i_71 
       (.I0(\m_axis_tdata[255]_INST_0_i_92_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[255]_INST_0_i_109_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_71_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[255]_INST_0_i_72 
       (.I0(\m_axis_tdata[255]_INST_0_i_111_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[255]_INST_0_i_110_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_72_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair211" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[255]_INST_0_i_73 
       (.I0(\m_axis_tdata[255]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[255]_INST_0_i_111_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_73_n_0 ));
  LUT3 #(
    .INIT(8'h13)) 
    \m_axis_tdata[255]_INST_0_i_74 
       (.I0(\SCALE_SHIFT[1]_76 ),
        .I1(\LIMIT[12]_3 ),
        .I2(\SCALE_SHIFT[1]_77 ),
        .O(\m_axis_tdata[255]_INST_0_i_74_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[255]_INST_0_i_75 
       (.I0(\SCALE_SHIFT[1]_74 ),
        .I1(LIMIT_11_sn_1),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_75 ),
        .O(\m_axis_tdata[255]_INST_0_i_75_n_0 ));
  LUT5 #(
    .INIT(32'h0009999F)) 
    \m_axis_tdata[255]_INST_0_i_76 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\SCALE_SHIFT[0]_157 ),
        .I3(\LIMIT[9]_0 ),
        .I4(\SCALE_SHIFT[0]_158 ),
        .O(\m_axis_tdata[255]_INST_0_i_76_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[255]_INST_0_i_77 
       (.I0(\SCALE_SHIFT[0]_154 ),
        .I1(LIMIT_7_sn_1),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_155 ),
        .O(\m_axis_tdata[255]_INST_0_i_77_n_0 ));
  LUT5 #(
    .INIT(32'h000909FF)) 
    \m_axis_tdata[255]_INST_0_i_78 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_78 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_156 ),
        .O(\m_axis_tdata[255]_INST_0_i_78_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[255]_INST_0_i_79 
       (.I0(\SCALE_SHIFT[0]_152 ),
        .I1(LIMIT_3_sn_1),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_153 ),
        .O(\m_axis_tdata[255]_INST_0_i_79_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[255]_INST_0_i_8 
       (.I0(\m_axis_tdata[255]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_61_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000011141117FFFC)) 
    \m_axis_tdata[255]_INST_0_i_80 
       (.I0(\SCALE_SHIFT[0]_150 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_151 ),
        .O(\m_axis_tdata[255]_INST_0_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h047C)) 
    \m_axis_tdata[255]_INST_0_i_81 
       (.I0(\SCALE_SHIFT[1]_73 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_149 ),
        .O(\m_axis_tdata[255]_INST_0_i_81_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \m_axis_tdata[255]_INST_0_i_82 
       (.I0(\SCALE_SHIFT[1]_76 ),
        .I1(\LIMIT[12]_3 ),
        .I2(\SCALE_SHIFT[1]_77 ),
        .O(\m_axis_tdata[255]_INST_0_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[255]_INST_0_i_83 
       (.I0(LIMIT_11_sn_1),
        .I1(\SCALE_SHIFT[1]_74 ),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_75 ),
        .O(\m_axis_tdata[255]_INST_0_i_83_n_0 ));
  LUT5 #(
    .INIT(32'h09900660)) 
    \m_axis_tdata[255]_INST_0_i_84 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\LIMIT[9]_0 ),
        .I3(\SCALE_SHIFT[0]_157 ),
        .I4(\SCALE_SHIFT[0]_158 ),
        .O(\m_axis_tdata[255]_INST_0_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[255]_INST_0_i_85 
       (.I0(LIMIT_7_sn_1),
        .I1(\SCALE_SHIFT[0]_154 ),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_155 ),
        .O(\m_axis_tdata[255]_INST_0_i_85_n_0 ));
  LUT5 #(
    .INIT(32'h00969600)) 
    \m_axis_tdata[255]_INST_0_i_86 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_78 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_156 ),
        .O(\m_axis_tdata[255]_INST_0_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[255]_INST_0_i_87 
       (.I0(LIMIT_3_sn_1),
        .I1(\SCALE_SHIFT[0]_152 ),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_153 ),
        .O(\m_axis_tdata[255]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h0001666866680001)) 
    \m_axis_tdata[255]_INST_0_i_88 
       (.I0(\SCALE_SHIFT[0]_150 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_151 ),
        .O(\m_axis_tdata[255]_INST_0_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h1881)) 
    \m_axis_tdata[255]_INST_0_i_89 
       (.I0(\SCALE_SHIFT[1]_73 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_149 ),
        .O(\m_axis_tdata[255]_INST_0_i_89_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[255]_INST_0_i_9 
       (.I0(\m_axis_tdata[255]_INST_0_i_65_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[255]_INST_0_i_66_n_0 ),
        .I3(\m_axis_tdata[255]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[255]_INST_0_i_90 
       (.I0(s_axis_tdata[244]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[252]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[255]_INST_0_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[255]_INST_0_i_91 
       (.I0(s_axis_tdata[246]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[254]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[255]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[255]_INST_0_i_92 
       (.I0(s_axis_tdata[243]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[251]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[255]_INST_0_i_112_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \m_axis_tdata[255]_INST_0_i_93 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[247]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[255]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[255]_INST_0_i_113_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_93_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair206" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[255]_INST_0_i_94 
       (.I0(\m_axis_tdata[255]_INST_0_i_101_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[255]_INST_0_i_114_n_0 ),
        .O(\m_axis_tdata[255]_INST_0_i_94_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[255]_INST_0_i_95 
       (.I0(s_axis_tdata[240]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[248]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[255]),
        .O(\m_axis_tdata[255]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[255]_INST_0_i_96 
       (.I0(s_axis_tdata[244]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[252]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[255]),
        .O(\m_axis_tdata[255]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[255]_INST_0_i_97 
       (.I0(s_axis_tdata[242]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[250]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[255]),
        .O(\m_axis_tdata[255]_INST_0_i_97_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[255]_INST_0_i_98 
       (.I0(s_axis_tdata[246]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[254]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[255]),
        .O(\m_axis_tdata[255]_INST_0_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \m_axis_tdata[255]_INST_0_i_99 
       (.I0(\m_axis_tdata[255]_INST_0_i_113_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[247]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[3]),
        .I5(s_axis_tdata[255]),
        .O(\m_axis_tdata[255]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[25]_INST_0_i_1 
       (.I0(\m_axis_tdata[25]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[27]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[26]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[28]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_15 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[25]_INST_0_i_2 
       (.I0(s_axis_tdata[18]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[22]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[25]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[26]_INST_0_i_1 
       (.I0(\m_axis_tdata[26]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[28]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[27]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[29]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_17 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[26]_INST_0_i_2 
       (.I0(s_axis_tdata[19]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[23]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[26]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[27]_INST_0_i_1 
       (.I0(\m_axis_tdata[27]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[29]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[28]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[30]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_18 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[27]_INST_0_i_2 
       (.I0(s_axis_tdata[20]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[16]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[24]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[27]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[28]_INST_0_i_1 
       (.I0(\m_axis_tdata[28]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[30]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[29]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[31]_INST_0_i_5_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_4 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[28]_INST_0_i_2 
       (.I0(s_axis_tdata[21]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[17]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[25]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[28]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[29]_INST_0_i_1 
       (.I0(\m_axis_tdata[29]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[31]_INST_0_i_5_n_0 ),
        .I3(SCALE_SHIFT[0]),
        .I4(\SCALE_SHIFT[1]_84 ),
        .O(\SCALE_SHIFT[1]_5 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[29]_INST_0_i_2 
       (.I0(s_axis_tdata[22]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[18]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[26]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[29]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[2]_INST_0_i_1 
       (.I0(\m_axis_tdata[2]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[3]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[2]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[1]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[2]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[30]_INST_0_i_1 
       (.I0(\m_axis_tdata[30]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[31]_INST_0_i_7_n_0 ),
        .O(\SCALE_SHIFT[1]_84 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[30]_INST_0_i_2 
       (.I0(s_axis_tdata[23]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[19]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[27]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[30]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair123" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[31]_INST_0_i_1 
       (.I0(\m_axis_tdata[31]_INST_0_i_5_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[31]_INST_0_i_6_n_0 ),
        .O(\SCALE_SHIFT[1]_82 ));
  LUT5 #(
    .INIT(32'hFF004700)) 
    \m_axis_tdata[31]_INST_0_i_10 
       (.I0(\m_axis_tdata[31]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[31]_INST_0_i_100 
       (.I0(s_axis_tdata[22]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[30]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[31]),
        .O(\m_axis_tdata[31]_INST_0_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \m_axis_tdata[31]_INST_0_i_101 
       (.I0(\m_axis_tdata[31]_INST_0_i_114_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[23]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[3]),
        .I5(s_axis_tdata[31]),
        .O(\m_axis_tdata[31]_INST_0_i_101_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[31]_INST_0_i_102 
       (.I0(s_axis_tdata[29]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[21]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[31]),
        .O(\m_axis_tdata[31]_INST_0_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[31]_INST_0_i_103 
       (.I0(s_axis_tdata[17]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[25]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[31]),
        .O(\m_axis_tdata[31]_INST_0_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[31]_INST_0_i_104 
       (.I0(s_axis_tdata[30]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[22]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[31]),
        .O(\m_axis_tdata[31]_INST_0_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888888)) 
    \m_axis_tdata[31]_INST_0_i_105 
       (.I0(\m_axis_tdata[31]_INST_0_i_116_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[23]),
        .I4(SCALE_SHIFT[4]),
        .I5(s_axis_tdata[31]),
        .O(\m_axis_tdata[31]_INST_0_i_105_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[31]_INST_0_i_106 
       (.I0(s_axis_tdata[28]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[20]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[31]),
        .O(\m_axis_tdata[31]_INST_0_i_106_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[31]_INST_0_i_107 
       (.I0(s_axis_tdata[25]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[17]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[31]),
        .O(\m_axis_tdata[31]_INST_0_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[31]_INST_0_i_108 
       (.I0(s_axis_tdata[26]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[18]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[31]),
        .O(\m_axis_tdata[31]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[31]_INST_0_i_109 
       (.I0(s_axis_tdata[23]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[31]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[31]_INST_0_i_116_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_109_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[31]_INST_0_i_11 
       (.I0(\m_axis_tdata[31]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[31]_INST_0_i_110 
       (.I0(s_axis_tdata[24]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[16]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[31]),
        .O(\m_axis_tdata[31]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[31]_INST_0_i_111 
       (.I0(s_axis_tdata[21]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[29]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[31]_INST_0_i_107_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[31]_INST_0_i_112 
       (.I0(s_axis_tdata[22]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[30]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[31]_INST_0_i_108_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[31]_INST_0_i_113 
       (.I0(s_axis_tdata[20]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[28]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[31]_INST_0_i_110_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[31]_INST_0_i_114 
       (.I0(s_axis_tdata[19]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[27]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[31]),
        .O(\m_axis_tdata[31]_INST_0_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[31]_INST_0_i_115 
       (.I0(s_axis_tdata[21]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[29]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[31]),
        .O(\m_axis_tdata[31]_INST_0_i_115_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[31]_INST_0_i_116 
       (.I0(s_axis_tdata[27]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[19]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[31]),
        .O(\m_axis_tdata[31]_INST_0_i_116_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[31]_INST_0_i_12 
       (.I0(\m_axis_tdata[31]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[31]_INST_0_i_13 
       (.I0(\m_axis_tdata[31]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[31]_INST_0_i_14 
       (.I0(\m_axis_tdata[31]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[31]_INST_0_i_15 
       (.I0(\m_axis_tdata[31]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_72_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[31]_INST_0_i_16 
       (.I0(\m_axis_tdata[31]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_74_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[31]_INST_0_i_17 
       (.I0(\SCALE_SHIFT[1]_83 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_76_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h0047B800)) 
    \m_axis_tdata[31]_INST_0_i_18 
       (.I0(\m_axis_tdata[31]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[31]_INST_0_i_19 
       (.I0(\m_axis_tdata[31]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[31]_INST_0_i_2 
       (.I0(\m_axis_tdata[31]_INST_0_i_7_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[31]_INST_0_i_8_n_0 ),
        .O(\SCALE_SHIFT[1]_83 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[31]_INST_0_i_20 
       (.I0(\m_axis_tdata[31]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[31]_INST_0_i_21 
       (.I0(\m_axis_tdata[31]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[31]_INST_0_i_22 
       (.I0(\m_axis_tdata[31]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[31]_INST_0_i_23 
       (.I0(\m_axis_tdata[31]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_72_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[31]_INST_0_i_24 
       (.I0(\m_axis_tdata[31]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_74_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[31]_INST_0_i_25 
       (.I0(\SCALE_SHIFT[1]_83 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_76_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_25_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[31]_INST_0_i_26 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[31]_INST_0_i_26_n_0 ,\m_axis_tdata[31]_INST_0_i_26_n_1 ,\m_axis_tdata[31]_INST_0_i_26_n_2 ,\m_axis_tdata[31]_INST_0_i_26_n_3 ,\m_axis_tdata[31]_INST_0_i_26_n_4 ,\m_axis_tdata[31]_INST_0_i_26_n_5 ,\m_axis_tdata[31]_INST_0_i_26_n_6 ,\m_axis_tdata[31]_INST_0_i_26_n_7 }),
        .DI({\m_axis_tdata[31]_INST_0_i_79_n_0 ,\m_axis_tdata[31]_INST_0_i_80_n_0 ,\m_axis_tdata[31]_INST_0_i_81_n_0 ,\m_axis_tdata[31]_INST_0_i_82_n_0 ,\m_axis_tdata[31]_INST_0_i_83_n_0 ,\m_axis_tdata[31]_INST_0_i_84_n_0 ,\m_axis_tdata[31]_INST_0_i_85_n_0 ,\m_axis_tdata[31]_INST_0_i_86_n_0 }),
        .O(\NLW_m_axis_tdata[31]_INST_0_i_26_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[31]_INST_0_i_87_n_0 ,\m_axis_tdata[31]_INST_0_i_88_n_0 ,\m_axis_tdata[31]_INST_0_i_89_n_0 ,\m_axis_tdata[31]_INST_0_i_90_n_0 ,\m_axis_tdata[31]_INST_0_i_91_n_0 ,\m_axis_tdata[31]_INST_0_i_92_n_0 ,\m_axis_tdata[31]_INST_0_i_93_n_0 ,\m_axis_tdata[31]_INST_0_i_94_n_0 }));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[31]_INST_0_i_27 
       (.I0(\m_axis_tdata[31]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[31]_INST_0_i_28 
       (.I0(\m_axis_tdata[31]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[31]_INST_0_i_29 
       (.I0(\m_axis_tdata[31]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_29_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[31]_INST_0_i_3 
       (.CI(\m_axis_tdata[31]_INST_0_i_9_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_164 ,\m_axis_tdata[31]_INST_0_i_3_n_1 ,\m_axis_tdata[31]_INST_0_i_3_n_2 ,\m_axis_tdata[31]_INST_0_i_3_n_3 ,\m_axis_tdata[31]_INST_0_i_3_n_4 ,\m_axis_tdata[31]_INST_0_i_3_n_5 ,\m_axis_tdata[31]_INST_0_i_3_n_6 ,\m_axis_tdata[31]_INST_0_i_3_n_7 }),
        .DI({\m_axis_tdata[31]_INST_0_i_10_n_0 ,\m_axis_tdata[31]_INST_0_i_11_n_0 ,\m_axis_tdata[31]_INST_0_i_12_n_0 ,\m_axis_tdata[31]_INST_0_i_13_n_0 ,\m_axis_tdata[31]_INST_0_i_14_n_0 ,\m_axis_tdata[31]_INST_0_i_15_n_0 ,\m_axis_tdata[31]_INST_0_i_16_n_0 ,\m_axis_tdata[31]_INST_0_i_17_n_0 }),
        .O(\NLW_m_axis_tdata[31]_INST_0_i_3_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[31]_INST_0_i_18_n_0 ,\m_axis_tdata[31]_INST_0_i_19_n_0 ,\m_axis_tdata[31]_INST_0_i_20_n_0 ,\m_axis_tdata[31]_INST_0_i_21_n_0 ,\m_axis_tdata[31]_INST_0_i_22_n_0 ,\m_axis_tdata[31]_INST_0_i_23_n_0 ,\m_axis_tdata[31]_INST_0_i_24_n_0 ,\m_axis_tdata[31]_INST_0_i_25_n_0 }));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[31]_INST_0_i_30 
       (.I0(\m_axis_tdata[31]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[31]_INST_0_i_31 
       (.I0(\m_axis_tdata[31]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[31]_INST_0_i_32 
       (.I0(\m_axis_tdata[31]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_72_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[31]_INST_0_i_33 
       (.I0(\m_axis_tdata[31]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_74_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[31]_INST_0_i_34 
       (.I0(\SCALE_SHIFT[1]_83 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_76_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \m_axis_tdata[31]_INST_0_i_35 
       (.I0(\m_axis_tdata[31]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[31]_INST_0_i_36 
       (.I0(\m_axis_tdata[31]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[31]_INST_0_i_37 
       (.I0(\m_axis_tdata[31]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[31]_INST_0_i_38 
       (.I0(\m_axis_tdata[31]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[31]_INST_0_i_39 
       (.I0(\m_axis_tdata[31]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_39_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[31]_INST_0_i_4 
       (.CI(\m_axis_tdata[31]_INST_0_i_26_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_165 ,\m_axis_tdata[31]_INST_0_i_4_n_1 ,\m_axis_tdata[31]_INST_0_i_4_n_2 ,\m_axis_tdata[31]_INST_0_i_4_n_3 ,\m_axis_tdata[31]_INST_0_i_4_n_4 ,\m_axis_tdata[31]_INST_0_i_4_n_5 ,\m_axis_tdata[31]_INST_0_i_4_n_6 ,\m_axis_tdata[31]_INST_0_i_4_n_7 }),
        .DI({\m_axis_tdata[31]_INST_0_i_27_n_0 ,\m_axis_tdata[31]_INST_0_i_28_n_0 ,\m_axis_tdata[31]_INST_0_i_29_n_0 ,\m_axis_tdata[31]_INST_0_i_30_n_0 ,\m_axis_tdata[31]_INST_0_i_31_n_0 ,\m_axis_tdata[31]_INST_0_i_32_n_0 ,\m_axis_tdata[31]_INST_0_i_33_n_0 ,\m_axis_tdata[31]_INST_0_i_34_n_0 }),
        .O(\NLW_m_axis_tdata[31]_INST_0_i_4_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[31]_INST_0_i_35_n_0 ,\m_axis_tdata[31]_INST_0_i_36_n_0 ,\m_axis_tdata[31]_INST_0_i_37_n_0 ,\m_axis_tdata[31]_INST_0_i_38_n_0 ,\m_axis_tdata[31]_INST_0_i_39_n_0 ,\m_axis_tdata[31]_INST_0_i_40_n_0 ,\m_axis_tdata[31]_INST_0_i_41_n_0 ,\m_axis_tdata[31]_INST_0_i_42_n_0 }));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[31]_INST_0_i_40 
       (.I0(\m_axis_tdata[31]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_72_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[31]_INST_0_i_41 
       (.I0(\m_axis_tdata[31]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_74_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[31]_INST_0_i_42 
       (.I0(\SCALE_SHIFT[1]_83 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_76_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[31]_INST_0_i_43 
       (.I0(s_axis_tdata[20]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[28]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[31]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[31]_INST_0_i_44 
       (.I0(s_axis_tdata[22]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[30]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[31]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[31]_INST_0_i_45 
       (.I0(s_axis_tdata[21]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[29]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[31]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[31]_INST_0_i_46 
       (.I0(s_axis_tdata[23]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[31]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[31]_INST_0_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[31]_INST_0_i_47 
       (.I0(\SCALE_SHIFT[1]_84 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_82 ),
        .I3(\SCALE_SHIFT[1]_83 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[31]_INST_0_i_48 
       (.I0(\SCALE_SHIFT[1]_4 ),
        .I1(LIMIT_11_sn_1),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_5 ),
        .O(\m_axis_tdata[31]_INST_0_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h0009999F)) 
    \m_axis_tdata[31]_INST_0_i_49 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\SCALE_SHIFT[0]_17 ),
        .I3(\LIMIT[9]_0 ),
        .I4(\SCALE_SHIFT[0]_18 ),
        .O(\m_axis_tdata[31]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[31]_INST_0_i_5 
       (.I0(s_axis_tdata[16]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[24]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[31]_INST_0_i_43_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[31]_INST_0_i_50 
       (.I0(\SCALE_SHIFT[0]_14 ),
        .I1(LIMIT_7_sn_1),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_15 ),
        .O(\m_axis_tdata[31]_INST_0_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h000909FF)) 
    \m_axis_tdata[31]_INST_0_i_51 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_6 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_16 ),
        .O(\m_axis_tdata[31]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[31]_INST_0_i_52 
       (.I0(\SCALE_SHIFT[0]_12 ),
        .I1(LIMIT_3_sn_1),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_13 ),
        .O(\m_axis_tdata[31]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h000011141117FFFC)) 
    \m_axis_tdata[31]_INST_0_i_53 
       (.I0(\SCALE_SHIFT[0]_10 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_11 ),
        .O(\m_axis_tdata[31]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h047C)) 
    \m_axis_tdata[31]_INST_0_i_54 
       (.I0(\SCALE_SHIFT[1]_3 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_9 ),
        .O(\m_axis_tdata[31]_INST_0_i_54_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[31]_INST_0_i_55 
       (.I0(\SCALE_SHIFT[1]_84 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_82 ),
        .I3(\SCALE_SHIFT[1]_83 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[31]_INST_0_i_56 
       (.I0(LIMIT_11_sn_1),
        .I1(\SCALE_SHIFT[1]_4 ),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_5 ),
        .O(\m_axis_tdata[31]_INST_0_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h09900660)) 
    \m_axis_tdata[31]_INST_0_i_57 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\LIMIT[9]_0 ),
        .I3(\SCALE_SHIFT[0]_17 ),
        .I4(\SCALE_SHIFT[0]_18 ),
        .O(\m_axis_tdata[31]_INST_0_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[31]_INST_0_i_58 
       (.I0(LIMIT_7_sn_1),
        .I1(\SCALE_SHIFT[0]_14 ),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_15 ),
        .O(\m_axis_tdata[31]_INST_0_i_58_n_0 ));
  LUT5 #(
    .INIT(32'h00969600)) 
    \m_axis_tdata[31]_INST_0_i_59 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_6 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_16 ),
        .O(\m_axis_tdata[31]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[31]_INST_0_i_6 
       (.I0(s_axis_tdata[18]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[26]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[31]_INST_0_i_44_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[31]_INST_0_i_60 
       (.I0(LIMIT_3_sn_1),
        .I1(\SCALE_SHIFT[0]_12 ),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_13 ),
        .O(\m_axis_tdata[31]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h0001666866680001)) 
    \m_axis_tdata[31]_INST_0_i_61 
       (.I0(\SCALE_SHIFT[0]_10 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_11 ),
        .O(\m_axis_tdata[31]_INST_0_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h1881)) 
    \m_axis_tdata[31]_INST_0_i_62 
       (.I0(\SCALE_SHIFT[1]_3 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_9 ),
        .O(\m_axis_tdata[31]_INST_0_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[31]_INST_0_i_63 
       (.I0(\m_axis_tdata[31]_INST_0_i_95_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[31]_INST_0_i_96_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \m_axis_tdata[31]_INST_0_i_64 
       (.I0(\m_axis_tdata[31]_INST_0_i_97_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[31]_INST_0_i_98_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[31]_INST_0_i_99_n_0 ),
        .I5(\m_axis_tdata[31]_INST_0_i_100_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_64_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[31]_INST_0_i_65 
       (.I0(\m_axis_tdata[31]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[31]_INST_0_i_96_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[31]_INST_0_i_101_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_65_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[31]_INST_0_i_66 
       (.I0(\m_axis_tdata[31]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[31]_INST_0_i_103_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[31]_INST_0_i_95_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[31]_INST_0_i_67 
       (.I0(\m_axis_tdata[31]_INST_0_i_104_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[31]_INST_0_i_99_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_97_n_0 ),
        .I4(\m_axis_tdata[31]_INST_0_i_98_n_0 ),
        .I5(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[31]_INST_0_i_67_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[31]_INST_0_i_68 
       (.I0(\m_axis_tdata[31]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[31]_INST_0_i_103_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_105_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[31]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[31]_INST_0_i_69 
       (.I0(\m_axis_tdata[31]_INST_0_i_106_n_0 ),
        .I1(\m_axis_tdata[31]_INST_0_i_97_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[31]_INST_0_i_104_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[31]_INST_0_i_99_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[31]_INST_0_i_7 
       (.I0(s_axis_tdata[17]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[25]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[31]_INST_0_i_45_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[31]_INST_0_i_70 
       (.I0(\m_axis_tdata[31]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[31]_INST_0_i_102_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[31]_INST_0_i_105_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[31]_INST_0_i_71 
       (.I0(\m_axis_tdata[31]_INST_0_i_108_n_0 ),
        .I1(\m_axis_tdata[31]_INST_0_i_104_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[31]_INST_0_i_106_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[31]_INST_0_i_97_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_71_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[31]_INST_0_i_72 
       (.I0(\m_axis_tdata[31]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[31]_INST_0_i_102_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_109_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[31]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[31]_INST_0_i_73 
       (.I0(\m_axis_tdata[31]_INST_0_i_110_n_0 ),
        .I1(\m_axis_tdata[31]_INST_0_i_106_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[31]_INST_0_i_108_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[31]_INST_0_i_104_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_73_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair121" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[31]_INST_0_i_74 
       (.I0(\m_axis_tdata[31]_INST_0_i_111_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[31]_INST_0_i_109_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_74_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[31]_INST_0_i_75 
       (.I0(\m_axis_tdata[31]_INST_0_i_110_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[31]_INST_0_i_106_n_0 ),
        .I3(\m_axis_tdata[31]_INST_0_i_112_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[31]_INST_0_i_75_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair122" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[31]_INST_0_i_76 
       (.I0(\m_axis_tdata[31]_INST_0_i_8_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[31]_INST_0_i_111_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[31]_INST_0_i_77 
       (.I0(\m_axis_tdata[31]_INST_0_i_113_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[31]_INST_0_i_112_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_77_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair120" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[31]_INST_0_i_78 
       (.I0(\m_axis_tdata[31]_INST_0_i_6_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[31]_INST_0_i_113_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_78_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[31]_INST_0_i_79 
       (.I0(\SCALE_SHIFT[1]_84 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_82 ),
        .I3(\SCALE_SHIFT[1]_83 ),
        .O(\m_axis_tdata[31]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[31]_INST_0_i_8 
       (.I0(s_axis_tdata[19]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[27]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[31]_INST_0_i_46_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[31]_INST_0_i_80 
       (.I0(\SCALE_SHIFT[1]_4 ),
        .I1(LIMIT[12]),
        .I2(LIMIT[13]),
        .I3(\SCALE_SHIFT[1]_5 ),
        .O(\m_axis_tdata[31]_INST_0_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[31]_INST_0_i_81 
       (.I0(\SCALE_SHIFT[0]_17 ),
        .I1(LIMIT[10]),
        .I2(LIMIT[11]),
        .I3(\SCALE_SHIFT[0]_18 ),
        .O(\m_axis_tdata[31]_INST_0_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[31]_INST_0_i_82 
       (.I0(\SCALE_SHIFT[0]_14 ),
        .I1(LIMIT[8]),
        .I2(LIMIT[9]),
        .I3(\SCALE_SHIFT[0]_15 ),
        .O(\m_axis_tdata[31]_INST_0_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[31]_INST_0_i_83 
       (.I0(\SCALE_SHIFT[1]_6 ),
        .I1(LIMIT[6]),
        .I2(LIMIT[7]),
        .I3(\SCALE_SHIFT[0]_16 ),
        .O(\m_axis_tdata[31]_INST_0_i_83_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[31]_INST_0_i_84 
       (.I0(\SCALE_SHIFT[0]_12 ),
        .I1(LIMIT[4]),
        .I2(LIMIT[5]),
        .I3(\SCALE_SHIFT[0]_13 ),
        .O(\m_axis_tdata[31]_INST_0_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[31]_INST_0_i_85 
       (.I0(\SCALE_SHIFT[0]_10 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[3]),
        .I3(\SCALE_SHIFT[0]_11 ),
        .O(\m_axis_tdata[31]_INST_0_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[31]_INST_0_i_86 
       (.I0(\SCALE_SHIFT[1]_3 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_9 ),
        .O(\m_axis_tdata[31]_INST_0_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[31]_INST_0_i_87 
       (.I0(\SCALE_SHIFT[1]_84 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_82 ),
        .I3(\SCALE_SHIFT[1]_83 ),
        .O(\m_axis_tdata[31]_INST_0_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[31]_INST_0_i_88 
       (.I0(\SCALE_SHIFT[1]_4 ),
        .I1(LIMIT[12]),
        .I2(\SCALE_SHIFT[1]_5 ),
        .I3(LIMIT[13]),
        .O(\m_axis_tdata[31]_INST_0_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[31]_INST_0_i_89 
       (.I0(\SCALE_SHIFT[0]_17 ),
        .I1(LIMIT[10]),
        .I2(\SCALE_SHIFT[0]_18 ),
        .I3(LIMIT[11]),
        .O(\m_axis_tdata[31]_INST_0_i_89_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[31]_INST_0_i_9 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[31]_INST_0_i_9_n_0 ,\m_axis_tdata[31]_INST_0_i_9_n_1 ,\m_axis_tdata[31]_INST_0_i_9_n_2 ,\m_axis_tdata[31]_INST_0_i_9_n_3 ,\m_axis_tdata[31]_INST_0_i_9_n_4 ,\m_axis_tdata[31]_INST_0_i_9_n_5 ,\m_axis_tdata[31]_INST_0_i_9_n_6 ,\m_axis_tdata[31]_INST_0_i_9_n_7 }),
        .DI({\m_axis_tdata[31]_INST_0_i_47_n_0 ,\m_axis_tdata[31]_INST_0_i_48_n_0 ,\m_axis_tdata[31]_INST_0_i_49_n_0 ,\m_axis_tdata[31]_INST_0_i_50_n_0 ,\m_axis_tdata[31]_INST_0_i_51_n_0 ,\m_axis_tdata[31]_INST_0_i_52_n_0 ,\m_axis_tdata[31]_INST_0_i_53_n_0 ,\m_axis_tdata[31]_INST_0_i_54_n_0 }),
        .O(\NLW_m_axis_tdata[31]_INST_0_i_9_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[31]_INST_0_i_55_n_0 ,\m_axis_tdata[31]_INST_0_i_56_n_0 ,\m_axis_tdata[31]_INST_0_i_57_n_0 ,\m_axis_tdata[31]_INST_0_i_58_n_0 ,\m_axis_tdata[31]_INST_0_i_59_n_0 ,\m_axis_tdata[31]_INST_0_i_60_n_0 ,\m_axis_tdata[31]_INST_0_i_61_n_0 ,\m_axis_tdata[31]_INST_0_i_62_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[31]_INST_0_i_90 
       (.I0(\SCALE_SHIFT[0]_14 ),
        .I1(LIMIT[8]),
        .I2(\SCALE_SHIFT[0]_15 ),
        .I3(LIMIT[9]),
        .O(\m_axis_tdata[31]_INST_0_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[31]_INST_0_i_91 
       (.I0(\SCALE_SHIFT[1]_6 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[0]_16 ),
        .I3(LIMIT[7]),
        .O(\m_axis_tdata[31]_INST_0_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[31]_INST_0_i_92 
       (.I0(\SCALE_SHIFT[0]_12 ),
        .I1(LIMIT[4]),
        .I2(\SCALE_SHIFT[0]_13 ),
        .I3(LIMIT[5]),
        .O(\m_axis_tdata[31]_INST_0_i_92_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[31]_INST_0_i_93 
       (.I0(\SCALE_SHIFT[0]_10 ),
        .I1(LIMIT[2]),
        .I2(\SCALE_SHIFT[0]_11 ),
        .I3(LIMIT[3]),
        .O(\m_axis_tdata[31]_INST_0_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[31]_INST_0_i_94 
       (.I0(\SCALE_SHIFT[1]_3 ),
        .I1(LIMIT[0]),
        .I2(\SCALE_SHIFT[0]_9 ),
        .I3(LIMIT[1]),
        .O(\m_axis_tdata[31]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \m_axis_tdata[31]_INST_0_i_95 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[23]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[31]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[31]_INST_0_i_114_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair114" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[31]_INST_0_i_96 
       (.I0(\m_axis_tdata[31]_INST_0_i_103_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[31]_INST_0_i_115_n_0 ),
        .O(\m_axis_tdata[31]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[31]_INST_0_i_97 
       (.I0(s_axis_tdata[16]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[24]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[31]),
        .O(\m_axis_tdata[31]_INST_0_i_97_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[31]_INST_0_i_98 
       (.I0(s_axis_tdata[20]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[28]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[31]),
        .O(\m_axis_tdata[31]_INST_0_i_98_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[31]_INST_0_i_99 
       (.I0(s_axis_tdata[18]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[26]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[31]),
        .O(\m_axis_tdata[31]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[32]_INST_0_i_1 
       (.I0(SCALE_SHIFT[1]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[32]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_7 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[33]_INST_0_i_1 
       (.I0(\m_axis_tdata[33]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[34]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_19 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[33]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[32]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[33]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[34]_INST_0_i_1 
       (.I0(\m_axis_tdata[34]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[35]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_20 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[34]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[33]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[34]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair131" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[35]_INST_0_i_1 
       (.I0(\m_axis_tdata[35]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[36]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_21 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[35]_INST_0_i_2 
       (.I0(s_axis_tdata[32]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[34]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[35]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[36]_INST_0_i_1 
       (.I0(\m_axis_tdata[36]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[37]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_22 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[36]_INST_0_i_2 
       (.I0(s_axis_tdata[33]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[35]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[36]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair130" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[37]_INST_0_i_1 
       (.I0(\m_axis_tdata[37]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[38]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_23 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[37]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[34]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[39]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[37]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[38]_INST_0_i_1 
       (.I0(\m_axis_tdata[39]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[41]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[38]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_12 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[38]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[35]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[40]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[38]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[39]_INST_0_i_1 
       (.I0(\m_axis_tdata[39]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[41]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[40]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[42]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_26 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[39]_INST_0_i_2 
       (.I0(s_axis_tdata[32]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[36]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[39]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair118" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[3]_INST_0_i_1 
       (.I0(\m_axis_tdata[3]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[4]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_1 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[3]_INST_0_i_2 
       (.I0(s_axis_tdata[0]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[2]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[3]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[40]_INST_0_i_1 
       (.I0(\m_axis_tdata[40]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[42]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[41]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[43]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_24 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[40]_INST_0_i_2 
       (.I0(s_axis_tdata[33]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[37]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[40]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[41]_INST_0_i_1 
       (.I0(\m_axis_tdata[41]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[43]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[42]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[44]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_25 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[41]_INST_0_i_2 
       (.I0(s_axis_tdata[34]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[38]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[41]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[42]_INST_0_i_1 
       (.I0(\m_axis_tdata[42]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[44]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[43]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[45]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_27 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[42]_INST_0_i_2 
       (.I0(s_axis_tdata[35]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[39]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[42]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[43]_INST_0_i_1 
       (.I0(\m_axis_tdata[43]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[45]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[44]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[46]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_28 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[43]_INST_0_i_2 
       (.I0(s_axis_tdata[36]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[32]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[40]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[43]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[44]_INST_0_i_1 
       (.I0(\m_axis_tdata[44]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[46]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[45]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[47]_INST_0_i_38_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_8 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[44]_INST_0_i_2 
       (.I0(s_axis_tdata[37]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[33]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[41]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[44]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \m_axis_tdata[45]_INST_0_i_1 
       (.I0(\m_axis_tdata[46]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[46]_INST_0_i_3_n_0 ),
        .I3(\m_axis_tdata[45]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[47]_INST_0_i_38_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_9 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[45]_INST_0_i_2 
       (.I0(s_axis_tdata[38]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[34]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[42]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[45]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[46]_INST_0_i_1 
       (.I0(\m_axis_tdata[46]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[46]_INST_0_i_3_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_38_n_0 ),
        .I4(\m_axis_tdata[47]_INST_0_i_39_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_10 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[46]_INST_0_i_2 
       (.I0(s_axis_tdata[39]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[35]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[43]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[46]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[46]_INST_0_i_3 
       (.I0(s_axis_tdata[33]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[41]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[46]_INST_0_i_4_n_0 ),
        .O(\m_axis_tdata[46]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[46]_INST_0_i_4 
       (.I0(s_axis_tdata[37]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[45]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[46]_INST_0_i_4_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[47]_INST_0_i_1 
       (.CI(\m_axis_tdata[47]_INST_0_i_4_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_162 ,\m_axis_tdata[47]_INST_0_i_1_n_1 ,\m_axis_tdata[47]_INST_0_i_1_n_2 ,\m_axis_tdata[47]_INST_0_i_1_n_3 ,\m_axis_tdata[47]_INST_0_i_1_n_4 ,\m_axis_tdata[47]_INST_0_i_1_n_5 ,\m_axis_tdata[47]_INST_0_i_1_n_6 ,\m_axis_tdata[47]_INST_0_i_1_n_7 }),
        .DI({\m_axis_tdata[47]_INST_0_i_5_n_0 ,\m_axis_tdata[47]_INST_0_i_6_n_0 ,\m_axis_tdata[47]_INST_0_i_7_n_0 ,\m_axis_tdata[47]_INST_0_i_8_n_0 ,\m_axis_tdata[47]_INST_0_i_9_n_0 ,\m_axis_tdata[47]_INST_0_i_10_n_0 ,\m_axis_tdata[47]_INST_0_i_11_n_0 ,\m_axis_tdata[47]_INST_0_i_12_n_0 }),
        .O(\NLW_m_axis_tdata[47]_INST_0_i_1_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[47]_INST_0_i_13_n_0 ,\m_axis_tdata[47]_INST_0_i_14_n_0 ,\m_axis_tdata[47]_INST_0_i_15_n_0 ,\m_axis_tdata[47]_INST_0_i_16_n_0 ,\m_axis_tdata[47]_INST_0_i_17_n_0 ,\m_axis_tdata[47]_INST_0_i_18_n_0 ,\m_axis_tdata[47]_INST_0_i_19_n_0 ,\m_axis_tdata[47]_INST_0_i_20_n_0 }));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[47]_INST_0_i_10 
       (.I0(\m_axis_tdata[47]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[47]_INST_0_i_100 
       (.I0(s_axis_tdata[33]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[41]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[47]),
        .O(\m_axis_tdata[47]_INST_0_i_100_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[47]_INST_0_i_101 
       (.I0(s_axis_tdata[46]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[38]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[47]),
        .O(\m_axis_tdata[47]_INST_0_i_101_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888888)) 
    \m_axis_tdata[47]_INST_0_i_102 
       (.I0(\m_axis_tdata[47]_INST_0_i_114_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[39]),
        .I4(SCALE_SHIFT[4]),
        .I5(s_axis_tdata[47]),
        .O(\m_axis_tdata[47]_INST_0_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[47]_INST_0_i_103 
       (.I0(s_axis_tdata[44]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[36]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[47]),
        .O(\m_axis_tdata[47]_INST_0_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[47]_INST_0_i_104 
       (.I0(s_axis_tdata[41]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[33]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[47]),
        .O(\m_axis_tdata[47]_INST_0_i_104_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[47]_INST_0_i_105 
       (.I0(s_axis_tdata[42]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[34]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[47]),
        .O(\m_axis_tdata[47]_INST_0_i_105_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[47]_INST_0_i_106 
       (.I0(s_axis_tdata[39]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[47]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[47]_INST_0_i_114_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_106_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[47]_INST_0_i_107 
       (.I0(s_axis_tdata[40]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[32]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[47]),
        .O(\m_axis_tdata[47]_INST_0_i_107_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[47]_INST_0_i_108 
       (.I0(s_axis_tdata[37]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[45]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[47]_INST_0_i_104_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[47]_INST_0_i_109 
       (.I0(s_axis_tdata[38]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[46]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[47]_INST_0_i_105_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_109_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[47]_INST_0_i_11 
       (.I0(\m_axis_tdata[47]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[47]_INST_0_i_110 
       (.I0(s_axis_tdata[36]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[44]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[47]_INST_0_i_107_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_110_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[47]_INST_0_i_111 
       (.I0(s_axis_tdata[39]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[47]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[47]_INST_0_i_111_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[47]_INST_0_i_112 
       (.I0(s_axis_tdata[35]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[43]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[47]),
        .O(\m_axis_tdata[47]_INST_0_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[47]_INST_0_i_113 
       (.I0(s_axis_tdata[37]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[45]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[47]),
        .O(\m_axis_tdata[47]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[47]_INST_0_i_114 
       (.I0(s_axis_tdata[43]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[35]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[47]),
        .O(\m_axis_tdata[47]_INST_0_i_114_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[47]_INST_0_i_12 
       (.I0(\m_axis_tdata[47]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \m_axis_tdata[47]_INST_0_i_13 
       (.I0(\m_axis_tdata[47]_INST_0_i_57_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_58_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_59_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[47]_INST_0_i_14 
       (.I0(\m_axis_tdata[47]_INST_0_i_60_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_61_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_57_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[47]_INST_0_i_15 
       (.I0(\m_axis_tdata[47]_INST_0_i_62_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_63_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_60_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[47]_INST_0_i_16 
       (.I0(\m_axis_tdata[47]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_65_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_62_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[47]_INST_0_i_17 
       (.I0(\m_axis_tdata[47]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_64_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[47]_INST_0_i_18 
       (.I0(\m_axis_tdata[47]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[47]_INST_0_i_19 
       (.I0(\m_axis_tdata[47]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_19_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[47]_INST_0_i_2 
       (.CI(\m_axis_tdata[47]_INST_0_i_21_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_163 ,\m_axis_tdata[47]_INST_0_i_2_n_1 ,\m_axis_tdata[47]_INST_0_i_2_n_2 ,\m_axis_tdata[47]_INST_0_i_2_n_3 ,\m_axis_tdata[47]_INST_0_i_2_n_4 ,\m_axis_tdata[47]_INST_0_i_2_n_5 ,\m_axis_tdata[47]_INST_0_i_2_n_6 ,\m_axis_tdata[47]_INST_0_i_2_n_7 }),
        .DI({\m_axis_tdata[47]_INST_0_i_22_n_0 ,\m_axis_tdata[47]_INST_0_i_23_n_0 ,\m_axis_tdata[47]_INST_0_i_24_n_0 ,\m_axis_tdata[47]_INST_0_i_25_n_0 ,\m_axis_tdata[47]_INST_0_i_26_n_0 ,\m_axis_tdata[47]_INST_0_i_27_n_0 ,\m_axis_tdata[47]_INST_0_i_28_n_0 ,\m_axis_tdata[47]_INST_0_i_29_n_0 }),
        .O(\NLW_m_axis_tdata[47]_INST_0_i_2_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[47]_INST_0_i_30_n_0 ,\m_axis_tdata[47]_INST_0_i_31_n_0 ,\m_axis_tdata[47]_INST_0_i_32_n_0 ,\m_axis_tdata[47]_INST_0_i_33_n_0 ,\m_axis_tdata[47]_INST_0_i_34_n_0 ,\m_axis_tdata[47]_INST_0_i_35_n_0 ,\m_axis_tdata[47]_INST_0_i_36_n_0 ,\m_axis_tdata[47]_INST_0_i_37_n_0 }));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[47]_INST_0_i_20 
       (.I0(\m_axis_tdata[47]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_20_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[47]_INST_0_i_21 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[47]_INST_0_i_21_n_0 ,\m_axis_tdata[47]_INST_0_i_21_n_1 ,\m_axis_tdata[47]_INST_0_i_21_n_2 ,\m_axis_tdata[47]_INST_0_i_21_n_3 ,\m_axis_tdata[47]_INST_0_i_21_n_4 ,\m_axis_tdata[47]_INST_0_i_21_n_5 ,\m_axis_tdata[47]_INST_0_i_21_n_6 ,\m_axis_tdata[47]_INST_0_i_21_n_7 }),
        .DI({\m_axis_tdata[47]_INST_0_i_73_n_0 ,\m_axis_tdata[47]_INST_0_i_74_n_0 ,\m_axis_tdata[47]_INST_0_i_75_n_0 ,\m_axis_tdata[47]_INST_0_i_76_n_0 ,\m_axis_tdata[47]_INST_0_i_77_n_0 ,\m_axis_tdata[47]_INST_0_i_78_n_0 ,\m_axis_tdata[47]_INST_0_i_79_n_0 ,\m_axis_tdata[47]_INST_0_i_80_n_0 }),
        .O(\NLW_m_axis_tdata[47]_INST_0_i_21_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[47]_INST_0_i_81_n_0 ,\m_axis_tdata[47]_INST_0_i_82_n_0 ,\m_axis_tdata[47]_INST_0_i_83_n_0 ,\m_axis_tdata[47]_INST_0_i_84_n_0 ,\m_axis_tdata[47]_INST_0_i_85_n_0 ,\m_axis_tdata[47]_INST_0_i_86_n_0 ,\m_axis_tdata[47]_INST_0_i_87_n_0 ,\m_axis_tdata[47]_INST_0_i_88_n_0 }));
  LUT5 #(
    .INIT(32'hFF004700)) 
    \m_axis_tdata[47]_INST_0_i_22 
       (.I0(\m_axis_tdata[47]_INST_0_i_57_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_58_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_59_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[47]_INST_0_i_23 
       (.I0(\m_axis_tdata[47]_INST_0_i_60_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_61_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_57_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[47]_INST_0_i_24 
       (.I0(\m_axis_tdata[47]_INST_0_i_62_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_63_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_60_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[47]_INST_0_i_25 
       (.I0(\m_axis_tdata[47]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_65_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_62_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[47]_INST_0_i_26 
       (.I0(\m_axis_tdata[47]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_64_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[47]_INST_0_i_27 
       (.I0(\m_axis_tdata[47]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[47]_INST_0_i_28 
       (.I0(\m_axis_tdata[47]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[47]_INST_0_i_29 
       (.I0(\m_axis_tdata[47]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[47]_INST_0_i_3 
       (.I0(\m_axis_tdata[47]_INST_0_i_38_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[47]_INST_0_i_39_n_0 ),
        .I3(SCALE_SHIFT[0]),
        .I4(\m_axis_tdata[47]_INST_0_i_40_n_0 ),
        .O(\SCALE_SHIFT[1]_11 ));
  LUT5 #(
    .INIT(32'h0047B800)) 
    \m_axis_tdata[47]_INST_0_i_30 
       (.I0(\m_axis_tdata[47]_INST_0_i_57_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_58_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_59_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[47]_INST_0_i_31 
       (.I0(\m_axis_tdata[47]_INST_0_i_60_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_61_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_57_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[47]_INST_0_i_32 
       (.I0(\m_axis_tdata[47]_INST_0_i_62_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_63_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_60_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[47]_INST_0_i_33 
       (.I0(\m_axis_tdata[47]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_65_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_62_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[47]_INST_0_i_34 
       (.I0(\m_axis_tdata[47]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_64_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[47]_INST_0_i_35 
       (.I0(\m_axis_tdata[47]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[47]_INST_0_i_36 
       (.I0(\m_axis_tdata[47]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[47]_INST_0_i_37 
       (.I0(\m_axis_tdata[47]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[47]_INST_0_i_38 
       (.I0(s_axis_tdata[32]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[40]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[47]_INST_0_i_89_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[47]_INST_0_i_39 
       (.I0(s_axis_tdata[34]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[42]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[47]_INST_0_i_90_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_39_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[47]_INST_0_i_4 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[47]_INST_0_i_4_n_0 ,\m_axis_tdata[47]_INST_0_i_4_n_1 ,\m_axis_tdata[47]_INST_0_i_4_n_2 ,\m_axis_tdata[47]_INST_0_i_4_n_3 ,\m_axis_tdata[47]_INST_0_i_4_n_4 ,\m_axis_tdata[47]_INST_0_i_4_n_5 ,\m_axis_tdata[47]_INST_0_i_4_n_6 ,\m_axis_tdata[47]_INST_0_i_4_n_7 }),
        .DI({\m_axis_tdata[47]_INST_0_i_41_n_0 ,\m_axis_tdata[47]_INST_0_i_42_n_0 ,\m_axis_tdata[47]_INST_0_i_43_n_0 ,\m_axis_tdata[47]_INST_0_i_44_n_0 ,\m_axis_tdata[47]_INST_0_i_45_n_0 ,\m_axis_tdata[47]_INST_0_i_46_n_0 ,\m_axis_tdata[47]_INST_0_i_47_n_0 ,\m_axis_tdata[47]_INST_0_i_48_n_0 }),
        .O(\NLW_m_axis_tdata[47]_INST_0_i_4_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[47]_INST_0_i_49_n_0 ,\m_axis_tdata[47]_INST_0_i_50_n_0 ,\m_axis_tdata[47]_INST_0_i_51_n_0 ,\m_axis_tdata[47]_INST_0_i_52_n_0 ,\m_axis_tdata[47]_INST_0_i_53_n_0 ,\m_axis_tdata[47]_INST_0_i_54_n_0 ,\m_axis_tdata[47]_INST_0_i_55_n_0 ,\m_axis_tdata[47]_INST_0_i_56_n_0 }));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[47]_INST_0_i_40 
       (.I0(\m_axis_tdata[46]_INST_0_i_3_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[47]_INST_0_i_91_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_40_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[47]_INST_0_i_41 
       (.I0(\SCALE_SHIFT[1]_10 ),
        .I1(\SCALE_SHIFT[1]_11 ),
        .O(\m_axis_tdata[47]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[47]_INST_0_i_42 
       (.I0(\SCALE_SHIFT[1]_8 ),
        .I1(LIMIT[12]),
        .I2(LIMIT[13]),
        .I3(\SCALE_SHIFT[1]_9 ),
        .O(\m_axis_tdata[47]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[47]_INST_0_i_43 
       (.I0(\SCALE_SHIFT[0]_27 ),
        .I1(LIMIT[10]),
        .I2(LIMIT[11]),
        .I3(\SCALE_SHIFT[0]_28 ),
        .O(\m_axis_tdata[47]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[47]_INST_0_i_44 
       (.I0(\SCALE_SHIFT[0]_24 ),
        .I1(LIMIT[8]),
        .I2(LIMIT[9]),
        .I3(\SCALE_SHIFT[0]_25 ),
        .O(\m_axis_tdata[47]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[47]_INST_0_i_45 
       (.I0(\SCALE_SHIFT[1]_12 ),
        .I1(LIMIT[6]),
        .I2(LIMIT[7]),
        .I3(\SCALE_SHIFT[0]_26 ),
        .O(\m_axis_tdata[47]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[47]_INST_0_i_46 
       (.I0(\SCALE_SHIFT[0]_22 ),
        .I1(LIMIT[4]),
        .I2(LIMIT[5]),
        .I3(\SCALE_SHIFT[0]_23 ),
        .O(\m_axis_tdata[47]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[47]_INST_0_i_47 
       (.I0(\SCALE_SHIFT[0]_20 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[3]),
        .I3(\SCALE_SHIFT[0]_21 ),
        .O(\m_axis_tdata[47]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[47]_INST_0_i_48 
       (.I0(\SCALE_SHIFT[1]_7 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_19 ),
        .O(\m_axis_tdata[47]_INST_0_i_48_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata[47]_INST_0_i_49 
       (.I0(\SCALE_SHIFT[1]_10 ),
        .I1(\SCALE_SHIFT[1]_11 ),
        .O(\m_axis_tdata[47]_INST_0_i_49_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[47]_INST_0_i_5 
       (.I0(\m_axis_tdata[47]_INST_0_i_57_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_58_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_59_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[47]_INST_0_i_50 
       (.I0(\SCALE_SHIFT[1]_8 ),
        .I1(LIMIT[12]),
        .I2(\SCALE_SHIFT[1]_9 ),
        .I3(LIMIT[13]),
        .O(\m_axis_tdata[47]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[47]_INST_0_i_51 
       (.I0(\SCALE_SHIFT[0]_27 ),
        .I1(LIMIT[10]),
        .I2(\SCALE_SHIFT[0]_28 ),
        .I3(LIMIT[11]),
        .O(\m_axis_tdata[47]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[47]_INST_0_i_52 
       (.I0(\SCALE_SHIFT[0]_24 ),
        .I1(LIMIT[8]),
        .I2(\SCALE_SHIFT[0]_25 ),
        .I3(LIMIT[9]),
        .O(\m_axis_tdata[47]_INST_0_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[47]_INST_0_i_53 
       (.I0(\SCALE_SHIFT[1]_12 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[0]_26 ),
        .I3(LIMIT[7]),
        .O(\m_axis_tdata[47]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[47]_INST_0_i_54 
       (.I0(\SCALE_SHIFT[0]_22 ),
        .I1(LIMIT[4]),
        .I2(\SCALE_SHIFT[0]_23 ),
        .I3(LIMIT[5]),
        .O(\m_axis_tdata[47]_INST_0_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[47]_INST_0_i_55 
       (.I0(\SCALE_SHIFT[0]_20 ),
        .I1(LIMIT[2]),
        .I2(\SCALE_SHIFT[0]_21 ),
        .I3(LIMIT[3]),
        .O(\m_axis_tdata[47]_INST_0_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[47]_INST_0_i_56 
       (.I0(\SCALE_SHIFT[1]_7 ),
        .I1(LIMIT[0]),
        .I2(\SCALE_SHIFT[0]_19 ),
        .I3(LIMIT[1]),
        .O(\m_axis_tdata[47]_INST_0_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[47]_INST_0_i_57 
       (.I0(\m_axis_tdata[47]_INST_0_i_92_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[47]_INST_0_i_93_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_57_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \m_axis_tdata[47]_INST_0_i_58 
       (.I0(\m_axis_tdata[47]_INST_0_i_94_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[47]_INST_0_i_95_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[47]_INST_0_i_96_n_0 ),
        .I5(\m_axis_tdata[47]_INST_0_i_97_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_58_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[47]_INST_0_i_59 
       (.I0(\m_axis_tdata[47]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_93_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[47]_INST_0_i_98_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_59_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[47]_INST_0_i_6 
       (.I0(\m_axis_tdata[47]_INST_0_i_60_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_61_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_57_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[47]_INST_0_i_60 
       (.I0(\m_axis_tdata[47]_INST_0_i_99_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[47]_INST_0_i_100_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[47]_INST_0_i_92_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[47]_INST_0_i_61 
       (.I0(\m_axis_tdata[47]_INST_0_i_101_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[47]_INST_0_i_96_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_94_n_0 ),
        .I4(\m_axis_tdata[47]_INST_0_i_95_n_0 ),
        .I5(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[47]_INST_0_i_61_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[47]_INST_0_i_62 
       (.I0(\m_axis_tdata[47]_INST_0_i_99_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[47]_INST_0_i_100_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_102_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[47]_INST_0_i_62_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[47]_INST_0_i_63 
       (.I0(\m_axis_tdata[47]_INST_0_i_103_n_0 ),
        .I1(\m_axis_tdata[47]_INST_0_i_94_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[47]_INST_0_i_101_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[47]_INST_0_i_96_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_63_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[47]_INST_0_i_64 
       (.I0(\m_axis_tdata[47]_INST_0_i_104_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[47]_INST_0_i_99_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[47]_INST_0_i_102_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_64_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[47]_INST_0_i_65 
       (.I0(\m_axis_tdata[47]_INST_0_i_105_n_0 ),
        .I1(\m_axis_tdata[47]_INST_0_i_101_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[47]_INST_0_i_103_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[47]_INST_0_i_94_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_65_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[47]_INST_0_i_66 
       (.I0(\m_axis_tdata[47]_INST_0_i_104_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[47]_INST_0_i_99_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_106_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[47]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[47]_INST_0_i_67 
       (.I0(\m_axis_tdata[47]_INST_0_i_107_n_0 ),
        .I1(\m_axis_tdata[47]_INST_0_i_103_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[47]_INST_0_i_105_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[47]_INST_0_i_101_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_67_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair127" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[47]_INST_0_i_68 
       (.I0(\m_axis_tdata[47]_INST_0_i_108_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[47]_INST_0_i_106_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_68_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[47]_INST_0_i_69 
       (.I0(\m_axis_tdata[47]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[47]_INST_0_i_103_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_109_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[47]_INST_0_i_69_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[47]_INST_0_i_7 
       (.I0(\m_axis_tdata[47]_INST_0_i_62_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_63_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_60_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair129" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[47]_INST_0_i_70 
       (.I0(\m_axis_tdata[47]_INST_0_i_91_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[47]_INST_0_i_108_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[47]_INST_0_i_71 
       (.I0(\m_axis_tdata[47]_INST_0_i_110_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[47]_INST_0_i_109_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_71_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair126" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[47]_INST_0_i_72 
       (.I0(\m_axis_tdata[47]_INST_0_i_39_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[47]_INST_0_i_110_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_72_n_0 ));
  LUT3 #(
    .INIT(8'h13)) 
    \m_axis_tdata[47]_INST_0_i_73 
       (.I0(\SCALE_SHIFT[1]_10 ),
        .I1(\LIMIT[12]_0 ),
        .I2(\SCALE_SHIFT[1]_11 ),
        .O(\m_axis_tdata[47]_INST_0_i_73_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[47]_INST_0_i_74 
       (.I0(\SCALE_SHIFT[1]_8 ),
        .I1(LIMIT_11_sn_1),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_9 ),
        .O(\m_axis_tdata[47]_INST_0_i_74_n_0 ));
  LUT5 #(
    .INIT(32'h0009999F)) 
    \m_axis_tdata[47]_INST_0_i_75 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\SCALE_SHIFT[0]_27 ),
        .I3(\LIMIT[9]_0 ),
        .I4(\SCALE_SHIFT[0]_28 ),
        .O(\m_axis_tdata[47]_INST_0_i_75_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[47]_INST_0_i_76 
       (.I0(\SCALE_SHIFT[0]_24 ),
        .I1(LIMIT_7_sn_1),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_25 ),
        .O(\m_axis_tdata[47]_INST_0_i_76_n_0 ));
  LUT5 #(
    .INIT(32'h000909FF)) 
    \m_axis_tdata[47]_INST_0_i_77 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_12 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_26 ),
        .O(\m_axis_tdata[47]_INST_0_i_77_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[47]_INST_0_i_78 
       (.I0(\SCALE_SHIFT[0]_22 ),
        .I1(LIMIT_3_sn_1),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_23 ),
        .O(\m_axis_tdata[47]_INST_0_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h000011141117FFFC)) 
    \m_axis_tdata[47]_INST_0_i_79 
       (.I0(\SCALE_SHIFT[0]_20 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_21 ),
        .O(\m_axis_tdata[47]_INST_0_i_79_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[47]_INST_0_i_8 
       (.I0(\m_axis_tdata[47]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_65_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_62_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h047C)) 
    \m_axis_tdata[47]_INST_0_i_80 
       (.I0(\SCALE_SHIFT[1]_7 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_19 ),
        .O(\m_axis_tdata[47]_INST_0_i_80_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \m_axis_tdata[47]_INST_0_i_81 
       (.I0(\SCALE_SHIFT[1]_10 ),
        .I1(\LIMIT[12]_0 ),
        .I2(\SCALE_SHIFT[1]_11 ),
        .O(\m_axis_tdata[47]_INST_0_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[47]_INST_0_i_82 
       (.I0(LIMIT_11_sn_1),
        .I1(\SCALE_SHIFT[1]_8 ),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_9 ),
        .O(\m_axis_tdata[47]_INST_0_i_82_n_0 ));
  LUT5 #(
    .INIT(32'h09900660)) 
    \m_axis_tdata[47]_INST_0_i_83 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\LIMIT[9]_0 ),
        .I3(\SCALE_SHIFT[0]_27 ),
        .I4(\SCALE_SHIFT[0]_28 ),
        .O(\m_axis_tdata[47]_INST_0_i_83_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[47]_INST_0_i_84 
       (.I0(LIMIT_7_sn_1),
        .I1(\SCALE_SHIFT[0]_24 ),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_25 ),
        .O(\m_axis_tdata[47]_INST_0_i_84_n_0 ));
  LUT5 #(
    .INIT(32'h00969600)) 
    \m_axis_tdata[47]_INST_0_i_85 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_12 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_26 ),
        .O(\m_axis_tdata[47]_INST_0_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[47]_INST_0_i_86 
       (.I0(LIMIT_3_sn_1),
        .I1(\SCALE_SHIFT[0]_22 ),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_23 ),
        .O(\m_axis_tdata[47]_INST_0_i_86_n_0 ));
  LUT6 #(
    .INIT(64'h0001666866680001)) 
    \m_axis_tdata[47]_INST_0_i_87 
       (.I0(\SCALE_SHIFT[0]_20 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_21 ),
        .O(\m_axis_tdata[47]_INST_0_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h1881)) 
    \m_axis_tdata[47]_INST_0_i_88 
       (.I0(\SCALE_SHIFT[1]_7 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_19 ),
        .O(\m_axis_tdata[47]_INST_0_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[47]_INST_0_i_89 
       (.I0(s_axis_tdata[36]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[44]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[47]_INST_0_i_89_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[47]_INST_0_i_9 
       (.I0(\m_axis_tdata[47]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[47]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[47]_INST_0_i_64_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[47]_INST_0_i_90 
       (.I0(s_axis_tdata[38]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[46]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[47]_INST_0_i_90_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[47]_INST_0_i_91 
       (.I0(s_axis_tdata[35]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[43]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[47]_INST_0_i_111_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \m_axis_tdata[47]_INST_0_i_92 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[39]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[47]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[47]_INST_0_i_112_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_92_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[47]_INST_0_i_93 
       (.I0(\m_axis_tdata[47]_INST_0_i_100_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[47]_INST_0_i_113_n_0 ),
        .O(\m_axis_tdata[47]_INST_0_i_93_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[47]_INST_0_i_94 
       (.I0(s_axis_tdata[32]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[40]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[47]),
        .O(\m_axis_tdata[47]_INST_0_i_94_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[47]_INST_0_i_95 
       (.I0(s_axis_tdata[36]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[44]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[47]),
        .O(\m_axis_tdata[47]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[47]_INST_0_i_96 
       (.I0(s_axis_tdata[34]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[42]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[47]),
        .O(\m_axis_tdata[47]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[47]_INST_0_i_97 
       (.I0(s_axis_tdata[38]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[46]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[47]),
        .O(\m_axis_tdata[47]_INST_0_i_97_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \m_axis_tdata[47]_INST_0_i_98 
       (.I0(\m_axis_tdata[47]_INST_0_i_112_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[39]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[3]),
        .I5(s_axis_tdata[47]),
        .O(\m_axis_tdata[47]_INST_0_i_98_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[47]_INST_0_i_99 
       (.I0(s_axis_tdata[45]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[37]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[47]),
        .O(\m_axis_tdata[47]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[48]_INST_0_i_1 
       (.I0(SCALE_SHIFT[1]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[48]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_13 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[49]_INST_0_i_1 
       (.I0(\m_axis_tdata[49]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[50]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_29 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[49]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[48]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[49]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[4]_INST_0_i_1 
       (.I0(\m_axis_tdata[4]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[5]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_2 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[4]_INST_0_i_2 
       (.I0(s_axis_tdata[1]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[3]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[4]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair137" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[50]_INST_0_i_1 
       (.I0(\m_axis_tdata[50]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[51]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_30 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[50]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[49]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[50]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[51]_INST_0_i_1 
       (.I0(\m_axis_tdata[51]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[52]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_31 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[51]_INST_0_i_2 
       (.I0(s_axis_tdata[48]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[50]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[51]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair136" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[52]_INST_0_i_1 
       (.I0(\m_axis_tdata[52]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[53]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_32 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[52]_INST_0_i_2 
       (.I0(s_axis_tdata[49]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[51]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[52]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair132" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[53]_INST_0_i_1 
       (.I0(\m_axis_tdata[53]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[54]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_33 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[53]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[50]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[55]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[53]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[54]_INST_0_i_1 
       (.I0(\m_axis_tdata[55]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[57]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[54]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_18 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[54]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[51]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[56]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[54]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[55]_INST_0_i_1 
       (.I0(\m_axis_tdata[55]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[57]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[56]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[58]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_36 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[55]_INST_0_i_2 
       (.I0(s_axis_tdata[48]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[52]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[55]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[56]_INST_0_i_1 
       (.I0(\m_axis_tdata[56]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[58]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[57]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[59]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_34 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[56]_INST_0_i_2 
       (.I0(s_axis_tdata[49]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[53]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[56]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[57]_INST_0_i_1 
       (.I0(\m_axis_tdata[57]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[59]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[58]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[60]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_35 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[57]_INST_0_i_2 
       (.I0(s_axis_tdata[50]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[54]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[57]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[58]_INST_0_i_1 
       (.I0(\m_axis_tdata[58]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[60]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[59]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[61]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_37 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[58]_INST_0_i_2 
       (.I0(s_axis_tdata[51]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[55]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[58]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[59]_INST_0_i_1 
       (.I0(\m_axis_tdata[59]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[61]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[60]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[62]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_38 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[59]_INST_0_i_2 
       (.I0(s_axis_tdata[52]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[48]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[56]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[59]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair117" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[5]_INST_0_i_1 
       (.I0(\m_axis_tdata[5]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[6]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_3 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[5]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[7]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[5]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[60]_INST_0_i_1 
       (.I0(\m_axis_tdata[60]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[62]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[61]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[63]_INST_0_i_39_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_14 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[60]_INST_0_i_2 
       (.I0(s_axis_tdata[53]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[49]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[57]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[60]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFF33CC00B8B8B8B8)) 
    \m_axis_tdata[61]_INST_0_i_1 
       (.I0(\m_axis_tdata[62]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[62]_INST_0_i_3_n_0 ),
        .I3(\m_axis_tdata[61]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[63]_INST_0_i_39_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_15 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[61]_INST_0_i_2 
       (.I0(s_axis_tdata[54]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[50]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[58]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[61]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[62]_INST_0_i_1 
       (.I0(\m_axis_tdata[62]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[62]_INST_0_i_3_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_39_n_0 ),
        .I4(\m_axis_tdata[63]_INST_0_i_40_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_16 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[62]_INST_0_i_2 
       (.I0(s_axis_tdata[55]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[51]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[59]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[62]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[62]_INST_0_i_3 
       (.I0(s_axis_tdata[49]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[57]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[62]_INST_0_i_4_n_0 ),
        .O(\m_axis_tdata[62]_INST_0_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[62]_INST_0_i_4 
       (.I0(s_axis_tdata[53]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[61]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[62]_INST_0_i_4_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[63]_INST_0_i_1 
       (.CI(\m_axis_tdata[63]_INST_0_i_5_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_159 ,\m_axis_tdata[63]_INST_0_i_1_n_1 ,\m_axis_tdata[63]_INST_0_i_1_n_2 ,\m_axis_tdata[63]_INST_0_i_1_n_3 ,\m_axis_tdata[63]_INST_0_i_1_n_4 ,\m_axis_tdata[63]_INST_0_i_1_n_5 ,\m_axis_tdata[63]_INST_0_i_1_n_6 ,\m_axis_tdata[63]_INST_0_i_1_n_7 }),
        .DI({\m_axis_tdata[63]_INST_0_i_6_n_0 ,\m_axis_tdata[63]_INST_0_i_7_n_0 ,\m_axis_tdata[63]_INST_0_i_8_n_0 ,\m_axis_tdata[63]_INST_0_i_9_n_0 ,\m_axis_tdata[63]_INST_0_i_10_n_0 ,\m_axis_tdata[63]_INST_0_i_11_n_0 ,\m_axis_tdata[63]_INST_0_i_12_n_0 ,\m_axis_tdata[63]_INST_0_i_13_n_0 }),
        .O(\NLW_m_axis_tdata[63]_INST_0_i_1_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[63]_INST_0_i_14_n_0 ,\m_axis_tdata[63]_INST_0_i_15_n_0 ,\m_axis_tdata[63]_INST_0_i_16_n_0 ,\m_axis_tdata[63]_INST_0_i_17_n_0 ,\m_axis_tdata[63]_INST_0_i_18_n_0 ,\m_axis_tdata[63]_INST_0_i_19_n_0 ,\m_axis_tdata[63]_INST_0_i_20_n_0 ,\m_axis_tdata[63]_INST_0_i_21_n_0 }));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[63]_INST_0_i_10 
       (.I0(\m_axis_tdata[63]_INST_0_i_67_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_68_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[63]_INST_0_i_100 
       (.I0(s_axis_tdata[61]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[53]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[63]),
        .O(\m_axis_tdata[63]_INST_0_i_100_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[63]_INST_0_i_101 
       (.I0(s_axis_tdata[49]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[57]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[63]),
        .O(\m_axis_tdata[63]_INST_0_i_101_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[63]_INST_0_i_102 
       (.I0(s_axis_tdata[62]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[54]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[63]),
        .O(\m_axis_tdata[63]_INST_0_i_102_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888888)) 
    \m_axis_tdata[63]_INST_0_i_103 
       (.I0(\m_axis_tdata[63]_INST_0_i_115_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[55]),
        .I4(SCALE_SHIFT[4]),
        .I5(s_axis_tdata[63]),
        .O(\m_axis_tdata[63]_INST_0_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[63]_INST_0_i_104 
       (.I0(s_axis_tdata[60]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[52]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[63]),
        .O(\m_axis_tdata[63]_INST_0_i_104_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[63]_INST_0_i_105 
       (.I0(s_axis_tdata[57]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[49]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[63]),
        .O(\m_axis_tdata[63]_INST_0_i_105_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[63]_INST_0_i_106 
       (.I0(s_axis_tdata[58]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[50]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[63]),
        .O(\m_axis_tdata[63]_INST_0_i_106_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[63]_INST_0_i_107 
       (.I0(s_axis_tdata[55]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[63]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[63]_INST_0_i_115_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[63]_INST_0_i_108 
       (.I0(s_axis_tdata[56]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[48]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[63]),
        .O(\m_axis_tdata[63]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[63]_INST_0_i_109 
       (.I0(s_axis_tdata[53]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[61]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[63]_INST_0_i_105_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_109_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[63]_INST_0_i_11 
       (.I0(\m_axis_tdata[63]_INST_0_i_69_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_70_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_67_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[63]_INST_0_i_110 
       (.I0(s_axis_tdata[54]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[62]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[63]_INST_0_i_106_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[63]_INST_0_i_111 
       (.I0(s_axis_tdata[52]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[60]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[63]_INST_0_i_108_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_111_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[63]_INST_0_i_112 
       (.I0(s_axis_tdata[55]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[63]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[63]_INST_0_i_112_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[63]_INST_0_i_113 
       (.I0(s_axis_tdata[51]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[59]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[63]),
        .O(\m_axis_tdata[63]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[63]_INST_0_i_114 
       (.I0(s_axis_tdata[53]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[61]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[63]),
        .O(\m_axis_tdata[63]_INST_0_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[63]_INST_0_i_115 
       (.I0(s_axis_tdata[59]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[51]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[63]),
        .O(\m_axis_tdata[63]_INST_0_i_115_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[63]_INST_0_i_12 
       (.I0(\m_axis_tdata[63]_INST_0_i_71_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_69_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[63]_INST_0_i_13 
       (.I0(\m_axis_tdata[63]_INST_0_i_41_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_71_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \m_axis_tdata[63]_INST_0_i_14 
       (.I0(\m_axis_tdata[63]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_59_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_60_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_14_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[63]_INST_0_i_15 
       (.I0(\m_axis_tdata[63]_INST_0_i_61_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_62_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_58_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_15_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[63]_INST_0_i_16 
       (.I0(\m_axis_tdata[63]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_61_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[63]_INST_0_i_17 
       (.I0(\m_axis_tdata[63]_INST_0_i_65_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_66_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_17_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[63]_INST_0_i_18 
       (.I0(\m_axis_tdata[63]_INST_0_i_67_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_68_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_18_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[63]_INST_0_i_19 
       (.I0(\m_axis_tdata[63]_INST_0_i_69_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_70_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_67_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_19_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \m_axis_tdata[63]_INST_0_i_2 
       (.I0(LIMIT[12]),
        .I1(LIMIT_9_sn_1),
        .I2(LIMIT[11]),
        .I3(LIMIT[13]),
        .O(\LIMIT[12]_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[63]_INST_0_i_20 
       (.I0(\m_axis_tdata[63]_INST_0_i_71_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_69_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[63]_INST_0_i_21 
       (.I0(\m_axis_tdata[63]_INST_0_i_41_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_71_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_21_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[63]_INST_0_i_22 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[63]_INST_0_i_22_n_0 ,\m_axis_tdata[63]_INST_0_i_22_n_1 ,\m_axis_tdata[63]_INST_0_i_22_n_2 ,\m_axis_tdata[63]_INST_0_i_22_n_3 ,\m_axis_tdata[63]_INST_0_i_22_n_4 ,\m_axis_tdata[63]_INST_0_i_22_n_5 ,\m_axis_tdata[63]_INST_0_i_22_n_6 ,\m_axis_tdata[63]_INST_0_i_22_n_7 }),
        .DI({\m_axis_tdata[63]_INST_0_i_74_n_0 ,\m_axis_tdata[63]_INST_0_i_75_n_0 ,\m_axis_tdata[63]_INST_0_i_76_n_0 ,\m_axis_tdata[63]_INST_0_i_77_n_0 ,\m_axis_tdata[63]_INST_0_i_78_n_0 ,\m_axis_tdata[63]_INST_0_i_79_n_0 ,\m_axis_tdata[63]_INST_0_i_80_n_0 ,\m_axis_tdata[63]_INST_0_i_81_n_0 }),
        .O(\NLW_m_axis_tdata[63]_INST_0_i_22_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[63]_INST_0_i_82_n_0 ,\m_axis_tdata[63]_INST_0_i_83_n_0 ,\m_axis_tdata[63]_INST_0_i_84_n_0 ,\m_axis_tdata[63]_INST_0_i_85_n_0 ,\m_axis_tdata[63]_INST_0_i_86_n_0 ,\m_axis_tdata[63]_INST_0_i_87_n_0 ,\m_axis_tdata[63]_INST_0_i_88_n_0 ,\m_axis_tdata[63]_INST_0_i_89_n_0 }));
  LUT5 #(
    .INIT(32'hFF004700)) 
    \m_axis_tdata[63]_INST_0_i_23 
       (.I0(\m_axis_tdata[63]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_59_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_60_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[63]_INST_0_i_24 
       (.I0(\m_axis_tdata[63]_INST_0_i_61_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_62_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_58_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[63]_INST_0_i_25 
       (.I0(\m_axis_tdata[63]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_61_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_25_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[63]_INST_0_i_26 
       (.I0(\m_axis_tdata[63]_INST_0_i_65_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_66_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_26_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[63]_INST_0_i_27 
       (.I0(\m_axis_tdata[63]_INST_0_i_67_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_68_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_27_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[63]_INST_0_i_28 
       (.I0(\m_axis_tdata[63]_INST_0_i_69_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_70_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_67_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_28_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[63]_INST_0_i_29 
       (.I0(\m_axis_tdata[63]_INST_0_i_71_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_69_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_29_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[63]_INST_0_i_3 
       (.CI(\m_axis_tdata[63]_INST_0_i_22_n_0 ),
        .CI_TOP(1'b0),
        .CO({CO,\m_axis_tdata[63]_INST_0_i_3_n_1 ,\m_axis_tdata[63]_INST_0_i_3_n_2 ,\m_axis_tdata[63]_INST_0_i_3_n_3 ,\m_axis_tdata[63]_INST_0_i_3_n_4 ,\m_axis_tdata[63]_INST_0_i_3_n_5 ,\m_axis_tdata[63]_INST_0_i_3_n_6 ,\m_axis_tdata[63]_INST_0_i_3_n_7 }),
        .DI({\m_axis_tdata[63]_INST_0_i_23_n_0 ,\m_axis_tdata[63]_INST_0_i_24_n_0 ,\m_axis_tdata[63]_INST_0_i_25_n_0 ,\m_axis_tdata[63]_INST_0_i_26_n_0 ,\m_axis_tdata[63]_INST_0_i_27_n_0 ,\m_axis_tdata[63]_INST_0_i_28_n_0 ,\m_axis_tdata[63]_INST_0_i_29_n_0 ,\m_axis_tdata[63]_INST_0_i_30_n_0 }),
        .O(\NLW_m_axis_tdata[63]_INST_0_i_3_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[63]_INST_0_i_31_n_0 ,\m_axis_tdata[63]_INST_0_i_32_n_0 ,\m_axis_tdata[63]_INST_0_i_33_n_0 ,\m_axis_tdata[63]_INST_0_i_34_n_0 ,\m_axis_tdata[63]_INST_0_i_35_n_0 ,\m_axis_tdata[63]_INST_0_i_36_n_0 ,\m_axis_tdata[63]_INST_0_i_37_n_0 ,\m_axis_tdata[63]_INST_0_i_38_n_0 }));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[63]_INST_0_i_30 
       (.I0(\m_axis_tdata[63]_INST_0_i_41_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_71_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_30_n_0 ));
  LUT5 #(
    .INIT(32'h0047B800)) 
    \m_axis_tdata[63]_INST_0_i_31 
       (.I0(\m_axis_tdata[63]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_59_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_60_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_31_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[63]_INST_0_i_32 
       (.I0(\m_axis_tdata[63]_INST_0_i_61_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_62_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_58_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_32_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[63]_INST_0_i_33 
       (.I0(\m_axis_tdata[63]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_61_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_33_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[63]_INST_0_i_34 
       (.I0(\m_axis_tdata[63]_INST_0_i_65_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_66_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[63]_INST_0_i_35 
       (.I0(\m_axis_tdata[63]_INST_0_i_67_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_68_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_35_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[63]_INST_0_i_36 
       (.I0(\m_axis_tdata[63]_INST_0_i_69_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_70_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_67_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_36_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[63]_INST_0_i_37 
       (.I0(\m_axis_tdata[63]_INST_0_i_71_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_72_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_69_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_37_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[63]_INST_0_i_38 
       (.I0(\m_axis_tdata[63]_INST_0_i_41_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_71_n_0 ),
        .I4(\LIMIT[12]_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_38_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[63]_INST_0_i_39 
       (.I0(s_axis_tdata[48]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[56]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[63]_INST_0_i_90_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[63]_INST_0_i_4 
       (.I0(\m_axis_tdata[63]_INST_0_i_39_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[63]_INST_0_i_40_n_0 ),
        .I3(SCALE_SHIFT[0]),
        .I4(\m_axis_tdata[63]_INST_0_i_41_n_0 ),
        .O(\SCALE_SHIFT[1]_17 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[63]_INST_0_i_40 
       (.I0(s_axis_tdata[50]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[58]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[63]_INST_0_i_91_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[63]_INST_0_i_41 
       (.I0(\m_axis_tdata[62]_INST_0_i_3_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[63]_INST_0_i_92_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_41_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \m_axis_tdata[63]_INST_0_i_42 
       (.I0(\SCALE_SHIFT[1]_16 ),
        .I1(\SCALE_SHIFT[1]_17 ),
        .O(\m_axis_tdata[63]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[63]_INST_0_i_43 
       (.I0(\SCALE_SHIFT[1]_14 ),
        .I1(LIMIT[12]),
        .I2(LIMIT[13]),
        .I3(\SCALE_SHIFT[1]_15 ),
        .O(\m_axis_tdata[63]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[63]_INST_0_i_44 
       (.I0(\SCALE_SHIFT[0]_37 ),
        .I1(LIMIT[10]),
        .I2(LIMIT[11]),
        .I3(\SCALE_SHIFT[0]_38 ),
        .O(\m_axis_tdata[63]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[63]_INST_0_i_45 
       (.I0(\SCALE_SHIFT[0]_34 ),
        .I1(LIMIT[8]),
        .I2(LIMIT[9]),
        .I3(\SCALE_SHIFT[0]_35 ),
        .O(\m_axis_tdata[63]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[63]_INST_0_i_46 
       (.I0(\SCALE_SHIFT[1]_18 ),
        .I1(LIMIT[6]),
        .I2(LIMIT[7]),
        .I3(\SCALE_SHIFT[0]_36 ),
        .O(\m_axis_tdata[63]_INST_0_i_46_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[63]_INST_0_i_47 
       (.I0(\SCALE_SHIFT[0]_32 ),
        .I1(LIMIT[4]),
        .I2(LIMIT[5]),
        .I3(\SCALE_SHIFT[0]_33 ),
        .O(\m_axis_tdata[63]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[63]_INST_0_i_48 
       (.I0(\SCALE_SHIFT[0]_30 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[3]),
        .I3(\SCALE_SHIFT[0]_31 ),
        .O(\m_axis_tdata[63]_INST_0_i_48_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[63]_INST_0_i_49 
       (.I0(\SCALE_SHIFT[1]_13 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_29 ),
        .O(\m_axis_tdata[63]_INST_0_i_49_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[63]_INST_0_i_5 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[63]_INST_0_i_5_n_0 ,\m_axis_tdata[63]_INST_0_i_5_n_1 ,\m_axis_tdata[63]_INST_0_i_5_n_2 ,\m_axis_tdata[63]_INST_0_i_5_n_3 ,\m_axis_tdata[63]_INST_0_i_5_n_4 ,\m_axis_tdata[63]_INST_0_i_5_n_5 ,\m_axis_tdata[63]_INST_0_i_5_n_6 ,\m_axis_tdata[63]_INST_0_i_5_n_7 }),
        .DI({\m_axis_tdata[63]_INST_0_i_42_n_0 ,\m_axis_tdata[63]_INST_0_i_43_n_0 ,\m_axis_tdata[63]_INST_0_i_44_n_0 ,\m_axis_tdata[63]_INST_0_i_45_n_0 ,\m_axis_tdata[63]_INST_0_i_46_n_0 ,\m_axis_tdata[63]_INST_0_i_47_n_0 ,\m_axis_tdata[63]_INST_0_i_48_n_0 ,\m_axis_tdata[63]_INST_0_i_49_n_0 }),
        .O(\NLW_m_axis_tdata[63]_INST_0_i_5_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[63]_INST_0_i_50_n_0 ,\m_axis_tdata[63]_INST_0_i_51_n_0 ,\m_axis_tdata[63]_INST_0_i_52_n_0 ,\m_axis_tdata[63]_INST_0_i_53_n_0 ,\m_axis_tdata[63]_INST_0_i_54_n_0 ,\m_axis_tdata[63]_INST_0_i_55_n_0 ,\m_axis_tdata[63]_INST_0_i_56_n_0 ,\m_axis_tdata[63]_INST_0_i_57_n_0 }));
  LUT2 #(
    .INIT(4'h1)) 
    \m_axis_tdata[63]_INST_0_i_50 
       (.I0(\SCALE_SHIFT[1]_16 ),
        .I1(\SCALE_SHIFT[1]_17 ),
        .O(\m_axis_tdata[63]_INST_0_i_50_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[63]_INST_0_i_51 
       (.I0(\SCALE_SHIFT[1]_14 ),
        .I1(LIMIT[12]),
        .I2(\SCALE_SHIFT[1]_15 ),
        .I3(LIMIT[13]),
        .O(\m_axis_tdata[63]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[63]_INST_0_i_52 
       (.I0(\SCALE_SHIFT[0]_37 ),
        .I1(LIMIT[10]),
        .I2(\SCALE_SHIFT[0]_38 ),
        .I3(LIMIT[11]),
        .O(\m_axis_tdata[63]_INST_0_i_52_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[63]_INST_0_i_53 
       (.I0(\SCALE_SHIFT[0]_34 ),
        .I1(LIMIT[8]),
        .I2(\SCALE_SHIFT[0]_35 ),
        .I3(LIMIT[9]),
        .O(\m_axis_tdata[63]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[63]_INST_0_i_54 
       (.I0(\SCALE_SHIFT[1]_18 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[0]_36 ),
        .I3(LIMIT[7]),
        .O(\m_axis_tdata[63]_INST_0_i_54_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[63]_INST_0_i_55 
       (.I0(\SCALE_SHIFT[0]_32 ),
        .I1(LIMIT[4]),
        .I2(\SCALE_SHIFT[0]_33 ),
        .I3(LIMIT[5]),
        .O(\m_axis_tdata[63]_INST_0_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[63]_INST_0_i_56 
       (.I0(\SCALE_SHIFT[0]_30 ),
        .I1(LIMIT[2]),
        .I2(\SCALE_SHIFT[0]_31 ),
        .I3(LIMIT[3]),
        .O(\m_axis_tdata[63]_INST_0_i_56_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[63]_INST_0_i_57 
       (.I0(\SCALE_SHIFT[1]_13 ),
        .I1(LIMIT[0]),
        .I2(\SCALE_SHIFT[0]_29 ),
        .I3(LIMIT[1]),
        .O(\m_axis_tdata[63]_INST_0_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[63]_INST_0_i_58 
       (.I0(\m_axis_tdata[63]_INST_0_i_93_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[63]_INST_0_i_94_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_58_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \m_axis_tdata[63]_INST_0_i_59 
       (.I0(\m_axis_tdata[63]_INST_0_i_95_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[63]_INST_0_i_96_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[63]_INST_0_i_97_n_0 ),
        .I5(\m_axis_tdata[63]_INST_0_i_98_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_59_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[63]_INST_0_i_6 
       (.I0(\m_axis_tdata[63]_INST_0_i_58_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_59_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_60_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[63]_INST_0_i_60 
       (.I0(\m_axis_tdata[63]_INST_0_i_59_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_94_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[63]_INST_0_i_99_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_60_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[63]_INST_0_i_61 
       (.I0(\m_axis_tdata[63]_INST_0_i_100_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[63]_INST_0_i_101_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[63]_INST_0_i_93_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_61_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[63]_INST_0_i_62 
       (.I0(\m_axis_tdata[63]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[63]_INST_0_i_97_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_95_n_0 ),
        .I4(\m_axis_tdata[63]_INST_0_i_96_n_0 ),
        .I5(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[63]_INST_0_i_62_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[63]_INST_0_i_63 
       (.I0(\m_axis_tdata[63]_INST_0_i_100_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[63]_INST_0_i_101_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_103_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[63]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[63]_INST_0_i_64 
       (.I0(\m_axis_tdata[63]_INST_0_i_104_n_0 ),
        .I1(\m_axis_tdata[63]_INST_0_i_95_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[63]_INST_0_i_102_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[63]_INST_0_i_97_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_64_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[63]_INST_0_i_65 
       (.I0(\m_axis_tdata[63]_INST_0_i_105_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[63]_INST_0_i_100_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[63]_INST_0_i_103_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_65_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[63]_INST_0_i_66 
       (.I0(\m_axis_tdata[63]_INST_0_i_106_n_0 ),
        .I1(\m_axis_tdata[63]_INST_0_i_102_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[63]_INST_0_i_104_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[63]_INST_0_i_95_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_66_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[63]_INST_0_i_67 
       (.I0(\m_axis_tdata[63]_INST_0_i_105_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[63]_INST_0_i_100_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_107_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[63]_INST_0_i_67_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[63]_INST_0_i_68 
       (.I0(\m_axis_tdata[63]_INST_0_i_108_n_0 ),
        .I1(\m_axis_tdata[63]_INST_0_i_104_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[63]_INST_0_i_106_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[63]_INST_0_i_102_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_68_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair134" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[63]_INST_0_i_69 
       (.I0(\m_axis_tdata[63]_INST_0_i_109_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[63]_INST_0_i_107_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_69_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[63]_INST_0_i_7 
       (.I0(\m_axis_tdata[63]_INST_0_i_61_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_62_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_58_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[63]_INST_0_i_70 
       (.I0(\m_axis_tdata[63]_INST_0_i_108_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[63]_INST_0_i_104_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_110_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[63]_INST_0_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair135" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[63]_INST_0_i_71 
       (.I0(\m_axis_tdata[63]_INST_0_i_92_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[63]_INST_0_i_109_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_71_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[63]_INST_0_i_72 
       (.I0(\m_axis_tdata[63]_INST_0_i_111_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[63]_INST_0_i_110_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_72_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair133" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[63]_INST_0_i_73 
       (.I0(\m_axis_tdata[63]_INST_0_i_40_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[63]_INST_0_i_111_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_73_n_0 ));
  LUT3 #(
    .INIT(8'h13)) 
    \m_axis_tdata[63]_INST_0_i_74 
       (.I0(\SCALE_SHIFT[1]_16 ),
        .I1(\LIMIT[12]_0 ),
        .I2(\SCALE_SHIFT[1]_17 ),
        .O(\m_axis_tdata[63]_INST_0_i_74_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[63]_INST_0_i_75 
       (.I0(\SCALE_SHIFT[1]_14 ),
        .I1(LIMIT_11_sn_1),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_15 ),
        .O(\m_axis_tdata[63]_INST_0_i_75_n_0 ));
  LUT5 #(
    .INIT(32'h0009999F)) 
    \m_axis_tdata[63]_INST_0_i_76 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\SCALE_SHIFT[0]_37 ),
        .I3(\LIMIT[9]_0 ),
        .I4(\SCALE_SHIFT[0]_38 ),
        .O(\m_axis_tdata[63]_INST_0_i_76_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[63]_INST_0_i_77 
       (.I0(\SCALE_SHIFT[0]_34 ),
        .I1(LIMIT_7_sn_1),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_35 ),
        .O(\m_axis_tdata[63]_INST_0_i_77_n_0 ));
  LUT5 #(
    .INIT(32'h000909FF)) 
    \m_axis_tdata[63]_INST_0_i_78 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_18 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_36 ),
        .O(\m_axis_tdata[63]_INST_0_i_78_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[63]_INST_0_i_79 
       (.I0(\SCALE_SHIFT[0]_32 ),
        .I1(LIMIT_3_sn_1),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_33 ),
        .O(\m_axis_tdata[63]_INST_0_i_79_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[63]_INST_0_i_8 
       (.I0(\m_axis_tdata[63]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_61_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h000011141117FFFC)) 
    \m_axis_tdata[63]_INST_0_i_80 
       (.I0(\SCALE_SHIFT[0]_30 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_31 ),
        .O(\m_axis_tdata[63]_INST_0_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h047C)) 
    \m_axis_tdata[63]_INST_0_i_81 
       (.I0(\SCALE_SHIFT[1]_13 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_29 ),
        .O(\m_axis_tdata[63]_INST_0_i_81_n_0 ));
  LUT3 #(
    .INIT(8'h24)) 
    \m_axis_tdata[63]_INST_0_i_82 
       (.I0(\SCALE_SHIFT[1]_16 ),
        .I1(\LIMIT[12]_0 ),
        .I2(\SCALE_SHIFT[1]_17 ),
        .O(\m_axis_tdata[63]_INST_0_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[63]_INST_0_i_83 
       (.I0(LIMIT_11_sn_1),
        .I1(\SCALE_SHIFT[1]_14 ),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_15 ),
        .O(\m_axis_tdata[63]_INST_0_i_83_n_0 ));
  LUT5 #(
    .INIT(32'h09900660)) 
    \m_axis_tdata[63]_INST_0_i_84 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\LIMIT[9]_0 ),
        .I3(\SCALE_SHIFT[0]_37 ),
        .I4(\SCALE_SHIFT[0]_38 ),
        .O(\m_axis_tdata[63]_INST_0_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[63]_INST_0_i_85 
       (.I0(LIMIT_7_sn_1),
        .I1(\SCALE_SHIFT[0]_34 ),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_35 ),
        .O(\m_axis_tdata[63]_INST_0_i_85_n_0 ));
  LUT5 #(
    .INIT(32'h00969600)) 
    \m_axis_tdata[63]_INST_0_i_86 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_18 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_36 ),
        .O(\m_axis_tdata[63]_INST_0_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[63]_INST_0_i_87 
       (.I0(LIMIT_3_sn_1),
        .I1(\SCALE_SHIFT[0]_32 ),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_33 ),
        .O(\m_axis_tdata[63]_INST_0_i_87_n_0 ));
  LUT6 #(
    .INIT(64'h0001666866680001)) 
    \m_axis_tdata[63]_INST_0_i_88 
       (.I0(\SCALE_SHIFT[0]_30 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_31 ),
        .O(\m_axis_tdata[63]_INST_0_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h1881)) 
    \m_axis_tdata[63]_INST_0_i_89 
       (.I0(\SCALE_SHIFT[1]_13 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_29 ),
        .O(\m_axis_tdata[63]_INST_0_i_89_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[63]_INST_0_i_9 
       (.I0(\m_axis_tdata[63]_INST_0_i_65_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[63]_INST_0_i_66_n_0 ),
        .I3(\m_axis_tdata[63]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[63]_INST_0_i_90 
       (.I0(s_axis_tdata[52]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[60]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[63]_INST_0_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[63]_INST_0_i_91 
       (.I0(s_axis_tdata[54]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[62]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[63]_INST_0_i_91_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[63]_INST_0_i_92 
       (.I0(s_axis_tdata[51]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[59]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[63]_INST_0_i_112_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_92_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \m_axis_tdata[63]_INST_0_i_93 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[55]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[63]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[63]_INST_0_i_113_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_93_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair128" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[63]_INST_0_i_94 
       (.I0(\m_axis_tdata[63]_INST_0_i_101_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[63]_INST_0_i_114_n_0 ),
        .O(\m_axis_tdata[63]_INST_0_i_94_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[63]_INST_0_i_95 
       (.I0(s_axis_tdata[48]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[56]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[63]),
        .O(\m_axis_tdata[63]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[63]_INST_0_i_96 
       (.I0(s_axis_tdata[52]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[60]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[63]),
        .O(\m_axis_tdata[63]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[63]_INST_0_i_97 
       (.I0(s_axis_tdata[50]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[58]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[63]),
        .O(\m_axis_tdata[63]_INST_0_i_97_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[63]_INST_0_i_98 
       (.I0(s_axis_tdata[54]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[62]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[63]),
        .O(\m_axis_tdata[63]_INST_0_i_98_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \m_axis_tdata[63]_INST_0_i_99 
       (.I0(\m_axis_tdata[63]_INST_0_i_113_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[55]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[3]),
        .I5(s_axis_tdata[63]),
        .O(\m_axis_tdata[63]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[64]_INST_0_i_1 
       (.I0(SCALE_SHIFT[1]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[64]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_19 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[65]_INST_0_i_1 
       (.I0(\m_axis_tdata[65]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[66]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_39 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[65]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[64]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[65]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[66]_INST_0_i_1 
       (.I0(\m_axis_tdata[66]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[67]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_40 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[66]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[65]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[66]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair144" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[67]_INST_0_i_1 
       (.I0(\m_axis_tdata[67]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[68]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_41 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[67]_INST_0_i_2 
       (.I0(s_axis_tdata[64]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[66]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[67]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[68]_INST_0_i_1 
       (.I0(\m_axis_tdata[68]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[69]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_42 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[68]_INST_0_i_2 
       (.I0(s_axis_tdata[65]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[67]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[68]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair143" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[69]_INST_0_i_1 
       (.I0(\m_axis_tdata[69]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[70]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_43 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[69]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[66]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[71]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[69]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[6]_INST_0_i_1 
       (.I0(\m_axis_tdata[7]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[9]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[6]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_2 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[6]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[3]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[8]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[6]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[70]_INST_0_i_1 
       (.I0(\m_axis_tdata[71]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[73]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[70]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_22 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[70]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[67]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[72]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[70]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[71]_INST_0_i_1 
       (.I0(\m_axis_tdata[71]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[73]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[72]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[74]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_46 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[71]_INST_0_i_2 
       (.I0(s_axis_tdata[64]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[68]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[71]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[72]_INST_0_i_1 
       (.I0(\m_axis_tdata[72]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[74]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[73]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[75]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_44 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[72]_INST_0_i_2 
       (.I0(s_axis_tdata[65]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[69]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[72]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[73]_INST_0_i_1 
       (.I0(\m_axis_tdata[73]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[75]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[74]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[76]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_45 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[73]_INST_0_i_2 
       (.I0(s_axis_tdata[66]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[70]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[73]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[74]_INST_0_i_1 
       (.I0(\m_axis_tdata[74]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[76]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[75]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[77]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_47 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[74]_INST_0_i_2 
       (.I0(s_axis_tdata[67]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[71]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[74]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[75]_INST_0_i_1 
       (.I0(\m_axis_tdata[75]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[77]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[76]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[78]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_48 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[75]_INST_0_i_2 
       (.I0(s_axis_tdata[68]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[64]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[72]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[75]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[76]_INST_0_i_1 
       (.I0(\m_axis_tdata[76]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[78]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[77]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[79]_INST_0_i_5_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_20 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[76]_INST_0_i_2 
       (.I0(s_axis_tdata[69]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[65]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[73]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[76]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[77]_INST_0_i_1 
       (.I0(\m_axis_tdata[77]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[79]_INST_0_i_5_n_0 ),
        .I3(SCALE_SHIFT[0]),
        .I4(\SCALE_SHIFT[1]_87 ),
        .O(\SCALE_SHIFT[1]_21 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[77]_INST_0_i_2 
       (.I0(s_axis_tdata[70]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[66]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[74]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[77]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[78]_INST_0_i_1 
       (.I0(\m_axis_tdata[78]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[79]_INST_0_i_7_n_0 ),
        .O(\SCALE_SHIFT[1]_87 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[78]_INST_0_i_2 
       (.I0(s_axis_tdata[71]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[67]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[75]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[78]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair142" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[79]_INST_0_i_1 
       (.I0(\m_axis_tdata[79]_INST_0_i_5_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[79]_INST_0_i_6_n_0 ),
        .O(\SCALE_SHIFT[1]_85 ));
  LUT5 #(
    .INIT(32'hFF004700)) 
    \m_axis_tdata[79]_INST_0_i_10 
       (.I0(\m_axis_tdata[79]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[79]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[79]_INST_0_i_100 
       (.I0(s_axis_tdata[70]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[78]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[79]),
        .O(\m_axis_tdata[79]_INST_0_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \m_axis_tdata[79]_INST_0_i_101 
       (.I0(\m_axis_tdata[79]_INST_0_i_114_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[71]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[3]),
        .I5(s_axis_tdata[79]),
        .O(\m_axis_tdata[79]_INST_0_i_101_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[79]_INST_0_i_102 
       (.I0(s_axis_tdata[77]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[69]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[79]),
        .O(\m_axis_tdata[79]_INST_0_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[79]_INST_0_i_103 
       (.I0(s_axis_tdata[65]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[73]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[79]),
        .O(\m_axis_tdata[79]_INST_0_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[79]_INST_0_i_104 
       (.I0(s_axis_tdata[78]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[70]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[79]),
        .O(\m_axis_tdata[79]_INST_0_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888888)) 
    \m_axis_tdata[79]_INST_0_i_105 
       (.I0(\m_axis_tdata[79]_INST_0_i_116_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[71]),
        .I4(SCALE_SHIFT[4]),
        .I5(s_axis_tdata[79]),
        .O(\m_axis_tdata[79]_INST_0_i_105_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[79]_INST_0_i_106 
       (.I0(s_axis_tdata[76]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[68]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[79]),
        .O(\m_axis_tdata[79]_INST_0_i_106_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[79]_INST_0_i_107 
       (.I0(s_axis_tdata[73]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[65]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[79]),
        .O(\m_axis_tdata[79]_INST_0_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[79]_INST_0_i_108 
       (.I0(s_axis_tdata[74]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[66]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[79]),
        .O(\m_axis_tdata[79]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[79]_INST_0_i_109 
       (.I0(s_axis_tdata[71]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[79]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[79]_INST_0_i_116_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_109_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[79]_INST_0_i_11 
       (.I0(\m_axis_tdata[79]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[79]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[79]_INST_0_i_110 
       (.I0(s_axis_tdata[72]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[64]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[79]),
        .O(\m_axis_tdata[79]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[79]_INST_0_i_111 
       (.I0(s_axis_tdata[69]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[77]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[79]_INST_0_i_107_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[79]_INST_0_i_112 
       (.I0(s_axis_tdata[70]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[78]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[79]_INST_0_i_108_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[79]_INST_0_i_113 
       (.I0(s_axis_tdata[68]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[76]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[79]_INST_0_i_110_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[79]_INST_0_i_114 
       (.I0(s_axis_tdata[67]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[75]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[79]),
        .O(\m_axis_tdata[79]_INST_0_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[79]_INST_0_i_115 
       (.I0(s_axis_tdata[69]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[77]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[79]),
        .O(\m_axis_tdata[79]_INST_0_i_115_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[79]_INST_0_i_116 
       (.I0(s_axis_tdata[75]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[67]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[79]),
        .O(\m_axis_tdata[79]_INST_0_i_116_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[79]_INST_0_i_12 
       (.I0(\m_axis_tdata[79]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[79]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[79]_INST_0_i_13 
       (.I0(\m_axis_tdata[79]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[79]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[79]_INST_0_i_14 
       (.I0(\m_axis_tdata[79]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[79]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[79]_INST_0_i_15 
       (.I0(\m_axis_tdata[79]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_72_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[79]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[79]_INST_0_i_16 
       (.I0(\m_axis_tdata[79]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_74_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[79]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[79]_INST_0_i_17 
       (.I0(\SCALE_SHIFT[1]_86 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_76_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[79]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h0047B800)) 
    \m_axis_tdata[79]_INST_0_i_18 
       (.I0(\m_axis_tdata[79]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[79]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[79]_INST_0_i_19 
       (.I0(\m_axis_tdata[79]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[79]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[79]_INST_0_i_2 
       (.I0(\m_axis_tdata[79]_INST_0_i_7_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[79]_INST_0_i_8_n_0 ),
        .O(\SCALE_SHIFT[1]_86 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[79]_INST_0_i_20 
       (.I0(\m_axis_tdata[79]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[79]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[79]_INST_0_i_21 
       (.I0(\m_axis_tdata[79]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[79]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[79]_INST_0_i_22 
       (.I0(\m_axis_tdata[79]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[79]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[79]_INST_0_i_23 
       (.I0(\m_axis_tdata[79]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_72_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[79]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[79]_INST_0_i_24 
       (.I0(\m_axis_tdata[79]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_74_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[79]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[79]_INST_0_i_25 
       (.I0(\SCALE_SHIFT[1]_86 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_76_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[79]_INST_0_i_25_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[79]_INST_0_i_26 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[79]_INST_0_i_26_n_0 ,\m_axis_tdata[79]_INST_0_i_26_n_1 ,\m_axis_tdata[79]_INST_0_i_26_n_2 ,\m_axis_tdata[79]_INST_0_i_26_n_3 ,\m_axis_tdata[79]_INST_0_i_26_n_4 ,\m_axis_tdata[79]_INST_0_i_26_n_5 ,\m_axis_tdata[79]_INST_0_i_26_n_6 ,\m_axis_tdata[79]_INST_0_i_26_n_7 }),
        .DI({\m_axis_tdata[79]_INST_0_i_79_n_0 ,\m_axis_tdata[79]_INST_0_i_80_n_0 ,\m_axis_tdata[79]_INST_0_i_81_n_0 ,\m_axis_tdata[79]_INST_0_i_82_n_0 ,\m_axis_tdata[79]_INST_0_i_83_n_0 ,\m_axis_tdata[79]_INST_0_i_84_n_0 ,\m_axis_tdata[79]_INST_0_i_85_n_0 ,\m_axis_tdata[79]_INST_0_i_86_n_0 }),
        .O(\NLW_m_axis_tdata[79]_INST_0_i_26_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[79]_INST_0_i_87_n_0 ,\m_axis_tdata[79]_INST_0_i_88_n_0 ,\m_axis_tdata[79]_INST_0_i_89_n_0 ,\m_axis_tdata[79]_INST_0_i_90_n_0 ,\m_axis_tdata[79]_INST_0_i_91_n_0 ,\m_axis_tdata[79]_INST_0_i_92_n_0 ,\m_axis_tdata[79]_INST_0_i_93_n_0 ,\m_axis_tdata[79]_INST_0_i_94_n_0 }));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[79]_INST_0_i_27 
       (.I0(\m_axis_tdata[79]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[79]_INST_0_i_28 
       (.I0(\m_axis_tdata[79]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[79]_INST_0_i_29 
       (.I0(\m_axis_tdata[79]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_29_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[79]_INST_0_i_3 
       (.CI(\m_axis_tdata[79]_INST_0_i_9_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_169 ,\m_axis_tdata[79]_INST_0_i_3_n_1 ,\m_axis_tdata[79]_INST_0_i_3_n_2 ,\m_axis_tdata[79]_INST_0_i_3_n_3 ,\m_axis_tdata[79]_INST_0_i_3_n_4 ,\m_axis_tdata[79]_INST_0_i_3_n_5 ,\m_axis_tdata[79]_INST_0_i_3_n_6 ,\m_axis_tdata[79]_INST_0_i_3_n_7 }),
        .DI({\m_axis_tdata[79]_INST_0_i_10_n_0 ,\m_axis_tdata[79]_INST_0_i_11_n_0 ,\m_axis_tdata[79]_INST_0_i_12_n_0 ,\m_axis_tdata[79]_INST_0_i_13_n_0 ,\m_axis_tdata[79]_INST_0_i_14_n_0 ,\m_axis_tdata[79]_INST_0_i_15_n_0 ,\m_axis_tdata[79]_INST_0_i_16_n_0 ,\m_axis_tdata[79]_INST_0_i_17_n_0 }),
        .O(\NLW_m_axis_tdata[79]_INST_0_i_3_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[79]_INST_0_i_18_n_0 ,\m_axis_tdata[79]_INST_0_i_19_n_0 ,\m_axis_tdata[79]_INST_0_i_20_n_0 ,\m_axis_tdata[79]_INST_0_i_21_n_0 ,\m_axis_tdata[79]_INST_0_i_22_n_0 ,\m_axis_tdata[79]_INST_0_i_23_n_0 ,\m_axis_tdata[79]_INST_0_i_24_n_0 ,\m_axis_tdata[79]_INST_0_i_25_n_0 }));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[79]_INST_0_i_30 
       (.I0(\m_axis_tdata[79]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[79]_INST_0_i_31 
       (.I0(\m_axis_tdata[79]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[79]_INST_0_i_32 
       (.I0(\m_axis_tdata[79]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_72_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[79]_INST_0_i_33 
       (.I0(\m_axis_tdata[79]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_74_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[79]_INST_0_i_34 
       (.I0(\SCALE_SHIFT[1]_86 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_76_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \m_axis_tdata[79]_INST_0_i_35 
       (.I0(\m_axis_tdata[79]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[79]_INST_0_i_36 
       (.I0(\m_axis_tdata[79]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[79]_INST_0_i_37 
       (.I0(\m_axis_tdata[79]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[79]_INST_0_i_38 
       (.I0(\m_axis_tdata[79]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[79]_INST_0_i_39 
       (.I0(\m_axis_tdata[79]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_39_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[79]_INST_0_i_4 
       (.CI(\m_axis_tdata[79]_INST_0_i_26_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_168 ,\m_axis_tdata[79]_INST_0_i_4_n_1 ,\m_axis_tdata[79]_INST_0_i_4_n_2 ,\m_axis_tdata[79]_INST_0_i_4_n_3 ,\m_axis_tdata[79]_INST_0_i_4_n_4 ,\m_axis_tdata[79]_INST_0_i_4_n_5 ,\m_axis_tdata[79]_INST_0_i_4_n_6 ,\m_axis_tdata[79]_INST_0_i_4_n_7 }),
        .DI({\m_axis_tdata[79]_INST_0_i_27_n_0 ,\m_axis_tdata[79]_INST_0_i_28_n_0 ,\m_axis_tdata[79]_INST_0_i_29_n_0 ,\m_axis_tdata[79]_INST_0_i_30_n_0 ,\m_axis_tdata[79]_INST_0_i_31_n_0 ,\m_axis_tdata[79]_INST_0_i_32_n_0 ,\m_axis_tdata[79]_INST_0_i_33_n_0 ,\m_axis_tdata[79]_INST_0_i_34_n_0 }),
        .O(\NLW_m_axis_tdata[79]_INST_0_i_4_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[79]_INST_0_i_35_n_0 ,\m_axis_tdata[79]_INST_0_i_36_n_0 ,\m_axis_tdata[79]_INST_0_i_37_n_0 ,\m_axis_tdata[79]_INST_0_i_38_n_0 ,\m_axis_tdata[79]_INST_0_i_39_n_0 ,\m_axis_tdata[79]_INST_0_i_40_n_0 ,\m_axis_tdata[79]_INST_0_i_41_n_0 ,\m_axis_tdata[79]_INST_0_i_42_n_0 }));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[79]_INST_0_i_40 
       (.I0(\m_axis_tdata[79]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_72_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[79]_INST_0_i_41 
       (.I0(\m_axis_tdata[79]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_74_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[79]_INST_0_i_42 
       (.I0(\SCALE_SHIFT[1]_86 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_76_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[79]_INST_0_i_43 
       (.I0(s_axis_tdata[68]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[76]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[79]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[79]_INST_0_i_44 
       (.I0(s_axis_tdata[70]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[78]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[79]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[79]_INST_0_i_45 
       (.I0(s_axis_tdata[69]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[77]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[79]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[79]_INST_0_i_46 
       (.I0(s_axis_tdata[71]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[79]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[79]_INST_0_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[79]_INST_0_i_47 
       (.I0(\SCALE_SHIFT[1]_87 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_85 ),
        .I3(\SCALE_SHIFT[1]_86 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[79]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[79]_INST_0_i_48 
       (.I0(\SCALE_SHIFT[1]_20 ),
        .I1(LIMIT_11_sn_1),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_21 ),
        .O(\m_axis_tdata[79]_INST_0_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h0009999F)) 
    \m_axis_tdata[79]_INST_0_i_49 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\SCALE_SHIFT[0]_47 ),
        .I3(\LIMIT[9]_0 ),
        .I4(\SCALE_SHIFT[0]_48 ),
        .O(\m_axis_tdata[79]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[79]_INST_0_i_5 
       (.I0(s_axis_tdata[64]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[72]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[79]_INST_0_i_43_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[79]_INST_0_i_50 
       (.I0(\SCALE_SHIFT[0]_44 ),
        .I1(LIMIT_7_sn_1),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_45 ),
        .O(\m_axis_tdata[79]_INST_0_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h000909FF)) 
    \m_axis_tdata[79]_INST_0_i_51 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_22 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_46 ),
        .O(\m_axis_tdata[79]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[79]_INST_0_i_52 
       (.I0(\SCALE_SHIFT[0]_42 ),
        .I1(LIMIT_3_sn_1),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_43 ),
        .O(\m_axis_tdata[79]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h000011141117FFFC)) 
    \m_axis_tdata[79]_INST_0_i_53 
       (.I0(\SCALE_SHIFT[0]_40 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_41 ),
        .O(\m_axis_tdata[79]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h047C)) 
    \m_axis_tdata[79]_INST_0_i_54 
       (.I0(\SCALE_SHIFT[1]_19 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_39 ),
        .O(\m_axis_tdata[79]_INST_0_i_54_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[79]_INST_0_i_55 
       (.I0(\SCALE_SHIFT[1]_87 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_85 ),
        .I3(\SCALE_SHIFT[1]_86 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[79]_INST_0_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[79]_INST_0_i_56 
       (.I0(LIMIT_11_sn_1),
        .I1(\SCALE_SHIFT[1]_20 ),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_21 ),
        .O(\m_axis_tdata[79]_INST_0_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h09900660)) 
    \m_axis_tdata[79]_INST_0_i_57 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\LIMIT[9]_0 ),
        .I3(\SCALE_SHIFT[0]_47 ),
        .I4(\SCALE_SHIFT[0]_48 ),
        .O(\m_axis_tdata[79]_INST_0_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[79]_INST_0_i_58 
       (.I0(LIMIT_7_sn_1),
        .I1(\SCALE_SHIFT[0]_44 ),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_45 ),
        .O(\m_axis_tdata[79]_INST_0_i_58_n_0 ));
  LUT5 #(
    .INIT(32'h00969600)) 
    \m_axis_tdata[79]_INST_0_i_59 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_22 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_46 ),
        .O(\m_axis_tdata[79]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[79]_INST_0_i_6 
       (.I0(s_axis_tdata[66]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[74]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[79]_INST_0_i_44_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[79]_INST_0_i_60 
       (.I0(LIMIT_3_sn_1),
        .I1(\SCALE_SHIFT[0]_42 ),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_43 ),
        .O(\m_axis_tdata[79]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h0001666866680001)) 
    \m_axis_tdata[79]_INST_0_i_61 
       (.I0(\SCALE_SHIFT[0]_40 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_41 ),
        .O(\m_axis_tdata[79]_INST_0_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h1881)) 
    \m_axis_tdata[79]_INST_0_i_62 
       (.I0(\SCALE_SHIFT[1]_19 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_39 ),
        .O(\m_axis_tdata[79]_INST_0_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[79]_INST_0_i_63 
       (.I0(\m_axis_tdata[79]_INST_0_i_95_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[79]_INST_0_i_96_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \m_axis_tdata[79]_INST_0_i_64 
       (.I0(\m_axis_tdata[79]_INST_0_i_97_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[79]_INST_0_i_98_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[79]_INST_0_i_99_n_0 ),
        .I5(\m_axis_tdata[79]_INST_0_i_100_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_64_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[79]_INST_0_i_65 
       (.I0(\m_axis_tdata[79]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[79]_INST_0_i_96_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[79]_INST_0_i_101_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_65_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[79]_INST_0_i_66 
       (.I0(\m_axis_tdata[79]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[79]_INST_0_i_103_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[79]_INST_0_i_95_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[79]_INST_0_i_67 
       (.I0(\m_axis_tdata[79]_INST_0_i_104_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[79]_INST_0_i_99_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_97_n_0 ),
        .I4(\m_axis_tdata[79]_INST_0_i_98_n_0 ),
        .I5(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[79]_INST_0_i_67_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[79]_INST_0_i_68 
       (.I0(\m_axis_tdata[79]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[79]_INST_0_i_103_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_105_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[79]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[79]_INST_0_i_69 
       (.I0(\m_axis_tdata[79]_INST_0_i_106_n_0 ),
        .I1(\m_axis_tdata[79]_INST_0_i_97_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[79]_INST_0_i_104_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[79]_INST_0_i_99_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[79]_INST_0_i_7 
       (.I0(s_axis_tdata[65]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[73]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[79]_INST_0_i_45_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[79]_INST_0_i_70 
       (.I0(\m_axis_tdata[79]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[79]_INST_0_i_102_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[79]_INST_0_i_105_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[79]_INST_0_i_71 
       (.I0(\m_axis_tdata[79]_INST_0_i_108_n_0 ),
        .I1(\m_axis_tdata[79]_INST_0_i_104_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[79]_INST_0_i_106_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[79]_INST_0_i_97_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_71_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[79]_INST_0_i_72 
       (.I0(\m_axis_tdata[79]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[79]_INST_0_i_102_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_109_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[79]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[79]_INST_0_i_73 
       (.I0(\m_axis_tdata[79]_INST_0_i_110_n_0 ),
        .I1(\m_axis_tdata[79]_INST_0_i_106_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[79]_INST_0_i_108_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[79]_INST_0_i_104_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_73_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair139" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[79]_INST_0_i_74 
       (.I0(\m_axis_tdata[79]_INST_0_i_111_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[79]_INST_0_i_109_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_74_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[79]_INST_0_i_75 
       (.I0(\m_axis_tdata[79]_INST_0_i_110_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[79]_INST_0_i_106_n_0 ),
        .I3(\m_axis_tdata[79]_INST_0_i_112_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[79]_INST_0_i_75_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair141" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[79]_INST_0_i_76 
       (.I0(\m_axis_tdata[79]_INST_0_i_8_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[79]_INST_0_i_111_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[79]_INST_0_i_77 
       (.I0(\m_axis_tdata[79]_INST_0_i_113_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[79]_INST_0_i_112_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_77_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair138" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[79]_INST_0_i_78 
       (.I0(\m_axis_tdata[79]_INST_0_i_6_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[79]_INST_0_i_113_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_78_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[79]_INST_0_i_79 
       (.I0(\SCALE_SHIFT[1]_87 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_85 ),
        .I3(\SCALE_SHIFT[1]_86 ),
        .O(\m_axis_tdata[79]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[79]_INST_0_i_8 
       (.I0(s_axis_tdata[67]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[75]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[79]_INST_0_i_46_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[79]_INST_0_i_80 
       (.I0(\SCALE_SHIFT[1]_20 ),
        .I1(LIMIT[12]),
        .I2(LIMIT[13]),
        .I3(\SCALE_SHIFT[1]_21 ),
        .O(\m_axis_tdata[79]_INST_0_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[79]_INST_0_i_81 
       (.I0(\SCALE_SHIFT[0]_47 ),
        .I1(LIMIT[10]),
        .I2(LIMIT[11]),
        .I3(\SCALE_SHIFT[0]_48 ),
        .O(\m_axis_tdata[79]_INST_0_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[79]_INST_0_i_82 
       (.I0(\SCALE_SHIFT[0]_44 ),
        .I1(LIMIT[8]),
        .I2(LIMIT[9]),
        .I3(\SCALE_SHIFT[0]_45 ),
        .O(\m_axis_tdata[79]_INST_0_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[79]_INST_0_i_83 
       (.I0(\SCALE_SHIFT[1]_22 ),
        .I1(LIMIT[6]),
        .I2(LIMIT[7]),
        .I3(\SCALE_SHIFT[0]_46 ),
        .O(\m_axis_tdata[79]_INST_0_i_83_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[79]_INST_0_i_84 
       (.I0(\SCALE_SHIFT[0]_42 ),
        .I1(LIMIT[4]),
        .I2(LIMIT[5]),
        .I3(\SCALE_SHIFT[0]_43 ),
        .O(\m_axis_tdata[79]_INST_0_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[79]_INST_0_i_85 
       (.I0(\SCALE_SHIFT[0]_40 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[3]),
        .I3(\SCALE_SHIFT[0]_41 ),
        .O(\m_axis_tdata[79]_INST_0_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[79]_INST_0_i_86 
       (.I0(\SCALE_SHIFT[1]_19 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_39 ),
        .O(\m_axis_tdata[79]_INST_0_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[79]_INST_0_i_87 
       (.I0(\SCALE_SHIFT[1]_87 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_85 ),
        .I3(\SCALE_SHIFT[1]_86 ),
        .O(\m_axis_tdata[79]_INST_0_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[79]_INST_0_i_88 
       (.I0(\SCALE_SHIFT[1]_20 ),
        .I1(LIMIT[12]),
        .I2(\SCALE_SHIFT[1]_21 ),
        .I3(LIMIT[13]),
        .O(\m_axis_tdata[79]_INST_0_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[79]_INST_0_i_89 
       (.I0(\SCALE_SHIFT[0]_47 ),
        .I1(LIMIT[10]),
        .I2(\SCALE_SHIFT[0]_48 ),
        .I3(LIMIT[11]),
        .O(\m_axis_tdata[79]_INST_0_i_89_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[79]_INST_0_i_9 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[79]_INST_0_i_9_n_0 ,\m_axis_tdata[79]_INST_0_i_9_n_1 ,\m_axis_tdata[79]_INST_0_i_9_n_2 ,\m_axis_tdata[79]_INST_0_i_9_n_3 ,\m_axis_tdata[79]_INST_0_i_9_n_4 ,\m_axis_tdata[79]_INST_0_i_9_n_5 ,\m_axis_tdata[79]_INST_0_i_9_n_6 ,\m_axis_tdata[79]_INST_0_i_9_n_7 }),
        .DI({\m_axis_tdata[79]_INST_0_i_47_n_0 ,\m_axis_tdata[79]_INST_0_i_48_n_0 ,\m_axis_tdata[79]_INST_0_i_49_n_0 ,\m_axis_tdata[79]_INST_0_i_50_n_0 ,\m_axis_tdata[79]_INST_0_i_51_n_0 ,\m_axis_tdata[79]_INST_0_i_52_n_0 ,\m_axis_tdata[79]_INST_0_i_53_n_0 ,\m_axis_tdata[79]_INST_0_i_54_n_0 }),
        .O(\NLW_m_axis_tdata[79]_INST_0_i_9_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[79]_INST_0_i_55_n_0 ,\m_axis_tdata[79]_INST_0_i_56_n_0 ,\m_axis_tdata[79]_INST_0_i_57_n_0 ,\m_axis_tdata[79]_INST_0_i_58_n_0 ,\m_axis_tdata[79]_INST_0_i_59_n_0 ,\m_axis_tdata[79]_INST_0_i_60_n_0 ,\m_axis_tdata[79]_INST_0_i_61_n_0 ,\m_axis_tdata[79]_INST_0_i_62_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[79]_INST_0_i_90 
       (.I0(\SCALE_SHIFT[0]_44 ),
        .I1(LIMIT[8]),
        .I2(\SCALE_SHIFT[0]_45 ),
        .I3(LIMIT[9]),
        .O(\m_axis_tdata[79]_INST_0_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[79]_INST_0_i_91 
       (.I0(\SCALE_SHIFT[1]_22 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[0]_46 ),
        .I3(LIMIT[7]),
        .O(\m_axis_tdata[79]_INST_0_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[79]_INST_0_i_92 
       (.I0(\SCALE_SHIFT[0]_42 ),
        .I1(LIMIT[4]),
        .I2(\SCALE_SHIFT[0]_43 ),
        .I3(LIMIT[5]),
        .O(\m_axis_tdata[79]_INST_0_i_92_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[79]_INST_0_i_93 
       (.I0(\SCALE_SHIFT[0]_40 ),
        .I1(LIMIT[2]),
        .I2(\SCALE_SHIFT[0]_41 ),
        .I3(LIMIT[3]),
        .O(\m_axis_tdata[79]_INST_0_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[79]_INST_0_i_94 
       (.I0(\SCALE_SHIFT[1]_19 ),
        .I1(LIMIT[0]),
        .I2(\SCALE_SHIFT[0]_39 ),
        .I3(LIMIT[1]),
        .O(\m_axis_tdata[79]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \m_axis_tdata[79]_INST_0_i_95 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[71]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[79]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[79]_INST_0_i_114_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[79]_INST_0_i_96 
       (.I0(\m_axis_tdata[79]_INST_0_i_103_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[79]_INST_0_i_115_n_0 ),
        .O(\m_axis_tdata[79]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[79]_INST_0_i_97 
       (.I0(s_axis_tdata[64]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[72]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[79]),
        .O(\m_axis_tdata[79]_INST_0_i_97_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[79]_INST_0_i_98 
       (.I0(s_axis_tdata[68]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[76]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[79]),
        .O(\m_axis_tdata[79]_INST_0_i_98_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[79]_INST_0_i_99 
       (.I0(s_axis_tdata[66]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[74]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[79]),
        .O(\m_axis_tdata[79]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[7]_INST_0_i_1 
       (.I0(\m_axis_tdata[7]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[9]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[8]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[10]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_6 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[7]_INST_0_i_2 
       (.I0(s_axis_tdata[0]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[4]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[7]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[80]_INST_0_i_1 
       (.I0(SCALE_SHIFT[1]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[80]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_23 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[81]_INST_0_i_1 
       (.I0(\m_axis_tdata[81]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[82]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_49 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[81]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[80]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[81]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair151" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[82]_INST_0_i_1 
       (.I0(\m_axis_tdata[82]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[83]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_50 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[82]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[81]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[82]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[83]_INST_0_i_1 
       (.I0(\m_axis_tdata[83]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[84]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_51 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[83]_INST_0_i_2 
       (.I0(s_axis_tdata[80]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[82]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[83]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair150" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[84]_INST_0_i_1 
       (.I0(\m_axis_tdata[84]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[85]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_52 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[84]_INST_0_i_2 
       (.I0(s_axis_tdata[81]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[83]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[84]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair145" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[85]_INST_0_i_1 
       (.I0(\m_axis_tdata[85]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[86]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_53 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[85]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[82]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[87]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[85]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[86]_INST_0_i_1 
       (.I0(\m_axis_tdata[87]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[89]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[86]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_26 ));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \m_axis_tdata[86]_INST_0_i_2 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[83]),
        .I2(SCALE_SHIFT[4]),
        .I3(SCALE_SHIFT[2]),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[88]_INST_0_i_2_n_0 ),
        .O(\m_axis_tdata[86]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[87]_INST_0_i_1 
       (.I0(\m_axis_tdata[87]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[89]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[88]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[90]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_56 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[87]_INST_0_i_2 
       (.I0(s_axis_tdata[80]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[84]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[87]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[88]_INST_0_i_1 
       (.I0(\m_axis_tdata[88]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[90]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[89]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[91]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_54 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[88]_INST_0_i_2 
       (.I0(s_axis_tdata[81]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[85]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[88]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[89]_INST_0_i_1 
       (.I0(\m_axis_tdata[89]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[91]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[90]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[92]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_55 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[89]_INST_0_i_2 
       (.I0(s_axis_tdata[82]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[86]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[89]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[8]_INST_0_i_1 
       (.I0(\m_axis_tdata[8]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[10]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[9]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[11]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_4 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[8]_INST_0_i_2 
       (.I0(s_axis_tdata[1]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[5]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[8]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[90]_INST_0_i_1 
       (.I0(\m_axis_tdata[90]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[92]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[91]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[93]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_57 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[90]_INST_0_i_2 
       (.I0(s_axis_tdata[83]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[87]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[90]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[91]_INST_0_i_1 
       (.I0(\m_axis_tdata[91]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[93]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[92]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[94]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_58 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[91]_INST_0_i_2 
       (.I0(s_axis_tdata[84]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[80]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[88]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[91]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[92]_INST_0_i_1 
       (.I0(\m_axis_tdata[92]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[94]_INST_0_i_2_n_0 ),
        .I3(\m_axis_tdata[93]_INST_0_i_2_n_0 ),
        .I4(\m_axis_tdata[95]_INST_0_i_5_n_0 ),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_24 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[92]_INST_0_i_2 
       (.I0(s_axis_tdata[85]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[81]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[89]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[92]_INST_0_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[93]_INST_0_i_1 
       (.I0(\m_axis_tdata[93]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[95]_INST_0_i_5_n_0 ),
        .I3(SCALE_SHIFT[0]),
        .I4(\SCALE_SHIFT[1]_90 ),
        .O(\SCALE_SHIFT[1]_25 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[93]_INST_0_i_2 
       (.I0(s_axis_tdata[86]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[82]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[90]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[93]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[94]_INST_0_i_1 
       (.I0(\m_axis_tdata[94]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[95]_INST_0_i_7_n_0 ),
        .O(\SCALE_SHIFT[1]_90 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \m_axis_tdata[94]_INST_0_i_2 
       (.I0(s_axis_tdata[87]),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[83]),
        .I3(SCALE_SHIFT[3]),
        .I4(s_axis_tdata[91]),
        .I5(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[94]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair149" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[95]_INST_0_i_1 
       (.I0(\m_axis_tdata[95]_INST_0_i_5_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[95]_INST_0_i_6_n_0 ),
        .O(\SCALE_SHIFT[1]_88 ));
  LUT5 #(
    .INIT(32'hFF004700)) 
    \m_axis_tdata[95]_INST_0_i_10 
       (.I0(\m_axis_tdata[95]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[95]_INST_0_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[95]_INST_0_i_100 
       (.I0(s_axis_tdata[86]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[94]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[95]),
        .O(\m_axis_tdata[95]_INST_0_i_100_n_0 ));
  LUT6 #(
    .INIT(64'hB8BBBBBBB8888888)) 
    \m_axis_tdata[95]_INST_0_i_101 
       (.I0(\m_axis_tdata[95]_INST_0_i_114_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(s_axis_tdata[87]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[3]),
        .I5(s_axis_tdata[95]),
        .O(\m_axis_tdata[95]_INST_0_i_101_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[95]_INST_0_i_102 
       (.I0(s_axis_tdata[93]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[85]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[95]),
        .O(\m_axis_tdata[95]_INST_0_i_102_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[95]_INST_0_i_103 
       (.I0(s_axis_tdata[81]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[89]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[95]),
        .O(\m_axis_tdata[95]_INST_0_i_103_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[95]_INST_0_i_104 
       (.I0(s_axis_tdata[94]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[86]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[95]),
        .O(\m_axis_tdata[95]_INST_0_i_104_n_0 ));
  LUT6 #(
    .INIT(64'h8B88BBBB8B888888)) 
    \m_axis_tdata[95]_INST_0_i_105 
       (.I0(\m_axis_tdata[95]_INST_0_i_116_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[87]),
        .I4(SCALE_SHIFT[4]),
        .I5(s_axis_tdata[95]),
        .O(\m_axis_tdata[95]_INST_0_i_105_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[95]_INST_0_i_106 
       (.I0(s_axis_tdata[92]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[84]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[95]),
        .O(\m_axis_tdata[95]_INST_0_i_106_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[95]_INST_0_i_107 
       (.I0(s_axis_tdata[89]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[81]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[95]),
        .O(\m_axis_tdata[95]_INST_0_i_107_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[95]_INST_0_i_108 
       (.I0(s_axis_tdata[90]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[82]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[95]),
        .O(\m_axis_tdata[95]_INST_0_i_108_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[95]_INST_0_i_109 
       (.I0(s_axis_tdata[87]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[95]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[95]_INST_0_i_116_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_109_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[95]_INST_0_i_11 
       (.I0(\m_axis_tdata[95]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[95]_INST_0_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[95]_INST_0_i_110 
       (.I0(s_axis_tdata[88]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[80]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[95]),
        .O(\m_axis_tdata[95]_INST_0_i_110_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[95]_INST_0_i_111 
       (.I0(s_axis_tdata[85]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[93]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[95]_INST_0_i_107_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_111_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[95]_INST_0_i_112 
       (.I0(s_axis_tdata[86]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[94]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[95]_INST_0_i_108_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_112_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[95]_INST_0_i_113 
       (.I0(s_axis_tdata[84]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[92]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[95]_INST_0_i_110_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_113_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[95]_INST_0_i_114 
       (.I0(s_axis_tdata[83]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[91]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[95]),
        .O(\m_axis_tdata[95]_INST_0_i_114_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[95]_INST_0_i_115 
       (.I0(s_axis_tdata[85]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[93]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[95]),
        .O(\m_axis_tdata[95]_INST_0_i_115_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \m_axis_tdata[95]_INST_0_i_116 
       (.I0(s_axis_tdata[91]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[83]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[95]),
        .O(\m_axis_tdata[95]_INST_0_i_116_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[95]_INST_0_i_12 
       (.I0(\m_axis_tdata[95]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[95]_INST_0_i_12_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[95]_INST_0_i_13 
       (.I0(\m_axis_tdata[95]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[95]_INST_0_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[95]_INST_0_i_14 
       (.I0(\m_axis_tdata[95]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[95]_INST_0_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[95]_INST_0_i_15 
       (.I0(\m_axis_tdata[95]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_72_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[95]_INST_0_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[95]_INST_0_i_16 
       (.I0(\m_axis_tdata[95]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_74_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[95]_INST_0_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[95]_INST_0_i_17 
       (.I0(\SCALE_SHIFT[1]_89 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_76_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[95]_INST_0_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h0047B800)) 
    \m_axis_tdata[95]_INST_0_i_18 
       (.I0(\m_axis_tdata[95]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_65_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[95]_INST_0_i_18_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[95]_INST_0_i_19 
       (.I0(\m_axis_tdata[95]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_63_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[95]_INST_0_i_19_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[95]_INST_0_i_2 
       (.I0(\m_axis_tdata[95]_INST_0_i_7_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[95]_INST_0_i_8_n_0 ),
        .O(\SCALE_SHIFT[1]_89 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[95]_INST_0_i_20 
       (.I0(\m_axis_tdata[95]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_66_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[95]_INST_0_i_20_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[95]_INST_0_i_21 
       (.I0(\m_axis_tdata[95]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_68_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[95]_INST_0_i_21_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[95]_INST_0_i_22 
       (.I0(\m_axis_tdata[95]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_70_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[95]_INST_0_i_22_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[95]_INST_0_i_23 
       (.I0(\m_axis_tdata[95]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_72_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[95]_INST_0_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[95]_INST_0_i_24 
       (.I0(\m_axis_tdata[95]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_74_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[95]_INST_0_i_24_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[95]_INST_0_i_25 
       (.I0(\SCALE_SHIFT[1]_89 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_76_n_0 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[95]_INST_0_i_25_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[95]_INST_0_i_26 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[95]_INST_0_i_26_n_0 ,\m_axis_tdata[95]_INST_0_i_26_n_1 ,\m_axis_tdata[95]_INST_0_i_26_n_2 ,\m_axis_tdata[95]_INST_0_i_26_n_3 ,\m_axis_tdata[95]_INST_0_i_26_n_4 ,\m_axis_tdata[95]_INST_0_i_26_n_5 ,\m_axis_tdata[95]_INST_0_i_26_n_6 ,\m_axis_tdata[95]_INST_0_i_26_n_7 }),
        .DI({\m_axis_tdata[95]_INST_0_i_79_n_0 ,\m_axis_tdata[95]_INST_0_i_80_n_0 ,\m_axis_tdata[95]_INST_0_i_81_n_0 ,\m_axis_tdata[95]_INST_0_i_82_n_0 ,\m_axis_tdata[95]_INST_0_i_83_n_0 ,\m_axis_tdata[95]_INST_0_i_84_n_0 ,\m_axis_tdata[95]_INST_0_i_85_n_0 ,\m_axis_tdata[95]_INST_0_i_86_n_0 }),
        .O(\NLW_m_axis_tdata[95]_INST_0_i_26_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[95]_INST_0_i_87_n_0 ,\m_axis_tdata[95]_INST_0_i_88_n_0 ,\m_axis_tdata[95]_INST_0_i_89_n_0 ,\m_axis_tdata[95]_INST_0_i_90_n_0 ,\m_axis_tdata[95]_INST_0_i_91_n_0 ,\m_axis_tdata[95]_INST_0_i_92_n_0 ,\m_axis_tdata[95]_INST_0_i_93_n_0 ,\m_axis_tdata[95]_INST_0_i_94_n_0 }));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[95]_INST_0_i_27 
       (.I0(\m_axis_tdata[95]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_27_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[95]_INST_0_i_28 
       (.I0(\m_axis_tdata[95]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_28_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[95]_INST_0_i_29 
       (.I0(\m_axis_tdata[95]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_29_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[95]_INST_0_i_3 
       (.CI(\m_axis_tdata[95]_INST_0_i_9_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_172 ,\m_axis_tdata[95]_INST_0_i_3_n_1 ,\m_axis_tdata[95]_INST_0_i_3_n_2 ,\m_axis_tdata[95]_INST_0_i_3_n_3 ,\m_axis_tdata[95]_INST_0_i_3_n_4 ,\m_axis_tdata[95]_INST_0_i_3_n_5 ,\m_axis_tdata[95]_INST_0_i_3_n_6 ,\m_axis_tdata[95]_INST_0_i_3_n_7 }),
        .DI({\m_axis_tdata[95]_INST_0_i_10_n_0 ,\m_axis_tdata[95]_INST_0_i_11_n_0 ,\m_axis_tdata[95]_INST_0_i_12_n_0 ,\m_axis_tdata[95]_INST_0_i_13_n_0 ,\m_axis_tdata[95]_INST_0_i_14_n_0 ,\m_axis_tdata[95]_INST_0_i_15_n_0 ,\m_axis_tdata[95]_INST_0_i_16_n_0 ,\m_axis_tdata[95]_INST_0_i_17_n_0 }),
        .O(\NLW_m_axis_tdata[95]_INST_0_i_3_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[95]_INST_0_i_18_n_0 ,\m_axis_tdata[95]_INST_0_i_19_n_0 ,\m_axis_tdata[95]_INST_0_i_20_n_0 ,\m_axis_tdata[95]_INST_0_i_21_n_0 ,\m_axis_tdata[95]_INST_0_i_22_n_0 ,\m_axis_tdata[95]_INST_0_i_23_n_0 ,\m_axis_tdata[95]_INST_0_i_24_n_0 ,\m_axis_tdata[95]_INST_0_i_25_n_0 }));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[95]_INST_0_i_30 
       (.I0(\m_axis_tdata[95]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_30_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[95]_INST_0_i_31 
       (.I0(\m_axis_tdata[95]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_31_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[95]_INST_0_i_32 
       (.I0(\m_axis_tdata[95]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_72_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_32_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[95]_INST_0_i_33 
       (.I0(\m_axis_tdata[95]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_74_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[95]_INST_0_i_34 
       (.I0(\SCALE_SHIFT[1]_89 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_76_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_34_n_0 ));
  LUT4 #(
    .INIT(16'h0047)) 
    \m_axis_tdata[95]_INST_0_i_35 
       (.I0(\m_axis_tdata[95]_INST_0_i_63_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_64_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_65_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_35_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[95]_INST_0_i_36 
       (.I0(\m_axis_tdata[95]_INST_0_i_66_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_67_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_63_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_36_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[95]_INST_0_i_37 
       (.I0(\m_axis_tdata[95]_INST_0_i_68_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_69_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_66_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_37_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[95]_INST_0_i_38 
       (.I0(\m_axis_tdata[95]_INST_0_i_70_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_71_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_68_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_38_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[95]_INST_0_i_39 
       (.I0(\m_axis_tdata[95]_INST_0_i_72_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_73_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_70_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_39_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[95]_INST_0_i_4 
       (.CI(\m_axis_tdata[95]_INST_0_i_26_n_0 ),
        .CI_TOP(1'b0),
        .CO({\SCALE_SHIFT[0]_173 ,\m_axis_tdata[95]_INST_0_i_4_n_1 ,\m_axis_tdata[95]_INST_0_i_4_n_2 ,\m_axis_tdata[95]_INST_0_i_4_n_3 ,\m_axis_tdata[95]_INST_0_i_4_n_4 ,\m_axis_tdata[95]_INST_0_i_4_n_5 ,\m_axis_tdata[95]_INST_0_i_4_n_6 ,\m_axis_tdata[95]_INST_0_i_4_n_7 }),
        .DI({\m_axis_tdata[95]_INST_0_i_27_n_0 ,\m_axis_tdata[95]_INST_0_i_28_n_0 ,\m_axis_tdata[95]_INST_0_i_29_n_0 ,\m_axis_tdata[95]_INST_0_i_30_n_0 ,\m_axis_tdata[95]_INST_0_i_31_n_0 ,\m_axis_tdata[95]_INST_0_i_32_n_0 ,\m_axis_tdata[95]_INST_0_i_33_n_0 ,\m_axis_tdata[95]_INST_0_i_34_n_0 }),
        .O(\NLW_m_axis_tdata[95]_INST_0_i_4_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[95]_INST_0_i_35_n_0 ,\m_axis_tdata[95]_INST_0_i_36_n_0 ,\m_axis_tdata[95]_INST_0_i_37_n_0 ,\m_axis_tdata[95]_INST_0_i_38_n_0 ,\m_axis_tdata[95]_INST_0_i_39_n_0 ,\m_axis_tdata[95]_INST_0_i_40_n_0 ,\m_axis_tdata[95]_INST_0_i_41_n_0 ,\m_axis_tdata[95]_INST_0_i_42_n_0 }));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[95]_INST_0_i_40 
       (.I0(\m_axis_tdata[95]_INST_0_i_74_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_75_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_72_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_40_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[95]_INST_0_i_41 
       (.I0(\m_axis_tdata[95]_INST_0_i_76_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_77_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_74_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_41_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[95]_INST_0_i_42 
       (.I0(\SCALE_SHIFT[1]_89 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_78_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_76_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_42_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[95]_INST_0_i_43 
       (.I0(s_axis_tdata[84]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[92]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[95]_INST_0_i_43_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[95]_INST_0_i_44 
       (.I0(s_axis_tdata[86]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[94]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[95]_INST_0_i_44_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[95]_INST_0_i_45 
       (.I0(s_axis_tdata[85]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[93]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[95]_INST_0_i_45_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \m_axis_tdata[95]_INST_0_i_46 
       (.I0(s_axis_tdata[87]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[95]),
        .I3(SCALE_SHIFT[4]),
        .O(\m_axis_tdata[95]_INST_0_i_46_n_0 ));
  LUT5 #(
    .INIT(32'h00004F7F)) 
    \m_axis_tdata[95]_INST_0_i_47 
       (.I0(\SCALE_SHIFT[1]_90 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_88 ),
        .I3(\SCALE_SHIFT[1]_89 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[95]_INST_0_i_47_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[95]_INST_0_i_48 
       (.I0(\SCALE_SHIFT[1]_24 ),
        .I1(LIMIT_11_sn_1),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_25 ),
        .O(\m_axis_tdata[95]_INST_0_i_48_n_0 ));
  LUT5 #(
    .INIT(32'h0009999F)) 
    \m_axis_tdata[95]_INST_0_i_49 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\SCALE_SHIFT[0]_57 ),
        .I3(\LIMIT[9]_0 ),
        .I4(\SCALE_SHIFT[0]_58 ),
        .O(\m_axis_tdata[95]_INST_0_i_49_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[95]_INST_0_i_5 
       (.I0(s_axis_tdata[80]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[88]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[95]_INST_0_i_43_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[95]_INST_0_i_50 
       (.I0(\SCALE_SHIFT[0]_54 ),
        .I1(LIMIT_7_sn_1),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_55 ),
        .O(\m_axis_tdata[95]_INST_0_i_50_n_0 ));
  LUT5 #(
    .INIT(32'h000909FF)) 
    \m_axis_tdata[95]_INST_0_i_51 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_26 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_56 ),
        .O(\m_axis_tdata[95]_INST_0_i_51_n_0 ));
  LUT4 #(
    .INIT(16'h011F)) 
    \m_axis_tdata[95]_INST_0_i_52 
       (.I0(\SCALE_SHIFT[0]_52 ),
        .I1(LIMIT_3_sn_1),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_53 ),
        .O(\m_axis_tdata[95]_INST_0_i_52_n_0 ));
  LUT6 #(
    .INIT(64'h000011141117FFFC)) 
    \m_axis_tdata[95]_INST_0_i_53 
       (.I0(\SCALE_SHIFT[0]_50 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_51 ),
        .O(\m_axis_tdata[95]_INST_0_i_53_n_0 ));
  LUT4 #(
    .INIT(16'h047C)) 
    \m_axis_tdata[95]_INST_0_i_54 
       (.I0(\SCALE_SHIFT[1]_23 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_49 ),
        .O(\m_axis_tdata[95]_INST_0_i_54_n_0 ));
  LUT5 #(
    .INIT(32'h0407B080)) 
    \m_axis_tdata[95]_INST_0_i_55 
       (.I0(\SCALE_SHIFT[1]_90 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_88 ),
        .I3(\SCALE_SHIFT[1]_89 ),
        .I4(\LIMIT[12]_1 ),
        .O(\m_axis_tdata[95]_INST_0_i_55_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[95]_INST_0_i_56 
       (.I0(LIMIT_11_sn_1),
        .I1(\SCALE_SHIFT[1]_24 ),
        .I2(LIMIT_12_sn_1),
        .I3(\SCALE_SHIFT[1]_25 ),
        .O(\m_axis_tdata[95]_INST_0_i_56_n_0 ));
  LUT5 #(
    .INIT(32'h09900660)) 
    \m_axis_tdata[95]_INST_0_i_57 
       (.I0(LIMIT_9_sn_1),
        .I1(LIMIT[11]),
        .I2(\LIMIT[9]_0 ),
        .I3(\SCALE_SHIFT[0]_57 ),
        .I4(\SCALE_SHIFT[0]_58 ),
        .O(\m_axis_tdata[95]_INST_0_i_57_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[95]_INST_0_i_58 
       (.I0(LIMIT_7_sn_1),
        .I1(\SCALE_SHIFT[0]_54 ),
        .I2(LIMIT_8_sn_1),
        .I3(\SCALE_SHIFT[0]_55 ),
        .O(\m_axis_tdata[95]_INST_0_i_58_n_0 ));
  LUT5 #(
    .INIT(32'h00969600)) 
    \m_axis_tdata[95]_INST_0_i_59 
       (.I0(\LIMIT[4]_0 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[1]_26 ),
        .I3(LIMIT_6_sn_1),
        .I4(\SCALE_SHIFT[0]_56 ),
        .O(\m_axis_tdata[95]_INST_0_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[95]_INST_0_i_6 
       (.I0(s_axis_tdata[82]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[90]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[95]_INST_0_i_44_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h0660)) 
    \m_axis_tdata[95]_INST_0_i_60 
       (.I0(LIMIT_3_sn_1),
        .I1(\SCALE_SHIFT[0]_52 ),
        .I2(LIMIT_4_sn_1),
        .I3(\SCALE_SHIFT[0]_53 ),
        .O(\m_axis_tdata[95]_INST_0_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h0001666866680001)) 
    \m_axis_tdata[95]_INST_0_i_61 
       (.I0(\SCALE_SHIFT[0]_50 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[0]),
        .I3(LIMIT[1]),
        .I4(LIMIT[3]),
        .I5(\SCALE_SHIFT[0]_51 ),
        .O(\m_axis_tdata[95]_INST_0_i_61_n_0 ));
  LUT4 #(
    .INIT(16'h1881)) 
    \m_axis_tdata[95]_INST_0_i_62 
       (.I0(\SCALE_SHIFT[1]_23 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_49 ),
        .O(\m_axis_tdata[95]_INST_0_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[95]_INST_0_i_63 
       (.I0(\m_axis_tdata[95]_INST_0_i_95_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[95]_INST_0_i_96_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_63_n_0 ));
  LUT6 #(
    .INIT(64'hB8FFB833B8CCB800)) 
    \m_axis_tdata[95]_INST_0_i_64 
       (.I0(\m_axis_tdata[95]_INST_0_i_97_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[95]_INST_0_i_98_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[95]_INST_0_i_99_n_0 ),
        .I5(\m_axis_tdata[95]_INST_0_i_100_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_64_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \m_axis_tdata[95]_INST_0_i_65 
       (.I0(\m_axis_tdata[95]_INST_0_i_64_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[95]_INST_0_i_96_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[95]_INST_0_i_101_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_65_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[95]_INST_0_i_66 
       (.I0(\m_axis_tdata[95]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[95]_INST_0_i_103_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[95]_INST_0_i_95_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_66_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8B8FF33CC00)) 
    \m_axis_tdata[95]_INST_0_i_67 
       (.I0(\m_axis_tdata[95]_INST_0_i_104_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[95]_INST_0_i_99_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_97_n_0 ),
        .I4(\m_axis_tdata[95]_INST_0_i_98_n_0 ),
        .I5(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[95]_INST_0_i_67_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[95]_INST_0_i_68 
       (.I0(\m_axis_tdata[95]_INST_0_i_102_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[95]_INST_0_i_103_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_105_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[95]_INST_0_i_68_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[95]_INST_0_i_69 
       (.I0(\m_axis_tdata[95]_INST_0_i_106_n_0 ),
        .I1(\m_axis_tdata[95]_INST_0_i_97_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[95]_INST_0_i_104_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[95]_INST_0_i_99_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_69_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[95]_INST_0_i_7 
       (.I0(s_axis_tdata[81]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[89]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[95]_INST_0_i_45_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[95]_INST_0_i_70 
       (.I0(\m_axis_tdata[95]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[95]_INST_0_i_102_n_0 ),
        .I3(SCALE_SHIFT[1]),
        .I4(\m_axis_tdata[95]_INST_0_i_105_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_70_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[95]_INST_0_i_71 
       (.I0(\m_axis_tdata[95]_INST_0_i_108_n_0 ),
        .I1(\m_axis_tdata[95]_INST_0_i_104_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[95]_INST_0_i_106_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[95]_INST_0_i_97_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_71_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[95]_INST_0_i_72 
       (.I0(\m_axis_tdata[95]_INST_0_i_107_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[95]_INST_0_i_102_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_109_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[95]_INST_0_i_72_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[95]_INST_0_i_73 
       (.I0(\m_axis_tdata[95]_INST_0_i_110_n_0 ),
        .I1(\m_axis_tdata[95]_INST_0_i_106_n_0 ),
        .I2(SCALE_SHIFT[1]),
        .I3(\m_axis_tdata[95]_INST_0_i_108_n_0 ),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[95]_INST_0_i_104_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_73_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair147" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[95]_INST_0_i_74 
       (.I0(\m_axis_tdata[95]_INST_0_i_111_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[95]_INST_0_i_109_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_74_n_0 ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \m_axis_tdata[95]_INST_0_i_75 
       (.I0(\m_axis_tdata[95]_INST_0_i_110_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[95]_INST_0_i_106_n_0 ),
        .I3(\m_axis_tdata[95]_INST_0_i_112_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[95]_INST_0_i_75_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair148" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[95]_INST_0_i_76 
       (.I0(\m_axis_tdata[95]_INST_0_i_8_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[95]_INST_0_i_111_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[95]_INST_0_i_77 
       (.I0(\m_axis_tdata[95]_INST_0_i_113_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[95]_INST_0_i_112_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_77_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair146" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[95]_INST_0_i_78 
       (.I0(\m_axis_tdata[95]_INST_0_i_6_n_0 ),
        .I1(SCALE_SHIFT[1]),
        .I2(\m_axis_tdata[95]_INST_0_i_113_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_78_n_0 ));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \m_axis_tdata[95]_INST_0_i_79 
       (.I0(\SCALE_SHIFT[1]_90 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_88 ),
        .I3(\SCALE_SHIFT[1]_89 ),
        .O(\m_axis_tdata[95]_INST_0_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \m_axis_tdata[95]_INST_0_i_8 
       (.I0(s_axis_tdata[83]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[91]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[95]_INST_0_i_46_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[95]_INST_0_i_80 
       (.I0(\SCALE_SHIFT[1]_24 ),
        .I1(LIMIT[12]),
        .I2(LIMIT[13]),
        .I3(\SCALE_SHIFT[1]_25 ),
        .O(\m_axis_tdata[95]_INST_0_i_80_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[95]_INST_0_i_81 
       (.I0(\SCALE_SHIFT[0]_57 ),
        .I1(LIMIT[10]),
        .I2(LIMIT[11]),
        .I3(\SCALE_SHIFT[0]_58 ),
        .O(\m_axis_tdata[95]_INST_0_i_81_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[95]_INST_0_i_82 
       (.I0(\SCALE_SHIFT[0]_54 ),
        .I1(LIMIT[8]),
        .I2(LIMIT[9]),
        .I3(\SCALE_SHIFT[0]_55 ),
        .O(\m_axis_tdata[95]_INST_0_i_82_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[95]_INST_0_i_83 
       (.I0(\SCALE_SHIFT[1]_26 ),
        .I1(LIMIT[6]),
        .I2(LIMIT[7]),
        .I3(\SCALE_SHIFT[0]_56 ),
        .O(\m_axis_tdata[95]_INST_0_i_83_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[95]_INST_0_i_84 
       (.I0(\SCALE_SHIFT[0]_52 ),
        .I1(LIMIT[4]),
        .I2(LIMIT[5]),
        .I3(\SCALE_SHIFT[0]_53 ),
        .O(\m_axis_tdata[95]_INST_0_i_84_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[95]_INST_0_i_85 
       (.I0(\SCALE_SHIFT[0]_50 ),
        .I1(LIMIT[2]),
        .I2(LIMIT[3]),
        .I3(\SCALE_SHIFT[0]_51 ),
        .O(\m_axis_tdata[95]_INST_0_i_85_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \m_axis_tdata[95]_INST_0_i_86 
       (.I0(\SCALE_SHIFT[1]_23 ),
        .I1(LIMIT[0]),
        .I2(LIMIT[1]),
        .I3(\SCALE_SHIFT[0]_49 ),
        .O(\m_axis_tdata[95]_INST_0_i_86_n_0 ));
  LUT4 #(
    .INIT(16'h0407)) 
    \m_axis_tdata[95]_INST_0_i_87 
       (.I0(\SCALE_SHIFT[1]_90 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\SCALE_SHIFT[1]_88 ),
        .I3(\SCALE_SHIFT[1]_89 ),
        .O(\m_axis_tdata[95]_INST_0_i_87_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[95]_INST_0_i_88 
       (.I0(\SCALE_SHIFT[1]_24 ),
        .I1(LIMIT[12]),
        .I2(\SCALE_SHIFT[1]_25 ),
        .I3(LIMIT[13]),
        .O(\m_axis_tdata[95]_INST_0_i_88_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[95]_INST_0_i_89 
       (.I0(\SCALE_SHIFT[0]_57 ),
        .I1(LIMIT[10]),
        .I2(\SCALE_SHIFT[0]_58 ),
        .I3(LIMIT[11]),
        .O(\m_axis_tdata[95]_INST_0_i_89_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \m_axis_tdata[95]_INST_0_i_9 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\m_axis_tdata[95]_INST_0_i_9_n_0 ,\m_axis_tdata[95]_INST_0_i_9_n_1 ,\m_axis_tdata[95]_INST_0_i_9_n_2 ,\m_axis_tdata[95]_INST_0_i_9_n_3 ,\m_axis_tdata[95]_INST_0_i_9_n_4 ,\m_axis_tdata[95]_INST_0_i_9_n_5 ,\m_axis_tdata[95]_INST_0_i_9_n_6 ,\m_axis_tdata[95]_INST_0_i_9_n_7 }),
        .DI({\m_axis_tdata[95]_INST_0_i_47_n_0 ,\m_axis_tdata[95]_INST_0_i_48_n_0 ,\m_axis_tdata[95]_INST_0_i_49_n_0 ,\m_axis_tdata[95]_INST_0_i_50_n_0 ,\m_axis_tdata[95]_INST_0_i_51_n_0 ,\m_axis_tdata[95]_INST_0_i_52_n_0 ,\m_axis_tdata[95]_INST_0_i_53_n_0 ,\m_axis_tdata[95]_INST_0_i_54_n_0 }),
        .O(\NLW_m_axis_tdata[95]_INST_0_i_9_O_UNCONNECTED [7:0]),
        .S({\m_axis_tdata[95]_INST_0_i_55_n_0 ,\m_axis_tdata[95]_INST_0_i_56_n_0 ,\m_axis_tdata[95]_INST_0_i_57_n_0 ,\m_axis_tdata[95]_INST_0_i_58_n_0 ,\m_axis_tdata[95]_INST_0_i_59_n_0 ,\m_axis_tdata[95]_INST_0_i_60_n_0 ,\m_axis_tdata[95]_INST_0_i_61_n_0 ,\m_axis_tdata[95]_INST_0_i_62_n_0 }));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[95]_INST_0_i_90 
       (.I0(\SCALE_SHIFT[0]_54 ),
        .I1(LIMIT[8]),
        .I2(\SCALE_SHIFT[0]_55 ),
        .I3(LIMIT[9]),
        .O(\m_axis_tdata[95]_INST_0_i_90_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[95]_INST_0_i_91 
       (.I0(\SCALE_SHIFT[1]_26 ),
        .I1(LIMIT[6]),
        .I2(\SCALE_SHIFT[0]_56 ),
        .I3(LIMIT[7]),
        .O(\m_axis_tdata[95]_INST_0_i_91_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[95]_INST_0_i_92 
       (.I0(\SCALE_SHIFT[0]_52 ),
        .I1(LIMIT[4]),
        .I2(\SCALE_SHIFT[0]_53 ),
        .I3(LIMIT[5]),
        .O(\m_axis_tdata[95]_INST_0_i_92_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[95]_INST_0_i_93 
       (.I0(\SCALE_SHIFT[0]_50 ),
        .I1(LIMIT[2]),
        .I2(\SCALE_SHIFT[0]_51 ),
        .I3(LIMIT[3]),
        .O(\m_axis_tdata[95]_INST_0_i_93_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \m_axis_tdata[95]_INST_0_i_94 
       (.I0(\SCALE_SHIFT[1]_23 ),
        .I1(LIMIT[0]),
        .I2(\SCALE_SHIFT[0]_49 ),
        .I3(LIMIT[1]),
        .O(\m_axis_tdata[95]_INST_0_i_94_n_0 ));
  LUT6 #(
    .INIT(64'h4F40FFFF4F400000)) 
    \m_axis_tdata[95]_INST_0_i_95 
       (.I0(SCALE_SHIFT[3]),
        .I1(s_axis_tdata[87]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[95]),
        .I4(SCALE_SHIFT[2]),
        .I5(\m_axis_tdata[95]_INST_0_i_114_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_95_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair140" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[95]_INST_0_i_96 
       (.I0(\m_axis_tdata[95]_INST_0_i_103_n_0 ),
        .I1(SCALE_SHIFT[2]),
        .I2(\m_axis_tdata[95]_INST_0_i_115_n_0 ),
        .O(\m_axis_tdata[95]_INST_0_i_96_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[95]_INST_0_i_97 
       (.I0(s_axis_tdata[80]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[88]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[95]),
        .O(\m_axis_tdata[95]_INST_0_i_97_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[95]_INST_0_i_98 
       (.I0(s_axis_tdata[84]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[92]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[95]),
        .O(\m_axis_tdata[95]_INST_0_i_98_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \m_axis_tdata[95]_INST_0_i_99 
       (.I0(s_axis_tdata[82]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[90]),
        .I3(SCALE_SHIFT[4]),
        .I4(s_axis_tdata[95]),
        .O(\m_axis_tdata[95]_INST_0_i_99_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \m_axis_tdata[96]_INST_0_i_1 
       (.I0(SCALE_SHIFT[1]),
        .I1(SCALE_SHIFT[3]),
        .I2(s_axis_tdata[96]),
        .I3(SCALE_SHIFT[4]),
        .I4(SCALE_SHIFT[2]),
        .I5(SCALE_SHIFT[0]),
        .O(\SCALE_SHIFT[1]_27 ));
  (* SOFT_HLUTNM = "soft_lutpair158" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[97]_INST_0_i_1 
       (.I0(\m_axis_tdata[97]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[98]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_59 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[97]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[96]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[97]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[98]_INST_0_i_1 
       (.I0(\m_axis_tdata[98]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[99]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_60 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \m_axis_tdata[98]_INST_0_i_2 
       (.I0(SCALE_SHIFT[2]),
        .I1(SCALE_SHIFT[4]),
        .I2(s_axis_tdata[97]),
        .I3(SCALE_SHIFT[3]),
        .I4(SCALE_SHIFT[1]),
        .O(\m_axis_tdata[98]_INST_0_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair157" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \m_axis_tdata[99]_INST_0_i_1 
       (.I0(\m_axis_tdata[99]_INST_0_i_2_n_0 ),
        .I1(SCALE_SHIFT[0]),
        .I2(\m_axis_tdata[100]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_61 ));
  LUT6 #(
    .INIT(64'h0000000000000B08)) 
    \m_axis_tdata[99]_INST_0_i_2 
       (.I0(s_axis_tdata[96]),
        .I1(SCALE_SHIFT[1]),
        .I2(SCALE_SHIFT[3]),
        .I3(s_axis_tdata[98]),
        .I4(SCALE_SHIFT[4]),
        .I5(SCALE_SHIFT[2]),
        .O(\m_axis_tdata[99]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \m_axis_tdata[9]_INST_0_i_1 
       (.I0(\m_axis_tdata[9]_INST_0_i_2_n_0 ),
        .I1(\m_axis_tdata[11]_INST_0_i_2_n_0 ),
        .I2(SCALE_SHIFT[0]),
        .I3(\m_axis_tdata[10]_INST_0_i_2_n_0 ),
        .I4(SCALE_SHIFT[1]),
        .I5(\m_axis_tdata[12]_INST_0_i_2_n_0 ),
        .O(\SCALE_SHIFT[0]_5 ));
  LUT5 #(
    .INIT(32'h00000B08)) 
    \m_axis_tdata[9]_INST_0_i_2 
       (.I0(s_axis_tdata[2]),
        .I1(SCALE_SHIFT[2]),
        .I2(SCALE_SHIFT[4]),
        .I3(s_axis_tdata[6]),
        .I4(SCALE_SHIFT[3]),
        .O(\m_axis_tdata[9]_INST_0_i_2_n_0 ));
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
