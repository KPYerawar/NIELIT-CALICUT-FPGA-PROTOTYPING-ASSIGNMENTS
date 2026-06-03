module tb_parity_generator;

reg [7:0] data;

wire even_parity;
wire odd_parity;

parity_generator dut(
.data(data),
.even_parity(even_parity),
.odd_parity(odd_parity)
);

initial begin

$dumpfile("parity_gen.vcd");
$dumpvars(0,tb_parity_generator);

data = 8'b00000000; #10;
data = 8'b00000001; #10;
data = 8'b10101010; #10;
data = 8'b11111111; #10;

$finish;

end

initial
$monitor(
"time=%0t data=%b even=%b odd=%b",
$time,data,even_parity,odd_parity
);

endmodule
