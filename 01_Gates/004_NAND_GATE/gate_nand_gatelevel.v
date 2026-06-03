module gate_nand (
    input a,b,c,
    output y
);
    nand (y, a, b, c);
endmodule