module tb_bintogray (); 

reg [3:0] i; 
wire [3:0] g;




bintogray uut (i,g);

initial begin

$dumpfile ("sim.vcd");
$dumpvars(0, uut);

$monitor("Binary = %b --> Gray Code = %b ", i,g); 

repeat(5) begin

i = $random; #10; 

end 
end 
endmodule
