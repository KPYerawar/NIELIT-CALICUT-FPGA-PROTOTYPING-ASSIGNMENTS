module df_tb_dec;
reg a , b ,e ;
wire [3:0] y ;


df_dec d1 (.a(a),.b(b),.e(e),.y(y));

initial begin 
$dumpfile ("df_dec.vcd");
$dumpvars (0,df_tb_dec);
repeat (6) begin 
a = $random%2;
b= $random %2;
e = $random%2;
#20;
$display("a = %b , b = %b , e = %b , y = %b " , a , b,e,y);
end 
end
endmodule 
