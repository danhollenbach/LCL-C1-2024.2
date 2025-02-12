module fdiv (
input clkin,
output reg clkout
);
integer cont;

initial
   cont=0;

// divide o clock inicial pelo fator definido  
always @(posedge clkin)
  begin
	if (cont==2500000)
		begin
		// zera o contador e inverte o clock de saida
			cont<=0;
			clkout<=~clkout;
		end
		else
		begin
		// aumenta a contagem em uma unidade e mantem o clock de saida
			cont<=cont+1;
			clkout<=clkout;
		end
   end
endmodule