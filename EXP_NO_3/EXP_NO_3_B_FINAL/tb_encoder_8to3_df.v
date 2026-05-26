
module tb_encoder_8to3_df;
    reg [7:0] Y;
    wire [2:0] A;

    encoder_8to3_df uut (
        .Y(Y),
        .A(A)
    );

    integer i;
    initial begin
        $monitor("Time=%0t | Input Y=%b | Output A=%b", $time, Y, A);
        $dumpfile("df8encoder.vcd");
        $dumpvars(0,tb_encoder_8to3_df);
        for (i = 0; i < 8; i = i + 1) begin
            Y = (1 << i);
            #10;
        end
        
        $finish;
    end
endmodule
