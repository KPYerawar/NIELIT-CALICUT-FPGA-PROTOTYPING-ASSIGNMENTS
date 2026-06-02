module tff_sync_async(
input clk,
input t,
input arst,
input srst,
output reg q,
output qbar
);

always @(posedge clk or posedge arst)
begin

if(arst)
    q <= 1'b0;

else if(srst)
    q <= 1'b0;

else if(t)
    q <= ~q;

else
    q <= q;

end

assign qbar = ~q;

endmodule
