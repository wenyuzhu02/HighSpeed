module top_8(
  input clk,
  input [7:0] a_in,
  input [7:0] b_in,
  output [15:0] data_out
);

reg [7:0] a, b;
wire [15:0] c;
reg [15:0] data_out;

array8 m16(.A(a), .B(b), .P(c));

always @(posedge clk) begin
  a <= a_in;
  b <= b_in;
  data_out <= c;
end
endmodule
