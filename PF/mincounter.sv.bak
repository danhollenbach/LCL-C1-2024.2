module mincounter(
input clk,
input reset,
output explosion,
output [3:0] q
);

always_ff @(posedge clk or posedge reset)
begin
	if (reset)
		q <= 5;
	else
	begin
		if (q == 0)
			explosion <= 1;
		else
		begin
			q <= q - 1;
			explosion <= 0;
		end
	end
end
endmodule
