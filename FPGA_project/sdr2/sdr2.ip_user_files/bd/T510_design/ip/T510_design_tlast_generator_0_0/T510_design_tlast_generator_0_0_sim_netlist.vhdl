-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Wed Jun 10 21:41:15 2026
-- Host        : DVLLP006 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top T510_design_tlast_generator_0_0 -prefix
--               T510_design_tlast_generator_0_0_ T510_design_tlast_generator_0_0_sim_netlist.vhdl
-- Design      : T510_design_tlast_generator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu47dr-ffve1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity T510_design_tlast_generator_0_0_tlast_generator is
  port (
    m_axis_tlast : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
end T510_design_tlast_generator_0_0_tlast_generator;

architecture STRUCTURE of T510_design_tlast_generator_0_0_tlast_generator is
  signal beat_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \beat_counter[12]_i_2_n_0\ : STD_LOGIC;
  signal \beat_counter[15]_i_4_n_0\ : STD_LOGIC;
  signal beat_counter_0 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal m_axis_tlast_INST_0_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_2_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_3_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_4_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal transfer_en : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \beat_counter[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \beat_counter[10]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \beat_counter[12]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \beat_counter[13]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \beat_counter[15]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \beat_counter[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \beat_counter[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \beat_counter[3]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \beat_counter[4]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \beat_counter[7]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \beat_counter[9]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0_i_2 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0_i_3 : label is "soft_lutpair4";
begin
\beat_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => beat_counter(0),
      O => beat_counter_0(0)
    );
\beat_counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A6AAAAAA"
    )
        port map (
      I0 => beat_counter(10),
      I1 => beat_counter(8),
      I2 => m_axis_tlast_INST_0_i_1_n_0,
      I3 => m_axis_tlast_INST_0_i_2_n_0,
      I4 => beat_counter(9),
      O => beat_counter_0(10)
    );
\beat_counter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA6AAAAAAAAAAA"
    )
        port map (
      I0 => beat_counter(11),
      I1 => beat_counter(9),
      I2 => beat_counter(10),
      I3 => beat_counter(8),
      I4 => m_axis_tlast_INST_0_i_1_n_0,
      I5 => m_axis_tlast_INST_0_i_2_n_0,
      O => beat_counter_0(11)
    );
\beat_counter[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAA9AAAAAAA"
    )
        port map (
      I0 => beat_counter(12),
      I1 => \beat_counter[12]_i_2_n_0\,
      I2 => beat_counter(11),
      I3 => beat_counter(8),
      I4 => m_axis_tlast_INST_0_i_2_n_0,
      I5 => m_axis_tlast_INST_0_i_1_n_0,
      O => beat_counter_0(12)
    );
\beat_counter[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => beat_counter(9),
      I1 => beat_counter(10),
      O => \beat_counter[12]_i_2_n_0\
    );
\beat_counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA9AAAAA"
    )
        port map (
      I0 => beat_counter(13),
      I1 => m_axis_tlast_INST_0_i_1_n_0,
      I2 => m_axis_tlast_INST_0_i_2_n_0,
      I3 => m_axis_tlast_INST_0_i_3_n_0,
      I4 => beat_counter(12),
      O => beat_counter_0(13)
    );
\beat_counter[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAAA4AA"
    )
        port map (
      I0 => beat_counter(14),
      I1 => beat_counter(15),
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_2_n_0,
      I4 => m_axis_tlast_INST_0_i_1_n_0,
      I5 => \beat_counter[15]_i_4_n_0\,
      O => beat_counter_0(14)
    );
\beat_counter[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
\beat_counter[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_axis_tready,
      O => transfer_en
    );
\beat_counter[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAA9AAAAAAAAA"
    )
        port map (
      I0 => beat_counter(15),
      I1 => m_axis_tlast_INST_0_i_3_n_0,
      I2 => m_axis_tlast_INST_0_i_2_n_0,
      I3 => m_axis_tlast_INST_0_i_1_n_0,
      I4 => \beat_counter[15]_i_4_n_0\,
      I5 => beat_counter(14),
      O => beat_counter_0(15)
    );
\beat_counter[15]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => beat_counter(12),
      I1 => beat_counter(13),
      O => \beat_counter[15]_i_4_n_0\
    );
\beat_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => beat_counter(0),
      I1 => beat_counter(1),
      O => beat_counter_0(1)
    );
\beat_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => beat_counter(2),
      I1 => beat_counter(1),
      I2 => beat_counter(0),
      O => beat_counter_0(2)
    );
\beat_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => beat_counter(3),
      I1 => beat_counter(0),
      I2 => beat_counter(1),
      I3 => beat_counter(2),
      O => beat_counter_0(3)
    );
\beat_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => beat_counter(4),
      I1 => beat_counter(2),
      I2 => beat_counter(3),
      I3 => beat_counter(0),
      I4 => beat_counter(1),
      O => beat_counter_0(4)
    );
\beat_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => beat_counter(5),
      I1 => beat_counter(2),
      I2 => beat_counter(3),
      I3 => beat_counter(0),
      I4 => beat_counter(1),
      I5 => beat_counter(4),
      O => beat_counter_0(5)
    );
\beat_counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => beat_counter(6),
      I1 => beat_counter(4),
      I2 => m_axis_tlast_INST_0_i_2_n_0,
      I3 => beat_counter(5),
      O => beat_counter_0(6)
    );
\beat_counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => beat_counter(7),
      I1 => beat_counter(5),
      I2 => m_axis_tlast_INST_0_i_2_n_0,
      I3 => beat_counter(4),
      I4 => beat_counter(6),
      O => beat_counter_0(7)
    );
\beat_counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => beat_counter(8),
      I1 => beat_counter(5),
      I2 => beat_counter(4),
      I3 => beat_counter(7),
      I4 => beat_counter(6),
      I5 => m_axis_tlast_INST_0_i_2_n_0,
      O => beat_counter_0(8)
    );
\beat_counter[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A6AA"
    )
        port map (
      I0 => beat_counter(9),
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_1_n_0,
      I3 => beat_counter(8),
      O => beat_counter_0(9)
    );
\beat_counter_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_en,
      D => beat_counter_0(0),
      Q => beat_counter(0),
      R => p_0_in
    );
\beat_counter_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_en,
      D => beat_counter_0(10),
      Q => beat_counter(10),
      R => p_0_in
    );
\beat_counter_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_en,
      D => beat_counter_0(11),
      Q => beat_counter(11),
      R => p_0_in
    );
\beat_counter_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_en,
      D => beat_counter_0(12),
      Q => beat_counter(12),
      R => p_0_in
    );
\beat_counter_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_en,
      D => beat_counter_0(13),
      Q => beat_counter(13),
      R => p_0_in
    );
\beat_counter_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_en,
      D => beat_counter_0(14),
      Q => beat_counter(14),
      R => p_0_in
    );
\beat_counter_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_en,
      D => beat_counter_0(15),
      Q => beat_counter(15),
      R => p_0_in
    );
\beat_counter_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_en,
      D => beat_counter_0(1),
      Q => beat_counter(1),
      R => p_0_in
    );
\beat_counter_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_en,
      D => beat_counter_0(2),
      Q => beat_counter(2),
      R => p_0_in
    );
\beat_counter_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_en,
      D => beat_counter_0(3),
      Q => beat_counter(3),
      R => p_0_in
    );
\beat_counter_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_en,
      D => beat_counter_0(4),
      Q => beat_counter(4),
      R => p_0_in
    );
\beat_counter_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_en,
      D => beat_counter_0(5),
      Q => beat_counter(5),
      R => p_0_in
    );
\beat_counter_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_en,
      D => beat_counter_0(6),
      Q => beat_counter(6),
      R => p_0_in
    );
\beat_counter_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_en,
      D => beat_counter_0(7),
      Q => beat_counter(7),
      R => p_0_in
    );
\beat_counter_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_en,
      D => beat_counter_0(8),
      Q => beat_counter(8),
      R => p_0_in
    );
\beat_counter_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => transfer_en,
      D => beat_counter_0(9),
      Q => beat_counter(9),
      R => p_0_in
    );
m_axis_tlast_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => beat_counter(12),
      I1 => beat_counter(13),
      I2 => m_axis_tlast_INST_0_i_1_n_0,
      I3 => m_axis_tlast_INST_0_i_2_n_0,
      I4 => m_axis_tlast_INST_0_i_3_n_0,
      I5 => m_axis_tlast_INST_0_i_4_n_0,
      O => m_axis_tlast
    );
m_axis_tlast_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => beat_counter(5),
      I1 => beat_counter(4),
      I2 => beat_counter(7),
      I3 => beat_counter(6),
      O => m_axis_tlast_INST_0_i_1_n_0
    );
m_axis_tlast_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => beat_counter(1),
      I1 => beat_counter(0),
      I2 => beat_counter(3),
      I3 => beat_counter(2),
      O => m_axis_tlast_INST_0_i_2_n_0
    );
m_axis_tlast_INST_0_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => beat_counter(10),
      I1 => beat_counter(9),
      I2 => beat_counter(11),
      I3 => beat_counter(8),
      O => m_axis_tlast_INST_0_i_3_n_0
    );
m_axis_tlast_INST_0_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => beat_counter(14),
      I1 => beat_counter(15),
      O => m_axis_tlast_INST_0_i_4_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity T510_design_tlast_generator_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 511 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 511 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of T510_design_tlast_generator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of T510_design_tlast_generator_0_0 : entity is "T510_design_tlast_generator_0_0,tlast_generator,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of T510_design_tlast_generator_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of T510_design_tlast_generator_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of T510_design_tlast_generator_0_0 : entity is "tlast_generator,Vivado 2024.2";
end T510_design_tlast_generator_0_0;

architecture STRUCTURE of T510_design_tlast_generator_0_0 is
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 511 downto 0 );
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_zynq_ultra_ps_e_0_0_pl_clk0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_MODE of aresetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_MODE of m_axis_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_axis_tdata : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN T510_design_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
  attribute X_INTERFACE_MODE of s_axis_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 64, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN T510_design_zynq_ultra_ps_e_0_0_pl_clk0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 512} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value vect} size {attribs {resolve_type generated dependency vect_size format long minimum {} maximum {}} value 8} stride {attribs {resolve_type generated dependency vect_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 64} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 64} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value path} size {attribs {resolve_type generated dependency path_size format long minimum {} maximum {}} value 4} stride {attribs {resolve_type generated dependency path_stride format long minimum {} maximum {}} value 16} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency out_width format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency out_fractwidth format long minimum {} maximum {}} value 0} signed {attribs {resolve_type generated dependency out_signed format bool minimum {} maximum {}} value true}}}}}}}}}}} TDATA_WIDTH 512 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_data_valid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value data_valid} enabled {attribs {resolve_type generated dependency data_valid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency data_valid_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0}}} field_chanid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chanid} enabled {attribs {resolve_type generated dependency chanid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chanid_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency chanid_bitoffset format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_user {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value user} enabled {attribs {resolve_type generated dependency user_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency user_bitwidth format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency user_bitoffset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0";
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s_axis_tdata\(511 downto 0) <= s_axis_tdata(511 downto 0);
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tdata(511 downto 0) <= \^s_axis_tdata\(511 downto 0);
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \^m_axis_tready\;
inst: entity work.T510_design_tlast_generator_0_0_tlast_generator
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => \^m_axis_tready\,
      s_axis_tvalid => \^s_axis_tvalid\
    );
end STRUCTURE;
