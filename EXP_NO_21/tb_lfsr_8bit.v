module tb_lfsr_8bit;

reg clk;
wire [7:0] q;

lfsr_8bit dut(
.clk(clk),
.q(q)
);

always #10 clk = ~clk;

initial begin

$dumpfile("lfsr.vcd");
$dumpvars(0,tb_lfsr_8bit);

clk = 0;

#500;

$finish;

end

initial begin
$monitor("time=%0t q=%b",
          $time,q);
end

endmodule
