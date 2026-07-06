module tb_parity_generator (); 


reg [3:0] in1; 
wire parity; 




parity_generator uut(in1, parity);


initial begin 

	$dumpfile("sim.vcd");
       $dumpvars(0, uut);
	$monitor ("Data = %b --> Parity = %b", in1, parity);
	repeat(5) begin
		in1 = $random; #10;
	end	


end



endmodule
