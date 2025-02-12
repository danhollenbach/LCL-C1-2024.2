module mincounter(
input clk,
input reset,
output explosion,
output [3:0] q
);

// logica para a contagem de numeros de 5 a 0 
always_ff @(posedge clk or posedge reset)
begin
	if (reset)
	begin
		explosion <= 0;
		q <= 5;
	end
	else
	begin
		if (q == 0)
		// envia o sinal de explosao
			explosion <= 1;
		else
		begin
		// decrementa a contagem em uma unidade
			q <= q - 1;
			explosion <= 0;
		end
	end
end
endmodule
