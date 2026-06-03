module tb_single_port_ram;

reg clk;
reg c_en;
reg wr_e;
reg out_e;

reg [3:0] addr;
reg [7:0] data;

wire [7:0] q;

single_port_ram dut(
.clk(clk),
.c_en(c_en),
.wr_e(wr_e),
.out_e(out_e),
.addr(addr),
.data(data),
.q(q)
);

always #10 clk = ~clk;

initial begin

$dumpfile("ram.vcd");
$dumpvars(0,tb_single_port_ram);

clk  = 0;
c_en = 1;

// --------------------
// WRITE OPERATIONS
// --------------------

wr_e = 1;
out_e = 0;

addr = 4'd0;
data = 8'hAA;
#20;

addr = 4'd1;
data = 8'h55;
#20;

addr = 4'd2;
data = 8'hF0;
#20;

// --------------------
// READ OPERATIONS
// --------------------

wr_e = 0;
out_e = 1;

addr = 4'd0;
#20;

addr = 4'd1;
#20;

addr = 4'd2;
#20;

$finish;

end

initial begin
$monitor(
"time=%0t addr=%d data=%h q=%h wr_e=%b",
$time,addr,data,q,wr_e
);
end

endmoduleA
