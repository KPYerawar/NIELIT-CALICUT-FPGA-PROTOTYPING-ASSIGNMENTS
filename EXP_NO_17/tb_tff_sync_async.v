module tb_tff_sync_async;

reg clk;
reg t;
reg arst;
reg srst;

wire q;
wire qbar;

tff_sync_async dut(
.clk(clk),
.t(t),
.arst(arst),
.srst(srst),
.q(q),
.qbar(qbar)
);

always #10 clk = ~clk;

initial begin

$dumpfile("tff_sync_async.vcd");
$dumpvars(0,tb_tff_sync_async);

clk  = 0;
t    = 0;
arst = 0;
srst = 0;

// Toggle
#15;
t = 1;

#20;

// Toggle again
#20;

// Asynchronous Reset
arst = 1;

#5;

arst = 0;

// Toggle
#20;
t = 1;

#20;

// Synchronous Reset
srst = 1;

#5;

// Wait for next posedge clk
#20;

srst = 0;

// Toggle again
#20;
t = 1;

#40;

$finish;

end

initial begin

$monitor(
"time=%0t clk=%b t=%b arst=%b srst=%b q=%b qbar=%b",
$time,clk,t,arst,srst,q,qbar
);

end

endmodule
