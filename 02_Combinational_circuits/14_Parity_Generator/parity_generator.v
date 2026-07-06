module parity_generator (

input [3:0] in1, 
output reg parity

); 


always @ (*) begin

parity = in1[3] ^ in1[2] ^ in1[1] ^ in1[0];  

end





endmodule
