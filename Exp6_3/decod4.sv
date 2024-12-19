module decod4(
input [9:0]dados,
output a,
output b,
output c,
output d
);

assign a = dados[0] | dados[1];
assign b = dados[0] | dados[1] | dados[2] | dados[3] | dados[4] | dados[5];
assign c = dados[4] | dados[5] | dados[6] | dados[7]; 
assign d = dados[0] | dados[3] | dados[4] | dados[7] | dados[8];
endmodule