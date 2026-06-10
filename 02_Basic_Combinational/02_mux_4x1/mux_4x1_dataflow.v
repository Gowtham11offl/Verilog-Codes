module mux_4x1 (

input i0, i1, i2, i3, 
input s0, s1, en, 
output y

);

wire y1; 


assign y1 = s1 ? (s0 ? i3 : i2) : (s0 ? i1 : i2);
assign y = (y1& en);



endmodule
