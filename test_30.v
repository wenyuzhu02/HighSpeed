module test();

reg [29:0] a, b;
wire [29:0] C;
initial begin
    a <=  30'd31;
    b <= -30'd31;

    #100

    a <=  30'd00;
    b <=  30'd00; 

    #100

    a <=  30'd16;
    b <=  30'd8;

    #100

    a <=  -30'd08;
    b <=  -30'd09;  

    #100

    a <=  -30'd16;
    b <=  -30'd16;  

    #100

    a <=  30'd15;
    b <=  30'd016;  

    #100

    a <=   30'd14;
    b <=  -30'd16;  
end
adder_30 adder_30 (.A(a), .B(b), .C(C));
endmodule