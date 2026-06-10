module mux_4x1 (

input i0, i1, i2, i3, s0, s1, en,
output y

);

wire w1,w2,w3,w4,w5,w6;
wire muxout;
 

not(w1, s0); 
not(w2, s1);

and(w3,i0,w2,w1);
and(w4,i1,w2,s0);
and(w5,i2,s1,w1);
and(w6,i3,s1,s0);

or(muxout,w3,w4,w5,w6);

and(y,muxout,en);




endmodule
