module latchSR(
input r,
input clk,
input s,
output q
);

always_latch
begin
	if (r)
		q <= 0;
	else if (s)
		q <= 1;
end

endmodule
