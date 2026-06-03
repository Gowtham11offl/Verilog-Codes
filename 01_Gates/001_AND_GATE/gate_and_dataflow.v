module gate_and (
    input a,b,
    output y
);
    assign y = a&b; // dataflow method, which uses assign
endmodule