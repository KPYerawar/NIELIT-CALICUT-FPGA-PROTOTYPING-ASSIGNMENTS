module mux2_dataflow (
input a,b,c,
output f
);

assign f = (~a & ~b) | c;

endmodule
