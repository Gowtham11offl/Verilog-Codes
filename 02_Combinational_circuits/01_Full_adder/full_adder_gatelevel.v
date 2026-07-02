module full_adder (
    input a,b,c,
    output sum,carry,o1,o2,o3
);

xor(sum,a,b,c);
and(o1,a,b);
and(o2,b,c);
and(o3,c,a);
or(carry,o1,o2,o3);
    
endmodule