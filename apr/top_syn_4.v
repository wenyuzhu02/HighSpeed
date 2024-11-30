/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP2
// Date      : Thu Nov 28 21:13:25 2024
/////////////////////////////////////////////////////////////


module in_to_row_4 ( a, b, row0, row1, row2, row3 );
  input [3:0] a;
  input [3:0] b;
  output [3:0] row0;
  output [3:0] row1;
  output [3:0] row2;
  output [3:0] row3;


  AND2X1 U1 ( .A(b[0]), .B(a[3]), .Y(row0[3]) );
  AND2X1 U2 ( .A(b[1]), .B(a[3]), .Y(row1[3]) );
  AND2X1 U3 ( .A(b[1]), .B(a[2]), .Y(row1[2]) );
  AND2X1 U4 ( .A(b[2]), .B(a[2]), .Y(row2[2]) );
  AND2X1 U5 ( .A(a[2]), .B(b[3]), .Y(row3[2]) );
  AND2X1 U6 ( .A(b[2]), .B(a[1]), .Y(row2[1]) );
  AND2X1 U7 ( .A(b[0]), .B(a[2]), .Y(row0[2]) );
  AND2X1 U8 ( .A(b[2]), .B(a[3]), .Y(row2[3]) );
  AND2X1 U9 ( .A(a[0]), .B(b[3]), .Y(row3[0]) );
  AND2X1 U10 ( .A(b[1]), .B(a[1]), .Y(row1[1]) );
  AND2X1 U11 ( .A(a[1]), .B(b[3]), .Y(row3[1]) );
  AND2X1 U12 ( .A(b[0]), .B(a[1]), .Y(row0[1]) );
  AND2X1 U13 ( .A(b[2]), .B(a[0]), .Y(row2[0]) );
  AND2X1 U14 ( .A(b[1]), .B(a[0]), .Y(row1[0]) );
  AND2X1 U15 ( .A(b[3]), .B(a[3]), .Y(row3[3]) );
  AND2X1 U16 ( .A(b[0]), .B(a[0]), .Y(row0[0]) );
endmodule


module half_adder_0 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_8 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module stage_1_4 ( row0_i, row1_i, row2_i, row3_i, row0_o, row1_o, row2_o );
  input [3:0] row0_i;
  input [4:1] row1_i;
  input [5:2] row2_i;
  input [6:3] row3_i;
  output [6:0] row0_o;
  output [5:1] row1_o;
  output [5:2] row2_o;
  wire   \row3_i[6] , \row3_i[5] , \row0_i[2] , \row0_i[1] , \row0_i[0] ,
         \row2_i[3] , \row1_i[2] , \row1_i[1] , \row2_i[5] , \row3_i[4] ,
         \row3_i[3] , \row2_i[2] ;
  assign row0_o[6] = \row3_i[6] ;
  assign \row3_i[6]  = row3_i[6];
  assign row0_o[5] = \row3_i[5] ;
  assign \row3_i[5]  = row3_i[5];
  assign row0_o[2] = \row0_i[2] ;
  assign \row0_i[2]  = row0_i[2];
  assign row0_o[1] = \row0_i[1] ;
  assign \row0_i[1]  = row0_i[1];
  assign row0_o[0] = \row0_i[0] ;
  assign \row0_i[0]  = row0_i[0];
  assign row1_o[3] = \row2_i[3] ;
  assign \row2_i[3]  = row2_i[3];
  assign row1_o[2] = \row1_i[2] ;
  assign \row1_i[2]  = row1_i[2];
  assign row1_o[1] = \row1_i[1] ;
  assign \row1_i[1]  = row1_i[1];
  assign row2_o[5] = \row2_i[5] ;
  assign \row2_i[5]  = row2_i[5];
  assign row2_o[4] = \row3_i[4] ;
  assign \row3_i[4]  = row3_i[4];
  assign row2_o[3] = \row3_i[3] ;
  assign \row3_i[3]  = row3_i[3];
  assign row2_o[2] = \row2_i[2] ;
  assign \row2_i[2]  = row2_i[2];

  half_adder_0 h0 ( .a(row0_i[3]), .b(row1_i[3]), .s(row0_o[3]), .c(row1_o[4])
         );
  half_adder_8 h1 ( .a(row1_i[4]), .b(row2_i[4]), .s(row0_o[4]), .c(row1_o[5])
         );
endmodule


module half_adder_5 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_6 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_0 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_6 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_5 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_7 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_1 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_2 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_1 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_2 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_1 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_3 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_4 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_2 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_4 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_3 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module stage_2_4 ( row0_i, row1_i, row2_i, row0_o, row1_o );
  input [6:0] row0_i;
  input [5:1] row1_i;
  input [5:2] row2_i;
  output [6:0] row0_o;
  output [6:1] row1_o;
  wire   \row0_i[6] , \row0_i[1] , \row0_i[0] , \row2_i[2] , \row1_i[1] ;
  assign row0_o[6] = \row0_i[6] ;
  assign \row0_i[6]  = row0_i[6];
  assign row0_o[1] = \row0_i[1] ;
  assign \row0_i[1]  = row0_i[1];
  assign row0_o[0] = \row0_i[0] ;
  assign \row0_i[0]  = row0_i[0];
  assign row1_o[2] = \row2_i[2] ;
  assign \row2_i[2]  = row2_i[2];
  assign row1_o[1] = \row1_i[1] ;
  assign \row1_i[1]  = row1_i[1];

  half_adder_7 h0 ( .a(row0_i[2]), .b(row1_i[2]), .s(row0_o[2]), .c(row1_o[3])
         );
  full_adder_0 f0 ( .a(row0_i[3]), .b(row1_i[3]), .c_i(row2_i[3]), .s(
        row0_o[3]), .c(row1_o[4]) );
  full_adder_2 f1 ( .a(row0_i[4]), .b(row1_i[4]), .c_i(row2_i[4]), .s(
        row0_o[4]), .c(row1_o[5]) );
  full_adder_1 f2 ( .a(row0_i[5]), .b(row1_i[5]), .c_i(row2_i[5]), .s(
        row0_o[5]), .c(row1_o[6]) );
endmodule


module PG_5 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U2 ( .A(B), .B(A), .Y(P) );
  AND2X1 U1 ( .A(A), .B(B), .Y(G) );
endmodule


module blackCell_7 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n2, n1;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n2) );
  BUFX2 U1 ( .A(n2), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module blackCell_0 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_1 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_2 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module blackCell_3 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module blackCell_4 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_5 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_6 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module PG_0 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U2 ( .A(B), .B(A), .Y(P) );
  AND2X1 U1 ( .A(A), .B(B), .Y(G) );
endmodule


module PG_1 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U2 ( .A(B), .B(A), .Y(P) );
  AND2X1 U1 ( .A(A), .B(B), .Y(G) );
endmodule


module PG_2 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U2 ( .A(B), .B(A), .Y(P) );
  AND2X1 U1 ( .A(A), .B(B), .Y(G) );
endmodule


module PG_3 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U2 ( .A(B), .B(A), .Y(P) );
  AND2X1 U1 ( .A(A), .B(B), .Y(G) );
endmodule


module PG_4 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U2 ( .A(B), .B(A), .Y(P) );
  AND2X1 U1 ( .A(A), .B(B), .Y(G) );
endmodule


module adder_6 ( A, B, C );
  input [5:0] A;
  input [5:0] B;
  output [5:0] C;
  wire   \P2[4] , \G3[4] ;
  wire   [5:1] P;
  wire   [5:0] G;
  wire   [4:1] G1;
  wire   [4:1] P1;
  wire   [4:2] G2;

  PG_5 \propGen[0]  ( .A(A[0]), .B(B[0]), .P(C[0]), .G(G[0]) );
  PG_4 \propGen[1]  ( .A(A[1]), .B(B[1]), .P(P[1]), .G(G[1]) );
  PG_3 \propGen[2]  ( .A(A[2]), .B(B[2]), .P(P[2]), .G(G[2]) );
  PG_2 \propGen[3]  ( .A(A[3]), .B(B[3]), .P(P[3]), .G(G[3]) );
  PG_1 \propGen[4]  ( .A(A[4]), .B(B[4]), .P(P[4]), .G(G[4]) );
  PG_0 \propGen[5]  ( .A(A[5]), .B(B[5]), .P(P[5]) );
  blackCell_7 \layer_0[1]  ( .P_1(P[1]), .G_1(G[1]), .P_0(C[0]), .G_0(G[0]), 
        .P(P1[1]), .G(G1[1]) );
  blackCell_6 \layer_0[2]  ( .P_1(P[2]), .G_1(G[2]), .P_0(P[1]), .G_0(G[1]), 
        .P(P1[2]), .G(G1[2]) );
  blackCell_5 \layer_0[3]  ( .P_1(P[3]), .G_1(G[3]), .P_0(P[2]), .G_0(G[2]), 
        .P(P1[3]), .G(G1[3]) );
  blackCell_4 \layer_0[4]  ( .P_1(P[4]), .G_1(G[4]), .P_0(P[3]), .G_0(G[3]), 
        .P(P1[4]), .G(G1[4]) );
  blackCell_3 \layer_1[2]  ( .P_1(P1[2]), .G_1(G1[2]), .P_0(C[0]), .G_0(G[0]), 
        .G(G2[2]) );
  blackCell_2 \layer_1[3]  ( .P_1(P1[3]), .G_1(G1[3]), .P_0(P1[1]), .G_0(G1[1]), .G(G2[3]) );
  blackCell_1 \layer_1[4]  ( .P_1(P1[4]), .G_1(G1[4]), .P_0(P1[2]), .G_0(G1[2]), .P(\P2[4] ), .G(G2[4]) );
  blackCell_0 layer_2 ( .P_1(\P2[4] ), .G_1(G2[4]), .P_0(C[0]), .G_0(G[0]), 
        .G(\G3[4] ) );
  XOR2X1 U1 ( .A(P[5]), .B(\G3[4] ), .Y(C[5]) );
  XOR2X1 U2 ( .A(P[4]), .B(G2[3]), .Y(C[4]) );
  XOR2X1 U3 ( .A(P[3]), .B(G2[2]), .Y(C[3]) );
  XOR2X1 U4 ( .A(P[2]), .B(G1[1]), .Y(C[2]) );
  XOR2X1 U5 ( .A(P[1]), .B(G[0]), .Y(C[1]) );
endmodule


module dadda_mult_4 ( a, b, c );
  input [3:0] a;
  input [3:0] b;
  output [6:0] c;

  wire   [3:0] layer0_row0;
  wire   [3:0] layer0_row1;
  wire   [3:0] layer0_row2;
  wire   [3:0] layer0_row3;
  wire   [6:0] layer1_row0;
  wire   [5:1] layer1_row1;
  wire   [5:2] layer1_row2;
  wire   [6:1] layer2_row0;
  wire   [6:1] layer2_row1;

  in_to_row_4 b0 ( .a(a), .b(b), .row0(layer0_row0), .row1(layer0_row1), 
        .row2(layer0_row2), .row3(layer0_row3) );
  stage_1_4 b1 ( .row0_i(layer0_row0), .row1_i(layer0_row1), .row2_i(
        layer0_row2), .row3_i(layer0_row3), .row0_o(layer1_row0), .row1_o(
        layer1_row1), .row2_o(layer1_row2) );
  stage_2_4 b2 ( .row0_i(layer1_row0), .row1_i(layer1_row1), .row2_i(
        layer1_row2), .row0_o({layer2_row0, c[0]}), .row1_o(layer2_row1) );
  adder_6 b3 ( .A(layer2_row0), .B(layer2_row1), .C(c[6:1]) );
endmodule


module top_4 ( clk, a_in, b_in, data_out );
  input [3:0] a_in;
  input [3:0] b_in;
  output [6:0] data_out;
  input clk;

  wire   [3:0] a;
  wire   [3:0] b;
  wire   [6:0] c;

  dadda_mult_4 dadda_mult_4 ( .a(a), .b(b), .c(c) );
  DFFPOSX1 \a_reg[3]  ( .D(a_in[3]), .CLK(clk), .Q(a[3]) );
  DFFPOSX1 \a_reg[2]  ( .D(a_in[2]), .CLK(clk), .Q(a[2]) );
  DFFPOSX1 \a_reg[1]  ( .D(a_in[1]), .CLK(clk), .Q(a[1]) );
  DFFPOSX1 \a_reg[0]  ( .D(a_in[0]), .CLK(clk), .Q(a[0]) );
  DFFPOSX1 \b_reg[3]  ( .D(b_in[3]), .CLK(clk), .Q(b[3]) );
  DFFPOSX1 \b_reg[2]  ( .D(b_in[2]), .CLK(clk), .Q(b[2]) );
  DFFPOSX1 \b_reg[1]  ( .D(b_in[1]), .CLK(clk), .Q(b[1]) );
  DFFPOSX1 \b_reg[0]  ( .D(b_in[0]), .CLK(clk), .Q(b[0]) );
  DFFPOSX1 \data_out_reg[6]  ( .D(c[6]), .CLK(clk), .Q(data_out[6]) );
  DFFPOSX1 \data_out_reg[5]  ( .D(c[5]), .CLK(clk), .Q(data_out[5]) );
  DFFPOSX1 \data_out_reg[4]  ( .D(c[4]), .CLK(clk), .Q(data_out[4]) );
  DFFPOSX1 \data_out_reg[3]  ( .D(c[3]), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \data_out_reg[2]  ( .D(c[2]), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \data_out_reg[1]  ( .D(c[1]), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \data_out_reg[0]  ( .D(c[0]), .CLK(clk), .Q(data_out[0]) );
endmodule

