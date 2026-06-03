module tb_down_counter_8bit;

reg clk;
reg rst;

wire [7:0] count;

down_counter_8bit dut(
.clk(clk),
.rst(rst),
.count(count)
);

always #10 clk = ~clk;

initial begin

$dumpfile("down_counter.vcd");
$dumpvars(0,tb_down_counter_8bit);

clk = 0;
rst = 1;

#20;
rst = 0;

#500;

$finish;

end

initial begin
$monitor("time=%0t rst=%b count=%d",
          $time,rst,count);
end

endmodule
