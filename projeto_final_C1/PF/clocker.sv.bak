module clocker (
input dis,
input clk,
output enable
);

always_comb
case(dis)
	0: enable = clk;
	1: enable = 0;
	default: enable = clk;
endcase

endmodule