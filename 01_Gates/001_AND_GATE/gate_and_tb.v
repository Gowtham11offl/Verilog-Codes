module gate_and_tb;

reg a, b; // reg for a,b because inputs will be given in testbench
wire y;

// DUT Instantiation
gate_and uut (   // gate_and is the module name of the design file. it should be same. uut can be any name
    .a(a), 
    .b(b),
    .y(y)
);

// Apply Test Vectors
initial begin
    a = 0; b = 0; #10;  // #10 is a delay. 0 to 10 ns
    a = 0; b = 1; #10;   // 10 to 20ns
    a = 1; b = 0; #10;  // 20 to 30ns
    a = 1; b = 1; #10;   // 30 to 40ns

    $finish;
end

// Monitor Output
initial begin
    $monitor("Time=%0t a=%b b=%b y=%b",
              $time, a, b,  y);
    $dumpfile ("sim.vcd"); // mandatory in iverilog, gtkwave
    $dumpvars();
end


endmodule