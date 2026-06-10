module mux_2x1 (

input a,b,en,s,
output reg y

);

reg y1; 

always @ (*) begin


y1 = s ? b : a ;
y = y1 & en; 
	



end



endmodule
