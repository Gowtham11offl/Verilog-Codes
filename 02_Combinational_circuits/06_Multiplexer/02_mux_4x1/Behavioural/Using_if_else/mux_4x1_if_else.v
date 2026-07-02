module mux_4x1 (

input i0, i1, i2, i3,
input s0, s1, en,
output reg y

);

always @ (*) begin

if(!en) begin

y <= 0; 

end

else if ({s1,s0}==2'b00) begin

y <= 1; 

end

else if ({s1,s0}==2'b01) begin

y <= 0;

end

else if ({s1,s0}==2'b10) begin

y <= 1; 

end

else if({s1,s0}==2'b11) begin

	y <= 1;

end

else begin

y <= 0; 

end


end
endmodule
