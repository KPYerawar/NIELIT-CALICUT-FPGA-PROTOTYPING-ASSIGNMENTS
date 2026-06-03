module siso_8bit(
input clk,
input rst,
input serial_in,
output serial_out
);

reg [7:0] shift_reg;

always @(posedge clk)
begin

if(rst)
    shift_reg <= 8'b00000000;

else
    shift_reg <= {shift_reg[6:0], serial_in};

end

assign serial_out = shift_reg[7];

endmodule
