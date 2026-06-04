module gate_nor (
    input a,b,c,
    output y
);
    assign y = ~(a|b|c);
endmodule