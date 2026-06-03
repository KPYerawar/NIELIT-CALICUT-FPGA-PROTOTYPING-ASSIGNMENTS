module tb_johnson_counter;

reg clk,rst;
wire [3:0] q;

johnson_counter dut(
.clk(clk),
.rst(rst),
.q(q)
);

always #10 clk = ~clk;

initial begin

$dumpfile("johnson_counter.vcd");
$dumpvars(0,tb_johnson_counter);

clk=0;
rst=1;

#20 rst=0;

#250;

$finish;

end

initial
$monitor("time=%0t q=%b",$time,q);

endmodule
