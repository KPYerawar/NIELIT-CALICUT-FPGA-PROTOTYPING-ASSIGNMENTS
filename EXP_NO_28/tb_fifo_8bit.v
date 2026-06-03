module tb_fifo_8bit;

reg clk;
reg rst;

reg wr_en;
reg rd_en;

reg [7:0] data_in;

wire [7:0] data_out;

wire fifo_full;
wire fifo_empty;

fifo_8bit dut(
.clk(clk),
.rst(rst),
.wr_en(wr_en),
.rd_en(rd_en),
.data_in(data_in),
.data_out(data_out),
.fifo_full(fifo_full),
.fifo_empty(fifo_empty)
);

always #10 clk = ~clk;

initial begin

$dumpfile("fifo.vcd");
$dumpvars(0,tb_fifo_8bit);

clk = 0;
rst = 1;

wr_en = 0;
rd_en = 0;
data_in = 0;

#20;
rst = 0;


// WRITE DATA

wr_en = 1;

data_in = 8'h11; #20;
data_in = 8'h22; #20;
data_in = 8'h33; #20;
data_in = 8'h44; #20;

wr_en = 0;


// READ DATA

rd_en = 1;

#20;
#20;
#20;
#20;

rd_en = 0;

#40;

$finish;

end

initial
begin

$monitor(
"time=%0t din=%h dout=%h full=%b empty=%b",
$time,
data_in,
data_out,
fifo_full,
fifo_empty
);

end

endmodule
