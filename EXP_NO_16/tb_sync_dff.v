module tb_sync_dff;

reg clk;
reg d;
reg pre;
reg clr;

wire q;

sync_dff dut(
.clk(clk),
.d(d),
.pre(pre),
.clr(clr),
.q(q)
);

always #10 clk = ~clk;

initial begin

$dumpfile("sync_dff.vcd");
$dumpvars(0,tb_sync_dff);

clk = 0;
d   = 0;
pre = 0;
clr = 0;

// Normal DFF Operation
#15 d = 1;
#20 d = 0;

// Asynchronous Preset
#5  pre = 1;
#10 pre = 0;

// Normal Operation
#15 d = 1;

// Asynchronous Clear
#5  clr = 1;
#10 clr = 0;

// Normal Operation
#20 d = 0;
#20 d = 1;

#20;
$finish;

end

initial begin
$monitor("time=%0t clk=%b d=%b pre=%b clr=%b q=%b",
          $time,clk,d,pre,clr,q);
end

endmodule
