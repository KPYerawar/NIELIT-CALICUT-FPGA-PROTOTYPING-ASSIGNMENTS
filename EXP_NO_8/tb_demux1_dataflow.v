module tb_demux1_dataflow;

reg d,s1,s0;
wire y0,y1,y2,y3;

demux1_dataflow dut(
.d(d),
.s1(s1),
.s0(s0),
.y0(y0),
.y1(y1),
.y2(y2),
.y3(y3)
);

initial begin

$dumpfile("demux1_dataflow.vcd");
$dumpvars(0,tb_demux1_dataflow);

d=1;s1=0;s0=0; #10;
d=1;s1=0;s0=1; #10;
d=1;s1=1;s0=0; #10;
d=1;s1=1;s0=1; #10;

end

initial
$monitor("t=%0t d=%b s1=%b s0=%b y0=%b y1=%b y2=%b y3=%b",
          $time,d,s1,s0,y0,y1,y2,y3);

endmodule
