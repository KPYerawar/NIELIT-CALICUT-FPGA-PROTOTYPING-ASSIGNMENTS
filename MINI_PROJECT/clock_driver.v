module clock_driver (
input rst ,
output clock_div );

SB_HFOSC CLK1(
    .CLKHFPU(1'b1),
    .CLKHFEN(1'b1),
    .CLKHF(clk)
);

defparam CLK1.CLKHF_DIV = "0b10"; // 12 MHz
/* here  i  am using the 12 Mhz clock and the max feq
and the max feq supported by the vsd squadron is 48 Mhz */

/*now for the division for the clock 12 Mhz to 1hz we have to observe the 24th bit 
  0.000000083×2^24 = 1.392508928 */ 
  
  //sufficient for countng till the 1 sec //
  reg clk_24_bit = 0 ;
 reg [23:0] clock_count = 0 ;
 wire clk ;
 always @(posedge clk ) begin 
 
   if (rst ) begin 
     clock_count <=  0;
     clk_24_bit <= 0 ;
     end
     else begin 
           clock_count <= clock_count + 1 ;
           clk_24_bit <= clock_count[23];
           end
       end 
      
      assign clock_div = clk_24_bit;
      endmodule 
          
