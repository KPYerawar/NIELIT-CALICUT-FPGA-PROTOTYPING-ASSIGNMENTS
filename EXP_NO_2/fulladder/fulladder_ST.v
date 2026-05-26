module fulladder_ST(
input a , b , cin ,
output sum , carry );

wire sum1 ;
wire carry1 ;
wire carry2 ;
halfadder_ST h1 (.a(a),.b(b),.sum(sum1),.carry(carry1));
halfadder_ST h2 (.a(sum1),.b(cin),.sum(sum),.carry(carry2));
or1 o1 (.a(carry1),.b(carry2),.out1(carry));
endmodule 

