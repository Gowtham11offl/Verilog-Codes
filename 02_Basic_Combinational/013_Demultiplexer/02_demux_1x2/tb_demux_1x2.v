module tb_demux_1x2 ();

reg [3:0] i;
reg  s0; 
wire [3:0] o1,o2;

demux_1x2 uut(

	.i(i),
	.s0(s0),
	.o1(o1),
	.o2(o2)
	

);

initial begin

$dumpfile ("sim.vcd");
$dumpvars(0, uut); 
$monitor("Time=%0t i=%b s0=%b o1=%b o2=%b ", $time, i,s0,o1,o2,);

#10; 
s0=0; i= 4'd5;  
#10
s0=1; i= 4'd3; 
#10



$finish; 

end






endmodule

