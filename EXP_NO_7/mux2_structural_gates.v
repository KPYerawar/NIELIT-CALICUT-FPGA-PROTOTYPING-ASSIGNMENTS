module mux2_structural_gates(
input a,b,c,
output f
);

wire na;
wire nb;
wire w1;

not g1(na,a);
not g2(nb,b);

and g3(w1,na,nb);

or g4(f,w1,c);

endmodule
