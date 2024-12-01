module half_adder (
    input a,
    input b,
    output s,
    output c
);
    assign c = a & b;
    assign s = a ^ b;
endmodule

module full_adder (
    input a,
    input b,
    input c_i,
    output s,
    output c
);
    wire temp_s, temp_c, temp_c2;
    half_adder h0 (.a(a), .b(b), .s(temp_s), .c(temp_c));
    half_adder h1 (.a(temp_s), .b(c_i), .s(s), .c(temp_c2));
    assign c = temp_c | temp_c2;
endmodule

module blackCell(
    input P_1,
    input G_1,
    input P_0,
    input G_0,
    output P,
    output G
);

    assign P = P_1 & P_0;
    assign G = G_1 | (P_1 & G_0);

endmodule


module PG (
    input A,
    input B,
    output P,
    output G
);
    assign G = A & B;
    assign P = A ^ B;
    
endmodule

module adder_6 (
    input [5:0] A,
    input [5:0] B,
    output [5:0] C
);

wire [5:0] P, G;

PG propGen [5:0] (.A(A), .B(B), .P(P), .G(G));

wire [4:0] G1;
wire [4:0] P1;

assign G1[0] = G[0];
assign P1[0] = P[0];
blackCell layer_0 [4:1] (.G_1(G[4:1]), .P_1(P[4:1]), .G_0(G[3:0]), .P_0(P[3:0]), .P(P1[4:1]), .G(G1[4:1]));

wire [4:0] G2;
wire [4:0] P2;
assign G2[1:0] = G1[1:0];
assign P2[1:0] = P1[1:0];
blackCell layer_1 [4:2] (.G_1(G1[4:2]), .P_1(P1[4:2]), .G_0(G1[2:0]), .P_0(P1[2:0]), .P(P2[4:2]), .G(G2[4:2]));

wire [4:0] G3;
wire [4:0] P3;
assign G3[3:0] = G2[3:0];
assign P3[3:0] = P2[3:0];
blackCell layer_2 (.G_1(G2[4]), .P_1(P2[4]), .G_0(G2[0]), .P_0(P2[0]), .P(P3[4]), .G(G3[4]));

assign C = P[5:0] ^ {G3[4:0], 1'b0};

endmodule

module adder_14 (
    input [13:0] A,
    input [13:0] B,
    output [13:0] C
);

wire [13:0] P, G;

PG propGen [13:0] (.A(A), .B(B), .P(P), .G(G));

wire [12:0] G1;
wire [12:0] P1;

assign G1[0] = G[0];
assign P1[0] = P[0];
blackCell layer_0 [12:1] (.G_1(G[12:1]), .P_1(P[12:1]), .G_0(G[11:0]), .P_0(P[11:0]), .P(P1[12:1]), .G(G1[12:1]));

wire [12:0] G2;
wire [12:0] P2;
assign G2[1:0] = G1[1:0];
assign P2[1:0] = P1[1:0];
blackCell layer_1 [12:2] (.G_1(G1[12:2]), .P_1(P1[12:2]), .G_0(G1[10:0]), .P_0(P1[10:0]), .P(P2[12:2]), .G(G2[12:2]));

wire [12:0] G3;
wire [12:0] P3;
assign G3[3:0] = G2[3:0];
assign P3[3:0] = P2[3:0];
blackCell layer_2 [12:4] (.G_1(G2[12:4]), .P_1(P2[12:4]), .G_0(G2[8:0]), .P_0(P2[8:0]), .P(P3[12:4]), .G(G3[12:4]));

wire [12:0] G4;
wire [12:0] P4;
assign G4[7:0] = G3[7:0];
assign P4[7:0] = P3[7:0];
blackCell layer_3 [12:8] (.G_1(G3[12:8]), .P_1(P3[12:8]), .G_0(G3[4:0]), .P_0(P3[4:0]), .P(P4[12:8]), .G(G4[12:8]));
assign C = P[13:0] ^ {G4[12:0], 1'b0};

endmodule

module adder_30 (
    input [29:0] A,
    input [29:0] B,
    output [29:0] C
);

wire [29:0] P, G;

PG propGen [29:0] (.A(A), .B(B), .P(P), .G(G));

wire [28:0] G1;
wire [28:0] P1;

assign G1[0] = G[0];
assign P1[0] = P[0];
blackCell layer_0 [28:1] (.G_1(G[28:1]), .P_1(P[28:1]), .G_0(G[27:0]), .P_0(P[27:0]), .P(P1[28:1]), .G(G1[28:1]));

wire [28:0] G2;
wire [28:0] P2;
assign G2[1:0] = G1[1:0];
assign P2[1:0] = P1[1:0];
blackCell layer_1 [28:2] (.G_1(G1[28:2]), .P_1(P1[28:2]), .G_0(G1[26:0]), .P_0(P1[26:0]), .P(P2[28:2]), .G(G2[28:2]));

wire [28:0] G3;
wire [28:0] P3;
assign G3[3:0] = G2[3:0];
assign P3[3:0] = P2[3:0];
blackCell layer_2 [28:4] (.G_1(G2[28:4]), .P_1(P2[28:4]), .G_0(G2[24:0]), .P_0(P2[24:0]), .P(P3[28:4]), .G(G3[28:4]));

wire [28:0] G4;
wire [28:0] P4;
assign G4[7:0] = G3[7:0];
assign P4[7:0] = P3[7:0];
blackCell layer_3 [28:8] (.G_1(G3[28:8]), .P_1(P3[28:8]), .G_0(G3[20:0]), .P_0(P3[20:0]), .P(P4[28:8]), .G(G4[28:8]));

wire [28:0] G5;
wire [28:0] P5;
assign G5[15:0] = G4[15:0];
assign P5[15:0] = P4[15:0];
blackCell layer_4 [28:16] (.G_1(G4[28:16]), .P_1(P4[28:16]), .G_0(G4[12:0]), .P_0(P4[12:0]), .P(P5[28:16]), .G(G5[28:16]));

assign C = P[29:0] ^ {G5[28:0], 1'b0};

endmodule