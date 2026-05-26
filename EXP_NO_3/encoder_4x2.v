 module encoder_4x2(
input [3:0] y,
output [1:0] a);
assign a[1] = y[3] | y[2];

assign a[0] = y[1] | y[0];

endmodule
