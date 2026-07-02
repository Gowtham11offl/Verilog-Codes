module decoder_3x8 (

input en, a,b,c,
output reg y7, y6, y5, y4, y3, y2, y1, y0

); 


always @(*) begin

if (!en) begin
y7=0; y6=0; y5=0; y4=0; y3=0; y2=0; y1=0; y0=0;
end

else begin

case ({a,b,c}) 

3'b000 : begin
y7=0; y6=0; y5=0; y4=0; y3=0; y2=0; y1=0; y0=1; end

3'b001 : begin
y7=0; y6=0; y5=0; y4=0; y3=0; y2=0; y1=1; y0=0; end


3'b010 : begin
y7=0; y6=0; y5=0; y4=0; y3=0; y2=1; y1=0; y0=0; end

3'b011 : begin
y7=0; y6=0; y5=0; y4=0; y3=1; y2=0; y1=0; y0=0; end


3'b100 : begin
y7=0; y6=0; y5=0; y4=1; y3=0; y2=0; y1=0; y0=0; end


3'b101 : begin
y7=0; y6=0; y5=1; y4=0; y3=0; y2=0; y1=0; y0=0; end


3'b110 : begin
y7=0; y6=1; y5=0; y4=0; y3=0; y2=0; y1=0; y0=0; end


3'b111 : begin
y7=1; y6=0; y5=0; y4=0; y3=0; y2=0; y1=0; y0=0; end



endcase

end

end

endmodule
