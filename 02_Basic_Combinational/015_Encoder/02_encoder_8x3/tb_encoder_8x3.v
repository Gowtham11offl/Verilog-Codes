module tb_encoder_8x3(); 

wire a, b, c;
reg en, y7, y6, y5, y4, y3, y2, y1, y0; 


encoder_8x3 uut(

 .en(en), 
 .a(a),
 .b(b),
 .c(c),
 .y7(y7),
 .y6(y6),
 .y5(y5),
 .y4(y4),
 .y3(y3),
 .y2(y2),
 .y1(y1),
 .y0(y0)
);


initial begin

$dumpfile ("sim.vcd");
$dumpvars(0, uut); 
$monitor("Time=%0t en=%b a=%b b=%b c=%b y7=%b y6=%b y5=%b y4=%b y3=%b y2=%b y1=%b y0=%b", $time, en,a,b,c,y7, y6, y5, y4, y3,y2,y1,y0);

#10; 
en = 0; y7=0; y6=0; y5=0; y4=0; y3=0; y2=0; y1=0; y0=0;  
#10;
en =1; y7=0; y6=0; y5=0; y4=0; y3=0; y2=0; y1=0; y0=1;
#10;
en =1; y7=0; y6=0; y5=0; y4=0; y3=0; y2=0; y1=1; y0=0;
#10;
en =1; y7=0; y6=0; y5=0; y4=0; y3=0; y2=1; y1=0; y0=0;
#10;
en =1; y7=0; y6=0; y5=0; y4=0; y3=1; y2=0; y1=0; y0=0;
#10;
en =1; y7=0; y6=0; y5=0; y4=1; y3=0; y2=0; y1=0; y0=0;
#10;
en =1; y7=0; y6=0; y5=1; y4=0; y3=0; y2=0; y1=0; y0=0;
#10;
en =1; y7=0; y6=1; y5=0; y4=0; y3=0; y2=0; y1=0; y0=0;
#10;
en =1; y7=1; y6=0; y5=0; y4=0; y3=0; y2=0; y1=0; y0=0;
#10



$finish; 

end




endmodule

