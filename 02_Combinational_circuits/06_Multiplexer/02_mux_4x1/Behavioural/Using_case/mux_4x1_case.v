module mux_4x1 (


input i0, i1, i2, i3, 
input s0, s1, en, 
output reg y

);

always @ (*) begin


case ({s1,s0})

2'b00 : begin

y <= 1; 

end

2'b01 : begin

y <= 0; 

end

2'b10 : begin

y <= 1; 

end

2'b11 : begin

y <= 1; 

end


default : begin

y <= 0; 

end

endcase

end






endmodule
