module mux8(
input [7:0] Dado,
input a,
input b,
input c,
output Saida
);
assign Saida = Dado[{a, b, c}];
endmodule