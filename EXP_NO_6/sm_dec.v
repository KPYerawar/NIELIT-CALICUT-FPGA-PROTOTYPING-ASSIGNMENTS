module sm_dec(
    input wire a,
    input wire b,
    input wire e,
    output wire [3:0] y
);


    wire not_a;
    wire not_b;


    wire term0, term1, term2, term3;


    not gate_na (not_a, a);
    not gate_nb (not_b, b);


    and gate_t0 (term0, not_a, not_b); // a=0, b=0
    and gate_t1 (term1, not_a, b);     // a=0, b=1
    and gate_t2 (term2, a,     not_b); // a=1, b=0
    and gate_t3 (term3, a,     b);     // a=1, b=1


    and gate_y0 (y[0], term0, e);
    and gate_y1 (y[1], term1, e);
    and gate_y2 (y[2], term2, e);
    and gate_y3 (y[3], term3, e);

endmodule
