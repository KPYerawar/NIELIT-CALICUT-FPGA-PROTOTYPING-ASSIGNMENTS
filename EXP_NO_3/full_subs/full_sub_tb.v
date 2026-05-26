module full_sub_tb ;
reg a , b , bin;
wire borrow , differnce ;

full_sub_ST s1 (.a(a),.b(b),.bin(bin),.borrow(borrow),.difference(difference));

initial begin 
$dumpfile ("full_sub_ST.vcd");
$dumpvars(0,full_sub_tb);
repeat (20) begin 
a = $random %2 ;
b = $random %2;
bin = $random %2;
#20;
$display ("a = %d , b = %d ,bin = %d , borrow = %d , difference = %d " , a,b,bin,borrow,difference);
end 
$finish;
end 
endmodule 
