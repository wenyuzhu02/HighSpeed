`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/28/2024 04:37:48 PM
// Design Name: 
// Module Name: approx_16_b
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


module approx_16_b(
    X, Y, P
    );
    input [15:0] X, Y;
    output [15:0] P;
    
    wire [16:1] G1;
    and a1(G1[1], X[15], Y[0]);
    and a2(G1[2], X[15], Y[1]);
    and a3(G1[3], X[15], Y[2]);
    and a4(G1[4], X[15], Y[3]);
    and a5(G1[5], X[15], Y[4]);
    and a6(G1[6], X[15], Y[5]);
    and a7(G1[7], X[15], Y[6]);
    and a8(G1[8], X[15], Y[7]);
    and a9(G1[9], X[15], Y[8]);
    and a10(G1[10], X[15], Y[9]);
    and a11(G1[11], X[15], Y[10]);
    and a12(G1[12], X[15], Y[11]);
    and a13(G1[13], X[15], Y[12]);
    and a14(G1[14], X[15], Y[13]);
    and a15(G1[15], X[15], Y[14]);
    and a16(G1[16], X[15], Y[15]);

    wire [15:1] Gd;
    and a17(Gd[1], X[14], Y[0]);
    and a18(Gd[2], X[13], Y[1]);
    and a19(Gd[3], X[12], Y[2]);
    and a20(Gd[4], X[11], Y[3]);
    and a21(Gd[5], X[10], Y[4]);
    and a22(Gd[6], X[9], Y[5]);
    and a23(Gd[7], X[8], Y[6]);
    and a24(Gd[8], X[7], Y[7]);
    and a25(Gd[9], X[6], Y[8]);
    and a26(Gd[10], X[5], Y[9]);
    and a27(Gd[11], X[4], Y[10]);
    and a28(Gd[12], X[3], Y[11]);
    and a29(Gd[13], X[2], Y[12]);
    and a30(Gd[14], X[1], Y[13]);
    and a31(Gd[15], X[0], Y[14]);

    wire S1, C1;
    wire [2:1] S2, C2;
    wire [3:1] S3, C3;
    wire [4:1] S4, C4;
    wire [5:1] S5, C5;
    wire [6:1] S6, C6;
    wire [7:1] S7, C7;
    wire [8:1] S8, C8;
    wire [9:1] S9, C9;
    wire [10:1] S10, C10;
    wire [11:1] S11, C11;
    wire [12:1] S12, C12;
    wire [13:1] S13, C13;
    wire [14:1] S14, C14;
    wire [15:1] S15, C15;

    //first row
    multiplier_cell m11(X[14], Y[1], G1[1], Gd[1], S1, C1);

    //second row
    multiplier_cell m21(X[14], Y[2], G1[2], C1, S2[1], C2[1]);
    multiplier_cell m22(X[13], Y[2], S1, Gd[2], S2[2], C2[2]);

    //third row
    genvar i;
    generate
        for (i=0; i < 3; i=i+1) begin
            if (i == 0) begin
                multiplier_cell m31(X[14], Y[3], G1[3], C2[1], S3[i+1], C3[i+1]);
            end
            else if (i == 2) begin
                multiplier_cell m33(X[12], Y[3], S2[2], Gd[3], S3[3], C3[3]);
            end
            else begin
                multiplier_cell m3i(X[14-i], Y[3], S2[i], C2[i+1], S3[i+1], C3[i+1]);
            end
        end
    endgenerate

    //fourth row
    generate
        for (i=0; i < 4; i=i+1) begin
            if (i == 0) begin
                multiplier_cell m41(X[14], Y[4], G1[4], C3[1], S4[i+1], C4[i+1]);
            end
            else if (i == 3) begin
                multiplier_cell m44(X[11], Y[4], S3[3], Gd[4], S4[4], C4[4]);
            end
            else begin
                multiplier_cell m4i(X[14-i], Y[4], S3[i], C3[i+1], S4[i+1], C4[i+1]);
            end
        end
    endgenerate

    //fifth row
    generate
        for (i=0; i < 5; i=i+1) begin
            if (i == 0) begin
                multiplier_cell m51(X[14], Y[5], G1[5], C4[1], S5[i+1], C5[i+1]);
            end
            else if (i == 4) begin
                multiplier_cell m55(X[10], Y[5], S4[4], Gd[5], S5[5], C5[5]);
            end
            else begin
                multiplier_cell m5i(X[14-i], Y[5], S4[i], C4[i+1], S5[i+1], C5[i+1]);
            end
        end
    endgenerate

    //sixth row
    generate
        for (i=0; i < 6; i=i+1) begin
            if (i == 0) begin
                multiplier_cell m61(X[14], Y[6], G1[6], C5[1], S6[i+1], C6[i+1]);
            end
            else if (i == 5) begin
                multiplier_cell m66(X[9], Y[6], S5[5], Gd[6], S6[6], C6[6]);
            end
            else begin
                multiplier_cell m6i(X[14-i], Y[6], S5[i], C5[i+1], S6[i+1], C6[i+1]);
            end
        end
    endgenerate

    //seventh row
    generate
        for (i=0; i < 7; i=i+1) begin
            if (i == 0) begin
                multiplier_cell m71(X[14], Y[7], G1[7], C6[1], S7[i+1], C7[i+1]);
            end
            else if (i == 6) begin
                multiplier_cell m77(X[8], Y[7], S6[6], Gd[7], S7[7], C7[7]);
            end
            else begin
                multiplier_cell m7i(X[14-i], Y[7], S6[i], C6[i+1], S7[i+1], C7[i+1]);
            end
        end
    endgenerate

    //eighth row
    generate
        for (i=0; i < 8; i=i+1) begin
            if (i == 0) begin
                multiplier_cell m81(X[14], Y[8], G1[8], C7[1], S8[i+1], C8[i+1]);
            end
            else if (i == 7) begin
                multiplier_cell m88(X[7], Y[8], S7[7], Gd[8], S8[8], C8[8]);
            end
            else begin
                multiplier_cell m8i(X[14-i], Y[8], S7[i], C7[i+1], S8[i+1], C8[i+1]);
            end
        end
    endgenerate

    //ninth row
    generate
        for (i=0; i < 9; i=i+1) begin
            if (i == 0) begin
                multiplier_cell m91(X[14], Y[9], G1[9], C8[1], S9[i+1], C9[i+1]);
            end
            else if (i == 8) begin
                multiplier_cell m99(X[6], Y[9], S8[8], Gd[9], S9[9], C9[9]);
            end
            else begin
                multiplier_cell m9i(X[14-i], Y[9], S8[i], C8[i+1], S9[i+1], C9[i+1]);
            end
        end
    endgenerate

    //tenth row
    generate
        for (i=0; i < 10; i=i+1) begin
            if (i == 0) begin
                multiplier_cell m101(X[14], Y[10], G1[10], C9[1], S10[i+1], C10[i+1]);
            end
            else if (i == 9) begin
                multiplier_cell m1010(X[5], Y[10], S9[9], Gd[10], S10[10], C10[10]);
            end
            else begin
                multiplier_cell m10i(X[14-i], Y[10], S9[i], C9[i+1], S10[i+1], C10[i+1]);
            end
        end
    endgenerate

    //eleventh row
    generate
        for (i=0; i < 11; i=i+1) begin
            if (i == 0) begin
                multiplier_cell m111(X[14], Y[11], G1[11], C10[1], S11[i+1], C11[i+1]);
            end
            else if (i == 10) begin
                multiplier_cell m1110(X[4], Y[11], S10[10], Gd[11], S11[11], C11[11]);
            end
            else begin
                multiplier_cell m11i(X[14-i], Y[11], S10[i], C10[i+1], S11[i+1], C11[i+1]);
            end
        end
    endgenerate

    //twelfth row
    generate
        for (i=0; i < 12; i=i+1) begin
            if (i == 0) begin
                multiplier_cell m121(X[14], Y[12], G1[12], C11[1], S12[i+1], C12[i+1]);
            end
            else if (i == 11) begin
                multiplier_cell m1211(X[3], Y[12], S11[11], Gd[12], S12[12], C12[12]);
            end
            else begin
                multiplier_cell m12i(X[14-i], Y[12], S11[i], C11[i+1], S12[i+1], C12[i+1]);
            end
        end
    endgenerate

    //thirteenth row
    generate
        for (i=0; i < 13; i=i+1) begin
            if (i == 0) begin
                multiplier_cell m131(X[14], Y[13], G1[13], C12[1], S13[i+1], C13[i+1]);
            end
            else if (i == 12) begin
                multiplier_cell m1312(X[2], Y[13], S12[12], Gd[13], S13[13], C13[13]);
            end
            else begin
                multiplier_cell m13i(X[14-i], Y[13], S12[i], C12[i+1], S13[i+1], C13[i+1]);
            end
        end
    endgenerate

    //fourteenth row
    generate
        for (i=0; i < 14; i=i+1) begin
            if (i == 0) begin
                multiplier_cell m141(X[14], Y[14], G1[14], C13[1], S14[i+1], C14[i+1]);
            end
            else if (i == 13) begin
                multiplier_cell m1413(X[1], Y[14], S13[13], Gd[14], S14[14], C14[14]);
            end
            else begin
                multiplier_cell m14i(X[14-i], Y[14], S13[i], C13[i+1], S14[i+1], C14[i+1]);
            end
        end
    endgenerate

    //fifteenth row
    generate
        for (i=0; i < 15; i=i+1) begin
            if (i == 0) begin
                multiplier_cell m151(X[14], Y[15], G1[15], C14[1], S15[i+1], C15[i+1]);
            end
            else if (i == 14) begin
                multiplier_cell m1514(X[0], Y[15], S14[14], Gd[15], S15[15], C15[15]);
            end
            else begin
                multiplier_cell m15i(X[14-i], Y[15], S14[i], C14[i+1], S15[i+1], C15[i+1]);
            end
        end
    endgenerate

    wire [15:1] C16;
    //last_row
    HalfAdder H15(S15[14], C15[15], P[0], C16[1]);
    FullAdder F14(S15[13], C15[14], C16[1], P[1], C16[2]);
    FullAdder F13(S15[12], C15[13], C16[2], P[2], C16[3]);
    FullAdder F12(S15[11], C15[12], C16[3], P[3], C16[4]);
    FullAdder F11(S15[10], C15[11], C16[4], P[4], C16[5]);
    FullAdder F10(S15[9], C15[10], C16[5], P[5], C16[6]);
    FullAdder F9(S15[8], C15[9], C16[6], P[6], C16[7]);
    FullAdder F8(S15[7], C15[8], C16[7], P[7], C16[8]);
    FullAdder F7(S15[6], C15[7], C16[8], P[8], C16[9]);
    FullAdder F6(S15[5], C15[6], C16[9], P[9], C16[10]);
    FullAdder F5(S15[4], C15[5], C16[10], P[10], C16[11]);
    FullAdder F4(S15[3], C15[4], C16[11], P[11], C16[12]);
    FullAdder F3(S15[2], C15[3], C16[12], P[12], C16[13]);
    FullAdder F2(S15[1], C15[2], C16[13], P[13], C16[14]);
    FullAdder F1(G1[16], C15[1], C16[14], P[14], P[15]);

endmodule
