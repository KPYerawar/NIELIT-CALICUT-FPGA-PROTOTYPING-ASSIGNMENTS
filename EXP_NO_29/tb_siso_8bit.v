module tb_siso_8bit;

reg clk;
reg rst;
reg serial_in;

wire serial_out;

siso_8bit dut(
.clk(clk),
.rst(rst),
.serial_in(serial_in),
.serial_out(serial_out)
);

always #10 clk = ~clk;

initial begin

$dumpfile("siso.vcd");
$dumpvars(0,tb_siso_8bit);

clk = 0;
rst = 1;
serial_in = 0;

#20;
rst = 0;

// Send 10110011

serial_in = 1; #20;
serial_in = 0; #20;
serial_in = 1; #20;
serial_in = 1; #20;
serial_in = 0; #20;
serial_in = 0; #20;
serial_in = 1; #20;
serial_in = 1; #20;

// Extra clocks to observe output

serial_in = 0; #160;

$finish;

end

initial
begin

$monitor(
"time=%0t serial_in=%b serial_out=%b",
$time,
serial_in,
serial_out
);

end

endmodule
