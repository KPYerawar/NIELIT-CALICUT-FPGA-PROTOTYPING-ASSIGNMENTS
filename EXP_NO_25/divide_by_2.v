module divide_by_2(
input clk,
input rst,
output reg q
);

always @(posedge clk)
begin

if(rst)
    q <= 1'b0;

else
    q <= ~q;

end

endmodule
