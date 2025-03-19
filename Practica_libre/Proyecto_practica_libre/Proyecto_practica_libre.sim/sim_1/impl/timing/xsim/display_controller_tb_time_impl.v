// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1 (win64) Build 5076996 Wed May 22 18:37:14 MDT 2024
// Date        : Wed Mar 19 16:49:44 2025
// Host        : LAPTOP-I1QQ8O5Q running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Modelado/Practica_Modelado/Practica_libre/Proyecto_practica_libre/Proyecto_practica_libre.sim/sim_1/impl/timing/xsim/display_controller_tb_time_impl.v
// Design      : test_display_controller
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module display_controller
   (DP_OBUF,
    Q,
    \AND_70_reg[7]_0 ,
    CLK,
    AS,
    E,
    D);
  output DP_OBUF;
  output [6:0]Q;
  output [7:0]\AND_70_reg[7]_0 ;
  input CLK;
  input [0:0]AS;
  input [0:0]E;
  input [7:0]D;

  wire [7:0]\AND_70_reg[7]_0 ;
  wire [0:0]AS;
  wire CLK;
  wire [7:0]D;
  wire DP_OBUF;
  wire [0:0]E;
  wire [6:0]Q;
  wire \SEG_AG[6]_i_10_n_0 ;
  wire \SEG_AG[6]_i_11_n_0 ;
  wire \SEG_AG[6]_i_12_n_0 ;
  wire \SEG_AG[6]_i_13_n_0 ;
  wire \SEG_AG[6]_i_6_n_0 ;
  wire \SEG_AG[6]_i_7_n_0 ;
  wire \SEG_AG[6]_i_8_n_0 ;
  wire \SEG_AG[6]_i_9_n_0 ;
  wire [7:0]and_int;
  wire \dato_rx_reg_reg_n_0_[0] ;
  wire \dato_rx_reg_reg_n_0_[1] ;
  wire \dato_rx_reg_reg_n_0_[2] ;
  wire \dato_rx_reg_reg_n_0_[3] ;
  wire \dato_rx_reg_reg_n_0_[4] ;
  wire \dato_rx_reg_reg_n_0_[5] ;
  wire \dato_rx_reg_reg_n_0_[6] ;
  wire \dato_rx_reg_reg_n_0_[7] ;
  wire dp_int;
  wire [2:0]mux_sel_var;
  wire [2:0]mux_sel_var_reg;
  wire [23:0]p_0_in;
  wire prev_tick_var;
  wire [6:0]seg_int;
  wire [3:0]sel0;
  wire tick;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \AND_70[0]_i_1 
       (.I0(mux_sel_var_reg[1]),
        .I1(mux_sel_var_reg[2]),
        .I2(mux_sel_var_reg[0]),
        .O(and_int[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \AND_70[1]_i_1 
       (.I0(mux_sel_var_reg[1]),
        .I1(mux_sel_var_reg[2]),
        .I2(mux_sel_var_reg[0]),
        .O(and_int[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \AND_70[2]_i_1 
       (.I0(mux_sel_var_reg[2]),
        .I1(mux_sel_var_reg[0]),
        .I2(mux_sel_var_reg[1]),
        .O(and_int[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \AND_70[3]_i_1 
       (.I0(mux_sel_var_reg[1]),
        .I1(mux_sel_var_reg[0]),
        .I2(mux_sel_var_reg[2]),
        .O(and_int[3]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \AND_70[4]_i_1 
       (.I0(mux_sel_var_reg[1]),
        .I1(mux_sel_var_reg[0]),
        .I2(mux_sel_var_reg[2]),
        .O(and_int[4]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \AND_70[5]_i_1 
       (.I0(mux_sel_var_reg[2]),
        .I1(mux_sel_var_reg[0]),
        .I2(mux_sel_var_reg[1]),
        .O(and_int[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \AND_70[6]_i_1 
       (.I0(mux_sel_var_reg[1]),
        .I1(mux_sel_var_reg[2]),
        .I2(mux_sel_var_reg[0]),
        .O(and_int[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \AND_70[7]_i_1 
       (.I0(mux_sel_var_reg[2]),
        .I1(mux_sel_var_reg[0]),
        .I2(mux_sel_var_reg[1]),
        .O(and_int[7]));
  FDPE #(
    .INIT(1'b1)) 
    \AND_70_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(and_int[0]),
        .PRE(AS),
        .Q(\AND_70_reg[7]_0 [0]));
  FDPE #(
    .INIT(1'b1)) 
    \AND_70_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(and_int[1]),
        .PRE(AS),
        .Q(\AND_70_reg[7]_0 [1]));
  FDPE #(
    .INIT(1'b1)) 
    \AND_70_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(and_int[2]),
        .PRE(AS),
        .Q(\AND_70_reg[7]_0 [2]));
  FDPE #(
    .INIT(1'b1)) 
    \AND_70_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(and_int[3]),
        .PRE(AS),
        .Q(\AND_70_reg[7]_0 [3]));
  FDPE #(
    .INIT(1'b1)) 
    \AND_70_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(and_int[4]),
        .PRE(AS),
        .Q(\AND_70_reg[7]_0 [4]));
  FDPE #(
    .INIT(1'b1)) 
    \AND_70_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(and_int[5]),
        .PRE(AS),
        .Q(\AND_70_reg[7]_0 [5]));
  FDPE #(
    .INIT(1'b1)) 
    \AND_70_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(and_int[6]),
        .PRE(AS),
        .Q(\AND_70_reg[7]_0 [6]));
  FDPE #(
    .INIT(1'b1)) 
    \AND_70_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(and_int[7]),
        .PRE(AS),
        .Q(\AND_70_reg[7]_0 [7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    DP_i_1
       (.I0(mux_sel_var_reg[0]),
        .I1(mux_sel_var_reg[2]),
        .I2(mux_sel_var_reg[1]),
        .O(dp_int));
  FDPE #(
    .INIT(1'b1)) 
    DP_reg
       (.C(CLK),
        .CE(1'b1),
        .D(dp_int),
        .PRE(AS),
        .Q(DP_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \SEG_AG[0]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg_int[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \SEG_AG[1]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[1]),
        .I3(sel0[0]),
        .O(seg_int[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \SEG_AG[2]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[2]),
        .O(seg_int[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \SEG_AG[3]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg_int[3]));
  LUT4 #(
    .INIT(16'h5710)) 
    \SEG_AG[4]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[2]),
        .I3(sel0[0]),
        .O(seg_int[4]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \SEG_AG[5]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[2]),
        .I2(sel0[0]),
        .I3(sel0[1]),
        .O(seg_int[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h4025)) 
    \SEG_AG[6]_i_1 
       (.I0(sel0[3]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .I3(sel0[1]),
        .O(seg_int[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_10 
       (.I0(p_0_in[6]),
        .I1(p_0_in[2]),
        .I2(mux_sel_var_reg[1]),
        .I3(\dato_rx_reg_reg_n_0_[6] ),
        .I4(mux_sel_var_reg[0]),
        .I5(\dato_rx_reg_reg_n_0_[2] ),
        .O(\SEG_AG[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_11 
       (.I0(p_0_in[22]),
        .I1(p_0_in[18]),
        .I2(mux_sel_var_reg[1]),
        .I3(p_0_in[14]),
        .I4(mux_sel_var_reg[0]),
        .I5(p_0_in[10]),
        .O(\SEG_AG[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_12 
       (.I0(p_0_in[5]),
        .I1(p_0_in[1]),
        .I2(mux_sel_var_reg[1]),
        .I3(\dato_rx_reg_reg_n_0_[5] ),
        .I4(mux_sel_var_reg[0]),
        .I5(\dato_rx_reg_reg_n_0_[1] ),
        .O(\SEG_AG[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_13 
       (.I0(p_0_in[21]),
        .I1(p_0_in[17]),
        .I2(mux_sel_var_reg[1]),
        .I3(p_0_in[13]),
        .I4(mux_sel_var_reg[0]),
        .I5(p_0_in[9]),
        .O(\SEG_AG[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_6 
       (.I0(p_0_in[7]),
        .I1(p_0_in[3]),
        .I2(mux_sel_var_reg[1]),
        .I3(\dato_rx_reg_reg_n_0_[7] ),
        .I4(mux_sel_var_reg[0]),
        .I5(\dato_rx_reg_reg_n_0_[3] ),
        .O(\SEG_AG[6]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_7 
       (.I0(p_0_in[23]),
        .I1(p_0_in[19]),
        .I2(mux_sel_var_reg[1]),
        .I3(p_0_in[15]),
        .I4(mux_sel_var_reg[0]),
        .I5(p_0_in[11]),
        .O(\SEG_AG[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_8 
       (.I0(p_0_in[4]),
        .I1(p_0_in[0]),
        .I2(mux_sel_var_reg[1]),
        .I3(\dato_rx_reg_reg_n_0_[4] ),
        .I4(mux_sel_var_reg[0]),
        .I5(\dato_rx_reg_reg_n_0_[0] ),
        .O(\SEG_AG[6]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \SEG_AG[6]_i_9 
       (.I0(p_0_in[20]),
        .I1(p_0_in[16]),
        .I2(mux_sel_var_reg[1]),
        .I3(p_0_in[12]),
        .I4(mux_sel_var_reg[0]),
        .I5(p_0_in[8]),
        .O(\SEG_AG[6]_i_9_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \SEG_AG_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(seg_int[0]),
        .PRE(AS),
        .Q(Q[0]));
  FDPE #(
    .INIT(1'b1)) 
    \SEG_AG_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(seg_int[1]),
        .PRE(AS),
        .Q(Q[1]));
  FDPE #(
    .INIT(1'b1)) 
    \SEG_AG_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(seg_int[2]),
        .PRE(AS),
        .Q(Q[2]));
  FDPE #(
    .INIT(1'b1)) 
    \SEG_AG_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(seg_int[3]),
        .PRE(AS),
        .Q(Q[3]));
  FDPE #(
    .INIT(1'b1)) 
    \SEG_AG_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(seg_int[4]),
        .PRE(AS),
        .Q(Q[4]));
  FDPE #(
    .INIT(1'b1)) 
    \SEG_AG_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(seg_int[5]),
        .PRE(AS),
        .Q(Q[5]));
  FDPE #(
    .INIT(1'b1)) 
    \SEG_AG_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(seg_int[6]),
        .PRE(AS),
        .Q(Q[6]));
  MUXF7 \SEG_AG_reg[6]_i_2 
       (.I0(\SEG_AG[6]_i_6_n_0 ),
        .I1(\SEG_AG[6]_i_7_n_0 ),
        .O(sel0[3]),
        .S(mux_sel_var_reg[2]));
  MUXF7 \SEG_AG_reg[6]_i_3 
       (.I0(\SEG_AG[6]_i_8_n_0 ),
        .I1(\SEG_AG[6]_i_9_n_0 ),
        .O(sel0[0]),
        .S(mux_sel_var_reg[2]));
  MUXF7 \SEG_AG_reg[6]_i_4 
       (.I0(\SEG_AG[6]_i_10_n_0 ),
        .I1(\SEG_AG[6]_i_11_n_0 ),
        .O(sel0[2]),
        .S(mux_sel_var_reg[2]));
  MUXF7 \SEG_AG_reg[6]_i_5 
       (.I0(\SEG_AG[6]_i_12_n_0 ),
        .I1(\SEG_AG[6]_i_13_n_0 ),
        .O(sel0[1]),
        .S(mux_sel_var_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[0]),
        .Q(\dato_rx_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[10]),
        .Q(p_0_in[2]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[11]),
        .Q(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[12]),
        .Q(p_0_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[13] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[13]),
        .Q(p_0_in[5]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[14] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[14]),
        .Q(p_0_in[6]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[15] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[15]),
        .Q(p_0_in[7]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[16] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[16]),
        .Q(p_0_in[8]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[17] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[17]),
        .Q(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[18] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[18]),
        .Q(p_0_in[10]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[19] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[19]),
        .Q(p_0_in[11]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[1]),
        .Q(\dato_rx_reg_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[20] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[20]),
        .Q(p_0_in[12]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[21] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[21]),
        .Q(p_0_in[13]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[22] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[22]),
        .Q(p_0_in[14]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[23] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[23]),
        .Q(p_0_in[15]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[24] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(D[0]),
        .Q(p_0_in[16]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[25] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(D[1]),
        .Q(p_0_in[17]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[26] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(D[2]),
        .Q(p_0_in[18]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[27] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(D[3]),
        .Q(p_0_in[19]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[28] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(D[4]),
        .Q(p_0_in[20]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[29] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(D[5]),
        .Q(p_0_in[21]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[2]),
        .Q(\dato_rx_reg_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[30] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(D[6]),
        .Q(p_0_in[22]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[31] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(D[7]),
        .Q(p_0_in[23]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[3]),
        .Q(\dato_rx_reg_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[4]),
        .Q(\dato_rx_reg_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[5]),
        .Q(\dato_rx_reg_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[6]),
        .Q(\dato_rx_reg_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[7]),
        .Q(\dato_rx_reg_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[8]),
        .Q(p_0_in[0]));
  FDCE #(
    .INIT(1'b0)) 
    \dato_rx_reg_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(AS),
        .D(p_0_in[9]),
        .Q(p_0_in[1]));
  FDCE #(
    .INIT(1'b0)) 
    \mux_sel_var_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(mux_sel_var[0]),
        .Q(mux_sel_var_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \mux_sel_var_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(mux_sel_var[1]),
        .Q(mux_sel_var_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \mux_sel_var_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(mux_sel_var[2]),
        .Q(mux_sel_var_reg[2]));
  prescaler prescaler_inst
       (.AS(AS),
        .CLK(CLK),
        .D(mux_sel_var),
        .Q(mux_sel_var_reg),
        .prev_tick_var(prev_tick_var),
        .tick(tick));
  FDCE #(
    .INIT(1'b0)) 
    prev_tick_var_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(tick),
        .Q(prev_tick_var));
endmodule

module prescaler
   (tick,
    D,
    CLK,
    AS,
    prev_tick_var,
    Q);
  output tick;
  output [2:0]D;
  input CLK;
  input [0:0]AS;
  input prev_tick_var;
  input [2:0]Q;

  wire [0:0]AS;
  wire CLK;
  wire [2:0]D;
  wire [2:0]Q;
  wire [16:0]cnt;
  wire \cnt[16]_i_2_n_0 ;
  wire \cnt[16]_i_3_n_0 ;
  wire \cnt[16]_i_4_n_0 ;
  wire \cnt[16]_i_5_n_0 ;
  wire [16:0]cnt_0;
  wire [16:1]data0;
  wire plusOp_carry__0_n_0;
  wire plusOp_carry__1_n_0;
  wire plusOp_carry_n_0;
  wire prev_tick_var;
  wire tick;
  wire tick_1;
  wire [2:0]NLW_plusOp_carry_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_plusOp_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_plusOp_carry__2_CO_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt[0]),
        .O(cnt_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[10]_i_1 
       (.I0(\cnt[16]_i_2_n_0 ),
        .I1(\cnt[16]_i_3_n_0 ),
        .I2(\cnt[16]_i_4_n_0 ),
        .I3(\cnt[16]_i_5_n_0 ),
        .I4(data0[10]),
        .O(cnt_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[11]_i_1 
       (.I0(\cnt[16]_i_2_n_0 ),
        .I1(\cnt[16]_i_3_n_0 ),
        .I2(\cnt[16]_i_4_n_0 ),
        .I3(\cnt[16]_i_5_n_0 ),
        .I4(data0[11]),
        .O(cnt_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[12]_i_1 
       (.I0(\cnt[16]_i_2_n_0 ),
        .I1(\cnt[16]_i_3_n_0 ),
        .I2(\cnt[16]_i_4_n_0 ),
        .I3(\cnt[16]_i_5_n_0 ),
        .I4(data0[12]),
        .O(cnt_0[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[13]_i_1 
       (.I0(\cnt[16]_i_2_n_0 ),
        .I1(\cnt[16]_i_3_n_0 ),
        .I2(\cnt[16]_i_4_n_0 ),
        .I3(\cnt[16]_i_5_n_0 ),
        .I4(data0[13]),
        .O(cnt_0[13]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[14]_i_1 
       (.I0(\cnt[16]_i_2_n_0 ),
        .I1(\cnt[16]_i_3_n_0 ),
        .I2(\cnt[16]_i_4_n_0 ),
        .I3(\cnt[16]_i_5_n_0 ),
        .I4(data0[14]),
        .O(cnt_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[15]_i_1 
       (.I0(\cnt[16]_i_2_n_0 ),
        .I1(\cnt[16]_i_3_n_0 ),
        .I2(\cnt[16]_i_4_n_0 ),
        .I3(\cnt[16]_i_5_n_0 ),
        .I4(data0[15]),
        .O(cnt_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[16]_i_1 
       (.I0(\cnt[16]_i_2_n_0 ),
        .I1(\cnt[16]_i_3_n_0 ),
        .I2(\cnt[16]_i_4_n_0 ),
        .I3(\cnt[16]_i_5_n_0 ),
        .I4(data0[16]),
        .O(cnt_0[16]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \cnt[16]_i_2 
       (.I0(cnt[4]),
        .I1(cnt[3]),
        .I2(cnt[6]),
        .I3(cnt[5]),
        .O(\cnt[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cnt[16]_i_3 
       (.I0(cnt[0]),
        .I1(cnt[15]),
        .I2(cnt[16]),
        .I3(cnt[2]),
        .I4(cnt[1]),
        .O(\cnt[16]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \cnt[16]_i_4 
       (.I0(cnt[11]),
        .I1(cnt[12]),
        .I2(cnt[14]),
        .I3(cnt[13]),
        .O(\cnt[16]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cnt[16]_i_5 
       (.I0(cnt[8]),
        .I1(cnt[7]),
        .I2(cnt[10]),
        .I3(cnt[9]),
        .O(\cnt[16]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[1]_i_1 
       (.I0(\cnt[16]_i_2_n_0 ),
        .I1(\cnt[16]_i_3_n_0 ),
        .I2(\cnt[16]_i_4_n_0 ),
        .I3(\cnt[16]_i_5_n_0 ),
        .I4(data0[1]),
        .O(cnt_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[2]_i_1 
       (.I0(\cnt[16]_i_2_n_0 ),
        .I1(\cnt[16]_i_3_n_0 ),
        .I2(\cnt[16]_i_4_n_0 ),
        .I3(\cnt[16]_i_5_n_0 ),
        .I4(data0[2]),
        .O(cnt_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[3]_i_1 
       (.I0(\cnt[16]_i_2_n_0 ),
        .I1(\cnt[16]_i_3_n_0 ),
        .I2(\cnt[16]_i_4_n_0 ),
        .I3(\cnt[16]_i_5_n_0 ),
        .I4(data0[3]),
        .O(cnt_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[4]_i_1 
       (.I0(\cnt[16]_i_2_n_0 ),
        .I1(\cnt[16]_i_3_n_0 ),
        .I2(\cnt[16]_i_4_n_0 ),
        .I3(\cnt[16]_i_5_n_0 ),
        .I4(data0[4]),
        .O(cnt_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[5]_i_1 
       (.I0(\cnt[16]_i_2_n_0 ),
        .I1(\cnt[16]_i_3_n_0 ),
        .I2(\cnt[16]_i_4_n_0 ),
        .I3(\cnt[16]_i_5_n_0 ),
        .I4(data0[5]),
        .O(cnt_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[6]_i_1 
       (.I0(\cnt[16]_i_2_n_0 ),
        .I1(\cnt[16]_i_3_n_0 ),
        .I2(\cnt[16]_i_4_n_0 ),
        .I3(\cnt[16]_i_5_n_0 ),
        .I4(data0[6]),
        .O(cnt_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[7]_i_1 
       (.I0(\cnt[16]_i_2_n_0 ),
        .I1(\cnt[16]_i_3_n_0 ),
        .I2(\cnt[16]_i_4_n_0 ),
        .I3(\cnt[16]_i_5_n_0 ),
        .I4(data0[7]),
        .O(cnt_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[8]_i_1 
       (.I0(\cnt[16]_i_2_n_0 ),
        .I1(\cnt[16]_i_3_n_0 ),
        .I2(\cnt[16]_i_4_n_0 ),
        .I3(\cnt[16]_i_5_n_0 ),
        .I4(data0[8]),
        .O(cnt_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \cnt[9]_i_1 
       (.I0(\cnt[16]_i_2_n_0 ),
        .I1(\cnt[16]_i_3_n_0 ),
        .I2(\cnt[16]_i_4_n_0 ),
        .I3(\cnt[16]_i_5_n_0 ),
        .I4(data0[9]),
        .O(cnt_0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(cnt_0[0]),
        .Q(cnt[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(cnt_0[10]),
        .Q(cnt[10]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(cnt_0[11]),
        .Q(cnt[11]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(cnt_0[12]),
        .Q(cnt[12]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(cnt_0[13]),
        .Q(cnt[13]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(cnt_0[14]),
        .Q(cnt[14]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(cnt_0[15]),
        .Q(cnt[15]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(cnt_0[16]),
        .Q(cnt[16]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(cnt_0[1]),
        .Q(cnt[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(cnt_0[2]),
        .Q(cnt[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(cnt_0[3]),
        .Q(cnt[3]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(cnt_0[4]),
        .Q(cnt[4]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(cnt_0[5]),
        .Q(cnt[5]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(cnt_0[6]),
        .Q(cnt[6]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(cnt_0[7]),
        .Q(cnt[7]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(cnt_0[8]),
        .Q(cnt[8]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(cnt_0[9]),
        .Q(cnt[9]));
  LUT3 #(
    .INIT(8'h9A)) 
    \mux_sel_var[0]_i_1 
       (.I0(Q[0]),
        .I1(prev_tick_var),
        .I2(tick),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hF708)) 
    \mux_sel_var[1]_i_1 
       (.I0(Q[0]),
        .I1(tick),
        .I2(prev_tick_var),
        .I3(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \mux_sel_var[2]_i_1 
       (.I0(prev_tick_var),
        .I1(tick),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .O(D[2]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry
       (.CI(1'b0),
        .CO({plusOp_carry_n_0,NLW_plusOp_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(cnt[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S(cnt[4:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__0
       (.CI(plusOp_carry_n_0),
        .CO({plusOp_carry__0_n_0,NLW_plusOp_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S(cnt[8:5]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__1
       (.CI(plusOp_carry__0_n_0),
        .CO({plusOp_carry__1_n_0,NLW_plusOp_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S(cnt[12:9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 plusOp_carry__2
       (.CI(plusOp_carry__1_n_0),
        .CO(NLW_plusOp_carry__2_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S(cnt[16:13]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    tick_i_1
       (.I0(\cnt[16]_i_2_n_0 ),
        .I1(\cnt[16]_i_3_n_0 ),
        .I2(\cnt[16]_i_4_n_0 ),
        .I3(\cnt[16]_i_5_n_0 ),
        .O(tick_1));
  FDCE #(
    .INIT(1'b0)) 
    tick_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AS),
        .D(tick_1),
        .Q(tick));
endmodule

(* ECO_CHECKSUM = "4ed05eee" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module test_display_controller
   (CLK,
    RST,
    SW_OK,
    SW,
    SEG_AG,
    AND_70,
    DP);
  input CLK;
  input RST;
  input SW_OK;
  input [7:0]SW;
  output [6:0]SEG_AG;
  output [7:0]AND_70;
  output DP;

  wire [7:0]AND_70;
  wire [7:0]AND_70_OBUF;
  wire CLK;
  wire CLK_IBUF;
  wire CLK_IBUF_BUFG;
  wire DP;
  wire DP_OBUF;
  wire LOAD;
  wire LOAD_i_1_n_0;
  wire RST;
  wire RST_IBUF;
  wire [6:0]SEG_AG;
  wire [6:0]SEG_AG_OBUF;
  wire [7:0]SW;
  wire [7:0]SW_IBUF;
  wire SW_OK;
  wire SW_OK_IBUF;
  wire SW_OK_REG;

initial begin
 $sdf_annotate("display_controller_tb_time_impl.sdf",,,,"tool_control");
end
  OBUF \AND_70_OBUF[0]_inst 
       (.I(AND_70_OBUF[0]),
        .O(AND_70[0]));
  OBUF \AND_70_OBUF[1]_inst 
       (.I(AND_70_OBUF[1]),
        .O(AND_70[1]));
  OBUF \AND_70_OBUF[2]_inst 
       (.I(AND_70_OBUF[2]),
        .O(AND_70[2]));
  OBUF \AND_70_OBUF[3]_inst 
       (.I(AND_70_OBUF[3]),
        .O(AND_70[3]));
  OBUF \AND_70_OBUF[4]_inst 
       (.I(AND_70_OBUF[4]),
        .O(AND_70[4]));
  OBUF \AND_70_OBUF[5]_inst 
       (.I(AND_70_OBUF[5]),
        .O(AND_70[5]));
  OBUF \AND_70_OBUF[6]_inst 
       (.I(AND_70_OBUF[6]),
        .O(AND_70[6]));
  OBUF \AND_70_OBUF[7]_inst 
       (.I(AND_70_OBUF[7]),
        .O(AND_70[7]));
  BUFG CLK_IBUF_BUFG_inst
       (.I(CLK_IBUF),
        .O(CLK_IBUF_BUFG));
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  OBUF DP_OBUF_inst
       (.I(DP_OBUF),
        .O(DP));
  LUT2 #(
    .INIT(4'h2)) 
    LOAD_i_1
       (.I0(SW_OK_IBUF),
        .I1(SW_OK_REG),
        .O(LOAD_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    LOAD_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(LOAD_i_1_n_0),
        .Q(LOAD));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  OBUF \SEG_AG_OBUF[0]_inst 
       (.I(SEG_AG_OBUF[0]),
        .O(SEG_AG[0]));
  OBUF \SEG_AG_OBUF[1]_inst 
       (.I(SEG_AG_OBUF[1]),
        .O(SEG_AG[1]));
  OBUF \SEG_AG_OBUF[2]_inst 
       (.I(SEG_AG_OBUF[2]),
        .O(SEG_AG[2]));
  OBUF \SEG_AG_OBUF[3]_inst 
       (.I(SEG_AG_OBUF[3]),
        .O(SEG_AG[3]));
  OBUF \SEG_AG_OBUF[4]_inst 
       (.I(SEG_AG_OBUF[4]),
        .O(SEG_AG[4]));
  OBUF \SEG_AG_OBUF[5]_inst 
       (.I(SEG_AG_OBUF[5]),
        .O(SEG_AG[5]));
  OBUF \SEG_AG_OBUF[6]_inst 
       (.I(SEG_AG_OBUF[6]),
        .O(SEG_AG[6]));
  IBUF \SW_IBUF[0]_inst 
       (.I(SW[0]),
        .O(SW_IBUF[0]));
  IBUF \SW_IBUF[1]_inst 
       (.I(SW[1]),
        .O(SW_IBUF[1]));
  IBUF \SW_IBUF[2]_inst 
       (.I(SW[2]),
        .O(SW_IBUF[2]));
  IBUF \SW_IBUF[3]_inst 
       (.I(SW[3]),
        .O(SW_IBUF[3]));
  IBUF \SW_IBUF[4]_inst 
       (.I(SW[4]),
        .O(SW_IBUF[4]));
  IBUF \SW_IBUF[5]_inst 
       (.I(SW[5]),
        .O(SW_IBUF[5]));
  IBUF \SW_IBUF[6]_inst 
       (.I(SW[6]),
        .O(SW_IBUF[6]));
  IBUF \SW_IBUF[7]_inst 
       (.I(SW[7]),
        .O(SW_IBUF[7]));
  IBUF SW_OK_IBUF_inst
       (.I(SW_OK),
        .O(SW_OK_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    SW_OK_REG_reg
       (.C(CLK_IBUF_BUFG),
        .CE(1'b1),
        .CLR(RST_IBUF),
        .D(SW_OK_IBUF),
        .Q(SW_OK_REG));
  display_controller U_DISPLAY
       (.\AND_70_reg[7]_0 (AND_70_OBUF),
        .AS(RST_IBUF),
        .CLK(CLK_IBUF_BUFG),
        .D(SW_IBUF),
        .DP_OBUF(DP_OBUF),
        .E(LOAD),
        .Q(SEG_AG_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

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

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
