`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 03:40:11 PM
// Design Name: 
// Module Name: Approx_4bit
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


module Approx_4bit(
    X, Y, P
    );
    input [3:0] X, Y;
    output [3:0] P;
    
    wire G11, G21, G31, G41;
    wire G12, G22, G32;
    and a1(G11, X[3], Y[0]);
    and a2(G21, X[3], Y[1]);
    and a3(G31, X[3], Y[2]);
    and a4(G41, X[3], Y[3]);
    and a5(G12, X[2], Y[0]);
    and a6(G22, X[1], Y[1]);
    and a7(G32, X[0], Y[2]);

    wire S11,S21,S22,S31,S32,S33;
    wire C11, C21, C22, C31, C32, C33;
    wire C_HA, C42;
    //multiplier parts, x,y,top_left,top,sum,carry
    multiplier_cell m11(X[2], Y[1], G11, G12, S11, C11);
    multiplier_cell m21(X[2], Y[2], G21, C11, S21, C21);
    multiplier_cell m22(X[1], Y[2], S11, G22, S22, C22);
    multiplier_cell m31(X[2], Y[3], G31, C21, S31, C31);
    multiplier_cell m32(X[1], Y[3], S21, G22, S32, C32);
    multiplier_cell m33(X[0], Y[3], S22, G32, S33, C33);

    //last row
    HalfAdder H51(C33, S32, P[0], C_HA);
    FullAdder F52(C_HA, C32, S31, P[1], C42);
    FullAdder F51(C42, C31, G41, P[2], P[3]);
    
    
endmodule
