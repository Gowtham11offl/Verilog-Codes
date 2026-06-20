module sr_latch (

input s,r,
output reg q,qbar

);

always @ (*) begin

if(s != r) begin

q = s;
qbar = r;

end

else if (s==1 && r==1) begin

q = 1'b0; 
qbar = 1'b0; 

end
end



endmodule
