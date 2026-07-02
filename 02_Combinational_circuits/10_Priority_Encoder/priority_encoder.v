module priority_encoder(

input [7:0] i, 
output reg [2:0] o

);

always @(*) begin

casex (i) 


8'b00000001 : begin
o = 3'b000; end


8'b0000001x : begin
o = 3'b001; end

8'b000001xx : begin
o = 3'b010; end

8'b00001xxx : begin
o = 3'b011; end

8'b0001xxxx : begin
o = 3'b100; end

8'b001xxxxx : begin
o = 3'b101; end

8'b01xxxxxx : begin
o = 3'b110; end

8'b1xxxxxxx : begin
o = 3'b111; end

default : begin

o = 3'b000;
end

endcase



end



endmodule
