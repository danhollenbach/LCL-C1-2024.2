module uncounter(
input clk,
input preset,
output clockout,
output [3:0] q
);

assign q = 0;
always_ff @(posedge clk)
begin
	if (q == 0)
	begin
		q = 9;
		clockout = 1;
	end
	else
	begin
		q = q - 1;
		clockout = 0;
	end
end
endmodule
		