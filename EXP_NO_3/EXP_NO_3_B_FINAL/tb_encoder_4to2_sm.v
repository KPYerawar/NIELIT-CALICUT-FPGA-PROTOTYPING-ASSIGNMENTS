
module tb_encoder_4to2_sm;
    reg [3:0] Y;
    wire [1:0] A;

    encoder_4to2_sm uut (
        .Y(Y),
        .A(A)
    );

    initial begin
        $monitor("Time=%0t | Input Y=%b | Output A=%b", $time, Y, A);
        $dumpfile("smencoder.vcd");
        $dumpvars(0,tb_encoder_4to2_sm);
        Y = 4'b0001; #10;
        Y = 4'b0010; #10;
        Y = 4'b0100; #10;
        Y = 4'b1000; #10;
        
        $finish;
    end
endmodule
