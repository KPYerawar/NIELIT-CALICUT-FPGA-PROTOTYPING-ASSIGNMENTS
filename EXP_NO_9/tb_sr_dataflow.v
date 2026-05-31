module tb_sr_dataflow;

reg s,r,clk;
wire q;

sr_dataflow dut(
.s(s),
.r(r),
.clk(clk),
.q(q)
);

always #5 clk = ~clk;

initial begin

$dumpfile("sr_dataflow.vcd");
$dumpvars(0,tb_sr_dataflow);

clk=0;

s=0;r=0; #10;
s=1;r=0; #10;
s=0;r=0; #10;
s=0;r=1; #10;
s=0;r=0; #10;
s=1;r=1; #10;

$finish;

end

initial
$monitor("time=%0t s=%b r=%b clk=%b q=%b",
          $time,s,r,clk,q);

endmodule
