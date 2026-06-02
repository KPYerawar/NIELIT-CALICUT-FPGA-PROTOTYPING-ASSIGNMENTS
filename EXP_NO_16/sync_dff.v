module sync_dff(
input pre , clr , clk , d , 
output q  );

reg q1 ;


always @(posedge clk )begin 
if ( clr )
q1 <= 0 ;
else if (pre )
q1 <= 1 ;
else 
q1 <= d ;
end 
assign q = q1 ;

endmodule  
