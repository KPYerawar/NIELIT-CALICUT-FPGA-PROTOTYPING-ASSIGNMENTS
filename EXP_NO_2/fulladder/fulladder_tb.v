module fulladder_tb;
reg a , b , cin ;
output sum , carry ;

fulladder_ST d1 (.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));

initial begin 
$dumpfile ("fulladder.vcd");
$dumpvars(0,fulladder_tb);
repeat (20) begin 
a = $random %2;
b = $random %2;
cin = $random %2;
$display (" time = %t , a = %d , b = %d , cin = %d ,sum = %d , carry = %d ",$time , a, b ,cin, sum , carry );
#20;
end
end 
endmodule 
