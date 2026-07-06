-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sat Jul  4 14:01:35 2026
-- Host        : DVLLP006 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Trivedi/2022p2/sdr2/sdr2.gen/sources_1/bd/T510_design/ip/T510_design_pl_mts_sync_clk_0_0/T510_design_pl_mts_sync_clk_0_0_sim_netlist.vhdl
-- Design      : T510_design_pl_mts_sync_clk_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu47dr-ffve1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity T510_design_pl_mts_sync_clk_0_0_pl_mts_sync_clk is
  port (
    pl_clk : out STD_LOGIC;
    user_sysref_dac : out STD_LOGIC;
    pl_clk_p : in STD_LOGIC;
    pl_clk_n : in STD_LOGIC;
    pl_sys_ref_p : in STD_LOGIC;
    pl_sys_ref_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of T510_design_pl_mts_sync_clk_0_0_pl_mts_sync_clk : entity is "pl_mts_sync_clk";
end T510_design_pl_mts_sync_clk_0_0_pl_mts_sync_clk;

architecture STRUCTURE of T510_design_pl_mts_sync_clk_0_0_pl_mts_sync_clk is
  signal pl_clk_bufds : STD_LOGIC;
  signal pl_sys_ref_bufds : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of BUFGDS_pl_clk : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of BUFGDS_pl_clk : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of BUFGDS_pl_clk : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of BUFGDS_pl_clk : label is "AUTO";
  attribute BOX_TYPE of IBUFDS_pl_sys : label is "PRIMITIVE";
  attribute CAPACITANCE of IBUFDS_pl_sys : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of IBUFDS_pl_sys : label is "0";
  attribute IFD_DELAY_VALUE of IBUFDS_pl_sys : label is "AUTO";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of pl_sys_ref_captrue_reg : label is "MLO";
begin
  pl_clk <= pl_clk_bufds;
BUFGDS_pl_clk: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => pl_clk_p,
      IB => pl_clk_n,
      O => pl_clk_bufds
    );
IBUFDS_pl_sys: unisim.vcomponents.IBUFDS
    generic map(
      DIFF_TERM => false,
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => pl_sys_ref_p,
      IB => pl_sys_ref_n,
      O => pl_sys_ref_bufds
    );
pl_sys_ref_captrue_reg: unisim.vcomponents.FDRE
     port map (
      C => pl_clk_bufds,
      CE => '1',
      D => pl_sys_ref_bufds,
      Q => user_sysref_dac,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity T510_design_pl_mts_sync_clk_0_0 is
  port (
    pl_clk_p : in STD_LOGIC;
    pl_clk_n : in STD_LOGIC;
    pl_sys_ref_p : in STD_LOGIC;
    pl_sys_ref_n : in STD_LOGIC;
    pl_clk : out STD_LOGIC;
    user_sysref_adc : out STD_LOGIC;
    user_sysref_dac : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of T510_design_pl_mts_sync_clk_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of T510_design_pl_mts_sync_clk_0_0 : entity is "T510_design_pl_mts_sync_clk_0_0,pl_mts_sync_clk,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of T510_design_pl_mts_sync_clk_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of T510_design_pl_mts_sync_clk_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of T510_design_pl_mts_sync_clk_0_0 : entity is "pl_mts_sync_clk,Vivado 2024.2";
end T510_design_pl_mts_sync_clk_0_0;

architecture STRUCTURE of T510_design_pl_mts_sync_clk_0_0 is
  signal \^user_sysref_dac\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of pl_clk : signal is "xilinx.com:signal:clock:1.0 pl_clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of pl_clk : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of pl_clk : signal is "XIL_INTERFACENAME pl_clk, FREQ_HZ 245760000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_pl_mts_sync_clk_0_0_pl_clk, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_clk_n : signal is "xilinx.com:signal:clock:1.0 pl_clk_n CLK";
  attribute X_INTERFACE_MODE of pl_clk_n : signal is "slave";
  attribute X_INTERFACE_PARAMETER of pl_clk_n : signal is "XIL_INTERFACENAME pl_clk_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_pl_clk_n, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of pl_clk_p : signal is "xilinx.com:signal:clock:1.0 pl_clk_p CLK";
  attribute X_INTERFACE_MODE of pl_clk_p : signal is "slave";
  attribute X_INTERFACE_PARAMETER of pl_clk_p : signal is "XIL_INTERFACENAME pl_clk_p, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_pl_clk_p, INSERT_VIP 0";
begin
  user_sysref_adc <= \^user_sysref_dac\;
  user_sysref_dac <= \^user_sysref_dac\;
inst: entity work.T510_design_pl_mts_sync_clk_0_0_pl_mts_sync_clk
     port map (
      pl_clk => pl_clk,
      pl_clk_n => pl_clk_n,
      pl_clk_p => pl_clk_p,
      pl_sys_ref_n => pl_sys_ref_n,
      pl_sys_ref_p => pl_sys_ref_p,
      user_sysref_dac => \^user_sysref_dac\
    );
end STRUCTURE;
