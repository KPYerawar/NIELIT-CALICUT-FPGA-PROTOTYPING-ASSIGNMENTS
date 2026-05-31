module sr_dataflow(
input s,
input r,
input clk,
output reg q
);

always @(posedge clk)
begin
q <= s | (~r & q);
end

endmodule
