module full_subtractor(

input a,b,c,
output reg sum,carry

);

always @ (*) begin

sum = a^b^c;
carry = (~a&b) | (b&c) | (~a&c); 



end



endmodule
