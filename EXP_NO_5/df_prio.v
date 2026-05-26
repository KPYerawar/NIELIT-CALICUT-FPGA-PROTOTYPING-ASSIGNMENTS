module df_prio (
input [3:0] y ,
output [1:0] a ,
output v );


assign a[1] = y[3] | (~y[2] & y[1] );
assign a[0] = y[3] | y[2] ;
assign v = y[3] | y[2] | y[1] | y[0] ;

endmodule 
