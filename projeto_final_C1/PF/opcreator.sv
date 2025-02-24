module opcreator(
input clk, 
input [2:0] op,
output [2:0] result
);

// pega a operacao gerada aleatoriamente em LFSRop e salva de acordo com o clock setado em ENTER(KEY[2])
always_ff @(posedge clk)
result <= op;

endmodule 