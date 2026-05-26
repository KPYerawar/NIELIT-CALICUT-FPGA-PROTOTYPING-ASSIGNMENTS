module BM_tb_encoder;
reg [3:0] y ;
wire [1:0] a ;

BM_encoder e1 (
.y(y),.a(a));



initial begin 
$dumpfile ("BM_encoder.vcd");
$dumpvars (0,BM_tb_encoder);

y = 4'b0001;
#20;
y = 4'b0010;
#20;y = 4'b0100;
#20;y = 4'b1000;
#20;
y = 4'b1010;
#20;
$finish;
end 
initial begin 
$monitor ("y = %b , a = %b ", y , a );
end 

endmodule 
