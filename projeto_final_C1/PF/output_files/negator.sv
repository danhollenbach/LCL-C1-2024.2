module negator(
input [6:0] senha,
output [6:0] negada
);

assign negada = ~senha;

endmodule
