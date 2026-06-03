module gate_or(
    input a,b,
    output reg y
);

always @(*) begin
    y = a | b;
end
endmodule