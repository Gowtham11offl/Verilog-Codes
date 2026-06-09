module half_subracter (

input a,b,
output sum,carry
);

wire c1; 

xor(sum, a, b);
not(c1,a);
and(carry,c1,b);


endmodule
