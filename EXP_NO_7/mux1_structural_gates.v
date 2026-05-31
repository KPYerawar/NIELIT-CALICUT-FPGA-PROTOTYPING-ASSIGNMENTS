module mux1_structural_gates(
input a,b,c,
output f
);

wire na;
wire w1,w2;

not g1(na,a);

and g2(w1,na,b);
and g3(w2,a,b);

or g4(f,w1,w2);

endmodule
