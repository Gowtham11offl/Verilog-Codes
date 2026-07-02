module decoder_2x4 (

input en, a,b,
output reg y3, y2, y1, y0

); 


always @(*) begin

if (!en) begin
y3=0; y2=0; y1=0; y0=0;
end

else begin

case ({a,b}) 

2'b00 : begin
y3=0; y2=0; y1=0; y0=1; end

2'b01 : begin
y3=0; y2=0; y1=1; y0=0; end

2'b10 : begin
y3=0; y2=1; y1=0; y0=0; end

2'b11 : begin
y3=1; y2=0; y1=0; y0=0; end





endcase

end

end

endmodule
