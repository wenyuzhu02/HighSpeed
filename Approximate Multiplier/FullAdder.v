`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 03:05:28 PM
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
    a,b,carry_in, sum,carry_out
    );
    input a, b, carry_in;
    output sum, carry_out;
    
    wire sum1;
    
    wire firstand, firstor, secondand, firstnot;
    and a1(firstand,a,b);
    or o1(firstor,a,b);
    not n1(firstnot,firstand);
    and a2(secondand,firstor, firstnot);
    assign sum1 = secondand;
    
    wire firstand_2, firstor_2, secondand_2, firstnot_2;
    and a3(firstand_2,sum1,carry_in);
    or o2(firstor_2,sum1,carry_in);
    not n2(firstnot_2,firstand_2);
    and a4(secondand_2,firstor_2, firstnot_2);
    assign sum = secondand_2;
    
    or o3(carry_out, firstand, firstand_2);
    
endmodule
