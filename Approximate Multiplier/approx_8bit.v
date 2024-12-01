`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2024 02:20:34 PM
// Design Name: 
// Module Name: approx_8bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module approx_8bit(X, Y, P);
    input [7:0] X, Y;
    output [7:0] P;
    
    wire [8:1] G1;
    and a1(G1[1], X[7], Y[0]);
    and a2(G1[2], X[7], Y[1]);
    and a3(G1[3], X[7], Y[2]);
    and a4(G1[4], X[7], Y[3]);
    and a5(G1[5], X[7], Y[4]);
    and a6(G1[6], X[7], Y[5]);
    and a7(G1[7], X[7], Y[6]);
    and a8(G1[8], X[7], Y[7]);

    wire [7:1] Gd;

    and a9(Gd[1], X[6], Y[0]);
    and a10(Gd[2], X[5], Y[1]);
    and a11(Gd[3], X[4], Y[2]);
    and a12(Gd[4], X[3], Y[3]);
    and a13(Gd[5], X[2], Y[4]);
    and a14(Gd[6], X[1], Y[5]);
    and a15(Gd[7], X[0], Y[6]);

    wire S1, C1;
    wire [2:1] S2, C2;
    wire [3:1] S3, C3;
    wire [4:1] S4, C4;
    wire [5:1] S5, C5;
    wire [6:1] S6, C6;
    wire [7:1] S7, C7;

    //first row
    multiplier_cell m11(X[6], Y[1], G1[1], Gd[1], S1, C1);

    //second row
    multiplier_cell m21(X[6], Y[2], G1[2], C1, S2[1], C2[1]);
    multiplier_cell m22(X[5], Y[2], S1, Gd[2], S2[2], C2[2]);

    //third row
    genvar i;
    generate
        for (i=0; i < 3; i=i+1) begin
            if (i == 0) begin
                multiplier_cell m31(X[6], Y[3], G1[3], C2[1], S3[i+1], C3[i+1]);
            end
            else if (i == 2) begin
                multiplier_cell m33(X[4], Y[3], S2[2], Gd[3], S3[3], C3[3]);
            end
            else begin
                multiplier_cell m3i(X[6-i], Y[3], S2[i], C2[i+1], S3[i+1], C3[i+1]);
            end
        end
    endgenerate
    
    //fourth row
    generate
        for (i=0; i < 4; i=i+1) begin
            if (i == 0) begin
                multiplier_cell m41(X[6], Y[4], G1[4], C3[1], S4[i+1], C4[i+1]);
            end
            else if (i == 3) begin
                multiplier_cell m44(X[3], Y[4], S3[3], Gd[4], S4[4], C4[4]);
            end
            else begin
                multiplier_cell m4i(X[6-i], Y[4], S3[i], C3[i+1], S4[i+1], C4[i+1]);
            end
        end
    endgenerate

    //fifth row
    generate
        for (i=0; i < 5; i=i+1) begin
            if (i == 0) begin
                multiplier_cell m51(X[6], Y[5], G1[5], C4[1], S5[i+1], C5[i+1]);
            end
            else if (i == 4) begin
                multiplier_cell m55(X[2], Y[5], S4[4], Gd[5], S5[5], C5[5]);
            end
            else begin
                multiplier_cell m5i(X[6-i], Y[5], S4[i], C4[i+1], S5[i+1], C5[i+1]);
            end
        end
    endgenerate

    //sixth row
    generate
        for (i=0; i < 6; i=i+1) begin
            if (i == 0) begin
                multiplier_cell m61(X[6], Y[6], G1[6], C5[1], S6[i+1], C6[i+1]);
            end
            else if (i == 5) begin
                multiplier_cell m66(X[1], Y[6], S5[5], Gd[6], S6[6], C6[6]);
            end
            else begin
                multiplier_cell m6i(X[6-i], Y[6], S5[i], C5[i+1], S6[i+1], C6[i+1]);
            end
        end
    endgenerate

    //seventh row
    generate
        for (i=0; i < 7; i=i+1) begin
            if (i == 0) begin
                multiplier_cell m71(X[6], Y[7], G1[7], C6[1], S7[i+1], C7[i+1]);
            end
            else if (i == 6) begin
                multiplier_cell m77(X[0], Y[7], S6[6], Gd[7], S7[7], C7[7]);
            end
            else begin
                multiplier_cell m7i(X[6-i], Y[7], S6[i], C6[i+1], S7[i+1], C7[i+1]);
            end
        end
    endgenerate
    wire [6:1] C8;
    //wrap up
    HalfAdder H87(C7[7], S7[6], P[0], C8[1]);
    FullAdder F86(C8[1], C7[6], S7[5], P[1], C8[2]);
    FullAdder F85(C8[2], C7[5], S7[4], P[2], C8[3]);
    FullAdder F84(C8[3], C7[4], S7[3], P[3], C8[4]);
    FullAdder F83(C8[4], C7[3], S7[2], P[4], C8[5]);
    FullAdder F82(C8[5], C7[2], S7[1], P[5], C8[6]);
    FullAdder F81(C8[6], C7[1], G1[7], P[6], P[7]);
    
    endmodule
