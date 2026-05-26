module encoder_8to3_sm (
    input wire [7:0] Y,
    output wire [2:0] A
);

    or gate2 (A[2], Y[7], Y[6], Y[5], Y[4]);
    or gate1 (A[1], Y[7], Y[6], Y[3], Y[2]);
    or gate0 (A[0], Y[7], Y[5], Y[3], Y[1]);
endmodule
