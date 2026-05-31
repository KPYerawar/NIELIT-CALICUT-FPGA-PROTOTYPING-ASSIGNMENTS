module tb_dff_dataflow;

reg d,clk;
wire q;

dff_dataflow dut(
.d(d),
.clk(clk),
.q(q)
);

always #5 clk = ~clk;

initial begin

$dumpfile("dff_dataflow.vcd");
$dumpvars(0,tb_dff_dataflow);

clk=0;

d=0; #10;
d=1; #10;
d=0; #10;
d=1; #10;
d=0; #10;

$finish;

end

initial
$monitor("time=%0t clk=%b d=%b q=%b",
          $time,clk,d,q);

endmodule
