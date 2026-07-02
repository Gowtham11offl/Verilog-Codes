module mux_2x1_tb ();

reg a,b,en,s;
wire y; 



mux_2x1 uut(

.a(a),
.b(b),
.en(en),
.s(s),
.y(y)

); 

initial begin

	$dumpfile ("sim.vcd");
	$dumpvars(0, uut);

	$monitor("Time = %0t a=%b b=%b en=%b s=%b y=%b ", $time,a,b,en,s,y);

	
	a=0; b=0; s=0; en=0;  #10; 
	a=0; b=1; s=0; en=1; #10;
	a=1; b=0; s=0; en=1; #10;
	a=1; b=1; s=0; en=1; #10;
	a=0; b=0; s=1; en=1; #10;
	a=0; b=1; s=1; en=1; #10;
	a=1; b=0; s=1; en=1; #10;
	a=1; b=1; s=1; en=1; #10;


	$finish; 





end







endmodule
