module bintogray (

input [3:0] i, 
output reg [3:0] g

); 

always @(*) begin

g[3] = i[3]; 
g[2]=  i[3] ^ i[2];
g[1] = i[2] ^ i[1];
g[0] = i[1] ^ i[0];   

end
endmodule
