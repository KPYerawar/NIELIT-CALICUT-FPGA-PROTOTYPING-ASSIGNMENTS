module tb_divide_by_2;

reg clk,rst;
wire q;

divide_by_2 dut(
.clk(clk),
.rst(rst),
.q(q)
);

always #10 clk = ~clk;

initial begin

$dumpfile("divide_by_2.vcd");
$dumpvars(0,tb_divide_by_2);

clk=0;
rst=1;

#20 rst=0;

#200;

$finish;

end

initial
$monitor("time=%0t clk=%b q=%b",
          $time,clk,q);

endmodule
