//structural modeling 
module half_sub_SM(
input a , b , 
output borrow ,difference);
wire not_a;
xor1 x1 (.a(a),.b(b),.c(difference));
not1 n1 (.a(a),.not_a(not_a));
and1 a1 (.a(not_a),.b(b),.c(borrow));
endmodule 
