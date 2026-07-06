-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Tue Jun  9 02:03:34 2026
-- Host        : DVLLP006 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top T510_design_chanmajor_to_timemaj_0_0 -prefix
--               T510_design_chanmajor_to_timemaj_0_0_ T510_design_chanmajor_to_timemaj_0_0_sim_netlist.vhdl
-- Design      : T510_design_chanmajor_to_timemaj_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu47dr-ffve1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity T510_design_chanmajor_to_timemaj_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of T510_design_chanmajor_to_timemaj_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of T510_design_chanmajor_to_timemaj_0_0 : entity is "T510_design_chanmajor_to_timemaj_0_0,chanmajor_to_timemajor,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of T510_design_chanmajor_to_timemaj_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of T510_design_chanmajor_to_timemaj_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of T510_design_chanmajor_to_timemaj_0_0 : entity is "chanmajor_to_timemajor,Vivado 2024.2";
end T510_design_chanmajor_to_timemaj_0_0;

architecture STRUCTURE of T510_design_chanmajor_to_timemaj_0_0 is
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 15360000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_MODE of m_axis_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_MODE of s_axis_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s_axis_tdata\(511 downto 0) <= s_axis_tdata(511 downto 0);
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tdata(511 downto 496) <= \^s_axis_tdata\(511 downto 496);
  m_axis_tdata(495 downto 480) <= \^s_axis_tdata\(383 downto 368);
  m_axis_tdata(479 downto 464) <= \^s_axis_tdata\(255 downto 240);
  m_axis_tdata(463 downto 448) <= \^s_axis_tdata\(127 downto 112);
  m_axis_tdata(447 downto 432) <= \^s_axis_tdata\(495 downto 480);
  m_axis_tdata(431 downto 416) <= \^s_axis_tdata\(367 downto 352);
  m_axis_tdata(415 downto 400) <= \^s_axis_tdata\(239 downto 224);
  m_axis_tdata(399 downto 384) <= \^s_axis_tdata\(111 downto 96);
  m_axis_tdata(383 downto 368) <= \^s_axis_tdata\(479 downto 464);
  m_axis_tdata(367 downto 352) <= \^s_axis_tdata\(351 downto 336);
  m_axis_tdata(351 downto 336) <= \^s_axis_tdata\(223 downto 208);
  m_axis_tdata(335 downto 320) <= \^s_axis_tdata\(95 downto 80);
  m_axis_tdata(319 downto 304) <= \^s_axis_tdata\(463 downto 448);
  m_axis_tdata(303 downto 288) <= \^s_axis_tdata\(335 downto 320);
  m_axis_tdata(287 downto 272) <= \^s_axis_tdata\(207 downto 192);
  m_axis_tdata(271 downto 256) <= \^s_axis_tdata\(79 downto 64);
  m_axis_tdata(255 downto 240) <= \^s_axis_tdata\(447 downto 432);
  m_axis_tdata(239 downto 224) <= \^s_axis_tdata\(319 downto 304);
  m_axis_tdata(223 downto 208) <= \^s_axis_tdata\(191 downto 176);
  m_axis_tdata(207 downto 192) <= \^s_axis_tdata\(63 downto 48);
  m_axis_tdata(191 downto 176) <= \^s_axis_tdata\(431 downto 416);
  m_axis_tdata(175 downto 160) <= \^s_axis_tdata\(303 downto 288);
  m_axis_tdata(159 downto 144) <= \^s_axis_tdata\(175 downto 160);
  m_axis_tdata(143 downto 128) <= \^s_axis_tdata\(47 downto 32);
  m_axis_tdata(127 downto 112) <= \^s_axis_tdata\(415 downto 400);
  m_axis_tdata(111 downto 96) <= \^s_axis_tdata\(287 downto 272);
  m_axis_tdata(95 downto 80) <= \^s_axis_tdata\(159 downto 144);
  m_axis_tdata(79 downto 64) <= \^s_axis_tdata\(31 downto 16);
  m_axis_tdata(63 downto 48) <= \^s_axis_tdata\(399 downto 384);
  m_axis_tdata(47 downto 32) <= \^s_axis_tdata\(271 downto 256);
  m_axis_tdata(31 downto 16) <= \^s_axis_tdata\(143 downto 128);
  m_axis_tdata(15 downto 0) <= \^s_axis_tdata\(15 downto 0);
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \^m_axis_tready\;
end STRUCTURE;
