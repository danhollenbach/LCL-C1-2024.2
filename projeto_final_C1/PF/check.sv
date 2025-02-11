module check(
input [6:0] correct,
input [6:0] attempt,
output [6:0] matching
);

assign matching = ~(correct ^ attempt);

endmodule