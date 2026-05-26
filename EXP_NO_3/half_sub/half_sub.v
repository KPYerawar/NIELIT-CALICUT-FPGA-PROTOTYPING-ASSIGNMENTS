//dataflow 
module half_sub (
input a , b ,
output borrow , difference );

assign borrow =~a & b ;
assign difference =  a ^ b ;
endmodule 
