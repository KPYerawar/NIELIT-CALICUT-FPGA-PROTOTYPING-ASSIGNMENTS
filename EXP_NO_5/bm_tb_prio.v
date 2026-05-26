module bm_tb_prio;
reg [3:0] y ;
wire [1:0] a ; 
wire v ;


bm_prio p1 (
.y(y),.a(a),.v(v));

initial begin 

$dumpfile ("bm_prio.vcd");
$dumpvars (0,bm_tb_prio);

repeat (20) begin 
y = $random %16 ;
#20 ;
$display ("y = %b , a = %b , v = %b ", y , a ,  v );
end 

end 
endmodule 
