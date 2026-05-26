module halfadder_ST(
input a , b ,
output sum , carry );

and1 a1 (.in1(a),.in2(b),.out1(carry));
xor1 x1 (.in1(a),.in2(b),.out1(sum));
endmodule 
