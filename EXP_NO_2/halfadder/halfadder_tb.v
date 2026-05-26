module halfadder_tb;
reg a , b ;
wire sum , carry ;

halfadder_ST d1 (.a(a),.b(b),.sum(sum),.carry(carry));

initial begin 
$dumpfile ("half_BM.vcd");
$dumpvars(0,halfadder_tb);
end 

initial begin 
repeat (20) begin 
a = $random%2 ;
b = $random % 2;
#20;
$display (" time = %t , a = %d , b = %d , sum = %d , carry = %d ",$time , a, b , sum , carry );

end 

end 
endmodule 
