module half_sub_tb ;
reg a , b ;
wire borrow , differnce ;

half_sub s1 (.a(a),.b(b),.borrow(borrow),.difference(difference));

initial begin 
$dumpfile ("half_sub_SM.vcd");
$dumpvars(0,half_sub_tb);
repeat (20) begin 
a = $random %2 ;
b = $random %2;
#20;
$display ("a = %d , b = %d , borrow = %d , difference = %d " , a,b,borrow,difference);
end 
$finish;
end 
endmodule 
