module passcreator(
input clk, 
input [6:0] senha,
output [6:0] correta
);

always_ff @(posedge clk)
	correta <= senha;

endmodule 