module fsmtest;
reg clk , w , rst ;
wire z ;

always #5 clk =~clk;

fsm1 f1 (.clk(clk),.w(w),.z(z),.rst(rst));

initial begin 
rst = 1 ;
clk = 0 ;
#30;
clk = 1 ;
rst = 0 ;
repeat (20) begin 
w = $random %2;
#20;
$display(" w = %d , z = %d ",w,z);
end 
$finish;
end 
endmodule 
