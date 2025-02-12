module blow (
input explosion,
input disarm,
output [10:0] ledr,
output [7:0] ledg
);

// caso a bomba exploda, liga todos os LEDR da placa
always_comb
case(explosion)
	0 : ledr = 11'b00000000000;
	1 : ledr = 11'b11111111111;
	default : ledr = 11'b00000000000;
endcase

// no caso de explosao ou vitoria no jogo, liga todos os LEDG da placa
assign ledg[0] = explosion | disarm;
assign ledg[1] = explosion | disarm;
assign ledg[2] = explosion | disarm;
assign ledg[3] = explosion | disarm;
assign ledg[4] = explosion | disarm;
assign ledg[5] = explosion | disarm;
assign ledg[6] = explosion | disarm;
assign ledg[7] = explosion | disarm;
endmodule 