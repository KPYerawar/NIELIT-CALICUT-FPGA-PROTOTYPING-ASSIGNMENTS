module seq_detector_1111(
input clk,
input rst,
input x,
output reg z
);

reg [2:0] state;

parameter S0 = 3'b000;
parameter S1 = 3'b001;
parameter S2 = 3'b010;
parameter S3 = 3'b011;
parameter S4 = 3'b100;

always @(posedge clk)
begin

if(rst)
begin
    state <= S0;
    z <= 0;
end

else
begin

case(state)

S0:
begin
    z <= 0;
    if(x)
        state <= S1;
    else
        state <= S0;
end

S1:
begin
    z <= 0;
    if(x)
        state <= S2;
    else
        state <= S0;
end

S2:
begin
    z <= 0;
    if(x)
        state <= S3;
    else
        state <= S0;
end

S3:
begin
    if(x)
    begin
        state <= S0;
        z <= 1;
    end
    else
    begin
        state <= S0;
        z <= 0;
    end
end

default:
begin
    state <= S0;
    z <= 0;
end

endcase

end

end

endmodule
