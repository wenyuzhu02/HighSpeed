module top_4(
    input clk,
    input [3:0] a_in,
    input [3:0] b_in,
    output [6:0] data_out
);

reg [3:0] a, b;
wire [6:0] c;
reg [6:0] data_out;

dadda_mult_4 dadda_mult_4 (.a(a), .b(b), .c(c));

always @(posedge clk) begin
    a <=  a_in;
    b <=  b_in;
    data_out <= c;
end
endmodule