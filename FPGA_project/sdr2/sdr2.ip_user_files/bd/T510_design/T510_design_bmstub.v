// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2026 Advanced Micro Devices, Inc. All Rights Reserved.
// -------------------------------------------------------------------------------

`timescale 1 ps / 1 ps

(* BLOCK_STUB = "true" *)
module T510_design (
  iic_scl_i,
  iic_scl_o,
  iic_scl_t,
  iic_sda_i,
  iic_sda_o,
  iic_sda_t,
  vout00_v_n,
  vout00_v_p,
  vout02_v_n,
  vout02_v_p,
  vin0_01_v_n,
  vin0_01_v_p,
  sysref_in_diff_n,
  sysref_in_diff_p,
  vin0_23_v_n,
  vin0_23_v_p,
  adc0_clk_clk_n,
  adc0_clk_clk_p,
  dac0_clk_clk_n,
  dac0_clk_clk_p,
  emio_tri_io_tri_i,
  emio_tri_io_tri_o,
  emio_tri_io_tri_t,
  pl_clk_p,
  pl_clk_n,
  pl_sys_ref_p,
  pl_sys_ref_n,
  adc_m_axis_clk,
  data_rst_n,
  clk_adc0_0,
  clk_dac0_0
);

  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic SCL_I" *)
  (* X_INTERFACE_MODE = "master iic" *)
  input iic_scl_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic SCL_O" *)
  output iic_scl_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic SCL_T" *)
  output iic_scl_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic SDA_I" *)
  input iic_sda_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic SDA_O" *)
  output iic_sda_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:iic:1.0 iic SDA_T" *)
  output iic_sda_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout00 V_N" *)
  (* X_INTERFACE_MODE = "master vout00" *)
  output vout00_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout00 V_P" *)
  output vout00_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout02 V_N" *)
  (* X_INTERFACE_MODE = "master vout02" *)
  output vout02_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vout02 V_P" *)
  output vout02_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin0_01 V_N" *)
  (* X_INTERFACE_MODE = "slave vin0_01" *)
  input vin0_01_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin0_01 V_P" *)
  input vin0_01_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:display_usp_rf_data_converter:diff_pins:1.0 sysref_in diff_n" *)
  (* X_INTERFACE_MODE = "slave sysref_in" *)
  input sysref_in_diff_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_usp_rf_data_converter:diff_pins:1.0 sysref_in diff_p" *)
  input sysref_in_diff_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin0_23 V_N" *)
  (* X_INTERFACE_MODE = "slave vin0_23" *)
  input vin0_23_v_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_analog_io:1.0 vin0_23 V_P" *)
  input vin0_23_v_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 adc0_clk CLK_N" *)
  (* X_INTERFACE_MODE = "slave adc0_clk" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME adc0_clk, CAN_DEBUG false, FREQ_HZ 245760000.0" *)
  input adc0_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 adc0_clk CLK_P" *)
  input adc0_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 dac0_clk CLK_N" *)
  (* X_INTERFACE_MODE = "slave dac0_clk" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME dac0_clk, CAN_DEBUG false, FREQ_HZ 245760000.0" *)
  input dac0_clk_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 dac0_clk CLK_P" *)
  input dac0_clk_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 emio_tri_io TRI_I" *)
  (* X_INTERFACE_MODE = "master emio_tri_io" *)
  input [0:0]emio_tri_io_tri_i;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 emio_tri_io TRI_O" *)
  output [0:0]emio_tri_io_tri_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:gpio:1.0 emio_tri_io TRI_T" *)
  output [0:0]emio_tri_io_tri_t;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL_CLK_P CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.PL_CLK_P" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL_CLK_P, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_pl_clk_p, INSERT_VIP 0" *)
  input pl_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PL_CLK_N CLK" *)
  (* X_INTERFACE_MODE = "slave CLK.PL_CLK_N" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PL_CLK_N, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_pl_clk_n, INSERT_VIP 0" *)
  input pl_clk_n;
  (* X_INTERFACE_IGNORE = "true" *)
  input pl_sys_ref_p;
  (* X_INTERFACE_IGNORE = "true" *)
  input pl_sys_ref_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.ADC_M_AXIS_CLK CLK" *)
  (* X_INTERFACE_MODE = "master CLK.ADC_M_AXIS_CLK" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.ADC_M_AXIS_CLK, FREQ_HZ 15360000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *)
  output adc_m_axis_clk;
  (* X_INTERFACE_IGNORE = "true" *)
  output data_rst_n;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_ADC0_0 CLK" *)
  (* X_INTERFACE_MODE = "master CLK.CLK_ADC0_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_ADC0_0, FREQ_HZ 38400000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_usp_rf_data_converter_0_0_clk_adc0, INSERT_VIP 0" *)
  output clk_adc0_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_DAC0_0 CLK" *)
  (* X_INTERFACE_MODE = "master CLK.CLK_DAC0_0" *)
  (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_DAC0_0, FREQ_HZ 38400000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_usp_rf_data_converter_0_0_clk_dac0, INSERT_VIP 0" *)
  output clk_dac0_0;

  // stub module has no contents

endmodule
