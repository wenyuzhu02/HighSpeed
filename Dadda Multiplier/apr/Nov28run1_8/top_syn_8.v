/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : T-2022.03-SP2
// Date      : Thu Nov 28 21:55:19 2024
/////////////////////////////////////////////////////////////


module in_to_row_8 ( a, b, row0, row1, row2, row3, row4, row5, row6, row7 );
  input [7:0] a;
  input [7:0] b;
  output [7:0] row0;
  output [7:0] row1;
  output [7:0] row2;
  output [7:0] row3;
  output [7:0] row4;
  output [7:0] row5;
  output [7:0] row6;
  output [7:0] row7;


  AND2X1 U1 ( .A(b[2]), .B(a[7]), .Y(row2[7]) );
  AND2X1 U2 ( .A(b[3]), .B(a[6]), .Y(row3[6]) );
  AND2X1 U3 ( .A(b[3]), .B(a[4]), .Y(row3[4]) );
  AND2X1 U4 ( .A(b[1]), .B(a[7]), .Y(row1[7]) );
  AND2X1 U5 ( .A(b[0]), .B(a[7]), .Y(row0[7]) );
  AND2X1 U6 ( .A(b[0]), .B(a[6]), .Y(row0[6]) );
  AND2X1 U7 ( .A(b[3]), .B(a[5]), .Y(row3[5]) );
  AND2X1 U8 ( .A(b[2]), .B(a[5]), .Y(row2[5]) );
  AND2X1 U9 ( .A(b[1]), .B(a[5]), .Y(row1[5]) );
  AND2X1 U10 ( .A(b[2]), .B(a[6]), .Y(row2[6]) );
  AND2X1 U11 ( .A(b[4]), .B(a[4]), .Y(row4[4]) );
  AND2X1 U12 ( .A(b[4]), .B(a[5]), .Y(row4[5]) );
  AND2X1 U13 ( .A(b[1]), .B(a[6]), .Y(row1[6]) );
  AND2X1 U14 ( .A(b[3]), .B(a[7]), .Y(row3[7]) );
  AND2X1 U15 ( .A(a[4]), .B(b[7]), .Y(row7[4]) );
  AND2X1 U16 ( .A(b[6]), .B(a[0]), .Y(row6[0]) );
  AND2X1 U17 ( .A(b[5]), .B(a[3]), .Y(row5[3]) );
  AND2X1 U18 ( .A(b[4]), .B(a[3]), .Y(row4[3]) );
  AND2X1 U19 ( .A(b[6]), .B(a[5]), .Y(row6[5]) );
  AND2X1 U20 ( .A(b[6]), .B(a[1]), .Y(row6[1]) );
  AND2X1 U21 ( .A(b[3]), .B(a[3]), .Y(row3[3]) );
  AND2X1 U22 ( .A(b[0]), .B(a[5]), .Y(row0[5]) );
  AND2X1 U23 ( .A(b[3]), .B(a[2]), .Y(row3[2]) );
  AND2X1 U24 ( .A(b[0]), .B(a[4]), .Y(row0[4]) );
  AND2X1 U25 ( .A(b[4]), .B(a[6]), .Y(row4[6]) );
  AND2X1 U26 ( .A(b[2]), .B(a[4]), .Y(row2[4]) );
  AND2X1 U27 ( .A(a[0]), .B(b[7]), .Y(row7[0]) );
  AND2X1 U28 ( .A(b[4]), .B(a[2]), .Y(row4[2]) );
  AND2X1 U29 ( .A(b[1]), .B(a[4]), .Y(row1[4]) );
  AND2X1 U30 ( .A(b[4]), .B(a[1]), .Y(row4[1]) );
  AND2X1 U31 ( .A(b[1]), .B(a[3]), .Y(row1[3]) );
  AND2X1 U32 ( .A(a[2]), .B(b[7]), .Y(row7[2]) );
  AND2X1 U33 ( .A(b[5]), .B(a[4]), .Y(row5[4]) );
  AND2X1 U34 ( .A(b[5]), .B(a[5]), .Y(row5[5]) );
  AND2X1 U35 ( .A(a[1]), .B(b[7]), .Y(row7[1]) );
  AND2X1 U36 ( .A(b[5]), .B(a[6]), .Y(row5[6]) );
  AND2X1 U37 ( .A(b[5]), .B(a[0]), .Y(row5[0]) );
  AND2X1 U38 ( .A(b[4]), .B(a[0]), .Y(row4[0]) );
  AND2X1 U39 ( .A(a[3]), .B(b[7]), .Y(row7[3]) );
  AND2X1 U40 ( .A(a[5]), .B(b[7]), .Y(row7[5]) );
  AND2X1 U41 ( .A(b[0]), .B(a[3]), .Y(row0[3]) );
  AND2X1 U42 ( .A(b[5]), .B(a[2]), .Y(row5[2]) );
  AND2X1 U43 ( .A(b[5]), .B(a[1]), .Y(row5[1]) );
  AND2X1 U44 ( .A(b[6]), .B(a[3]), .Y(row6[3]) );
  AND2X1 U45 ( .A(b[2]), .B(a[2]), .Y(row2[2]) );
  AND2X1 U46 ( .A(b[6]), .B(a[2]), .Y(row6[2]) );
  AND2X1 U47 ( .A(b[6]), .B(a[4]), .Y(row6[4]) );
  AND2X1 U48 ( .A(b[4]), .B(a[7]), .Y(row4[7]) );
  AND2X1 U49 ( .A(b[1]), .B(a[2]), .Y(row1[2]) );
  AND2X1 U50 ( .A(b[6]), .B(a[6]), .Y(row6[6]) );
  AND2X1 U51 ( .A(a[6]), .B(b[7]), .Y(row7[6]) );
  AND2X1 U52 ( .A(b[2]), .B(a[1]), .Y(row2[1]) );
  AND2X1 U53 ( .A(b[3]), .B(a[1]), .Y(row3[1]) );
  AND2X1 U54 ( .A(b[0]), .B(a[2]), .Y(row0[2]) );
  AND2X1 U55 ( .A(b[2]), .B(a[3]), .Y(row2[3]) );
  AND2X1 U56 ( .A(b[3]), .B(a[0]), .Y(row3[0]) );
  AND2X1 U57 ( .A(b[5]), .B(a[7]), .Y(row5[7]) );
  AND2X1 U58 ( .A(b[1]), .B(a[1]), .Y(row1[1]) );
  AND2X1 U59 ( .A(b[6]), .B(a[7]), .Y(row6[7]) );
  AND2X1 U60 ( .A(b[0]), .B(a[1]), .Y(row0[1]) );
  AND2X1 U61 ( .A(b[2]), .B(a[0]), .Y(row2[0]) );
  AND2X1 U62 ( .A(b[1]), .B(a[0]), .Y(row1[0]) );
  AND2X1 U63 ( .A(b[7]), .B(a[7]), .Y(row7[7]) );
  AND2X1 U64 ( .A(b[0]), .B(a[0]), .Y(row0[0]) );
endmodule


module half_adder_0 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_69 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_70 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_0 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_70 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_69 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_75 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_76 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_65 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_66 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_33 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_66 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_65 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_67 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_68 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_34 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_68 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_67 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module stage_1_8 ( row0_i, row1_i, row2_i, row3_i, row4_i, row5_i, row6_i, 
        row7_i, row0_o, row1_o, row2_o, row3_o, row4_o, row5_o );
  input [7:0] row0_i;
  input [8:1] row1_i;
  input [9:2] row2_i;
  input [10:3] row3_i;
  input [11:4] row4_i;
  input [12:5] row5_i;
  input [13:6] row6_i;
  input [14:7] row7_i;
  output [14:0] row0_o;
  output [13:1] row1_o;
  output [12:2] row2_o;
  output [11:3] row3_o;
  output [10:4] row4_o;
  output [10:5] row5_o;
  wire   \row7_i[14] , \row7_i[13] , \row7_i[12] , \row7_i[11] , \row3_i[10] ,
         \row0_i[5] , \row0_i[4] , \row0_i[3] , \row0_i[2] , \row0_i[1] ,
         \row0_i[0] , \row6_i[13] , \row6_i[12] , \row6_i[11] , \row6_i[6] ,
         \row1_i[5] , \row1_i[4] , \row1_i[3] , \row1_i[2] , \row1_i[1] ,
         \row5_i[12] , \row5_i[11] , \row5_i[10] , \row5_i[9] , \row2_i[6] ,
         \row2_i[5] , \row2_i[4] , \row2_i[3] , \row2_i[2] , \row4_i[11] ,
         \row4_i[10] , \row6_i[7] , \row3_i[6] , \row3_i[5] , \row3_i[4] ,
         \row3_i[3] , \row7_i[10] , \row7_i[9] , \row7_i[8] , \row7_i[7] ,
         \row4_i[6] , \row4_i[5] , \row4_i[4] , \row6_i[10] , \row6_i[9] ,
         \row6_i[8] , \row5_i[7] , \row5_i[6] , \row5_i[5] ;
  assign row0_o[14] = \row7_i[14] ;
  assign \row7_i[14]  = row7_i[14];
  assign row0_o[13] = \row7_i[13] ;
  assign \row7_i[13]  = row7_i[13];
  assign row0_o[12] = \row7_i[12] ;
  assign \row7_i[12]  = row7_i[12];
  assign row0_o[11] = \row7_i[11] ;
  assign \row7_i[11]  = row7_i[11];
  assign row0_o[10] = \row3_i[10] ;
  assign \row3_i[10]  = row3_i[10];
  assign row0_o[5] = \row0_i[5] ;
  assign \row0_i[5]  = row0_i[5];
  assign row0_o[4] = \row0_i[4] ;
  assign \row0_i[4]  = row0_i[4];
  assign row0_o[3] = \row0_i[3] ;
  assign \row0_i[3]  = row0_i[3];
  assign row0_o[2] = \row0_i[2] ;
  assign \row0_i[2]  = row0_i[2];
  assign row0_o[1] = \row0_i[1] ;
  assign \row0_i[1]  = row0_i[1];
  assign row0_o[0] = \row0_i[0] ;
  assign \row0_i[0]  = row0_i[0];
  assign row1_o[13] = \row6_i[13] ;
  assign \row6_i[13]  = row6_i[13];
  assign row1_o[12] = \row6_i[12] ;
  assign \row6_i[12]  = row6_i[12];
  assign row1_o[11] = \row6_i[11] ;
  assign \row6_i[11]  = row6_i[11];
  assign row1_o[6] = \row6_i[6] ;
  assign \row6_i[6]  = row6_i[6];
  assign row1_o[5] = \row1_i[5] ;
  assign \row1_i[5]  = row1_i[5];
  assign row1_o[4] = \row1_i[4] ;
  assign \row1_i[4]  = row1_i[4];
  assign row1_o[3] = \row1_i[3] ;
  assign \row1_i[3]  = row1_i[3];
  assign row1_o[2] = \row1_i[2] ;
  assign \row1_i[2]  = row1_i[2];
  assign row1_o[1] = \row1_i[1] ;
  assign \row1_i[1]  = row1_i[1];
  assign row2_o[12] = \row5_i[12] ;
  assign \row5_i[12]  = row5_i[12];
  assign row2_o[11] = \row5_i[11] ;
  assign \row5_i[11]  = row5_i[11];
  assign row2_o[10] = \row5_i[10] ;
  assign \row5_i[10]  = row5_i[10];
  assign row2_o[9] = \row5_i[9] ;
  assign \row5_i[9]  = row5_i[9];
  assign row2_o[6] = \row2_i[6] ;
  assign \row2_i[6]  = row2_i[6];
  assign row2_o[5] = \row2_i[5] ;
  assign \row2_i[5]  = row2_i[5];
  assign row2_o[4] = \row2_i[4] ;
  assign \row2_i[4]  = row2_i[4];
  assign row2_o[3] = \row2_i[3] ;
  assign \row2_i[3]  = row2_i[3];
  assign row2_o[2] = \row2_i[2] ;
  assign \row2_i[2]  = row2_i[2];
  assign row3_o[11] = \row4_i[11] ;
  assign \row4_i[11]  = row4_i[11];
  assign row3_o[10] = \row4_i[10] ;
  assign \row4_i[10]  = row4_i[10];
  assign row3_o[7] = \row6_i[7] ;
  assign \row6_i[7]  = row6_i[7];
  assign row3_o[6] = \row3_i[6] ;
  assign \row3_i[6]  = row3_i[6];
  assign row3_o[5] = \row3_i[5] ;
  assign \row3_i[5]  = row3_i[5];
  assign row3_o[4] = \row3_i[4] ;
  assign \row3_i[4]  = row3_i[4];
  assign row3_o[3] = \row3_i[3] ;
  assign \row3_i[3]  = row3_i[3];
  assign row4_o[10] = \row7_i[10] ;
  assign \row7_i[10]  = row7_i[10];
  assign row4_o[9] = \row7_i[9] ;
  assign \row7_i[9]  = row7_i[9];
  assign row4_o[8] = \row7_i[8] ;
  assign \row7_i[8]  = row7_i[8];
  assign row4_o[7] = \row7_i[7] ;
  assign \row7_i[7]  = row7_i[7];
  assign row4_o[6] = \row4_i[6] ;
  assign \row4_i[6]  = row4_i[6];
  assign row4_o[5] = \row4_i[5] ;
  assign \row4_i[5]  = row4_i[5];
  assign row4_o[4] = \row4_i[4] ;
  assign \row4_i[4]  = row4_i[4];
  assign row5_o[10] = \row6_i[10] ;
  assign \row6_i[10]  = row6_i[10];
  assign row5_o[9] = \row6_i[9] ;
  assign \row6_i[9]  = row6_i[9];
  assign row5_o[8] = \row6_i[8] ;
  assign \row6_i[8]  = row6_i[8];
  assign row5_o[7] = \row5_i[7] ;
  assign \row5_i[7]  = row5_i[7];
  assign row5_o[6] = \row5_i[6] ;
  assign \row5_i[6]  = row5_i[6];
  assign row5_o[5] = \row5_i[5] ;
  assign \row5_i[5]  = row5_i[5];

  half_adder_0 h0 ( .a(row0_i[6]), .b(row1_i[6]), .s(row0_o[6]), .c(row1_o[7])
         );
  half_adder_76 h1 ( .a(row0_i[7]), .b(row1_i[7]), .s(row0_o[7]), .c(row1_o[8]) );
  half_adder_75 h2 ( .a(row1_i[8]), .b(row2_i[8]), .s(row0_o[8]), .c(row1_o[9]) );
  full_adder_0 f0 ( .a(row2_i[9]), .b(row3_i[9]), .c_i(row4_i[9]), .s(
        row0_o[9]), .c(row1_o[10]) );
  full_adder_34 f1 ( .a(row2_i[7]), .b(row3_i[7]), .c_i(row4_i[7]), .s(
        row2_o[7]), .c(row3_o[8]) );
  full_adder_33 f2 ( .a(row3_i[8]), .b(row4_i[8]), .c_i(row5_i[8]), .s(
        row2_o[8]), .c(row3_o[9]) );
endmodule


module half_adder_73 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_74 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_41 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_42 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_21 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_42 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_41 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_43 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_44 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_22 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_44 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_43 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_45 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_46 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_23 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_46 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_45 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_47 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_48 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_24 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_48 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_47 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_49 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_50 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_25 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_50 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_49 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_51 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_52 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_26 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_52 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_51 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_53 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_54 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_27 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_54 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_53 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_55 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_56 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_28 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_56 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_55 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_57 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_58 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_29 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_58 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_57 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_59 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_60 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_30 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_60 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_59 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_61 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_62 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_31 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_62 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_61 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_63 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_64 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_32 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_64 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_63 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module stage_2_8 ( row0_i, row1_i, row2_i, row3_i, row4_i, row5_i, row0_o, 
        row1_o, row2_o, row3_o );
  input [14:0] row0_i;
  input [13:1] row1_i;
  input [12:2] row2_i;
  input [11:3] row3_i;
  input [10:4] row4_i;
  input [10:5] row5_i;
  output [14:0] row0_o;
  output [13:1] row1_o;
  output [12:2] row2_o;
  output [12:3] row3_o;
  wire   \row0_i[14] , \row0_i[13] , \row0_i[12] , \row0_i[3] , \row0_i[2] ,
         \row0_i[1] , \row0_i[0] , \row1_i[13] , \row4_i[4] , \row1_i[3] ,
         \row1_i[2] , \row1_i[1] , \row1_i[12] , \row3_i[11] , \row2_i[4] ,
         \row2_i[3] , \row2_i[2] , \row2_i[12] , \row2_i[5] , \row3_i[4] ,
         \row3_i[3] ;
  assign row0_o[14] = \row0_i[14] ;
  assign \row0_i[14]  = row0_i[14];
  assign row0_o[13] = \row0_i[13] ;
  assign \row0_i[13]  = row0_i[13];
  assign row0_o[12] = \row0_i[12] ;
  assign \row0_i[12]  = row0_i[12];
  assign row0_o[3] = \row0_i[3] ;
  assign \row0_i[3]  = row0_i[3];
  assign row0_o[2] = \row0_i[2] ;
  assign \row0_i[2]  = row0_i[2];
  assign row0_o[1] = \row0_i[1] ;
  assign \row0_i[1]  = row0_i[1];
  assign row0_o[0] = \row0_i[0] ;
  assign \row0_i[0]  = row0_i[0];
  assign row1_o[13] = \row1_i[13] ;
  assign \row1_i[13]  = row1_i[13];
  assign row1_o[4] = \row4_i[4] ;
  assign \row4_i[4]  = row4_i[4];
  assign row1_o[3] = \row1_i[3] ;
  assign \row1_i[3]  = row1_i[3];
  assign row1_o[2] = \row1_i[2] ;
  assign \row1_i[2]  = row1_i[2];
  assign row1_o[1] = \row1_i[1] ;
  assign \row1_i[1]  = row1_i[1];
  assign row2_o[12] = \row1_i[12] ;
  assign \row1_i[12]  = row1_i[12];
  assign row2_o[11] = \row3_i[11] ;
  assign \row3_i[11]  = row3_i[11];
  assign row2_o[4] = \row2_i[4] ;
  assign \row2_i[4]  = row2_i[4];
  assign row2_o[3] = \row2_i[3] ;
  assign \row2_i[3]  = row2_i[3];
  assign row2_o[2] = \row2_i[2] ;
  assign \row2_i[2]  = row2_i[2];
  assign row3_o[12] = \row2_i[12] ;
  assign \row2_i[12]  = row2_i[12];
  assign row3_o[5] = \row2_i[5] ;
  assign \row2_i[5]  = row2_i[5];
  assign row3_o[4] = \row3_i[4] ;
  assign \row3_i[4]  = row3_i[4];
  assign row3_o[3] = \row3_i[3] ;
  assign \row3_i[3]  = row3_i[3];

  half_adder_74 h0 ( .a(row0_i[4]), .b(row1_i[4]), .s(row0_o[4]), .c(row1_o[5]) );
  half_adder_73 h1 ( .a(row0_i[5]), .b(row1_i[5]), .s(row0_o[5]), .c(row1_o[6]) );
  full_adder_32 \f0[6]  ( .a(row0_i[6]), .b(row1_i[6]), .c_i(row2_i[6]), .s(
        row0_o[6]), .c(row1_o[7]) );
  full_adder_31 \f0[7]  ( .a(row0_i[7]), .b(row1_i[7]), .c_i(row2_i[7]), .s(
        row0_o[7]), .c(row1_o[8]) );
  full_adder_30 \f0[8]  ( .a(row0_i[8]), .b(row1_i[8]), .c_i(row2_i[8]), .s(
        row0_o[8]), .c(row1_o[9]) );
  full_adder_29 \f0[9]  ( .a(row0_i[9]), .b(row1_i[9]), .c_i(row2_i[9]), .s(
        row0_o[9]), .c(row1_o[10]) );
  full_adder_28 \f0[10]  ( .a(row0_i[10]), .b(row1_i[10]), .c_i(row2_i[10]), 
        .s(row0_o[10]), .c(row1_o[11]) );
  full_adder_27 \f0[11]  ( .a(row0_i[11]), .b(row1_i[11]), .c_i(row2_i[11]), 
        .s(row0_o[11]), .c(row1_o[12]) );
  full_adder_26 \f1[5]  ( .a(row3_i[5]), .b(row4_i[5]), .c_i(row5_i[5]), .s(
        row2_o[5]), .c(row3_o[6]) );
  full_adder_25 \f1[6]  ( .a(row3_i[6]), .b(row4_i[6]), .c_i(row5_i[6]), .s(
        row2_o[6]), .c(row3_o[7]) );
  full_adder_24 \f1[7]  ( .a(row3_i[7]), .b(row4_i[7]), .c_i(row5_i[7]), .s(
        row2_o[7]), .c(row3_o[8]) );
  full_adder_23 \f1[8]  ( .a(row3_i[8]), .b(row4_i[8]), .c_i(row5_i[8]), .s(
        row2_o[8]), .c(row3_o[9]) );
  full_adder_22 \f1[9]  ( .a(row3_i[9]), .b(row4_i[9]), .c_i(row5_i[9]), .s(
        row2_o[9]), .c(row3_o[10]) );
  full_adder_21 \f1[10]  ( .a(row3_i[10]), .b(row4_i[10]), .c_i(row5_i[10]), 
        .s(row2_o[10]), .c(row3_o[11]) );
endmodule


module half_adder_72 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_23 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_24 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_12 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_24 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_23 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_25 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_26 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_13 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_26 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_25 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_27 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_28 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_14 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_28 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_27 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_29 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_30 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_15 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_30 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_29 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_31 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_32 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_16 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_32 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_31 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_33 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_34 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_17 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_34 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_33 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_35 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_36 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_18 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_36 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_35 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_37 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_38 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_19 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_38 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_37 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_39 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_40 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_20 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_40 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_39 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module stage_3_8 ( row0_i, row1_i, row2_i, row3_i, row0_o, row1_o, row2_o );
  input [14:0] row0_i;
  input [13:1] row1_i;
  input [12:2] row2_i;
  input [12:3] row3_i;
  output [14:0] row0_o;
  output [13:1] row1_o;
  output [13:2] row2_o;
  wire   \row0_i[14] , \row0_i[13] , \row0_i[2] , \row0_i[1] , \row0_i[0] ,
         \row2_i[3] , \row1_i[2] , \row1_i[1] , \row1_i[13] , \row3_i[12] ,
         \row3_i[11] , \row3_i[10] , \row3_i[9] , \row3_i[8] , \row3_i[7] ,
         \row3_i[6] , \row3_i[5] , \row3_i[4] , \row3_i[3] , \row2_i[2] ;
  assign row0_o[14] = \row0_i[14] ;
  assign \row0_i[14]  = row0_i[14];
  assign row0_o[13] = \row0_i[13] ;
  assign \row0_i[13]  = row0_i[13];
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
  assign row2_o[13] = \row1_i[13] ;
  assign \row1_i[13]  = row1_i[13];
  assign row2_o[12] = \row3_i[12] ;
  assign \row3_i[12]  = row3_i[12];
  assign row2_o[11] = \row3_i[11] ;
  assign \row3_i[11]  = row3_i[11];
  assign row2_o[10] = \row3_i[10] ;
  assign \row3_i[10]  = row3_i[10];
  assign row2_o[9] = \row3_i[9] ;
  assign \row3_i[9]  = row3_i[9];
  assign row2_o[8] = \row3_i[8] ;
  assign \row3_i[8]  = row3_i[8];
  assign row2_o[7] = \row3_i[7] ;
  assign \row3_i[7]  = row3_i[7];
  assign row2_o[6] = \row3_i[6] ;
  assign \row3_i[6]  = row3_i[6];
  assign row2_o[5] = \row3_i[5] ;
  assign \row3_i[5]  = row3_i[5];
  assign row2_o[4] = \row3_i[4] ;
  assign \row3_i[4]  = row3_i[4];
  assign row2_o[3] = \row3_i[3] ;
  assign \row3_i[3]  = row3_i[3];
  assign row2_o[2] = \row2_i[2] ;
  assign \row2_i[2]  = row2_i[2];

  half_adder_72 h0 ( .a(row0_i[3]), .b(row1_i[3]), .s(row0_o[3]), .c(row1_o[4]) );
  full_adder_20 \f0[4]  ( .a(row0_i[4]), .b(row1_i[4]), .c_i(row2_i[4]), .s(
        row0_o[4]), .c(row1_o[5]) );
  full_adder_19 \f0[5]  ( .a(row0_i[5]), .b(row1_i[5]), .c_i(row2_i[5]), .s(
        row0_o[5]), .c(row1_o[6]) );
  full_adder_18 \f0[6]  ( .a(row0_i[6]), .b(row1_i[6]), .c_i(row2_i[6]), .s(
        row0_o[6]), .c(row1_o[7]) );
  full_adder_17 \f0[7]  ( .a(row0_i[7]), .b(row1_i[7]), .c_i(row2_i[7]), .s(
        row0_o[7]), .c(row1_o[8]) );
  full_adder_16 \f0[8]  ( .a(row0_i[8]), .b(row1_i[8]), .c_i(row2_i[8]), .s(
        row0_o[8]), .c(row1_o[9]) );
  full_adder_15 \f0[9]  ( .a(row0_i[9]), .b(row1_i[9]), .c_i(row2_i[9]), .s(
        row0_o[9]), .c(row1_o[10]) );
  full_adder_14 \f0[10]  ( .a(row0_i[10]), .b(row1_i[10]), .c_i(row2_i[10]), 
        .s(row0_o[10]), .c(row1_o[11]) );
  full_adder_13 \f0[11]  ( .a(row0_i[11]), .b(row1_i[11]), .c_i(row2_i[11]), 
        .s(row0_o[11]), .c(row1_o[12]) );
  full_adder_12 \f0[12]  ( .a(row0_i[12]), .b(row1_i[12]), .c_i(row2_i[12]), 
        .s(row0_o[12]), .c(row1_o[13]) );
endmodule


module half_adder_71 ( a, b, s, c );
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


module full_adder_3 ( a, b, c_i, s, c );
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


module half_adder_8 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_4 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_8 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_7 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_9 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_10 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_5 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_10 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_9 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_11 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_12 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_6 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_12 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_11 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_13 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_14 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_7 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_14 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_13 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_15 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_16 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_8 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_16 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_15 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_17 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_18 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_9 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_18 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_17 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_19 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_20 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_10 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_20 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_19 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module half_adder_21 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module half_adder_22 ( a, b, s, c );
  input a, b;
  output s, c;


  XOR2X1 U2 ( .A(b), .B(a), .Y(s) );
  AND2X1 U1 ( .A(a), .B(b), .Y(c) );
endmodule


module full_adder_11 ( a, b, c_i, s, c );
  input a, b, c_i;
  output s, c;
  wire   temp_s, temp_c, temp_c2;

  half_adder_22 h0 ( .a(a), .b(b), .s(temp_s), .c(temp_c) );
  half_adder_21 h1 ( .a(temp_s), .b(c_i), .s(s), .c(temp_c2) );
  OR2X1 U1 ( .A(temp_c), .B(temp_c2), .Y(c) );
endmodule


module stage_4_8 ( row0_i, row1_i, row2_i, row0_o, row1_o );
  input [14:0] row0_i;
  input [13:1] row1_i;
  input [13:2] row2_i;
  output [14:0] row0_o;
  output [14:1] row1_o;
  wire   \row0_i[14] , \row0_i[1] , \row0_i[0] , \row2_i[2] , \row1_i[1] ;
  assign row0_o[14] = \row0_i[14] ;
  assign \row0_i[14]  = row0_i[14];
  assign row0_o[1] = \row0_i[1] ;
  assign \row0_i[1]  = row0_i[1];
  assign row0_o[0] = \row0_i[0] ;
  assign \row0_i[0]  = row0_i[0];
  assign row1_o[2] = \row2_i[2] ;
  assign \row2_i[2]  = row2_i[2];
  assign row1_o[1] = \row1_i[1] ;
  assign \row1_i[1]  = row1_i[1];

  half_adder_71 h0 ( .a(row0_i[2]), .b(row1_i[2]), .s(row0_o[2]), .c(row1_o[3]) );
  full_adder_11 \f0[3]  ( .a(row0_i[3]), .b(row1_i[3]), .c_i(row2_i[3]), .s(
        row0_o[3]), .c(row1_o[4]) );
  full_adder_10 \f0[4]  ( .a(row0_i[4]), .b(row1_i[4]), .c_i(row2_i[4]), .s(
        row0_o[4]), .c(row1_o[5]) );
  full_adder_9 \f0[5]  ( .a(row0_i[5]), .b(row1_i[5]), .c_i(row2_i[5]), .s(
        row0_o[5]), .c(row1_o[6]) );
  full_adder_8 \f0[6]  ( .a(row0_i[6]), .b(row1_i[6]), .c_i(row2_i[6]), .s(
        row0_o[6]), .c(row1_o[7]) );
  full_adder_7 \f0[7]  ( .a(row0_i[7]), .b(row1_i[7]), .c_i(row2_i[7]), .s(
        row0_o[7]), .c(row1_o[8]) );
  full_adder_6 \f0[8]  ( .a(row0_i[8]), .b(row1_i[8]), .c_i(row2_i[8]), .s(
        row0_o[8]), .c(row1_o[9]) );
  full_adder_5 \f0[9]  ( .a(row0_i[9]), .b(row1_i[9]), .c_i(row2_i[9]), .s(
        row0_o[9]), .c(row1_o[10]) );
  full_adder_4 \f0[10]  ( .a(row0_i[10]), .b(row1_i[10]), .c_i(row2_i[10]), 
        .s(row0_o[10]), .c(row1_o[11]) );
  full_adder_3 \f0[11]  ( .a(row0_i[11]), .b(row1_i[11]), .c_i(row2_i[11]), 
        .s(row0_o[11]), .c(row1_o[12]) );
  full_adder_2 \f0[12]  ( .a(row0_i[12]), .b(row1_i[12]), .c_i(row2_i[12]), 
        .s(row0_o[12]), .c(row1_o[13]) );
  full_adder_1 \f0[13]  ( .a(row0_i[13]), .b(row1_i[13]), .c_i(row2_i[13]), 
        .s(row0_o[13]), .c(row1_o[14]) );
endmodule


module PG_13 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U2 ( .A(B), .B(A), .Y(P) );
  AND2X1 U1 ( .A(A), .B(B), .Y(G) );
endmodule


module blackCell_36 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n2, n1;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n2) );
  BUFX2 U1 ( .A(n2), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
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
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
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
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module blackCell_5 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module blackCell_6 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_7 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_8 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_9 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_10 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_11 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module blackCell_12 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module blackCell_13 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module blackCell_14 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module blackCell_15 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_16 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module blackCell_17 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_18 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module blackCell_19 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_20 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_21 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_22 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_23 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_24 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module blackCell_25 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
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


module blackCell_26 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module blackCell_27 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module blackCell_28 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module blackCell_29 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_30 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_31 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module blackCell_32 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module blackCell_33 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  INVX1 U2 ( .A(n1), .Y(G) );
  AND2X1 U4 ( .A(P_1), .B(P_0), .Y(P) );
endmodule


module blackCell_34 ( P_1, G_1, P_0, G_0, P, G );
  input P_1, G_1, P_0, G_0;
  output P, G;
  wire   n1, n3;

  AOI21X1 U3 ( .A(G_0), .B(P_1), .C(G_1), .Y(n3) );
  BUFX2 U1 ( .A(n3), .Y(n1) );
  AND2X1 U2 ( .A(P_1), .B(P_0), .Y(P) );
  INVX1 U4 ( .A(n1), .Y(G) );
endmodule


module blackCell_35 ( P_1, G_1, P_0, G_0, P, G );
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


module PG_5 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U2 ( .A(B), .B(A), .Y(P) );
  AND2X1 U1 ( .A(A), .B(B), .Y(G) );
endmodule


module PG_6 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U2 ( .A(B), .B(A), .Y(P) );
  AND2X1 U1 ( .A(A), .B(B), .Y(G) );
endmodule


module PG_7 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U2 ( .A(B), .B(A), .Y(P) );
  AND2X1 U1 ( .A(A), .B(B), .Y(G) );
endmodule


module PG_8 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U2 ( .A(B), .B(A), .Y(P) );
  AND2X1 U1 ( .A(A), .B(B), .Y(G) );
endmodule


module PG_9 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U2 ( .A(B), .B(A), .Y(P) );
  AND2X1 U1 ( .A(A), .B(B), .Y(G) );
endmodule


module PG_10 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U2 ( .A(B), .B(A), .Y(P) );
  AND2X1 U1 ( .A(A), .B(B), .Y(G) );
endmodule


module PG_11 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U2 ( .A(B), .B(A), .Y(P) );
  AND2X1 U1 ( .A(A), .B(B), .Y(G) );
endmodule


module PG_12 ( A, B, P, G );
  input A, B;
  output P, G;


  XOR2X1 U2 ( .A(B), .B(A), .Y(P) );
  AND2X1 U1 ( .A(A), .B(B), .Y(G) );
endmodule


module adder_14 ( A, B, C );
  input [13:0] A;
  input [13:0] B;
  output [13:0] C;

  wire   [13:1] P;
  wire   [13:0] G;
  wire   [12:1] G1;
  wire   [12:1] P1;
  wire   [12:2] G2;
  wire   [12:2] P2;
  wire   [12:4] G3;
  wire   [12:4] P3;
  wire   [12:8] G4;

  PG_13 \propGen[0]  ( .A(A[0]), .B(B[0]), .P(C[0]), .G(G[0]) );
  PG_12 \propGen[1]  ( .A(A[1]), .B(B[1]), .P(P[1]), .G(G[1]) );
  PG_11 \propGen[2]  ( .A(A[2]), .B(B[2]), .P(P[2]), .G(G[2]) );
  PG_10 \propGen[3]  ( .A(A[3]), .B(B[3]), .P(P[3]), .G(G[3]) );
  PG_9 \propGen[4]  ( .A(A[4]), .B(B[4]), .P(P[4]), .G(G[4]) );
  PG_8 \propGen[5]  ( .A(A[5]), .B(B[5]), .P(P[5]), .G(G[5]) );
  PG_7 \propGen[6]  ( .A(A[6]), .B(B[6]), .P(P[6]), .G(G[6]) );
  PG_6 \propGen[7]  ( .A(A[7]), .B(B[7]), .P(P[7]), .G(G[7]) );
  PG_5 \propGen[8]  ( .A(A[8]), .B(B[8]), .P(P[8]), .G(G[8]) );
  PG_4 \propGen[9]  ( .A(A[9]), .B(B[9]), .P(P[9]), .G(G[9]) );
  PG_3 \propGen[10]  ( .A(A[10]), .B(B[10]), .P(P[10]), .G(G[10]) );
  PG_2 \propGen[11]  ( .A(A[11]), .B(B[11]), .P(P[11]), .G(G[11]) );
  PG_1 \propGen[12]  ( .A(A[12]), .B(B[12]), .P(P[12]), .G(G[12]) );
  PG_0 \propGen[13]  ( .A(A[13]), .B(B[13]), .P(P[13]) );
  blackCell_36 \layer_0[1]  ( .P_1(P[1]), .G_1(G[1]), .P_0(C[0]), .G_0(G[0]), 
        .P(P1[1]), .G(G1[1]) );
  blackCell_35 \layer_0[2]  ( .P_1(P[2]), .G_1(G[2]), .P_0(P[1]), .G_0(G[1]), 
        .P(P1[2]), .G(G1[2]) );
  blackCell_34 \layer_0[3]  ( .P_1(P[3]), .G_1(G[3]), .P_0(P[2]), .G_0(G[2]), 
        .P(P1[3]), .G(G1[3]) );
  blackCell_33 \layer_0[4]  ( .P_1(P[4]), .G_1(G[4]), .P_0(P[3]), .G_0(G[3]), 
        .P(P1[4]), .G(G1[4]) );
  blackCell_32 \layer_0[5]  ( .P_1(P[5]), .G_1(G[5]), .P_0(P[4]), .G_0(G[4]), 
        .P(P1[5]), .G(G1[5]) );
  blackCell_31 \layer_0[6]  ( .P_1(P[6]), .G_1(G[6]), .P_0(P[5]), .G_0(G[5]), 
        .P(P1[6]), .G(G1[6]) );
  blackCell_30 \layer_0[7]  ( .P_1(P[7]), .G_1(G[7]), .P_0(P[6]), .G_0(G[6]), 
        .P(P1[7]), .G(G1[7]) );
  blackCell_29 \layer_0[8]  ( .P_1(P[8]), .G_1(G[8]), .P_0(P[7]), .G_0(G[7]), 
        .P(P1[8]), .G(G1[8]) );
  blackCell_28 \layer_0[9]  ( .P_1(P[9]), .G_1(G[9]), .P_0(P[8]), .G_0(G[8]), 
        .P(P1[9]), .G(G1[9]) );
  blackCell_27 \layer_0[10]  ( .P_1(P[10]), .G_1(G[10]), .P_0(P[9]), .G_0(G[9]), .P(P1[10]), .G(G1[10]) );
  blackCell_26 \layer_0[11]  ( .P_1(P[11]), .G_1(G[11]), .P_0(P[10]), .G_0(
        G[10]), .P(P1[11]), .G(G1[11]) );
  blackCell_0 \layer_0[12]  ( .P_1(P[12]), .G_1(G[12]), .P_0(P[11]), .G_0(
        G[11]), .P(P1[12]), .G(G1[12]) );
  blackCell_25 \layer_1[2]  ( .P_1(P1[2]), .G_1(G1[2]), .P_0(C[0]), .G_0(G[0]), 
        .P(P2[2]), .G(G2[2]) );
  blackCell_24 \layer_1[3]  ( .P_1(P1[3]), .G_1(G1[3]), .P_0(P1[1]), .G_0(
        G1[1]), .P(P2[3]), .G(G2[3]) );
  blackCell_23 \layer_1[4]  ( .P_1(P1[4]), .G_1(G1[4]), .P_0(P1[2]), .G_0(
        G1[2]), .P(P2[4]), .G(G2[4]) );
  blackCell_22 \layer_1[5]  ( .P_1(P1[5]), .G_1(G1[5]), .P_0(P1[3]), .G_0(
        G1[3]), .P(P2[5]), .G(G2[5]) );
  blackCell_21 \layer_1[6]  ( .P_1(P1[6]), .G_1(G1[6]), .P_0(P1[4]), .G_0(
        G1[4]), .P(P2[6]), .G(G2[6]) );
  blackCell_20 \layer_1[7]  ( .P_1(P1[7]), .G_1(G1[7]), .P_0(P1[5]), .G_0(
        G1[5]), .P(P2[7]), .G(G2[7]) );
  blackCell_19 \layer_1[8]  ( .P_1(P1[8]), .G_1(G1[8]), .P_0(P1[6]), .G_0(
        G1[6]), .P(P2[8]), .G(G2[8]) );
  blackCell_18 \layer_1[9]  ( .P_1(P1[9]), .G_1(G1[9]), .P_0(P1[7]), .G_0(
        G1[7]), .P(P2[9]), .G(G2[9]) );
  blackCell_17 \layer_1[10]  ( .P_1(P1[10]), .G_1(G1[10]), .P_0(P1[8]), .G_0(
        G1[8]), .P(P2[10]), .G(G2[10]) );
  blackCell_16 \layer_1[11]  ( .P_1(P1[11]), .G_1(G1[11]), .P_0(P1[9]), .G_0(
        G1[9]), .P(P2[11]), .G(G2[11]) );
  blackCell_15 \layer_1[12]  ( .P_1(P1[12]), .G_1(G1[12]), .P_0(P1[10]), .G_0(
        G1[10]), .P(P2[12]), .G(G2[12]) );
  blackCell_14 \layer_2[4]  ( .P_1(P2[4]), .G_1(G2[4]), .P_0(C[0]), .G_0(G[0]), 
        .P(P3[4]), .G(G3[4]) );
  blackCell_13 \layer_2[5]  ( .P_1(P2[5]), .G_1(G2[5]), .P_0(P1[1]), .G_0(
        G1[1]), .G(G3[5]) );
  blackCell_12 \layer_2[6]  ( .P_1(P2[6]), .G_1(G2[6]), .P_0(P2[2]), .G_0(
        G2[2]), .G(G3[6]) );
  blackCell_11 \layer_2[7]  ( .P_1(P2[7]), .G_1(G2[7]), .P_0(P2[3]), .G_0(
        G2[3]), .G(G3[7]) );
  blackCell_10 \layer_2[8]  ( .P_1(P2[8]), .G_1(G2[8]), .P_0(P2[4]), .G_0(
        G2[4]), .P(P3[8]), .G(G3[8]) );
  blackCell_9 \layer_2[9]  ( .P_1(P2[9]), .G_1(G2[9]), .P_0(P2[5]), .G_0(G2[5]), .P(P3[9]), .G(G3[9]) );
  blackCell_8 \layer_2[10]  ( .P_1(P2[10]), .G_1(G2[10]), .P_0(P2[6]), .G_0(
        G2[6]), .P(P3[10]), .G(G3[10]) );
  blackCell_7 \layer_2[11]  ( .P_1(P2[11]), .G_1(G2[11]), .P_0(P2[7]), .G_0(
        G2[7]), .P(P3[11]), .G(G3[11]) );
  blackCell_6 \layer_2[12]  ( .P_1(P2[12]), .G_1(G2[12]), .P_0(P2[8]), .G_0(
        G2[8]), .P(P3[12]), .G(G3[12]) );
  blackCell_5 \layer_3[8]  ( .P_1(P3[8]), .G_1(G3[8]), .P_0(C[0]), .G_0(G[0]), 
        .G(G4[8]) );
  blackCell_4 \layer_3[9]  ( .P_1(P3[9]), .G_1(G3[9]), .P_0(P1[1]), .G_0(G1[1]), .G(G4[9]) );
  blackCell_3 \layer_3[10]  ( .P_1(P3[10]), .G_1(G3[10]), .P_0(P2[2]), .G_0(
        G2[2]), .G(G4[10]) );
  blackCell_2 \layer_3[11]  ( .P_1(P3[11]), .G_1(G3[11]), .P_0(P2[3]), .G_0(
        G2[3]), .G(G4[11]) );
  blackCell_1 \layer_3[12]  ( .P_1(P3[12]), .G_1(G3[12]), .P_0(P3[4]), .G_0(
        G3[4]), .G(G4[12]) );
  XOR2X1 U1 ( .A(P[9]), .B(G4[8]), .Y(C[9]) );
  XOR2X1 U2 ( .A(P[8]), .B(G3[7]), .Y(C[8]) );
  XOR2X1 U3 ( .A(P[7]), .B(G3[6]), .Y(C[7]) );
  XOR2X1 U4 ( .A(P[6]), .B(G3[5]), .Y(C[6]) );
  XOR2X1 U5 ( .A(P[5]), .B(G3[4]), .Y(C[5]) );
  XOR2X1 U6 ( .A(P[4]), .B(G2[3]), .Y(C[4]) );
  XOR2X1 U7 ( .A(P[3]), .B(G2[2]), .Y(C[3]) );
  XOR2X1 U8 ( .A(P[2]), .B(G1[1]), .Y(C[2]) );
  XOR2X1 U9 ( .A(P[1]), .B(G[0]), .Y(C[1]) );
  XOR2X1 U10 ( .A(P[13]), .B(G4[12]), .Y(C[13]) );
  XOR2X1 U11 ( .A(P[12]), .B(G4[11]), .Y(C[12]) );
  XOR2X1 U12 ( .A(P[11]), .B(G4[10]), .Y(C[11]) );
  XOR2X1 U13 ( .A(P[10]), .B(G4[9]), .Y(C[10]) );
endmodule


module dadda_mult_8 ( a, b, c );
  input [7:0] a;
  input [7:0] b;
  output [14:0] c;

  wire   [7:0] layer0_row0;
  wire   [7:0] layer0_row1;
  wire   [7:0] layer0_row2;
  wire   [7:0] layer0_row3;
  wire   [7:0] layer0_row4;
  wire   [7:0] layer0_row5;
  wire   [7:0] layer0_row6;
  wire   [7:0] layer0_row7;
  wire   [14:0] layer1_row0;
  wire   [13:1] layer1_row1;
  wire   [12:2] layer1_row2;
  wire   [11:3] layer1_row3;
  wire   [10:4] layer1_row4;
  wire   [10:5] layer1_row5;
  wire   [14:0] layer2_row0;
  wire   [13:1] layer2_row1;
  wire   [12:2] layer2_row2;
  wire   [12:3] layer2_row3;
  wire   [14:0] layer3_row0;
  wire   [13:1] layer3_row1;
  wire   [13:2] layer3_row2;
  wire   [14:1] layer4_row0;
  wire   [14:1] layer4_row1;

  in_to_row_8 in_to_row_8 ( .a(a), .b(b), .row0(layer0_row0), .row1(
        layer0_row1), .row2(layer0_row2), .row3(layer0_row3), .row4(
        layer0_row4), .row5(layer0_row5), .row6(layer0_row6), .row7(
        layer0_row7) );
  stage_1_8 stage_1_8 ( .row0_i(layer0_row0), .row1_i(layer0_row1), .row2_i(
        layer0_row2), .row3_i(layer0_row3), .row4_i(layer0_row4), .row5_i(
        layer0_row5), .row6_i(layer0_row6), .row7_i(layer0_row7), .row0_o(
        layer1_row0), .row1_o(layer1_row1), .row2_o(layer1_row2), .row3_o(
        layer1_row3), .row4_o(layer1_row4), .row5_o(layer1_row5) );
  stage_2_8 stage_2_8 ( .row0_i(layer1_row0), .row1_i(layer1_row1), .row2_i(
        layer1_row2), .row3_i(layer1_row3), .row4_i(layer1_row4), .row5_i(
        layer1_row5), .row0_o(layer2_row0), .row1_o(layer2_row1), .row2_o(
        layer2_row2), .row3_o(layer2_row3) );
  stage_3_8 stage_3_8 ( .row0_i(layer2_row0), .row1_i(layer2_row1), .row2_i(
        layer2_row2), .row3_i(layer2_row3), .row0_o(layer3_row0), .row1_o(
        layer3_row1), .row2_o(layer3_row2) );
  stage_4_8 stage_4_8 ( .row0_i(layer3_row0), .row1_i(layer3_row1), .row2_i(
        layer3_row2), .row0_o({layer4_row0, c[0]}), .row1_o(layer4_row1) );
  adder_14 adder_14 ( .A(layer4_row0), .B(layer4_row1), .C(c[14:1]) );
endmodule


module top_8 ( clk, a_in, b_in, data_out );
  input [7:0] a_in;
  input [7:0] b_in;
  output [14:0] data_out;
  input clk;

  wire   [7:0] a;
  wire   [7:0] b;
  wire   [14:0] c;

  dadda_mult_8 dadda_mult_8 ( .a(a), .b(b), .c(c) );
  DFFPOSX1 \a_reg[7]  ( .D(a_in[7]), .CLK(clk), .Q(a[7]) );
  DFFPOSX1 \a_reg[6]  ( .D(a_in[6]), .CLK(clk), .Q(a[6]) );
  DFFPOSX1 \a_reg[5]  ( .D(a_in[5]), .CLK(clk), .Q(a[5]) );
  DFFPOSX1 \a_reg[4]  ( .D(a_in[4]), .CLK(clk), .Q(a[4]) );
  DFFPOSX1 \a_reg[3]  ( .D(a_in[3]), .CLK(clk), .Q(a[3]) );
  DFFPOSX1 \a_reg[2]  ( .D(a_in[2]), .CLK(clk), .Q(a[2]) );
  DFFPOSX1 \a_reg[1]  ( .D(a_in[1]), .CLK(clk), .Q(a[1]) );
  DFFPOSX1 \a_reg[0]  ( .D(a_in[0]), .CLK(clk), .Q(a[0]) );
  DFFPOSX1 \b_reg[7]  ( .D(b_in[7]), .CLK(clk), .Q(b[7]) );
  DFFPOSX1 \b_reg[6]  ( .D(b_in[6]), .CLK(clk), .Q(b[6]) );
  DFFPOSX1 \b_reg[5]  ( .D(b_in[5]), .CLK(clk), .Q(b[5]) );
  DFFPOSX1 \b_reg[4]  ( .D(b_in[4]), .CLK(clk), .Q(b[4]) );
  DFFPOSX1 \b_reg[3]  ( .D(b_in[3]), .CLK(clk), .Q(b[3]) );
  DFFPOSX1 \b_reg[2]  ( .D(b_in[2]), .CLK(clk), .Q(b[2]) );
  DFFPOSX1 \b_reg[1]  ( .D(b_in[1]), .CLK(clk), .Q(b[1]) );
  DFFPOSX1 \b_reg[0]  ( .D(b_in[0]), .CLK(clk), .Q(b[0]) );
  DFFPOSX1 \data_out_reg[14]  ( .D(c[14]), .CLK(clk), .Q(data_out[14]) );
  DFFPOSX1 \data_out_reg[13]  ( .D(c[13]), .CLK(clk), .Q(data_out[13]) );
  DFFPOSX1 \data_out_reg[12]  ( .D(c[12]), .CLK(clk), .Q(data_out[12]) );
  DFFPOSX1 \data_out_reg[11]  ( .D(c[11]), .CLK(clk), .Q(data_out[11]) );
  DFFPOSX1 \data_out_reg[10]  ( .D(c[10]), .CLK(clk), .Q(data_out[10]) );
  DFFPOSX1 \data_out_reg[9]  ( .D(c[9]), .CLK(clk), .Q(data_out[9]) );
  DFFPOSX1 \data_out_reg[8]  ( .D(c[8]), .CLK(clk), .Q(data_out[8]) );
  DFFPOSX1 \data_out_reg[7]  ( .D(c[7]), .CLK(clk), .Q(data_out[7]) );
  DFFPOSX1 \data_out_reg[6]  ( .D(c[6]), .CLK(clk), .Q(data_out[6]) );
  DFFPOSX1 \data_out_reg[5]  ( .D(c[5]), .CLK(clk), .Q(data_out[5]) );
  DFFPOSX1 \data_out_reg[4]  ( .D(c[4]), .CLK(clk), .Q(data_out[4]) );
  DFFPOSX1 \data_out_reg[3]  ( .D(c[3]), .CLK(clk), .Q(data_out[3]) );
  DFFPOSX1 \data_out_reg[2]  ( .D(c[2]), .CLK(clk), .Q(data_out[2]) );
  DFFPOSX1 \data_out_reg[1]  ( .D(c[1]), .CLK(clk), .Q(data_out[1]) );
  DFFPOSX1 \data_out_reg[0]  ( .D(c[0]), .CLK(clk), .Q(data_out[0]) );
endmodule

