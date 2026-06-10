module mux_4x1_tb(
); 


reg i0, i1, i2, i3, s0, s1, en;
wire y;

mux_4x1 uut(

.i0(i0),
.i1(i1),
.i2(i2),
.i3(i3),
.s0(s0),
.s1(s1),
.en(en),
.y(y)

);

initial begin

i0 = 1;
i1 = 0;
i2 = 1;
i3 = 1;



$dumpfile("sim.vcd");
$dumpvars(0, uut);

$monitor("Time=%0t i0=%b i1=%b i2=%b i3=%b s0=%b s1=%b en=%b y=%b ", $time, i0, i1, i2, i3, s0, s1, en, y); 



en=1; s0=0; s1=0; #10; 
en=1; s0=0; s1=1; #10;
en=1; s0=1; s1=0; #10;
en=1; s0=1; s1=1; #10; 


$finish;



end

endmodule
