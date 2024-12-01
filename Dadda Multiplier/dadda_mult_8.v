module in_to_row_8 (
    input [7:0] a,
    input [7:0] b,
    output [7:0] row0,
    output [7:0] row1,
    output [7:0] row2,
    output [7:0] row3,
    output [7:0] row4,
    output [7:0] row5,
    output [7:0] row6,
    output [7:0] row7
);

assign row0 = {8{b[0]}} & a;
assign row1 = {8{b[1]}} & a;
assign row2 = {8{b[2]}} & a;
assign row3 = {8{b[3]}} & a;
assign row4 = {8{b[4]}} & a;
assign row5 = {8{b[5]}} & a;
assign row6 = {8{b[6]}} & a;
assign row7 = {8{b[7]}} & a;
endmodule

module stage_1_8 (
    input [7:0] row0_i,
    input [8:1] row1_i,
    input [9:2] row2_i,
    input [10:3] row3_i,
    input [11:4] row4_i,
    input [12:5] row5_i,
    input [13:6] row6_i,
    input [14:7] row7_i,
    output [14:0] row0_o,
    output [13:1] row1_o,
    output [12:2] row2_o,
    output [11:3] row3_o,
    output [10:4] row4_o,
    output [10:5] row5_o
);

//Row 0 Adders
half_adder h0 (.a(row0_i[6]), .b(row1_i[6]), .s(row0_o[6]), .c(row1_o[7]));
half_adder h1 (.a(row0_i[7]), .b(row1_i[7]), .s(row0_o[7]), .c(row1_o[8]));
half_adder h2 (.a(row1_i[8]), .b(row2_i[8]), .s(row0_o[8]), .c(row1_o[9]));
full_adder f0 (.a(row2_i[9]), .b(row3_i[9]), .c_i(row4_i[9]), .s(row0_o[9]), .c(row1_o[10]));
full_adder f1 (.a(row2_i[7]), .b(row3_i[7]), .c_i(row4_i[7]), .s(row2_o[7]), .c(row3_o[8]));
full_adder f2 (.a(row3_i[8]), .b(row4_i[8]), .c_i(row5_i[8]), .s(row2_o[8]), .c(row3_o[9]));

assign row0_o[5:0] = row0_i[5:0];
assign row1_o[6:1] = {row6_i[6], row1_i[5:1]};
assign row2_o[6:2] = row2_i[6:2];
assign row3_o[7:3] = {row6_i[7], row3_i[6:3]};
assign row4_o[10:4] = {row7_i[10:7], row4_i[6:4]};
assign row5_o[10:5] = {row6_i[10:8], row5_i[7:5]};
assign row3_o[11:10] = row4_i[11:10];
assign row2_o[12:9] = row5_i[12:9];
assign row1_o[13:11] = row6_i[13:11];
assign row0_o[14:10] = {row7_i[14:11], row3_i[10]};
endmodule

module stage_2_8 (
    input [14:0] row0_i,
    input [13:1] row1_i,
    input [12:2] row2_i,
    input [11:3] row3_i,
    input [10:4] row4_i,
    input [10:5] row5_i,
    output [14:0] row0_o,
    output [13:1] row1_o,
    output [12:2] row2_o,
    output [12:3] row3_o
);

//Row 0 Adders
half_adder h0 (.a(row0_i[4]), .b(row1_i[4]), .s(row0_o[4]), .c(row1_o[5]));
half_adder h1 (.a(row0_i[5]), .b(row1_i[5]), .s(row0_o[5]), .c(row1_o[6]));
full_adder f0 [11:6] (.a(row0_i[11:6]), .b(row1_i[11:6]), .c_i(row2_i[11:6]), .s(row0_o[11:6]), .c(row1_o[12:7]));
full_adder f1 [10:5] (.a(row3_i[10:5]), .b(row4_i[10:5]), .c_i(row5_i[10:5]), .s(row2_o[10:5]), .c(row3_o[11:6]));



assign row0_o[3:0] = row0_i[3:0];
assign row1_o[4:1] = {row4_i[4], row1_i[3:1]};
assign row2_o[4:2] = row2_i[4:2];
assign row3_o[5:3] = {row2_i[5], row3_i[4:3]};
assign row2_o[11] = row3_i[11];
assign row3_o[12] = row2_i[12];
assign row2_o[12] = row1_i[12];
assign row1_o[13] = row1_i[13];
assign row0_o[14:12] = row0_i[14:12];
endmodule

module stage_3_8 (
    input [14:0] row0_i,
    input [13:1] row1_i,
    input [12:2] row2_i,
    input [12:3] row3_i,
    output [14:0] row0_o,
    output [13:1] row1_o,
    output [13:2] row2_o
);

//Row 0 Adders
half_adder h0 (.a(row0_i[3]), .b(row1_i[3]), .s(row0_o[3]), .c(row1_o[4]));
full_adder f0 [12:4] (.a(row0_i[12:4]), .b(row1_i[12:4]), .c_i(row2_i[12:4]), .s(row0_o[12:4]), .c(row1_o[13:5]));

assign row0_o[2:0] = row0_i[2:0];
assign row1_o[3:1] = {row2_i[3], row1_i[2:1]};
assign row2_o[13:2] = {row1_i[13], row3_i[12:3], row2_i[2]};
assign row0_o[14:13] = row0_i[14:13];
endmodule

module stage_4_8 (
    input [14:0] row0_i,
    input [13:1] row1_i,
    input [13:2] row2_i,
    output [14:0] row0_o,
    output [14:1] row1_o
);

//Row 0 Adders
half_adder h0 (.a(row0_i[2]), .b(row1_i[2]), .s(row0_o[2]), .c(row1_o[3]));
full_adder f0 [13:3] (.a(row0_i[13:3]), .b(row1_i[13:3]), .c_i(row2_i[13:3]), .s(row0_o[13:3]), .c(row1_o[14:4]));

assign row0_o[1:0] = row0_i[1:0];
assign row1_o[2:1] = {row2_i[2], row1_i[1]};
assign row0_o[14] = row0_i[14];
endmodule


module dadda_mult_8 (
    input [7:0] a,
    input [7:0] b,
    output [14:0] c
);

wire [7:0] layer0_row0, layer0_row1, layer0_row2, layer0_row3;
wire [7:0] layer0_row4, layer0_row5, layer0_row6, layer0_row7;
in_to_row_8 in_to_row_8(
    .a(a),
    .b(b),
    .row0(layer0_row0),
    .row1(layer0_row1),
    .row2(layer0_row2),
    .row3(layer0_row3),
    .row4(layer0_row4),
    .row5(layer0_row5),
    .row6(layer0_row6),
    .row7(layer0_row7)
);

wire [14:0] layer1_row0;
wire [13:1] layer1_row1;
wire [12:2] layer1_row2;
wire [11:3] layer1_row3;
wire [10:4] layer1_row4;
wire [10:5] layer1_row5;
stage_1_8 stage_1_8(
    .row0_i(layer0_row0),
    .row1_i(layer0_row1),
    .row2_i(layer0_row2),
    .row3_i(layer0_row3),
    .row4_i(layer0_row4),
    .row5_i(layer0_row5),
    .row6_i(layer0_row6),
    .row7_i(layer0_row7),
    .row0_o(layer1_row0),
    .row1_o(layer1_row1),
    .row2_o(layer1_row2),
    .row3_o(layer1_row3),
    .row4_o(layer1_row4),
    .row5_o(layer1_row5)
);

wire [14:0] layer2_row0;
wire [13:1] layer2_row1;
wire [12:2] layer2_row2;
wire [12:3] layer2_row3;
stage_2_8 stage_2_8(
    .row0_i(layer1_row0),
    .row1_i(layer1_row1),
    .row2_i(layer1_row2),
    .row3_i(layer1_row3),
    .row4_i(layer1_row4),
    .row5_i(layer1_row5),
    .row0_o(layer2_row0),
    .row1_o(layer2_row1),
    .row2_o(layer2_row2),
    .row3_o(layer2_row3)
);

wire [14:0] layer3_row0;
wire [13:1] layer3_row1;
wire [13:2] layer3_row2;
stage_3_8 stage_3_8(
    .row0_i(layer2_row0),
    .row1_i(layer2_row1),
    .row2_i(layer2_row2),
    .row3_i(layer2_row3),
    .row0_o(layer3_row0),
    .row1_o(layer3_row1),
    .row2_o(layer3_row2)
);

wire [14:0] layer4_row0;
wire [14:1] layer4_row1;
stage_4_8 stage_4_8(
    .row0_i(layer3_row0),
    .row1_i(layer3_row1),
    .row2_i(layer3_row2),
    .row0_o(layer4_row0),
    .row1_o(layer4_row1)
);

adder_14 adder_14(
    .A(layer4_row0[14:1]),
    .B(layer4_row1),
    .C(c[14:1])
);

assign c[0] = layer4_row0[0];
endmodule