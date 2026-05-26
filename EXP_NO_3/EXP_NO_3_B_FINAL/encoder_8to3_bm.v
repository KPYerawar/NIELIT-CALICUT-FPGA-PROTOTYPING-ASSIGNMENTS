module encoder_8to3_bm (
    input wire [7:0] Y,
    output reg [2:0] A
);
    always @(*) begin
        case (Y)
            8'b0000_0001 : A = 3'b000;
            8'b0000_0010 : A = 3'b001;
            8'b0000_0100 : A = 3'b010;
            8'b0000_1000 : A = 3'b011;
            8'b0001_0000 : A = 3'b100;
            8'b0010_0000 : A = 3'b101;
            8'b0100_0000 : A = 3'b110;
            8'b1000_0000 : A = 3'b111;
            default      : A = 3'bxxx;
        endcase
    end
endmodule
