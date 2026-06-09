module full_subtractor (

input a,b,c,
output sum,carry

);

wire c1,c2,c3,a1;



xor(sum,a,b,c);
not(a1,a);
and(c1, a1,b);
and(c2,b,c);
and(c3, a1, c);
or(carry, c1|c2|c3);



endmodule
