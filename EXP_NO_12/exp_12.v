module exp_12(
input clk , d,q_ff,
output reg q_latch );

always @(posedge clk) begin 
if (d == 1 && q_ff == 1 )
q_latch <= 1 ;
else 
q_latch <= 0 ;
end 
endmodule 
