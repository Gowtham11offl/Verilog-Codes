module dff_tb();
  reg en, d, clk;
  wire q;

  dff dut (.*);

  always #5 clk=~clk;

  initial begin

   $dumpfile("sim.vcd");
   $dumpvars(0,dff_tb);
   
    clk=0;
    #10; en=0; d=0;
    #10; en=1; d=0;  
    #10; en=1; d=1;   
    #10; en=0; d=0;   
    #10; en=1; d=1;   
    #10; en=0; d=0;
    #10; en=1; d=0;   
    #10; en=1; d=1;   
    #10; en=0; d=0;

    #10; $finish;
  end
 endmodule

