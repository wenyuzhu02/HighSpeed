module in_to_row_4 (
    input [3:0] a,
    input [3:0] b,
    output [3:0] row0,
    output [3:0] row1,
    output [3:0] row2,
    output [3:0] row3
);

assign row0 = {4{b[0]}} & a;
assign row1 = {4{b[1]}} & a;
assign row2 = {4{b[2]}} & a;
assign row3 = {4{b[3]}} & a;
endmodule

module stage_1_4 (
    input [3:0] row0_i,
    input [4:1] row1_i,
    input [5:2] row2_i,
    input [6:3] row3_i,
    output [6:0] row0_o,
    output [5:1] row1_o,
    output [5:2] row2_o
);

//Row 0 Adders
half_adder h0 (.a(row0_i[3]), .b(row1_i[3]), .s(row0_o[3]), .c(row1_o[4]));
half_adder h1 (.a(row1_i[4]), .b(row2_i[4]), .s(row0_o[4]), .c(row1_o[5]));

assign row0_o[2:0] = row0_i[2:0];
assign row1_o[3:1] = {row2_i[3], row1_i[2:1]};
assign row2_o[5:2] = {row2_i[5], row3_i[4:3], row2_i[2]};
assign row0_o[6:5] = row3_i[6:5];
endmodule

module stage_2_4 (
    input [6:0] row0_i,
    input [5:1] row1_i,
    input [5:2] row2_i,
    output [6:0] row0_o,
    output [6:1] row1_o
);

//Row 0 Adders
half_adder h0 (.a(row0_i[2]), .b(row1_i[2]), .s(row0_o[2]), .c(row1_o[3]));
full_adder f0 (.a(row0_i[3]), .b(row1_i[3]), .c_i(row2_i[3]), .s(row0_o[3]), .c(row1_o[4]));
full_adder f1 (.a(row0_i[4]), .b(row1_i[4]), .c_i(row2_i[4]), .s(row0_o[4]), .c(row1_o[5]));
full_adder f2 (.a(row0_i[5]), .b(row1_i[5]), .c_i(row2_i[5]), .s(row0_o[5]), .c(row1_o[6]));


assign row0_o[1:0] = row0_i[1:0];
assign row1_o[2:1] = {row2_i[2], row1_i[1]};
assign row0_o[6] = row0_i[6];
endmodule

module dadda_mult_4 (
    input [3:0] a,
    input [3:0] b,
    output [6:0] c
);

wire [3:0] layer0_row0, layer0_row1, layer0_row2, layer0_row3;
in_to_row_4 b0 (.a(a), .b(b), .row0(layer0_row0), .row1(layer0_row1), .row2(layer0_row2), .row3(layer0_row3));

wire [6:0] layer1_row0;
wire [5:1] layer1_row1;
wire [5:2] layer1_row2;
stage_1_4 b1(
    .row0_i(layer0_row0), 
    .row1_i(layer0_row1),
    .row2_i(layer0_row2),
    .row3_i(layer0_row3),
    .row0_o(layer1_row0),
    .row1_o(layer1_row1),
    .row2_o(layer1_row2)
    );

wire [6:0] layer2_row0;
wire [6:1] layer2_row1;
stage_2_4 b2(
    .row0_i(layer1_row0),
    .row1_i(layer1_row1),
    .row2_i(layer1_row2),
    .row0_o(layer2_row0),
    .row1_o(layer2_row1)
);

adder_6 b3(
    .A(layer2_row0[6:1]),
    .B(layer2_row1),
    .C(c[6:1])
);

assign c[0] = layer2_row0[0];
endmodule