module sr_latch_tb ();

reg s,r;
wire q,qbar;


sr_latch dut(
.s(s),
.r(r),
.q(q),
.qbar(qbar)
);

initial begin

$dumpfile("sim.vcd");
$dumpvars(0, dut);

$monitor("Time=%t s=%b r=%b q=%b qbar=%b", $time, s,r,q,qbar);

 s=0; r=0;
#10; s=0; r=1;
#10; s=1; r=0;
#10; s=1; r=1; 


$finish;

end



endmodule
