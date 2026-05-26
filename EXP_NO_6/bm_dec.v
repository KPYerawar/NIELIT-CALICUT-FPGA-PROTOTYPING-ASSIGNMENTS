module bm_dec(
    input wire a,
    input wire b,
    input wire e,
    output reg [3:0] y
);

    always @(*) begin
        if (!e) begin
            y = 4'b0000; // Output is disabled
        end else begin
            case ({a, b})
                2'b00: y = 4'b0001;
                2'b01: y = 4'b0010;
                2'b10: y = 4'b0100;
                2'b11: y = 4'b1000;
                default: y = 4'b0000;
            endcase
        end
    end

endmodule
