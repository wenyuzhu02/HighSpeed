module array4 (
input [3:0] A, // Multiplicand
input [3:0] B, // Multiplier
output [7:0] P //Product
);

// wires for partial product
wire [3:0] pp[3:0];    // partial product wires
wire [2:0] carry[3:0]; // Carry wires
wire [2:0] sum[3:0];   // Sum wires 

// Generate partial products
genvar i, j;
generate
  for (i = 0; i < 4; i = i + 1) begin
    for (j = 0; j < 4; j = j + 1) begin
      and(pp[i][j], A[i], B[j]);
    end
  end
endgenerate

assign P[0] = pp[0][0];
assign P[1] = sum[0][0];
assign P[2] = sum[1][0];
assign P[3] = sum[2][0];
assign P[4] = sum[3][0];
assign P[5] = sum[3][1];
assign P[6] = sum[3][2];
assign P[7] = carry[3][2];

//First row of HAs
halfadd ha00(pp[0][1], pp[1][0], sum[0][0], carry[0][0]);
halfadd ha01(pp[1][1], pp[2][0], sum[0][1], carry[0][1]);
halfadd ha02(pp[2][1], pp[3][0], sum[0][2], carry[0][2]);

//Second row of FAs
fulladd fa10(carry[0][0], sum[0][1], pp[0][2], sum[1][0], carry[1][0]);
fulladd fa11(carry[0][1], sum[0][2], pp[1][2], sum[1][1], carry[1][1]);
fulladd fa12(carry[0][2], pp[3][1],  pp[2][2], sum[1][2], carry[1][2]);

//Third row of FAs
fulladd fa20(carry[1][0], sum[1][1], pp[0][3], sum[2][0], carry[2][0]);
fulladd fa21(carry[1][1], sum[1][2], pp[1][3], sum[2][1], carry[2][1]);
fulladd fa22(carry[1][2], pp[3][2],  pp[2][3], sum[2][2], carry[2][2]);

//Last row of adders
halfadd ha30(carry[2][0], sum[2][1], sum[3][0], carry[3][0]);
fulladd fa31(carry[3][0], carry[2][1], sum[2][2], sum[3][1], carry[3][1]);
fulladd fa32(carry[3][1], carry[2][2], pp[3][3], sum[3][2], carry[3][2]);
endmodule
