module encoder_4x2 (

output reg a,b,
input en, y3, y2, y1, y0

); 


always @(*) begin

if (!en) begin
a=0; b=0;
end

else begin

case ({y3, y2, y1, y0}) 

4'b0001 : begin
a=0; b=0; end

4'b0010 : begin
a=0; b=1;  end

4'b0100 : begin
a=1; b=0; end

4'b1000 : begin
a=1; b=1; end





endcase

end

end

endmodule

