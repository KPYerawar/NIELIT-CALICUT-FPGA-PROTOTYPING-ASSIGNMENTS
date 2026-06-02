module tb_tff;

reg t,clk,rst;
wire q,qbar;

tff dut(
.t(t),
.clk(clk),
.rst(rst),
.q(q),
.qbar(qbar)
);

always #10 clk = ~clk;

initial begin

$dumpfile("tff.vcd");
$dumpvars(0,tb_tff);

clk = 0;
rst = 1;
t   = 0;

#20;
rst = 0;

// No Change
t = 0; #20;

// Toggle
t = 1; #20;

// Toggle Again
t = 1; #20;

// Hold
t = 0; #20;

// Toggle
t = 1; #20;

$finish;

end

initial
$monitor("time=%0t clk=%b rst=%b t=%b q=%b",
          $time,clk,rst,t,q);

endmodule
