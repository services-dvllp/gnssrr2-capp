-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (win64) Build 5239630 Fri Nov 08 22:35:27 MST 2024
-- Date        : Thu Jun 11 22:34:56 2026
-- Host        : DVLLP006 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top T510_design_axis_4channel_interf_0_0 -prefix
--               T510_design_axis_4channel_interf_0_0_ T510_design_axis_4channel_interf_0_0_sim_netlist.vhdl
-- Design      : T510_design_axis_4channel_interf_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu47dr-ffve1156-2-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity T510_design_axis_4channel_interf_0_0_axis_4channel_interfaces is
  port (
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 115 downto 0 );
    m01_axis_tdata : out STD_LOGIC_VECTOR ( 115 downto 0 );
    m02_axis_tdata : out STD_LOGIC_VECTOR ( 115 downto 0 );
    m03_axis_tdata : out STD_LOGIC_VECTOR ( 115 downto 0 );
    sel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m00_axis_tready : in STD_LOGIC;
    m01_axis_tready : in STD_LOGIC;
    m02_axis_tready : in STD_LOGIC;
    m03_axis_tready : in STD_LOGIC;
    resetn : in STD_LOGIC;
    clk : in STD_LOGIC;
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 115 downto 0 );
    s01_axis_tdata : in STD_LOGIC_VECTOR ( 115 downto 0 );
    s02_axis_tdata : in STD_LOGIC_VECTOR ( 115 downto 0 );
    s03_axis_tdata : in STD_LOGIC_VECTOR ( 115 downto 0 )
  );
end T510_design_axis_4channel_interf_0_0_axis_4channel_interfaces;

architecture STRUCTURE of T510_design_axis_4channel_interf_0_0_axis_4channel_interfaces is
  signal clear : STD_LOGIC;
  signal counter_ch00 : STD_LOGIC;
  signal \counter_ch00_carry__0_n_3\ : STD_LOGIC;
  signal \counter_ch00_carry__0_n_4\ : STD_LOGIC;
  signal \counter_ch00_carry__0_n_5\ : STD_LOGIC;
  signal \counter_ch00_carry__0_n_6\ : STD_LOGIC;
  signal \counter_ch00_carry__0_n_7\ : STD_LOGIC;
  signal counter_ch00_carry_i_1_n_0 : STD_LOGIC;
  signal counter_ch00_carry_n_0 : STD_LOGIC;
  signal counter_ch00_carry_n_1 : STD_LOGIC;
  signal counter_ch00_carry_n_2 : STD_LOGIC;
  signal counter_ch00_carry_n_3 : STD_LOGIC;
  signal counter_ch00_carry_n_4 : STD_LOGIC;
  signal counter_ch00_carry_n_5 : STD_LOGIC;
  signal counter_ch00_carry_n_6 : STD_LOGIC;
  signal counter_ch00_carry_n_7 : STD_LOGIC;
  signal counter_ch0_reg : STD_LOGIC_VECTOR ( 15 downto 3 );
  signal counter_ch10 : STD_LOGIC;
  signal \counter_ch10_carry__0_n_3\ : STD_LOGIC;
  signal \counter_ch10_carry__0_n_4\ : STD_LOGIC;
  signal \counter_ch10_carry__0_n_5\ : STD_LOGIC;
  signal \counter_ch10_carry__0_n_6\ : STD_LOGIC;
  signal \counter_ch10_carry__0_n_7\ : STD_LOGIC;
  signal counter_ch10_carry_i_1_n_0 : STD_LOGIC;
  signal counter_ch10_carry_n_0 : STD_LOGIC;
  signal counter_ch10_carry_n_1 : STD_LOGIC;
  signal counter_ch10_carry_n_2 : STD_LOGIC;
  signal counter_ch10_carry_n_3 : STD_LOGIC;
  signal counter_ch10_carry_n_4 : STD_LOGIC;
  signal counter_ch10_carry_n_5 : STD_LOGIC;
  signal counter_ch10_carry_n_6 : STD_LOGIC;
  signal counter_ch10_carry_n_7 : STD_LOGIC;
  signal counter_ch1_reg : STD_LOGIC_VECTOR ( 15 downto 3 );
  signal counter_ch20 : STD_LOGIC;
  signal \counter_ch20_carry__0_n_3\ : STD_LOGIC;
  signal \counter_ch20_carry__0_n_4\ : STD_LOGIC;
  signal \counter_ch20_carry__0_n_5\ : STD_LOGIC;
  signal \counter_ch20_carry__0_n_6\ : STD_LOGIC;
  signal \counter_ch20_carry__0_n_7\ : STD_LOGIC;
  signal counter_ch20_carry_i_1_n_0 : STD_LOGIC;
  signal counter_ch20_carry_n_0 : STD_LOGIC;
  signal counter_ch20_carry_n_1 : STD_LOGIC;
  signal counter_ch20_carry_n_2 : STD_LOGIC;
  signal counter_ch20_carry_n_3 : STD_LOGIC;
  signal counter_ch20_carry_n_4 : STD_LOGIC;
  signal counter_ch20_carry_n_5 : STD_LOGIC;
  signal counter_ch20_carry_n_6 : STD_LOGIC;
  signal counter_ch20_carry_n_7 : STD_LOGIC;
  signal counter_ch2_reg : STD_LOGIC_VECTOR ( 15 downto 3 );
  signal counter_ch30 : STD_LOGIC;
  signal \counter_ch30_carry__0_n_3\ : STD_LOGIC;
  signal \counter_ch30_carry__0_n_4\ : STD_LOGIC;
  signal \counter_ch30_carry__0_n_5\ : STD_LOGIC;
  signal \counter_ch30_carry__0_n_6\ : STD_LOGIC;
  signal \counter_ch30_carry__0_n_7\ : STD_LOGIC;
  signal counter_ch30_carry_i_1_n_0 : STD_LOGIC;
  signal counter_ch30_carry_n_0 : STD_LOGIC;
  signal counter_ch30_carry_n_1 : STD_LOGIC;
  signal counter_ch30_carry_n_2 : STD_LOGIC;
  signal counter_ch30_carry_n_3 : STD_LOGIC;
  signal counter_ch30_carry_n_4 : STD_LOGIC;
  signal counter_ch30_carry_n_5 : STD_LOGIC;
  signal counter_ch30_carry_n_6 : STD_LOGIC;
  signal counter_ch30_carry_n_7 : STD_LOGIC;
  signal counter_ch3_reg : STD_LOGIC_VECTOR ( 15 downto 3 );
  signal p_0_in : STD_LOGIC_VECTOR ( 15 downto 3 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 15 downto 3 );
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 15 downto 3 );
  signal \p_0_in__2\ : STD_LOGIC_VECTOR ( 15 downto 3 );
  signal NLW_counter_ch00_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_counter_ch00_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_counter_ch00_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_counter_ch10_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_counter_ch10_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_counter_ch10_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_counter_ch20_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_counter_ch20_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_counter_ch20_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  signal NLW_counter_ch30_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \NLW_counter_ch30_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 5 );
  signal \NLW_counter_ch30_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 downto 6 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of counter_ch00_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter_ch00_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of counter_ch10_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter_ch10_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of counter_ch20_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter_ch20_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of counter_ch30_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter_ch30_carry__0\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m00_axis_tdata[100]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m00_axis_tdata[101]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m00_axis_tdata[102]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m00_axis_tdata[103]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m00_axis_tdata[104]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m00_axis_tdata[105]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m00_axis_tdata[106]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m00_axis_tdata[107]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m00_axis_tdata[108]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m00_axis_tdata[109]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m00_axis_tdata[10]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m00_axis_tdata[110]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m00_axis_tdata[111]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m00_axis_tdata[112]_INST_0\ : label is "soft_lutpair208";
  attribute SOFT_HLUTNM of \m00_axis_tdata[113]_INST_0\ : label is "soft_lutpair208";
  attribute SOFT_HLUTNM of \m00_axis_tdata[114]_INST_0\ : label is "soft_lutpair212";
  attribute SOFT_HLUTNM of \m00_axis_tdata[115]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m00_axis_tdata[116]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m00_axis_tdata[117]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m00_axis_tdata[118]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m00_axis_tdata[119]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m00_axis_tdata[11]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m00_axis_tdata[120]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m00_axis_tdata[121]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m00_axis_tdata[122]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m00_axis_tdata[123]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m00_axis_tdata[124]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m00_axis_tdata[125]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m00_axis_tdata[126]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m00_axis_tdata[127]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m00_axis_tdata[12]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m00_axis_tdata[13]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m00_axis_tdata[14]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m00_axis_tdata[15]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m00_axis_tdata[16]_INST_0\ : label is "soft_lutpair211";
  attribute SOFT_HLUTNM of \m00_axis_tdata[19]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m00_axis_tdata[20]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m00_axis_tdata[21]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m00_axis_tdata[22]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m00_axis_tdata[23]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m00_axis_tdata[24]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m00_axis_tdata[25]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m00_axis_tdata[26]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m00_axis_tdata[27]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m00_axis_tdata[28]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m00_axis_tdata[29]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m00_axis_tdata[30]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \m00_axis_tdata[31]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \m00_axis_tdata[33]_INST_0\ : label is "soft_lutpair211";
  attribute SOFT_HLUTNM of \m00_axis_tdata[35]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m00_axis_tdata[36]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m00_axis_tdata[37]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m00_axis_tdata[38]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m00_axis_tdata[39]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m00_axis_tdata[3]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \m00_axis_tdata[40]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m00_axis_tdata[41]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m00_axis_tdata[42]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m00_axis_tdata[43]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m00_axis_tdata[44]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m00_axis_tdata[45]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m00_axis_tdata[46]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m00_axis_tdata[47]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m00_axis_tdata[48]_INST_0\ : label is "soft_lutpair210";
  attribute SOFT_HLUTNM of \m00_axis_tdata[49]_INST_0\ : label is "soft_lutpair210";
  attribute SOFT_HLUTNM of \m00_axis_tdata[4]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m00_axis_tdata[51]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m00_axis_tdata[52]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m00_axis_tdata[53]_INST_0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m00_axis_tdata[54]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m00_axis_tdata[55]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m00_axis_tdata[56]_INST_0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m00_axis_tdata[57]_INST_0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m00_axis_tdata[58]_INST_0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m00_axis_tdata[59]_INST_0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m00_axis_tdata[5]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m00_axis_tdata[60]_INST_0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m00_axis_tdata[61]_INST_0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m00_axis_tdata[62]_INST_0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m00_axis_tdata[63]_INST_0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m00_axis_tdata[66]_INST_0\ : label is "soft_lutpair213";
  attribute SOFT_HLUTNM of \m00_axis_tdata[67]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m00_axis_tdata[68]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m00_axis_tdata[69]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m00_axis_tdata[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m00_axis_tdata[70]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m00_axis_tdata[71]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m00_axis_tdata[72]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m00_axis_tdata[73]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m00_axis_tdata[74]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m00_axis_tdata[75]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m00_axis_tdata[76]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m00_axis_tdata[77]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m00_axis_tdata[78]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m00_axis_tdata[79]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m00_axis_tdata[7]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \m00_axis_tdata[80]_INST_0\ : label is "soft_lutpair209";
  attribute SOFT_HLUTNM of \m00_axis_tdata[82]_INST_0\ : label is "soft_lutpair213";
  attribute SOFT_HLUTNM of \m00_axis_tdata[83]_INST_0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m00_axis_tdata[84]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m00_axis_tdata[85]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m00_axis_tdata[86]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m00_axis_tdata[87]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m00_axis_tdata[88]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m00_axis_tdata[89]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m00_axis_tdata[8]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m00_axis_tdata[90]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m00_axis_tdata[91]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m00_axis_tdata[92]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m00_axis_tdata[93]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m00_axis_tdata[94]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m00_axis_tdata[95]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m00_axis_tdata[97]_INST_0\ : label is "soft_lutpair209";
  attribute SOFT_HLUTNM of \m00_axis_tdata[98]_INST_0\ : label is "soft_lutpair212";
  attribute SOFT_HLUTNM of \m00_axis_tdata[99]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m00_axis_tdata[9]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \m01_axis_tdata[100]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \m01_axis_tdata[101]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \m01_axis_tdata[102]_INST_0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \m01_axis_tdata[103]_INST_0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \m01_axis_tdata[104]_INST_0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \m01_axis_tdata[105]_INST_0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \m01_axis_tdata[106]_INST_0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \m01_axis_tdata[107]_INST_0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \m01_axis_tdata[108]_INST_0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \m01_axis_tdata[109]_INST_0\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \m01_axis_tdata[10]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m01_axis_tdata[110]_INST_0\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \m01_axis_tdata[111]_INST_0\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \m01_axis_tdata[112]_INST_0\ : label is "soft_lutpair214";
  attribute SOFT_HLUTNM of \m01_axis_tdata[113]_INST_0\ : label is "soft_lutpair214";
  attribute SOFT_HLUTNM of \m01_axis_tdata[114]_INST_0\ : label is "soft_lutpair218";
  attribute SOFT_HLUTNM of \m01_axis_tdata[115]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \m01_axis_tdata[116]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \m01_axis_tdata[117]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \m01_axis_tdata[118]_INST_0\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \m01_axis_tdata[119]_INST_0\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \m01_axis_tdata[11]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m01_axis_tdata[120]_INST_0\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \m01_axis_tdata[121]_INST_0\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \m01_axis_tdata[122]_INST_0\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \m01_axis_tdata[123]_INST_0\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \m01_axis_tdata[124]_INST_0\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \m01_axis_tdata[125]_INST_0\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \m01_axis_tdata[126]_INST_0\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \m01_axis_tdata[127]_INST_0\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \m01_axis_tdata[12]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m01_axis_tdata[13]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m01_axis_tdata[14]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m01_axis_tdata[15]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m01_axis_tdata[16]_INST_0\ : label is "soft_lutpair217";
  attribute SOFT_HLUTNM of \m01_axis_tdata[19]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m01_axis_tdata[20]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m01_axis_tdata[21]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m01_axis_tdata[22]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m01_axis_tdata[23]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m01_axis_tdata[24]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m01_axis_tdata[25]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m01_axis_tdata[26]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m01_axis_tdata[27]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m01_axis_tdata[28]_INST_0\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m01_axis_tdata[29]_INST_0\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m01_axis_tdata[30]_INST_0\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m01_axis_tdata[31]_INST_0\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m01_axis_tdata[33]_INST_0\ : label is "soft_lutpair217";
  attribute SOFT_HLUTNM of \m01_axis_tdata[35]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \m01_axis_tdata[36]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \m01_axis_tdata[37]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \m01_axis_tdata[38]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \m01_axis_tdata[39]_INST_0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \m01_axis_tdata[3]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m01_axis_tdata[40]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m01_axis_tdata[41]_INST_0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m01_axis_tdata[42]_INST_0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \m01_axis_tdata[43]_INST_0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \m01_axis_tdata[44]_INST_0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m01_axis_tdata[45]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \m01_axis_tdata[46]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m01_axis_tdata[47]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m01_axis_tdata[48]_INST_0\ : label is "soft_lutpair216";
  attribute SOFT_HLUTNM of \m01_axis_tdata[49]_INST_0\ : label is "soft_lutpair216";
  attribute SOFT_HLUTNM of \m01_axis_tdata[4]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m01_axis_tdata[51]_INST_0\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \m01_axis_tdata[52]_INST_0\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \m01_axis_tdata[53]_INST_0\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \m01_axis_tdata[54]_INST_0\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \m01_axis_tdata[55]_INST_0\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \m01_axis_tdata[56]_INST_0\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m01_axis_tdata[57]_INST_0\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m01_axis_tdata[58]_INST_0\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \m01_axis_tdata[59]_INST_0\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \m01_axis_tdata[5]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m01_axis_tdata[60]_INST_0\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m01_axis_tdata[61]_INST_0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \m01_axis_tdata[62]_INST_0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m01_axis_tdata[63]_INST_0\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m01_axis_tdata[66]_INST_0\ : label is "soft_lutpair219";
  attribute SOFT_HLUTNM of \m01_axis_tdata[67]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m01_axis_tdata[68]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m01_axis_tdata[69]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m01_axis_tdata[6]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m01_axis_tdata[70]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m01_axis_tdata[71]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m01_axis_tdata[72]_INST_0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m01_axis_tdata[73]_INST_0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m01_axis_tdata[74]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \m01_axis_tdata[75]_INST_0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \m01_axis_tdata[76]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \m01_axis_tdata[77]_INST_0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \m01_axis_tdata[78]_INST_0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m01_axis_tdata[79]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m01_axis_tdata[7]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m01_axis_tdata[80]_INST_0\ : label is "soft_lutpair215";
  attribute SOFT_HLUTNM of \m01_axis_tdata[82]_INST_0\ : label is "soft_lutpair219";
  attribute SOFT_HLUTNM of \m01_axis_tdata[83]_INST_0\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m01_axis_tdata[84]_INST_0\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \m01_axis_tdata[85]_INST_0\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \m01_axis_tdata[86]_INST_0\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \m01_axis_tdata[87]_INST_0\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \m01_axis_tdata[88]_INST_0\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \m01_axis_tdata[89]_INST_0\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \m01_axis_tdata[8]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m01_axis_tdata[90]_INST_0\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \m01_axis_tdata[91]_INST_0\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \m01_axis_tdata[92]_INST_0\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \m01_axis_tdata[93]_INST_0\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \m01_axis_tdata[94]_INST_0\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \m01_axis_tdata[95]_INST_0\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \m01_axis_tdata[97]_INST_0\ : label is "soft_lutpair215";
  attribute SOFT_HLUTNM of \m01_axis_tdata[98]_INST_0\ : label is "soft_lutpair218";
  attribute SOFT_HLUTNM of \m01_axis_tdata[99]_INST_0\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \m01_axis_tdata[9]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m02_axis_tdata[100]_INST_0\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \m02_axis_tdata[101]_INST_0\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \m02_axis_tdata[102]_INST_0\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \m02_axis_tdata[103]_INST_0\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \m02_axis_tdata[104]_INST_0\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \m02_axis_tdata[105]_INST_0\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \m02_axis_tdata[106]_INST_0\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \m02_axis_tdata[107]_INST_0\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \m02_axis_tdata[108]_INST_0\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \m02_axis_tdata[109]_INST_0\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \m02_axis_tdata[10]_INST_0\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \m02_axis_tdata[110]_INST_0\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \m02_axis_tdata[111]_INST_0\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \m02_axis_tdata[112]_INST_0\ : label is "soft_lutpair220";
  attribute SOFT_HLUTNM of \m02_axis_tdata[113]_INST_0\ : label is "soft_lutpair220";
  attribute SOFT_HLUTNM of \m02_axis_tdata[114]_INST_0\ : label is "soft_lutpair224";
  attribute SOFT_HLUTNM of \m02_axis_tdata[115]_INST_0\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \m02_axis_tdata[116]_INST_0\ : label is "soft_lutpair144";
  attribute SOFT_HLUTNM of \m02_axis_tdata[117]_INST_0\ : label is "soft_lutpair145";
  attribute SOFT_HLUTNM of \m02_axis_tdata[118]_INST_0\ : label is "soft_lutpair146";
  attribute SOFT_HLUTNM of \m02_axis_tdata[119]_INST_0\ : label is "soft_lutpair147";
  attribute SOFT_HLUTNM of \m02_axis_tdata[11]_INST_0\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \m02_axis_tdata[120]_INST_0\ : label is "soft_lutpair148";
  attribute SOFT_HLUTNM of \m02_axis_tdata[121]_INST_0\ : label is "soft_lutpair149";
  attribute SOFT_HLUTNM of \m02_axis_tdata[122]_INST_0\ : label is "soft_lutpair150";
  attribute SOFT_HLUTNM of \m02_axis_tdata[123]_INST_0\ : label is "soft_lutpair151";
  attribute SOFT_HLUTNM of \m02_axis_tdata[124]_INST_0\ : label is "soft_lutpair152";
  attribute SOFT_HLUTNM of \m02_axis_tdata[125]_INST_0\ : label is "soft_lutpair153";
  attribute SOFT_HLUTNM of \m02_axis_tdata[126]_INST_0\ : label is "soft_lutpair154";
  attribute SOFT_HLUTNM of \m02_axis_tdata[127]_INST_0\ : label is "soft_lutpair155";
  attribute SOFT_HLUTNM of \m02_axis_tdata[12]_INST_0\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \m02_axis_tdata[13]_INST_0\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \m02_axis_tdata[14]_INST_0\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \m02_axis_tdata[15]_INST_0\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \m02_axis_tdata[16]_INST_0\ : label is "soft_lutpair223";
  attribute SOFT_HLUTNM of \m02_axis_tdata[19]_INST_0\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \m02_axis_tdata[20]_INST_0\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \m02_axis_tdata[21]_INST_0\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \m02_axis_tdata[22]_INST_0\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \m02_axis_tdata[23]_INST_0\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \m02_axis_tdata[24]_INST_0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \m02_axis_tdata[25]_INST_0\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \m02_axis_tdata[26]_INST_0\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \m02_axis_tdata[27]_INST_0\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \m02_axis_tdata[28]_INST_0\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \m02_axis_tdata[29]_INST_0\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \m02_axis_tdata[30]_INST_0\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \m02_axis_tdata[31]_INST_0\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \m02_axis_tdata[33]_INST_0\ : label is "soft_lutpair223";
  attribute SOFT_HLUTNM of \m02_axis_tdata[35]_INST_0\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \m02_axis_tdata[36]_INST_0\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \m02_axis_tdata[37]_INST_0\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \m02_axis_tdata[38]_INST_0\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \m02_axis_tdata[39]_INST_0\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \m02_axis_tdata[3]_INST_0\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \m02_axis_tdata[40]_INST_0\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \m02_axis_tdata[41]_INST_0\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \m02_axis_tdata[42]_INST_0\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \m02_axis_tdata[43]_INST_0\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \m02_axis_tdata[44]_INST_0\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \m02_axis_tdata[45]_INST_0\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \m02_axis_tdata[46]_INST_0\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \m02_axis_tdata[47]_INST_0\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \m02_axis_tdata[48]_INST_0\ : label is "soft_lutpair222";
  attribute SOFT_HLUTNM of \m02_axis_tdata[49]_INST_0\ : label is "soft_lutpair222";
  attribute SOFT_HLUTNM of \m02_axis_tdata[4]_INST_0\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \m02_axis_tdata[51]_INST_0\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \m02_axis_tdata[52]_INST_0\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \m02_axis_tdata[53]_INST_0\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \m02_axis_tdata[54]_INST_0\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \m02_axis_tdata[55]_INST_0\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \m02_axis_tdata[56]_INST_0\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \m02_axis_tdata[57]_INST_0\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \m02_axis_tdata[58]_INST_0\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \m02_axis_tdata[59]_INST_0\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \m02_axis_tdata[5]_INST_0\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \m02_axis_tdata[60]_INST_0\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \m02_axis_tdata[61]_INST_0\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \m02_axis_tdata[62]_INST_0\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \m02_axis_tdata[63]_INST_0\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \m02_axis_tdata[66]_INST_0\ : label is "soft_lutpair225";
  attribute SOFT_HLUTNM of \m02_axis_tdata[67]_INST_0\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \m02_axis_tdata[68]_INST_0\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \m02_axis_tdata[69]_INST_0\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \m02_axis_tdata[6]_INST_0\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \m02_axis_tdata[70]_INST_0\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \m02_axis_tdata[71]_INST_0\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \m02_axis_tdata[72]_INST_0\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \m02_axis_tdata[73]_INST_0\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \m02_axis_tdata[74]_INST_0\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \m02_axis_tdata[75]_INST_0\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \m02_axis_tdata[76]_INST_0\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \m02_axis_tdata[77]_INST_0\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \m02_axis_tdata[78]_INST_0\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \m02_axis_tdata[79]_INST_0\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \m02_axis_tdata[7]_INST_0\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \m02_axis_tdata[80]_INST_0\ : label is "soft_lutpair221";
  attribute SOFT_HLUTNM of \m02_axis_tdata[82]_INST_0\ : label is "soft_lutpair225";
  attribute SOFT_HLUTNM of \m02_axis_tdata[83]_INST_0\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \m02_axis_tdata[84]_INST_0\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \m02_axis_tdata[85]_INST_0\ : label is "soft_lutpair132";
  attribute SOFT_HLUTNM of \m02_axis_tdata[86]_INST_0\ : label is "soft_lutpair133";
  attribute SOFT_HLUTNM of \m02_axis_tdata[87]_INST_0\ : label is "soft_lutpair134";
  attribute SOFT_HLUTNM of \m02_axis_tdata[88]_INST_0\ : label is "soft_lutpair135";
  attribute SOFT_HLUTNM of \m02_axis_tdata[89]_INST_0\ : label is "soft_lutpair136";
  attribute SOFT_HLUTNM of \m02_axis_tdata[8]_INST_0\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \m02_axis_tdata[90]_INST_0\ : label is "soft_lutpair137";
  attribute SOFT_HLUTNM of \m02_axis_tdata[91]_INST_0\ : label is "soft_lutpair138";
  attribute SOFT_HLUTNM of \m02_axis_tdata[92]_INST_0\ : label is "soft_lutpair139";
  attribute SOFT_HLUTNM of \m02_axis_tdata[93]_INST_0\ : label is "soft_lutpair140";
  attribute SOFT_HLUTNM of \m02_axis_tdata[94]_INST_0\ : label is "soft_lutpair141";
  attribute SOFT_HLUTNM of \m02_axis_tdata[95]_INST_0\ : label is "soft_lutpair142";
  attribute SOFT_HLUTNM of \m02_axis_tdata[97]_INST_0\ : label is "soft_lutpair221";
  attribute SOFT_HLUTNM of \m02_axis_tdata[98]_INST_0\ : label is "soft_lutpair224";
  attribute SOFT_HLUTNM of \m02_axis_tdata[99]_INST_0\ : label is "soft_lutpair143";
  attribute SOFT_HLUTNM of \m02_axis_tdata[9]_INST_0\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \m03_axis_tdata[100]_INST_0\ : label is "soft_lutpair196";
  attribute SOFT_HLUTNM of \m03_axis_tdata[101]_INST_0\ : label is "soft_lutpair197";
  attribute SOFT_HLUTNM of \m03_axis_tdata[102]_INST_0\ : label is "soft_lutpair198";
  attribute SOFT_HLUTNM of \m03_axis_tdata[103]_INST_0\ : label is "soft_lutpair199";
  attribute SOFT_HLUTNM of \m03_axis_tdata[104]_INST_0\ : label is "soft_lutpair200";
  attribute SOFT_HLUTNM of \m03_axis_tdata[105]_INST_0\ : label is "soft_lutpair201";
  attribute SOFT_HLUTNM of \m03_axis_tdata[106]_INST_0\ : label is "soft_lutpair202";
  attribute SOFT_HLUTNM of \m03_axis_tdata[107]_INST_0\ : label is "soft_lutpair203";
  attribute SOFT_HLUTNM of \m03_axis_tdata[108]_INST_0\ : label is "soft_lutpair204";
  attribute SOFT_HLUTNM of \m03_axis_tdata[109]_INST_0\ : label is "soft_lutpair205";
  attribute SOFT_HLUTNM of \m03_axis_tdata[10]_INST_0\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \m03_axis_tdata[110]_INST_0\ : label is "soft_lutpair206";
  attribute SOFT_HLUTNM of \m03_axis_tdata[111]_INST_0\ : label is "soft_lutpair207";
  attribute SOFT_HLUTNM of \m03_axis_tdata[112]_INST_0\ : label is "soft_lutpair226";
  attribute SOFT_HLUTNM of \m03_axis_tdata[113]_INST_0\ : label is "soft_lutpair226";
  attribute SOFT_HLUTNM of \m03_axis_tdata[114]_INST_0\ : label is "soft_lutpair230";
  attribute SOFT_HLUTNM of \m03_axis_tdata[115]_INST_0\ : label is "soft_lutpair195";
  attribute SOFT_HLUTNM of \m03_axis_tdata[116]_INST_0\ : label is "soft_lutpair196";
  attribute SOFT_HLUTNM of \m03_axis_tdata[117]_INST_0\ : label is "soft_lutpair197";
  attribute SOFT_HLUTNM of \m03_axis_tdata[118]_INST_0\ : label is "soft_lutpair198";
  attribute SOFT_HLUTNM of \m03_axis_tdata[119]_INST_0\ : label is "soft_lutpair199";
  attribute SOFT_HLUTNM of \m03_axis_tdata[11]_INST_0\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \m03_axis_tdata[120]_INST_0\ : label is "soft_lutpair200";
  attribute SOFT_HLUTNM of \m03_axis_tdata[121]_INST_0\ : label is "soft_lutpair201";
  attribute SOFT_HLUTNM of \m03_axis_tdata[122]_INST_0\ : label is "soft_lutpair202";
  attribute SOFT_HLUTNM of \m03_axis_tdata[123]_INST_0\ : label is "soft_lutpair203";
  attribute SOFT_HLUTNM of \m03_axis_tdata[124]_INST_0\ : label is "soft_lutpair204";
  attribute SOFT_HLUTNM of \m03_axis_tdata[125]_INST_0\ : label is "soft_lutpair205";
  attribute SOFT_HLUTNM of \m03_axis_tdata[126]_INST_0\ : label is "soft_lutpair206";
  attribute SOFT_HLUTNM of \m03_axis_tdata[127]_INST_0\ : label is "soft_lutpair207";
  attribute SOFT_HLUTNM of \m03_axis_tdata[12]_INST_0\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \m03_axis_tdata[13]_INST_0\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \m03_axis_tdata[14]_INST_0\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \m03_axis_tdata[15]_INST_0\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \m03_axis_tdata[16]_INST_0\ : label is "soft_lutpair229";
  attribute SOFT_HLUTNM of \m03_axis_tdata[19]_INST_0\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \m03_axis_tdata[20]_INST_0\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \m03_axis_tdata[21]_INST_0\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \m03_axis_tdata[22]_INST_0\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \m03_axis_tdata[23]_INST_0\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \m03_axis_tdata[24]_INST_0\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \m03_axis_tdata[25]_INST_0\ : label is "soft_lutpair162";
  attribute SOFT_HLUTNM of \m03_axis_tdata[26]_INST_0\ : label is "soft_lutpair163";
  attribute SOFT_HLUTNM of \m03_axis_tdata[27]_INST_0\ : label is "soft_lutpair164";
  attribute SOFT_HLUTNM of \m03_axis_tdata[28]_INST_0\ : label is "soft_lutpair165";
  attribute SOFT_HLUTNM of \m03_axis_tdata[29]_INST_0\ : label is "soft_lutpair166";
  attribute SOFT_HLUTNM of \m03_axis_tdata[30]_INST_0\ : label is "soft_lutpair167";
  attribute SOFT_HLUTNM of \m03_axis_tdata[31]_INST_0\ : label is "soft_lutpair168";
  attribute SOFT_HLUTNM of \m03_axis_tdata[33]_INST_0\ : label is "soft_lutpair229";
  attribute SOFT_HLUTNM of \m03_axis_tdata[35]_INST_0\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \m03_axis_tdata[36]_INST_0\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \m03_axis_tdata[37]_INST_0\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \m03_axis_tdata[38]_INST_0\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \m03_axis_tdata[39]_INST_0\ : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of \m03_axis_tdata[3]_INST_0\ : label is "soft_lutpair156";
  attribute SOFT_HLUTNM of \m03_axis_tdata[40]_INST_0\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \m03_axis_tdata[41]_INST_0\ : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of \m03_axis_tdata[42]_INST_0\ : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of \m03_axis_tdata[43]_INST_0\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of \m03_axis_tdata[44]_INST_0\ : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of \m03_axis_tdata[45]_INST_0\ : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of \m03_axis_tdata[46]_INST_0\ : label is "soft_lutpair180";
  attribute SOFT_HLUTNM of \m03_axis_tdata[47]_INST_0\ : label is "soft_lutpair181";
  attribute SOFT_HLUTNM of \m03_axis_tdata[48]_INST_0\ : label is "soft_lutpair228";
  attribute SOFT_HLUTNM of \m03_axis_tdata[49]_INST_0\ : label is "soft_lutpair228";
  attribute SOFT_HLUTNM of \m03_axis_tdata[4]_INST_0\ : label is "soft_lutpair157";
  attribute SOFT_HLUTNM of \m03_axis_tdata[51]_INST_0\ : label is "soft_lutpair169";
  attribute SOFT_HLUTNM of \m03_axis_tdata[52]_INST_0\ : label is "soft_lutpair170";
  attribute SOFT_HLUTNM of \m03_axis_tdata[53]_INST_0\ : label is "soft_lutpair171";
  attribute SOFT_HLUTNM of \m03_axis_tdata[54]_INST_0\ : label is "soft_lutpair172";
  attribute SOFT_HLUTNM of \m03_axis_tdata[55]_INST_0\ : label is "soft_lutpair173";
  attribute SOFT_HLUTNM of \m03_axis_tdata[56]_INST_0\ : label is "soft_lutpair174";
  attribute SOFT_HLUTNM of \m03_axis_tdata[57]_INST_0\ : label is "soft_lutpair175";
  attribute SOFT_HLUTNM of \m03_axis_tdata[58]_INST_0\ : label is "soft_lutpair176";
  attribute SOFT_HLUTNM of \m03_axis_tdata[59]_INST_0\ : label is "soft_lutpair177";
  attribute SOFT_HLUTNM of \m03_axis_tdata[5]_INST_0\ : label is "soft_lutpair158";
  attribute SOFT_HLUTNM of \m03_axis_tdata[60]_INST_0\ : label is "soft_lutpair178";
  attribute SOFT_HLUTNM of \m03_axis_tdata[61]_INST_0\ : label is "soft_lutpair179";
  attribute SOFT_HLUTNM of \m03_axis_tdata[62]_INST_0\ : label is "soft_lutpair180";
  attribute SOFT_HLUTNM of \m03_axis_tdata[63]_INST_0\ : label is "soft_lutpair181";
  attribute SOFT_HLUTNM of \m03_axis_tdata[66]_INST_0\ : label is "soft_lutpair231";
  attribute SOFT_HLUTNM of \m03_axis_tdata[67]_INST_0\ : label is "soft_lutpair182";
  attribute SOFT_HLUTNM of \m03_axis_tdata[68]_INST_0\ : label is "soft_lutpair183";
  attribute SOFT_HLUTNM of \m03_axis_tdata[69]_INST_0\ : label is "soft_lutpair184";
  attribute SOFT_HLUTNM of \m03_axis_tdata[6]_INST_0\ : label is "soft_lutpair159";
  attribute SOFT_HLUTNM of \m03_axis_tdata[70]_INST_0\ : label is "soft_lutpair185";
  attribute SOFT_HLUTNM of \m03_axis_tdata[71]_INST_0\ : label is "soft_lutpair186";
  attribute SOFT_HLUTNM of \m03_axis_tdata[72]_INST_0\ : label is "soft_lutpair187";
  attribute SOFT_HLUTNM of \m03_axis_tdata[73]_INST_0\ : label is "soft_lutpair188";
  attribute SOFT_HLUTNM of \m03_axis_tdata[74]_INST_0\ : label is "soft_lutpair189";
  attribute SOFT_HLUTNM of \m03_axis_tdata[75]_INST_0\ : label is "soft_lutpair190";
  attribute SOFT_HLUTNM of \m03_axis_tdata[76]_INST_0\ : label is "soft_lutpair191";
  attribute SOFT_HLUTNM of \m03_axis_tdata[77]_INST_0\ : label is "soft_lutpair192";
  attribute SOFT_HLUTNM of \m03_axis_tdata[78]_INST_0\ : label is "soft_lutpair193";
  attribute SOFT_HLUTNM of \m03_axis_tdata[79]_INST_0\ : label is "soft_lutpair194";
  attribute SOFT_HLUTNM of \m03_axis_tdata[7]_INST_0\ : label is "soft_lutpair160";
  attribute SOFT_HLUTNM of \m03_axis_tdata[80]_INST_0\ : label is "soft_lutpair227";
  attribute SOFT_HLUTNM of \m03_axis_tdata[82]_INST_0\ : label is "soft_lutpair231";
  attribute SOFT_HLUTNM of \m03_axis_tdata[83]_INST_0\ : label is "soft_lutpair182";
  attribute SOFT_HLUTNM of \m03_axis_tdata[84]_INST_0\ : label is "soft_lutpair183";
  attribute SOFT_HLUTNM of \m03_axis_tdata[85]_INST_0\ : label is "soft_lutpair184";
  attribute SOFT_HLUTNM of \m03_axis_tdata[86]_INST_0\ : label is "soft_lutpair185";
  attribute SOFT_HLUTNM of \m03_axis_tdata[87]_INST_0\ : label is "soft_lutpair186";
  attribute SOFT_HLUTNM of \m03_axis_tdata[88]_INST_0\ : label is "soft_lutpair187";
  attribute SOFT_HLUTNM of \m03_axis_tdata[89]_INST_0\ : label is "soft_lutpair188";
  attribute SOFT_HLUTNM of \m03_axis_tdata[8]_INST_0\ : label is "soft_lutpair161";
  attribute SOFT_HLUTNM of \m03_axis_tdata[90]_INST_0\ : label is "soft_lutpair189";
  attribute SOFT_HLUTNM of \m03_axis_tdata[91]_INST_0\ : label is "soft_lutpair190";
  attribute SOFT_HLUTNM of \m03_axis_tdata[92]_INST_0\ : label is "soft_lutpair191";
  attribute SOFT_HLUTNM of \m03_axis_tdata[93]_INST_0\ : label is "soft_lutpair192";
  attribute SOFT_HLUTNM of \m03_axis_tdata[94]_INST_0\ : label is "soft_lutpair193";
  attribute SOFT_HLUTNM of \m03_axis_tdata[95]_INST_0\ : label is "soft_lutpair194";
  attribute SOFT_HLUTNM of \m03_axis_tdata[97]_INST_0\ : label is "soft_lutpair227";
  attribute SOFT_HLUTNM of \m03_axis_tdata[98]_INST_0\ : label is "soft_lutpair230";
  attribute SOFT_HLUTNM of \m03_axis_tdata[99]_INST_0\ : label is "soft_lutpair195";
  attribute SOFT_HLUTNM of \m03_axis_tdata[9]_INST_0\ : label is "soft_lutpair162";
begin
counter_ch00_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => counter_ch00_carry_n_0,
      CO(6) => counter_ch00_carry_n_1,
      CO(5) => counter_ch00_carry_n_2,
      CO(4) => counter_ch00_carry_n_3,
      CO(3) => counter_ch00_carry_n_4,
      CO(2) => counter_ch00_carry_n_5,
      CO(1) => counter_ch00_carry_n_6,
      CO(0) => counter_ch00_carry_n_7,
      DI(7 downto 2) => B"000000",
      DI(1) => counter_ch0_reg(3),
      DI(0) => '0',
      O(7 downto 1) => p_0_in(9 downto 3),
      O(0) => NLW_counter_ch00_carry_O_UNCONNECTED(0),
      S(7 downto 2) => counter_ch0_reg(9 downto 4),
      S(1) => counter_ch00_carry_i_1_n_0,
      S(0) => '0'
    );
\counter_ch00_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => counter_ch00_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_counter_ch00_carry__0_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \counter_ch00_carry__0_n_3\,
      CO(3) => \counter_ch00_carry__0_n_4\,
      CO(2) => \counter_ch00_carry__0_n_5\,
      CO(1) => \counter_ch00_carry__0_n_6\,
      CO(0) => \counter_ch00_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 6) => \NLW_counter_ch00_carry__0_O_UNCONNECTED\(7 downto 6),
      O(5 downto 0) => p_0_in(15 downto 10),
      S(7 downto 6) => B"00",
      S(5 downto 0) => counter_ch0_reg(15 downto 10)
    );
counter_ch00_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_ch0_reg(3),
      O => counter_ch00_carry_i_1_n_0
    );
\counter_ch0[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => resetn,
      O => clear
    );
\counter_ch0[15]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel(0),
      I1 => m00_axis_tready,
      O => counter_ch00
    );
\counter_ch0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch00,
      D => p_0_in(10),
      Q => counter_ch0_reg(10),
      R => clear
    );
\counter_ch0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch00,
      D => p_0_in(11),
      Q => counter_ch0_reg(11),
      R => clear
    );
\counter_ch0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch00,
      D => p_0_in(12),
      Q => counter_ch0_reg(12),
      R => clear
    );
\counter_ch0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch00,
      D => p_0_in(13),
      Q => counter_ch0_reg(13),
      R => clear
    );
\counter_ch0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch00,
      D => p_0_in(14),
      Q => counter_ch0_reg(14),
      R => clear
    );
\counter_ch0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch00,
      D => p_0_in(15),
      Q => counter_ch0_reg(15),
      R => clear
    );
\counter_ch0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch00,
      D => p_0_in(3),
      Q => counter_ch0_reg(3),
      R => clear
    );
\counter_ch0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch00,
      D => p_0_in(4),
      Q => counter_ch0_reg(4),
      R => clear
    );
\counter_ch0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch00,
      D => p_0_in(5),
      Q => counter_ch0_reg(5),
      R => clear
    );
\counter_ch0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch00,
      D => p_0_in(6),
      Q => counter_ch0_reg(6),
      R => clear
    );
\counter_ch0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch00,
      D => p_0_in(7),
      Q => counter_ch0_reg(7),
      R => clear
    );
\counter_ch0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch00,
      D => p_0_in(8),
      Q => counter_ch0_reg(8),
      R => clear
    );
\counter_ch0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch00,
      D => p_0_in(9),
      Q => counter_ch0_reg(9),
      R => clear
    );
counter_ch10_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => counter_ch10_carry_n_0,
      CO(6) => counter_ch10_carry_n_1,
      CO(5) => counter_ch10_carry_n_2,
      CO(4) => counter_ch10_carry_n_3,
      CO(3) => counter_ch10_carry_n_4,
      CO(2) => counter_ch10_carry_n_5,
      CO(1) => counter_ch10_carry_n_6,
      CO(0) => counter_ch10_carry_n_7,
      DI(7 downto 2) => B"000000",
      DI(1) => counter_ch1_reg(3),
      DI(0) => '0',
      O(7 downto 1) => \p_0_in__0\(9 downto 3),
      O(0) => NLW_counter_ch10_carry_O_UNCONNECTED(0),
      S(7 downto 2) => counter_ch1_reg(9 downto 4),
      S(1) => counter_ch10_carry_i_1_n_0,
      S(0) => '0'
    );
\counter_ch10_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => counter_ch10_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_counter_ch10_carry__0_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \counter_ch10_carry__0_n_3\,
      CO(3) => \counter_ch10_carry__0_n_4\,
      CO(2) => \counter_ch10_carry__0_n_5\,
      CO(1) => \counter_ch10_carry__0_n_6\,
      CO(0) => \counter_ch10_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 6) => \NLW_counter_ch10_carry__0_O_UNCONNECTED\(7 downto 6),
      O(5 downto 0) => \p_0_in__0\(15 downto 10),
      S(7 downto 6) => B"00",
      S(5 downto 0) => counter_ch1_reg(15 downto 10)
    );
counter_ch10_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_ch1_reg(3),
      O => counter_ch10_carry_i_1_n_0
    );
\counter_ch1[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel(1),
      I1 => m01_axis_tready,
      O => counter_ch10
    );
\counter_ch1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch10,
      D => \p_0_in__0\(10),
      Q => counter_ch1_reg(10),
      R => clear
    );
\counter_ch1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch10,
      D => \p_0_in__0\(11),
      Q => counter_ch1_reg(11),
      R => clear
    );
\counter_ch1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch10,
      D => \p_0_in__0\(12),
      Q => counter_ch1_reg(12),
      R => clear
    );
\counter_ch1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch10,
      D => \p_0_in__0\(13),
      Q => counter_ch1_reg(13),
      R => clear
    );
\counter_ch1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch10,
      D => \p_0_in__0\(14),
      Q => counter_ch1_reg(14),
      R => clear
    );
\counter_ch1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch10,
      D => \p_0_in__0\(15),
      Q => counter_ch1_reg(15),
      R => clear
    );
\counter_ch1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch10,
      D => \p_0_in__0\(3),
      Q => counter_ch1_reg(3),
      R => clear
    );
\counter_ch1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch10,
      D => \p_0_in__0\(4),
      Q => counter_ch1_reg(4),
      R => clear
    );
\counter_ch1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch10,
      D => \p_0_in__0\(5),
      Q => counter_ch1_reg(5),
      R => clear
    );
\counter_ch1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch10,
      D => \p_0_in__0\(6),
      Q => counter_ch1_reg(6),
      R => clear
    );
\counter_ch1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch10,
      D => \p_0_in__0\(7),
      Q => counter_ch1_reg(7),
      R => clear
    );
\counter_ch1_reg[8]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => counter_ch10,
      D => \p_0_in__0\(8),
      Q => counter_ch1_reg(8),
      S => clear
    );
\counter_ch1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch10,
      D => \p_0_in__0\(9),
      Q => counter_ch1_reg(9),
      R => clear
    );
counter_ch20_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => counter_ch20_carry_n_0,
      CO(6) => counter_ch20_carry_n_1,
      CO(5) => counter_ch20_carry_n_2,
      CO(4) => counter_ch20_carry_n_3,
      CO(3) => counter_ch20_carry_n_4,
      CO(2) => counter_ch20_carry_n_5,
      CO(1) => counter_ch20_carry_n_6,
      CO(0) => counter_ch20_carry_n_7,
      DI(7 downto 2) => B"000000",
      DI(1) => counter_ch2_reg(3),
      DI(0) => '0',
      O(7 downto 1) => \p_0_in__1\(9 downto 3),
      O(0) => NLW_counter_ch20_carry_O_UNCONNECTED(0),
      S(7 downto 2) => counter_ch2_reg(9 downto 4),
      S(1) => counter_ch20_carry_i_1_n_0,
      S(0) => '0'
    );
\counter_ch20_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => counter_ch20_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_counter_ch20_carry__0_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \counter_ch20_carry__0_n_3\,
      CO(3) => \counter_ch20_carry__0_n_4\,
      CO(2) => \counter_ch20_carry__0_n_5\,
      CO(1) => \counter_ch20_carry__0_n_6\,
      CO(0) => \counter_ch20_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 6) => \NLW_counter_ch20_carry__0_O_UNCONNECTED\(7 downto 6),
      O(5 downto 0) => \p_0_in__1\(15 downto 10),
      S(7 downto 6) => B"00",
      S(5 downto 0) => counter_ch2_reg(15 downto 10)
    );
counter_ch20_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_ch2_reg(3),
      O => counter_ch20_carry_i_1_n_0
    );
\counter_ch2[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel(2),
      I1 => m02_axis_tready,
      O => counter_ch20
    );
\counter_ch2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch20,
      D => \p_0_in__1\(10),
      Q => counter_ch2_reg(10),
      R => clear
    );
\counter_ch2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch20,
      D => \p_0_in__1\(11),
      Q => counter_ch2_reg(11),
      R => clear
    );
\counter_ch2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch20,
      D => \p_0_in__1\(12),
      Q => counter_ch2_reg(12),
      R => clear
    );
\counter_ch2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch20,
      D => \p_0_in__1\(13),
      Q => counter_ch2_reg(13),
      R => clear
    );
\counter_ch2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch20,
      D => \p_0_in__1\(14),
      Q => counter_ch2_reg(14),
      R => clear
    );
\counter_ch2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch20,
      D => \p_0_in__1\(15),
      Q => counter_ch2_reg(15),
      R => clear
    );
\counter_ch2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch20,
      D => \p_0_in__1\(3),
      Q => counter_ch2_reg(3),
      R => clear
    );
\counter_ch2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch20,
      D => \p_0_in__1\(4),
      Q => counter_ch2_reg(4),
      R => clear
    );
\counter_ch2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch20,
      D => \p_0_in__1\(5),
      Q => counter_ch2_reg(5),
      R => clear
    );
\counter_ch2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch20,
      D => \p_0_in__1\(6),
      Q => counter_ch2_reg(6),
      R => clear
    );
\counter_ch2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch20,
      D => \p_0_in__1\(7),
      Q => counter_ch2_reg(7),
      R => clear
    );
\counter_ch2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch20,
      D => \p_0_in__1\(8),
      Q => counter_ch2_reg(8),
      R => clear
    );
\counter_ch2_reg[9]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => counter_ch20,
      D => \p_0_in__1\(9),
      Q => counter_ch2_reg(9),
      S => clear
    );
counter_ch30_carry: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => counter_ch30_carry_n_0,
      CO(6) => counter_ch30_carry_n_1,
      CO(5) => counter_ch30_carry_n_2,
      CO(4) => counter_ch30_carry_n_3,
      CO(3) => counter_ch30_carry_n_4,
      CO(2) => counter_ch30_carry_n_5,
      CO(1) => counter_ch30_carry_n_6,
      CO(0) => counter_ch30_carry_n_7,
      DI(7 downto 2) => B"000000",
      DI(1) => counter_ch3_reg(3),
      DI(0) => '0',
      O(7 downto 1) => \p_0_in__2\(9 downto 3),
      O(0) => NLW_counter_ch30_carry_O_UNCONNECTED(0),
      S(7 downto 2) => counter_ch3_reg(9 downto 4),
      S(1) => counter_ch30_carry_i_1_n_0,
      S(0) => '0'
    );
\counter_ch30_carry__0\: unisim.vcomponents.CARRY8
     port map (
      CI => counter_ch30_carry_n_0,
      CI_TOP => '0',
      CO(7 downto 5) => \NLW_counter_ch30_carry__0_CO_UNCONNECTED\(7 downto 5),
      CO(4) => \counter_ch30_carry__0_n_3\,
      CO(3) => \counter_ch30_carry__0_n_4\,
      CO(2) => \counter_ch30_carry__0_n_5\,
      CO(1) => \counter_ch30_carry__0_n_6\,
      CO(0) => \counter_ch30_carry__0_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 6) => \NLW_counter_ch30_carry__0_O_UNCONNECTED\(7 downto 6),
      O(5 downto 0) => \p_0_in__2\(15 downto 10),
      S(7 downto 6) => B"00",
      S(5 downto 0) => counter_ch3_reg(15 downto 10)
    );
counter_ch30_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_ch3_reg(3),
      O => counter_ch30_carry_i_1_n_0
    );
\counter_ch3[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel(3),
      I1 => m03_axis_tready,
      O => counter_ch30
    );
\counter_ch3_reg[10]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => counter_ch30,
      D => \p_0_in__2\(10),
      Q => counter_ch3_reg(10),
      S => clear
    );
\counter_ch3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch30,
      D => \p_0_in__2\(11),
      Q => counter_ch3_reg(11),
      R => clear
    );
\counter_ch3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch30,
      D => \p_0_in__2\(12),
      Q => counter_ch3_reg(12),
      R => clear
    );
\counter_ch3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch30,
      D => \p_0_in__2\(13),
      Q => counter_ch3_reg(13),
      R => clear
    );
\counter_ch3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch30,
      D => \p_0_in__2\(14),
      Q => counter_ch3_reg(14),
      R => clear
    );
\counter_ch3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch30,
      D => \p_0_in__2\(15),
      Q => counter_ch3_reg(15),
      R => clear
    );
\counter_ch3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch30,
      D => \p_0_in__2\(3),
      Q => counter_ch3_reg(3),
      R => clear
    );
\counter_ch3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch30,
      D => \p_0_in__2\(4),
      Q => counter_ch3_reg(4),
      R => clear
    );
\counter_ch3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch30,
      D => \p_0_in__2\(5),
      Q => counter_ch3_reg(5),
      R => clear
    );
\counter_ch3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch30,
      D => \p_0_in__2\(6),
      Q => counter_ch3_reg(6),
      R => clear
    );
\counter_ch3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch30,
      D => \p_0_in__2\(7),
      Q => counter_ch3_reg(7),
      R => clear
    );
\counter_ch3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch30,
      D => \p_0_in__2\(8),
      Q => counter_ch3_reg(8),
      R => clear
    );
\counter_ch3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => counter_ch30,
      D => \p_0_in__2\(9),
      Q => counter_ch3_reg(9),
      R => clear
    );
\m00_axis_tdata[100]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(4),
      I1 => sel(0),
      I2 => s00_axis_tdata(88),
      O => m00_axis_tdata(88)
    );
\m00_axis_tdata[101]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(5),
      I1 => sel(0),
      I2 => s00_axis_tdata(89),
      O => m00_axis_tdata(89)
    );
\m00_axis_tdata[102]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(6),
      I1 => sel(0),
      I2 => s00_axis_tdata(90),
      O => m00_axis_tdata(90)
    );
\m00_axis_tdata[103]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(7),
      I1 => sel(0),
      I2 => s00_axis_tdata(91),
      O => m00_axis_tdata(91)
    );
\m00_axis_tdata[104]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(8),
      I1 => sel(0),
      I2 => s00_axis_tdata(92),
      O => m00_axis_tdata(92)
    );
\m00_axis_tdata[105]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(9),
      I1 => sel(0),
      I2 => s00_axis_tdata(93),
      O => m00_axis_tdata(93)
    );
\m00_axis_tdata[106]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(10),
      I1 => sel(0),
      I2 => s00_axis_tdata(94),
      O => m00_axis_tdata(94)
    );
\m00_axis_tdata[107]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(11),
      I1 => sel(0),
      I2 => s00_axis_tdata(95),
      O => m00_axis_tdata(95)
    );
\m00_axis_tdata[108]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(12),
      I1 => sel(0),
      I2 => s00_axis_tdata(96),
      O => m00_axis_tdata(96)
    );
\m00_axis_tdata[109]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(13),
      I1 => sel(0),
      I2 => s00_axis_tdata(97),
      O => m00_axis_tdata(97)
    );
\m00_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(10),
      I1 => sel(0),
      I2 => s00_axis_tdata(7),
      O => m00_axis_tdata(7)
    );
\m00_axis_tdata[110]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(14),
      I1 => sel(0),
      I2 => s00_axis_tdata(98),
      O => m00_axis_tdata(98)
    );
\m00_axis_tdata[111]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(15),
      I1 => sel(0),
      I2 => s00_axis_tdata(99),
      O => m00_axis_tdata(99)
    );
\m00_axis_tdata[112]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(0),
      I1 => s00_axis_tdata(100),
      O => m00_axis_tdata(100)
    );
\m00_axis_tdata[113]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(0),
      I1 => s00_axis_tdata(101),
      O => m00_axis_tdata(101)
    );
\m00_axis_tdata[114]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(0),
      I1 => s00_axis_tdata(102),
      O => m00_axis_tdata(102)
    );
\m00_axis_tdata[115]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(3),
      I1 => sel(0),
      I2 => s00_axis_tdata(103),
      O => m00_axis_tdata(103)
    );
\m00_axis_tdata[116]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(4),
      I1 => sel(0),
      I2 => s00_axis_tdata(104),
      O => m00_axis_tdata(104)
    );
\m00_axis_tdata[117]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(5),
      I1 => sel(0),
      I2 => s00_axis_tdata(105),
      O => m00_axis_tdata(105)
    );
\m00_axis_tdata[118]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(6),
      I1 => sel(0),
      I2 => s00_axis_tdata(106),
      O => m00_axis_tdata(106)
    );
\m00_axis_tdata[119]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(7),
      I1 => sel(0),
      I2 => s00_axis_tdata(107),
      O => m00_axis_tdata(107)
    );
\m00_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(11),
      I1 => sel(0),
      I2 => s00_axis_tdata(8),
      O => m00_axis_tdata(8)
    );
\m00_axis_tdata[120]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(8),
      I1 => sel(0),
      I2 => s00_axis_tdata(108),
      O => m00_axis_tdata(108)
    );
\m00_axis_tdata[121]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(9),
      I1 => sel(0),
      I2 => s00_axis_tdata(109),
      O => m00_axis_tdata(109)
    );
\m00_axis_tdata[122]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(10),
      I1 => sel(0),
      I2 => s00_axis_tdata(110),
      O => m00_axis_tdata(110)
    );
\m00_axis_tdata[123]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(11),
      I1 => sel(0),
      I2 => s00_axis_tdata(111),
      O => m00_axis_tdata(111)
    );
\m00_axis_tdata[124]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(12),
      I1 => sel(0),
      I2 => s00_axis_tdata(112),
      O => m00_axis_tdata(112)
    );
\m00_axis_tdata[125]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(13),
      I1 => sel(0),
      I2 => s00_axis_tdata(113),
      O => m00_axis_tdata(113)
    );
\m00_axis_tdata[126]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(14),
      I1 => sel(0),
      I2 => s00_axis_tdata(114),
      O => m00_axis_tdata(114)
    );
\m00_axis_tdata[127]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(15),
      I1 => sel(0),
      I2 => s00_axis_tdata(115),
      O => m00_axis_tdata(115)
    );
\m00_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(12),
      I1 => sel(0),
      I2 => s00_axis_tdata(9),
      O => m00_axis_tdata(9)
    );
\m00_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(13),
      I1 => sel(0),
      I2 => s00_axis_tdata(10),
      O => m00_axis_tdata(10)
    );
\m00_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(14),
      I1 => sel(0),
      I2 => s00_axis_tdata(11),
      O => m00_axis_tdata(11)
    );
\m00_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(15),
      I1 => sel(0),
      I2 => s00_axis_tdata(12),
      O => m00_axis_tdata(12)
    );
\m00_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(0),
      I1 => s00_axis_tdata(13),
      O => m00_axis_tdata(13)
    );
\m00_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(3),
      I1 => sel(0),
      I2 => s00_axis_tdata(14),
      O => m00_axis_tdata(14)
    );
\m00_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(4),
      I1 => sel(0),
      I2 => s00_axis_tdata(15),
      O => m00_axis_tdata(15)
    );
\m00_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(5),
      I1 => sel(0),
      I2 => s00_axis_tdata(16),
      O => m00_axis_tdata(16)
    );
\m00_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(6),
      I1 => sel(0),
      I2 => s00_axis_tdata(17),
      O => m00_axis_tdata(17)
    );
\m00_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(7),
      I1 => sel(0),
      I2 => s00_axis_tdata(18),
      O => m00_axis_tdata(18)
    );
\m00_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(8),
      I1 => sel(0),
      I2 => s00_axis_tdata(19),
      O => m00_axis_tdata(19)
    );
\m00_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(9),
      I1 => sel(0),
      I2 => s00_axis_tdata(20),
      O => m00_axis_tdata(20)
    );
\m00_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(10),
      I1 => sel(0),
      I2 => s00_axis_tdata(21),
      O => m00_axis_tdata(21)
    );
\m00_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(11),
      I1 => sel(0),
      I2 => s00_axis_tdata(22),
      O => m00_axis_tdata(22)
    );
\m00_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(12),
      I1 => sel(0),
      I2 => s00_axis_tdata(23),
      O => m00_axis_tdata(23)
    );
\m00_axis_tdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(13),
      I1 => sel(0),
      I2 => s00_axis_tdata(24),
      O => m00_axis_tdata(24)
    );
\m00_axis_tdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(14),
      I1 => sel(0),
      I2 => s00_axis_tdata(25),
      O => m00_axis_tdata(25)
    );
\m00_axis_tdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(15),
      I1 => sel(0),
      I2 => s00_axis_tdata(26),
      O => m00_axis_tdata(26)
    );
\m00_axis_tdata[33]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(0),
      I1 => s00_axis_tdata(27),
      O => m00_axis_tdata(27)
    );
\m00_axis_tdata[35]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(3),
      I1 => sel(0),
      I2 => s00_axis_tdata(28),
      O => m00_axis_tdata(28)
    );
\m00_axis_tdata[36]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(4),
      I1 => sel(0),
      I2 => s00_axis_tdata(29),
      O => m00_axis_tdata(29)
    );
\m00_axis_tdata[37]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(5),
      I1 => sel(0),
      I2 => s00_axis_tdata(30),
      O => m00_axis_tdata(30)
    );
\m00_axis_tdata[38]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(6),
      I1 => sel(0),
      I2 => s00_axis_tdata(31),
      O => m00_axis_tdata(31)
    );
\m00_axis_tdata[39]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(7),
      I1 => sel(0),
      I2 => s00_axis_tdata(32),
      O => m00_axis_tdata(32)
    );
\m00_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(3),
      I1 => sel(0),
      I2 => s00_axis_tdata(0),
      O => m00_axis_tdata(0)
    );
\m00_axis_tdata[40]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(8),
      I1 => sel(0),
      I2 => s00_axis_tdata(33),
      O => m00_axis_tdata(33)
    );
\m00_axis_tdata[41]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(9),
      I1 => sel(0),
      I2 => s00_axis_tdata(34),
      O => m00_axis_tdata(34)
    );
\m00_axis_tdata[42]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(10),
      I1 => sel(0),
      I2 => s00_axis_tdata(35),
      O => m00_axis_tdata(35)
    );
\m00_axis_tdata[43]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(11),
      I1 => sel(0),
      I2 => s00_axis_tdata(36),
      O => m00_axis_tdata(36)
    );
\m00_axis_tdata[44]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(12),
      I1 => sel(0),
      I2 => s00_axis_tdata(37),
      O => m00_axis_tdata(37)
    );
\m00_axis_tdata[45]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(13),
      I1 => sel(0),
      I2 => s00_axis_tdata(38),
      O => m00_axis_tdata(38)
    );
\m00_axis_tdata[46]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(14),
      I1 => sel(0),
      I2 => s00_axis_tdata(39),
      O => m00_axis_tdata(39)
    );
\m00_axis_tdata[47]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(15),
      I1 => sel(0),
      I2 => s00_axis_tdata(40),
      O => m00_axis_tdata(40)
    );
\m00_axis_tdata[48]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(0),
      I1 => s00_axis_tdata(41),
      O => m00_axis_tdata(41)
    );
\m00_axis_tdata[49]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(0),
      I1 => s00_axis_tdata(42),
      O => m00_axis_tdata(42)
    );
\m00_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(4),
      I1 => sel(0),
      I2 => s00_axis_tdata(1),
      O => m00_axis_tdata(1)
    );
\m00_axis_tdata[51]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(3),
      I1 => sel(0),
      I2 => s00_axis_tdata(43),
      O => m00_axis_tdata(43)
    );
\m00_axis_tdata[52]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(4),
      I1 => sel(0),
      I2 => s00_axis_tdata(44),
      O => m00_axis_tdata(44)
    );
\m00_axis_tdata[53]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(5),
      I1 => sel(0),
      I2 => s00_axis_tdata(45),
      O => m00_axis_tdata(45)
    );
\m00_axis_tdata[54]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(6),
      I1 => sel(0),
      I2 => s00_axis_tdata(46),
      O => m00_axis_tdata(46)
    );
\m00_axis_tdata[55]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(7),
      I1 => sel(0),
      I2 => s00_axis_tdata(47),
      O => m00_axis_tdata(47)
    );
\m00_axis_tdata[56]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(8),
      I1 => sel(0),
      I2 => s00_axis_tdata(48),
      O => m00_axis_tdata(48)
    );
\m00_axis_tdata[57]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(9),
      I1 => sel(0),
      I2 => s00_axis_tdata(49),
      O => m00_axis_tdata(49)
    );
\m00_axis_tdata[58]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(10),
      I1 => sel(0),
      I2 => s00_axis_tdata(50),
      O => m00_axis_tdata(50)
    );
\m00_axis_tdata[59]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(11),
      I1 => sel(0),
      I2 => s00_axis_tdata(51),
      O => m00_axis_tdata(51)
    );
\m00_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(5),
      I1 => sel(0),
      I2 => s00_axis_tdata(2),
      O => m00_axis_tdata(2)
    );
\m00_axis_tdata[60]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(12),
      I1 => sel(0),
      I2 => s00_axis_tdata(52),
      O => m00_axis_tdata(52)
    );
\m00_axis_tdata[61]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(13),
      I1 => sel(0),
      I2 => s00_axis_tdata(53),
      O => m00_axis_tdata(53)
    );
\m00_axis_tdata[62]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(14),
      I1 => sel(0),
      I2 => s00_axis_tdata(54),
      O => m00_axis_tdata(54)
    );
\m00_axis_tdata[63]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(15),
      I1 => sel(0),
      I2 => s00_axis_tdata(55),
      O => m00_axis_tdata(55)
    );
\m00_axis_tdata[66]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(0),
      I1 => s00_axis_tdata(56),
      O => m00_axis_tdata(56)
    );
\m00_axis_tdata[67]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(3),
      I1 => sel(0),
      I2 => s00_axis_tdata(57),
      O => m00_axis_tdata(57)
    );
\m00_axis_tdata[68]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(4),
      I1 => sel(0),
      I2 => s00_axis_tdata(58),
      O => m00_axis_tdata(58)
    );
\m00_axis_tdata[69]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(5),
      I1 => sel(0),
      I2 => s00_axis_tdata(59),
      O => m00_axis_tdata(59)
    );
\m00_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(6),
      I1 => sel(0),
      I2 => s00_axis_tdata(3),
      O => m00_axis_tdata(3)
    );
\m00_axis_tdata[70]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(6),
      I1 => sel(0),
      I2 => s00_axis_tdata(60),
      O => m00_axis_tdata(60)
    );
\m00_axis_tdata[71]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(7),
      I1 => sel(0),
      I2 => s00_axis_tdata(61),
      O => m00_axis_tdata(61)
    );
\m00_axis_tdata[72]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(8),
      I1 => sel(0),
      I2 => s00_axis_tdata(62),
      O => m00_axis_tdata(62)
    );
\m00_axis_tdata[73]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(9),
      I1 => sel(0),
      I2 => s00_axis_tdata(63),
      O => m00_axis_tdata(63)
    );
\m00_axis_tdata[74]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(10),
      I1 => sel(0),
      I2 => s00_axis_tdata(64),
      O => m00_axis_tdata(64)
    );
\m00_axis_tdata[75]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(11),
      I1 => sel(0),
      I2 => s00_axis_tdata(65),
      O => m00_axis_tdata(65)
    );
\m00_axis_tdata[76]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(12),
      I1 => sel(0),
      I2 => s00_axis_tdata(66),
      O => m00_axis_tdata(66)
    );
\m00_axis_tdata[77]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(13),
      I1 => sel(0),
      I2 => s00_axis_tdata(67),
      O => m00_axis_tdata(67)
    );
\m00_axis_tdata[78]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(14),
      I1 => sel(0),
      I2 => s00_axis_tdata(68),
      O => m00_axis_tdata(68)
    );
\m00_axis_tdata[79]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(15),
      I1 => sel(0),
      I2 => s00_axis_tdata(69),
      O => m00_axis_tdata(69)
    );
\m00_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(7),
      I1 => sel(0),
      I2 => s00_axis_tdata(4),
      O => m00_axis_tdata(4)
    );
\m00_axis_tdata[80]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(0),
      I1 => s00_axis_tdata(70),
      O => m00_axis_tdata(70)
    );
\m00_axis_tdata[82]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(0),
      I1 => s00_axis_tdata(71),
      O => m00_axis_tdata(71)
    );
\m00_axis_tdata[83]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(3),
      I1 => sel(0),
      I2 => s00_axis_tdata(72),
      O => m00_axis_tdata(72)
    );
\m00_axis_tdata[84]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(4),
      I1 => sel(0),
      I2 => s00_axis_tdata(73),
      O => m00_axis_tdata(73)
    );
\m00_axis_tdata[85]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(5),
      I1 => sel(0),
      I2 => s00_axis_tdata(74),
      O => m00_axis_tdata(74)
    );
\m00_axis_tdata[86]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(6),
      I1 => sel(0),
      I2 => s00_axis_tdata(75),
      O => m00_axis_tdata(75)
    );
\m00_axis_tdata[87]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(7),
      I1 => sel(0),
      I2 => s00_axis_tdata(76),
      O => m00_axis_tdata(76)
    );
\m00_axis_tdata[88]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(8),
      I1 => sel(0),
      I2 => s00_axis_tdata(77),
      O => m00_axis_tdata(77)
    );
\m00_axis_tdata[89]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(9),
      I1 => sel(0),
      I2 => s00_axis_tdata(78),
      O => m00_axis_tdata(78)
    );
\m00_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(8),
      I1 => sel(0),
      I2 => s00_axis_tdata(5),
      O => m00_axis_tdata(5)
    );
\m00_axis_tdata[90]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(10),
      I1 => sel(0),
      I2 => s00_axis_tdata(79),
      O => m00_axis_tdata(79)
    );
\m00_axis_tdata[91]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(11),
      I1 => sel(0),
      I2 => s00_axis_tdata(80),
      O => m00_axis_tdata(80)
    );
\m00_axis_tdata[92]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(12),
      I1 => sel(0),
      I2 => s00_axis_tdata(81),
      O => m00_axis_tdata(81)
    );
\m00_axis_tdata[93]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(13),
      I1 => sel(0),
      I2 => s00_axis_tdata(82),
      O => m00_axis_tdata(82)
    );
\m00_axis_tdata[94]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(14),
      I1 => sel(0),
      I2 => s00_axis_tdata(83),
      O => m00_axis_tdata(83)
    );
\m00_axis_tdata[95]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(15),
      I1 => sel(0),
      I2 => s00_axis_tdata(84),
      O => m00_axis_tdata(84)
    );
\m00_axis_tdata[97]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(0),
      I1 => s00_axis_tdata(85),
      O => m00_axis_tdata(85)
    );
\m00_axis_tdata[98]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(0),
      I1 => s00_axis_tdata(86),
      O => m00_axis_tdata(86)
    );
\m00_axis_tdata[99]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(3),
      I1 => sel(0),
      I2 => s00_axis_tdata(87),
      O => m00_axis_tdata(87)
    );
\m00_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch0_reg(9),
      I1 => sel(0),
      I2 => s00_axis_tdata(6),
      O => m00_axis_tdata(6)
    );
\m01_axis_tdata[100]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(4),
      I1 => sel(1),
      I2 => s01_axis_tdata(88),
      O => m01_axis_tdata(88)
    );
\m01_axis_tdata[101]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(5),
      I1 => sel(1),
      I2 => s01_axis_tdata(89),
      O => m01_axis_tdata(89)
    );
\m01_axis_tdata[102]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(6),
      I1 => sel(1),
      I2 => s01_axis_tdata(90),
      O => m01_axis_tdata(90)
    );
\m01_axis_tdata[103]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(7),
      I1 => sel(1),
      I2 => s01_axis_tdata(91),
      O => m01_axis_tdata(91)
    );
\m01_axis_tdata[104]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(8),
      I1 => sel(1),
      I2 => s01_axis_tdata(92),
      O => m01_axis_tdata(92)
    );
\m01_axis_tdata[105]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(9),
      I1 => sel(1),
      I2 => s01_axis_tdata(93),
      O => m01_axis_tdata(93)
    );
\m01_axis_tdata[106]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(10),
      I1 => sel(1),
      I2 => s01_axis_tdata(94),
      O => m01_axis_tdata(94)
    );
\m01_axis_tdata[107]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(11),
      I1 => sel(1),
      I2 => s01_axis_tdata(95),
      O => m01_axis_tdata(95)
    );
\m01_axis_tdata[108]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(12),
      I1 => sel(1),
      I2 => s01_axis_tdata(96),
      O => m01_axis_tdata(96)
    );
\m01_axis_tdata[109]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(13),
      I1 => sel(1),
      I2 => s01_axis_tdata(97),
      O => m01_axis_tdata(97)
    );
\m01_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(10),
      I1 => sel(1),
      I2 => s01_axis_tdata(7),
      O => m01_axis_tdata(7)
    );
\m01_axis_tdata[110]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(14),
      I1 => sel(1),
      I2 => s01_axis_tdata(98),
      O => m01_axis_tdata(98)
    );
\m01_axis_tdata[111]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(15),
      I1 => sel(1),
      I2 => s01_axis_tdata(99),
      O => m01_axis_tdata(99)
    );
\m01_axis_tdata[112]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(1),
      I1 => s01_axis_tdata(100),
      O => m01_axis_tdata(100)
    );
\m01_axis_tdata[113]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(1),
      I1 => s01_axis_tdata(101),
      O => m01_axis_tdata(101)
    );
\m01_axis_tdata[114]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(1),
      I1 => s01_axis_tdata(102),
      O => m01_axis_tdata(102)
    );
\m01_axis_tdata[115]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(3),
      I1 => sel(1),
      I2 => s01_axis_tdata(103),
      O => m01_axis_tdata(103)
    );
\m01_axis_tdata[116]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(4),
      I1 => sel(1),
      I2 => s01_axis_tdata(104),
      O => m01_axis_tdata(104)
    );
\m01_axis_tdata[117]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(5),
      I1 => sel(1),
      I2 => s01_axis_tdata(105),
      O => m01_axis_tdata(105)
    );
\m01_axis_tdata[118]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(6),
      I1 => sel(1),
      I2 => s01_axis_tdata(106),
      O => m01_axis_tdata(106)
    );
\m01_axis_tdata[119]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(7),
      I1 => sel(1),
      I2 => s01_axis_tdata(107),
      O => m01_axis_tdata(107)
    );
\m01_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(11),
      I1 => sel(1),
      I2 => s01_axis_tdata(8),
      O => m01_axis_tdata(8)
    );
\m01_axis_tdata[120]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(8),
      I1 => sel(1),
      I2 => s01_axis_tdata(108),
      O => m01_axis_tdata(108)
    );
\m01_axis_tdata[121]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(9),
      I1 => sel(1),
      I2 => s01_axis_tdata(109),
      O => m01_axis_tdata(109)
    );
\m01_axis_tdata[122]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(10),
      I1 => sel(1),
      I2 => s01_axis_tdata(110),
      O => m01_axis_tdata(110)
    );
\m01_axis_tdata[123]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(11),
      I1 => sel(1),
      I2 => s01_axis_tdata(111),
      O => m01_axis_tdata(111)
    );
\m01_axis_tdata[124]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(12),
      I1 => sel(1),
      I2 => s01_axis_tdata(112),
      O => m01_axis_tdata(112)
    );
\m01_axis_tdata[125]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(13),
      I1 => sel(1),
      I2 => s01_axis_tdata(113),
      O => m01_axis_tdata(113)
    );
\m01_axis_tdata[126]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(14),
      I1 => sel(1),
      I2 => s01_axis_tdata(114),
      O => m01_axis_tdata(114)
    );
\m01_axis_tdata[127]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(15),
      I1 => sel(1),
      I2 => s01_axis_tdata(115),
      O => m01_axis_tdata(115)
    );
\m01_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(12),
      I1 => sel(1),
      I2 => s01_axis_tdata(9),
      O => m01_axis_tdata(9)
    );
\m01_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(13),
      I1 => sel(1),
      I2 => s01_axis_tdata(10),
      O => m01_axis_tdata(10)
    );
\m01_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(14),
      I1 => sel(1),
      I2 => s01_axis_tdata(11),
      O => m01_axis_tdata(11)
    );
\m01_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(15),
      I1 => sel(1),
      I2 => s01_axis_tdata(12),
      O => m01_axis_tdata(12)
    );
\m01_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(1),
      I1 => s01_axis_tdata(13),
      O => m01_axis_tdata(13)
    );
\m01_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(3),
      I1 => sel(1),
      I2 => s01_axis_tdata(14),
      O => m01_axis_tdata(14)
    );
\m01_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(4),
      I1 => sel(1),
      I2 => s01_axis_tdata(15),
      O => m01_axis_tdata(15)
    );
\m01_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(5),
      I1 => sel(1),
      I2 => s01_axis_tdata(16),
      O => m01_axis_tdata(16)
    );
\m01_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(6),
      I1 => sel(1),
      I2 => s01_axis_tdata(17),
      O => m01_axis_tdata(17)
    );
\m01_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(7),
      I1 => sel(1),
      I2 => s01_axis_tdata(18),
      O => m01_axis_tdata(18)
    );
\m01_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(8),
      I1 => sel(1),
      I2 => s01_axis_tdata(19),
      O => m01_axis_tdata(19)
    );
\m01_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(9),
      I1 => sel(1),
      I2 => s01_axis_tdata(20),
      O => m01_axis_tdata(20)
    );
\m01_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(10),
      I1 => sel(1),
      I2 => s01_axis_tdata(21),
      O => m01_axis_tdata(21)
    );
\m01_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(11),
      I1 => sel(1),
      I2 => s01_axis_tdata(22),
      O => m01_axis_tdata(22)
    );
\m01_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(12),
      I1 => sel(1),
      I2 => s01_axis_tdata(23),
      O => m01_axis_tdata(23)
    );
\m01_axis_tdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(13),
      I1 => sel(1),
      I2 => s01_axis_tdata(24),
      O => m01_axis_tdata(24)
    );
\m01_axis_tdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(14),
      I1 => sel(1),
      I2 => s01_axis_tdata(25),
      O => m01_axis_tdata(25)
    );
\m01_axis_tdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(15),
      I1 => sel(1),
      I2 => s01_axis_tdata(26),
      O => m01_axis_tdata(26)
    );
\m01_axis_tdata[33]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(1),
      I1 => s01_axis_tdata(27),
      O => m01_axis_tdata(27)
    );
\m01_axis_tdata[35]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(3),
      I1 => sel(1),
      I2 => s01_axis_tdata(28),
      O => m01_axis_tdata(28)
    );
\m01_axis_tdata[36]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(4),
      I1 => sel(1),
      I2 => s01_axis_tdata(29),
      O => m01_axis_tdata(29)
    );
\m01_axis_tdata[37]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(5),
      I1 => sel(1),
      I2 => s01_axis_tdata(30),
      O => m01_axis_tdata(30)
    );
\m01_axis_tdata[38]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(6),
      I1 => sel(1),
      I2 => s01_axis_tdata(31),
      O => m01_axis_tdata(31)
    );
\m01_axis_tdata[39]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(7),
      I1 => sel(1),
      I2 => s01_axis_tdata(32),
      O => m01_axis_tdata(32)
    );
\m01_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(3),
      I1 => sel(1),
      I2 => s01_axis_tdata(0),
      O => m01_axis_tdata(0)
    );
\m01_axis_tdata[40]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(8),
      I1 => sel(1),
      I2 => s01_axis_tdata(33),
      O => m01_axis_tdata(33)
    );
\m01_axis_tdata[41]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(9),
      I1 => sel(1),
      I2 => s01_axis_tdata(34),
      O => m01_axis_tdata(34)
    );
\m01_axis_tdata[42]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(10),
      I1 => sel(1),
      I2 => s01_axis_tdata(35),
      O => m01_axis_tdata(35)
    );
\m01_axis_tdata[43]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(11),
      I1 => sel(1),
      I2 => s01_axis_tdata(36),
      O => m01_axis_tdata(36)
    );
\m01_axis_tdata[44]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(12),
      I1 => sel(1),
      I2 => s01_axis_tdata(37),
      O => m01_axis_tdata(37)
    );
\m01_axis_tdata[45]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(13),
      I1 => sel(1),
      I2 => s01_axis_tdata(38),
      O => m01_axis_tdata(38)
    );
\m01_axis_tdata[46]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(14),
      I1 => sel(1),
      I2 => s01_axis_tdata(39),
      O => m01_axis_tdata(39)
    );
\m01_axis_tdata[47]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(15),
      I1 => sel(1),
      I2 => s01_axis_tdata(40),
      O => m01_axis_tdata(40)
    );
\m01_axis_tdata[48]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(1),
      I1 => s01_axis_tdata(41),
      O => m01_axis_tdata(41)
    );
\m01_axis_tdata[49]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(1),
      I1 => s01_axis_tdata(42),
      O => m01_axis_tdata(42)
    );
\m01_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(4),
      I1 => sel(1),
      I2 => s01_axis_tdata(1),
      O => m01_axis_tdata(1)
    );
\m01_axis_tdata[51]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(3),
      I1 => sel(1),
      I2 => s01_axis_tdata(43),
      O => m01_axis_tdata(43)
    );
\m01_axis_tdata[52]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(4),
      I1 => sel(1),
      I2 => s01_axis_tdata(44),
      O => m01_axis_tdata(44)
    );
\m01_axis_tdata[53]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(5),
      I1 => sel(1),
      I2 => s01_axis_tdata(45),
      O => m01_axis_tdata(45)
    );
\m01_axis_tdata[54]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(6),
      I1 => sel(1),
      I2 => s01_axis_tdata(46),
      O => m01_axis_tdata(46)
    );
\m01_axis_tdata[55]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(7),
      I1 => sel(1),
      I2 => s01_axis_tdata(47),
      O => m01_axis_tdata(47)
    );
\m01_axis_tdata[56]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(8),
      I1 => sel(1),
      I2 => s01_axis_tdata(48),
      O => m01_axis_tdata(48)
    );
\m01_axis_tdata[57]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(9),
      I1 => sel(1),
      I2 => s01_axis_tdata(49),
      O => m01_axis_tdata(49)
    );
\m01_axis_tdata[58]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(10),
      I1 => sel(1),
      I2 => s01_axis_tdata(50),
      O => m01_axis_tdata(50)
    );
\m01_axis_tdata[59]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(11),
      I1 => sel(1),
      I2 => s01_axis_tdata(51),
      O => m01_axis_tdata(51)
    );
\m01_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(5),
      I1 => sel(1),
      I2 => s01_axis_tdata(2),
      O => m01_axis_tdata(2)
    );
\m01_axis_tdata[60]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(12),
      I1 => sel(1),
      I2 => s01_axis_tdata(52),
      O => m01_axis_tdata(52)
    );
\m01_axis_tdata[61]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(13),
      I1 => sel(1),
      I2 => s01_axis_tdata(53),
      O => m01_axis_tdata(53)
    );
\m01_axis_tdata[62]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(14),
      I1 => sel(1),
      I2 => s01_axis_tdata(54),
      O => m01_axis_tdata(54)
    );
\m01_axis_tdata[63]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(15),
      I1 => sel(1),
      I2 => s01_axis_tdata(55),
      O => m01_axis_tdata(55)
    );
\m01_axis_tdata[66]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(1),
      I1 => s01_axis_tdata(56),
      O => m01_axis_tdata(56)
    );
\m01_axis_tdata[67]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(3),
      I1 => sel(1),
      I2 => s01_axis_tdata(57),
      O => m01_axis_tdata(57)
    );
\m01_axis_tdata[68]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(4),
      I1 => sel(1),
      I2 => s01_axis_tdata(58),
      O => m01_axis_tdata(58)
    );
\m01_axis_tdata[69]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(5),
      I1 => sel(1),
      I2 => s01_axis_tdata(59),
      O => m01_axis_tdata(59)
    );
\m01_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(6),
      I1 => sel(1),
      I2 => s01_axis_tdata(3),
      O => m01_axis_tdata(3)
    );
\m01_axis_tdata[70]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(6),
      I1 => sel(1),
      I2 => s01_axis_tdata(60),
      O => m01_axis_tdata(60)
    );
\m01_axis_tdata[71]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(7),
      I1 => sel(1),
      I2 => s01_axis_tdata(61),
      O => m01_axis_tdata(61)
    );
\m01_axis_tdata[72]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(8),
      I1 => sel(1),
      I2 => s01_axis_tdata(62),
      O => m01_axis_tdata(62)
    );
\m01_axis_tdata[73]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(9),
      I1 => sel(1),
      I2 => s01_axis_tdata(63),
      O => m01_axis_tdata(63)
    );
\m01_axis_tdata[74]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(10),
      I1 => sel(1),
      I2 => s01_axis_tdata(64),
      O => m01_axis_tdata(64)
    );
\m01_axis_tdata[75]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(11),
      I1 => sel(1),
      I2 => s01_axis_tdata(65),
      O => m01_axis_tdata(65)
    );
\m01_axis_tdata[76]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(12),
      I1 => sel(1),
      I2 => s01_axis_tdata(66),
      O => m01_axis_tdata(66)
    );
\m01_axis_tdata[77]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(13),
      I1 => sel(1),
      I2 => s01_axis_tdata(67),
      O => m01_axis_tdata(67)
    );
\m01_axis_tdata[78]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(14),
      I1 => sel(1),
      I2 => s01_axis_tdata(68),
      O => m01_axis_tdata(68)
    );
\m01_axis_tdata[79]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(15),
      I1 => sel(1),
      I2 => s01_axis_tdata(69),
      O => m01_axis_tdata(69)
    );
\m01_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(7),
      I1 => sel(1),
      I2 => s01_axis_tdata(4),
      O => m01_axis_tdata(4)
    );
\m01_axis_tdata[80]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(1),
      I1 => s01_axis_tdata(70),
      O => m01_axis_tdata(70)
    );
\m01_axis_tdata[82]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(1),
      I1 => s01_axis_tdata(71),
      O => m01_axis_tdata(71)
    );
\m01_axis_tdata[83]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(3),
      I1 => sel(1),
      I2 => s01_axis_tdata(72),
      O => m01_axis_tdata(72)
    );
\m01_axis_tdata[84]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(4),
      I1 => sel(1),
      I2 => s01_axis_tdata(73),
      O => m01_axis_tdata(73)
    );
\m01_axis_tdata[85]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(5),
      I1 => sel(1),
      I2 => s01_axis_tdata(74),
      O => m01_axis_tdata(74)
    );
\m01_axis_tdata[86]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(6),
      I1 => sel(1),
      I2 => s01_axis_tdata(75),
      O => m01_axis_tdata(75)
    );
\m01_axis_tdata[87]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(7),
      I1 => sel(1),
      I2 => s01_axis_tdata(76),
      O => m01_axis_tdata(76)
    );
\m01_axis_tdata[88]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(8),
      I1 => sel(1),
      I2 => s01_axis_tdata(77),
      O => m01_axis_tdata(77)
    );
\m01_axis_tdata[89]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(9),
      I1 => sel(1),
      I2 => s01_axis_tdata(78),
      O => m01_axis_tdata(78)
    );
\m01_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(8),
      I1 => sel(1),
      I2 => s01_axis_tdata(5),
      O => m01_axis_tdata(5)
    );
\m01_axis_tdata[90]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(10),
      I1 => sel(1),
      I2 => s01_axis_tdata(79),
      O => m01_axis_tdata(79)
    );
\m01_axis_tdata[91]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(11),
      I1 => sel(1),
      I2 => s01_axis_tdata(80),
      O => m01_axis_tdata(80)
    );
\m01_axis_tdata[92]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(12),
      I1 => sel(1),
      I2 => s01_axis_tdata(81),
      O => m01_axis_tdata(81)
    );
\m01_axis_tdata[93]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(13),
      I1 => sel(1),
      I2 => s01_axis_tdata(82),
      O => m01_axis_tdata(82)
    );
\m01_axis_tdata[94]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(14),
      I1 => sel(1),
      I2 => s01_axis_tdata(83),
      O => m01_axis_tdata(83)
    );
\m01_axis_tdata[95]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(15),
      I1 => sel(1),
      I2 => s01_axis_tdata(84),
      O => m01_axis_tdata(84)
    );
\m01_axis_tdata[97]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(1),
      I1 => s01_axis_tdata(85),
      O => m01_axis_tdata(85)
    );
\m01_axis_tdata[98]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(1),
      I1 => s01_axis_tdata(86),
      O => m01_axis_tdata(86)
    );
\m01_axis_tdata[99]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(3),
      I1 => sel(1),
      I2 => s01_axis_tdata(87),
      O => m01_axis_tdata(87)
    );
\m01_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch1_reg(9),
      I1 => sel(1),
      I2 => s01_axis_tdata(6),
      O => m01_axis_tdata(6)
    );
\m02_axis_tdata[100]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(4),
      I1 => sel(2),
      I2 => s02_axis_tdata(88),
      O => m02_axis_tdata(88)
    );
\m02_axis_tdata[101]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(5),
      I1 => sel(2),
      I2 => s02_axis_tdata(89),
      O => m02_axis_tdata(89)
    );
\m02_axis_tdata[102]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(6),
      I1 => sel(2),
      I2 => s02_axis_tdata(90),
      O => m02_axis_tdata(90)
    );
\m02_axis_tdata[103]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(7),
      I1 => sel(2),
      I2 => s02_axis_tdata(91),
      O => m02_axis_tdata(91)
    );
\m02_axis_tdata[104]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(8),
      I1 => sel(2),
      I2 => s02_axis_tdata(92),
      O => m02_axis_tdata(92)
    );
\m02_axis_tdata[105]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(9),
      I1 => sel(2),
      I2 => s02_axis_tdata(93),
      O => m02_axis_tdata(93)
    );
\m02_axis_tdata[106]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(10),
      I1 => sel(2),
      I2 => s02_axis_tdata(94),
      O => m02_axis_tdata(94)
    );
\m02_axis_tdata[107]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(11),
      I1 => sel(2),
      I2 => s02_axis_tdata(95),
      O => m02_axis_tdata(95)
    );
\m02_axis_tdata[108]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(12),
      I1 => sel(2),
      I2 => s02_axis_tdata(96),
      O => m02_axis_tdata(96)
    );
\m02_axis_tdata[109]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(13),
      I1 => sel(2),
      I2 => s02_axis_tdata(97),
      O => m02_axis_tdata(97)
    );
\m02_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(10),
      I1 => sel(2),
      I2 => s02_axis_tdata(7),
      O => m02_axis_tdata(7)
    );
\m02_axis_tdata[110]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(14),
      I1 => sel(2),
      I2 => s02_axis_tdata(98),
      O => m02_axis_tdata(98)
    );
\m02_axis_tdata[111]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(15),
      I1 => sel(2),
      I2 => s02_axis_tdata(99),
      O => m02_axis_tdata(99)
    );
\m02_axis_tdata[112]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(2),
      I1 => s02_axis_tdata(100),
      O => m02_axis_tdata(100)
    );
\m02_axis_tdata[113]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(2),
      I1 => s02_axis_tdata(101),
      O => m02_axis_tdata(101)
    );
\m02_axis_tdata[114]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(2),
      I1 => s02_axis_tdata(102),
      O => m02_axis_tdata(102)
    );
\m02_axis_tdata[115]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(3),
      I1 => sel(2),
      I2 => s02_axis_tdata(103),
      O => m02_axis_tdata(103)
    );
\m02_axis_tdata[116]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(4),
      I1 => sel(2),
      I2 => s02_axis_tdata(104),
      O => m02_axis_tdata(104)
    );
\m02_axis_tdata[117]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(5),
      I1 => sel(2),
      I2 => s02_axis_tdata(105),
      O => m02_axis_tdata(105)
    );
\m02_axis_tdata[118]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(6),
      I1 => sel(2),
      I2 => s02_axis_tdata(106),
      O => m02_axis_tdata(106)
    );
\m02_axis_tdata[119]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(7),
      I1 => sel(2),
      I2 => s02_axis_tdata(107),
      O => m02_axis_tdata(107)
    );
\m02_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(11),
      I1 => sel(2),
      I2 => s02_axis_tdata(8),
      O => m02_axis_tdata(8)
    );
\m02_axis_tdata[120]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(8),
      I1 => sel(2),
      I2 => s02_axis_tdata(108),
      O => m02_axis_tdata(108)
    );
\m02_axis_tdata[121]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(9),
      I1 => sel(2),
      I2 => s02_axis_tdata(109),
      O => m02_axis_tdata(109)
    );
\m02_axis_tdata[122]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(10),
      I1 => sel(2),
      I2 => s02_axis_tdata(110),
      O => m02_axis_tdata(110)
    );
\m02_axis_tdata[123]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(11),
      I1 => sel(2),
      I2 => s02_axis_tdata(111),
      O => m02_axis_tdata(111)
    );
\m02_axis_tdata[124]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(12),
      I1 => sel(2),
      I2 => s02_axis_tdata(112),
      O => m02_axis_tdata(112)
    );
\m02_axis_tdata[125]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(13),
      I1 => sel(2),
      I2 => s02_axis_tdata(113),
      O => m02_axis_tdata(113)
    );
\m02_axis_tdata[126]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(14),
      I1 => sel(2),
      I2 => s02_axis_tdata(114),
      O => m02_axis_tdata(114)
    );
\m02_axis_tdata[127]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(15),
      I1 => sel(2),
      I2 => s02_axis_tdata(115),
      O => m02_axis_tdata(115)
    );
\m02_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(12),
      I1 => sel(2),
      I2 => s02_axis_tdata(9),
      O => m02_axis_tdata(9)
    );
\m02_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(13),
      I1 => sel(2),
      I2 => s02_axis_tdata(10),
      O => m02_axis_tdata(10)
    );
\m02_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(14),
      I1 => sel(2),
      I2 => s02_axis_tdata(11),
      O => m02_axis_tdata(11)
    );
\m02_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(15),
      I1 => sel(2),
      I2 => s02_axis_tdata(12),
      O => m02_axis_tdata(12)
    );
\m02_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(2),
      I1 => s02_axis_tdata(13),
      O => m02_axis_tdata(13)
    );
\m02_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(3),
      I1 => sel(2),
      I2 => s02_axis_tdata(14),
      O => m02_axis_tdata(14)
    );
\m02_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(4),
      I1 => sel(2),
      I2 => s02_axis_tdata(15),
      O => m02_axis_tdata(15)
    );
\m02_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(5),
      I1 => sel(2),
      I2 => s02_axis_tdata(16),
      O => m02_axis_tdata(16)
    );
\m02_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(6),
      I1 => sel(2),
      I2 => s02_axis_tdata(17),
      O => m02_axis_tdata(17)
    );
\m02_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(7),
      I1 => sel(2),
      I2 => s02_axis_tdata(18),
      O => m02_axis_tdata(18)
    );
\m02_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(8),
      I1 => sel(2),
      I2 => s02_axis_tdata(19),
      O => m02_axis_tdata(19)
    );
\m02_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(9),
      I1 => sel(2),
      I2 => s02_axis_tdata(20),
      O => m02_axis_tdata(20)
    );
\m02_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(10),
      I1 => sel(2),
      I2 => s02_axis_tdata(21),
      O => m02_axis_tdata(21)
    );
\m02_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(11),
      I1 => sel(2),
      I2 => s02_axis_tdata(22),
      O => m02_axis_tdata(22)
    );
\m02_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(12),
      I1 => sel(2),
      I2 => s02_axis_tdata(23),
      O => m02_axis_tdata(23)
    );
\m02_axis_tdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(13),
      I1 => sel(2),
      I2 => s02_axis_tdata(24),
      O => m02_axis_tdata(24)
    );
\m02_axis_tdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(14),
      I1 => sel(2),
      I2 => s02_axis_tdata(25),
      O => m02_axis_tdata(25)
    );
\m02_axis_tdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(15),
      I1 => sel(2),
      I2 => s02_axis_tdata(26),
      O => m02_axis_tdata(26)
    );
\m02_axis_tdata[33]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(2),
      I1 => s02_axis_tdata(27),
      O => m02_axis_tdata(27)
    );
\m02_axis_tdata[35]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(3),
      I1 => sel(2),
      I2 => s02_axis_tdata(28),
      O => m02_axis_tdata(28)
    );
\m02_axis_tdata[36]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(4),
      I1 => sel(2),
      I2 => s02_axis_tdata(29),
      O => m02_axis_tdata(29)
    );
\m02_axis_tdata[37]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(5),
      I1 => sel(2),
      I2 => s02_axis_tdata(30),
      O => m02_axis_tdata(30)
    );
\m02_axis_tdata[38]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(6),
      I1 => sel(2),
      I2 => s02_axis_tdata(31),
      O => m02_axis_tdata(31)
    );
\m02_axis_tdata[39]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(7),
      I1 => sel(2),
      I2 => s02_axis_tdata(32),
      O => m02_axis_tdata(32)
    );
\m02_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(3),
      I1 => sel(2),
      I2 => s02_axis_tdata(0),
      O => m02_axis_tdata(0)
    );
\m02_axis_tdata[40]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(8),
      I1 => sel(2),
      I2 => s02_axis_tdata(33),
      O => m02_axis_tdata(33)
    );
\m02_axis_tdata[41]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(9),
      I1 => sel(2),
      I2 => s02_axis_tdata(34),
      O => m02_axis_tdata(34)
    );
\m02_axis_tdata[42]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(10),
      I1 => sel(2),
      I2 => s02_axis_tdata(35),
      O => m02_axis_tdata(35)
    );
\m02_axis_tdata[43]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(11),
      I1 => sel(2),
      I2 => s02_axis_tdata(36),
      O => m02_axis_tdata(36)
    );
\m02_axis_tdata[44]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(12),
      I1 => sel(2),
      I2 => s02_axis_tdata(37),
      O => m02_axis_tdata(37)
    );
\m02_axis_tdata[45]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(13),
      I1 => sel(2),
      I2 => s02_axis_tdata(38),
      O => m02_axis_tdata(38)
    );
\m02_axis_tdata[46]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(14),
      I1 => sel(2),
      I2 => s02_axis_tdata(39),
      O => m02_axis_tdata(39)
    );
\m02_axis_tdata[47]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(15),
      I1 => sel(2),
      I2 => s02_axis_tdata(40),
      O => m02_axis_tdata(40)
    );
\m02_axis_tdata[48]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(2),
      I1 => s02_axis_tdata(41),
      O => m02_axis_tdata(41)
    );
\m02_axis_tdata[49]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(2),
      I1 => s02_axis_tdata(42),
      O => m02_axis_tdata(42)
    );
\m02_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(4),
      I1 => sel(2),
      I2 => s02_axis_tdata(1),
      O => m02_axis_tdata(1)
    );
\m02_axis_tdata[51]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(3),
      I1 => sel(2),
      I2 => s02_axis_tdata(43),
      O => m02_axis_tdata(43)
    );
\m02_axis_tdata[52]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(4),
      I1 => sel(2),
      I2 => s02_axis_tdata(44),
      O => m02_axis_tdata(44)
    );
\m02_axis_tdata[53]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(5),
      I1 => sel(2),
      I2 => s02_axis_tdata(45),
      O => m02_axis_tdata(45)
    );
\m02_axis_tdata[54]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(6),
      I1 => sel(2),
      I2 => s02_axis_tdata(46),
      O => m02_axis_tdata(46)
    );
\m02_axis_tdata[55]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(7),
      I1 => sel(2),
      I2 => s02_axis_tdata(47),
      O => m02_axis_tdata(47)
    );
\m02_axis_tdata[56]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(8),
      I1 => sel(2),
      I2 => s02_axis_tdata(48),
      O => m02_axis_tdata(48)
    );
\m02_axis_tdata[57]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(9),
      I1 => sel(2),
      I2 => s02_axis_tdata(49),
      O => m02_axis_tdata(49)
    );
\m02_axis_tdata[58]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(10),
      I1 => sel(2),
      I2 => s02_axis_tdata(50),
      O => m02_axis_tdata(50)
    );
\m02_axis_tdata[59]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(11),
      I1 => sel(2),
      I2 => s02_axis_tdata(51),
      O => m02_axis_tdata(51)
    );
\m02_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(5),
      I1 => sel(2),
      I2 => s02_axis_tdata(2),
      O => m02_axis_tdata(2)
    );
\m02_axis_tdata[60]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(12),
      I1 => sel(2),
      I2 => s02_axis_tdata(52),
      O => m02_axis_tdata(52)
    );
\m02_axis_tdata[61]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(13),
      I1 => sel(2),
      I2 => s02_axis_tdata(53),
      O => m02_axis_tdata(53)
    );
\m02_axis_tdata[62]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(14),
      I1 => sel(2),
      I2 => s02_axis_tdata(54),
      O => m02_axis_tdata(54)
    );
\m02_axis_tdata[63]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(15),
      I1 => sel(2),
      I2 => s02_axis_tdata(55),
      O => m02_axis_tdata(55)
    );
\m02_axis_tdata[66]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(2),
      I1 => s02_axis_tdata(56),
      O => m02_axis_tdata(56)
    );
\m02_axis_tdata[67]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(3),
      I1 => sel(2),
      I2 => s02_axis_tdata(57),
      O => m02_axis_tdata(57)
    );
\m02_axis_tdata[68]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(4),
      I1 => sel(2),
      I2 => s02_axis_tdata(58),
      O => m02_axis_tdata(58)
    );
\m02_axis_tdata[69]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(5),
      I1 => sel(2),
      I2 => s02_axis_tdata(59),
      O => m02_axis_tdata(59)
    );
\m02_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(6),
      I1 => sel(2),
      I2 => s02_axis_tdata(3),
      O => m02_axis_tdata(3)
    );
\m02_axis_tdata[70]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(6),
      I1 => sel(2),
      I2 => s02_axis_tdata(60),
      O => m02_axis_tdata(60)
    );
\m02_axis_tdata[71]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(7),
      I1 => sel(2),
      I2 => s02_axis_tdata(61),
      O => m02_axis_tdata(61)
    );
\m02_axis_tdata[72]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(8),
      I1 => sel(2),
      I2 => s02_axis_tdata(62),
      O => m02_axis_tdata(62)
    );
\m02_axis_tdata[73]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(9),
      I1 => sel(2),
      I2 => s02_axis_tdata(63),
      O => m02_axis_tdata(63)
    );
\m02_axis_tdata[74]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(10),
      I1 => sel(2),
      I2 => s02_axis_tdata(64),
      O => m02_axis_tdata(64)
    );
\m02_axis_tdata[75]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(11),
      I1 => sel(2),
      I2 => s02_axis_tdata(65),
      O => m02_axis_tdata(65)
    );
\m02_axis_tdata[76]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(12),
      I1 => sel(2),
      I2 => s02_axis_tdata(66),
      O => m02_axis_tdata(66)
    );
\m02_axis_tdata[77]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(13),
      I1 => sel(2),
      I2 => s02_axis_tdata(67),
      O => m02_axis_tdata(67)
    );
\m02_axis_tdata[78]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(14),
      I1 => sel(2),
      I2 => s02_axis_tdata(68),
      O => m02_axis_tdata(68)
    );
\m02_axis_tdata[79]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(15),
      I1 => sel(2),
      I2 => s02_axis_tdata(69),
      O => m02_axis_tdata(69)
    );
\m02_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(7),
      I1 => sel(2),
      I2 => s02_axis_tdata(4),
      O => m02_axis_tdata(4)
    );
\m02_axis_tdata[80]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(2),
      I1 => s02_axis_tdata(70),
      O => m02_axis_tdata(70)
    );
\m02_axis_tdata[82]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(2),
      I1 => s02_axis_tdata(71),
      O => m02_axis_tdata(71)
    );
\m02_axis_tdata[83]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(3),
      I1 => sel(2),
      I2 => s02_axis_tdata(72),
      O => m02_axis_tdata(72)
    );
\m02_axis_tdata[84]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(4),
      I1 => sel(2),
      I2 => s02_axis_tdata(73),
      O => m02_axis_tdata(73)
    );
\m02_axis_tdata[85]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(5),
      I1 => sel(2),
      I2 => s02_axis_tdata(74),
      O => m02_axis_tdata(74)
    );
\m02_axis_tdata[86]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(6),
      I1 => sel(2),
      I2 => s02_axis_tdata(75),
      O => m02_axis_tdata(75)
    );
\m02_axis_tdata[87]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(7),
      I1 => sel(2),
      I2 => s02_axis_tdata(76),
      O => m02_axis_tdata(76)
    );
\m02_axis_tdata[88]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(8),
      I1 => sel(2),
      I2 => s02_axis_tdata(77),
      O => m02_axis_tdata(77)
    );
\m02_axis_tdata[89]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(9),
      I1 => sel(2),
      I2 => s02_axis_tdata(78),
      O => m02_axis_tdata(78)
    );
\m02_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(8),
      I1 => sel(2),
      I2 => s02_axis_tdata(5),
      O => m02_axis_tdata(5)
    );
\m02_axis_tdata[90]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(10),
      I1 => sel(2),
      I2 => s02_axis_tdata(79),
      O => m02_axis_tdata(79)
    );
\m02_axis_tdata[91]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(11),
      I1 => sel(2),
      I2 => s02_axis_tdata(80),
      O => m02_axis_tdata(80)
    );
\m02_axis_tdata[92]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(12),
      I1 => sel(2),
      I2 => s02_axis_tdata(81),
      O => m02_axis_tdata(81)
    );
\m02_axis_tdata[93]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(13),
      I1 => sel(2),
      I2 => s02_axis_tdata(82),
      O => m02_axis_tdata(82)
    );
\m02_axis_tdata[94]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(14),
      I1 => sel(2),
      I2 => s02_axis_tdata(83),
      O => m02_axis_tdata(83)
    );
\m02_axis_tdata[95]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(15),
      I1 => sel(2),
      I2 => s02_axis_tdata(84),
      O => m02_axis_tdata(84)
    );
\m02_axis_tdata[97]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(2),
      I1 => s02_axis_tdata(85),
      O => m02_axis_tdata(85)
    );
\m02_axis_tdata[98]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(2),
      I1 => s02_axis_tdata(86),
      O => m02_axis_tdata(86)
    );
\m02_axis_tdata[99]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(3),
      I1 => sel(2),
      I2 => s02_axis_tdata(87),
      O => m02_axis_tdata(87)
    );
\m02_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch2_reg(9),
      I1 => sel(2),
      I2 => s02_axis_tdata(6),
      O => m02_axis_tdata(6)
    );
\m03_axis_tdata[100]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(4),
      I1 => sel(3),
      I2 => s03_axis_tdata(88),
      O => m03_axis_tdata(88)
    );
\m03_axis_tdata[101]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(5),
      I1 => sel(3),
      I2 => s03_axis_tdata(89),
      O => m03_axis_tdata(89)
    );
\m03_axis_tdata[102]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(6),
      I1 => sel(3),
      I2 => s03_axis_tdata(90),
      O => m03_axis_tdata(90)
    );
\m03_axis_tdata[103]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(7),
      I1 => sel(3),
      I2 => s03_axis_tdata(91),
      O => m03_axis_tdata(91)
    );
\m03_axis_tdata[104]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(8),
      I1 => sel(3),
      I2 => s03_axis_tdata(92),
      O => m03_axis_tdata(92)
    );
\m03_axis_tdata[105]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(9),
      I1 => sel(3),
      I2 => s03_axis_tdata(93),
      O => m03_axis_tdata(93)
    );
\m03_axis_tdata[106]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(10),
      I1 => sel(3),
      I2 => s03_axis_tdata(94),
      O => m03_axis_tdata(94)
    );
\m03_axis_tdata[107]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(11),
      I1 => sel(3),
      I2 => s03_axis_tdata(95),
      O => m03_axis_tdata(95)
    );
\m03_axis_tdata[108]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(12),
      I1 => sel(3),
      I2 => s03_axis_tdata(96),
      O => m03_axis_tdata(96)
    );
\m03_axis_tdata[109]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(13),
      I1 => sel(3),
      I2 => s03_axis_tdata(97),
      O => m03_axis_tdata(97)
    );
\m03_axis_tdata[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(10),
      I1 => sel(3),
      I2 => s03_axis_tdata(7),
      O => m03_axis_tdata(7)
    );
\m03_axis_tdata[110]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(14),
      I1 => sel(3),
      I2 => s03_axis_tdata(98),
      O => m03_axis_tdata(98)
    );
\m03_axis_tdata[111]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(15),
      I1 => sel(3),
      I2 => s03_axis_tdata(99),
      O => m03_axis_tdata(99)
    );
\m03_axis_tdata[112]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(3),
      I1 => s03_axis_tdata(100),
      O => m03_axis_tdata(100)
    );
\m03_axis_tdata[113]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(3),
      I1 => s03_axis_tdata(101),
      O => m03_axis_tdata(101)
    );
\m03_axis_tdata[114]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(3),
      I1 => s03_axis_tdata(102),
      O => m03_axis_tdata(102)
    );
\m03_axis_tdata[115]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(3),
      I1 => sel(3),
      I2 => s03_axis_tdata(103),
      O => m03_axis_tdata(103)
    );
\m03_axis_tdata[116]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(4),
      I1 => sel(3),
      I2 => s03_axis_tdata(104),
      O => m03_axis_tdata(104)
    );
\m03_axis_tdata[117]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(5),
      I1 => sel(3),
      I2 => s03_axis_tdata(105),
      O => m03_axis_tdata(105)
    );
\m03_axis_tdata[118]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(6),
      I1 => sel(3),
      I2 => s03_axis_tdata(106),
      O => m03_axis_tdata(106)
    );
\m03_axis_tdata[119]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(7),
      I1 => sel(3),
      I2 => s03_axis_tdata(107),
      O => m03_axis_tdata(107)
    );
\m03_axis_tdata[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(11),
      I1 => sel(3),
      I2 => s03_axis_tdata(8),
      O => m03_axis_tdata(8)
    );
\m03_axis_tdata[120]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(8),
      I1 => sel(3),
      I2 => s03_axis_tdata(108),
      O => m03_axis_tdata(108)
    );
\m03_axis_tdata[121]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(9),
      I1 => sel(3),
      I2 => s03_axis_tdata(109),
      O => m03_axis_tdata(109)
    );
\m03_axis_tdata[122]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(10),
      I1 => sel(3),
      I2 => s03_axis_tdata(110),
      O => m03_axis_tdata(110)
    );
\m03_axis_tdata[123]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(11),
      I1 => sel(3),
      I2 => s03_axis_tdata(111),
      O => m03_axis_tdata(111)
    );
\m03_axis_tdata[124]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(12),
      I1 => sel(3),
      I2 => s03_axis_tdata(112),
      O => m03_axis_tdata(112)
    );
\m03_axis_tdata[125]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(13),
      I1 => sel(3),
      I2 => s03_axis_tdata(113),
      O => m03_axis_tdata(113)
    );
\m03_axis_tdata[126]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(14),
      I1 => sel(3),
      I2 => s03_axis_tdata(114),
      O => m03_axis_tdata(114)
    );
\m03_axis_tdata[127]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(15),
      I1 => sel(3),
      I2 => s03_axis_tdata(115),
      O => m03_axis_tdata(115)
    );
\m03_axis_tdata[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(12),
      I1 => sel(3),
      I2 => s03_axis_tdata(9),
      O => m03_axis_tdata(9)
    );
\m03_axis_tdata[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(13),
      I1 => sel(3),
      I2 => s03_axis_tdata(10),
      O => m03_axis_tdata(10)
    );
\m03_axis_tdata[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(14),
      I1 => sel(3),
      I2 => s03_axis_tdata(11),
      O => m03_axis_tdata(11)
    );
\m03_axis_tdata[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(15),
      I1 => sel(3),
      I2 => s03_axis_tdata(12),
      O => m03_axis_tdata(12)
    );
\m03_axis_tdata[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(3),
      I1 => s03_axis_tdata(13),
      O => m03_axis_tdata(13)
    );
\m03_axis_tdata[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(3),
      I1 => sel(3),
      I2 => s03_axis_tdata(14),
      O => m03_axis_tdata(14)
    );
\m03_axis_tdata[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(4),
      I1 => sel(3),
      I2 => s03_axis_tdata(15),
      O => m03_axis_tdata(15)
    );
\m03_axis_tdata[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(5),
      I1 => sel(3),
      I2 => s03_axis_tdata(16),
      O => m03_axis_tdata(16)
    );
\m03_axis_tdata[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(6),
      I1 => sel(3),
      I2 => s03_axis_tdata(17),
      O => m03_axis_tdata(17)
    );
\m03_axis_tdata[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(7),
      I1 => sel(3),
      I2 => s03_axis_tdata(18),
      O => m03_axis_tdata(18)
    );
\m03_axis_tdata[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(8),
      I1 => sel(3),
      I2 => s03_axis_tdata(19),
      O => m03_axis_tdata(19)
    );
\m03_axis_tdata[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(9),
      I1 => sel(3),
      I2 => s03_axis_tdata(20),
      O => m03_axis_tdata(20)
    );
\m03_axis_tdata[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(10),
      I1 => sel(3),
      I2 => s03_axis_tdata(21),
      O => m03_axis_tdata(21)
    );
\m03_axis_tdata[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(11),
      I1 => sel(3),
      I2 => s03_axis_tdata(22),
      O => m03_axis_tdata(22)
    );
\m03_axis_tdata[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(12),
      I1 => sel(3),
      I2 => s03_axis_tdata(23),
      O => m03_axis_tdata(23)
    );
\m03_axis_tdata[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(13),
      I1 => sel(3),
      I2 => s03_axis_tdata(24),
      O => m03_axis_tdata(24)
    );
\m03_axis_tdata[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(14),
      I1 => sel(3),
      I2 => s03_axis_tdata(25),
      O => m03_axis_tdata(25)
    );
\m03_axis_tdata[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(15),
      I1 => sel(3),
      I2 => s03_axis_tdata(26),
      O => m03_axis_tdata(26)
    );
\m03_axis_tdata[33]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(3),
      I1 => s03_axis_tdata(27),
      O => m03_axis_tdata(27)
    );
\m03_axis_tdata[35]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(3),
      I1 => sel(3),
      I2 => s03_axis_tdata(28),
      O => m03_axis_tdata(28)
    );
\m03_axis_tdata[36]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(4),
      I1 => sel(3),
      I2 => s03_axis_tdata(29),
      O => m03_axis_tdata(29)
    );
\m03_axis_tdata[37]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(5),
      I1 => sel(3),
      I2 => s03_axis_tdata(30),
      O => m03_axis_tdata(30)
    );
\m03_axis_tdata[38]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(6),
      I1 => sel(3),
      I2 => s03_axis_tdata(31),
      O => m03_axis_tdata(31)
    );
\m03_axis_tdata[39]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(7),
      I1 => sel(3),
      I2 => s03_axis_tdata(32),
      O => m03_axis_tdata(32)
    );
\m03_axis_tdata[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(3),
      I1 => sel(3),
      I2 => s03_axis_tdata(0),
      O => m03_axis_tdata(0)
    );
\m03_axis_tdata[40]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(8),
      I1 => sel(3),
      I2 => s03_axis_tdata(33),
      O => m03_axis_tdata(33)
    );
\m03_axis_tdata[41]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(9),
      I1 => sel(3),
      I2 => s03_axis_tdata(34),
      O => m03_axis_tdata(34)
    );
\m03_axis_tdata[42]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(10),
      I1 => sel(3),
      I2 => s03_axis_tdata(35),
      O => m03_axis_tdata(35)
    );
\m03_axis_tdata[43]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(11),
      I1 => sel(3),
      I2 => s03_axis_tdata(36),
      O => m03_axis_tdata(36)
    );
\m03_axis_tdata[44]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(12),
      I1 => sel(3),
      I2 => s03_axis_tdata(37),
      O => m03_axis_tdata(37)
    );
\m03_axis_tdata[45]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(13),
      I1 => sel(3),
      I2 => s03_axis_tdata(38),
      O => m03_axis_tdata(38)
    );
\m03_axis_tdata[46]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(14),
      I1 => sel(3),
      I2 => s03_axis_tdata(39),
      O => m03_axis_tdata(39)
    );
\m03_axis_tdata[47]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(15),
      I1 => sel(3),
      I2 => s03_axis_tdata(40),
      O => m03_axis_tdata(40)
    );
\m03_axis_tdata[48]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(3),
      I1 => s03_axis_tdata(41),
      O => m03_axis_tdata(41)
    );
\m03_axis_tdata[49]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(3),
      I1 => s03_axis_tdata(42),
      O => m03_axis_tdata(42)
    );
\m03_axis_tdata[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(4),
      I1 => sel(3),
      I2 => s03_axis_tdata(1),
      O => m03_axis_tdata(1)
    );
\m03_axis_tdata[51]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(3),
      I1 => sel(3),
      I2 => s03_axis_tdata(43),
      O => m03_axis_tdata(43)
    );
\m03_axis_tdata[52]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(4),
      I1 => sel(3),
      I2 => s03_axis_tdata(44),
      O => m03_axis_tdata(44)
    );
\m03_axis_tdata[53]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(5),
      I1 => sel(3),
      I2 => s03_axis_tdata(45),
      O => m03_axis_tdata(45)
    );
\m03_axis_tdata[54]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(6),
      I1 => sel(3),
      I2 => s03_axis_tdata(46),
      O => m03_axis_tdata(46)
    );
\m03_axis_tdata[55]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(7),
      I1 => sel(3),
      I2 => s03_axis_tdata(47),
      O => m03_axis_tdata(47)
    );
\m03_axis_tdata[56]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(8),
      I1 => sel(3),
      I2 => s03_axis_tdata(48),
      O => m03_axis_tdata(48)
    );
\m03_axis_tdata[57]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(9),
      I1 => sel(3),
      I2 => s03_axis_tdata(49),
      O => m03_axis_tdata(49)
    );
\m03_axis_tdata[58]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(10),
      I1 => sel(3),
      I2 => s03_axis_tdata(50),
      O => m03_axis_tdata(50)
    );
\m03_axis_tdata[59]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(11),
      I1 => sel(3),
      I2 => s03_axis_tdata(51),
      O => m03_axis_tdata(51)
    );
\m03_axis_tdata[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(5),
      I1 => sel(3),
      I2 => s03_axis_tdata(2),
      O => m03_axis_tdata(2)
    );
\m03_axis_tdata[60]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(12),
      I1 => sel(3),
      I2 => s03_axis_tdata(52),
      O => m03_axis_tdata(52)
    );
\m03_axis_tdata[61]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(13),
      I1 => sel(3),
      I2 => s03_axis_tdata(53),
      O => m03_axis_tdata(53)
    );
\m03_axis_tdata[62]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(14),
      I1 => sel(3),
      I2 => s03_axis_tdata(54),
      O => m03_axis_tdata(54)
    );
\m03_axis_tdata[63]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(15),
      I1 => sel(3),
      I2 => s03_axis_tdata(55),
      O => m03_axis_tdata(55)
    );
\m03_axis_tdata[66]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(3),
      I1 => s03_axis_tdata(56),
      O => m03_axis_tdata(56)
    );
\m03_axis_tdata[67]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(3),
      I1 => sel(3),
      I2 => s03_axis_tdata(57),
      O => m03_axis_tdata(57)
    );
\m03_axis_tdata[68]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(4),
      I1 => sel(3),
      I2 => s03_axis_tdata(58),
      O => m03_axis_tdata(58)
    );
\m03_axis_tdata[69]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(5),
      I1 => sel(3),
      I2 => s03_axis_tdata(59),
      O => m03_axis_tdata(59)
    );
\m03_axis_tdata[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(6),
      I1 => sel(3),
      I2 => s03_axis_tdata(3),
      O => m03_axis_tdata(3)
    );
\m03_axis_tdata[70]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(6),
      I1 => sel(3),
      I2 => s03_axis_tdata(60),
      O => m03_axis_tdata(60)
    );
\m03_axis_tdata[71]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(7),
      I1 => sel(3),
      I2 => s03_axis_tdata(61),
      O => m03_axis_tdata(61)
    );
\m03_axis_tdata[72]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(8),
      I1 => sel(3),
      I2 => s03_axis_tdata(62),
      O => m03_axis_tdata(62)
    );
\m03_axis_tdata[73]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(9),
      I1 => sel(3),
      I2 => s03_axis_tdata(63),
      O => m03_axis_tdata(63)
    );
\m03_axis_tdata[74]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(10),
      I1 => sel(3),
      I2 => s03_axis_tdata(64),
      O => m03_axis_tdata(64)
    );
\m03_axis_tdata[75]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(11),
      I1 => sel(3),
      I2 => s03_axis_tdata(65),
      O => m03_axis_tdata(65)
    );
\m03_axis_tdata[76]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(12),
      I1 => sel(3),
      I2 => s03_axis_tdata(66),
      O => m03_axis_tdata(66)
    );
\m03_axis_tdata[77]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(13),
      I1 => sel(3),
      I2 => s03_axis_tdata(67),
      O => m03_axis_tdata(67)
    );
\m03_axis_tdata[78]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(14),
      I1 => sel(3),
      I2 => s03_axis_tdata(68),
      O => m03_axis_tdata(68)
    );
\m03_axis_tdata[79]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(15),
      I1 => sel(3),
      I2 => s03_axis_tdata(69),
      O => m03_axis_tdata(69)
    );
\m03_axis_tdata[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(7),
      I1 => sel(3),
      I2 => s03_axis_tdata(4),
      O => m03_axis_tdata(4)
    );
\m03_axis_tdata[80]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(3),
      I1 => s03_axis_tdata(70),
      O => m03_axis_tdata(70)
    );
\m03_axis_tdata[82]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(3),
      I1 => s03_axis_tdata(71),
      O => m03_axis_tdata(71)
    );
\m03_axis_tdata[83]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(3),
      I1 => sel(3),
      I2 => s03_axis_tdata(72),
      O => m03_axis_tdata(72)
    );
\m03_axis_tdata[84]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(4),
      I1 => sel(3),
      I2 => s03_axis_tdata(73),
      O => m03_axis_tdata(73)
    );
\m03_axis_tdata[85]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(5),
      I1 => sel(3),
      I2 => s03_axis_tdata(74),
      O => m03_axis_tdata(74)
    );
\m03_axis_tdata[86]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(6),
      I1 => sel(3),
      I2 => s03_axis_tdata(75),
      O => m03_axis_tdata(75)
    );
\m03_axis_tdata[87]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(7),
      I1 => sel(3),
      I2 => s03_axis_tdata(76),
      O => m03_axis_tdata(76)
    );
\m03_axis_tdata[88]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(8),
      I1 => sel(3),
      I2 => s03_axis_tdata(77),
      O => m03_axis_tdata(77)
    );
\m03_axis_tdata[89]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(9),
      I1 => sel(3),
      I2 => s03_axis_tdata(78),
      O => m03_axis_tdata(78)
    );
\m03_axis_tdata[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(8),
      I1 => sel(3),
      I2 => s03_axis_tdata(5),
      O => m03_axis_tdata(5)
    );
\m03_axis_tdata[90]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(10),
      I1 => sel(3),
      I2 => s03_axis_tdata(79),
      O => m03_axis_tdata(79)
    );
\m03_axis_tdata[91]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(11),
      I1 => sel(3),
      I2 => s03_axis_tdata(80),
      O => m03_axis_tdata(80)
    );
\m03_axis_tdata[92]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(12),
      I1 => sel(3),
      I2 => s03_axis_tdata(81),
      O => m03_axis_tdata(81)
    );
\m03_axis_tdata[93]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(13),
      I1 => sel(3),
      I2 => s03_axis_tdata(82),
      O => m03_axis_tdata(82)
    );
\m03_axis_tdata[94]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(14),
      I1 => sel(3),
      I2 => s03_axis_tdata(83),
      O => m03_axis_tdata(83)
    );
\m03_axis_tdata[95]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(15),
      I1 => sel(3),
      I2 => s03_axis_tdata(84),
      O => m03_axis_tdata(84)
    );
\m03_axis_tdata[97]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(3),
      I1 => s03_axis_tdata(85),
      O => m03_axis_tdata(85)
    );
\m03_axis_tdata[98]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(3),
      I1 => s03_axis_tdata(86),
      O => m03_axis_tdata(86)
    );
\m03_axis_tdata[99]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(3),
      I1 => sel(3),
      I2 => s03_axis_tdata(87),
      O => m03_axis_tdata(87)
    );
\m03_axis_tdata[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => counter_ch3_reg(9),
      I1 => sel(3),
      I2 => s03_axis_tdata(6),
      O => m03_axis_tdata(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity T510_design_axis_4channel_interf_0_0 is
  port (
    clk : in STD_LOGIC;
    resetn : in STD_LOGIC;
    sel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s00_axis_tvalid : in STD_LOGIC;
    s00_axis_tready : out STD_LOGIC;
    s01_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s01_axis_tvalid : in STD_LOGIC;
    s01_axis_tready : out STD_LOGIC;
    s02_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s02_axis_tvalid : in STD_LOGIC;
    s02_axis_tready : out STD_LOGIC;
    s03_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s03_axis_tvalid : in STD_LOGIC;
    s03_axis_tready : out STD_LOGIC;
    m00_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m00_axis_tvalid : out STD_LOGIC;
    m00_axis_tready : in STD_LOGIC;
    m01_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m01_axis_tvalid : out STD_LOGIC;
    m01_axis_tready : in STD_LOGIC;
    m02_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m02_axis_tvalid : out STD_LOGIC;
    m02_axis_tready : in STD_LOGIC;
    m03_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m03_axis_tvalid : out STD_LOGIC;
    m03_axis_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of T510_design_axis_4channel_interf_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of T510_design_axis_4channel_interf_0_0 : entity is "T510_design_axis_4channel_interf_0_0,axis_4channel_interfaces,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of T510_design_axis_4channel_interf_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of T510_design_axis_4channel_interf_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of T510_design_axis_4channel_interf_0_0 : entity is "axis_4channel_interfaces,Vivado 2024.2";
end T510_design_axis_4channel_interf_0_0;

architecture STRUCTURE of T510_design_axis_4channel_interf_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m00_axis:m01_axis:m02_axis:m03_axis:s00_axis:s01_axis:s02_axis:s03_axis, ASSOCIATED_RESET resetn, FREQ_HZ 15360000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m00_axis_tready : signal is "xilinx.com:interface:axis:1.0 m00_axis TREADY";
  attribute X_INTERFACE_INFO of m00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m00_axis TVALID";
  attribute X_INTERFACE_INFO of m01_axis_tready : signal is "xilinx.com:interface:axis:1.0 m01_axis TREADY";
  attribute X_INTERFACE_INFO of m01_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m01_axis TVALID";
  attribute X_INTERFACE_INFO of m02_axis_tready : signal is "xilinx.com:interface:axis:1.0 m02_axis TREADY";
  attribute X_INTERFACE_INFO of m02_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m02_axis TVALID";
  attribute X_INTERFACE_INFO of m03_axis_tready : signal is "xilinx.com:interface:axis:1.0 m03_axis TREADY";
  attribute X_INTERFACE_INFO of m03_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m03_axis TVALID";
  attribute X_INTERFACE_INFO of resetn : signal is "xilinx.com:signal:reset:1.0 resetn RST";
  attribute X_INTERFACE_MODE of resetn : signal is "slave";
  attribute X_INTERFACE_PARAMETER of resetn : signal is "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_tready : signal is "xilinx.com:interface:axis:1.0 s00_axis TREADY";
  attribute X_INTERFACE_INFO of s00_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s00_axis TVALID";
  attribute X_INTERFACE_INFO of s01_axis_tready : signal is "xilinx.com:interface:axis:1.0 s01_axis TREADY";
  attribute X_INTERFACE_INFO of s01_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s01_axis TVALID";
  attribute X_INTERFACE_INFO of s02_axis_tready : signal is "xilinx.com:interface:axis:1.0 s02_axis TREADY";
  attribute X_INTERFACE_INFO of s02_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s02_axis TVALID";
  attribute X_INTERFACE_INFO of s03_axis_tready : signal is "xilinx.com:interface:axis:1.0 s03_axis TREADY";
  attribute X_INTERFACE_INFO of s03_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s03_axis TVALID";
  attribute X_INTERFACE_INFO of m00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m00_axis TDATA";
  attribute X_INTERFACE_MODE of m00_axis_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of m00_axis_tdata : signal is "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m01_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m01_axis TDATA";
  attribute X_INTERFACE_MODE of m01_axis_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of m01_axis_tdata : signal is "XIL_INTERFACENAME m01_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m02_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m02_axis TDATA";
  attribute X_INTERFACE_MODE of m02_axis_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of m02_axis_tdata : signal is "XIL_INTERFACENAME m02_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m03_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m03_axis TDATA";
  attribute X_INTERFACE_MODE of m03_axis_tdata : signal is "master";
  attribute X_INTERFACE_PARAMETER of m03_axis_tdata : signal is "XIL_INTERFACENAME m03_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s00_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s00_axis TDATA";
  attribute X_INTERFACE_MODE of s00_axis_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s00_axis_tdata : signal is "XIL_INTERFACENAME s00_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s01_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s01_axis TDATA";
  attribute X_INTERFACE_MODE of s01_axis_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s01_axis_tdata : signal is "XIL_INTERFACENAME s01_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s02_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s02_axis TDATA";
  attribute X_INTERFACE_MODE of s02_axis_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s02_axis_tdata : signal is "XIL_INTERFACENAME s02_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s03_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s03_axis TDATA";
  attribute X_INTERFACE_MODE of s03_axis_tdata : signal is "slave";
  attribute X_INTERFACE_PARAMETER of s03_axis_tdata : signal is "XIL_INTERFACENAME s03_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0";
begin
inst: entity work.T510_design_axis_4channel_interf_0_0_axis_4channel_interfaces
     port map (
      clk => clk,
      m00_axis_tdata(115 downto 85) => m00_axis_tdata(127 downto 97),
      m00_axis_tdata(84 downto 71) => m00_axis_tdata(95 downto 82),
      m00_axis_tdata(70 downto 56) => m00_axis_tdata(80 downto 66),
      m00_axis_tdata(55 downto 43) => m00_axis_tdata(63 downto 51),
      m00_axis_tdata(42 downto 28) => m00_axis_tdata(49 downto 35),
      m00_axis_tdata(27) => m00_axis_tdata(33),
      m00_axis_tdata(26 downto 14) => m00_axis_tdata(31 downto 19),
      m00_axis_tdata(13 downto 0) => m00_axis_tdata(16 downto 3),
      m00_axis_tready => m00_axis_tready,
      m01_axis_tdata(115 downto 85) => m01_axis_tdata(127 downto 97),
      m01_axis_tdata(84 downto 71) => m01_axis_tdata(95 downto 82),
      m01_axis_tdata(70 downto 56) => m01_axis_tdata(80 downto 66),
      m01_axis_tdata(55 downto 43) => m01_axis_tdata(63 downto 51),
      m01_axis_tdata(42 downto 28) => m01_axis_tdata(49 downto 35),
      m01_axis_tdata(27) => m01_axis_tdata(33),
      m01_axis_tdata(26 downto 14) => m01_axis_tdata(31 downto 19),
      m01_axis_tdata(13 downto 0) => m01_axis_tdata(16 downto 3),
      m01_axis_tready => m01_axis_tready,
      m02_axis_tdata(115 downto 85) => m02_axis_tdata(127 downto 97),
      m02_axis_tdata(84 downto 71) => m02_axis_tdata(95 downto 82),
      m02_axis_tdata(70 downto 56) => m02_axis_tdata(80 downto 66),
      m02_axis_tdata(55 downto 43) => m02_axis_tdata(63 downto 51),
      m02_axis_tdata(42 downto 28) => m02_axis_tdata(49 downto 35),
      m02_axis_tdata(27) => m02_axis_tdata(33),
      m02_axis_tdata(26 downto 14) => m02_axis_tdata(31 downto 19),
      m02_axis_tdata(13 downto 0) => m02_axis_tdata(16 downto 3),
      m02_axis_tready => m02_axis_tready,
      m03_axis_tdata(115 downto 85) => m03_axis_tdata(127 downto 97),
      m03_axis_tdata(84 downto 71) => m03_axis_tdata(95 downto 82),
      m03_axis_tdata(70 downto 56) => m03_axis_tdata(80 downto 66),
      m03_axis_tdata(55 downto 43) => m03_axis_tdata(63 downto 51),
      m03_axis_tdata(42 downto 28) => m03_axis_tdata(49 downto 35),
      m03_axis_tdata(27) => m03_axis_tdata(33),
      m03_axis_tdata(26 downto 14) => m03_axis_tdata(31 downto 19),
      m03_axis_tdata(13 downto 0) => m03_axis_tdata(16 downto 3),
      m03_axis_tready => m03_axis_tready,
      resetn => resetn,
      s00_axis_tdata(115 downto 85) => s00_axis_tdata(127 downto 97),
      s00_axis_tdata(84 downto 71) => s00_axis_tdata(95 downto 82),
      s00_axis_tdata(70 downto 56) => s00_axis_tdata(80 downto 66),
      s00_axis_tdata(55 downto 43) => s00_axis_tdata(63 downto 51),
      s00_axis_tdata(42 downto 28) => s00_axis_tdata(49 downto 35),
      s00_axis_tdata(27) => s00_axis_tdata(33),
      s00_axis_tdata(26 downto 14) => s00_axis_tdata(31 downto 19),
      s00_axis_tdata(13 downto 0) => s00_axis_tdata(16 downto 3),
      s01_axis_tdata(115 downto 85) => s01_axis_tdata(127 downto 97),
      s01_axis_tdata(84 downto 71) => s01_axis_tdata(95 downto 82),
      s01_axis_tdata(70 downto 56) => s01_axis_tdata(80 downto 66),
      s01_axis_tdata(55 downto 43) => s01_axis_tdata(63 downto 51),
      s01_axis_tdata(42 downto 28) => s01_axis_tdata(49 downto 35),
      s01_axis_tdata(27) => s01_axis_tdata(33),
      s01_axis_tdata(26 downto 14) => s01_axis_tdata(31 downto 19),
      s01_axis_tdata(13 downto 0) => s01_axis_tdata(16 downto 3),
      s02_axis_tdata(115 downto 85) => s02_axis_tdata(127 downto 97),
      s02_axis_tdata(84 downto 71) => s02_axis_tdata(95 downto 82),
      s02_axis_tdata(70 downto 56) => s02_axis_tdata(80 downto 66),
      s02_axis_tdata(55 downto 43) => s02_axis_tdata(63 downto 51),
      s02_axis_tdata(42 downto 28) => s02_axis_tdata(49 downto 35),
      s02_axis_tdata(27) => s02_axis_tdata(33),
      s02_axis_tdata(26 downto 14) => s02_axis_tdata(31 downto 19),
      s02_axis_tdata(13 downto 0) => s02_axis_tdata(16 downto 3),
      s03_axis_tdata(115 downto 85) => s03_axis_tdata(127 downto 97),
      s03_axis_tdata(84 downto 71) => s03_axis_tdata(95 downto 82),
      s03_axis_tdata(70 downto 56) => s03_axis_tdata(80 downto 66),
      s03_axis_tdata(55 downto 43) => s03_axis_tdata(63 downto 51),
      s03_axis_tdata(42 downto 28) => s03_axis_tdata(49 downto 35),
      s03_axis_tdata(27) => s03_axis_tdata(33),
      s03_axis_tdata(26 downto 14) => s03_axis_tdata(31 downto 19),
      s03_axis_tdata(13 downto 0) => s03_axis_tdata(16 downto 3),
      sel(3 downto 0) => sel(3 downto 0)
    );
\m00_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(0),
      I1 => sel(0),
      O => m00_axis_tdata(0)
    );
\m00_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(17),
      I1 => sel(0),
      O => m00_axis_tdata(17)
    );
\m00_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(18),
      I1 => sel(0),
      O => m00_axis_tdata(18)
    );
\m00_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(1),
      I1 => sel(0),
      O => m00_axis_tdata(1)
    );
\m00_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(2),
      I1 => sel(0),
      O => m00_axis_tdata(2)
    );
\m00_axis_tdata[32]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(32),
      I1 => sel(0),
      O => m00_axis_tdata(32)
    );
\m00_axis_tdata[34]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(34),
      I1 => sel(0),
      O => m00_axis_tdata(34)
    );
\m00_axis_tdata[50]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(50),
      I1 => sel(0),
      O => m00_axis_tdata(50)
    );
\m00_axis_tdata[64]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(64),
      I1 => sel(0),
      O => m00_axis_tdata(64)
    );
\m00_axis_tdata[65]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(65),
      I1 => sel(0),
      O => m00_axis_tdata(65)
    );
\m00_axis_tdata[81]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(81),
      I1 => sel(0),
      O => m00_axis_tdata(81)
    );
\m00_axis_tdata[96]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axis_tdata(96),
      I1 => sel(0),
      O => m00_axis_tdata(96)
    );
m00_axis_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(0),
      I1 => s00_axis_tvalid,
      O => m00_axis_tvalid
    );
\m01_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s01_axis_tdata(0),
      I1 => sel(1),
      O => m01_axis_tdata(0)
    );
\m01_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s01_axis_tdata(17),
      I1 => sel(1),
      O => m01_axis_tdata(17)
    );
\m01_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s01_axis_tdata(18),
      I1 => sel(1),
      O => m01_axis_tdata(18)
    );
\m01_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s01_axis_tdata(1),
      I1 => sel(1),
      O => m01_axis_tdata(1)
    );
\m01_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s01_axis_tdata(2),
      I1 => sel(1),
      O => m01_axis_tdata(2)
    );
\m01_axis_tdata[32]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s01_axis_tdata(32),
      I1 => sel(1),
      O => m01_axis_tdata(32)
    );
\m01_axis_tdata[34]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s01_axis_tdata(34),
      I1 => sel(1),
      O => m01_axis_tdata(34)
    );
\m01_axis_tdata[50]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s01_axis_tdata(50),
      I1 => sel(1),
      O => m01_axis_tdata(50)
    );
\m01_axis_tdata[64]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s01_axis_tdata(64),
      I1 => sel(1),
      O => m01_axis_tdata(64)
    );
\m01_axis_tdata[65]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s01_axis_tdata(65),
      I1 => sel(1),
      O => m01_axis_tdata(65)
    );
\m01_axis_tdata[81]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s01_axis_tdata(81),
      I1 => sel(1),
      O => m01_axis_tdata(81)
    );
\m01_axis_tdata[96]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s01_axis_tdata(96),
      I1 => sel(1),
      O => m01_axis_tdata(96)
    );
m01_axis_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(1),
      I1 => s01_axis_tvalid,
      O => m01_axis_tvalid
    );
\m02_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s02_axis_tdata(0),
      I1 => sel(2),
      O => m02_axis_tdata(0)
    );
\m02_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s02_axis_tdata(17),
      I1 => sel(2),
      O => m02_axis_tdata(17)
    );
\m02_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s02_axis_tdata(18),
      I1 => sel(2),
      O => m02_axis_tdata(18)
    );
\m02_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s02_axis_tdata(1),
      I1 => sel(2),
      O => m02_axis_tdata(1)
    );
\m02_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s02_axis_tdata(2),
      I1 => sel(2),
      O => m02_axis_tdata(2)
    );
\m02_axis_tdata[32]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s02_axis_tdata(32),
      I1 => sel(2),
      O => m02_axis_tdata(32)
    );
\m02_axis_tdata[34]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s02_axis_tdata(34),
      I1 => sel(2),
      O => m02_axis_tdata(34)
    );
\m02_axis_tdata[50]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s02_axis_tdata(50),
      I1 => sel(2),
      O => m02_axis_tdata(50)
    );
\m02_axis_tdata[64]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s02_axis_tdata(64),
      I1 => sel(2),
      O => m02_axis_tdata(64)
    );
\m02_axis_tdata[65]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s02_axis_tdata(65),
      I1 => sel(2),
      O => m02_axis_tdata(65)
    );
\m02_axis_tdata[81]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s02_axis_tdata(81),
      I1 => sel(2),
      O => m02_axis_tdata(81)
    );
\m02_axis_tdata[96]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s02_axis_tdata(96),
      I1 => sel(2),
      O => m02_axis_tdata(96)
    );
m02_axis_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(2),
      I1 => s02_axis_tvalid,
      O => m02_axis_tvalid
    );
\m03_axis_tdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s03_axis_tdata(0),
      I1 => sel(3),
      O => m03_axis_tdata(0)
    );
\m03_axis_tdata[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s03_axis_tdata(17),
      I1 => sel(3),
      O => m03_axis_tdata(17)
    );
\m03_axis_tdata[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s03_axis_tdata(18),
      I1 => sel(3),
      O => m03_axis_tdata(18)
    );
\m03_axis_tdata[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s03_axis_tdata(1),
      I1 => sel(3),
      O => m03_axis_tdata(1)
    );
\m03_axis_tdata[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s03_axis_tdata(2),
      I1 => sel(3),
      O => m03_axis_tdata(2)
    );
\m03_axis_tdata[32]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s03_axis_tdata(32),
      I1 => sel(3),
      O => m03_axis_tdata(32)
    );
\m03_axis_tdata[34]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s03_axis_tdata(34),
      I1 => sel(3),
      O => m03_axis_tdata(34)
    );
\m03_axis_tdata[50]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s03_axis_tdata(50),
      I1 => sel(3),
      O => m03_axis_tdata(50)
    );
\m03_axis_tdata[64]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s03_axis_tdata(64),
      I1 => sel(3),
      O => m03_axis_tdata(64)
    );
\m03_axis_tdata[65]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s03_axis_tdata(65),
      I1 => sel(3),
      O => m03_axis_tdata(65)
    );
\m03_axis_tdata[81]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s03_axis_tdata(81),
      I1 => sel(3),
      O => m03_axis_tdata(81)
    );
\m03_axis_tdata[96]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s03_axis_tdata(96),
      I1 => sel(3),
      O => m03_axis_tdata(96)
    );
m03_axis_tvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => sel(3),
      I1 => s03_axis_tvalid,
      O => m03_axis_tvalid
    );
s00_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m00_axis_tready,
      I1 => sel(0),
      O => s00_axis_tready
    );
s01_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m01_axis_tready,
      I1 => sel(1),
      O => s01_axis_tready
    );
s02_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m02_axis_tready,
      I1 => sel(2),
      O => s02_axis_tready
    );
s03_axis_tready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m03_axis_tready,
      I1 => sel(3),
      O => s03_axis_tready
    );
end STRUCTURE;
