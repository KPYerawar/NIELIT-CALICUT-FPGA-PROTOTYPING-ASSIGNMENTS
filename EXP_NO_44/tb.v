module tb ;
reg clk ;
reg [2:0] opcode ;
wire [7:0] out ;

ALU a1 (.clk(clk),.opcode(opcode),.out(out));

always #5 clk = ~clk ;

initial begin
$dumpfile ("alu.vcd");
$dumpvars (0,tb);

repeat (20) begin 
clk = 1 ;
opcode = $random %7;
#10;
end 
$finish ;
end 
endmodule  
