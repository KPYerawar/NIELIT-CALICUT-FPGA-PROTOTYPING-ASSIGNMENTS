`timescale 1ns / 1ps

module tb_encoder_4to2_df;
    reg [3:0] Y;
    wire [1:0] A;

    // Instantiate Dataflow Encoder
    encoder_4to2_df uut (
        .Y(Y),
        .A(A)
    );

    initial begin
        $monitor("Time=%0t | Input Y=%b | Output A=%b", $time, Y, A);
        $dumpfile ("dfencoder.vcd");
        $dumpvars (0,tb_encoder_4to2_df);
        // Test all valid 1-hot combinations
        Y = 4'b0001; #10;
        Y = 4'b0010; #10;
        Y = 4'b0100; #10;
        Y = 4'b1000; #10;
        
        $finish;
    end
endmodule
