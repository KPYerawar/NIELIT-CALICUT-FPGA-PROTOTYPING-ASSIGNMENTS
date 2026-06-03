module tb_sipo_4bit;

reg clk;
reg rst;
reg serial_in;

wire [3:0] q;

sipo_4bit dut(
.clk(clk),
.rst(rst),
.serial_in(serial_in),
.q(q)
);

always #10 clk = ~clk;

initial begin

$dumpfile("sipo.vcd");
$dumpvars(0,tb_sipo_4bit);

clk = 0;
rst = 1;
serial_in = 0;

#20;
rst = 0;

// Shift in 1011

serial_in = 1; #20;
serial_in = 0; #20;
serial_in = 1; #20;
serial_in = 1; #20;

// Extra clocks

serial_in = 0; #40;

$finish;

end

initial begin

$monitor(
"time=%0t serial_in=%b q=%b",
$time,
serial_in,
q
);

end

endmodule
