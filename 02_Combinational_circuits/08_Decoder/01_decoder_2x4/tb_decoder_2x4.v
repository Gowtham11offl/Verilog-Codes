module tb_decoder_2x4(); 

reg en, a, b;
wire y3, y2, y1, y0; 


decoder_2x4 uut(

 .en(en), 
 .a(a),
 .b(b),
 .y3(y3),
 .y2(y2),
 .y1(y1),
 .y0(y0)
);


initial begin

$dumpfile ("sim.vcd");
$dumpvars(0, uut); 
$monitor("Time=%0t en=%b a=%b b=%b y3=%b y2=%b y1=%b y0=%b", $time, en,a,b,y3,y2,y1,y0);

#10; 
en = 1; a=0; b=0; 
#10
en =1; a=0; b=1;  
#10
en =1; a=1; b=0;  
#10;
en=1; a=1; b=1;
#10; 


$finish; 

end




endmodule
