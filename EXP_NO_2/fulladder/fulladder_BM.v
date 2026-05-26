module fulladder_BM(
input a , b , cin ,
output reg sum ,
output reg  carry );

always @(*) begin 
sum = a ^ b ^ cin ;
carry = (a & cin ) | (a & b ) | ( cin & b );
end 
endmodule 
