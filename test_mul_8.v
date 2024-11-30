module test_8();

reg [7:0] a, b;
wire [14:0] c;
initial begin
    a <=  8'd12;
    b <=  8'd10;

    #100

    a <=  8'd42;
    b <=  8'd63; 

    #100

    a <=  8'd255;
    b <=  8'd0;

    #100

    a <=  8'd8;
    b <=  8'd19;
end
dadda_mult_8 dadda_mult_8 (.a(a), .b(b), .c(c));
endmodule