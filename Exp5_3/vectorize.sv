module vectorize(
input [15:0]entradas,
output [7:0]vector
);
assign vector[0] = entradas[1] | entradas[3] | entradas[7] | entradas[11] | entradas[15];
assign vector[1] = entradas[3] | entradas[7] | entradas[11] | entradas[15];
assign vector[2] = entradas[3] | entradas[7] | entradas[11] | entradas[15];
assign vector[3] = entradas[10] | entradas[3] | entradas[7] | entradas[11] | entradas[15];
assign vector[4] = entradas[12] | entradas[3] | entradas[7] | entradas[11] | entradas[15];
assign vector[5] = entradas[6] | entradas[14] | entradas[3] | entradas[7] | entradas[11] | entradas[15];
assign vector[6] = entradas[3] | entradas[7] | entradas[11] | entradas[15];
assign vector[7] = entradas[9] | entradas[12] | entradas[3] | entradas[7] | entradas[11] | entradas[15];
endmodule