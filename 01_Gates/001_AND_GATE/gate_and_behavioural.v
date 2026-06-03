module gate_and (
    input a,b,
    output reg y
);

always @(*) begin   // behavioural method which uses always @(*) begin
    y = a&b;
end

endmodule