module lighter (
input [6:0] correct,
output [6:0] leds,
output disarm
);

// designa para cada letra caso o bit da senha digitada foi correto ou nao (0 ou 1) 
logic a, b, c, d, e, f, g;
integer count;
assign a = correct[0];
assign b = correct[1];
assign c = correct[2];
assign d = correct[3];
assign e = correct[4];
assign f = correct[5];
assign g = correct[6];

// count = numero total de bits acertado
assign count = a + b + c + d + e + f + g;

// disarm = 1 se a senha difitada foi a mesma da correta, 0 caso contrario
assign disarm = a & b & c & d & e & f & g;

always_comb

// designa a saida LEDR[6..0] para count, de forma sequencial
case(count)
	0: leds = 7'b0000000;
	1: leds = 7'b0000001;
	2: leds = 7'b0000011;
	3: leds = 7'b0000111;
	4: leds = 7'b0001111;
	5: leds = 7'b0011111;
	6: leds = 7'b0111111;
	7: leds = 7'b1111111;
default: leds = 7'b0000000;
endcase
endmodule