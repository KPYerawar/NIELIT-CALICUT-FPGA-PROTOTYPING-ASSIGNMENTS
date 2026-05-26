module dec_4x16(
    input wire [3:0] a,
    output reg [15:0] b
);

    always @(*) begin 
        case (a) 
            4'd0  : b = 16'h0001;
            4'd1  : b = 16'h0002;
            4'd2  : b = 16'h0004;
            4'd3  : b = 16'h0008;
            4'd4  : b = 16'h0010;
            4'd5  : b = 16'h0020;
            4'd6  : b = 16'h0040;
            4'd7  : b = 16'h0080;
            4'd8  : b = 16'h0100;
            4'd9  : b = 16'h0200;
            4'd10 : b = 16'h0400;
            4'd11 : b = 16'h0800;
            4'd12 : b = 16'h1000;
            4'd13 : b = 16'h2000;
            4'd14 : b = 16'h4000;
            4'd15 : b = 16'h8000;
            default: b = 16'h0000;
        endcase 
    end

endmodule
