module tb_encoder_4to2_df;
    reg [3:0] Y;
    wire [1:0] A;


    encoder_4to2_df uut (
        .Y(Y),
        .A(A)
    );

    initial begin
$dumpfile ("encoder_df.vcd");
$dumpvars (0,tb_encoder_4to2_df);
        

        Y = 4'b0001; #10;
        Y = 4'b0010; #10;
        Y = 4'b0100; #10;
        Y = 4'b1000; #10;
        
        $finish;
    end
endmodule
