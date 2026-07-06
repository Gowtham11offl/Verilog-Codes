module tb_parity_checker (); 


reg [3:0] in1; 
reg parity_bit;
wire error; 




parity_checker uut(in1, parity_bit, error);


initial begin 

	$dumpfile("sim.vcd");
       $dumpvars(0, uut);
	$monitor ("Data = %b ,  Parity = %b --> Error = %b", in1, parity_bit, error);
	repeat(5) begin
		in1 = $random;
		parity_bit = $random;  #10;
	end
	


end



endmodule

