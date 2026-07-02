module tb_encoder_4x2(); 

wire a, b;
reg en, y3, y2, y1, y0; 


encoder_4x2 uut(

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
en = 0; y3=0; y2=0; y1=0; y0=0;  
#10
en = 1; y3=0; y2=0; y1=0; y0=1;  
#10;
en = 1; y3=0; y2=0; y1=1; y0=0;  
#10;
en = 1; y3=0; y2=1; y1=0; y0=0; 
#10 
en=1; y3=1; y2=0; y1=0; y0=0;



$finish; 

end




endmodule
