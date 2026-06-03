module gray_counter(
input clk,
input rst,
output reg [3:0] gray
);

reg [3:0] binary;

always @(posedge clk)
begin

if(rst)
begin
    binary <= 4'd0;
    gray   <= 4'd0;
end

else
begin
    binary <= binary + 1'b1;
    gray   <= binary ^ (binary >> 1);
end

end

endmodule
