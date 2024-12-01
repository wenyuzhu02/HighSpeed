module top_16(
    input clk,
    input [15:0] a_in,
    input [15:0] b_in,
    output [30:0] data_out
);

reg [15:0] a, b;
wire [30:0] c;
reg [30:0] data_out;

dadda_mult_16 dadda_mult_16 (.a(a), .b(b), .c(c));

always @(posedge clk) begin
    a <=  a_in;
    b <=  b_in;
    data_out <= c;
end
endmodule