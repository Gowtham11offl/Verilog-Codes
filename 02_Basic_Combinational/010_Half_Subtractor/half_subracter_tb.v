module half_subractor_tb();

reg a,b;
wire sum, carry;

half_subracter uut(

.a(a),
.b(b),
.sum(sum),
.carry(carry)

);

initial begin

$dumpfile("sim.vcd");
$dumpvars(0, uut);

$monitor("Time=0%t a=%b b=%b sum=%b carry=%b", $time, a, b, sum, carry);

a=0; b=0; #10; 
a=0; b=1; #10; 
a=1; b=0; #10; 
a=1; b=1; #10;

$finish;

end

endmodule
 
