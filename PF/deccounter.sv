module deccounter(
input clk,
input reset,
output clkout,
output [3:0] q
);

always_ff @(posedge clk or posedge reset)
begin
	if (reset)
		q <= 0;
	else
	begin
		if (q == 0)
		begin
			q <= 9;
			clkout <= 1;
		end
		else
		begin
			q <= q - 1;
			clkout <= 0;
		end
	end
end
endmodule
