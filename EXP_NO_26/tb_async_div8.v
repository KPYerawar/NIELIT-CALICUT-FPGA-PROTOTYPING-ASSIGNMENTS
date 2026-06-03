module tb_async_div8;

reg clk,rst;

wire q0,q1,q2;

async_div8 dut(
.clk(clk),
.rst(rst),
.q0(q0),
.q1(q1),
.q2(q2)
);

always #10 clk = ~clk;

initial begin

$dumpfile("async_div8.vcd");
$dumpvars(0,tb_async_div8);

clk = 0;
rst = 1;

#20;
rst = 0;

#300;

$finish;

end

initial
$monitor("t=%0t q0=%b q1=%b q2=%b",
          $time,q0,q1,q2);

endmodule
