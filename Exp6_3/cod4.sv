module cod4(
input logic a,
input logic b,
input logic c,
input logic d,
output [9:0] saida
);

assign saida[9] = ~a & ~b & ~c & ~d;
assign saida[8] = ~a & ~b & ~c & d;
assign saida[7] = ~a & ~b & c & d;
assign saida[6] = ~a & ~b & c & ~d;
assign saida[5] = ~a & b & c & ~d;
assign saida[4] = ~a & b & c & d;
assign saida[3] = ~a & b & ~c & d;
assign saida[2] = ~a & b & ~c & ~d;
assign saida[1] = a & b & ~c & ~d;
assign saida[0] = a & b & ~c & d;

endmodule