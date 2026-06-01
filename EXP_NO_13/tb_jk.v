module tb_jk_ff;

reg j,k,clk;
wire q;

jk	 dut(
.j(j),
.k(k),
.clk(clk),
.q(q)
);

always #10 clk = ~clk;

initial begin

$dumpfile("jk_ff.vcd");
$dumpvars(0,tb_jk_ff);

clk = 0;


j = 0; k = 0; #20;


j = 0; k = 1; #20;


j = 1; k = 0; #20;


j = 1; k = 1; #20;


j = 0; k = 0; #20;


j = 1; k = 1; #20;


j = 1; k = 0; #20;


j = 0; k = 1; #20;

$finish;

end

initial begin
$monitor("time=%0t clk=%b j=%b k=%b q=%b",
          $time,clk,j,k,q);
end

endmodule
