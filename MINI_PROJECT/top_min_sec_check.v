module top_min_sec_check (
input rst ,
output reg second ,
output reg minute );

clock_driver d1 (
.rst(rst),.clock_div (second ),.clk(clk ));

second_counter c1 (
.rst(rst),.clock_div(second),.min_trig(minute));







wire clk ;
SB_HFOSC CLK1(
    .CLKHFPU(1'b1),
    .CLKHFEN(1'b1),
    .CLKHF(clk)
);

defparam CLK1.CLKHF_DIV = "0b10"; // 12 MHz
endmodule 
