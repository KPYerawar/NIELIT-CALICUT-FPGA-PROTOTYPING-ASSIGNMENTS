module up_counter_8bit(
input clk,
input rst,
output reg [7:0] count
);

always @(posedge clk)
begin

if(rst)
    count <= 8'd0;

else
    count <= count + 1'b1;

end

endmodule
