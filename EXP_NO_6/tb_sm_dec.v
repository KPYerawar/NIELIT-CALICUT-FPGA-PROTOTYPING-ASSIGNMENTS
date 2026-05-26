`timescale 1ns / 1ps

module tb_sm_dec;
    reg a;
    reg b;
    reg e;
    wire [3:0] y;


    sm_dec uut (
        .a(a),
        .b(b),
        .e(e),
        .y(y)
    );

    initial begin

        $dumpfile("sm_dec.vcd");
        $dumpvars(0, tb_sm_dec);
        

        $monitor("Time=%0t | e=%b a=%b b=%b | y=%b", $time, e, a, b, y);
        

        e = 0; a = 0; b = 0; #20;
        e = 0; a = 1; b = 1; #20;
        

        e = 1; a = 0; b = 0; #20;
        e = 1; a = 0; b = 1; #20;
        e = 1; a = 1; b = 0; #20;
        e = 1; a = 1; b = 1; #20;
        
        $finish;
    end

endmodule
