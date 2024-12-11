module mux8C(
input a,
input b,
input cin,
output Saida
);
logic [7:0] Dado;
assign Dado[0] = 0;
assign Dado[1] = 0;
assign Dado[2] = 0;
assign Dado[3] = 1;
assign Dado[4] = 0;
assign Dado[5] = 1;
assign Dado[6] = 1;
assign Dado[7] = 1;
assign Saida = Dado[{a, b, cin}];
endmodule