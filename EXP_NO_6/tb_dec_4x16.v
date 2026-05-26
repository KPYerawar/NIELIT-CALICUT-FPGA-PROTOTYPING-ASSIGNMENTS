`timescale 1ns / 1ps

module tb_dec_4x16;
    reg [3:0] a;
    wire [15:0] b;

    dec_4x16 uut (
        .a(a),
        .b(b)
    );

    integer i;
    initial begin 
        $dumpfile("dec_4x16.vcd");
        $dumpvars(0, tb_dec_4x16);
        
        $monitor("Time=%0t | Input a=%d (%b) | Output b=%b", $time, a, a, b);
        
        for (i = 0; i < 16; i = i + 1) begin
            a = i;
            #20;
        end 
        
        $finish;
    end
endmodule
