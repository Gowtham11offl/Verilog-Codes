module mux_2x1 (

input a,b,en,s,
output y

);

wire s1,s2,s3; 

not (s1,s);
and(s2,s1,a);
and(s3,b,s);
or(y,s2,s3);




endmodule
