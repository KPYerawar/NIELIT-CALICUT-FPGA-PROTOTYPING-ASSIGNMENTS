module tb_gray_counter;

reg clk;
reg rst;

wire [3:0] gray;

gray_counter dut(
.clk(clk),
.rst(rst),
.gray(gray)
);

always #10 clk = ~clk;

initial begin

$dumpfile("gray_counter.vcd");
$dumpvars(0,tb_gray_counter);

clk = 0;
rst = 1;

#20;
rst = 0;

#400;

$finish;

end

initial begin
$monitor("time=%0t gray=%b",
          $time,gray);
end

endmodule
