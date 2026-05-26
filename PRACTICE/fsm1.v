module fsm1(
input w , clk , rst ,
output reg z );

reg [2:0] state ;

parameter [2:0] a = 000 , b= 001 , c= 010 ;

always @(posedge clk  ) begin
z <= 0 ;
if (rst ) begin 
state <=  a ;
z <= 0 ;
end
else begin 
case (state ) 
   a : begin 
    if (w == 0 )  
         state <= a ;
         
        else 
          state <= b ;
       end 
     b : begin 
       if ( w == 0 )
        state <= a ;
        else 
         state <= c ;
         end 
      c : begin 
        if (w == 0 )
         state <= a ;
         else begin
          state <= c ;
          z<= 1 ;
          end 
          end
           endcase
    end  
    
     end
     initial begin 
     $monitor(" w = %d , z = %d,state = %d ",w,z,state);
     end
    endmodule 
        
