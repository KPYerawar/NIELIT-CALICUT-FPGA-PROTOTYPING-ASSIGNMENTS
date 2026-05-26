module sm_tb__prio;
reg [3:0] y ;
wire [1:0] a ; 
wire v ;


sm_prio p1 (
.y(y),.a(a),.v(v));

initial begin 

$dumpfile ("sm_prio.vcd");
$dumpvars (0,sm_tb__prio);

repeat (20) begin 
y = $random %16 ;
#20 ;
$display ("y = %b , a = %b , v = %b ", y , a ,  v );
end 

end 
endmodule 
