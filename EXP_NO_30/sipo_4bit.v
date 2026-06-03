module sipo_4bit(
input clk,
input rst,
input serial_in,
output [3:0] q
);

reg [3:0] shift_reg;

always @(posedge clk)
begin

if(rst)
    shift_reg <= 4'b0000;

else
    shift_reg <= {shift_reg[2:0],serial_in};

end

assign q = shift_reg;

endmodule
