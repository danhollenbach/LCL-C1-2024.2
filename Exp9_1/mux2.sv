module mux2 (
input choice,
input a,
input b,
output saida
);

logic [1:0] data;
assign data[0] = a;
assign data[1] = b;
assign saida = data[choice]; 
endmodule