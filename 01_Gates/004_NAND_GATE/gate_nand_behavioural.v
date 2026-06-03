module gate_nand (
    input a,b,c,
    output reg y
);
    always @(*) begin
        y = ~(a&b&c);
    end
endmodule