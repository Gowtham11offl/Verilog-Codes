module gate_not(
    input in1,
    output reg o1
);

always @(*) begin
    o1 = ~in1;
end

endmodule