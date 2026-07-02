module encoder_8x3(

output reg a,b,c,
input en, y7, y6, y5, y4, y3, y2, y1, y0

); 


always @(*) begin

if (!en) begin
a=0; b=0; c=0;
end

else begin

case ({y7, y6, y5, y4, y3, y2,y1, y0}) 

8'b00000001 : begin
a=0; b=0; c=0;  end


8'b00000010 : begin
a=0; b=0; c=1;  end

8'b00000100 : begin
a=0; b=1; c=0;  end


8'b00001000 : begin
a=0; b=1; c=1;  end


8'b00010000 : begin
a=1; b=0; c=0;  end


8'b00100000 : begin
a=1; b=0; c=1;  end

8'b01000000 : begin
a=1; b=1; c=0;  end


8'b10000000 : begin
a=1; b=1; c=1;  end

default : begin
a=0; b=0; c=0; end


endcase

end

end

endmodule

