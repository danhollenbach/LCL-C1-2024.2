module clocker (
input dis,
input clk,
output enable
);

// seleciona o clock com base no CLOCK_50 e no sinal de enable (explosion OR disarm)
always_comb
case(dis)
	0: enable = clk;
	1: enable = 0;
	default: enable = clk;
endcase

endmodule