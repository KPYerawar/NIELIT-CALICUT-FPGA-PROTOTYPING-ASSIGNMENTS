module halfadder_BM (
input a , b ,
output reg sum ,
output reg carry );

always @(*) begin 
sum = a ^ b ;
carry = a & b ;
end 
endmodule 
