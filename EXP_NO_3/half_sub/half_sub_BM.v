//behavioural modeling (BM)
module half_sub_BM(
input a , b ,
output reg borrow ,difference);

always @( a | b ) begin 
borrow = ~a &  b;
difference = a ^  b ;
end 
endmodule 
