module df_tb_prio;
reg [3:0] y ;
wire [1:0] a ; 
wire v ;


df_prio p1 (
.y(y),.a(a),.v(v));

initial begin 

$dumpfile ("df_prio.vcd");
$dumpvars (0,df_tb_prio);

repeat (20) begin 
y = $random %16 ;
#20 ;
$display ("y = %b , a = %b , v = %b ", y , a ,  v );
end 

end 
endmodule 
