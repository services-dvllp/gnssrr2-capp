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


// IP VLNV: xilinx.com:user:axis_4channel_interfaces:1.0
// IP Revision: 2

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module T510_design_axis_4channel_interf_0_0 (
  clk,
  resetn,
  sel,
  s00_axis_tdata,
  s00_axis_tvalid,
  s00_axis_tready,
  s01_axis_tdata,
  s01_axis_tvalid,
  s01_axis_tready,
  s02_axis_tdata,
  s02_axis_tvalid,
  s02_axis_tready,
  s03_axis_tdata,
  s03_axis_tvalid,
  s03_axis_tready,
  m00_axis_tdata,
  m00_axis_tvalid,
  m00_axis_tready,
  m01_axis_tdata,
  m01_axis_tvalid,
  m01_axis_tready,
  m02_axis_tdata,
  m02_axis_tvalid,
  m02_axis_tready,
  m03_axis_tdata,
  m03_axis_tvalid,
  m03_axis_tready
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF m00_axis:m01_axis:m02_axis:m03_axis:s00_axis:s01_axis:s02_axis:s03_axis, ASSOCIATED_RESET resetn, FREQ_HZ 15360000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, INSERT_VIP 0" *)
input wire clk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 resetn RST" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
input wire resetn;
input wire [3 : 0] sel;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TDATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s00_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire [127 : 0] s00_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TVALID" *)
input wire s00_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s00_axis TREADY" *)
output wire s00_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TDATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s01_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire [127 : 0] s01_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TVALID" *)
input wire s01_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s01_axis TREADY" *)
output wire s01_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02_axis TDATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s02_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire [127 : 0] s02_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02_axis TVALID" *)
input wire s02_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s02_axis TREADY" *)
output wire s02_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03_axis TDATA" *)
(* X_INTERFACE_MODE = "slave" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s03_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
input wire [127 : 0] s03_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03_axis TVALID" *)
input wire s03_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s03_axis TREADY" *)
output wire s03_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m00_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire [127 : 0] m00_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TVALID" *)
output wire m00_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m00_axis TREADY" *)
input wire m00_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m01_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire [127 : 0] m01_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TVALID" *)
output wire m01_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m01_axis TREADY" *)
input wire m01_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02_axis TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m02_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire [127 : 0] m02_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02_axis TVALID" *)
output wire m02_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m02_axis TREADY" *)
input wire m02_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03_axis TDATA" *)
(* X_INTERFACE_MODE = "master" *)
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m03_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 15360000, PHASE 0.0, CLK_DOMAIN T510_design_clk_wiz_0_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
output wire [127 : 0] m03_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03_axis TVALID" *)
output wire m03_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m03_axis TREADY" *)
input wire m03_axis_tready;

  axis_4channel_interfaces inst (
    .clk(clk),
    .resetn(resetn),
    .sel(sel),
    .s00_axis_tdata(s00_axis_tdata),
    .s00_axis_tvalid(s00_axis_tvalid),
    .s00_axis_tready(s00_axis_tready),
    .s01_axis_tdata(s01_axis_tdata),
    .s01_axis_tvalid(s01_axis_tvalid),
    .s01_axis_tready(s01_axis_tready),
    .s02_axis_tdata(s02_axis_tdata),
    .s02_axis_tvalid(s02_axis_tvalid),
    .s02_axis_tready(s02_axis_tready),
    .s03_axis_tdata(s03_axis_tdata),
    .s03_axis_tvalid(s03_axis_tvalid),
    .s03_axis_tready(s03_axis_tready),
    .m00_axis_tdata(m00_axis_tdata),
    .m00_axis_tvalid(m00_axis_tvalid),
    .m00_axis_tready(m00_axis_tready),
    .m01_axis_tdata(m01_axis_tdata),
    .m01_axis_tvalid(m01_axis_tvalid),
    .m01_axis_tready(m01_axis_tready),
    .m02_axis_tdata(m02_axis_tdata),
    .m02_axis_tvalid(m02_axis_tvalid),
    .m02_axis_tready(m02_axis_tready),
    .m03_axis_tdata(m03_axis_tdata),
    .m03_axis_tvalid(m03_axis_tvalid),
    .m03_axis_tready(m03_axis_tready)
  );
endmodule
