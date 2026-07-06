// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2026 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:dual_axis_probe_buffer:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module T510_design_dual_axis_probe_buff_0_4 (
  axis_aclk,
  axis_aresetn,
  s00_axis_tdata,
  s00_axis_tkeep,
  s00_axis_tlast,
  s00_axis_tvalid,
  s00_axis_tready,
  m00_axis_tdata,
  m00_axis_tkeep,
  m00_axis_tlast,
  m00_axis_tvalid,
  m00_axis_tready,
  s01_axis_tdata,
  s01_axis_tkeep,
  s01_axis_tlast,
  s01_axis_tvalid,
  s01_axis_tready,
  m01_axis_tdata,
  m01_axis_tkeep,
  m01_axis_tlast,
  m01_axis_tvalid,
  m01_axis_tready,
  pclk,
  presetn,
  bram_addr,
  bram_en,
  bram_we,
  bram_rddata
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_aclk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aclk, ASSOCIATED_BUSIF m00_axis:m01_axis:s00_axis:s01_axis, ASSOCIATED_RESET axis_aresetn, FREQ_HZ 30720000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *)
input wire axis_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire axis_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TDATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire [127 : 0] s00_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TKEEP" *)
input wire [15 : 0] s00_axis_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TLAST" *)
input wire s00_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TVALID" *)
input wire s00_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TREADY" *)
output wire s00_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire [127 : 0] m00_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TKEEP" *)
output wire [15 : 0] m00_axis_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TLAST" *)
output wire m00_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TVALID" *)
output wire m00_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TREADY" *)
input wire m00_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TDATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s01_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire [127 : 0] s01_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TKEEP" *)
input wire [15 : 0] s01_axis_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TLAST" *)
input wire s01_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TVALID" *)
input wire s01_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TREADY" *)
output wire s01_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m01_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 30720000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire [127 : 0] m01_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TKEEP" *)
output wire [15 : 0] m01_axis_tkeep;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TLAST" *)
output wire m01_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TVALID" *)
output wire m01_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TREADY" *)
input wire m01_axis_tready;
input wire pclk;
input wire presetn;
input wire [31 : 0] bram_addr;
input wire bram_en;
input wire [3 : 0] bram_we;
output wire [31 : 0] bram_rddata;

  dual_axis_probe_buffer #(
    .DEPTH(6144),
    .DATA_WIDTH(128),
    .ADDR_WIDTH(13)
  ) inst (
    .axis_aclk(axis_aclk),
    .axis_aresetn(axis_aresetn),
    .s00_axis_tdata(s00_axis_tdata),
    .s00_axis_tkeep(s00_axis_tkeep),
    .s00_axis_tlast(s00_axis_tlast),
    .s00_axis_tvalid(s00_axis_tvalid),
    .s00_axis_tready(s00_axis_tready),
    .m00_axis_tdata(m00_axis_tdata),
    .m00_axis_tkeep(m00_axis_tkeep),
    .m00_axis_tlast(m00_axis_tlast),
    .m00_axis_tvalid(m00_axis_tvalid),
    .m00_axis_tready(m00_axis_tready),
    .s01_axis_tdata(s01_axis_tdata),
    .s01_axis_tkeep(s01_axis_tkeep),
    .s01_axis_tlast(s01_axis_tlast),
    .s01_axis_tvalid(s01_axis_tvalid),
    .s01_axis_tready(s01_axis_tready),
    .m01_axis_tdata(m01_axis_tdata),
    .m01_axis_tkeep(m01_axis_tkeep),
    .m01_axis_tlast(m01_axis_tlast),
    .m01_axis_tvalid(m01_axis_tvalid),
    .m01_axis_tready(m01_axis_tready),
    .pclk(pclk),
    .presetn(presetn),
    .bram_addr(bram_addr),
    .bram_en(bram_en),
    .bram_we(bram_we),
    .bram_rddata(bram_rddata)
  );
endmodule
