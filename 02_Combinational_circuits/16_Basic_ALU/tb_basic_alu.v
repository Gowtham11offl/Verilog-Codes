module tb_basic_alu();


reg [3:0] a;
reg [3:0] b;
reg [2:0] sel;
wire [3:0] y;
wire carry;


basic_alu uut(a,b,sel,y,carry); 

task apply_test; 

input [3:0] A,B;
input [2:0] Sel; 

begin 

a = A;
b = B;
sel = Sel;
#10;

$display ("A = %b , B = %b , Sel = %b ---> Y = %b , Carry = %b", a,b,sel,y,carry); 
end
endtask


initial begin

$dumpfile("sim.vcd");
$dumpvars(0,uut);

apply_test (4'd10, 4'd8, 3'd0);
apply_test (4'd11, 4'd2, 3'd1);
apply_test (4'd14, 4'd5, 3'd2);
apply_test (4'd8, 4'd3, 3'd3); 
apply_test (4'd3, 4'd8, 3'd4); 
apply_test (4'd5, 4'd9, 3'd5); 
apply_test (4'd5, 4'd5, 3'd6); 
apply_test (4'd9, 4'd11, 3'd7); 

end 




endmodule
