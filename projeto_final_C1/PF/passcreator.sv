module passcreator(
input clk, 
input [6:0] senha,
output [6:0] correta
);

// pega a senha gerada aleatoriamente em LFSRpass e salva de acordo com o clock setado em START(KEY[1]) 
always_ff @(posedge clk)
	correta <= senha;

endmodule 