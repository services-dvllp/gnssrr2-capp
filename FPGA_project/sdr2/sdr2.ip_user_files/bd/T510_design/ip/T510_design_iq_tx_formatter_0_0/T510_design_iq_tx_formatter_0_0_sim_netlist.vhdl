-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Sat Jul  4 14:01:30 2026
-- Host        : DVLLP006 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Trivedi/2022p2/sdr2/sdr2.gen/sources_1/bd/T510_design/ip/T510_design_iq_tx_formatter_0_0/T510_design_iq_tx_formatter_0_0_sim_netlist.vhdl
-- Design      : T510_design_iq_tx_formatter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu47dr-ffve1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity T510_design_iq_tx_formatter_0_0_iq_tx_formatter is
  port (
    m_band1_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    BAND_DUAL : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of T510_design_iq_tx_formatter_0_0_iq_tx_formatter : entity is "iq_tx_formatter";
end T510_design_iq_tx_formatter_0_0_iq_tx_formatter;

architecture STRUCTURE of T510_design_iq_tx_formatter_0_0_iq_tx_formatter is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_band1_tdata[0]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_band1_tdata[100]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_band1_tdata[101]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_band1_tdata[102]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_band1_tdata[103]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_band1_tdata[104]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_band1_tdata[105]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_band1_tdata[106]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_band1_tdata[107]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_band1_tdata[108]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_band1_tdata[109]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_band1_tdata[10]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_band1_tdata[110]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_band1_tdata[111]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_band1_tdata[112]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_band1_tdata[113]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_band1_tdata[114]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_band1_tdata[115]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_band1_tdata[116]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_band1_tdata[117]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_band1_tdata[118]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_band1_tdata[119]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_band1_tdata[11]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_band1_tdata[120]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_band1_tdata[121]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_band1_tdata[122]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_band1_tdata[123]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_band1_tdata[124]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_band1_tdata[125]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_band1_tdata[126]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m_band1_tdata[127]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m_band1_tdata[12]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_band1_tdata[13]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m_band1_tdata[14]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_band1_tdata[15]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_band1_tdata[16]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_band1_tdata[17]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_band1_tdata[18]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_band1_tdata[19]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_band1_tdata[1]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m_band1_tdata[20]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_band1_tdata[21]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_band1_tdata[22]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_band1_tdata[23]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m_band1_tdata[24]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_band1_tdata[25]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m_band1_tdata[26]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_band1_tdata[27]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_band1_tdata[28]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_band1_tdata[29]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_band1_tdata[2]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_band1_tdata[30]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_band1_tdata[31]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_band1_tdata[32]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_band1_tdata[33]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_band1_tdata[34]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_band1_tdata[35]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_band1_tdata[36]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_band1_tdata[37]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_band1_tdata[38]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_band1_tdata[39]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_band1_tdata[3]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_band1_tdata[40]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_band1_tdata[41]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_band1_tdata[42]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_band1_tdata[43]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_band1_tdata[44]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_band1_tdata[45]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_band1_tdata[46]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_band1_tdata[47]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_band1_tdata[48]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_band1_tdata[49]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_band1_tdata[4]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_band1_tdata[50]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_band1_tdata[51]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_band1_tdata[52]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_band1_tdata[53]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_band1_tdata[54]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_band1_tdata[55]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_band1_tdata[56]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_band1_tdata[57]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_band1_tdata[58]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_band1_tdata[59]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_band1_tdata[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_band1_tdata[60]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_band1_tdata[61]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_band1_tdata[62]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_band1_tdata[63]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_band1_tdata[64]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_band1_tdata[65]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_band1_tdata[66]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_band1_tdata[67]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_band1_tdata[68]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_band1_tdata[69]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_band1_tdata[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_band1_tdata[70]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_band1_tdata[71]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_band1_tdata[72]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_band1_tdata[73]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_band1_tdata[74]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_band1_tdata[75]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_band1_tdata[76]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_band1_tdata[77]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_band1_tdata[78]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_band1_tdata[79]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_band1_tdata[7]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_band1_tdata[80]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_band1_tdata[81]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_band1_tdata[82]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_band1_tdata[83]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_band1_tdata[84]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_band1_tdata[85]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_band1_tdata[86]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_band1_tdata[87]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_band1_tdata[88]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_band1_tdata[89]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_band1_tdata[8]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m_band1_tdata[90]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_band1_tdata[91]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_band1_tdata[92]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_band1_tdata[93]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_band1_tdata[94]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_band1_tdata[95]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_band1_tdata[96]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_band1_tdata[97]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_band1_tdata[98]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_band1_tdata[99]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_band1_tdata[9]_INST_0\ : label is "soft_lutpair4";
begin
\m_band1_tdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(0),
      O => m_band1_tdata(0)
    );
\m_band1_tdata[100]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(100),
      O => m_band1_tdata(100)
    );
\m_band1_tdata[101]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(101),
      O => m_band1_tdata(101)
    );
\m_band1_tdata[102]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(102),
      O => m_band1_tdata(102)
    );
\m_band1_tdata[103]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(103),
      O => m_band1_tdata(103)
    );
\m_band1_tdata[104]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(104),
      O => m_band1_tdata(104)
    );
\m_band1_tdata[105]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(105),
      O => m_band1_tdata(105)
    );
\m_band1_tdata[106]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(106),
      O => m_band1_tdata(106)
    );
\m_band1_tdata[107]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(107),
      O => m_band1_tdata(107)
    );
\m_band1_tdata[108]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(108),
      O => m_band1_tdata(108)
    );
\m_band1_tdata[109]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(109),
      O => m_band1_tdata(109)
    );
\m_band1_tdata[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(10),
      O => m_band1_tdata(10)
    );
\m_band1_tdata[110]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(110),
      O => m_band1_tdata(110)
    );
\m_band1_tdata[111]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(111),
      O => m_band1_tdata(111)
    );
\m_band1_tdata[112]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(112),
      O => m_band1_tdata(112)
    );
\m_band1_tdata[113]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(113),
      O => m_band1_tdata(113)
    );
\m_band1_tdata[114]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(114),
      O => m_band1_tdata(114)
    );
\m_band1_tdata[115]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(115),
      O => m_band1_tdata(115)
    );
\m_band1_tdata[116]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(116),
      O => m_band1_tdata(116)
    );
\m_band1_tdata[117]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(117),
      O => m_band1_tdata(117)
    );
\m_band1_tdata[118]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(118),
      O => m_band1_tdata(118)
    );
\m_band1_tdata[119]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(119),
      O => m_band1_tdata(119)
    );
\m_band1_tdata[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(11),
      O => m_band1_tdata(11)
    );
\m_band1_tdata[120]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(120),
      O => m_band1_tdata(120)
    );
\m_band1_tdata[121]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(121),
      O => m_band1_tdata(121)
    );
\m_band1_tdata[122]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(122),
      O => m_band1_tdata(122)
    );
\m_band1_tdata[123]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(123),
      O => m_band1_tdata(123)
    );
\m_band1_tdata[124]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(124),
      O => m_band1_tdata(124)
    );
\m_band1_tdata[125]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(125),
      O => m_band1_tdata(125)
    );
\m_band1_tdata[126]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(126),
      O => m_band1_tdata(126)
    );
\m_band1_tdata[127]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(127),
      O => m_band1_tdata(127)
    );
\m_band1_tdata[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(12),
      O => m_band1_tdata(12)
    );
\m_band1_tdata[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(13),
      O => m_band1_tdata(13)
    );
\m_band1_tdata[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(14),
      O => m_band1_tdata(14)
    );
\m_band1_tdata[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(15),
      O => m_band1_tdata(15)
    );
\m_band1_tdata[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(16),
      O => m_band1_tdata(16)
    );
\m_band1_tdata[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(17),
      O => m_band1_tdata(17)
    );
\m_band1_tdata[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(18),
      O => m_band1_tdata(18)
    );
\m_band1_tdata[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(19),
      O => m_band1_tdata(19)
    );
\m_band1_tdata[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(1),
      O => m_band1_tdata(1)
    );
\m_band1_tdata[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(20),
      O => m_band1_tdata(20)
    );
\m_band1_tdata[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(21),
      O => m_band1_tdata(21)
    );
\m_band1_tdata[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(22),
      O => m_band1_tdata(22)
    );
\m_band1_tdata[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(23),
      O => m_band1_tdata(23)
    );
\m_band1_tdata[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(24),
      O => m_band1_tdata(24)
    );
\m_band1_tdata[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(25),
      O => m_band1_tdata(25)
    );
\m_band1_tdata[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(26),
      O => m_band1_tdata(26)
    );
\m_band1_tdata[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(27),
      O => m_band1_tdata(27)
    );
\m_band1_tdata[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(28),
      O => m_band1_tdata(28)
    );
\m_band1_tdata[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(29),
      O => m_band1_tdata(29)
    );
\m_band1_tdata[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(2),
      O => m_band1_tdata(2)
    );
\m_band1_tdata[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(30),
      O => m_band1_tdata(30)
    );
\m_band1_tdata[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(31),
      O => m_band1_tdata(31)
    );
\m_band1_tdata[32]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(32),
      O => m_band1_tdata(32)
    );
\m_band1_tdata[33]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(33),
      O => m_band1_tdata(33)
    );
\m_band1_tdata[34]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(34),
      O => m_band1_tdata(34)
    );
\m_band1_tdata[35]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(35),
      O => m_band1_tdata(35)
    );
\m_band1_tdata[36]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(36),
      O => m_band1_tdata(36)
    );
\m_band1_tdata[37]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(37),
      O => m_band1_tdata(37)
    );
\m_band1_tdata[38]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(38),
      O => m_band1_tdata(38)
    );
\m_band1_tdata[39]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(39),
      O => m_band1_tdata(39)
    );
\m_band1_tdata[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(3),
      O => m_band1_tdata(3)
    );
\m_band1_tdata[40]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(40),
      O => m_band1_tdata(40)
    );
\m_band1_tdata[41]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(41),
      O => m_band1_tdata(41)
    );
\m_band1_tdata[42]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(42),
      O => m_band1_tdata(42)
    );
\m_band1_tdata[43]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(43),
      O => m_band1_tdata(43)
    );
\m_band1_tdata[44]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(44),
      O => m_band1_tdata(44)
    );
\m_band1_tdata[45]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(45),
      O => m_band1_tdata(45)
    );
\m_band1_tdata[46]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(46),
      O => m_band1_tdata(46)
    );
\m_band1_tdata[47]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(47),
      O => m_band1_tdata(47)
    );
\m_band1_tdata[48]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(48),
      O => m_band1_tdata(48)
    );
\m_band1_tdata[49]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(49),
      O => m_band1_tdata(49)
    );
\m_band1_tdata[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(4),
      O => m_band1_tdata(4)
    );
\m_band1_tdata[50]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(50),
      O => m_band1_tdata(50)
    );
\m_band1_tdata[51]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(51),
      O => m_band1_tdata(51)
    );
\m_band1_tdata[52]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(52),
      O => m_band1_tdata(52)
    );
\m_band1_tdata[53]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(53),
      O => m_band1_tdata(53)
    );
\m_band1_tdata[54]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(54),
      O => m_band1_tdata(54)
    );
\m_band1_tdata[55]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(55),
      O => m_band1_tdata(55)
    );
\m_band1_tdata[56]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(56),
      O => m_band1_tdata(56)
    );
\m_band1_tdata[57]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(57),
      O => m_band1_tdata(57)
    );
\m_band1_tdata[58]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(58),
      O => m_band1_tdata(58)
    );
\m_band1_tdata[59]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(59),
      O => m_band1_tdata(59)
    );
\m_band1_tdata[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(5),
      O => m_band1_tdata(5)
    );
\m_band1_tdata[60]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(60),
      O => m_band1_tdata(60)
    );
\m_band1_tdata[61]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(61),
      O => m_band1_tdata(61)
    );
\m_band1_tdata[62]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(62),
      O => m_band1_tdata(62)
    );
\m_band1_tdata[63]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(63),
      O => m_band1_tdata(63)
    );
\m_band1_tdata[64]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(64),
      O => m_band1_tdata(64)
    );
\m_band1_tdata[65]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(65),
      O => m_band1_tdata(65)
    );
\m_band1_tdata[66]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(66),
      O => m_band1_tdata(66)
    );
\m_band1_tdata[67]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(67),
      O => m_band1_tdata(67)
    );
\m_band1_tdata[68]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(68),
      O => m_band1_tdata(68)
    );
\m_band1_tdata[69]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(69),
      O => m_band1_tdata(69)
    );
\m_band1_tdata[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(6),
      O => m_band1_tdata(6)
    );
\m_band1_tdata[70]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(70),
      O => m_band1_tdata(70)
    );
\m_band1_tdata[71]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(71),
      O => m_band1_tdata(71)
    );
\m_band1_tdata[72]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(72),
      O => m_band1_tdata(72)
    );
\m_band1_tdata[73]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(73),
      O => m_band1_tdata(73)
    );
\m_band1_tdata[74]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(74),
      O => m_band1_tdata(74)
    );
\m_band1_tdata[75]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(75),
      O => m_band1_tdata(75)
    );
\m_band1_tdata[76]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(76),
      O => m_band1_tdata(76)
    );
\m_band1_tdata[77]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(77),
      O => m_band1_tdata(77)
    );
\m_band1_tdata[78]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(78),
      O => m_band1_tdata(78)
    );
\m_band1_tdata[79]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(79),
      O => m_band1_tdata(79)
    );
\m_band1_tdata[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(7),
      O => m_band1_tdata(7)
    );
\m_band1_tdata[80]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(80),
      O => m_band1_tdata(80)
    );
\m_band1_tdata[81]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(81),
      O => m_band1_tdata(81)
    );
\m_band1_tdata[82]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(82),
      O => m_band1_tdata(82)
    );
\m_band1_tdata[83]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(83),
      O => m_band1_tdata(83)
    );
\m_band1_tdata[84]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(84),
      O => m_band1_tdata(84)
    );
\m_band1_tdata[85]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(85),
      O => m_band1_tdata(85)
    );
\m_band1_tdata[86]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(86),
      O => m_band1_tdata(86)
    );
\m_band1_tdata[87]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(87),
      O => m_band1_tdata(87)
    );
\m_band1_tdata[88]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(88),
      O => m_band1_tdata(88)
    );
\m_band1_tdata[89]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(89),
      O => m_band1_tdata(89)
    );
\m_band1_tdata[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(8),
      O => m_band1_tdata(8)
    );
\m_band1_tdata[90]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(90),
      O => m_band1_tdata(90)
    );
\m_band1_tdata[91]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(91),
      O => m_band1_tdata(91)
    );
\m_band1_tdata[92]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(92),
      O => m_band1_tdata(92)
    );
\m_band1_tdata[93]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(93),
      O => m_band1_tdata(93)
    );
\m_band1_tdata[94]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(94),
      O => m_band1_tdata(94)
    );
\m_band1_tdata[95]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(95),
      O => m_band1_tdata(95)
    );
\m_band1_tdata[96]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(96),
      O => m_band1_tdata(96)
    );
\m_band1_tdata[97]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(97),
      O => m_band1_tdata(97)
    );
\m_band1_tdata[98]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(98),
      O => m_band1_tdata(98)
    );
\m_band1_tdata[99]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(99),
      O => m_band1_tdata(99)
    );
\m_band1_tdata[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => BAND_DUAL,
      I1 => s_axis_tdata(9),
      O => m_band1_tdata(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity T510_design_iq_tx_formatter_0_0 is
  port (
    aclk : in STD_LOGIC;
    cnt_clr : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 255 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_band0_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_band0_tvalid : out STD_LOGIC;
    m_band0_tready : in STD_LOGIC;
    m_band1_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_band1_tvalid : out STD_LOGIC;
    m_band1_tready : in STD_LOGIC;
    BAND_DUAL : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of T510_design_iq_tx_formatter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of T510_design_iq_tx_formatter_0_0 : entity is "T510_design_iq_tx_formatter_0_0,iq_tx_formatter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of T510_design_iq_tx_formatter_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of T510_design_iq_tx_formatter_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of T510_design_iq_tx_formatter_0_0 : entity is "iq_tx_formatter,Vivado 2024.2";
end T510_design_iq_tx_formatter_0_0;

architecture STRUCTURE of T510_design_iq_tx_formatter_0_0 is
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 255 downto 0 );
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of aclk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF S_AXIS:M_BAND0:M_BAND1, FREQ_HZ 30720000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_band0_tready : signal is "xilinx.com:interface:axis:1.0 M_BAND0 TREADY";
  attribute X_INTERFACE_INFO of m_band0_tvalid : signal is "xilinx.com:interface:axis:1.0 M_BAND0 TVALID";
  attribute X_INTERFACE_INFO of m_band1_tready : signal is "xilinx.com:interface:axis:1.0 M_BAND1 TREADY";
  attribute X_INTERFACE_INFO of m_band1_tvalid : signal is "xilinx.com:interface:axis:1.0 M_BAND1 TVALID";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 S_AXIS TREADY";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 S_AXIS TVALID";
  attribute X_INTERFACE_INFO of m_band0_tdata : signal is "xilinx.com:interface:axis:1.0 M_BAND0 TDATA";
  attribute X_INTERFACE_MODE of m_band0_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_band0_tdata : signal is "XIL_INTERFACENAME M_BAND0, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_band1_tdata : signal is "xilinx.com:interface:axis:1.0 M_BAND1 TDATA";
  attribute X_INTERFACE_MODE of m_band1_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of m_band1_tdata : signal is "XIL_INTERFACENAME M_BAND1, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 S_AXIS TDATA";
  attribute X_INTERFACE_MODE of s_axis_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s_axis_tdata : signal is "XIL_INTERFACENAME S_AXIS, TDATA_NUM_BYTES 32, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
begin
  \^s_axis_tdata\(255 downto 0) <= s_axis_tdata(255 downto 0);
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_band0_tdata(127 downto 96) <= \^s_axis_tdata\(223 downto 192);
  m_band0_tdata(95 downto 64) <= \^s_axis_tdata\(159 downto 128);
  m_band0_tdata(63 downto 32) <= \^s_axis_tdata\(95 downto 64);
  m_band0_tdata(31 downto 0) <= \^s_axis_tdata\(31 downto 0);
  m_band0_tvalid <= \^s_axis_tvalid\;
  m_band1_tvalid <= \^s_axis_tvalid\;
inst: entity work.T510_design_iq_tx_formatter_0_0_iq_tx_formatter
     port map (
      BAND_DUAL => BAND_DUAL,
      m_band1_tdata(127 downto 0) => m_band1_tdata(127 downto 0),
      s_axis_tdata(127 downto 96) => \^s_axis_tdata\(255 downto 224),
      s_axis_tdata(95 downto 64) => \^s_axis_tdata\(191 downto 160),
      s_axis_tdata(63 downto 32) => \^s_axis_tdata\(127 downto 96),
      s_axis_tdata(31 downto 0) => \^s_axis_tdata\(63 downto 32)
    );
s_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_band0_tready,
      I1 => m_band1_tready,
      O => s_axis_tready
    );
end STRUCTURE;
