module basic_alu (

input [3:0] a,b, 
input [2:0] sel,
output reg [3:0] y,
output reg carry

); 

always @(*) begin

case (sel)



3'b000 : begin
{carry,y} = a+b;
end

3'b001 : begin
{carry,y} = a-b;
 end

3'b010 : begin
y = a&b;
 end

3'b011 : begin
y = a|b;
end

3'b100 : begin
y = a ^ b;
end

3'b101 : begin
y = ~a;
end

3'b110 : begin
y = a << 1; 
end

3'b111 : begin
y = a >> 1; 
end

default : begin

carry = 0;
y = 4'b0000;

end


endcase
end
endmodule
