module tb_mux1_structural_gates;

reg a,b,c;
wire f;

mux1_structural_gates dut(
.a(a),
.b(b),
.c(c),
.f(f)
);

initial begin
$dumpfile("mux1_structural_gates.vcd");
$dumpvars(0,tb_mux1_structural_gates);

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
