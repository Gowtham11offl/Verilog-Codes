module tb_demux_1x4 ();

reg [3:0] i;
reg s1, s0; 
wire [3:0] o1,o2,o3,o4;

demux_1x4 uut(

	.i(i),
	.s1(s1),
	.s0(s0),
	.o1(o1),
	.o2(o2),
	.o3(o3),
	.o4(o4)

);

initial begin

$dumpfile ("sim.vcd");
$dumpvars(0, uut); 
$monitor("Time=%0t i=%b s1=%b s0=%b o1=%b o2=%b o3=%b o4=%b", $time, i,s1,s0,o1,o2,o3,o4);

#10; 
s1 =0; s0=0; i= 4'd5;  
#10
s1 =0; s0=1; i= 4'd3; 
#10
s1 =1; s0 =0; i= 4'd6; 
#10;
s1 =1; s0 =1; i= 4'd4;
#10; 


$finish; 

end






endmodule
