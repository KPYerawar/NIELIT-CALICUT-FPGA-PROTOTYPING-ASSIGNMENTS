module tb_mux1;
reg a , b , c ;
wire f ;


mux1 m1 (
.a(a),.b(b),.c(c),.f(f));

initial begin 
$dumpfile("mux1.vcd");
$dumpvars(0,tb_mux1);
a = 0 ; b = 0 ; c = 0 ;
#10;
a = 0 ; b = 0 ; c = 1 ;
#10;
a = 0 ; b = 1 ; c = 0 ;
#10;
a = 0 ; b = 1 ; c = 1 ;
#10;
a = 1 ; b = 0 ; c = 0 ;
#10;
a = 1 ; b = 0 ; c = 1 ;
#10;
a = 1 ; b = 1 ; c = 0 ;
#10;
a = 1 ; b = 1 ; c = 1 ;
#10;
end 
initial begin 
$monitor ("time = %t , a = %b , b = %b , c= %b , out = %b",$time , a , b , c , f ); 
end 
endmodule 

