module parity_checker (

input [3:0] in1,
input parity_bit, 
output error

); 
 


assign error = in1[3] ^ in1[2] ^ in1[1] ^ in1[0] ^ parity_bit;  

endmodule

