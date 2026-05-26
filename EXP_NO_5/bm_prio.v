module bm_prio (
input [3:0] y ,
output reg [1:0] a ,
output reg v );



always @(*) begin 

if (y[3] == 1 ) begin
a  = 2'b11;
v = 1 ;
end

else if (y[2] == 1 ) begin
a  = 2'b10;
v = 1 ;
end

else if (y[3] == 1 ) begin
a  = 2'b01;
v = 1 ;
end

else if (y[3] == 1 ) begin
a  = 2'b00;
v = 1 ;
end

else begin 
v = 0 ;
a = 2'b00;

end 
end
endmodule 
