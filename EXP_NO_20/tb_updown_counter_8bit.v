module tb_updown_counter_8bit;

reg clk;
reg rst;
reg mode;

wire [7:0] count;

updown_counter_8bit dut(
.clk(clk),
.rst(rst),
.mode(mode),
.count(count)
);

always #10 clk = ~clk;

initial begin

$dumpfile("updown_counter.vcd");
$dumpvars(0,tb_updown_counter_8bit);

clk  = 0;
rst  = 1;
mode = 1;

#20;
rst = 0;

// Count Up
mode = 1;
#120;

// Count Down
mode = 0;
#120;

// Count Up Again
mode = 1;
#120;

$finish;

end

initial begin
$monitor("time=%0t rst=%b mode=%b count=%d",
          $time,rst,mode,count);
end

endmodule
