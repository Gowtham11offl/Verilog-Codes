module demux_1x2(

input [3:0] i, 
input s0,
output reg [3:0] o1, o2

);

always @(*) begin

case (s0)

	1'b0: begin
	o1 <= i; o2 <= 0; end

	1'b1 : begin
	o2 <= i; o1 <= 0;  end


default : begin
	o1 <= 0; 
	o2 <= 0;
	
end
endcase

end
endmodule
    
