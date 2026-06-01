module tb_ms_jk;

reg clk,j,k;
wire q;

ms_jk dut(
.clk(clk),
.j(j),
.k(k),
.q(q)
);

always #10 clk = ~clk;

initial begin

$dumpfile("ms_jk.vcd");
$dumpvars(0,tb_ms_jk);

clk = 0;


j=0; k=0; #20;


j=0; k=1; #20;


j=1; k=0; #20;


j=1; k=1; #20;


j=0; k=0; #20;


j=1; k=1; #20;

$finish;

end

initial
$monitor("t=%0t clk=%b j=%b k=%b q=%b",
          $time,clk,j,k,q);

endmodule
