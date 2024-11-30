module test();

reg [13:0] a, b;
wire [13:0] C;
initial begin
    a <=  14'd31;
    b <= -14'd31;

    #100

    a <=  14'd00;
    b <=  14'd00; 

    #100

    a <=  14'd16;
    b <=  14'd8;

    #100

    a <=  -14'd08;
    b <=  -14'd09;  

    #100

    a <=  -14'd16;
    b <=  -14'd16;  

    #100

    a <=  14'd15;
    b <=  14'd016;  

    #100

    a <=   14'd14;
    b <=  -14'd16;  
end
adder_14 adder_14 (.A(a), .B(b), .C(C));
endmodule