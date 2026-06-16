#pl端同步时钟
set_property   -dict {PACKAGE_PIN  AG17 IOSTANDARD DIFF_SSTL12 } [get_ports pl_clk_p]
set_property   -dict {PACKAGE_PIN  AH17 IOSTANDARD DIFF_SSTL12 } [get_ports pl_clk_n]
set_property   -dict {PACKAGE_PIN  AG15 IOSTANDARD DIFF_SSTL12 } [get_ports pl_sys_ref_p]
set_property   -dict {PACKAGE_PIN  AH15 IOSTANDARD DIFF_SSTL12 } [get_ports pl_sys_ref_n]
set_property   -dict {PACKAGE_PIN  K11  IOSTANDARD LVCMOS33    }  [get_ports clk_main_sel ]
set_property   -dict {PACKAGE_PIN  C9   IOSTANDARD LVCMOS33    }  [get_ports lmk_sync     ]

set_property   -dict {PACKAGE_PIN  G12 IOSTANDARD LVCMOS33 }  [get_ports iic_scl_io     ]
set_property   -dict {PACKAGE_PIN  F12 IOSTANDARD LVCMOS33 }  [get_ports iic_sda_io     ]
set_property   -dict {PACKAGE_PIN  D9  IOSTANDARD LVCMOS33 }  [get_ports iic_rst_n     ]

set_property   -dict {PACKAGE_PIN   A10 IOSTANDARD LVCMOS33} [get_ports dac_status_led ] 
set_property   -dict {PACKAGE_PIN   A9  IOSTANDARD LVCMOS33} [get_ports adc_status_led ]