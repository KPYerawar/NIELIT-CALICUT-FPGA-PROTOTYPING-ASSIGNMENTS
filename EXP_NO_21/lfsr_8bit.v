module lfsr_8bit(
input clk,
output reg [7:0] q
);

wire feedback;

assign feedback = q[7] ^ q[5] ^ q[4] ^ q[3];

initial
q = 8'b11111111;

always @(posedge clk)
begin
    q <= {q[6:0], feedback};
end

endmodule
