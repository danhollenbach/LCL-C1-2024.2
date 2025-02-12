module check(
input [6:0] correct,
input [6:0] attempt,
output [6:0] matching
);

// faz um XOR bitwise da senha correta e a tentativa, para definir o numero de bits iguais em ambas
assign matching = ~(correct ^ attempt);

endmodule