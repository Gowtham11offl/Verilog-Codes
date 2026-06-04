module gate_nor (
    input a,b,c,
    output y
);
    nor (y,a,b,c);
endmodule