module tb_mux2_dataflow;

reg a,b,c;
wire f;

mux2_dataflow dut(
.a(a),
.b(b),
.c(c),
.f(f)
);

initial begin
$dumpfile("mux2_dataflow.vcd");
$dumpvars(0,tb_mux2_dataflow);

a=0;b=0;c=0; #10;
a=0;b=0;c=1; #10;
a=0;b=1;c=0; #10;
a=0;b=1;c=1; #10;
a=1;b=0;c=0; #10;
a=1;b=0;c=1; #10;
a=1;b=1;c=0; #10;
a=1;b=1;c=1; #10;

$finish;
end

initial
$monitor("time=%0t a=%b b=%b c=%b f=%b",
          $time,a,b,c,f);

endmodule
