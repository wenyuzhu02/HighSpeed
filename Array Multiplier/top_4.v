module top_4(
  input clk,
  input [3:0] a_in,
  input [3:0] b_in,
  output [7:0] data_out
);

reg [3:0] a, b;
wire [7:0] c;
reg [7:0] data_out;

array4 m4(.A(a), .B(b), .P(c));

always @(posedge clk) begin
  a <= a_in;
  b <= b_in;
  data_out <= c;
end
endmodule
