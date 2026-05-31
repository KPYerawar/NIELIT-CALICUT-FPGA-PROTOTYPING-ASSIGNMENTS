module mux1 (
input a , b , c ,
output reg f 	);

always @(*)begin 
case ({a,b})
  2'b00 : f = 0 ;
    2'b01 : f = 1 ;
      2'b10 : f = 0 ;
        2'b11 : f = 1 ;
  
endcase 
end endmodule   
