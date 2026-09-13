module sr_ff_tb();
  reg s, r, clk;
  wire q;

  sr_ff dut (.*);

  always #5 clk=~clk;

  initial begin

   $dumpfile("sim.vcd");
   $dumpvars(0,sr_ff_tb);
   
    clk=0;
    #10; s=0; r=0;
    #10; s=1; r=0;  
    #10; s=0; r=1;   
    #10; s=0; r=0;   
    #10; s=1; r=1;   
    #10; s=0; r=0;
    #10; s=1; r=0;   
    #10; s=0; r=1;   
    #10; s=0; r=0;

    #10; $finish;
  end
 endmodule
