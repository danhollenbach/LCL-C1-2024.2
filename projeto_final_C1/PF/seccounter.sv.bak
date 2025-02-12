module seccounter(
input clk,
input reset,
output clkout,
output [5:0] q
);

always_ff @(posedge clk or posedge reset)
begin
	if (reset)
		q <= 0;
	else
	begin
		if (q == 0)
		begin
			q <= 59;
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
