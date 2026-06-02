module tff_using_jk(
input t,
input clk,
output q
);

jk jk1(
.clk(clk),
.j(t),
.k(t),
.q(q)
);

endmodule
