module jk_ff_tb();
  reg j, k, clk;
  wire q;

  jk_ff dut (.*);

  always #5 clk=~clk;

  initial begin

   $dumpfile("sim.vcd");
   $dumpvars(0,jk_ff_tb);
   
    clk=0;
    #10; j=0; k=0;
    #10; j=1; k=0;  
    #10; j=0; k=1;   
    #10; j=0; k=0;   
    #10; j=1; k=1;   
    #10; j=0; k=0;
    #10; j=1; k=0;   
    #10; j=0; k=1;   
    #10; j=0; k=0;
    #10; j=1; k=1;

    #10; $finish;
  end
 endmodule
