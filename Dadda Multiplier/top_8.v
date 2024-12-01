module top_8(
    input clk,
    input [7:0] a_in,
    input [7:0] b_in,
    output [14:0] data_out
);

reg [7:0] a, b;
wire [14:0] c;
reg [14:0] data_out;

dadda_mult_8 dadda_mult_8 (.a(a), .b(b), .c(c));

always @(posedge clk) begin
    a <=  a_in;
    b <=  b_in;
    data_out <= c;
end
endmodule