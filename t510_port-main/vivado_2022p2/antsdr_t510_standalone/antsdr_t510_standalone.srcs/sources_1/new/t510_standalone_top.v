// --------------------------------------------------------------------
// Copyright (c) 2023 by MicroPhase Technologies Inc. 
// --------------------------------------------------------------------
//
// Permission:
//
//   MicroPhase grants permission to use and modify this code for use
//   in synthesis for all MicroPhase Development Boards.
//   Other use of this code, including the selling 
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  MicroPhase provides no warranty regarding the use 
//   or functionality of this code.
//
// --------------------------------------------------------------------
//           
//                     MicroPhase Technologies Inc
//                     Shanghai, China
//
//                     web: http://www.microphase.cn/   
//                     email: support@microphase.cn
//
// --------------------------------------------------------------------
// --------------------------------------------------------------------
//   
// Major Functions:   
//
// --------------------------------------------------------------------
// --------------------------------------------------------------------
//
//  Revision History    
//  Date          By            Revision    Change Description
//---------------------------------------------------------------------
// 2025.03.13     Ao Guohua     1.0          Original
//                                                      
// --------------------------------------------------------------------
// --------------------------------------------------------------------
module t510_standalone_top(
    //rf端口
     input adc1_clk_clk_n    ,
     input adc1_clk_clk_p    ,
     input dac2_clk_clk_n    ,
     input dac2_clk_clk_p    ,
     input sysref_in_diff_n  ,
     input sysref_in_diff_p  ,
     input vin0_01_v_n       ,
     input vin0_01_v_p       ,
     input vin0_23_v_n       ,
     input vin0_23_v_p       ,
     input vin1_01_v_n       ,
     input vin1_01_v_p       ,
     input vin1_23_v_n       ,
     input vin1_23_v_p       ,
     input vin2_01_v_n       ,
     input vin2_01_v_p       ,
     input vin2_23_v_n       ,
     input vin2_23_v_p       ,
     input vin3_01_v_n       ,
     input vin3_01_v_p       ,
     input vin3_23_v_n       ,
     input vin3_23_v_p       ,
     output vout00_v_n       ,
     output vout00_v_p       ,
     output vout02_v_n       ,
     output vout02_v_p       ,
     output vout10_v_n       ,
     output vout10_v_p       ,
     output vout12_v_n       ,
     output vout12_v_p       ,
     output vout20_v_n       ,
     output vout20_v_p       ,
     output vout22_v_n       ,
     output vout22_v_p       ,
     output vout30_v_n       ,
     output vout30_v_p       ,
     output vout32_v_n       ,
     output vout32_v_p       ,
  //pl端同步的时钟
     input  pl_clk_p           ,
     input  pl_clk_n           ,
     input  pl_sys_ref_p       ,
     input  pl_sys_ref_n       ,
 //时钟选择信号
     output  clk_main_sel       ,   
 //LMK同步信号
     inout  lmk_sync           , 
  //iinc
     inout  iic_scl_io , 
     inout  iic_sda_io , 
     output iic_rst_n ,
   //led      
     output dac_status_led     ,
     output adc_status_led           
 
     );
     wire       adc_m_axis_clk;
     wire       dac_s_axis_clk;
     wire       data_rst_n;
     wire [63:0]m00_axis_tdata;
     wire       m00_axis_tready;
     wire       m00_axis_tvalid;
     wire [63:0]m01_axis_tdata;
     wire       m01_axis_tready;
     wire       m01_axis_tvalid;
     wire [63:0]m02_axis_tdata;
     wire       m02_axis_tready;
     wire       m02_axis_tvalid;
     wire [63:0]m03_axis_tdata;
     wire       m03_axis_tready;
     wire       m03_axis_tvalid;
     wire [63:0]m10_axis_tdata;
     wire       m10_axis_tready;
     wire       m10_axis_tvalid;
     wire [63:0]m11_axis_tdata;
     wire       m11_axis_tready;
     wire       m11_axis_tvalid;
     wire [63:0]m12_axis_tdata;
     wire       m12_axis_tready;
     wire       m12_axis_tvalid;
     wire [63:0]m13_axis_tdata;
     wire       m13_axis_tready;
     wire       m13_axis_tvalid;
     wire [63:0]m20_axis_tdata;
     wire       m20_axis_tready;
     wire       m20_axis_tvalid;
     wire [63:0]m21_axis_tdata;
     wire       m21_axis_tready;
     wire       m21_axis_tvalid;
     wire [63:0]m22_axis_tdata;
     wire       m22_axis_tready;
     wire       m22_axis_tvalid;
     wire [63:0]m23_axis_tdata;
     wire       m23_axis_tready;
     wire       m23_axis_tvalid;
     wire [63:0]m30_axis_tdata;
     wire       m30_axis_tready;
     wire       m30_axis_tvalid;
     wire [63:0]m31_axis_tdata;
     wire       m31_axis_tready;
     wire       m31_axis_tvalid;
     wire [63:0]m32_axis_tdata;
     wire       m32_axis_tready;
     wire       m32_axis_tvalid;
     wire [63:0]m33_axis_tdata ;
     wire       m33_axis_tready;
     wire       m33_axis_tvalid;
 
 
     wire [127:0]s00_axis_tdata;
     wire        s00_axis_tready;
     wire        s00_axis_tvalid;
     wire [127:0]s02_axis_tdata;
     wire        s02_axis_tready;
     wire        s02_axis_tvalid;
     wire [127:0]s10_axis_tdata;
     wire        s10_axis_tready;
     wire        s10_axis_tvalid;
     wire [127:0]s12_axis_tdata;
     wire        s12_axis_tready;
     wire        s12_axis_tvalid;
     wire [127:0]s20_axis_tdata;
     wire        s20_axis_tready;
     wire        s20_axis_tvalid;
     wire [127:0]s22_axis_tdata;
     wire        s22_axis_tready;
     wire        s22_axis_tvalid;
     wire [127:0]s30_axis_tdata;
     wire        s30_axis_tready;
     wire        s30_axis_tvalid;
     wire [127:0]s32_axis_tdata;
     wire        s32_axis_tready;
     wire        s32_axis_tvalid;
 

 //*************通过DDS产生DAC的数据输出****************
 //让DAC输出的输出一直有效
 assign s00_axis_tvalid=1'b1;
 assign s02_axis_tvalid=1'b1;
 assign s10_axis_tvalid=1'b1;
 assign s12_axis_tvalid=1'b1;
 assign s20_axis_tvalid=1'b1;
 assign s22_axis_tvalid=1'b1;
 assign s30_axis_tvalid=1'b1;
 assign s32_axis_tvalid=1'b1;
 
 wire [15:0]  phase_step;
 reg  [15:0]  phase[3:0];
 wire [31:0]  dds_data[3:0];
 wire [15:0]  dac_data_i0;
 wire [15:0]  dac_data_q0;
 wire [15:0]  dac_data_i1;
 wire [15:0]  dac_data_q1;
 wire [15:0]  dac_data_i2;
 wire [15:0]  dac_data_q2;
 wire [15:0]  dac_data_i3;
 wire [15:0]  dac_data_q3;
 wire [127:0] s_axis_tdata;

//启用外部的时钟源输入经过buffer
 assign clk_main_sel=1'b0;
//通过设置不同的相位，dds产生连续的4个点的数据
 assign phase_step=16'h0200;
 always@(posedge adc_m_axis_clk)begin
     if(data_rst_n==1'b0)begin
         phase[0]<=0;//设置初始相位，每个通道相位差为phase_step
         phase[1]<=phase_step;
         phase[2]<=phase_step+phase_step;
         phase[3]<=phase_step+phase_step+phase_step;
     end
     else begin  //相位步进设置为4*phase_step
         phase[0]<=phase[0]+(phase_step<<2);
         phase[1]<=phase[1]+(phase_step<<2);
         phase[2]<=phase[2]+(phase_step<<2);
         phase[3]<=phase[3]+(phase_step<<2);
     end
 end
 genvar  i;
 generate
     for ( i= 0;i<4 ;i=i+1 ) begin: dds_chan
         dds_compiler dds_compiler (
             .aclk(adc_m_axis_clk),                                // input wire aclk
             .aresetn(data_rst_n),                          // input wire aresetn
             .s_axis_phase_tvalid(1'b1),  // input wire s_axis_phase_tvalid
             .s_axis_phase_tdata(phase[i]),    // input wire [15 : 0] s_axis_phase_tdata
             .m_axis_data_tvalid(),    // output wire m_axis_data_tvalid
             .m_axis_data_tdata(dds_data[i])      // output wire [31 : 0] m_axis_data_tdata
           );
     end
     
 endgenerate
 
 assign   dac_data_i0 =dds_data[0][31:16];  
 assign   dac_data_q0 =dds_data[0][15:0] ;
 assign   dac_data_i1 =dds_data[1][31:16];
 assign   dac_data_q1 =dds_data[1][15:0] ;
 assign   dac_data_i2 =dds_data[2][31:16];
 assign   dac_data_q2 =dds_data[2][15:0] ;
 assign   dac_data_i3 =dds_data[3][31:16];
 assign   dac_data_q3 =dds_data[3][15:0] ;
//将4个点的连续的Q,I数据合并到一个总线上
 assign s_axis_tdata   ={dac_data_q3,dac_data_i3,
                         dac_data_q2,dac_data_i2,
                         dac_data_q1,dac_data_i1,
                         dac_data_q0,dac_data_i0};
 assign s00_axis_tdata =s_axis_tdata;
 assign s02_axis_tdata =s_axis_tdata;
 assign s10_axis_tdata =s_axis_tdata;
 assign s12_axis_tdata =s_axis_tdata;
 assign s20_axis_tdata =s_axis_tdata;
 assign s22_axis_tdata =s_axis_tdata;
 assign s30_axis_tdata =s_axis_tdata;
 assign s32_axis_tdata =s_axis_tdata;
 //dac_status_led指示8个接受数据通道是否都准备好
 assign dac_status_led=!(s00_axis_tready&s02_axis_tready&s10_axis_tready&s12_axis_tready
                   &s20_axis_tready&s22_axis_tready&s30_axis_tready&s32_axis_tready);
 
 //*************通过ADC采集数据****************
 //接受ADC输出的数据的ready一直有效
 assign m00_axis_tready=1'b1;
 assign m01_axis_tready=1'b1;
 assign m02_axis_tready=1'b1;
 assign m03_axis_tready=1'b1;
 assign m10_axis_tready=1'b1;
 assign m11_axis_tready=1'b1;
 assign m12_axis_tready=1'b1;
 assign m13_axis_tready=1'b1;
 assign m20_axis_tready=1'b1;
 assign m21_axis_tready=1'b1;
 assign m22_axis_tready=1'b1;
 assign m23_axis_tready=1'b1;
 assign m30_axis_tready=1'b1;
 assign m31_axis_tready=1'b1;
 assign m32_axis_tready=1'b1;
 assign m33_axis_tready=1'b1;
 wire [15:0] adc_data_ch0_i;
 wire [15:0] adc_data_ch0_q;
 wire [15:0] adc_data_ch1_i;
 wire [15:0] adc_data_ch1_q;
 wire [15:0] adc_data_ch2_i;
 wire [15:0] adc_data_ch2_q;
 wire [15:0] adc_data_ch3_i;
 wire [15:0] adc_data_ch3_q;
 wire [15:0] adc_data_ch4_i;
 wire [15:0] adc_data_ch4_q;
 wire [15:0] adc_data_ch5_i;
 wire [15:0] adc_data_ch5_q;
 wire [15:0] adc_data_ch6_i;
 wire [15:0] adc_data_ch6_q;
 wire [15:0] adc_data_ch7_i;
 wire [15:0] adc_data_ch7_q;
 //并行的输出4个数据，取其中一个数据进行观察
 assign adc_data_ch0_i=m00_axis_tdata[15:0];
 assign adc_data_ch0_q=m01_axis_tdata[15:0];  
 assign adc_data_ch1_i=m02_axis_tdata[15:0];
 assign adc_data_ch1_q=m03_axis_tdata[15:0];
 assign adc_data_ch2_i=m10_axis_tdata[15:0];
 assign adc_data_ch2_q=m11_axis_tdata[15:0];
 assign adc_data_ch3_i=m12_axis_tdata[15:0];
 assign adc_data_ch3_q=m13_axis_tdata[15:0];
 assign adc_data_ch4_i=m20_axis_tdata[15:0];
 assign adc_data_ch4_q=m21_axis_tdata[15:0];
 assign adc_data_ch5_i=m22_axis_tdata[15:0];
 assign adc_data_ch5_q=m23_axis_tdata[15:0];
 assign adc_data_ch6_i=m30_axis_tdata[15:0];
 assign adc_data_ch6_q=m31_axis_tdata[15:0];
 assign adc_data_ch7_i=m32_axis_tdata[15:0];
 assign adc_data_ch7_q=m33_axis_tdata[15:0];
 //adc_status_led指示8个ADC通道是否都在发送数据
 assign adc_status_led=!(m00_axis_tvalid&m01_axis_tvalid&m02_axis_tvalid&m03_axis_tvalid
                        &m10_axis_tvalid&m11_axis_tvalid&m12_axis_tvalid&m13_axis_tvalid
                        &m20_axis_tvalid&m21_axis_tvalid&m22_axis_tvalid&m23_axis_tvalid
                        &m30_axis_tvalid&m31_axis_tvalid&m32_axis_tvalid&m33_axis_tvalid);
 
T510_design_wrapper u_T510_design_wrapper(
    .adc1_clk_clk_n   ( adc1_clk_clk_n   ),
    .adc1_clk_clk_p   ( adc1_clk_clk_p   ),
    .adc_m_axis_clk   ( adc_m_axis_clk   ),
    .dac2_clk_clk_n   ( dac2_clk_clk_n   ),
    .dac2_clk_clk_p   ( dac2_clk_clk_p   ),
    .dac_s_axis_clk   ( dac_s_axis_clk   ),
    .data_rst_n       ( data_rst_n       ),
    .emio_tri_io      ( lmk_sync      ),
    .iic_scl_io       ( iic_scl_io       ),
    .iic_sda_io       ( iic_sda_io       ),
    .m00_axis_tdata   ( m00_axis_tdata   ),
    .m00_axis_tready  ( m00_axis_tready  ),
    .m00_axis_tvalid  ( m00_axis_tvalid  ),
    .m01_axis_tdata   ( m01_axis_tdata   ),
    .m01_axis_tready  ( m01_axis_tready  ),
    .m01_axis_tvalid  ( m01_axis_tvalid  ),
    .m02_axis_tdata   ( m02_axis_tdata   ),
    .m02_axis_tready  ( m02_axis_tready  ),
    .m02_axis_tvalid  ( m02_axis_tvalid  ),
    .m03_axis_tdata   ( m03_axis_tdata   ),
    .m03_axis_tready  ( m03_axis_tready  ),
    .m03_axis_tvalid  ( m03_axis_tvalid  ),
    .m10_axis_tdata   ( m10_axis_tdata   ),
    .m10_axis_tready  ( m10_axis_tready  ),
    .m10_axis_tvalid  ( m10_axis_tvalid  ),
    .m11_axis_tdata   ( m11_axis_tdata   ),
    .m11_axis_tready  ( m11_axis_tready  ),
    .m11_axis_tvalid  ( m11_axis_tvalid  ),
    .m12_axis_tdata   ( m12_axis_tdata   ),
    .m12_axis_tready  ( m12_axis_tready  ),
    .m12_axis_tvalid  ( m12_axis_tvalid  ),
    .m13_axis_tdata   ( m13_axis_tdata   ),
    .m13_axis_tready  ( m13_axis_tready  ),
    .m13_axis_tvalid  ( m13_axis_tvalid  ),
    .m20_axis_tdata   ( m20_axis_tdata   ),
    .m20_axis_tready  ( m20_axis_tready  ),
    .m20_axis_tvalid  ( m20_axis_tvalid  ),
    .m21_axis_tdata   ( m21_axis_tdata   ),
    .m21_axis_tready  ( m21_axis_tready  ),
    .m21_axis_tvalid  ( m21_axis_tvalid  ),
    .m22_axis_tdata   ( m22_axis_tdata   ),
    .m22_axis_tready  ( m22_axis_tready  ),
    .m22_axis_tvalid  ( m22_axis_tvalid  ),
    .m23_axis_tdata   ( m23_axis_tdata   ),
    .m23_axis_tready  ( m23_axis_tready  ),
    .m23_axis_tvalid  ( m23_axis_tvalid  ),
    .m30_axis_tdata   ( m30_axis_tdata   ),
    .m30_axis_tready  ( m30_axis_tready  ),
    .m30_axis_tvalid  ( m30_axis_tvalid  ),
    .m31_axis_tdata   ( m31_axis_tdata   ),
    .m31_axis_tready  ( m31_axis_tready  ),
    .m31_axis_tvalid  ( m31_axis_tvalid  ),
    .m32_axis_tdata   ( m32_axis_tdata   ),
    .m32_axis_tready  ( m32_axis_tready  ),
    .m32_axis_tvalid  ( m32_axis_tvalid  ),
    .m33_axis_tdata   ( m33_axis_tdata   ),
    .m33_axis_tready  ( m33_axis_tready  ),
    .m33_axis_tvalid  ( m33_axis_tvalid  ),
    .pl_clk_n         ( pl_clk_n         ),
    .pl_clk_p         ( pl_clk_p         ),
    .pl_sys_ref_n     ( pl_sys_ref_n     ),
    .pl_sys_ref_p     ( pl_sys_ref_p     ),
    .s00_axis_tdata   ( s00_axis_tdata   ),
    .s00_axis_tready  ( s00_axis_tready  ),
    .s00_axis_tvalid  ( s00_axis_tvalid  ),
    .s02_axis_tdata   ( s02_axis_tdata   ),
    .s02_axis_tready  ( s02_axis_tready  ),
    .s02_axis_tvalid  ( s02_axis_tvalid  ),
    .s10_axis_tdata   ( s10_axis_tdata   ),
    .s10_axis_tready  ( s10_axis_tready  ),
    .s10_axis_tvalid  ( s10_axis_tvalid  ),
    .s12_axis_tdata   ( s12_axis_tdata   ),
    .s12_axis_tready  ( s12_axis_tready  ),
    .s12_axis_tvalid  ( s12_axis_tvalid  ),
    .s20_axis_tdata   ( s20_axis_tdata   ),
    .s20_axis_tready  ( s20_axis_tready  ),
    .s20_axis_tvalid  ( s20_axis_tvalid  ),
    .s22_axis_tdata   ( s22_axis_tdata   ),
    .s22_axis_tready  ( s22_axis_tready  ),
    .s22_axis_tvalid  ( s22_axis_tvalid  ),
    .s30_axis_tdata   ( s30_axis_tdata   ),
    .s30_axis_tready  ( s30_axis_tready  ),
    .s30_axis_tvalid  ( s30_axis_tvalid  ),
    .s32_axis_tdata   ( s32_axis_tdata   ),
    .s32_axis_tready  ( s32_axis_tready  ),
    .s32_axis_tvalid  ( s32_axis_tvalid  ),
    .sysref_in_diff_n ( sysref_in_diff_n ),
    .sysref_in_diff_p ( sysref_in_diff_p ),
    .vin0_01_v_n      ( vin0_01_v_n      ),
    .vin0_01_v_p      ( vin0_01_v_p      ),
    .vin0_23_v_n      ( vin0_23_v_n      ),
    .vin0_23_v_p      ( vin0_23_v_p      ),
    .vin1_01_v_n      ( vin1_01_v_n      ),
    .vin1_01_v_p      ( vin1_01_v_p      ),
    .vin1_23_v_n      ( vin1_23_v_n      ),
    .vin1_23_v_p      ( vin1_23_v_p      ),
    .vin2_01_v_n      ( vin2_01_v_n      ),
    .vin2_01_v_p      ( vin2_01_v_p      ),
    .vin2_23_v_n      ( vin2_23_v_n      ),
    .vin2_23_v_p      ( vin2_23_v_p      ),
    .vin3_01_v_n      ( vin3_01_v_n      ),
    .vin3_01_v_p      ( vin3_01_v_p      ),
    .vin3_23_v_n      ( vin3_23_v_n      ),
    .vin3_23_v_p      ( vin3_23_v_p      ),
    .vout00_v_n       ( vout00_v_n       ),
    .vout00_v_p       ( vout00_v_p       ),
    .vout02_v_n       ( vout02_v_n       ),
    .vout02_v_p       ( vout02_v_p       ),
    .vout10_v_n       ( vout10_v_n       ),
    .vout10_v_p       ( vout10_v_p       ),
    .vout12_v_n       ( vout12_v_n       ),
    .vout12_v_p       ( vout12_v_p       ),
    .vout20_v_n       ( vout20_v_n       ),
    .vout20_v_p       ( vout20_v_p       ),
    .vout22_v_n       ( vout22_v_n       ),
    .vout22_v_p       ( vout22_v_p       ),
    .vout30_v_n       ( vout30_v_n       ),
    .vout30_v_p       ( vout30_v_p       ),
    .vout32_v_n       ( vout32_v_n       ),
    .vout32_v_p       ( vout32_v_p       )
);

 ila_adc_data ila_adc_data (
     .clk(adc_m_axis_clk), // input wire clk
     .probe0 (adc_data_ch0_i ), // input wire [15:0]  probe0  
     .probe1 (adc_data_ch0_q ), // input wire [15:0]  probe1 
     .probe2 (adc_data_ch1_i), // input wire [15:0]  probe2 
     .probe3 (adc_data_ch1_q), // input wire [15:0]  probe3 
     .probe4 (adc_data_ch2_i), // input wire [15:0]  probe4 
     .probe5 (adc_data_ch2_q), // input wire [15:0]  probe5 
     .probe6 (adc_data_ch3_i), // input wire [15:0]  probe6 
     .probe7 (adc_data_ch3_q), // input wire [15:0]  probe7 
     .probe8 (adc_data_ch4_i), // input wire [15:0]  probe8 
     .probe9 (adc_data_ch4_q), // input wire [15:0]  probe9 
     .probe10(adc_data_ch5_i), // input wire [15:0]  probe10 
     .probe11(adc_data_ch5_q), // input wire [15:0]  probe11 
     .probe12(adc_data_ch6_i), // input wire [15:0]  probe12 
     .probe13(adc_data_ch6_q), // input wire [15:0]  probe13 
     .probe14(adc_data_ch7_i), // input wire [15:0]  probe14 
     .probe15(adc_data_ch7_q) // input wire [15:0]  probe15 
 );
 
 ila_dac_data ila_dac_data (
     .clk(dac_s_axis_clk), // input wire clk
 
     .probe0(dac_data_i0), // input wire [15:0]  probe0  
     .probe1(dac_data_q0), // input wire [15:0]  probe1 
     .probe2(dac_data_i1), // input wire [15:0]  probe2 
     .probe3(dac_data_q1), // input wire [15:0]  probe3 
     .probe4(dac_data_i2), // input wire [15:0]  probe4 
     .probe5(dac_data_q2), // input wire [15:0]  probe5 
     .probe6(dac_data_i3), // input wire [15:0]  probe6 
     .probe7(dac_data_q3) // input wire [15:0]  probe7
 );
 
 endmodule
 
