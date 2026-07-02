module comparator_1bit (

input a,b,
output reg a_grt_b, a_less_b, a_equl_b

); 


always@ (*) begin

a_grt_b = 0; 
a_less_b =0; 
a_equl_b = 0; 


if(a>b) begin
a_grt_b = 1'b1; end

else if(a<b) begin
a_less_b = 1'b1; end

else begin
a_equl_b = 1'b1; end





end



endmodule
