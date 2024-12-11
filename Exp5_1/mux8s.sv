module mux8S(
input a,
input b,
input cin,
output Saida
);
logic [7:0] Dado;
assign Dado[0] = 0;
assign Dado[1] = 1;
assign Dado[2] = 1;
assign Dado[3] = 0;
assign Dado[4] = 1;
assign Dado[5] = 0;
assign Dado[6] = 0;
assign Dado[7] = 1;
assign Saida = Dado[{a, b, cin}];
endmodule