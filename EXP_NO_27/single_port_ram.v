module single_port_ram
#(
parameter DATA_WIDTH = 8,
parameter ADDR_WIDTH = 4
)
(
input clk,
input c_en,
input wr_e,
input out_e,

input [ADDR_WIDTH-1:0] addr,
input [DATA_WIDTH-1:0] data,

output reg [DATA_WIDTH-1:0] q
);

reg [DATA_WIDTH-1:0] mem [0:(2**ADDR_WIDTH)-1];

always @(posedge clk)
begin

if(c_en)
begin

    if(wr_e)
        mem[addr] <= data;

    else if(out_e)
        q <= mem[addr];

end

end

endmodule
