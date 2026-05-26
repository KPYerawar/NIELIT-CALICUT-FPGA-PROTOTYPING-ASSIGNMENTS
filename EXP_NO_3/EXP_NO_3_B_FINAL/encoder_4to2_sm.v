module encoder_4to2_sm (
    input wire [3:0] Y,
    output wire [1:0] A
);

    or gate1 (A[1], Y[3], Y[2]);
    or gate0 (A[0], Y[3], Y[1]);
endmodule
