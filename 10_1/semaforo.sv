module semaforo(
input a, clk, rst,
output gc, rc, yc, gp, rp
);

typedef enum logic [4:0] {APAGA_TODAS, ESTADO_11, ESTADO_12, ESTADO_13, ESTADO_14, ESTADO_15, ESTADO_16, ESTADO_2, ESTADO_31,
ESTADO_32, ESTADO_33, ESTADO_34, ESTADO_41, ESTADO_42, ESTADO_43, ESTADO_44, ESTADO_45, ESTADO_5A, ESTADO_5B} statetype;
statetype state, next;

always_ff @(posedge clk or posedge rst)
begin
	if (rst) state <= APAGA_TODAS;
	else state <= next;
end

always_comb
	case(state)
		APAGA_TODAS:	if (a) next = ESTADO_5A;
							else next = ESTADO_11;
								
		ESTADO_11:		if (a) next = ESTADO_5A;
							else next = ESTADO_12;
							
		ESTADO_12:		if (a) next = ESTADO_5A;
							else next = ESTADO_13;
							
		ESTADO_13:		if (a) next = ESTADO_5A;
							else next = ESTADO_14;
							
		ESTADO_14:		if (a) next = ESTADO_5A;
							else next = ESTADO_15;
							
		ESTADO_15:		if (a) next = ESTADO_5A;
							else next = ESTADO_16;
							
		ESTADO_16:		if (a) next = ESTADO_5A;
							else next = ESTADO_2;
		
		ESTADO_2:		if (a) next = ESTADO_5A;
							else next = ESTADO_31;	
		
		ESTADO_31:		if (a) next = ESTADO_5A;
							else next = ESTADO_32;
		
		ESTADO_32:		if (a) next = ESTADO_5A;
							else next = ESTADO_33;
		
		ESTADO_33:		if (a) next = ESTADO_5A;
							else next = ESTADO_34;
		
		ESTADO_34:		if (a) next = ESTADO_5A;
							else next = ESTADO_41;
		
		ESTADO_41:		if (a) next = ESTADO_5A;
							else next = ESTADO_42;
		
		ESTADO_42:		if (a) next = ESTADO_5A;
							else next = ESTADO_43;
		
		ESTADO_43:		if (a) next = ESTADO_5A;
							else next = ESTADO_44;
		
		ESTADO_44:		if (a) next = ESTADO_5A;
							else next = ESTADO_45;
							
		ESTADO_45:		if (a) next = ESTADO_5A;
							else next = ESTADO_11;
		
		ESTADO_5A:		if (a) next = ESTADO_5B;
							else next = ESTADO_11;
		
		ESTADO_5B:		if (a) next = ESTADO_5A;
							else next = ESTADO_11;
							
		default: next = APAGA_TODAS;
		
	endcase
always_comb
	case(state)
		APAGA_TODAS:	begin
								gc = 0;
								yc = 0;
								rc = 0;
								gp = 0;
								rp = 0;
							end
		
		ESTADO_11:		begin
								gc = 1;
								yc = 0;
								rc = 0;
								gp = 0;
								rp = 1;
							end
		
		ESTADO_12:		begin
								gc = 1;
								yc = 0;
								rc = 0;
								gp = 0;
								rp = 1;
							end
		
		ESTADO_13:		begin
								gc = 1;
								yc = 0;
								rc = 0;
								gp = 0;
								rp = 1;
							end
		
		ESTADO_14:		begin
								gc = 1;
								yc = 0;
								rc = 0;
								gp = 0;
								rp = 1;
							end
		
		ESTADO_15:		begin
								gc = 1;
								yc = 0;
								rc = 0;
								gp = 0;
								rp = 1;
							end
						
		ESTADO_16:		begin
								gc = 1;
								yc = 0;
								rc = 0;
								gp = 0;
								rp = 1;
							end
		
		ESTADO_2:		begin
								gc = 0;
								yc = 1;
								rc = 0;
								gp = 0;
								rp = 1;
							end	
		
		ESTADO_31:		begin
								gc = 0;
								yc = 0;
								rc = 1;
								gp = 1;
								rp = 0;
							end
		
		ESTADO_32:		begin
								gc = 0;
								yc = 0;
								rc = 1;
								gp = 1;
								rp = 0;
							end
							
		ESTADO_33:		begin
								gc = 0;
								yc = 0;
								rc = 1;
								gp = 1;
								rp = 0;
							end
		
		ESTADO_34:		begin
								gc = 0;
								yc = 0;
								rc = 1;
								gp = 1;
								rp = 0;
							end
		ESTADO_41:		begin
								gc = 0;
								yc = 0;
								rc = 1;
								gp = 0;
								rp = 1;
							end
		
		
		ESTADO_42:		begin
								gc = 0;
								yc = 0;
								rc = 1;
								gp = 0;
								rp = 0;
							end
		
		ESTADO_43:		begin
								gc = 0;
								yc = 0;
								rc = 1;
								gp = 0;
								rp = 1;
							end
		
		
		ESTADO_44:		begin
								gc = 0;
								yc = 0;
								rc = 1;
								gp = 0;
								rp = 0;
							end
							
		ESTADO_45:		begin
								gc = 0;
								yc = 0;
								rc = 1;
								gp = 0;
								rp = 1;
							end
							
		ESTADO_5A:		begin
								gc = 0;
								yc = 1;
								rc = 0;
								gp = 0;
								rp = 0;
							end
		
		ESTADO_5B:		begin
								gc = 0;
								yc = 0;
								rc = 0;
								gp = 0;
								rp = 0;
							end
		
		default:			begin
								gc = 0;
								yc = 0;
								rc = 0;
								gp = 0;
								rp = 0;
							end
	endcase
	
endmodule

		