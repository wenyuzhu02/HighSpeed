module top_16(
  input clk,
  input [15:0] a_in,
  input [15:0] b_in,
  output [31:0] data_out
);

reg [15:0] a, b;
wire [31:0] c;
reg [31:0] data_out;

array16 m16(.A(a), .B(b), .P(c));

always @(posedge clk) begin
  a <= a_in;
  b <= b_in;
  data_out <= c;
end
endmodule
