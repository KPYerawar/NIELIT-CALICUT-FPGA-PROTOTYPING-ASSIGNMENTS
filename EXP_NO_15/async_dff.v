module async_dff(
input clk,
input d,
input pre,
input clr,
output reg q
);

always @(posedge clk or posedge pre or posedge clr)
begin

if(clr)
    q <= 0;

else if(pre)
    q <= 1;

else
    q <= d;

end

endmodule
