module FA_using_HA (
    input a,b,c,
    output reg sum,carry
);

reg s1;
reg c1;
reg c2;

always @(*) begin
    s1 = a^b;
    c1 = a&b;
    c2 = s1&c;
    sum = s1^c;
    carry = c1 | c2;
end


endmodule