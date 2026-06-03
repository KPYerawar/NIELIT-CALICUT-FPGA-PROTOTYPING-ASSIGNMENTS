module async_div8(
input clk,
input rst,
output reg q0,
output reg q1,
output reg q2
);

always @(posedge clk or posedge rst)
begin
if(rst)
    q0 <= 0;
else
    q0 <= ~q0;
end

always @(posedge q0 or posedge rst)
begin
if(rst)
    q1 <= 0;
else
    q1 <= ~q1;
end

always @(posedge q1 or posedge rst)
begin
if(rst)
    q2 <= 0;
else
    q2 <= ~q2;
end

endmodule
