module tb_comparator_4bit (); 

reg [3:0] a,b; 
wire a_grt_b, a_less_b, a_equl_b; 


comparator_4bit uut(a, b, a_grt_b, a_less_b, a_equl_b);

initial begin

$dumpfile ("sim.vcd");
$dumpvars (0, uut);

$monitor ("a =%b b=%b --> a_grt_b =%b, a_less_b =%b , a_equl_b =%b", a,b,a_grt_b, a_less_b, a_equl_b);

repeat (6) begin

a = $random; 
b = $random; 
#10;

end   




end 









endmodule

