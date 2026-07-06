module tb_graytobin (); 

reg [3:0] i; 
wire [3:0] g;




graytobin uut (i,g);

initial begin

$dumpfile ("sim.vcd");
$dumpvars(0, uut);

$monitor("Gray Code = %b --> Binary = %b ", i,g); 

repeat(5) begin

i = $random; #10; 

end 
end 
endmodule

