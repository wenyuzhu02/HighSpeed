module array16 #(parameter N = 16)(
input [N-1:0] A,
input [N-1:0] B,
output [2*N-1:0] P
);

// wires for partial product
wire [N-1:0] pp[N-1:0];
wire [N-2:0] carry[N-1:0];
wire [N-2:0] sum[N-1:0];

// Generate partial products
genvar i, j;
generate
  for (i = 0; i < N; i = i + 1) begin
    for (j = 0; j < N; j = j + 1) begin
      and(pp[i][j], A[i], B[j]);
    end
  end
endgenerate

// Generate final product connections
assign P[0] = pp[0][0];
generate
  for(i=1; i<N; i = i+1) begin
    assign P[i] = sum[i-1][0];
  end
endgenerate
generate
  for(i = N; i<2*N-1; i=i+1) begin
    assign P[i] = sum[N-1][i-N];
  end
endgenerate
assign P[2*N-1] = carry[N-1][N-2];

//First row of HAs
generate
  for(i = 0; i < N-1; i = i + 1) begin
    halfadd ha(pp[i][1],pp[i+1][0],sum[0][i],carry[0][i]);
  end
endgenerate

//Intermediate rows of FAs
generate //non-leftmost column
  for(i = 1; i < N-1; i = i + 1) begin
    for(j = 0; j < N-2; j = j + 1) begin
      fulladd fa_int(carry[i-1][j], sum[i-1][j+1], pp[j][i+1], sum[i][j], carry[i][j]);
    end
  end
endgenerate

generate //left-most column of FAs
  for(i = 0; i < N-2; i = i + 1) begin
    fulladd fa_left(carry[i][N-2], pp[N-1][i+1], pp[N-2][i+2], sum[i+1][N-2], carry[i+1][N-2]);
  end
endgenerate


//Last row of HA and FAs
halfadd haN0(carry[N-2][0], sum[N-2][1], sum[N-1][0], carry[N-1][0]);

  for(i = 1; i < N-2; i = i + 1) begin
    fulladd fa_bot(carry[N-1][i-1], carry[N-2][i], sum[N-2][i+1], sum[N-1][i], carry[N-1][i]);
  end

fulladd fa_last(carry[N-1][N-3], carry[N-2][N-2], pp[N-1][N-1], sum[N-1][N-2], carry[N-1][N-2]);
endmodule
