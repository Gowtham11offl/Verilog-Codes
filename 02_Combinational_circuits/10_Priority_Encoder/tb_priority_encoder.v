module tb_priority_encoder (); 

reg [7:0] i; 
wire [2:0] o; 


priority_encoder uut(.i(i), .o(o)); 

initial begin 

$dumpfile ("sim.vcd");
$dumpvars (0,uut);

$monitor("i = %b --> o = %b", i,o);

repeat(6) begin
i = $random; #10;
end   


end

endmodule
