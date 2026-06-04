module gate_xor_tb ();
    
reg a,b,c;
wire y;

gate_xor dut(
    .a(a),
    .b(b),
    .c(c),
    .y(y)
);

initial begin 

$dumpfile ("sim.vcd");
$dumpvars(0, dut);

$monitor("Time= %0t a=%b b=%b c=%c y=%b", $time, a,b,c,y);

a=0; b=0; c=0; #10;
a=0; b=0; c=1; #10;
a=0; b=1; c=0; #10;
a=0; b=1; c=1; #10;
a=1; b=0; c=0; #10;
a=1; b=0; c=1; #10;
a=1; b=1; c=0; #10;
a=1; b=1; c=1; #10;

$finish;

end
endmodule