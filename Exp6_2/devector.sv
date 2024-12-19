module devector(
input [9:0] dado,
output b0,
output b1,
output b2,
output b3,
output b4,
output b5,
output b6,
output b7,
output b8,
output b9
);

assign b0 = dado[0];
assign b1 = dado[1];
assign b2 = dado[2];
assign b3 = dado[3];
assign b4 = dado[4];
assign b5 = dado[5];
assign b6 = dado[6];
assign b7 = dado[7];
assign b8 = dado[8];
assign b9 = dado[9];

endmodule