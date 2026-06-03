module updown_counter_8bit(
input clk,
input rst,
input mode,
output reg [7:0] count
);

always @(posedge clk)
begin

if(rst)
    count <= 8'd0;

else if(mode)
    count <= count + 1'b1;

else
    count <= count - 1'b1;

end

endmodule
