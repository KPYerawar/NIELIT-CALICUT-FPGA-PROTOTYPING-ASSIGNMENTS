module sm_prio(
input [3:0] y ,
output [1:0] a ,
output v );


wire not_y2;
    wire and_out;

    not gate_not (not_y2, y[2]);


    and gate_and (and_out, not_y2, y[1]);


    or gate_a1 (a[1], y[3], and_out);


    or gate_a0 (a[0], y[3], y[2]);


    or gate_v (v, y[3], y[2], y[1], y[0]);
    
    endmodule 
