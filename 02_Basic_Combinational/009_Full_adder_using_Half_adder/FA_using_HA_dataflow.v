module FA_using_HA (
    input a,b,c,
    output sum,carry
);

wire s1;
wire c1;
wire c2;

assign s1 = a^b;
assign c1 = a&b; 
assign c2 = s1&c;
assign sum = s1^c;
assign carry = c1 | c2;
    
endmodule