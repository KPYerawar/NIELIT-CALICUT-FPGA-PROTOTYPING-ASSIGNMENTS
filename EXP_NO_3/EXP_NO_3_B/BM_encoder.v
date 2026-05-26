module BM_encoder(
input [3:0] y,
output reg [1:0] a );

always @(*)begin 

if (y == 0001)
a = 00;
else if (y == 0010)
a = 01 ;
else if ( y == 0010)
a = 10 ;
else  if ( y == 1000)
a = 11 ;
else 
a = 2'bz;
end 
endmodule 

