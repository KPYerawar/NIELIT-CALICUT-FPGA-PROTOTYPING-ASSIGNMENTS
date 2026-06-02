module jk(
input clk , j , k ,
output reg q);

always @(posedge clk)begin

q <= ((j & (~q)) | (~k & q ));
end 
endmodule 
