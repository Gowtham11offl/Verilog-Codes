module mux_2x1 (

input a,b,s,en,
output y

);

wire y1; 

assign y1 = s? b : a; 
assign y = en & y1;



endmodule
