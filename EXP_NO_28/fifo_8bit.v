module fifo_8bit(
input clk,
input rst,

input wr_en,
input rd_en,

input [7:0] data_in,

output reg [7:0] data_out,
output fifo_full,
output fifo_empty
);

reg [7:0] mem [0:7];

reg [2:0] wr_ptr;
reg [2:0] rd_ptr;

reg [3:0] count;

assign fifo_empty = (count == 0);
assign fifo_full  = (count == 8);

always @(posedge clk)
begin

if(rst)
begin
    wr_ptr   <= 0;
    rd_ptr   <= 0;
    count    <= 0;
    data_out <= 0;
end

else
begin

    // WRITE
    if(wr_en && !fifo_full)
    begin
        mem[wr_ptr] <= data_in;
        wr_ptr <= wr_ptr + 1;
        count <= count + 1;
    end

    // READ
    if(rd_en && !fifo_empty)
    begin
        data_out <= mem[rd_ptr];
        rd_ptr <= rd_ptr + 1;
        count <= count - 1;
    end

end

end

endmodule
