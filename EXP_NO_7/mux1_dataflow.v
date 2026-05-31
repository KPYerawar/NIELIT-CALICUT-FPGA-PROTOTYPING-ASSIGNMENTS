module mux1_dataflow (
input a,b,c,
output f
);

assign f = (~a & b) | (a & b);

endmodule
