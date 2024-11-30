module in_to_row_16 (
    input [15:0] a,
    input [15:0] b,
    output [15:0] row0,
    output [15:0] row1,
    output [15:0] row2,
    output [15:0] row3,
    output [15:0] row4,
    output [15:0] row5,
    output [15:0] row6,
    output [15:0] row7,
    output [15:0] row8,
    output [15:0] row9,
    output [15:0] row10,
    output [15:0] row11,
    output [15:0] row12,
    output [15:0] row13,
    output [15:0] row14,
    output [15:0] row15
);

assign row0 = {16{b[0]}} & a;
assign row1 = {16{b[1]}} & a;
assign row2 = {16{b[2]}} & a;
assign row3 = {16{b[3]}} & a;
assign row4 = {16{b[4]}} & a;
assign row5 = {16{b[5]}} & a;
assign row6 = {16{b[6]}} & a;
assign row7 = {16{b[7]}} & a;
assign row8 = {16{b[8]}} & a;
assign row9 = {16{b[9]}} & a;
assign row10 = {16{b[10]}} & a;
assign row11 = {16{b[11]}} & a;
assign row12 = {16{b[12]}} & a;
assign row13 = {16{b[13]}} & a;
assign row14 = {16{b[14]}} & a;
assign row15 = {16{b[15]}} & a;
endmodule

module stage_1_16 (
    input [15:0] row0_i,
    input [16:1] row1_i,
    input [17:2] row2_i,
    input [18:3] row3_i,
    input [19:4] row4_i,
    input [20:5] row5_i,
    input [21:6] row6_i,
    input [22:7] row7_i,
    input [23:8] row8_i,
    input [24:9] row9_i,
    input [25:10] row10_i,
    input [26:11] row11_i,
    input [27:12] row12_i,
    input [28:13] row13_i,
    input [29:14] row14_i,
    input [30:15] row15_i,
    output [30:0] row0_o,
    output [29:1] row1_o,
    output [28:2] row2_o,
    output [27:3] row3_o,
    output [26:4] row4_o,
    output [25:5] row5_o,
    output [24:6] row6_o,
    output [23:7] row7_o,
    output [22:8] row8_o,
    output [21:9] row9_o,
    output [20:10] row10_o,
    output [19:11] row11_o,
    output [19:12] row12_o
);

//Row 0 Adders
half_adder h0 (.a(row0_i[13]), .b(row1_i[13]), .s(row0_o[13]), .c(row1_o[14]));
full_adder f0 [18:14] (.a(row3_i[18:14]), .b(row4_i[18:14]), .c_i(row5_i[18:14]), .s(row0_o[18:14]), .c(row1_o[19:15]));

//Row 1 Adders
half_adder h1 (.a(row0_i[14]), .b(row1_i[14]), .s(row2_o[14]), .c(row3_o[15]));
full_adder f1 [17:15] (.a(row6_i[17:15]), .b(row7_i[17:15]), .c_i(row8_i[17:15]), .s(row2_o[17:15]), .c(row3_o[18:16]));

//Row 2 Adders
half_adder h2 (.a(row0_i[15]), .b(row1_i[15]), .s(row4_o[15]), .c(row5_o[16]));
half_adder h3 (.a(row1_i[16]), .b(row2_i[16]), .s(row4_o[16]), .c(row5_o[17]));


assign row0_o[12:0] = row0_i[12:0];
assign row1_o[13:1] = {row13_i[13], row1_i[12:1]};
assign row2_o[13:2] = {row3_i[13:3], row2_i[2]};
assign row3_o[14:3] = row2_i[14:3];
assign row4_o[14:4] = {row6_i[14], row4_i[13:4]};
assign row5_o[15:5] = {row2_i[15], row7_i[14], row5_i[13:5]};
assign row6_o[24:6] = {row9_i[24:9], row6_i[8:6]};
assign row7_o[23:7] = {row10_i[23:14], row7_i[13:7]};
assign row8_o[22:8] = {row11_i[22:15], row8_i[14:8]};
assign row9_o[21:9] = {row12_i[21:14], row6_i[13:9]};
assign row10_o[20:10] = {row13_i[20:14], row10_i[13:10]};
assign row11_o[19:11] = {row15_i[19:15], row11_i[14:11]};
assign row12_o[19:12] = {row14_i[19:14], row12_i[13:12]};

assign row5_o[25:18] = {row12_i[25:22], row6_i[21:18]};
assign row4_o[26:17] = {row11_i[26:23], row7_i[22:18], row2_i[17]};
assign row3_o[27:19] = {row13_i[27:21], row5_i[20:19]};
assign row2_o[28:18] = {row13_i[28], row12_i[27:26], row10_i[25:24], row8_i[23:18]};
assign row1_o[29:20] = row14_i[29:20];
assign row0_o[30:19] = {row15_i[30:20], row4_i[19]};
endmodule

module stage_2_16 (
    input [30:0] row0_i,
    input [29:1] row1_i,
    input [28:2] row2_i,
    input [27:3] row3_i,
    input [26:4] row4_i,
    input [25:5] row5_i,
    input [24:6] row6_i,
    input [23:7] row7_i,
    input [22:8] row8_i,
    input [21:9] row9_i,
    input [20:10] row10_i,
    input [19:11] row11_i,
    input [19:12] row12_i,
    output [30:0] row0_o,
    output [29:1] row1_o,
    output [28:2] row2_o,
    output [27:3] row3_o,
    output [26:4] row4_o,
    output [25:5] row5_o,
    output [24:6] row6_o,
    output [23:7] row7_o,
    output [23:8] row8_o
);

//Row 0 Adders
half_adder h0 (.a(row0_i[9]), .b(row1_i[9]), .s(row0_o[9]), .c(row1_o[10]));
full_adder f0 [22:10] (.a(row0_i[22:10]), .b(row1_i[22:10]), .c_i(row2_i[22:10]), .s(row0_o[22:10]), .c(row1_o[23:11]));

//Row 1 Adders
half_adder h1 (.a(row3_i[10]), .b(row4_i[10]), .s(row2_o[10]), .c(row3_o[11]));
full_adder f1 [21:11] (.a(row3_i[21:11]), .b(row4_i[21:11]), .c_i(row5_i[21:11]), .s(row2_o[21:11]), .c(row3_o[22:12]));

//Row 2 Adders
half_adder h2 (.a(row6_i[11]), .b(row7_i[11]), .s(row4_o[11]), .c(row5_o[12]));
full_adder f2 [20:12] (.a(row6_i[20:12]), .b(row7_i[20:12]), .c_i(row8_i[20:12]), .s(row4_o[20:12]), .c(row5_o[21:13]));

//Row 3 Adders
half_adder h3 (.a(row9_i[12]), .b(row10_i[12]), .s(row6_o[12]), .c(row7_o[13]));
full_adder f3 [19:13] (.a(row9_i[19:13]), .b(row10_i[19:13]), .c_i(row11_i[19:13]), .s(row6_o[19:13]), .c(row7_o[20:14]));



assign row0_o[8:0] = row0_i[8:0];
assign row1_o[9:1] = {row9_i[9], row1_i[8:1]};
assign row2_o[9:2] = row2_i[9:2];
assign row3_o[10:3] = {row10_i[10], row3_i[9:3]};
assign row4_o[10:4] = {row9_i[10], row4_i[9:4]};
assign row5_o[11:5] = {row9_i[11], row5_i[10:5]};
assign row6_o[11:6] = {row10_i[11], row6_i[10:6]};
assign row7_o[12:7] = {row11_i[12:11], row7_i[10:7]};
assign row8_o[23:8] = {row7_i[23:21], row10_i[20], row12_i[19:12], row8_i[11:8]};

assign row7_o[23:21] = {row6_i[23:21]};
assign row6_o[24:20] = {row5_i[24:22], row9_i[21:20]};
assign row5_o[25:22] = row4_i[25:22];
assign row4_o[26:21] = {row4_i[26], row5_i[25], row6_i[24], row0_i[23], row8_i[22:21]};
assign row3_o[27:23] = row3_i[27:23];
assign row2_o[28:22] = {row2_i[28:23], row3_i[22]};
assign row1_o[29:24] = row1_i[29:24];
assign row0_o[30:23] = {row0_i[30:24], row1_i[23]};
endmodule

module stage_3_16 (
    input [30:0] row0_i,
    input [29:1] row1_i,
    input [28:2] row2_i,
    input [27:3] row3_i,
    input [26:4] row4_i,
    input [25:5] row5_i,
    input [24:6] row6_i,
    input [23:7] row7_i,
    input [23:8] row8_i,
    output [30:0] row0_o,
    output [29:1] row1_o,
    output [28:2] row2_o,
    output [27:3] row3_o,
    output [26:4] row4_o,
    output [26:5] row5_o
);

//Row 0 Adders
half_adder h0 (.a(row0_i[6]), .b(row1_i[6]), .s(row0_o[6]), .c(row1_o[7]));
full_adder f0 [25:7] (.a(row0_i[25:7]), .b(row1_i[25:7]), .c_i(row2_i[25:7]), .s(row0_o[25:7]), .c(row1_o[26:8]));

//Row 1 Adders
half_adder h1 (.a(row3_i[7]), .b(row4_i[7]), .s(row2_o[7]), .c(row3_o[8]));
full_adder f1 [24:8] (.a(row3_i[24:8]), .b(row4_i[24:8]), .c_i(row5_i[24:8]), .s(row2_o[24:8]), .c(row3_o[25:9]));

//Row 2 Adders
half_adder h2 (.a(row6_i[8]), .b(row7_i[8]), .s(row4_o[8]), .c(row5_o[9]));
full_adder f2 [23:9] (.a(row6_i[23:9]), .b(row7_i[23:9]), .c_i(row8_i[23:9]), .s(row4_o[23:9]), .c(row5_o[24:10]));



assign row0_o[5:0] = row0_i[5:0];
assign row1_o[6:1] = {row6_i[6], row1_i[5:1]};
assign row2_o[6:2] = row2_i[6:2];
assign row3_o[7:3] = {row6_i[7], row3_i[6:3]};
assign row4_o[7:4] = {row7_i[7], row4_i[6:4]};
assign row5_o[8:5] = {row8_i[8], row5_i[7:5]};
assign row5_o[26:25] = row4_i[26:25];
assign row4_o[26:24] = {row0_i[26], row5_i[25], row6_i[24]};
assign row3_o[27:26] = row3_i[27:26];
assign row2_o[28:25] = {row2_i[28:26], row3_i[25]};
assign row1_o[29:27] = row1_i[29:27];
assign row0_o[30:26] = {row0_i[30:27], row1_i[26]};
endmodule

module stage_4_16 (
    input [30:0] row0_i,
    input [29:1] row1_i,
    input [28:2] row2_i,
    input [27:3] row3_i,
    input [26:4] row4_i,
    input [26:5] row5_i,
    output [30:0] row0_o,
    output [29:1] row1_o,
    output [28:2] row2_o,
    output [28:3] row3_o
);

//Row 0 Adders
half_adder h0 (.a(row0_i[4]), .b(row1_i[4]), .s(row0_o[4]), .c(row1_o[5]));
full_adder f0 [27:5] (.a(row0_i[27:5]), .b(row1_i[27:5]), .c_i(row2_i[27:5]), .s(row0_o[27:5]), .c(row1_o[28:6]));

//Row 1 Adders
half_adder h1 (.a(row3_i[5]), .b(row4_i[5]), .s(row2_o[5]), .c(row3_o[6]));
full_adder f1 [26:6] (.a(row3_i[26:6]), .b(row4_i[26:6]), .c_i(row5_i[26:6]), .s(row2_o[26:6]), .c(row3_o[27:7]));


assign row0_o[3:0] = row0_i[3:0];
assign row1_o[4:1] = {row4_i[4], row1_i[3:1]};
assign row2_o[4:2] = row2_i[4:2];
assign row3_o[5:3] = {row5_i[5], row3_i[4:3]};

assign row3_o[28] = row2_i[28];
assign row2_o[28:27] = {row1_i[28], row3_i[27]};
assign row1_o[29] = row1_i[29];
assign row0_o[30:28] = row0_i[30:28];
endmodule

module stage_5_16 (
    input [30:0] row0_i,
    input [29:1] row1_i,
    input [28:2] row2_i,
    input [28:3] row3_i,
    output [30:0] row0_o,
    output [29:1] row1_o,
    output [29:2] row2_o
);

//Row 0 Adders
half_adder h0 (.a(row0_i[3]), .b(row1_i[3]), .s(row0_o[3]), .c(row1_o[4]));
full_adder f0 [28:4] (.a(row0_i[28:4]), .b(row1_i[28:4]), .c_i(row2_i[28:4]), .s(row0_o[28:4]), .c(row1_o[29:5]));

assign row0_o[2:0] = row0_i[2:0];
assign row1_o[3:1] = {row2_i[3], row1_i[2:1]};
assign row2_o[29:2] = {row1_i[29], row3_i[28:3], row2_i[2]};
assign row0_o[30:29] = row0_i[30:29];
endmodule

module stage_6_16 (
    input [30:0] row0_i,
    input [29:1] row1_i,
    input [29:2] row2_i,
    output [30:0] row0_o,
    output [30:1] row1_o
);

//Row 0 Adders
half_adder h0 (.a(row0_i[2]), .b(row1_i[2]), .s(row0_o[2]), .c(row1_o[3]));
full_adder f0 [29:3] (.a(row0_i[29:3]), .b(row1_i[29:3]), .c_i(row2_i[29:3]), .s(row0_o[29:3]), .c(row1_o[30:4]));

assign row0_o[1:0] = row0_i[1:0];
assign row1_o[2:1] = {row2_i[2], row1_i[1]};
assign row0_o[30] = row0_i[30];
endmodule

module dadda_mult_16 (
    input [15:0] a,
    input [15:0] b,
    output [30:0] c
);

wire [15:0] layer0_row0, layer0_row1, layer0_row2, layer0_row3;
wire [15:0] layer0_row4, layer0_row5, layer0_row6, layer0_row7;
wire [15:0] layer0_row8, layer0_row9, layer0_row10, layer0_row11;
wire [15:0] layer0_row12, layer0_row13, layer0_row14, layer0_row15;
in_to_row_16 in_to_row_16(
    .a(a),
    .b(b),
    .row0(layer0_row0),
    .row1(layer0_row1),
    .row2(layer0_row2),
    .row3(layer0_row3),
    .row4(layer0_row4),
    .row5(layer0_row5),
    .row6(layer0_row6),
    .row7(layer0_row7),
    .row8(layer0_row8),
    .row9(layer0_row9),
    .row10(layer0_row10),
    .row11(layer0_row11),
    .row12(layer0_row12),
    .row13(layer0_row13),
    .row14(layer0_row14),
    .row15(layer0_row15)
);

wire [30:0]  layer1_row0;
wire [29:1]  layer1_row1;
wire [28:2]  layer1_row2;
wire [27:3]  layer1_row3;
wire [26:4]  layer1_row4;
wire [25:5]  layer1_row5;
wire [24:6]  layer1_row6;
wire [23:7]  layer1_row7;
wire [22:8]  layer1_row8;
wire [21:9]  layer1_row9;
wire [20:10] layer1_row10;
wire [19:11] layer1_row11;
wire [19:12] layer1_row12;
stage_1_16 stage_1_16(
    .row0_i(layer0_row0),
    .row1_i(layer0_row1),
    .row2_i(layer0_row2),
    .row3_i(layer0_row3),
    .row4_i(layer0_row4),
    .row5_i(layer0_row5),
    .row6_i(layer0_row6),
    .row7_i(layer0_row7),
    .row8_i(layer0_row8),
    .row9_i(layer0_row9),
    .row10_i(layer0_row10),
    .row11_i(layer0_row11),
    .row12_i(layer0_row12),
    .row13_i(layer0_row13),
    .row14_i(layer0_row14),
    .row15_i(layer0_row15),
    .row0_o(layer1_row0),
    .row1_o(layer1_row1),
    .row2_o(layer1_row2),
    .row3_o(layer1_row3),
    .row4_o(layer1_row4),
    .row5_o(layer1_row5),
    .row6_o(layer1_row6),
    .row7_o(layer1_row7),
    .row8_o(layer1_row8),
    .row9_o(layer1_row9),
    .row10_o(layer1_row10),
    .row11_o(layer1_row11),
    .row12_o(layer1_row12)
);

wire [30:0] layer2_row0;
wire [29:1] layer2_row1;
wire [28:2] layer2_row2;
wire [27:3] layer2_row3;
wire [26:4] layer2_row4;
wire [25:5] layer2_row5;
wire [24:6] layer2_row6;
wire [23:7] layer2_row7;
wire [23:8] layer2_row8;
stage_2_16 stage_2_16(
    .row0_i(layer1_row0),
    .row1_i(layer1_row1),
    .row2_i(layer1_row2),
    .row3_i(layer1_row3),
    .row4_i(layer1_row4),
    .row5_i(layer1_row5),
    .row6_i(layer1_row6),
    .row7_i(layer1_row7),
    .row8_i(layer1_row8),
    .row9_i(layer1_row9),
    .row10_i(layer1_row10),
    .row11_i(layer1_row11),
    .row12_i(layer1_row12),
    .row0_o(layer2_row0),
    .row1_o(layer2_row1),
    .row2_o(layer2_row2),
    .row3_o(layer2_row3),
    .row4_o(layer2_row4),
    .row5_o(layer2_row5),
    .row6_o(layer2_row6),
    .row7_o(layer2_row7),
    .row8_o(layer2_row8)
);


wire [30:0] layer3_row0;
wire [29:1] layer3_row1;
wire [28:2] layer3_row2;
wire [27:3] layer3_row3;
wire [26:4] layer3_row4;
wire [26:5] layer3_row5;
stage_3_16 stage_3_16(
    .row0_i(layer2_row0),
    .row1_i(layer2_row1),
    .row2_i(layer2_row2),
    .row3_i(layer2_row3),
    .row4_i(layer2_row4),
    .row5_i(layer2_row5),
    .row6_i(layer2_row6),
    .row7_i(layer2_row7),
    .row8_i(layer2_row8),
    .row0_o(layer3_row0),
    .row1_o(layer3_row1),
    .row2_o(layer3_row2),
    .row3_o(layer3_row3),
    .row4_o(layer3_row4),
    .row5_o(layer3_row5)
);

wire [30:0] layer4_row0;
wire [29:1] layer4_row1;
wire [28:2] layer4_row2;
wire [28:3] layer4_row3;
stage_4_16 stage_4_16(
    .row0_i(layer3_row0),
    .row1_i(layer3_row1),
    .row2_i(layer3_row2),
    .row3_i(layer3_row3),
    .row4_i(layer3_row4),
    .row5_i(layer3_row5),
    .row0_o(layer4_row0),
    .row1_o(layer4_row1),
    .row2_o(layer4_row2),
    .row3_o(layer4_row3)
);

wire [30:0] layer5_row0;
wire [29:1] layer5_row1;
wire [29:2] layer5_row2;
stage_5_16 stage_5_16(
    .row0_i(layer4_row0),
    .row1_i(layer4_row1),
    .row2_i(layer4_row2),
    .row3_i(layer4_row3),
    .row0_o(layer5_row0),
    .row1_o(layer5_row1),
    .row2_o(layer5_row2)
);

wire [30:0] layer6_row0;
wire [30:1] layer6_row1;
stage_6_16 stage_6_16(
    .row0_i(layer5_row0),
    .row1_i(layer5_row1),
    .row2_i(layer5_row2),
    .row0_o(layer6_row0),
    .row1_o(layer6_row1)
);

adder_30 adder_30(
    .A(layer6_row0[30:1]),
    .B(layer6_row1),
    .C(c[30:1])
);

assign c[0] = layer6_row0[0];
endmodule