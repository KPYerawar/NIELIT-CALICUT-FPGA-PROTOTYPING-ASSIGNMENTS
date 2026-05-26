module encoder_4to2_df (
    input wire [3:0] Y,
    output wire [1:0] A
);
    // Simple 4-to-2 encoder boolean equations derived from active-high inputs
    assign A[1] = Y[3] | Y[2];
    assign A[0] = Y[3] | Y[1];
endmodule
