module funfador (
input [6:0] leds,
input explosion,
output [6:0]  now
);

// no caso de explosao, designa a saida dos LEDR[6..0] para 1, independente do sinal emitido por LIGHTER
assign now[0] = leds[0] | explosion;
assign now[1] = leds[1] | explosion;
assign now[2] = leds[2] | explosion;
assign now[3] = leds[3] | explosion;
assign now[4] = leds[4] | explosion;
assign now[5] = leds[5] | explosion;
assign now[6] = leds[6] | explosion;
endmodule