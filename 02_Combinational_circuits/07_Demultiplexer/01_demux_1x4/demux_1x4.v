module demux_1x4(

input [3:0] i, 
input s1, s0,
output reg [3:0] o1, o2, o3, o4

);

always @(*) begin

case ({s1, s0})

	2'b00 : begin
	o1 <= i; o2 <= 0; o3 <= 0; o4 <= 0; end

	2'b01 : begin
	o2 <= i; o1 <= 0; o3 <= 0; o4 <= 0;  end

	2'b10 : begin
	o3 <= i; o1 <= 0; o2 <= 0; o4 <= 0; end

	2'b11 : begin
	o4 <= i; o1 <= 0; o3 <= 0; o2 <= 0; end

default : begin
	o1 <= 0; 
	o2 <= 0;
	o3 <= 0;
	o4 <= 0;
end
endcase

end
endmodule
