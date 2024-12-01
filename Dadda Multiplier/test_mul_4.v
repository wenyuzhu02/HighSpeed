module test_4();

reg [3:0] a, b;
wire [6:0] c;
initial begin
    a <=  4'd2;
    b <=  4'd2;

    #100

    a <=  4'd01;
    b <=  4'd0; 

    #100

    a <=  4'd4;
    b <=  4'd3;

    #100

    a <=  4'd2;
    b <=  4'd6;
end
dadda_mult_4 dadda_mult_4 (.a(a), .b(b), .c(c));
endmodule