module tff(
input t,
input clk,
input rst,
output reg q,
output qbar
);

always @(posedge clk)
begin
if(rst)
    q <= 0;

else if(t)
    q <= ~q;

else
    q <= q;
end

assign qbar = ~q;

endmodule
