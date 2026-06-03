module gate_not_tb;

reg in1;
wire o1;

gate_not uut(
    .in1(in1),
    .o1(o1)
);

initial begin

$monitor ("Time=%0t in1=%b o1=%b", $time, in1,o1);

in1=0; #10;
in1=1; #10;

$dumpfile ("sim.vcd");
$dumpvars();

// $finish

end
endmodule