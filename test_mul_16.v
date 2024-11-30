module test_16();

reg [15:0] a, b;
wire [30:0] c;
initial begin
    a <=  16'd4336;
    b <=  16'd5678;

    #100

    a <=  16'd12345;
    b <=  16'd45642; 

    #100

    a <=  16'd90;
    b <=  16'd0;

    #100

    a <=  16'd16;
    b <=  16'd13;
end
dadda_mult_16 dadda_mult_16 (.a(a), .b(b), .c(c));
endmodule