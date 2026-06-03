module tb_seq_detector_1111;

reg clk;
reg rst;
reg x;

wire z;

seq_detector_1111 dut(
.clk(clk),
.rst(rst),
.x(x),
.z(z)
);

always #10 clk = ~clk;

initial begin

$dumpfile("seq1111.vcd");
$dumpvars(0,tb_seq_detector_1111);

clk = 0;
rst = 1;
x   = 0;

#20;
rst = 0;

// 001110
x=0; #20;
x=0; #20;
x=1; #20;
x=1; #20;
x=1; #20;
x=0; #20;

// 1111 detected
x=1; #20;
x=1; #20;
x=1; #20;
x=1; #20;

// 0011
x=0; #20;
x=0; #20;
x=1; #20;
x=1; #20;

// another 1111
x=1; #20;
x=1; #20;
x=1; #20;
x=1; #20;

#40;

$finish;

end

initial
$monitor(
"time=%0t x=%b z=%b",
$time,x,z
);

endmodule
