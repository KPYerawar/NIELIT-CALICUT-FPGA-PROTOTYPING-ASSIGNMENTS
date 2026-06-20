module second_counter(
input clock_div , rst ,
output reg min_trig // theis is the minute trigger veriable for the minute indication 
);



reg [5:0] sec; 
always @(posedge clock_div)begin
    if (rst ) begin 
        sec <= 0 ;
        min_trig <= 0 ;
       end 
         else begin 
             if ( sec > 59 ) begin 
                sec <= 0 ;
                min_trig <= 1 ;
                end 
                
               else begin 
                    sec <= sec + 1 ;
                    min_trig <=0 ;
                    end 
               end 
               end 
               endmodule 
