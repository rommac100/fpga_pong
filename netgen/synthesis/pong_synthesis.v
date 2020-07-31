////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: pong_synthesis.v
// /___/   /\     Timestamp: Sat Feb 29 10:25:19 2020
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim pong.ngc pong_synthesis.v 
// Device	: xc3s50a-4-tq144
// Input file	: pong.ngc
// Output file	: /home/rommac/testing_xilinx/testingVga3/netgen/synthesis/pong_synthesis.v
// # of Modules	: 1
// Design Name	: pong
// Xilinx        : /home/rommac/Storage/apps/Xilinx_old/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module pong (
  vga_v_sync, vga_h_sync, clock, vga_B, vga_G, vga_R
);
  output vga_v_sync;
  output vga_h_sync;
  input clock;
  output [1 : 0] vga_B;
  output [2 : 0] vga_G;
  output [2 : 0] vga_R;
  wire N0;
  wire N1;
  wire N10;
  wire N11;
  wire N12;
  wire N13;
  wire N2;
  wire border;
  wire border30_8;
  wire border43_9;
  wire border89_10;
  wire clk;
  wire \instance_name/CLK0_BUF ;
  wire \instance_name/CLKFB_IN ;
  wire \instance_name/CLKFX_BUF ;
  wire \instance_name/CLKIN_IBUFG ;
  wire \syncgen/CounterXmaxed ;
  wire \syncgen/Mcount_CounterX_cy<1>_rt_39 ;
  wire \syncgen/Mcount_CounterX_cy<2>_rt_41 ;
  wire \syncgen/Mcount_CounterX_cy<3>_rt_43 ;
  wire \syncgen/Mcount_CounterX_cy<4>_rt_45 ;
  wire \syncgen/Mcount_CounterX_cy<5>_rt_47 ;
  wire \syncgen/Mcount_CounterX_cy<6>_rt_49 ;
  wire \syncgen/Mcount_CounterX_cy<7>_rt_51 ;
  wire \syncgen/Mcount_CounterX_cy<8>_rt_53 ;
  wire \syncgen/Mcount_CounterX_xor<9>_rt_55 ;
  wire \syncgen/Mcount_CounterY_cy<1>_rt_58 ;
  wire \syncgen/Mcount_CounterY_cy<2>_rt_60 ;
  wire \syncgen/Mcount_CounterY_cy<3>_rt_62 ;
  wire \syncgen/Mcount_CounterY_cy<4>_rt_64 ;
  wire \syncgen/Mcount_CounterY_cy<5>_rt_66 ;
  wire \syncgen/Mcount_CounterY_cy<6>_rt_68 ;
  wire \syncgen/Mcount_CounterY_cy<7>_rt_70 ;
  wire \syncgen/Mcount_CounterY_xor<8>_rt_72 ;
  wire \syncgen/Result<0>1 ;
  wire \syncgen/Result<1>1 ;
  wire \syncgen/Result<2>1 ;
  wire \syncgen/Result<3>1 ;
  wire \syncgen/Result<4>1 ;
  wire \syncgen/Result<5>1 ;
  wire \syncgen/Result<6>1 ;
  wire \syncgen/Result<7>1 ;
  wire \syncgen/Result<8>1 ;
  wire \syncgen/inDisplayArea_mux0000313_92 ;
  wire \syncgen/inDisplayArea_mux000034_93 ;
  wire \syncgen/vga_HS_94 ;
  wire \syncgen/vga_HS_cmp_eq00001_95 ;
  wire \syncgen/vga_VS_96 ;
  wire \syncgen/vga_VS_cmp_eq0000 ;
  wire \syncgen/vga_VS_cmp_eq000021_98 ;
  wire \syncgen/vga_VS_cmp_eq00005_99 ;
  wire vga_B_0_102;
  wire vga_h_sync_OBUF_110;
  wire vga_v_sync_OBUF_112;
  wire \NLW_instance_name/DCM_SP_INST_CLK90_UNCONNECTED ;
  wire \NLW_instance_name/DCM_SP_INST_CLK180_UNCONNECTED ;
  wire \NLW_instance_name/DCM_SP_INST_CLK270_UNCONNECTED ;
  wire \NLW_instance_name/DCM_SP_INST_CLK2X_UNCONNECTED ;
  wire \NLW_instance_name/DCM_SP_INST_CLK2X180_UNCONNECTED ;
  wire \NLW_instance_name/DCM_SP_INST_CLKDV_UNCONNECTED ;
  wire \NLW_instance_name/DCM_SP_INST_CLKFX180_UNCONNECTED ;
  wire \NLW_instance_name/DCM_SP_INST_LOCKED_UNCONNECTED ;
  wire \NLW_instance_name/DCM_SP_INST_PSDONE_UNCONNECTED ;
  wire \NLW_instance_name/DCM_SP_INST_STATUS<7>_UNCONNECTED ;
  wire \NLW_instance_name/DCM_SP_INST_STATUS<6>_UNCONNECTED ;
  wire \NLW_instance_name/DCM_SP_INST_STATUS<5>_UNCONNECTED ;
  wire \NLW_instance_name/DCM_SP_INST_STATUS<4>_UNCONNECTED ;
  wire \NLW_instance_name/DCM_SP_INST_STATUS<3>_UNCONNECTED ;
  wire \NLW_instance_name/DCM_SP_INST_STATUS<2>_UNCONNECTED ;
  wire \NLW_instance_name/DCM_SP_INST_STATUS<1>_UNCONNECTED ;
  wire \NLW_instance_name/DCM_SP_INST_STATUS<0>_UNCONNECTED ;
  wire [9 : 0] \syncgen/CounterX ;
  wire [8 : 0] \syncgen/CounterY ;
  wire [8 : 0] \syncgen/Mcount_CounterX_cy ;
  wire [0 : 0] \syncgen/Mcount_CounterX_lut ;
  wire [7 : 0] \syncgen/Mcount_CounterY_cy ;
  wire [0 : 0] \syncgen/Mcount_CounterY_lut ;
  wire [9 : 0] \syncgen/Result ;
  GND   XST_GND (
    .G(N0)
  );
  VCC   XST_VCC (
    .P(N1)
  );
  FD   vga_B_0 (
    .C(clk),
    .D(border),
    .Q(vga_B_0_102)
  );
  DCM_SP #(
    .CLKDV_DIVIDE ( 2.000000 ),
    .CLKFX_DIVIDE ( 12 ),
    .CLKFX_MULTIPLY ( 25 ),
    .CLKIN_DIVIDE_BY_2 ( "FALSE" ),
    .CLKIN_PERIOD ( 83.333000 ),
    .CLKOUT_PHASE_SHIFT ( "NONE" ),
    .CLK_FEEDBACK ( "1X" ),
    .DESKEW_ADJUST ( "SYSTEM_SYNCHRONOUS" ),
    .DFS_FREQUENCY_MODE ( "LOW" ),
    .DLL_FREQUENCY_MODE ( "LOW" ),
    .DSS_MODE ( "NONE" ),
    .DUTY_CYCLE_CORRECTION ( "TRUE" ),
    .PHASE_SHIFT ( 0 ),
    .STARTUP_WAIT ( "FALSE" ),
    .FACTORY_JF ( 16'hC080 ))
  \instance_name/DCM_SP_INST  (
    .CLKIN(\instance_name/CLKIN_IBUFG ),
    .CLKFB(\instance_name/CLKFB_IN ),
    .RST(N0),
    .DSSEN(N0),
    .PSINCDEC(N0),
    .PSEN(N0),
    .PSCLK(N0),
    .CLK0(\instance_name/CLK0_BUF ),
    .CLK90(\NLW_instance_name/DCM_SP_INST_CLK90_UNCONNECTED ),
    .CLK180(\NLW_instance_name/DCM_SP_INST_CLK180_UNCONNECTED ),
    .CLK270(\NLW_instance_name/DCM_SP_INST_CLK270_UNCONNECTED ),
    .CLK2X(\NLW_instance_name/DCM_SP_INST_CLK2X_UNCONNECTED ),
    .CLK2X180(\NLW_instance_name/DCM_SP_INST_CLK2X180_UNCONNECTED ),
    .CLKDV(\NLW_instance_name/DCM_SP_INST_CLKDV_UNCONNECTED ),
    .CLKFX(\instance_name/CLKFX_BUF ),
    .CLKFX180(\NLW_instance_name/DCM_SP_INST_CLKFX180_UNCONNECTED ),
    .LOCKED(\NLW_instance_name/DCM_SP_INST_LOCKED_UNCONNECTED ),
    .PSDONE(\NLW_instance_name/DCM_SP_INST_PSDONE_UNCONNECTED ),
    .STATUS({\NLW_instance_name/DCM_SP_INST_STATUS<7>_UNCONNECTED , \NLW_instance_name/DCM_SP_INST_STATUS<6>_UNCONNECTED , 
\NLW_instance_name/DCM_SP_INST_STATUS<5>_UNCONNECTED , \NLW_instance_name/DCM_SP_INST_STATUS<4>_UNCONNECTED , 
\NLW_instance_name/DCM_SP_INST_STATUS<3>_UNCONNECTED , \NLW_instance_name/DCM_SP_INST_STATUS<2>_UNCONNECTED , 
\NLW_instance_name/DCM_SP_INST_STATUS<1>_UNCONNECTED , \NLW_instance_name/DCM_SP_INST_STATUS<0>_UNCONNECTED })
  );
  BUFG   \instance_name/CLK0_BUFG_INST  (
    .I(\instance_name/CLK0_BUF ),
    .O(\instance_name/CLKFB_IN )
  );
  IBUFG #(
    .CAPACITANCE ( "DONT_CARE" ),
    .IBUF_DELAY_VALUE ( "0" ),
    .IBUF_LOW_PWR ( "TRUE" ),
    .IOSTANDARD ( "DEFAULT" ))
  \instance_name/CLKIN_IBUFG_INST  (
    .I(clock),
    .O(\instance_name/CLKIN_IBUFG )
  );
  BUFG   \instance_name/CLKFX_BUFG_INST  (
    .I(\instance_name/CLKFX_BUF ),
    .O(clk)
  );
  XORCY   \syncgen/Mcount_CounterX_xor<9>  (
    .CI(\syncgen/Mcount_CounterX_cy [8]),
    .LI(\syncgen/Mcount_CounterX_xor<9>_rt_55 ),
    .O(\syncgen/Result [9])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<8>  (
    .CI(\syncgen/Mcount_CounterX_cy [7]),
    .LI(\syncgen/Mcount_CounterX_cy<8>_rt_53 ),
    .O(\syncgen/Result [8])
  );
  MUXCY   \syncgen/Mcount_CounterX_cy<8>  (
    .CI(\syncgen/Mcount_CounterX_cy [7]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterX_cy<8>_rt_53 ),
    .O(\syncgen/Mcount_CounterX_cy [8])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<7>  (
    .CI(\syncgen/Mcount_CounterX_cy [6]),
    .LI(\syncgen/Mcount_CounterX_cy<7>_rt_51 ),
    .O(\syncgen/Result [7])
  );
  MUXCY   \syncgen/Mcount_CounterX_cy<7>  (
    .CI(\syncgen/Mcount_CounterX_cy [6]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterX_cy<7>_rt_51 ),
    .O(\syncgen/Mcount_CounterX_cy [7])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<6>  (
    .CI(\syncgen/Mcount_CounterX_cy [5]),
    .LI(\syncgen/Mcount_CounterX_cy<6>_rt_49 ),
    .O(\syncgen/Result [6])
  );
  MUXCY   \syncgen/Mcount_CounterX_cy<6>  (
    .CI(\syncgen/Mcount_CounterX_cy [5]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterX_cy<6>_rt_49 ),
    .O(\syncgen/Mcount_CounterX_cy [6])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<5>  (
    .CI(\syncgen/Mcount_CounterX_cy [4]),
    .LI(\syncgen/Mcount_CounterX_cy<5>_rt_47 ),
    .O(\syncgen/Result [5])
  );
  MUXCY   \syncgen/Mcount_CounterX_cy<5>  (
    .CI(\syncgen/Mcount_CounterX_cy [4]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterX_cy<5>_rt_47 ),
    .O(\syncgen/Mcount_CounterX_cy [5])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<4>  (
    .CI(\syncgen/Mcount_CounterX_cy [3]),
    .LI(\syncgen/Mcount_CounterX_cy<4>_rt_45 ),
    .O(\syncgen/Result [4])
  );
  MUXCY   \syncgen/Mcount_CounterX_cy<4>  (
    .CI(\syncgen/Mcount_CounterX_cy [3]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterX_cy<4>_rt_45 ),
    .O(\syncgen/Mcount_CounterX_cy [4])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<3>  (
    .CI(\syncgen/Mcount_CounterX_cy [2]),
    .LI(\syncgen/Mcount_CounterX_cy<3>_rt_43 ),
    .O(\syncgen/Result [3])
  );
  MUXCY   \syncgen/Mcount_CounterX_cy<3>  (
    .CI(\syncgen/Mcount_CounterX_cy [2]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterX_cy<3>_rt_43 ),
    .O(\syncgen/Mcount_CounterX_cy [3])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<2>  (
    .CI(\syncgen/Mcount_CounterX_cy [1]),
    .LI(\syncgen/Mcount_CounterX_cy<2>_rt_41 ),
    .O(\syncgen/Result [2])
  );
  MUXCY   \syncgen/Mcount_CounterX_cy<2>  (
    .CI(\syncgen/Mcount_CounterX_cy [1]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterX_cy<2>_rt_41 ),
    .O(\syncgen/Mcount_CounterX_cy [2])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<1>  (
    .CI(\syncgen/Mcount_CounterX_cy [0]),
    .LI(\syncgen/Mcount_CounterX_cy<1>_rt_39 ),
    .O(\syncgen/Result [1])
  );
  MUXCY   \syncgen/Mcount_CounterX_cy<1>  (
    .CI(\syncgen/Mcount_CounterX_cy [0]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterX_cy<1>_rt_39 ),
    .O(\syncgen/Mcount_CounterX_cy [1])
  );
  XORCY   \syncgen/Mcount_CounterX_xor<0>  (
    .CI(N0),
    .LI(\syncgen/Mcount_CounterX_lut [0]),
    .O(\syncgen/Result [0])
  );
  MUXCY   \syncgen/Mcount_CounterX_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\syncgen/Mcount_CounterX_lut [0]),
    .O(\syncgen/Mcount_CounterX_cy [0])
  );
  XORCY   \syncgen/Mcount_CounterY_xor<8>  (
    .CI(\syncgen/Mcount_CounterY_cy [7]),
    .LI(\syncgen/Mcount_CounterY_xor<8>_rt_72 ),
    .O(\syncgen/Result<8>1 )
  );
  XORCY   \syncgen/Mcount_CounterY_xor<7>  (
    .CI(\syncgen/Mcount_CounterY_cy [6]),
    .LI(\syncgen/Mcount_CounterY_cy<7>_rt_70 ),
    .O(\syncgen/Result<7>1 )
  );
  MUXCY   \syncgen/Mcount_CounterY_cy<7>  (
    .CI(\syncgen/Mcount_CounterY_cy [6]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterY_cy<7>_rt_70 ),
    .O(\syncgen/Mcount_CounterY_cy [7])
  );
  XORCY   \syncgen/Mcount_CounterY_xor<6>  (
    .CI(\syncgen/Mcount_CounterY_cy [5]),
    .LI(\syncgen/Mcount_CounterY_cy<6>_rt_68 ),
    .O(\syncgen/Result<6>1 )
  );
  MUXCY   \syncgen/Mcount_CounterY_cy<6>  (
    .CI(\syncgen/Mcount_CounterY_cy [5]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterY_cy<6>_rt_68 ),
    .O(\syncgen/Mcount_CounterY_cy [6])
  );
  XORCY   \syncgen/Mcount_CounterY_xor<5>  (
    .CI(\syncgen/Mcount_CounterY_cy [4]),
    .LI(\syncgen/Mcount_CounterY_cy<5>_rt_66 ),
    .O(\syncgen/Result<5>1 )
  );
  MUXCY   \syncgen/Mcount_CounterY_cy<5>  (
    .CI(\syncgen/Mcount_CounterY_cy [4]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterY_cy<5>_rt_66 ),
    .O(\syncgen/Mcount_CounterY_cy [5])
  );
  XORCY   \syncgen/Mcount_CounterY_xor<4>  (
    .CI(\syncgen/Mcount_CounterY_cy [3]),
    .LI(\syncgen/Mcount_CounterY_cy<4>_rt_64 ),
    .O(\syncgen/Result<4>1 )
  );
  MUXCY   \syncgen/Mcount_CounterY_cy<4>  (
    .CI(\syncgen/Mcount_CounterY_cy [3]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterY_cy<4>_rt_64 ),
    .O(\syncgen/Mcount_CounterY_cy [4])
  );
  XORCY   \syncgen/Mcount_CounterY_xor<3>  (
    .CI(\syncgen/Mcount_CounterY_cy [2]),
    .LI(\syncgen/Mcount_CounterY_cy<3>_rt_62 ),
    .O(\syncgen/Result<3>1 )
  );
  MUXCY   \syncgen/Mcount_CounterY_cy<3>  (
    .CI(\syncgen/Mcount_CounterY_cy [2]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterY_cy<3>_rt_62 ),
    .O(\syncgen/Mcount_CounterY_cy [3])
  );
  XORCY   \syncgen/Mcount_CounterY_xor<2>  (
    .CI(\syncgen/Mcount_CounterY_cy [1]),
    .LI(\syncgen/Mcount_CounterY_cy<2>_rt_60 ),
    .O(\syncgen/Result<2>1 )
  );
  MUXCY   \syncgen/Mcount_CounterY_cy<2>  (
    .CI(\syncgen/Mcount_CounterY_cy [1]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterY_cy<2>_rt_60 ),
    .O(\syncgen/Mcount_CounterY_cy [2])
  );
  XORCY   \syncgen/Mcount_CounterY_xor<1>  (
    .CI(\syncgen/Mcount_CounterY_cy [0]),
    .LI(\syncgen/Mcount_CounterY_cy<1>_rt_58 ),
    .O(\syncgen/Result<1>1 )
  );
  MUXCY   \syncgen/Mcount_CounterY_cy<1>  (
    .CI(\syncgen/Mcount_CounterY_cy [0]),
    .DI(N0),
    .S(\syncgen/Mcount_CounterY_cy<1>_rt_58 ),
    .O(\syncgen/Mcount_CounterY_cy [1])
  );
  XORCY   \syncgen/Mcount_CounterY_xor<0>  (
    .CI(N0),
    .LI(\syncgen/Mcount_CounterY_lut [0]),
    .O(\syncgen/Result<0>1 )
  );
  MUXCY   \syncgen/Mcount_CounterY_cy<0>  (
    .CI(N0),
    .DI(N1),
    .S(\syncgen/Mcount_CounterY_lut [0]),
    .O(\syncgen/Mcount_CounterY_cy [0])
  );
  FDE   \syncgen/CounterY_8  (
    .C(clk),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<8>1 ),
    .Q(\syncgen/CounterY [8])
  );
  FDE   \syncgen/CounterY_7  (
    .C(clk),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<7>1 ),
    .Q(\syncgen/CounterY [7])
  );
  FDE   \syncgen/CounterY_6  (
    .C(clk),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<6>1 ),
    .Q(\syncgen/CounterY [6])
  );
  FDE   \syncgen/CounterY_5  (
    .C(clk),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<5>1 ),
    .Q(\syncgen/CounterY [5])
  );
  FDE   \syncgen/CounterY_4  (
    .C(clk),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<4>1 ),
    .Q(\syncgen/CounterY [4])
  );
  FDE   \syncgen/CounterY_3  (
    .C(clk),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<3>1 ),
    .Q(\syncgen/CounterY [3])
  );
  FDE   \syncgen/CounterY_2  (
    .C(clk),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<2>1 ),
    .Q(\syncgen/CounterY [2])
  );
  FDE   \syncgen/CounterY_1  (
    .C(clk),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<1>1 ),
    .Q(\syncgen/CounterY [1])
  );
  FDE   \syncgen/CounterY_0  (
    .C(clk),
    .CE(\syncgen/CounterXmaxed ),
    .D(\syncgen/Result<0>1 ),
    .Q(\syncgen/CounterY [0])
  );
  FDR   \syncgen/CounterX_9  (
    .C(clk),
    .D(\syncgen/Result [9]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [9])
  );
  FDR   \syncgen/CounterX_8  (
    .C(clk),
    .D(\syncgen/Result [8]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [8])
  );
  FDR   \syncgen/CounterX_7  (
    .C(clk),
    .D(\syncgen/Result [7]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [7])
  );
  FDR   \syncgen/CounterX_6  (
    .C(clk),
    .D(\syncgen/Result [6]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [6])
  );
  FDR   \syncgen/CounterX_5  (
    .C(clk),
    .D(\syncgen/Result [5]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [5])
  );
  FDR   \syncgen/CounterX_4  (
    .C(clk),
    .D(\syncgen/Result [4]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [4])
  );
  FDR   \syncgen/CounterX_3  (
    .C(clk),
    .D(\syncgen/Result [3]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [3])
  );
  FDR   \syncgen/CounterX_2  (
    .C(clk),
    .D(\syncgen/Result [2]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [2])
  );
  FDR   \syncgen/CounterX_1  (
    .C(clk),
    .D(\syncgen/Result [1]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [1])
  );
  FDR   \syncgen/CounterX_0  (
    .C(clk),
    .D(\syncgen/Result [0]),
    .R(\syncgen/CounterXmaxed ),
    .Q(\syncgen/CounterX [0])
  );
  FD   \syncgen/vga_VS  (
    .C(clk),
    .D(\syncgen/vga_VS_cmp_eq0000 ),
    .Q(\syncgen/vga_VS_96 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \syncgen/vga_HS_cmp_eq0000_SW0  (
    .I0(\syncgen/CounterX [8]),
    .I1(\syncgen/CounterX [7]),
    .I2(\syncgen/CounterX [5]),
    .O(N2)
  );
  LUT4 #(
    .INIT ( 16'h0040 ))
  \syncgen/vga_VS_cmp_eq000021  (
    .I0(\syncgen/CounterY [0]),
    .I1(\syncgen/CounterY [5]),
    .I2(\syncgen/CounterY [8]),
    .I3(\syncgen/CounterY [1]),
    .O(\syncgen/vga_VS_cmp_eq000021_98 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \syncgen/inDisplayArea_mux000034  (
    .I0(\syncgen/CounterX [2]),
    .I1(\syncgen/CounterX [3]),
    .I2(\syncgen/CounterX [4]),
    .I3(\syncgen/CounterX [9]),
    .O(\syncgen/inDisplayArea_mux000034_93 )
  );
  LUT4 #(
    .INIT ( 16'hDC50 ))
  border117 (
    .I0(\syncgen/CounterY [5]),
    .I1(border43_9),
    .I2(border89_10),
    .I3(border30_8),
    .O(border)
  );
  OBUF   vga_v_sync_OBUF (
    .I(vga_v_sync_OBUF_112),
    .O(vga_v_sync)
  );
  OBUF   vga_h_sync_OBUF (
    .I(vga_h_sync_OBUF_110),
    .O(vga_h_sync)
  );
  OBUF   vga_B_1_OBUF (
    .I(vga_B_0_102),
    .O(vga_B[1])
  );
  OBUF   vga_B_0_OBUF (
    .I(vga_B_0_102),
    .O(vga_B[0])
  );
  OBUF   vga_G_2_OBUF (
    .I(vga_B_0_102),
    .O(vga_G[2])
  );
  OBUF   vga_G_1_OBUF (
    .I(vga_B_0_102),
    .O(vga_G[1])
  );
  OBUF   vga_G_0_OBUF (
    .I(vga_B_0_102),
    .O(vga_G[0])
  );
  OBUF   vga_R_2_OBUF (
    .I(vga_B_0_102),
    .O(vga_R[2])
  );
  OBUF   vga_R_1_OBUF (
    .I(vga_B_0_102),
    .O(vga_R[1])
  );
  OBUF   vga_R_0_OBUF (
    .I(vga_B_0_102),
    .O(vga_R[0])
  );
  FDR   \syncgen/vga_HS  (
    .C(clk),
    .D(\syncgen/vga_HS_cmp_eq00001_95 ),
    .R(N2),
    .Q(\syncgen/vga_HS_94 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \syncgen/vga_HS_cmp_eq00001  (
    .I0(\syncgen/CounterX [4]),
    .I1(\syncgen/CounterX [9]),
    .I2(\syncgen/CounterX [6]),
    .O(\syncgen/vga_HS_cmp_eq00001_95 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterX_cy<8>_rt  (
    .I0(\syncgen/CounterX [8]),
    .O(\syncgen/Mcount_CounterX_cy<8>_rt_53 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterX_cy<7>_rt  (
    .I0(\syncgen/CounterX [7]),
    .O(\syncgen/Mcount_CounterX_cy<7>_rt_51 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterX_cy<6>_rt  (
    .I0(\syncgen/CounterX [6]),
    .O(\syncgen/Mcount_CounterX_cy<6>_rt_49 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterX_cy<5>_rt  (
    .I0(\syncgen/CounterX [5]),
    .O(\syncgen/Mcount_CounterX_cy<5>_rt_47 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterX_cy<4>_rt  (
    .I0(\syncgen/CounterX [4]),
    .O(\syncgen/Mcount_CounterX_cy<4>_rt_45 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterX_cy<3>_rt  (
    .I0(\syncgen/CounterX [3]),
    .O(\syncgen/Mcount_CounterX_cy<3>_rt_43 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterX_cy<2>_rt  (
    .I0(\syncgen/CounterX [2]),
    .O(\syncgen/Mcount_CounterX_cy<2>_rt_41 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterX_cy<1>_rt  (
    .I0(\syncgen/CounterX [1]),
    .O(\syncgen/Mcount_CounterX_cy<1>_rt_39 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterY_cy<7>_rt  (
    .I0(\syncgen/CounterY [7]),
    .O(\syncgen/Mcount_CounterY_cy<7>_rt_70 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterY_cy<6>_rt  (
    .I0(\syncgen/CounterY [6]),
    .O(\syncgen/Mcount_CounterY_cy<6>_rt_68 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterY_cy<5>_rt  (
    .I0(\syncgen/CounterY [5]),
    .O(\syncgen/Mcount_CounterY_cy<5>_rt_66 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterY_cy<4>_rt  (
    .I0(\syncgen/CounterY [4]),
    .O(\syncgen/Mcount_CounterY_cy<4>_rt_64 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterY_cy<3>_rt  (
    .I0(\syncgen/CounterY [3]),
    .O(\syncgen/Mcount_CounterY_cy<3>_rt_62 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterY_cy<2>_rt  (
    .I0(\syncgen/CounterY [2]),
    .O(\syncgen/Mcount_CounterY_cy<2>_rt_60 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterY_cy<1>_rt  (
    .I0(\syncgen/CounterY [1]),
    .O(\syncgen/Mcount_CounterY_cy<1>_rt_58 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterX_xor<9>_rt  (
    .I0(\syncgen/CounterX [9]),
    .O(\syncgen/Mcount_CounterX_xor<9>_rt_55 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \syncgen/Mcount_CounterY_xor<8>_rt  (
    .I0(\syncgen/CounterY [8]),
    .O(\syncgen/Mcount_CounterY_xor<8>_rt_72 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \syncgen/inDisplayArea_mux0000321  (
    .I0(\syncgen/CounterX [1]),
    .I1(\syncgen/CounterX [0]),
    .I2(\syncgen/inDisplayArea_mux000034_93 ),
    .I3(\syncgen/inDisplayArea_mux0000313_92 ),
    .O(\syncgen/CounterXmaxed )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \syncgen/vga_VS_cmp_eq000023  (
    .I0(\syncgen/CounterY [2]),
    .I1(\syncgen/CounterY [4]),
    .I2(\syncgen/vga_VS_cmp_eq00005_99 ),
    .I3(\syncgen/vga_VS_cmp_eq000021_98 ),
    .O(\syncgen/vga_VS_cmp_eq0000 )
  );
  MUXF5   border30 (
    .I0(N10),
    .I1(N11),
    .S(\syncgen/CounterX [5]),
    .O(border30_8)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  border30_F (
    .I0(\syncgen/CounterX [3]),
    .I1(\syncgen/CounterX [4]),
    .I2(\syncgen/CounterX [6]),
    .I3(\syncgen/CounterX [9]),
    .O(N10)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  border30_G (
    .I0(\syncgen/CounterX [3]),
    .I1(\syncgen/CounterX [4]),
    .I2(\syncgen/CounterX [6]),
    .I3(\syncgen/CounterX [9]),
    .O(N11)
  );
  MUXF5   border89 (
    .I0(N12),
    .I1(N13),
    .S(\syncgen/CounterY [8]),
    .O(border89_10)
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  border89_F (
    .I0(\syncgen/CounterY [3]),
    .I1(\syncgen/CounterY [4]),
    .I2(\syncgen/CounterY [7]),
    .I3(\syncgen/CounterY [6]),
    .O(N12)
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  border89_G (
    .I0(\syncgen/CounterY [3]),
    .I1(\syncgen/CounterY [4]),
    .I2(\syncgen/CounterY [7]),
    .I3(\syncgen/CounterY [6]),
    .O(N13)
  );
  INV   \syncgen/Mcount_CounterX_lut<0>_INV_0  (
    .I(\syncgen/CounterX [0]),
    .O(\syncgen/Mcount_CounterX_lut [0])
  );
  INV   \syncgen/Mcount_CounterY_lut<0>_INV_0  (
    .I(\syncgen/CounterY [0]),
    .O(\syncgen/Mcount_CounterY_lut [0])
  );
  INV   \syncgen/vga_v_sync1_INV_0  (
    .I(\syncgen/vga_VS_96 ),
    .O(vga_v_sync_OBUF_112)
  );
  INV   \syncgen/vga_h_sync1_INV_0  (
    .I(\syncgen/vga_HS_94 ),
    .O(vga_h_sync_OBUF_110)
  );
  LUT3_L #(
    .INIT ( 8'h08 ))
  \syncgen/vga_VS_cmp_eq00005  (
    .I0(\syncgen/CounterY [6]),
    .I1(\syncgen/CounterY [7]),
    .I2(\syncgen/CounterY [3]),
    .LO(\syncgen/vga_VS_cmp_eq00005_99 )
  );
  LUT4_L #(
    .INIT ( 16'h4000 ))
  \syncgen/inDisplayArea_mux0000313  (
    .I0(\syncgen/CounterX [8]),
    .I1(\syncgen/CounterX [7]),
    .I2(\syncgen/CounterX [6]),
    .I3(\syncgen/CounterX [5]),
    .LO(\syncgen/inDisplayArea_mux0000313_92 )
  );
  LUT2_L #(
    .INIT ( 4'h1 ))
  border43 (
    .I0(\syncgen/CounterX [7]),
    .I1(\syncgen/CounterX [8]),
    .LO(border43_9)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

