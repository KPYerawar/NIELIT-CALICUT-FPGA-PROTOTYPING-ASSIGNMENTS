module tb_exp_12;
wire q_latch;
reg clk , d, q_ff;

exp_12 e1 (
.q_latch(q_latch),.clk(clk),.d(d),.q_ff(q_ff));

always #5 clk = ~clk;

initial begin 
$dumpfile ("exp12.vcd");
$dumpvars (0,tb_exp_12);

d   = 0;
clk = 0;
#20  d = 1;     
#10; q_ff= 1 ;

#10  d = 0;      
#10; q_ff= 0 ;

#10  d = 1;
#10  d = 0;


#10  d = 1;
#10  d = 0;
#20; q_ff= 1 ;

#10  d = 0;



#10  d = 1;
#10  d = 0;



#20;
$finish;

end 
endmodule 
