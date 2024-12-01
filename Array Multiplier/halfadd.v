module halfadd(a, b, s, c);
input a, b;
output s, c;

wire o1_out, a1_out, not_a1_out;
assign c = a1_out;

or o1(o1_out, a, b);
and a1(a1_out, a, b);
not n1(not_a1_out, a1_out);
and a2(s, o1_out, not_a1_out);

endmodule
