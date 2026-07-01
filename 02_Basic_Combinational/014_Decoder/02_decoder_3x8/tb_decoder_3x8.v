module tb_decoder_3x8(); 

reg en, a, b, c;
wire y7, y6, y5, y4, y3, y2, y1, y0; 


decoder_3x8 uut(

 .en(en), 
 .a(a),
 .b(b),
 .c(c),
 .y7(y4),
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
en = 0; a=0; b=0; c=0;  
#10;
en =1; a=0; b=0; c=0;
#10;
en =1; a=0; b=0; c=1;  
#10;
en=1; a=0; b=1; c=0;
#10; 
en=1; a=0; b=1; c=1;
#10;
en=1; a=1; b=0; c=0;
#10;
en=1; a=1; b=0; c=1;
#10;
en=1; a=1; b=1; c=0;
#10;
en=1; a=1; b=1; c=1;
#10;


$finish; 

end




endmodule

