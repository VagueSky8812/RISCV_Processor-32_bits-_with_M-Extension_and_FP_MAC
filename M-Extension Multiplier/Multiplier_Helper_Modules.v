module ha(
	input wire a, b,
	output wire c, s
);
	assign s = a ^ b;
	assign c = a & b;
endmodule
module fa(
	input wire a, b, cin,
	output wire cout, s
);
	assign s = a ^ b ^ cin;
	assign cout = (a & b) | cin&(a | b);
endmodule
module Sign_Extender(
	input wire A_N, B_N,
	input wire s_u_a, s_u_b,
	output wire [1:0] A_N_p1_2, B_N_p1_2
);
	assign A_N_p1_2 = {2{s_u_a & A_N}};
	assign B_N_p1_2 = {2{s_u_b & B_N}};
endmodule
module Yeh_Jen_Modified_Booth_Encoder(
	input wire B_2i_p1, B_2i, B_2i_m1,
	output wire Neg, Z, X1_b, X2_b
);
	assign Neg = B_2i_p1;
	assign Z = ~(B_2i_p1 ^ B_2i);
	assign X1_b = ~(B_2i ^ B_2i_m1);
	assign X2_b = (B_2i ^ B_2i_m1);
endmodule
module Yeh_Jen_Modified_Booth_Decoder(
	input wire A_j, A_j_m1,
	input wire Neg, Z, X1_b, X2_b,
	output wire PP_ij
);
	assign PP_ij = ~(((A_j ~^ Neg) | X1_b) & ((A_j_m1 ~^ Neg) | X2_b | Z));
endmodule
module Negate_bit_add(
	input wire B_2i_p1, B_2i, B_2i_m1,
	output wire N_2i
	);
	assign N_2i = B_2i_p1 & ~(B_2i & B_2i_m1);
endmodule
