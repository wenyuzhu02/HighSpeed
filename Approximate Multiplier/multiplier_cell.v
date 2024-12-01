`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2024 08:35:11 PM
// Design Name: 
// Module Name: multiplier cell
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


module multiplier_cell(
    x,y,top_left,top,sum,carry
    );
    input x,y,top_left,top;
    output sum,carry;
    wire prop;
    and a1(prop, x, y);
    FullAdder F(prop, top_left, top, sum, carry);
endmodule
