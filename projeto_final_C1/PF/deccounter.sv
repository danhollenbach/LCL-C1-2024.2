module deccounter(
input clk,
input reset,
output clkout,
output [3:0] q
);

// logica para a contagem de numeros de 9 a 0 
always_ff @(posedge clk or posedge reset)
begin
	if (reset)
		q <= 0;
	else
	begin
		if (q == 0)
		begin
		// reseta a contagem e envia o sinal para o proximo contador
			q <= 9;
			clkout <= 1;
		end
		else
		begin
		// decrementa a contagem em uma unidade
			q <= q - 1;
			clkout <= 0;
		end
	end
end
endmodule
