module  fulladder_DF(
input a , b , cin,
output carry , sum );

assign sum = a ^ b ^ cin;
assign carry = (a & b ) | (cin  & a ) | (cin & b );

endmodule 
