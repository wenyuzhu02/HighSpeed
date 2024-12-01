`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 02:54:43 PM
// Design Name: 
// Module Name: HalfAdder
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


module HalfAdder(a, b, sum, carry
    );
    input a, b;
    output sum, carry;
    
    wire firstand, firstor, secondand, firstnot;
    and a1(firstand,a,b);
    or o1(firstor,a,b);
    not n1(firstnot,firstand);
    and a2(secondand,firstor, firstnot);
    assign sum = secondand;
    assign carry = firstand;
endmodule
