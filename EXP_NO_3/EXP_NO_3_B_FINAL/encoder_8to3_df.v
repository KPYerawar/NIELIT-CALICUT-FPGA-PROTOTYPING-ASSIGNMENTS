module encoder_8to3_df (
    input wire [7:0] Y,
    output wire [2:0] A
);

    assign A[2] = Y[7] | Y[6] | Y[5] | Y[4];
    assign A[1] = Y[7] | Y[6] | Y[3] | Y[2];
    assign A[0] = Y[7] | Y[5] | Y[3] | Y[1];
endmodule
