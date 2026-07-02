module FA_using_HA (
    input a,b,c,
    output sum,carry
);
   wire s1;
   wire c1;
   wire c2;


    xor(s1,a,b);
    and(c1,a,b);
    xor(sum,s1,c);
    and(c2,c1,c);
    or(carry,c1,c2);
    
endmodule