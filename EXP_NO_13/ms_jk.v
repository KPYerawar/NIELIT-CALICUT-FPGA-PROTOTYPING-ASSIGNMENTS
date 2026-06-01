module ms_jk(
input clk,
input j,
input k,
output q
);

wire qm;
wire clk_bar;

not n1(clk_bar,clk);

jk master(
.clk(clk),
.j(j),
.k(k),
.q(qm)
);

jk slave(
.clk(clk_bar),
.j(qm),
.k(~qm),
.q(q)
);

endmodule
