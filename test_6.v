module test();

reg [5:0] a, b;
wire [5:0] C;
initial begin
    a <=  6'd31;
    b <= -6'd31;

    #100

    a <=  6'd00;
    b <=  6'd00; 

    #100

    a <=  6'd16;
    b <=  6'd8;

    #100

    a <=  -6'd08;
    b <=  -6'd09;  

    #100

    a <=  -6'd16;
    b <=  -6'd16;  

    #100

    a <=  6'd15;
    b <=  6'd016;  

    #100

    a <=   6'd14;
    b <=  -6'd16;  
end
adder_6 adder_6 (.A(a), .B(b), .C(C));
endmodule