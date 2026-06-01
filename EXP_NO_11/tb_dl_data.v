module tb_dl_data ;
reg e , d ;
wire q , qbar;

dl_data d1 (
.e(e),.d(d),.q(q),.qbar(qbar));

initial begin 
$monitor ("e = %b , d =%b , q = %d , qbar = %b,", e, d, q , qbar );
end 

initial begin 
$dumpfile ("df.vcd");
$dumpvars (0,tb_dl_data);
e = 0 ; d = 0 ; #10;
e = 0 ; d = 1 ; #10;
e = 1 ; d = 0 ; #10;
e = 1 ; d = 1 ; #10;
e = 0 ; d = 0 ; #10;
e = 0 ; d = 1 ; #10;
end 
endmodule 
