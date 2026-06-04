module gate_xnor (
    input a,b,c,
    output y
);

assign y = a~^b~^c;
    
endmodule