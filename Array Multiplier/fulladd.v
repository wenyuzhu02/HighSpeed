module fulladd(a, b, cin, s, cout);
input a, b, cin;
output s, cout;

wire o1_out, a1_out, not_a1_out, a2_out;
wire o2_out, a3_out, not_a3_out;

or o1(o1_out, a, b);
and a1(a1_out, a, b);
not n1(not_a1_out, a1_out);
and a2(a2_out, o1_out, not_a1_out);

or o2(o2_out, a2_out, cin);
and a3(a3_out, a2_out, cin);
not n2(not_a3_out, a3_out);
and a4(s, o2_out, not_a3_out);

or(cout, a1_out, a3_out);

endmodule
