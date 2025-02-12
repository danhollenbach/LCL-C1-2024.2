module latchSR(
input r,
input clk,
input s,
output q
);

// latch SR que define o sinal de reset(KEY[0]) ou de inicio de jogo (KEY[1])
always_latch
begin
	if (r)
		q <= 0;
	else if (s)
		q <= 1;
end

endmodule
