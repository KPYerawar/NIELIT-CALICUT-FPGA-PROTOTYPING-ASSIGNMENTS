module tb_tff_using_jk;

reg t,clk;
wire q;

tff_using_jk dut(
.t(t),
.clk(clk),
.q(q)
);

always #10 clk = ~clk;

initial begin

$dumpfile("tff_jk.vcd");
$dumpvars(0,tb_tff_using_jk);

clk = 0;

// Hold
t = 0; #20;

// Toggle
t = 1; #20;

// Toggle
t = 1; #20;

// Hold
t = 0; #20;

// Toggle
t = 1; #20;

// Hold
t = 0; #20;

$finish;

end

initial
$monitor("time=%0t clk=%b t=%b q=%b",
          $time,clk,t,q);

endmodule
