module sr_latch (

input s,r,
output q,qbar

);

wire w1,w2; 

nor(q,r,qbar);
nor(qbar,s,q);
 





endmodule
