module SUMBE_Multiplier_32(
	input wire [31:0] A, B,
	input wire s_u_a, s_u_b,
	output wire COUT,
	output wire [63:0] PRODUCT
);
	//Sign Extension
	wire [33:0] a, b;
	assign a[31:0] = A;
	assign b[31:0] = B;
	Sign_Extender S_E (.A_N(A[31]), .B_N(B[31]), .s_u_a(s_u_a), .s_u_b(s_u_b), .A_N_p1_2(a[33:32]), .B_N_p1_2(b[33:32]));
	//Generate Partial Products
	//Encode for 2i = 0
	wire Neg0, Z0, X1_b0, X2_b0;
	Yeh_Jen_Modified_Booth_Encoder Enc_0 (
		.B_2i_p1(b[1]), .B_2i(b[0]), .B_2i_m1(1'b0),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0)
	);
	//Decode for 2i = 0
	wire PP_0_0;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_0 (
		.A_j(a[0]), .A_j_m1(1'b0),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_0)
	);
	wire PP_0_1;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_1 (
		.A_j(a[1]), .A_j_m1(a[0]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_1)
	);
	wire PP_0_2;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_2 (
		.A_j(a[2]), .A_j_m1(a[1]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_2)
	);
	wire PP_0_3;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_3 (
		.A_j(a[3]), .A_j_m1(a[2]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_3)
	);
	wire PP_0_4;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_4 (
		.A_j(a[4]), .A_j_m1(a[3]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_4)
	);
	wire PP_0_5;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_5 (
		.A_j(a[5]), .A_j_m1(a[4]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_5)
	);
	wire PP_0_6;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_6 (
		.A_j(a[6]), .A_j_m1(a[5]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_6)
	);
	wire PP_0_7;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_7 (
		.A_j(a[7]), .A_j_m1(a[6]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_7)
	);
	wire PP_0_8;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_8 (
		.A_j(a[8]), .A_j_m1(a[7]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_8)
	);
	wire PP_0_9;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_9 (
		.A_j(a[9]), .A_j_m1(a[8]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_9)
	);
	wire PP_0_10;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_10 (
		.A_j(a[10]), .A_j_m1(a[9]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_10)
	);
	wire PP_0_11;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_11 (
		.A_j(a[11]), .A_j_m1(a[10]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_11)
	);
	wire PP_0_12;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_12 (
		.A_j(a[12]), .A_j_m1(a[11]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_12)
	);
	wire PP_0_13;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_13 (
		.A_j(a[13]), .A_j_m1(a[12]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_13)
	);
	wire PP_0_14;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_14 (
		.A_j(a[14]), .A_j_m1(a[13]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_14)
	);
	wire PP_0_15;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_15 (
		.A_j(a[15]), .A_j_m1(a[14]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_15)
	);
	wire PP_0_16;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_16 (
		.A_j(a[16]), .A_j_m1(a[15]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_16)
	);
	wire PP_0_17;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_17 (
		.A_j(a[17]), .A_j_m1(a[16]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_17)
	);
	wire PP_0_18;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_18 (
		.A_j(a[18]), .A_j_m1(a[17]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_18)
	);
	wire PP_0_19;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_19 (
		.A_j(a[19]), .A_j_m1(a[18]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_19)
	);
	wire PP_0_20;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_20 (
		.A_j(a[20]), .A_j_m1(a[19]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_20)
	);
	wire PP_0_21;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_21 (
		.A_j(a[21]), .A_j_m1(a[20]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_21)
	);
	wire PP_0_22;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_22 (
		.A_j(a[22]), .A_j_m1(a[21]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_22)
	);
	wire PP_0_23;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_23 (
		.A_j(a[23]), .A_j_m1(a[22]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_23)
	);
	wire PP_0_24;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_24 (
		.A_j(a[24]), .A_j_m1(a[23]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_24)
	);
	wire PP_0_25;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_25 (
		.A_j(a[25]), .A_j_m1(a[24]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_25)
	);
	wire PP_0_26;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_26 (
		.A_j(a[26]), .A_j_m1(a[25]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_26)
	);
	wire PP_0_27;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_27 (
		.A_j(a[27]), .A_j_m1(a[26]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_27)
	);
	wire PP_0_28;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_28 (
		.A_j(a[28]), .A_j_m1(a[27]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_28)
	);
	wire PP_0_29;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_29 (
		.A_j(a[29]), .A_j_m1(a[28]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_29)
	);
	wire PP_0_30;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_30 (
		.A_j(a[30]), .A_j_m1(a[29]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_30)
	);
	wire PP_0_31;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_31 (
		.A_j(a[31]), .A_j_m1(a[30]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_31)
	);
	wire PP_0_32;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_32 (
		.A_j(a[32]), .A_j_m1(a[31]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_32)
	);
	wire PP_0_33;
	wire PP_0_33_true;
	Yeh_Jen_Modified_Booth_Decoder Dec_0_33 (
		.A_j(a[33]), .A_j_m1(a[32]),
		.Neg(Neg0), .Z(Z0), .X1_b(X1_b0), .X2_b(X2_b0),
		.PP_ij(PP_0_33_true)
	);
	assign PP_0_33 = ~PP_0_33_true;
	//Encode for 2i = 2
	wire Neg2, Z2, X1_b2, X2_b2;
	Yeh_Jen_Modified_Booth_Encoder Enc_2 (
		.B_2i_p1(b[3]), .B_2i(b[2]), .B_2i_m1(b[1]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2)
	);
	//Decode for 2i = 2
	wire PP_2_0;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_0 (
		.A_j(a[0]), .A_j_m1(1'b0),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_0)
	);
	wire PP_2_1;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_1 (
		.A_j(a[1]), .A_j_m1(a[0]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_1)
	);
	wire PP_2_2;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_2 (
		.A_j(a[2]), .A_j_m1(a[1]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_2)
	);
	wire PP_2_3;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_3 (
		.A_j(a[3]), .A_j_m1(a[2]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_3)
	);
	wire PP_2_4;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_4 (
		.A_j(a[4]), .A_j_m1(a[3]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_4)
	);
	wire PP_2_5;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_5 (
		.A_j(a[5]), .A_j_m1(a[4]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_5)
	);
	wire PP_2_6;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_6 (
		.A_j(a[6]), .A_j_m1(a[5]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_6)
	);
	wire PP_2_7;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_7 (
		.A_j(a[7]), .A_j_m1(a[6]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_7)
	);
	wire PP_2_8;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_8 (
		.A_j(a[8]), .A_j_m1(a[7]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_8)
	);
	wire PP_2_9;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_9 (
		.A_j(a[9]), .A_j_m1(a[8]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_9)
	);
	wire PP_2_10;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_10 (
		.A_j(a[10]), .A_j_m1(a[9]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_10)
	);
	wire PP_2_11;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_11 (
		.A_j(a[11]), .A_j_m1(a[10]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_11)
	);
	wire PP_2_12;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_12 (
		.A_j(a[12]), .A_j_m1(a[11]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_12)
	);
	wire PP_2_13;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_13 (
		.A_j(a[13]), .A_j_m1(a[12]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_13)
	);
	wire PP_2_14;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_14 (
		.A_j(a[14]), .A_j_m1(a[13]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_14)
	);
	wire PP_2_15;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_15 (
		.A_j(a[15]), .A_j_m1(a[14]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_15)
	);
	wire PP_2_16;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_16 (
		.A_j(a[16]), .A_j_m1(a[15]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_16)
	);
	wire PP_2_17;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_17 (
		.A_j(a[17]), .A_j_m1(a[16]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_17)
	);
	wire PP_2_18;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_18 (
		.A_j(a[18]), .A_j_m1(a[17]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_18)
	);
	wire PP_2_19;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_19 (
		.A_j(a[19]), .A_j_m1(a[18]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_19)
	);
	wire PP_2_20;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_20 (
		.A_j(a[20]), .A_j_m1(a[19]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_20)
	);
	wire PP_2_21;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_21 (
		.A_j(a[21]), .A_j_m1(a[20]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_21)
	);
	wire PP_2_22;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_22 (
		.A_j(a[22]), .A_j_m1(a[21]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_22)
	);
	wire PP_2_23;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_23 (
		.A_j(a[23]), .A_j_m1(a[22]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_23)
	);
	wire PP_2_24;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_24 (
		.A_j(a[24]), .A_j_m1(a[23]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_24)
	);
	wire PP_2_25;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_25 (
		.A_j(a[25]), .A_j_m1(a[24]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_25)
	);
	wire PP_2_26;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_26 (
		.A_j(a[26]), .A_j_m1(a[25]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_26)
	);
	wire PP_2_27;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_27 (
		.A_j(a[27]), .A_j_m1(a[26]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_27)
	);
	wire PP_2_28;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_28 (
		.A_j(a[28]), .A_j_m1(a[27]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_28)
	);
	wire PP_2_29;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_29 (
		.A_j(a[29]), .A_j_m1(a[28]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_29)
	);
	wire PP_2_30;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_30 (
		.A_j(a[30]), .A_j_m1(a[29]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_30)
	);
	wire PP_2_31;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_31 (
		.A_j(a[31]), .A_j_m1(a[30]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_31)
	);
	wire PP_2_32;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_32 (
		.A_j(a[32]), .A_j_m1(a[31]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_32)
	);
	wire PP_2_33;
	wire PP_2_33_true;
	Yeh_Jen_Modified_Booth_Decoder Dec_2_33 (
		.A_j(a[33]), .A_j_m1(a[32]),
		.Neg(Neg2), .Z(Z2), .X1_b(X1_b2), .X2_b(X2_b2),
		.PP_ij(PP_2_33_true)
	);
	assign PP_2_33 = ~PP_2_33_true;
	//Encode for 2i = 4
	wire Neg4, Z4, X1_b4, X2_b4;
	Yeh_Jen_Modified_Booth_Encoder Enc_4 (
		.B_2i_p1(b[5]), .B_2i(b[4]), .B_2i_m1(b[3]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4)
	);
	//Decode for 2i = 4
	wire PP_4_0;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_0 (
		.A_j(a[0]), .A_j_m1(1'b0),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_0)
	);
	wire PP_4_1;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_1 (
		.A_j(a[1]), .A_j_m1(a[0]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_1)
	);
	wire PP_4_2;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_2 (
		.A_j(a[2]), .A_j_m1(a[1]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_2)
	);
	wire PP_4_3;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_3 (
		.A_j(a[3]), .A_j_m1(a[2]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_3)
	);
	wire PP_4_4;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_4 (
		.A_j(a[4]), .A_j_m1(a[3]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_4)
	);
	wire PP_4_5;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_5 (
		.A_j(a[5]), .A_j_m1(a[4]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_5)
	);
	wire PP_4_6;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_6 (
		.A_j(a[6]), .A_j_m1(a[5]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_6)
	);
	wire PP_4_7;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_7 (
		.A_j(a[7]), .A_j_m1(a[6]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_7)
	);
	wire PP_4_8;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_8 (
		.A_j(a[8]), .A_j_m1(a[7]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_8)
	);
	wire PP_4_9;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_9 (
		.A_j(a[9]), .A_j_m1(a[8]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_9)
	);
	wire PP_4_10;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_10 (
		.A_j(a[10]), .A_j_m1(a[9]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_10)
	);
	wire PP_4_11;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_11 (
		.A_j(a[11]), .A_j_m1(a[10]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_11)
	);
	wire PP_4_12;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_12 (
		.A_j(a[12]), .A_j_m1(a[11]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_12)
	);
	wire PP_4_13;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_13 (
		.A_j(a[13]), .A_j_m1(a[12]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_13)
	);
	wire PP_4_14;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_14 (
		.A_j(a[14]), .A_j_m1(a[13]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_14)
	);
	wire PP_4_15;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_15 (
		.A_j(a[15]), .A_j_m1(a[14]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_15)
	);
	wire PP_4_16;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_16 (
		.A_j(a[16]), .A_j_m1(a[15]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_16)
	);
	wire PP_4_17;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_17 (
		.A_j(a[17]), .A_j_m1(a[16]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_17)
	);
	wire PP_4_18;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_18 (
		.A_j(a[18]), .A_j_m1(a[17]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_18)
	);
	wire PP_4_19;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_19 (
		.A_j(a[19]), .A_j_m1(a[18]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_19)
	);
	wire PP_4_20;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_20 (
		.A_j(a[20]), .A_j_m1(a[19]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_20)
	);
	wire PP_4_21;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_21 (
		.A_j(a[21]), .A_j_m1(a[20]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_21)
	);
	wire PP_4_22;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_22 (
		.A_j(a[22]), .A_j_m1(a[21]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_22)
	);
	wire PP_4_23;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_23 (
		.A_j(a[23]), .A_j_m1(a[22]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_23)
	);
	wire PP_4_24;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_24 (
		.A_j(a[24]), .A_j_m1(a[23]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_24)
	);
	wire PP_4_25;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_25 (
		.A_j(a[25]), .A_j_m1(a[24]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_25)
	);
	wire PP_4_26;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_26 (
		.A_j(a[26]), .A_j_m1(a[25]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_26)
	);
	wire PP_4_27;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_27 (
		.A_j(a[27]), .A_j_m1(a[26]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_27)
	);
	wire PP_4_28;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_28 (
		.A_j(a[28]), .A_j_m1(a[27]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_28)
	);
	wire PP_4_29;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_29 (
		.A_j(a[29]), .A_j_m1(a[28]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_29)
	);
	wire PP_4_30;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_30 (
		.A_j(a[30]), .A_j_m1(a[29]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_30)
	);
	wire PP_4_31;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_31 (
		.A_j(a[31]), .A_j_m1(a[30]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_31)
	);
	wire PP_4_32;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_32 (
		.A_j(a[32]), .A_j_m1(a[31]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_32)
	);
	wire PP_4_33;
	wire PP_4_33_true;
	Yeh_Jen_Modified_Booth_Decoder Dec_4_33 (
		.A_j(a[33]), .A_j_m1(a[32]),
		.Neg(Neg4), .Z(Z4), .X1_b(X1_b4), .X2_b(X2_b4),
		.PP_ij(PP_4_33_true)
	);
	assign PP_4_33 = ~PP_4_33_true;
	//Encode for 2i = 6
	wire Neg6, Z6, X1_b6, X2_b6;
	Yeh_Jen_Modified_Booth_Encoder Enc_6 (
		.B_2i_p1(b[7]), .B_2i(b[6]), .B_2i_m1(b[5]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6)
	);
	//Decode for 2i = 6
	wire PP_6_0;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_0 (
		.A_j(a[0]), .A_j_m1(1'b0),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_0)
	);
	wire PP_6_1;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_1 (
		.A_j(a[1]), .A_j_m1(a[0]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_1)
	);
	wire PP_6_2;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_2 (
		.A_j(a[2]), .A_j_m1(a[1]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_2)
	);
	wire PP_6_3;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_3 (
		.A_j(a[3]), .A_j_m1(a[2]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_3)
	);
	wire PP_6_4;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_4 (
		.A_j(a[4]), .A_j_m1(a[3]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_4)
	);
	wire PP_6_5;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_5 (
		.A_j(a[5]), .A_j_m1(a[4]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_5)
	);
	wire PP_6_6;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_6 (
		.A_j(a[6]), .A_j_m1(a[5]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_6)
	);
	wire PP_6_7;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_7 (
		.A_j(a[7]), .A_j_m1(a[6]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_7)
	);
	wire PP_6_8;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_8 (
		.A_j(a[8]), .A_j_m1(a[7]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_8)
	);
	wire PP_6_9;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_9 (
		.A_j(a[9]), .A_j_m1(a[8]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_9)
	);
	wire PP_6_10;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_10 (
		.A_j(a[10]), .A_j_m1(a[9]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_10)
	);
	wire PP_6_11;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_11 (
		.A_j(a[11]), .A_j_m1(a[10]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_11)
	);
	wire PP_6_12;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_12 (
		.A_j(a[12]), .A_j_m1(a[11]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_12)
	);
	wire PP_6_13;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_13 (
		.A_j(a[13]), .A_j_m1(a[12]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_13)
	);
	wire PP_6_14;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_14 (
		.A_j(a[14]), .A_j_m1(a[13]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_14)
	);
	wire PP_6_15;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_15 (
		.A_j(a[15]), .A_j_m1(a[14]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_15)
	);
	wire PP_6_16;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_16 (
		.A_j(a[16]), .A_j_m1(a[15]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_16)
	);
	wire PP_6_17;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_17 (
		.A_j(a[17]), .A_j_m1(a[16]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_17)
	);
	wire PP_6_18;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_18 (
		.A_j(a[18]), .A_j_m1(a[17]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_18)
	);
	wire PP_6_19;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_19 (
		.A_j(a[19]), .A_j_m1(a[18]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_19)
	);
	wire PP_6_20;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_20 (
		.A_j(a[20]), .A_j_m1(a[19]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_20)
	);
	wire PP_6_21;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_21 (
		.A_j(a[21]), .A_j_m1(a[20]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_21)
	);
	wire PP_6_22;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_22 (
		.A_j(a[22]), .A_j_m1(a[21]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_22)
	);
	wire PP_6_23;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_23 (
		.A_j(a[23]), .A_j_m1(a[22]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_23)
	);
	wire PP_6_24;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_24 (
		.A_j(a[24]), .A_j_m1(a[23]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_24)
	);
	wire PP_6_25;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_25 (
		.A_j(a[25]), .A_j_m1(a[24]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_25)
	);
	wire PP_6_26;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_26 (
		.A_j(a[26]), .A_j_m1(a[25]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_26)
	);
	wire PP_6_27;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_27 (
		.A_j(a[27]), .A_j_m1(a[26]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_27)
	);
	wire PP_6_28;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_28 (
		.A_j(a[28]), .A_j_m1(a[27]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_28)
	);
	wire PP_6_29;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_29 (
		.A_j(a[29]), .A_j_m1(a[28]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_29)
	);
	wire PP_6_30;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_30 (
		.A_j(a[30]), .A_j_m1(a[29]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_30)
	);
	wire PP_6_31;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_31 (
		.A_j(a[31]), .A_j_m1(a[30]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_31)
	);
	wire PP_6_32;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_32 (
		.A_j(a[32]), .A_j_m1(a[31]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_32)
	);
	wire PP_6_33;
	wire PP_6_33_true;
	Yeh_Jen_Modified_Booth_Decoder Dec_6_33 (
		.A_j(a[33]), .A_j_m1(a[32]),
		.Neg(Neg6), .Z(Z6), .X1_b(X1_b6), .X2_b(X2_b6),
		.PP_ij(PP_6_33_true)
	);
	assign PP_6_33 = ~PP_6_33_true;
	//Encode for 2i = 8
	wire Neg8, Z8, X1_b8, X2_b8;
	Yeh_Jen_Modified_Booth_Encoder Enc_8 (
		.B_2i_p1(b[9]), .B_2i(b[8]), .B_2i_m1(b[7]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8)
	);
	//Decode for 2i = 8
	wire PP_8_0;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_0 (
		.A_j(a[0]), .A_j_m1(1'b0),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_0)
	);
	wire PP_8_1;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_1 (
		.A_j(a[1]), .A_j_m1(a[0]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_1)
	);
	wire PP_8_2;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_2 (
		.A_j(a[2]), .A_j_m1(a[1]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_2)
	);
	wire PP_8_3;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_3 (
		.A_j(a[3]), .A_j_m1(a[2]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_3)
	);
	wire PP_8_4;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_4 (
		.A_j(a[4]), .A_j_m1(a[3]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_4)
	);
	wire PP_8_5;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_5 (
		.A_j(a[5]), .A_j_m1(a[4]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_5)
	);
	wire PP_8_6;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_6 (
		.A_j(a[6]), .A_j_m1(a[5]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_6)
	);
	wire PP_8_7;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_7 (
		.A_j(a[7]), .A_j_m1(a[6]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_7)
	);
	wire PP_8_8;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_8 (
		.A_j(a[8]), .A_j_m1(a[7]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_8)
	);
	wire PP_8_9;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_9 (
		.A_j(a[9]), .A_j_m1(a[8]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_9)
	);
	wire PP_8_10;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_10 (
		.A_j(a[10]), .A_j_m1(a[9]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_10)
	);
	wire PP_8_11;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_11 (
		.A_j(a[11]), .A_j_m1(a[10]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_11)
	);
	wire PP_8_12;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_12 (
		.A_j(a[12]), .A_j_m1(a[11]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_12)
	);
	wire PP_8_13;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_13 (
		.A_j(a[13]), .A_j_m1(a[12]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_13)
	);
	wire PP_8_14;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_14 (
		.A_j(a[14]), .A_j_m1(a[13]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_14)
	);
	wire PP_8_15;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_15 (
		.A_j(a[15]), .A_j_m1(a[14]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_15)
	);
	wire PP_8_16;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_16 (
		.A_j(a[16]), .A_j_m1(a[15]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_16)
	);
	wire PP_8_17;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_17 (
		.A_j(a[17]), .A_j_m1(a[16]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_17)
	);
	wire PP_8_18;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_18 (
		.A_j(a[18]), .A_j_m1(a[17]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_18)
	);
	wire PP_8_19;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_19 (
		.A_j(a[19]), .A_j_m1(a[18]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_19)
	);
	wire PP_8_20;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_20 (
		.A_j(a[20]), .A_j_m1(a[19]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_20)
	);
	wire PP_8_21;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_21 (
		.A_j(a[21]), .A_j_m1(a[20]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_21)
	);
	wire PP_8_22;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_22 (
		.A_j(a[22]), .A_j_m1(a[21]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_22)
	);
	wire PP_8_23;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_23 (
		.A_j(a[23]), .A_j_m1(a[22]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_23)
	);
	wire PP_8_24;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_24 (
		.A_j(a[24]), .A_j_m1(a[23]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_24)
	);
	wire PP_8_25;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_25 (
		.A_j(a[25]), .A_j_m1(a[24]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_25)
	);
	wire PP_8_26;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_26 (
		.A_j(a[26]), .A_j_m1(a[25]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_26)
	);
	wire PP_8_27;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_27 (
		.A_j(a[27]), .A_j_m1(a[26]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_27)
	);
	wire PP_8_28;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_28 (
		.A_j(a[28]), .A_j_m1(a[27]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_28)
	);
	wire PP_8_29;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_29 (
		.A_j(a[29]), .A_j_m1(a[28]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_29)
	);
	wire PP_8_30;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_30 (
		.A_j(a[30]), .A_j_m1(a[29]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_30)
	);
	wire PP_8_31;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_31 (
		.A_j(a[31]), .A_j_m1(a[30]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_31)
	);
	wire PP_8_32;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_32 (
		.A_j(a[32]), .A_j_m1(a[31]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_32)
	);
	wire PP_8_33;
	wire PP_8_33_true;
	Yeh_Jen_Modified_Booth_Decoder Dec_8_33 (
		.A_j(a[33]), .A_j_m1(a[32]),
		.Neg(Neg8), .Z(Z8), .X1_b(X1_b8), .X2_b(X2_b8),
		.PP_ij(PP_8_33_true)
	);
	assign PP_8_33 = ~PP_8_33_true;
	//Encode for 2i = 10
	wire Neg10, Z10, X1_b10, X2_b10;
	Yeh_Jen_Modified_Booth_Encoder Enc_10 (
		.B_2i_p1(b[11]), .B_2i(b[10]), .B_2i_m1(b[9]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10)
	);
	//Decode for 2i = 10
	wire PP_10_0;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_0 (
		.A_j(a[0]), .A_j_m1(1'b0),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_0)
	);
	wire PP_10_1;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_1 (
		.A_j(a[1]), .A_j_m1(a[0]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_1)
	);
	wire PP_10_2;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_2 (
		.A_j(a[2]), .A_j_m1(a[1]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_2)
	);
	wire PP_10_3;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_3 (
		.A_j(a[3]), .A_j_m1(a[2]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_3)
	);
	wire PP_10_4;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_4 (
		.A_j(a[4]), .A_j_m1(a[3]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_4)
	);
	wire PP_10_5;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_5 (
		.A_j(a[5]), .A_j_m1(a[4]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_5)
	);
	wire PP_10_6;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_6 (
		.A_j(a[6]), .A_j_m1(a[5]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_6)
	);
	wire PP_10_7;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_7 (
		.A_j(a[7]), .A_j_m1(a[6]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_7)
	);
	wire PP_10_8;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_8 (
		.A_j(a[8]), .A_j_m1(a[7]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_8)
	);
	wire PP_10_9;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_9 (
		.A_j(a[9]), .A_j_m1(a[8]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_9)
	);
	wire PP_10_10;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_10 (
		.A_j(a[10]), .A_j_m1(a[9]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_10)
	);
	wire PP_10_11;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_11 (
		.A_j(a[11]), .A_j_m1(a[10]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_11)
	);
	wire PP_10_12;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_12 (
		.A_j(a[12]), .A_j_m1(a[11]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_12)
	);
	wire PP_10_13;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_13 (
		.A_j(a[13]), .A_j_m1(a[12]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_13)
	);
	wire PP_10_14;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_14 (
		.A_j(a[14]), .A_j_m1(a[13]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_14)
	);
	wire PP_10_15;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_15 (
		.A_j(a[15]), .A_j_m1(a[14]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_15)
	);
	wire PP_10_16;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_16 (
		.A_j(a[16]), .A_j_m1(a[15]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_16)
	);
	wire PP_10_17;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_17 (
		.A_j(a[17]), .A_j_m1(a[16]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_17)
	);
	wire PP_10_18;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_18 (
		.A_j(a[18]), .A_j_m1(a[17]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_18)
	);
	wire PP_10_19;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_19 (
		.A_j(a[19]), .A_j_m1(a[18]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_19)
	);
	wire PP_10_20;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_20 (
		.A_j(a[20]), .A_j_m1(a[19]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_20)
	);
	wire PP_10_21;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_21 (
		.A_j(a[21]), .A_j_m1(a[20]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_21)
	);
	wire PP_10_22;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_22 (
		.A_j(a[22]), .A_j_m1(a[21]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_22)
	);
	wire PP_10_23;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_23 (
		.A_j(a[23]), .A_j_m1(a[22]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_23)
	);
	wire PP_10_24;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_24 (
		.A_j(a[24]), .A_j_m1(a[23]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_24)
	);
	wire PP_10_25;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_25 (
		.A_j(a[25]), .A_j_m1(a[24]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_25)
	);
	wire PP_10_26;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_26 (
		.A_j(a[26]), .A_j_m1(a[25]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_26)
	);
	wire PP_10_27;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_27 (
		.A_j(a[27]), .A_j_m1(a[26]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_27)
	);
	wire PP_10_28;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_28 (
		.A_j(a[28]), .A_j_m1(a[27]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_28)
	);
	wire PP_10_29;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_29 (
		.A_j(a[29]), .A_j_m1(a[28]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_29)
	);
	wire PP_10_30;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_30 (
		.A_j(a[30]), .A_j_m1(a[29]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_30)
	);
	wire PP_10_31;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_31 (
		.A_j(a[31]), .A_j_m1(a[30]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_31)
	);
	wire PP_10_32;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_32 (
		.A_j(a[32]), .A_j_m1(a[31]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_32)
	);
	wire PP_10_33;
	wire PP_10_33_true;
	Yeh_Jen_Modified_Booth_Decoder Dec_10_33 (
		.A_j(a[33]), .A_j_m1(a[32]),
		.Neg(Neg10), .Z(Z10), .X1_b(X1_b10), .X2_b(X2_b10),
		.PP_ij(PP_10_33_true)
	);
	assign PP_10_33 = ~PP_10_33_true;
	//Encode for 2i = 12
	wire Neg12, Z12, X1_b12, X2_b12;
	Yeh_Jen_Modified_Booth_Encoder Enc_12 (
		.B_2i_p1(b[13]), .B_2i(b[12]), .B_2i_m1(b[11]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12)
	);
	//Decode for 2i = 12
	wire PP_12_0;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_0 (
		.A_j(a[0]), .A_j_m1(1'b0),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_0)
	);
	wire PP_12_1;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_1 (
		.A_j(a[1]), .A_j_m1(a[0]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_1)
	);
	wire PP_12_2;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_2 (
		.A_j(a[2]), .A_j_m1(a[1]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_2)
	);
	wire PP_12_3;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_3 (
		.A_j(a[3]), .A_j_m1(a[2]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_3)
	);
	wire PP_12_4;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_4 (
		.A_j(a[4]), .A_j_m1(a[3]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_4)
	);
	wire PP_12_5;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_5 (
		.A_j(a[5]), .A_j_m1(a[4]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_5)
	);
	wire PP_12_6;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_6 (
		.A_j(a[6]), .A_j_m1(a[5]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_6)
	);
	wire PP_12_7;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_7 (
		.A_j(a[7]), .A_j_m1(a[6]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_7)
	);
	wire PP_12_8;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_8 (
		.A_j(a[8]), .A_j_m1(a[7]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_8)
	);
	wire PP_12_9;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_9 (
		.A_j(a[9]), .A_j_m1(a[8]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_9)
	);
	wire PP_12_10;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_10 (
		.A_j(a[10]), .A_j_m1(a[9]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_10)
	);
	wire PP_12_11;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_11 (
		.A_j(a[11]), .A_j_m1(a[10]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_11)
	);
	wire PP_12_12;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_12 (
		.A_j(a[12]), .A_j_m1(a[11]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_12)
	);
	wire PP_12_13;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_13 (
		.A_j(a[13]), .A_j_m1(a[12]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_13)
	);
	wire PP_12_14;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_14 (
		.A_j(a[14]), .A_j_m1(a[13]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_14)
	);
	wire PP_12_15;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_15 (
		.A_j(a[15]), .A_j_m1(a[14]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_15)
	);
	wire PP_12_16;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_16 (
		.A_j(a[16]), .A_j_m1(a[15]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_16)
	);
	wire PP_12_17;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_17 (
		.A_j(a[17]), .A_j_m1(a[16]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_17)
	);
	wire PP_12_18;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_18 (
		.A_j(a[18]), .A_j_m1(a[17]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_18)
	);
	wire PP_12_19;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_19 (
		.A_j(a[19]), .A_j_m1(a[18]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_19)
	);
	wire PP_12_20;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_20 (
		.A_j(a[20]), .A_j_m1(a[19]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_20)
	);
	wire PP_12_21;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_21 (
		.A_j(a[21]), .A_j_m1(a[20]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_21)
	);
	wire PP_12_22;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_22 (
		.A_j(a[22]), .A_j_m1(a[21]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_22)
	);
	wire PP_12_23;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_23 (
		.A_j(a[23]), .A_j_m1(a[22]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_23)
	);
	wire PP_12_24;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_24 (
		.A_j(a[24]), .A_j_m1(a[23]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_24)
	);
	wire PP_12_25;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_25 (
		.A_j(a[25]), .A_j_m1(a[24]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_25)
	);
	wire PP_12_26;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_26 (
		.A_j(a[26]), .A_j_m1(a[25]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_26)
	);
	wire PP_12_27;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_27 (
		.A_j(a[27]), .A_j_m1(a[26]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_27)
	);
	wire PP_12_28;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_28 (
		.A_j(a[28]), .A_j_m1(a[27]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_28)
	);
	wire PP_12_29;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_29 (
		.A_j(a[29]), .A_j_m1(a[28]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_29)
	);
	wire PP_12_30;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_30 (
		.A_j(a[30]), .A_j_m1(a[29]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_30)
	);
	wire PP_12_31;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_31 (
		.A_j(a[31]), .A_j_m1(a[30]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_31)
	);
	wire PP_12_32;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_32 (
		.A_j(a[32]), .A_j_m1(a[31]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_32)
	);
	wire PP_12_33;
	wire PP_12_33_true;
	Yeh_Jen_Modified_Booth_Decoder Dec_12_33 (
		.A_j(a[33]), .A_j_m1(a[32]),
		.Neg(Neg12), .Z(Z12), .X1_b(X1_b12), .X2_b(X2_b12),
		.PP_ij(PP_12_33_true)
	);
	assign PP_12_33 = ~PP_12_33_true;
	//Encode for 2i = 14
	wire Neg14, Z14, X1_b14, X2_b14;
	Yeh_Jen_Modified_Booth_Encoder Enc_14 (
		.B_2i_p1(b[15]), .B_2i(b[14]), .B_2i_m1(b[13]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14)
	);
	//Decode for 2i = 14
	wire PP_14_0;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_0 (
		.A_j(a[0]), .A_j_m1(1'b0),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_0)
	);
	wire PP_14_1;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_1 (
		.A_j(a[1]), .A_j_m1(a[0]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_1)
	);
	wire PP_14_2;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_2 (
		.A_j(a[2]), .A_j_m1(a[1]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_2)
	);
	wire PP_14_3;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_3 (
		.A_j(a[3]), .A_j_m1(a[2]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_3)
	);
	wire PP_14_4;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_4 (
		.A_j(a[4]), .A_j_m1(a[3]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_4)
	);
	wire PP_14_5;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_5 (
		.A_j(a[5]), .A_j_m1(a[4]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_5)
	);
	wire PP_14_6;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_6 (
		.A_j(a[6]), .A_j_m1(a[5]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_6)
	);
	wire PP_14_7;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_7 (
		.A_j(a[7]), .A_j_m1(a[6]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_7)
	);
	wire PP_14_8;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_8 (
		.A_j(a[8]), .A_j_m1(a[7]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_8)
	);
	wire PP_14_9;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_9 (
		.A_j(a[9]), .A_j_m1(a[8]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_9)
	);
	wire PP_14_10;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_10 (
		.A_j(a[10]), .A_j_m1(a[9]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_10)
	);
	wire PP_14_11;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_11 (
		.A_j(a[11]), .A_j_m1(a[10]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_11)
	);
	wire PP_14_12;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_12 (
		.A_j(a[12]), .A_j_m1(a[11]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_12)
	);
	wire PP_14_13;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_13 (
		.A_j(a[13]), .A_j_m1(a[12]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_13)
	);
	wire PP_14_14;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_14 (
		.A_j(a[14]), .A_j_m1(a[13]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_14)
	);
	wire PP_14_15;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_15 (
		.A_j(a[15]), .A_j_m1(a[14]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_15)
	);
	wire PP_14_16;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_16 (
		.A_j(a[16]), .A_j_m1(a[15]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_16)
	);
	wire PP_14_17;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_17 (
		.A_j(a[17]), .A_j_m1(a[16]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_17)
	);
	wire PP_14_18;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_18 (
		.A_j(a[18]), .A_j_m1(a[17]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_18)
	);
	wire PP_14_19;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_19 (
		.A_j(a[19]), .A_j_m1(a[18]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_19)
	);
	wire PP_14_20;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_20 (
		.A_j(a[20]), .A_j_m1(a[19]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_20)
	);
	wire PP_14_21;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_21 (
		.A_j(a[21]), .A_j_m1(a[20]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_21)
	);
	wire PP_14_22;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_22 (
		.A_j(a[22]), .A_j_m1(a[21]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_22)
	);
	wire PP_14_23;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_23 (
		.A_j(a[23]), .A_j_m1(a[22]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_23)
	);
	wire PP_14_24;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_24 (
		.A_j(a[24]), .A_j_m1(a[23]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_24)
	);
	wire PP_14_25;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_25 (
		.A_j(a[25]), .A_j_m1(a[24]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_25)
	);
	wire PP_14_26;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_26 (
		.A_j(a[26]), .A_j_m1(a[25]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_26)
	);
	wire PP_14_27;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_27 (
		.A_j(a[27]), .A_j_m1(a[26]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_27)
	);
	wire PP_14_28;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_28 (
		.A_j(a[28]), .A_j_m1(a[27]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_28)
	);
	wire PP_14_29;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_29 (
		.A_j(a[29]), .A_j_m1(a[28]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_29)
	);
	wire PP_14_30;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_30 (
		.A_j(a[30]), .A_j_m1(a[29]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_30)
	);
	wire PP_14_31;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_31 (
		.A_j(a[31]), .A_j_m1(a[30]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_31)
	);
	wire PP_14_32;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_32 (
		.A_j(a[32]), .A_j_m1(a[31]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_32)
	);
	wire PP_14_33;
	wire PP_14_33_true;
	Yeh_Jen_Modified_Booth_Decoder Dec_14_33 (
		.A_j(a[33]), .A_j_m1(a[32]),
		.Neg(Neg14), .Z(Z14), .X1_b(X1_b14), .X2_b(X2_b14),
		.PP_ij(PP_14_33_true)
	);
	assign PP_14_33 = ~PP_14_33_true;
	//Encode for 2i = 16
	wire Neg16, Z16, X1_b16, X2_b16;
	Yeh_Jen_Modified_Booth_Encoder Enc_16 (
		.B_2i_p1(b[17]), .B_2i(b[16]), .B_2i_m1(b[15]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16)
	);
	//Decode for 2i = 16
	wire PP_16_0;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_0 (
		.A_j(a[0]), .A_j_m1(1'b0),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_0)
	);
	wire PP_16_1;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_1 (
		.A_j(a[1]), .A_j_m1(a[0]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_1)
	);
	wire PP_16_2;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_2 (
		.A_j(a[2]), .A_j_m1(a[1]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_2)
	);
	wire PP_16_3;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_3 (
		.A_j(a[3]), .A_j_m1(a[2]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_3)
	);
	wire PP_16_4;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_4 (
		.A_j(a[4]), .A_j_m1(a[3]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_4)
	);
	wire PP_16_5;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_5 (
		.A_j(a[5]), .A_j_m1(a[4]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_5)
	);
	wire PP_16_6;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_6 (
		.A_j(a[6]), .A_j_m1(a[5]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_6)
	);
	wire PP_16_7;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_7 (
		.A_j(a[7]), .A_j_m1(a[6]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_7)
	);
	wire PP_16_8;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_8 (
		.A_j(a[8]), .A_j_m1(a[7]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_8)
	);
	wire PP_16_9;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_9 (
		.A_j(a[9]), .A_j_m1(a[8]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_9)
	);
	wire PP_16_10;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_10 (
		.A_j(a[10]), .A_j_m1(a[9]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_10)
	);
	wire PP_16_11;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_11 (
		.A_j(a[11]), .A_j_m1(a[10]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_11)
	);
	wire PP_16_12;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_12 (
		.A_j(a[12]), .A_j_m1(a[11]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_12)
	);
	wire PP_16_13;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_13 (
		.A_j(a[13]), .A_j_m1(a[12]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_13)
	);
	wire PP_16_14;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_14 (
		.A_j(a[14]), .A_j_m1(a[13]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_14)
	);
	wire PP_16_15;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_15 (
		.A_j(a[15]), .A_j_m1(a[14]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_15)
	);
	wire PP_16_16;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_16 (
		.A_j(a[16]), .A_j_m1(a[15]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_16)
	);
	wire PP_16_17;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_17 (
		.A_j(a[17]), .A_j_m1(a[16]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_17)
	);
	wire PP_16_18;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_18 (
		.A_j(a[18]), .A_j_m1(a[17]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_18)
	);
	wire PP_16_19;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_19 (
		.A_j(a[19]), .A_j_m1(a[18]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_19)
	);
	wire PP_16_20;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_20 (
		.A_j(a[20]), .A_j_m1(a[19]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_20)
	);
	wire PP_16_21;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_21 (
		.A_j(a[21]), .A_j_m1(a[20]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_21)
	);
	wire PP_16_22;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_22 (
		.A_j(a[22]), .A_j_m1(a[21]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_22)
	);
	wire PP_16_23;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_23 (
		.A_j(a[23]), .A_j_m1(a[22]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_23)
	);
	wire PP_16_24;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_24 (
		.A_j(a[24]), .A_j_m1(a[23]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_24)
	);
	wire PP_16_25;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_25 (
		.A_j(a[25]), .A_j_m1(a[24]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_25)
	);
	wire PP_16_26;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_26 (
		.A_j(a[26]), .A_j_m1(a[25]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_26)
	);
	wire PP_16_27;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_27 (
		.A_j(a[27]), .A_j_m1(a[26]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_27)
	);
	wire PP_16_28;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_28 (
		.A_j(a[28]), .A_j_m1(a[27]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_28)
	);
	wire PP_16_29;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_29 (
		.A_j(a[29]), .A_j_m1(a[28]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_29)
	);
	wire PP_16_30;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_30 (
		.A_j(a[30]), .A_j_m1(a[29]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_30)
	);
	wire PP_16_31;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_31 (
		.A_j(a[31]), .A_j_m1(a[30]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_31)
	);
	wire PP_16_32;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_32 (
		.A_j(a[32]), .A_j_m1(a[31]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_32)
	);
	wire PP_16_33;
	wire PP_16_33_true;
	Yeh_Jen_Modified_Booth_Decoder Dec_16_33 (
		.A_j(a[33]), .A_j_m1(a[32]),
		.Neg(Neg16), .Z(Z16), .X1_b(X1_b16), .X2_b(X2_b16),
		.PP_ij(PP_16_33_true)
	);
	assign PP_16_33 = ~PP_16_33_true;
	//Encode for 2i = 18
	wire Neg18, Z18, X1_b18, X2_b18;
	Yeh_Jen_Modified_Booth_Encoder Enc_18 (
		.B_2i_p1(b[19]), .B_2i(b[18]), .B_2i_m1(b[17]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18)
	);
	//Decode for 2i = 18
	wire PP_18_0;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_0 (
		.A_j(a[0]), .A_j_m1(1'b0),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_0)
	);
	wire PP_18_1;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_1 (
		.A_j(a[1]), .A_j_m1(a[0]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_1)
	);
	wire PP_18_2;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_2 (
		.A_j(a[2]), .A_j_m1(a[1]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_2)
	);
	wire PP_18_3;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_3 (
		.A_j(a[3]), .A_j_m1(a[2]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_3)
	);
	wire PP_18_4;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_4 (
		.A_j(a[4]), .A_j_m1(a[3]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_4)
	);
	wire PP_18_5;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_5 (
		.A_j(a[5]), .A_j_m1(a[4]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_5)
	);
	wire PP_18_6;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_6 (
		.A_j(a[6]), .A_j_m1(a[5]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_6)
	);
	wire PP_18_7;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_7 (
		.A_j(a[7]), .A_j_m1(a[6]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_7)
	);
	wire PP_18_8;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_8 (
		.A_j(a[8]), .A_j_m1(a[7]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_8)
	);
	wire PP_18_9;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_9 (
		.A_j(a[9]), .A_j_m1(a[8]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_9)
	);
	wire PP_18_10;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_10 (
		.A_j(a[10]), .A_j_m1(a[9]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_10)
	);
	wire PP_18_11;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_11 (
		.A_j(a[11]), .A_j_m1(a[10]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_11)
	);
	wire PP_18_12;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_12 (
		.A_j(a[12]), .A_j_m1(a[11]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_12)
	);
	wire PP_18_13;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_13 (
		.A_j(a[13]), .A_j_m1(a[12]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_13)
	);
	wire PP_18_14;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_14 (
		.A_j(a[14]), .A_j_m1(a[13]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_14)
	);
	wire PP_18_15;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_15 (
		.A_j(a[15]), .A_j_m1(a[14]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_15)
	);
	wire PP_18_16;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_16 (
		.A_j(a[16]), .A_j_m1(a[15]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_16)
	);
	wire PP_18_17;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_17 (
		.A_j(a[17]), .A_j_m1(a[16]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_17)
	);
	wire PP_18_18;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_18 (
		.A_j(a[18]), .A_j_m1(a[17]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_18)
	);
	wire PP_18_19;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_19 (
		.A_j(a[19]), .A_j_m1(a[18]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_19)
	);
	wire PP_18_20;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_20 (
		.A_j(a[20]), .A_j_m1(a[19]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_20)
	);
	wire PP_18_21;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_21 (
		.A_j(a[21]), .A_j_m1(a[20]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_21)
	);
	wire PP_18_22;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_22 (
		.A_j(a[22]), .A_j_m1(a[21]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_22)
	);
	wire PP_18_23;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_23 (
		.A_j(a[23]), .A_j_m1(a[22]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_23)
	);
	wire PP_18_24;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_24 (
		.A_j(a[24]), .A_j_m1(a[23]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_24)
	);
	wire PP_18_25;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_25 (
		.A_j(a[25]), .A_j_m1(a[24]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_25)
	);
	wire PP_18_26;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_26 (
		.A_j(a[26]), .A_j_m1(a[25]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_26)
	);
	wire PP_18_27;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_27 (
		.A_j(a[27]), .A_j_m1(a[26]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_27)
	);
	wire PP_18_28;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_28 (
		.A_j(a[28]), .A_j_m1(a[27]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_28)
	);
	wire PP_18_29;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_29 (
		.A_j(a[29]), .A_j_m1(a[28]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_29)
	);
	wire PP_18_30;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_30 (
		.A_j(a[30]), .A_j_m1(a[29]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_30)
	);
	wire PP_18_31;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_31 (
		.A_j(a[31]), .A_j_m1(a[30]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_31)
	);
	wire PP_18_32;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_32 (
		.A_j(a[32]), .A_j_m1(a[31]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_32)
	);
	wire PP_18_33;
	wire PP_18_33_true;
	Yeh_Jen_Modified_Booth_Decoder Dec_18_33 (
		.A_j(a[33]), .A_j_m1(a[32]),
		.Neg(Neg18), .Z(Z18), .X1_b(X1_b18), .X2_b(X2_b18),
		.PP_ij(PP_18_33_true)
	);
	assign PP_18_33 = ~PP_18_33_true;
	//Encode for 2i = 20
	wire Neg20, Z20, X1_b20, X2_b20;
	Yeh_Jen_Modified_Booth_Encoder Enc_20 (
		.B_2i_p1(b[21]), .B_2i(b[20]), .B_2i_m1(b[19]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20)
	);
	//Decode for 2i = 20
	wire PP_20_0;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_0 (
		.A_j(a[0]), .A_j_m1(1'b0),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_0)
	);
	wire PP_20_1;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_1 (
		.A_j(a[1]), .A_j_m1(a[0]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_1)
	);
	wire PP_20_2;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_2 (
		.A_j(a[2]), .A_j_m1(a[1]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_2)
	);
	wire PP_20_3;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_3 (
		.A_j(a[3]), .A_j_m1(a[2]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_3)
	);
	wire PP_20_4;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_4 (
		.A_j(a[4]), .A_j_m1(a[3]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_4)
	);
	wire PP_20_5;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_5 (
		.A_j(a[5]), .A_j_m1(a[4]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_5)
	);
	wire PP_20_6;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_6 (
		.A_j(a[6]), .A_j_m1(a[5]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_6)
	);
	wire PP_20_7;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_7 (
		.A_j(a[7]), .A_j_m1(a[6]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_7)
	);
	wire PP_20_8;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_8 (
		.A_j(a[8]), .A_j_m1(a[7]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_8)
	);
	wire PP_20_9;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_9 (
		.A_j(a[9]), .A_j_m1(a[8]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_9)
	);
	wire PP_20_10;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_10 (
		.A_j(a[10]), .A_j_m1(a[9]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_10)
	);
	wire PP_20_11;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_11 (
		.A_j(a[11]), .A_j_m1(a[10]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_11)
	);
	wire PP_20_12;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_12 (
		.A_j(a[12]), .A_j_m1(a[11]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_12)
	);
	wire PP_20_13;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_13 (
		.A_j(a[13]), .A_j_m1(a[12]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_13)
	);
	wire PP_20_14;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_14 (
		.A_j(a[14]), .A_j_m1(a[13]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_14)
	);
	wire PP_20_15;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_15 (
		.A_j(a[15]), .A_j_m1(a[14]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_15)
	);
	wire PP_20_16;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_16 (
		.A_j(a[16]), .A_j_m1(a[15]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_16)
	);
	wire PP_20_17;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_17 (
		.A_j(a[17]), .A_j_m1(a[16]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_17)
	);
	wire PP_20_18;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_18 (
		.A_j(a[18]), .A_j_m1(a[17]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_18)
	);
	wire PP_20_19;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_19 (
		.A_j(a[19]), .A_j_m1(a[18]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_19)
	);
	wire PP_20_20;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_20 (
		.A_j(a[20]), .A_j_m1(a[19]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_20)
	);
	wire PP_20_21;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_21 (
		.A_j(a[21]), .A_j_m1(a[20]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_21)
	);
	wire PP_20_22;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_22 (
		.A_j(a[22]), .A_j_m1(a[21]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_22)
	);
	wire PP_20_23;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_23 (
		.A_j(a[23]), .A_j_m1(a[22]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_23)
	);
	wire PP_20_24;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_24 (
		.A_j(a[24]), .A_j_m1(a[23]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_24)
	);
	wire PP_20_25;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_25 (
		.A_j(a[25]), .A_j_m1(a[24]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_25)
	);
	wire PP_20_26;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_26 (
		.A_j(a[26]), .A_j_m1(a[25]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_26)
	);
	wire PP_20_27;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_27 (
		.A_j(a[27]), .A_j_m1(a[26]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_27)
	);
	wire PP_20_28;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_28 (
		.A_j(a[28]), .A_j_m1(a[27]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_28)
	);
	wire PP_20_29;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_29 (
		.A_j(a[29]), .A_j_m1(a[28]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_29)
	);
	wire PP_20_30;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_30 (
		.A_j(a[30]), .A_j_m1(a[29]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_30)
	);
	wire PP_20_31;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_31 (
		.A_j(a[31]), .A_j_m1(a[30]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_31)
	);
	wire PP_20_32;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_32 (
		.A_j(a[32]), .A_j_m1(a[31]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_32)
	);
	wire PP_20_33;
	wire PP_20_33_true;
	Yeh_Jen_Modified_Booth_Decoder Dec_20_33 (
		.A_j(a[33]), .A_j_m1(a[32]),
		.Neg(Neg20), .Z(Z20), .X1_b(X1_b20), .X2_b(X2_b20),
		.PP_ij(PP_20_33_true)
	);
	assign PP_20_33 = ~PP_20_33_true;
	//Encode for 2i = 22
	wire Neg22, Z22, X1_b22, X2_b22;
	Yeh_Jen_Modified_Booth_Encoder Enc_22 (
		.B_2i_p1(b[23]), .B_2i(b[22]), .B_2i_m1(b[21]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22)
	);
	//Decode for 2i = 22
	wire PP_22_0;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_0 (
		.A_j(a[0]), .A_j_m1(1'b0),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_0)
	);
	wire PP_22_1;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_1 (
		.A_j(a[1]), .A_j_m1(a[0]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_1)
	);
	wire PP_22_2;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_2 (
		.A_j(a[2]), .A_j_m1(a[1]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_2)
	);
	wire PP_22_3;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_3 (
		.A_j(a[3]), .A_j_m1(a[2]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_3)
	);
	wire PP_22_4;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_4 (
		.A_j(a[4]), .A_j_m1(a[3]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_4)
	);
	wire PP_22_5;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_5 (
		.A_j(a[5]), .A_j_m1(a[4]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_5)
	);
	wire PP_22_6;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_6 (
		.A_j(a[6]), .A_j_m1(a[5]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_6)
	);
	wire PP_22_7;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_7 (
		.A_j(a[7]), .A_j_m1(a[6]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_7)
	);
	wire PP_22_8;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_8 (
		.A_j(a[8]), .A_j_m1(a[7]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_8)
	);
	wire PP_22_9;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_9 (
		.A_j(a[9]), .A_j_m1(a[8]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_9)
	);
	wire PP_22_10;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_10 (
		.A_j(a[10]), .A_j_m1(a[9]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_10)
	);
	wire PP_22_11;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_11 (
		.A_j(a[11]), .A_j_m1(a[10]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_11)
	);
	wire PP_22_12;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_12 (
		.A_j(a[12]), .A_j_m1(a[11]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_12)
	);
	wire PP_22_13;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_13 (
		.A_j(a[13]), .A_j_m1(a[12]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_13)
	);
	wire PP_22_14;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_14 (
		.A_j(a[14]), .A_j_m1(a[13]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_14)
	);
	wire PP_22_15;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_15 (
		.A_j(a[15]), .A_j_m1(a[14]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_15)
	);
	wire PP_22_16;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_16 (
		.A_j(a[16]), .A_j_m1(a[15]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_16)
	);
	wire PP_22_17;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_17 (
		.A_j(a[17]), .A_j_m1(a[16]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_17)
	);
	wire PP_22_18;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_18 (
		.A_j(a[18]), .A_j_m1(a[17]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_18)
	);
	wire PP_22_19;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_19 (
		.A_j(a[19]), .A_j_m1(a[18]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_19)
	);
	wire PP_22_20;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_20 (
		.A_j(a[20]), .A_j_m1(a[19]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_20)
	);
	wire PP_22_21;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_21 (
		.A_j(a[21]), .A_j_m1(a[20]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_21)
	);
	wire PP_22_22;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_22 (
		.A_j(a[22]), .A_j_m1(a[21]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_22)
	);
	wire PP_22_23;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_23 (
		.A_j(a[23]), .A_j_m1(a[22]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_23)
	);
	wire PP_22_24;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_24 (
		.A_j(a[24]), .A_j_m1(a[23]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_24)
	);
	wire PP_22_25;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_25 (
		.A_j(a[25]), .A_j_m1(a[24]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_25)
	);
	wire PP_22_26;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_26 (
		.A_j(a[26]), .A_j_m1(a[25]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_26)
	);
	wire PP_22_27;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_27 (
		.A_j(a[27]), .A_j_m1(a[26]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_27)
	);
	wire PP_22_28;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_28 (
		.A_j(a[28]), .A_j_m1(a[27]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_28)
	);
	wire PP_22_29;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_29 (
		.A_j(a[29]), .A_j_m1(a[28]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_29)
	);
	wire PP_22_30;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_30 (
		.A_j(a[30]), .A_j_m1(a[29]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_30)
	);
	wire PP_22_31;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_31 (
		.A_j(a[31]), .A_j_m1(a[30]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_31)
	);
	wire PP_22_32;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_32 (
		.A_j(a[32]), .A_j_m1(a[31]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_32)
	);
	wire PP_22_33;
	wire PP_22_33_true;
	Yeh_Jen_Modified_Booth_Decoder Dec_22_33 (
		.A_j(a[33]), .A_j_m1(a[32]),
		.Neg(Neg22), .Z(Z22), .X1_b(X1_b22), .X2_b(X2_b22),
		.PP_ij(PP_22_33_true)
	);
	assign PP_22_33 = ~PP_22_33_true;
	//Encode for 2i = 24
	wire Neg24, Z24, X1_b24, X2_b24;
	Yeh_Jen_Modified_Booth_Encoder Enc_24 (
		.B_2i_p1(b[25]), .B_2i(b[24]), .B_2i_m1(b[23]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24)
	);
	//Decode for 2i = 24
	wire PP_24_0;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_0 (
		.A_j(a[0]), .A_j_m1(1'b0),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_0)
	);
	wire PP_24_1;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_1 (
		.A_j(a[1]), .A_j_m1(a[0]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_1)
	);
	wire PP_24_2;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_2 (
		.A_j(a[2]), .A_j_m1(a[1]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_2)
	);
	wire PP_24_3;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_3 (
		.A_j(a[3]), .A_j_m1(a[2]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_3)
	);
	wire PP_24_4;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_4 (
		.A_j(a[4]), .A_j_m1(a[3]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_4)
	);
	wire PP_24_5;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_5 (
		.A_j(a[5]), .A_j_m1(a[4]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_5)
	);
	wire PP_24_6;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_6 (
		.A_j(a[6]), .A_j_m1(a[5]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_6)
	);
	wire PP_24_7;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_7 (
		.A_j(a[7]), .A_j_m1(a[6]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_7)
	);
	wire PP_24_8;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_8 (
		.A_j(a[8]), .A_j_m1(a[7]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_8)
	);
	wire PP_24_9;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_9 (
		.A_j(a[9]), .A_j_m1(a[8]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_9)
	);
	wire PP_24_10;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_10 (
		.A_j(a[10]), .A_j_m1(a[9]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_10)
	);
	wire PP_24_11;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_11 (
		.A_j(a[11]), .A_j_m1(a[10]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_11)
	);
	wire PP_24_12;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_12 (
		.A_j(a[12]), .A_j_m1(a[11]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_12)
	);
	wire PP_24_13;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_13 (
		.A_j(a[13]), .A_j_m1(a[12]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_13)
	);
	wire PP_24_14;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_14 (
		.A_j(a[14]), .A_j_m1(a[13]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_14)
	);
	wire PP_24_15;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_15 (
		.A_j(a[15]), .A_j_m1(a[14]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_15)
	);
	wire PP_24_16;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_16 (
		.A_j(a[16]), .A_j_m1(a[15]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_16)
	);
	wire PP_24_17;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_17 (
		.A_j(a[17]), .A_j_m1(a[16]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_17)
	);
	wire PP_24_18;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_18 (
		.A_j(a[18]), .A_j_m1(a[17]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_18)
	);
	wire PP_24_19;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_19 (
		.A_j(a[19]), .A_j_m1(a[18]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_19)
	);
	wire PP_24_20;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_20 (
		.A_j(a[20]), .A_j_m1(a[19]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_20)
	);
	wire PP_24_21;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_21 (
		.A_j(a[21]), .A_j_m1(a[20]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_21)
	);
	wire PP_24_22;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_22 (
		.A_j(a[22]), .A_j_m1(a[21]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_22)
	);
	wire PP_24_23;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_23 (
		.A_j(a[23]), .A_j_m1(a[22]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_23)
	);
	wire PP_24_24;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_24 (
		.A_j(a[24]), .A_j_m1(a[23]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_24)
	);
	wire PP_24_25;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_25 (
		.A_j(a[25]), .A_j_m1(a[24]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_25)
	);
	wire PP_24_26;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_26 (
		.A_j(a[26]), .A_j_m1(a[25]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_26)
	);
	wire PP_24_27;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_27 (
		.A_j(a[27]), .A_j_m1(a[26]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_27)
	);
	wire PP_24_28;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_28 (
		.A_j(a[28]), .A_j_m1(a[27]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_28)
	);
	wire PP_24_29;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_29 (
		.A_j(a[29]), .A_j_m1(a[28]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_29)
	);
	wire PP_24_30;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_30 (
		.A_j(a[30]), .A_j_m1(a[29]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_30)
	);
	wire PP_24_31;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_31 (
		.A_j(a[31]), .A_j_m1(a[30]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_31)
	);
	wire PP_24_32;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_32 (
		.A_j(a[32]), .A_j_m1(a[31]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_32)
	);
	wire PP_24_33;
	wire PP_24_33_true;
	Yeh_Jen_Modified_Booth_Decoder Dec_24_33 (
		.A_j(a[33]), .A_j_m1(a[32]),
		.Neg(Neg24), .Z(Z24), .X1_b(X1_b24), .X2_b(X2_b24),
		.PP_ij(PP_24_33_true)
	);
	assign PP_24_33 = ~PP_24_33_true;
	//Encode for 2i = 26
	wire Neg26, Z26, X1_b26, X2_b26;
	Yeh_Jen_Modified_Booth_Encoder Enc_26 (
		.B_2i_p1(b[27]), .B_2i(b[26]), .B_2i_m1(b[25]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26)
	);
	//Decode for 2i = 26
	wire PP_26_0;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_0 (
		.A_j(a[0]), .A_j_m1(1'b0),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_0)
	);
	wire PP_26_1;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_1 (
		.A_j(a[1]), .A_j_m1(a[0]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_1)
	);
	wire PP_26_2;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_2 (
		.A_j(a[2]), .A_j_m1(a[1]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_2)
	);
	wire PP_26_3;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_3 (
		.A_j(a[3]), .A_j_m1(a[2]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_3)
	);
	wire PP_26_4;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_4 (
		.A_j(a[4]), .A_j_m1(a[3]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_4)
	);
	wire PP_26_5;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_5 (
		.A_j(a[5]), .A_j_m1(a[4]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_5)
	);
	wire PP_26_6;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_6 (
		.A_j(a[6]), .A_j_m1(a[5]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_6)
	);
	wire PP_26_7;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_7 (
		.A_j(a[7]), .A_j_m1(a[6]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_7)
	);
	wire PP_26_8;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_8 (
		.A_j(a[8]), .A_j_m1(a[7]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_8)
	);
	wire PP_26_9;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_9 (
		.A_j(a[9]), .A_j_m1(a[8]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_9)
	);
	wire PP_26_10;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_10 (
		.A_j(a[10]), .A_j_m1(a[9]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_10)
	);
	wire PP_26_11;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_11 (
		.A_j(a[11]), .A_j_m1(a[10]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_11)
	);
	wire PP_26_12;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_12 (
		.A_j(a[12]), .A_j_m1(a[11]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_12)
	);
	wire PP_26_13;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_13 (
		.A_j(a[13]), .A_j_m1(a[12]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_13)
	);
	wire PP_26_14;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_14 (
		.A_j(a[14]), .A_j_m1(a[13]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_14)
	);
	wire PP_26_15;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_15 (
		.A_j(a[15]), .A_j_m1(a[14]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_15)
	);
	wire PP_26_16;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_16 (
		.A_j(a[16]), .A_j_m1(a[15]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_16)
	);
	wire PP_26_17;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_17 (
		.A_j(a[17]), .A_j_m1(a[16]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_17)
	);
	wire PP_26_18;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_18 (
		.A_j(a[18]), .A_j_m1(a[17]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_18)
	);
	wire PP_26_19;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_19 (
		.A_j(a[19]), .A_j_m1(a[18]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_19)
	);
	wire PP_26_20;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_20 (
		.A_j(a[20]), .A_j_m1(a[19]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_20)
	);
	wire PP_26_21;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_21 (
		.A_j(a[21]), .A_j_m1(a[20]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_21)
	);
	wire PP_26_22;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_22 (
		.A_j(a[22]), .A_j_m1(a[21]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_22)
	);
	wire PP_26_23;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_23 (
		.A_j(a[23]), .A_j_m1(a[22]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_23)
	);
	wire PP_26_24;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_24 (
		.A_j(a[24]), .A_j_m1(a[23]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_24)
	);
	wire PP_26_25;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_25 (
		.A_j(a[25]), .A_j_m1(a[24]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_25)
	);
	wire PP_26_26;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_26 (
		.A_j(a[26]), .A_j_m1(a[25]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_26)
	);
	wire PP_26_27;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_27 (
		.A_j(a[27]), .A_j_m1(a[26]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_27)
	);
	wire PP_26_28;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_28 (
		.A_j(a[28]), .A_j_m1(a[27]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_28)
	);
	wire PP_26_29;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_29 (
		.A_j(a[29]), .A_j_m1(a[28]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_29)
	);
	wire PP_26_30;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_30 (
		.A_j(a[30]), .A_j_m1(a[29]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_30)
	);
	wire PP_26_31;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_31 (
		.A_j(a[31]), .A_j_m1(a[30]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_31)
	);
	wire PP_26_32;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_32 (
		.A_j(a[32]), .A_j_m1(a[31]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_32)
	);
	wire PP_26_33;
	wire PP_26_33_true;
	Yeh_Jen_Modified_Booth_Decoder Dec_26_33 (
		.A_j(a[33]), .A_j_m1(a[32]),
		.Neg(Neg26), .Z(Z26), .X1_b(X1_b26), .X2_b(X2_b26),
		.PP_ij(PP_26_33_true)
	);
	assign PP_26_33 = ~PP_26_33_true;
	//Encode for 2i = 28
	wire Neg28, Z28, X1_b28, X2_b28;
	Yeh_Jen_Modified_Booth_Encoder Enc_28 (
		.B_2i_p1(b[29]), .B_2i(b[28]), .B_2i_m1(b[27]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28)
	);
	//Decode for 2i = 28
	wire PP_28_0;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_0 (
		.A_j(a[0]), .A_j_m1(1'b0),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_0)
	);
	wire PP_28_1;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_1 (
		.A_j(a[1]), .A_j_m1(a[0]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_1)
	);
	wire PP_28_2;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_2 (
		.A_j(a[2]), .A_j_m1(a[1]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_2)
	);
	wire PP_28_3;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_3 (
		.A_j(a[3]), .A_j_m1(a[2]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_3)
	);
	wire PP_28_4;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_4 (
		.A_j(a[4]), .A_j_m1(a[3]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_4)
	);
	wire PP_28_5;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_5 (
		.A_j(a[5]), .A_j_m1(a[4]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_5)
	);
	wire PP_28_6;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_6 (
		.A_j(a[6]), .A_j_m1(a[5]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_6)
	);
	wire PP_28_7;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_7 (
		.A_j(a[7]), .A_j_m1(a[6]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_7)
	);
	wire PP_28_8;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_8 (
		.A_j(a[8]), .A_j_m1(a[7]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_8)
	);
	wire PP_28_9;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_9 (
		.A_j(a[9]), .A_j_m1(a[8]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_9)
	);
	wire PP_28_10;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_10 (
		.A_j(a[10]), .A_j_m1(a[9]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_10)
	);
	wire PP_28_11;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_11 (
		.A_j(a[11]), .A_j_m1(a[10]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_11)
	);
	wire PP_28_12;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_12 (
		.A_j(a[12]), .A_j_m1(a[11]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_12)
	);
	wire PP_28_13;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_13 (
		.A_j(a[13]), .A_j_m1(a[12]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_13)
	);
	wire PP_28_14;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_14 (
		.A_j(a[14]), .A_j_m1(a[13]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_14)
	);
	wire PP_28_15;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_15 (
		.A_j(a[15]), .A_j_m1(a[14]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_15)
	);
	wire PP_28_16;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_16 (
		.A_j(a[16]), .A_j_m1(a[15]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_16)
	);
	wire PP_28_17;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_17 (
		.A_j(a[17]), .A_j_m1(a[16]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_17)
	);
	wire PP_28_18;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_18 (
		.A_j(a[18]), .A_j_m1(a[17]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_18)
	);
	wire PP_28_19;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_19 (
		.A_j(a[19]), .A_j_m1(a[18]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_19)
	);
	wire PP_28_20;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_20 (
		.A_j(a[20]), .A_j_m1(a[19]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_20)
	);
	wire PP_28_21;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_21 (
		.A_j(a[21]), .A_j_m1(a[20]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_21)
	);
	wire PP_28_22;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_22 (
		.A_j(a[22]), .A_j_m1(a[21]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_22)
	);
	wire PP_28_23;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_23 (
		.A_j(a[23]), .A_j_m1(a[22]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_23)
	);
	wire PP_28_24;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_24 (
		.A_j(a[24]), .A_j_m1(a[23]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_24)
	);
	wire PP_28_25;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_25 (
		.A_j(a[25]), .A_j_m1(a[24]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_25)
	);
	wire PP_28_26;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_26 (
		.A_j(a[26]), .A_j_m1(a[25]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_26)
	);
	wire PP_28_27;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_27 (
		.A_j(a[27]), .A_j_m1(a[26]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_27)
	);
	wire PP_28_28;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_28 (
		.A_j(a[28]), .A_j_m1(a[27]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_28)
	);
	wire PP_28_29;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_29 (
		.A_j(a[29]), .A_j_m1(a[28]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_29)
	);
	wire PP_28_30;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_30 (
		.A_j(a[30]), .A_j_m1(a[29]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_30)
	);
	wire PP_28_31;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_31 (
		.A_j(a[31]), .A_j_m1(a[30]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_31)
	);
	wire PP_28_32;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_32 (
		.A_j(a[32]), .A_j_m1(a[31]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_32)
	);
	wire PP_28_33;
	wire PP_28_33_true;
	Yeh_Jen_Modified_Booth_Decoder Dec_28_33 (
		.A_j(a[33]), .A_j_m1(a[32]),
		.Neg(Neg28), .Z(Z28), .X1_b(X1_b28), .X2_b(X2_b28),
		.PP_ij(PP_28_33_true)
	);
	assign PP_28_33 = ~PP_28_33_true;
	//Encode for 2i = 30
	wire Neg30, Z30, X1_b30, X2_b30;
	Yeh_Jen_Modified_Booth_Encoder Enc_30 (
		.B_2i_p1(b[31]), .B_2i(b[30]), .B_2i_m1(b[29]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30)
	);
	//Decode for 2i = 30
	wire PP_30_0;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_0 (
		.A_j(a[0]), .A_j_m1(1'b0),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_0)
	);
	wire PP_30_1;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_1 (
		.A_j(a[1]), .A_j_m1(a[0]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_1)
	);
	wire PP_30_2;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_2 (
		.A_j(a[2]), .A_j_m1(a[1]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_2)
	);
	wire PP_30_3;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_3 (
		.A_j(a[3]), .A_j_m1(a[2]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_3)
	);
	wire PP_30_4;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_4 (
		.A_j(a[4]), .A_j_m1(a[3]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_4)
	);
	wire PP_30_5;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_5 (
		.A_j(a[5]), .A_j_m1(a[4]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_5)
	);
	wire PP_30_6;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_6 (
		.A_j(a[6]), .A_j_m1(a[5]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_6)
	);
	wire PP_30_7;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_7 (
		.A_j(a[7]), .A_j_m1(a[6]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_7)
	);
	wire PP_30_8;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_8 (
		.A_j(a[8]), .A_j_m1(a[7]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_8)
	);
	wire PP_30_9;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_9 (
		.A_j(a[9]), .A_j_m1(a[8]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_9)
	);
	wire PP_30_10;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_10 (
		.A_j(a[10]), .A_j_m1(a[9]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_10)
	);
	wire PP_30_11;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_11 (
		.A_j(a[11]), .A_j_m1(a[10]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_11)
	);
	wire PP_30_12;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_12 (
		.A_j(a[12]), .A_j_m1(a[11]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_12)
	);
	wire PP_30_13;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_13 (
		.A_j(a[13]), .A_j_m1(a[12]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_13)
	);
	wire PP_30_14;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_14 (
		.A_j(a[14]), .A_j_m1(a[13]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_14)
	);
	wire PP_30_15;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_15 (
		.A_j(a[15]), .A_j_m1(a[14]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_15)
	);
	wire PP_30_16;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_16 (
		.A_j(a[16]), .A_j_m1(a[15]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_16)
	);
	wire PP_30_17;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_17 (
		.A_j(a[17]), .A_j_m1(a[16]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_17)
	);
	wire PP_30_18;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_18 (
		.A_j(a[18]), .A_j_m1(a[17]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_18)
	);
	wire PP_30_19;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_19 (
		.A_j(a[19]), .A_j_m1(a[18]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_19)
	);
	wire PP_30_20;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_20 (
		.A_j(a[20]), .A_j_m1(a[19]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_20)
	);
	wire PP_30_21;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_21 (
		.A_j(a[21]), .A_j_m1(a[20]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_21)
	);
	wire PP_30_22;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_22 (
		.A_j(a[22]), .A_j_m1(a[21]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_22)
	);
	wire PP_30_23;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_23 (
		.A_j(a[23]), .A_j_m1(a[22]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_23)
	);
	wire PP_30_24;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_24 (
		.A_j(a[24]), .A_j_m1(a[23]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_24)
	);
	wire PP_30_25;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_25 (
		.A_j(a[25]), .A_j_m1(a[24]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_25)
	);
	wire PP_30_26;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_26 (
		.A_j(a[26]), .A_j_m1(a[25]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_26)
	);
	wire PP_30_27;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_27 (
		.A_j(a[27]), .A_j_m1(a[26]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_27)
	);
	wire PP_30_28;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_28 (
		.A_j(a[28]), .A_j_m1(a[27]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_28)
	);
	wire PP_30_29;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_29 (
		.A_j(a[29]), .A_j_m1(a[28]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_29)
	);
	wire PP_30_30;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_30 (
		.A_j(a[30]), .A_j_m1(a[29]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_30)
	);
	wire PP_30_31;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_31 (
		.A_j(a[31]), .A_j_m1(a[30]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_31)
	);
	wire PP_30_32;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_32 (
		.A_j(a[32]), .A_j_m1(a[31]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_32)
	);
	wire PP_30_33;
	wire PP_30_33_true;
	Yeh_Jen_Modified_Booth_Decoder Dec_30_33 (
		.A_j(a[33]), .A_j_m1(a[32]),
		.Neg(Neg30), .Z(Z30), .X1_b(X1_b30), .X2_b(X2_b30),
		.PP_ij(PP_30_33_true)
	);
	assign PP_30_33 = ~PP_30_33_true;
	//Encode for 2i = 32
	wire Neg32, Z32, X1_b32, X2_b32;
	Yeh_Jen_Modified_Booth_Encoder Enc_32 (
		.B_2i_p1(b[33]), .B_2i(b[32]), .B_2i_m1(b[31]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32)
	);
	//Decode for 2i = 32
	wire PP_32_0;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_0 (
		.A_j(a[0]), .A_j_m1(1'b0),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_0)
	);
	wire PP_32_1;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_1 (
		.A_j(a[1]), .A_j_m1(a[0]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_1)
	);
	wire PP_32_2;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_2 (
		.A_j(a[2]), .A_j_m1(a[1]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_2)
	);
	wire PP_32_3;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_3 (
		.A_j(a[3]), .A_j_m1(a[2]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_3)
	);
	wire PP_32_4;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_4 (
		.A_j(a[4]), .A_j_m1(a[3]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_4)
	);
	wire PP_32_5;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_5 (
		.A_j(a[5]), .A_j_m1(a[4]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_5)
	);
	wire PP_32_6;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_6 (
		.A_j(a[6]), .A_j_m1(a[5]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_6)
	);
	wire PP_32_7;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_7 (
		.A_j(a[7]), .A_j_m1(a[6]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_7)
	);
	wire PP_32_8;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_8 (
		.A_j(a[8]), .A_j_m1(a[7]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_8)
	);
	wire PP_32_9;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_9 (
		.A_j(a[9]), .A_j_m1(a[8]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_9)
	);
	wire PP_32_10;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_10 (
		.A_j(a[10]), .A_j_m1(a[9]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_10)
	);
	wire PP_32_11;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_11 (
		.A_j(a[11]), .A_j_m1(a[10]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_11)
	);
	wire PP_32_12;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_12 (
		.A_j(a[12]), .A_j_m1(a[11]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_12)
	);
	wire PP_32_13;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_13 (
		.A_j(a[13]), .A_j_m1(a[12]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_13)
	);
	wire PP_32_14;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_14 (
		.A_j(a[14]), .A_j_m1(a[13]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_14)
	);
	wire PP_32_15;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_15 (
		.A_j(a[15]), .A_j_m1(a[14]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_15)
	);
	wire PP_32_16;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_16 (
		.A_j(a[16]), .A_j_m1(a[15]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_16)
	);
	wire PP_32_17;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_17 (
		.A_j(a[17]), .A_j_m1(a[16]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_17)
	);
	wire PP_32_18;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_18 (
		.A_j(a[18]), .A_j_m1(a[17]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_18)
	);
	wire PP_32_19;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_19 (
		.A_j(a[19]), .A_j_m1(a[18]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_19)
	);
	wire PP_32_20;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_20 (
		.A_j(a[20]), .A_j_m1(a[19]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_20)
	);
	wire PP_32_21;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_21 (
		.A_j(a[21]), .A_j_m1(a[20]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_21)
	);
	wire PP_32_22;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_22 (
		.A_j(a[22]), .A_j_m1(a[21]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_22)
	);
	wire PP_32_23;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_23 (
		.A_j(a[23]), .A_j_m1(a[22]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_23)
	);
	wire PP_32_24;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_24 (
		.A_j(a[24]), .A_j_m1(a[23]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_24)
	);
	wire PP_32_25;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_25 (
		.A_j(a[25]), .A_j_m1(a[24]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_25)
	);
	wire PP_32_26;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_26 (
		.A_j(a[26]), .A_j_m1(a[25]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_26)
	);
	wire PP_32_27;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_27 (
		.A_j(a[27]), .A_j_m1(a[26]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_27)
	);
	wire PP_32_28;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_28 (
		.A_j(a[28]), .A_j_m1(a[27]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_28)
	);
	wire PP_32_29;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_29 (
		.A_j(a[29]), .A_j_m1(a[28]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_29)
	);
	wire PP_32_30;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_30 (
		.A_j(a[30]), .A_j_m1(a[29]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_30)
	);
	wire PP_32_31;
	Yeh_Jen_Modified_Booth_Decoder Dec_32_31 (
		.A_j(a[31]), .A_j_m1(a[30]),
		.Neg(Neg32), .Z(Z32), .X1_b(X1_b32), .X2_b(X2_b32),
		.PP_ij(PP_32_31)
	);
	//Generate Negate Carry Bits for LSB
	wire NegCin_0_0;
	Negate_bit_add Neg_0(
		.B_2i_p1(b[1]), .B_2i(b[0]), .B_2i_m1(1'b0),
		.N_2i(NegCin_0_0)
	);
	wire NegCin_2_0;
	Negate_bit_add Neg_2(
		.B_2i_p1(b[3]), .B_2i(b[2]), .B_2i_m1(b[1]),
		.N_2i(NegCin_2_0)
	);
	wire NegCin_4_0;
	Negate_bit_add Neg_4(
		.B_2i_p1(b[5]), .B_2i(b[4]), .B_2i_m1(b[3]),
		.N_2i(NegCin_4_0)
	);
	wire NegCin_6_0;
	Negate_bit_add Neg_6(
		.B_2i_p1(b[7]), .B_2i(b[6]), .B_2i_m1(b[5]),
		.N_2i(NegCin_6_0)
	);
	wire NegCin_8_0;
	Negate_bit_add Neg_8(
		.B_2i_p1(b[9]), .B_2i(b[8]), .B_2i_m1(b[7]),
		.N_2i(NegCin_8_0)
	);
	wire NegCin_10_0;
	Negate_bit_add Neg_10(
		.B_2i_p1(b[11]), .B_2i(b[10]), .B_2i_m1(b[9]),
		.N_2i(NegCin_10_0)
	);
	wire NegCin_12_0;
	Negate_bit_add Neg_12(
		.B_2i_p1(b[13]), .B_2i(b[12]), .B_2i_m1(b[11]),
		.N_2i(NegCin_12_0)
	);
	wire NegCin_14_0;
	Negate_bit_add Neg_14(
		.B_2i_p1(b[15]), .B_2i(b[14]), .B_2i_m1(b[13]),
		.N_2i(NegCin_14_0)
	);
	wire NegCin_16_0;
	Negate_bit_add Neg_16(
		.B_2i_p1(b[17]), .B_2i(b[16]), .B_2i_m1(b[15]),
		.N_2i(NegCin_16_0)
	);
	wire NegCin_18_0;
	Negate_bit_add Neg_18(
		.B_2i_p1(b[19]), .B_2i(b[18]), .B_2i_m1(b[17]),
		.N_2i(NegCin_18_0)
	);
	wire NegCin_20_0;
	Negate_bit_add Neg_20(
		.B_2i_p1(b[21]), .B_2i(b[20]), .B_2i_m1(b[19]),
		.N_2i(NegCin_20_0)
	);
	wire NegCin_22_0;
	Negate_bit_add Neg_22(
		.B_2i_p1(b[23]), .B_2i(b[22]), .B_2i_m1(b[21]),
		.N_2i(NegCin_22_0)
	);
	wire NegCin_24_0;
	Negate_bit_add Neg_24(
		.B_2i_p1(b[25]), .B_2i(b[24]), .B_2i_m1(b[23]),
		.N_2i(NegCin_24_0)
	);
	wire NegCin_26_0;
	Negate_bit_add Neg_26(
		.B_2i_p1(b[27]), .B_2i(b[26]), .B_2i_m1(b[25]),
		.N_2i(NegCin_26_0)
	);
	wire NegCin_28_0;
	Negate_bit_add Neg_28(
		.B_2i_p1(b[29]), .B_2i(b[28]), .B_2i_m1(b[27]),
		.N_2i(NegCin_28_0)
	);
	wire NegCin_30_0;
	Negate_bit_add Neg_30(
		.B_2i_p1(b[31]), .B_2i(b[30]), .B_2i_m1(b[29]),
		.N_2i(NegCin_30_0)
	);
	wire NegCin_32_0;
	Negate_bit_add Neg_32(
		.B_2i_p1(b[33]), .B_2i(b[32]), .B_2i_m1(b[31]),
		.N_2i(NegCin_32_0)
	);
	//Generate Correction Bits for LSB
	wire Corr_0_33;	assign Corr_0_33 = 1'b1;
	wire Corr_0_34;	assign Corr_0_34 = 1'b1;
	wire Corr_2_34;	assign Corr_2_34 = 1'b1;
	wire Corr_4_34;	assign Corr_4_34 = 1'b1;
	wire Corr_6_34;	assign Corr_6_34 = 1'b1;
	wire Corr_8_34;	assign Corr_8_34 = 1'b1;
	wire Corr_10_34;	assign Corr_10_34 = 1'b1;
	wire Corr_12_34;	assign Corr_12_34 = 1'b1;
	wire Corr_14_34;	assign Corr_14_34 = 1'b1;
	wire Corr_16_34;	assign Corr_16_34 = 1'b1;
	wire Corr_18_34;	assign Corr_18_34 = 1'b1;
	wire Corr_20_34;	assign Corr_20_34 = 1'b1;
	wire Corr_22_34;	assign Corr_22_34 = 1'b1;
	wire Corr_24_34;	assign Corr_24_34 = 1'b1;
	wire Corr_26_34;	assign Corr_26_34 = 1'b1;
	wire Corr_28_34;	assign Corr_28_34 = 1'b1;
	//Dadda Tree

	// --- Dadda Stage 1: Target Height = 13 ---
	wire S_HA_0_0, C_HA_0_0;
	ha HA_0_0 (.a(PP_0_24), .b(PP_2_22), .s(S_HA_0_0), .c(C_HA_0_0));
	wire S_HA_0_1, C_HA_0_1;
	ha HA_0_1 (.a(PP_0_25), .b(PP_2_23), .s(S_HA_0_1), .c(C_HA_0_1));
	wire S_FA_0_0, C_FA_0_0;
	fa FA_0_0 (.a(PP_0_26), .b(PP_2_24), .cin(PP_4_22), .s(S_FA_0_0), .cout(C_FA_0_0));
	wire S_HA_0_2, C_HA_0_2;
	ha HA_0_2 (.a(PP_6_20), .b(PP_8_18), .s(S_HA_0_2), .c(C_HA_0_2));
	wire S_FA_0_1, C_FA_0_1;
	fa FA_0_1 (.a(PP_0_27), .b(PP_2_25), .cin(PP_4_23), .s(S_FA_0_1), .cout(C_FA_0_1));
	wire S_HA_0_3, C_HA_0_3;
	ha HA_0_3 (.a(PP_6_21), .b(PP_8_19), .s(S_HA_0_3), .c(C_HA_0_3));
	wire S_FA_0_2, C_FA_0_2;
	fa FA_0_2 (.a(PP_0_28), .b(PP_2_26), .cin(PP_4_24), .s(S_FA_0_2), .cout(C_FA_0_2));
	wire S_FA_0_3, C_FA_0_3;
	fa FA_0_3 (.a(PP_6_22), .b(PP_8_20), .cin(PP_10_18), .s(S_FA_0_3), .cout(C_FA_0_3));
	wire S_HA_0_4, C_HA_0_4;
	ha HA_0_4 (.a(PP_12_16), .b(PP_14_14), .s(S_HA_0_4), .c(C_HA_0_4));
	wire S_FA_0_4, C_FA_0_4;
	fa FA_0_4 (.a(PP_0_29), .b(PP_2_27), .cin(PP_4_25), .s(S_FA_0_4), .cout(C_FA_0_4));
	wire S_FA_0_5, C_FA_0_5;
	fa FA_0_5 (.a(PP_6_23), .b(PP_8_21), .cin(PP_10_19), .s(S_FA_0_5), .cout(C_FA_0_5));
	wire S_HA_0_5, C_HA_0_5;
	ha HA_0_5 (.a(PP_12_17), .b(PP_14_15), .s(S_HA_0_5), .c(C_HA_0_5));
	wire S_FA_0_6, C_FA_0_6;
	fa FA_0_6 (.a(PP_0_30), .b(PP_2_28), .cin(PP_4_26), .s(S_FA_0_6), .cout(C_FA_0_6));
	wire S_FA_0_7, C_FA_0_7;
	fa FA_0_7 (.a(PP_6_24), .b(PP_8_22), .cin(PP_10_20), .s(S_FA_0_7), .cout(C_FA_0_7));
	wire S_FA_0_8, C_FA_0_8;
	fa FA_0_8 (.a(PP_12_18), .b(PP_14_16), .cin(PP_16_14), .s(S_FA_0_8), .cout(C_FA_0_8));
	wire S_HA_0_6, C_HA_0_6;
	ha HA_0_6 (.a(PP_18_12), .b(PP_20_10), .s(S_HA_0_6), .c(C_HA_0_6));
	wire S_FA_0_9, C_FA_0_9;
	fa FA_0_9 (.a(PP_0_31), .b(PP_2_29), .cin(PP_4_27), .s(S_FA_0_9), .cout(C_FA_0_9));
	wire S_FA_0_10, C_FA_0_10;
	fa FA_0_10 (.a(PP_6_25), .b(PP_8_23), .cin(PP_10_21), .s(S_FA_0_10), .cout(C_FA_0_10));
	wire S_FA_0_11, C_FA_0_11;
	fa FA_0_11 (.a(PP_12_19), .b(PP_14_17), .cin(PP_16_15), .s(S_FA_0_11), .cout(C_FA_0_11));
	wire S_HA_0_7, C_HA_0_7;
	ha HA_0_7 (.a(PP_18_13), .b(PP_20_11), .s(S_HA_0_7), .c(C_HA_0_7));
	wire S_FA_0_12, C_FA_0_12;
	fa FA_0_12 (.a(PP_0_32), .b(PP_2_30), .cin(PP_4_28), .s(S_FA_0_12), .cout(C_FA_0_12));
	wire S_FA_0_13, C_FA_0_13;
	fa FA_0_13 (.a(PP_6_26), .b(PP_8_24), .cin(PP_10_22), .s(S_FA_0_13), .cout(C_FA_0_13));
	wire S_FA_0_14, C_FA_0_14;
	fa FA_0_14 (.a(PP_12_20), .b(PP_14_18), .cin(PP_16_16), .s(S_FA_0_14), .cout(C_FA_0_14));
	wire S_FA_0_15, C_FA_0_15;
	fa FA_0_15 (.a(PP_18_14), .b(PP_20_12), .cin(PP_22_10), .s(S_FA_0_15), .cout(C_FA_0_15));
	wire S_HA_0_8, C_HA_0_8;
	ha HA_0_8 (.a(PP_24_8), .b(PP_26_6), .s(S_HA_0_8), .c(C_HA_0_8));
	wire S_FA_0_16, C_FA_0_16;
	fa FA_0_16 (.a(PP_0_33), .b(PP_2_31), .cin(PP_4_29), .s(S_FA_0_16), .cout(C_FA_0_16));
	wire S_FA_0_17, C_FA_0_17;
	fa FA_0_17 (.a(PP_6_27), .b(PP_8_25), .cin(PP_10_23), .s(S_FA_0_17), .cout(C_FA_0_17));
	wire S_FA_0_18, C_FA_0_18;
	fa FA_0_18 (.a(PP_12_21), .b(PP_14_19), .cin(PP_16_17), .s(S_FA_0_18), .cout(C_FA_0_18));
	wire S_FA_0_19, C_FA_0_19;
	fa FA_0_19 (.a(PP_18_15), .b(PP_20_13), .cin(PP_22_11), .s(S_FA_0_19), .cout(C_FA_0_19));
	wire S_FA_0_20, C_FA_0_20;
	fa FA_0_20 (.a(PP_24_9), .b(PP_26_7), .cin(PP_28_5), .s(S_FA_0_20), .cout(C_FA_0_20));
	wire S_FA_0_21, C_FA_0_21;
	fa FA_0_21 (.a(PP_2_32), .b(PP_4_30), .cin(PP_6_28), .s(S_FA_0_21), .cout(C_FA_0_21));
	wire S_FA_0_22, C_FA_0_22;
	fa FA_0_22 (.a(PP_8_26), .b(PP_10_24), .cin(PP_12_22), .s(S_FA_0_22), .cout(C_FA_0_22));
	wire S_FA_0_23, C_FA_0_23;
	fa FA_0_23 (.a(PP_14_20), .b(PP_16_18), .cin(PP_18_16), .s(S_FA_0_23), .cout(C_FA_0_23));
	wire S_FA_0_24, C_FA_0_24;
	fa FA_0_24 (.a(PP_20_14), .b(PP_22_12), .cin(PP_24_10), .s(S_FA_0_24), .cout(C_FA_0_24));
	wire S_HA_0_9, C_HA_0_9;
	ha HA_0_9 (.a(PP_26_8), .b(PP_28_6), .s(S_HA_0_9), .c(C_HA_0_9));
	wire S_FA_0_25, C_FA_0_25;
	fa FA_0_25 (.a(PP_2_33), .b(PP_4_31), .cin(PP_6_29), .s(S_FA_0_25), .cout(C_FA_0_25));
	wire S_FA_0_26, C_FA_0_26;
	fa FA_0_26 (.a(PP_8_27), .b(PP_10_25), .cin(PP_12_23), .s(S_FA_0_26), .cout(C_FA_0_26));
	wire S_FA_0_27, C_FA_0_27;
	fa FA_0_27 (.a(PP_14_21), .b(PP_16_19), .cin(PP_18_17), .s(S_FA_0_27), .cout(C_FA_0_27));
	wire S_FA_0_28, C_FA_0_28;
	fa FA_0_28 (.a(PP_20_15), .b(PP_22_13), .cin(PP_24_11), .s(S_FA_0_28), .cout(C_FA_0_28));
	wire S_FA_0_29, C_FA_0_29;
	fa FA_0_29 (.a(PP_4_32), .b(PP_6_30), .cin(PP_8_28), .s(S_FA_0_29), .cout(C_FA_0_29));
	wire S_FA_0_30, C_FA_0_30;
	fa FA_0_30 (.a(PP_10_26), .b(PP_12_24), .cin(PP_14_22), .s(S_FA_0_30), .cout(C_FA_0_30));
	wire S_FA_0_31, C_FA_0_31;
	fa FA_0_31 (.a(PP_16_20), .b(PP_18_18), .cin(PP_20_16), .s(S_FA_0_31), .cout(C_FA_0_31));
	wire S_HA_0_10, C_HA_0_10;
	ha HA_0_10 (.a(PP_22_14), .b(PP_24_12), .s(S_HA_0_10), .c(C_HA_0_10));
	wire S_FA_0_32, C_FA_0_32;
	fa FA_0_32 (.a(PP_4_33), .b(PP_6_31), .cin(PP_8_29), .s(S_FA_0_32), .cout(C_FA_0_32));
	wire S_FA_0_33, C_FA_0_33;
	fa FA_0_33 (.a(PP_10_27), .b(PP_12_25), .cin(PP_14_23), .s(S_FA_0_33), .cout(C_FA_0_33));
	wire S_FA_0_34, C_FA_0_34;
	fa FA_0_34 (.a(PP_16_21), .b(PP_18_19), .cin(PP_20_17), .s(S_FA_0_34), .cout(C_FA_0_34));
	wire S_FA_0_35, C_FA_0_35;
	fa FA_0_35 (.a(PP_6_32), .b(PP_8_30), .cin(PP_10_28), .s(S_FA_0_35), .cout(C_FA_0_35));
	wire S_FA_0_36, C_FA_0_36;
	fa FA_0_36 (.a(PP_12_26), .b(PP_14_24), .cin(PP_16_22), .s(S_FA_0_36), .cout(C_FA_0_36));
	wire S_HA_0_11, C_HA_0_11;
	ha HA_0_11 (.a(PP_18_20), .b(PP_20_18), .s(S_HA_0_11), .c(C_HA_0_11));
	wire S_FA_0_37, C_FA_0_37;
	fa FA_0_37 (.a(PP_6_33), .b(PP_8_31), .cin(PP_10_29), .s(S_FA_0_37), .cout(C_FA_0_37));
	wire S_FA_0_38, C_FA_0_38;
	fa FA_0_38 (.a(PP_12_27), .b(PP_14_25), .cin(PP_16_23), .s(S_FA_0_38), .cout(C_FA_0_38));
	wire S_FA_0_39, C_FA_0_39;
	fa FA_0_39 (.a(PP_8_32), .b(PP_10_30), .cin(PP_12_28), .s(S_FA_0_39), .cout(C_FA_0_39));
	wire S_HA_0_12, C_HA_0_12;
	ha HA_0_12 (.a(PP_14_26), .b(PP_16_24), .s(S_HA_0_12), .c(C_HA_0_12));
	wire S_FA_0_40, C_FA_0_40;
	fa FA_0_40 (.a(PP_8_33), .b(PP_10_31), .cin(PP_12_29), .s(S_FA_0_40), .cout(C_FA_0_40));
	wire S_HA_0_13, C_HA_0_13;
	ha HA_0_13 (.a(PP_10_32), .b(PP_12_30), .s(S_HA_0_13), .c(C_HA_0_13));

	// --- Dadda Stage 2: Target Height = 9 ---
	wire S_HA_1_14, C_HA_1_14;
	ha HA_1_14 (.a(PP_0_16), .b(PP_2_14), .s(S_HA_1_14), .c(C_HA_1_14));
	wire S_HA_1_15, C_HA_1_15;
	ha HA_1_15 (.a(PP_0_17), .b(PP_2_15), .s(S_HA_1_15), .c(C_HA_1_15));
	wire S_FA_1_41, C_FA_1_41;
	fa FA_1_41 (.a(PP_0_18), .b(PP_2_16), .cin(PP_4_14), .s(S_FA_1_41), .cout(C_FA_1_41));
	wire S_HA_1_16, C_HA_1_16;
	ha HA_1_16 (.a(PP_6_12), .b(PP_8_10), .s(S_HA_1_16), .c(C_HA_1_16));
	wire S_FA_1_42, C_FA_1_42;
	fa FA_1_42 (.a(PP_0_19), .b(PP_2_17), .cin(PP_4_15), .s(S_FA_1_42), .cout(C_FA_1_42));
	wire S_HA_1_17, C_HA_1_17;
	ha HA_1_17 (.a(PP_6_13), .b(PP_8_11), .s(S_HA_1_17), .c(C_HA_1_17));
	wire S_FA_1_43, C_FA_1_43;
	fa FA_1_43 (.a(PP_0_20), .b(PP_2_18), .cin(PP_4_16), .s(S_FA_1_43), .cout(C_FA_1_43));
	wire S_FA_1_44, C_FA_1_44;
	fa FA_1_44 (.a(PP_6_14), .b(PP_8_12), .cin(PP_10_10), .s(S_FA_1_44), .cout(C_FA_1_44));
	wire S_HA_1_18, C_HA_1_18;
	ha HA_1_18 (.a(PP_12_8), .b(PP_14_6), .s(S_HA_1_18), .c(C_HA_1_18));
	wire S_FA_1_45, C_FA_1_45;
	fa FA_1_45 (.a(PP_0_21), .b(PP_2_19), .cin(PP_4_17), .s(S_FA_1_45), .cout(C_FA_1_45));
	wire S_FA_1_46, C_FA_1_46;
	fa FA_1_46 (.a(PP_6_15), .b(PP_8_13), .cin(PP_10_11), .s(S_FA_1_46), .cout(C_FA_1_46));
	wire S_HA_1_19, C_HA_1_19;
	ha HA_1_19 (.a(PP_12_9), .b(PP_14_7), .s(S_HA_1_19), .c(C_HA_1_19));
	wire S_FA_1_47, C_FA_1_47;
	fa FA_1_47 (.a(PP_0_22), .b(PP_2_20), .cin(PP_4_18), .s(S_FA_1_47), .cout(C_FA_1_47));
	wire S_FA_1_48, C_FA_1_48;
	fa FA_1_48 (.a(PP_6_16), .b(PP_8_14), .cin(PP_10_12), .s(S_FA_1_48), .cout(C_FA_1_48));
	wire S_FA_1_49, C_FA_1_49;
	fa FA_1_49 (.a(PP_12_10), .b(PP_14_8), .cin(PP_16_6), .s(S_FA_1_49), .cout(C_FA_1_49));
	wire S_HA_1_20, C_HA_1_20;
	ha HA_1_20 (.a(PP_18_4), .b(PP_20_2), .s(S_HA_1_20), .c(C_HA_1_20));
	wire S_FA_1_50, C_FA_1_50;
	fa FA_1_50 (.a(PP_0_23), .b(PP_2_21), .cin(PP_4_19), .s(S_FA_1_50), .cout(C_FA_1_50));
	wire S_FA_1_51, C_FA_1_51;
	fa FA_1_51 (.a(PP_6_17), .b(PP_8_15), .cin(PP_10_13), .s(S_FA_1_51), .cout(C_FA_1_51));
	wire S_FA_1_52, C_FA_1_52;
	fa FA_1_52 (.a(PP_12_11), .b(PP_14_9), .cin(PP_16_7), .s(S_FA_1_52), .cout(C_FA_1_52));
	wire S_HA_1_21, C_HA_1_21;
	ha HA_1_21 (.a(PP_18_5), .b(PP_20_3), .s(S_HA_1_21), .c(C_HA_1_21));
	wire S_FA_1_53, C_FA_1_53;
	fa FA_1_53 (.a(PP_4_20), .b(PP_6_18), .cin(PP_8_16), .s(S_FA_1_53), .cout(C_FA_1_53));
	wire S_FA_1_54, C_FA_1_54;
	fa FA_1_54 (.a(PP_10_14), .b(PP_12_12), .cin(PP_14_10), .s(S_FA_1_54), .cout(C_FA_1_54));
	wire S_FA_1_55, C_FA_1_55;
	fa FA_1_55 (.a(PP_16_8), .b(PP_18_6), .cin(PP_20_4), .s(S_FA_1_55), .cout(C_FA_1_55));
	wire S_FA_1_56, C_FA_1_56;
	fa FA_1_56 (.a(PP_22_2), .b(PP_24_0), .cin(NegCin_24_0), .s(S_FA_1_56), .cout(C_FA_1_56));
	wire S_FA_1_57, C_FA_1_57;
	fa FA_1_57 (.a(PP_4_21), .b(PP_6_19), .cin(PP_8_17), .s(S_FA_1_57), .cout(C_FA_1_57));
	wire S_FA_1_58, C_FA_1_58;
	fa FA_1_58 (.a(PP_10_15), .b(PP_12_13), .cin(PP_14_11), .s(S_FA_1_58), .cout(C_FA_1_58));
	wire S_FA_1_59, C_FA_1_59;
	fa FA_1_59 (.a(PP_16_9), .b(PP_18_7), .cin(PP_20_5), .s(S_FA_1_59), .cout(C_FA_1_59));
	wire S_FA_1_60, C_FA_1_60;
	fa FA_1_60 (.a(PP_22_3), .b(PP_24_1), .cin(C_HA_0_0), .s(S_FA_1_60), .cout(C_FA_1_60));
	wire S_FA_1_61, C_FA_1_61;
	fa FA_1_61 (.a(PP_10_16), .b(PP_12_14), .cin(PP_14_12), .s(S_FA_1_61), .cout(C_FA_1_61));
	wire S_FA_1_62, C_FA_1_62;
	fa FA_1_62 (.a(PP_16_10), .b(PP_18_8), .cin(PP_20_6), .s(S_FA_1_62), .cout(C_FA_1_62));
	wire S_FA_1_63, C_FA_1_63;
	fa FA_1_63 (.a(PP_22_4), .b(PP_24_2), .cin(PP_26_0), .s(S_FA_1_63), .cout(C_FA_1_63));
	wire S_FA_1_64, C_FA_1_64;
	fa FA_1_64 (.a(NegCin_26_0), .b(C_HA_0_1), .cin(S_FA_0_0), .s(S_FA_1_64), .cout(C_FA_1_64));
	wire S_FA_1_65, C_FA_1_65;
	fa FA_1_65 (.a(PP_10_17), .b(PP_12_15), .cin(PP_14_13), .s(S_FA_1_65), .cout(C_FA_1_65));
	wire S_FA_1_66, C_FA_1_66;
	fa FA_1_66 (.a(PP_16_11), .b(PP_18_9), .cin(PP_20_7), .s(S_FA_1_66), .cout(C_FA_1_66));
	wire S_FA_1_67, C_FA_1_67;
	fa FA_1_67 (.a(PP_22_5), .b(PP_24_3), .cin(PP_26_1), .s(S_FA_1_67), .cout(C_FA_1_67));
	wire S_FA_1_68, C_FA_1_68;
	fa FA_1_68 (.a(C_FA_0_0), .b(C_HA_0_2), .cin(S_FA_0_1), .s(S_FA_1_68), .cout(C_FA_1_68));
	wire S_FA_1_69, C_FA_1_69;
	fa FA_1_69 (.a(PP_16_12), .b(PP_18_10), .cin(PP_20_8), .s(S_FA_1_69), .cout(C_FA_1_69));
	wire S_FA_1_70, C_FA_1_70;
	fa FA_1_70 (.a(PP_22_6), .b(PP_24_4), .cin(PP_26_2), .s(S_FA_1_70), .cout(C_FA_1_70));
	wire S_FA_1_71, C_FA_1_71;
	fa FA_1_71 (.a(PP_28_0), .b(NegCin_28_0), .cin(C_FA_0_1), .s(S_FA_1_71), .cout(C_FA_1_71));
	wire S_FA_1_72, C_FA_1_72;
	fa FA_1_72 (.a(C_HA_0_3), .b(S_FA_0_2), .cin(S_FA_0_3), .s(S_FA_1_72), .cout(C_FA_1_72));
	wire S_FA_1_73, C_FA_1_73;
	fa FA_1_73 (.a(PP_16_13), .b(PP_18_11), .cin(PP_20_9), .s(S_FA_1_73), .cout(C_FA_1_73));
	wire S_FA_1_74, C_FA_1_74;
	fa FA_1_74 (.a(PP_22_7), .b(PP_24_5), .cin(PP_26_3), .s(S_FA_1_74), .cout(C_FA_1_74));
	wire S_FA_1_75, C_FA_1_75;
	fa FA_1_75 (.a(PP_28_1), .b(C_FA_0_2), .cin(C_FA_0_3), .s(S_FA_1_75), .cout(C_FA_1_75));
	wire S_FA_1_76, C_FA_1_76;
	fa FA_1_76 (.a(C_HA_0_4), .b(S_FA_0_4), .cin(S_FA_0_5), .s(S_FA_1_76), .cout(C_FA_1_76));
	wire S_FA_1_77, C_FA_1_77;
	fa FA_1_77 (.a(PP_22_8), .b(PP_24_6), .cin(PP_26_4), .s(S_FA_1_77), .cout(C_FA_1_77));
	wire S_FA_1_78, C_FA_1_78;
	fa FA_1_78 (.a(PP_28_2), .b(PP_30_0), .cin(NegCin_30_0), .s(S_FA_1_78), .cout(C_FA_1_78));
	wire S_FA_1_79, C_FA_1_79;
	fa FA_1_79 (.a(C_FA_0_4), .b(C_FA_0_5), .cin(C_HA_0_5), .s(S_FA_1_79), .cout(C_FA_1_79));
	wire S_FA_1_80, C_FA_1_80;
	fa FA_1_80 (.a(S_FA_0_6), .b(S_FA_0_7), .cin(S_FA_0_8), .s(S_FA_1_80), .cout(C_FA_1_80));
	wire S_FA_1_81, C_FA_1_81;
	fa FA_1_81 (.a(PP_22_9), .b(PP_24_7), .cin(PP_26_5), .s(S_FA_1_81), .cout(C_FA_1_81));
	wire S_FA_1_82, C_FA_1_82;
	fa FA_1_82 (.a(PP_28_3), .b(PP_30_1), .cin(C_FA_0_6), .s(S_FA_1_82), .cout(C_FA_1_82));
	wire S_FA_1_83, C_FA_1_83;
	fa FA_1_83 (.a(C_FA_0_7), .b(C_FA_0_8), .cin(C_HA_0_6), .s(S_FA_1_83), .cout(C_FA_1_83));
	wire S_FA_1_84, C_FA_1_84;
	fa FA_1_84 (.a(S_FA_0_9), .b(S_FA_0_10), .cin(S_FA_0_11), .s(S_FA_1_84), .cout(C_FA_1_84));
	wire S_FA_1_85, C_FA_1_85;
	fa FA_1_85 (.a(PP_28_4), .b(PP_30_2), .cin(PP_32_0), .s(S_FA_1_85), .cout(C_FA_1_85));
	wire S_FA_1_86, C_FA_1_86;
	fa FA_1_86 (.a(NegCin_32_0), .b(C_FA_0_9), .cin(C_FA_0_10), .s(S_FA_1_86), .cout(C_FA_1_86));
	wire S_FA_1_87, C_FA_1_87;
	fa FA_1_87 (.a(C_FA_0_11), .b(C_HA_0_7), .cin(S_FA_0_12), .s(S_FA_1_87), .cout(C_FA_1_87));
	wire S_FA_1_88, C_FA_1_88;
	fa FA_1_88 (.a(S_FA_0_13), .b(S_FA_0_14), .cin(S_FA_0_15), .s(S_FA_1_88), .cout(C_FA_1_88));
	wire S_FA_1_89, C_FA_1_89;
	fa FA_1_89 (.a(PP_30_3), .b(PP_32_1), .cin(Corr_0_33), .s(S_FA_1_89), .cout(C_FA_1_89));
	wire S_FA_1_90, C_FA_1_90;
	fa FA_1_90 (.a(C_FA_0_12), .b(C_FA_0_13), .cin(C_FA_0_14), .s(S_FA_1_90), .cout(C_FA_1_90));
	wire S_FA_1_91, C_FA_1_91;
	fa FA_1_91 (.a(C_FA_0_15), .b(C_HA_0_8), .cin(S_FA_0_16), .s(S_FA_1_91), .cout(C_FA_1_91));
	wire S_FA_1_92, C_FA_1_92;
	fa FA_1_92 (.a(S_FA_0_17), .b(S_FA_0_18), .cin(S_FA_0_19), .s(S_FA_1_92), .cout(C_FA_1_92));
	wire S_FA_1_93, C_FA_1_93;
	fa FA_1_93 (.a(PP_30_4), .b(PP_32_2), .cin(Corr_0_34), .s(S_FA_1_93), .cout(C_FA_1_93));
	wire S_FA_1_94, C_FA_1_94;
	fa FA_1_94 (.a(C_FA_0_16), .b(C_FA_0_17), .cin(C_FA_0_18), .s(S_FA_1_94), .cout(C_FA_1_94));
	wire S_FA_1_95, C_FA_1_95;
	fa FA_1_95 (.a(C_FA_0_19), .b(C_FA_0_20), .cin(S_FA_0_21), .s(S_FA_1_95), .cout(C_FA_1_95));
	wire S_FA_1_96, C_FA_1_96;
	fa FA_1_96 (.a(S_FA_0_22), .b(S_FA_0_23), .cin(S_FA_0_24), .s(S_FA_1_96), .cout(C_FA_1_96));
	wire S_FA_1_97, C_FA_1_97;
	fa FA_1_97 (.a(PP_26_9), .b(PP_28_7), .cin(PP_30_5), .s(S_FA_1_97), .cout(C_FA_1_97));
	wire S_FA_1_98, C_FA_1_98;
	fa FA_1_98 (.a(PP_32_3), .b(C_FA_0_21), .cin(C_FA_0_22), .s(S_FA_1_98), .cout(C_FA_1_98));
	wire S_FA_1_99, C_FA_1_99;
	fa FA_1_99 (.a(C_FA_0_23), .b(C_FA_0_24), .cin(C_HA_0_9), .s(S_FA_1_99), .cout(C_FA_1_99));
	wire S_FA_1_100, C_FA_1_100;
	fa FA_1_100 (.a(S_FA_0_25), .b(S_FA_0_26), .cin(S_FA_0_27), .s(S_FA_1_100), .cout(C_FA_1_100));
	wire S_FA_1_101, C_FA_1_101;
	fa FA_1_101 (.a(PP_26_10), .b(PP_28_8), .cin(PP_30_6), .s(S_FA_1_101), .cout(C_FA_1_101));
	wire S_FA_1_102, C_FA_1_102;
	fa FA_1_102 (.a(PP_32_4), .b(Corr_2_34), .cin(C_FA_0_25), .s(S_FA_1_102), .cout(C_FA_1_102));
	wire S_FA_1_103, C_FA_1_103;
	fa FA_1_103 (.a(C_FA_0_26), .b(C_FA_0_27), .cin(C_FA_0_28), .s(S_FA_1_103), .cout(C_FA_1_103));
	wire S_FA_1_104, C_FA_1_104;
	fa FA_1_104 (.a(S_FA_0_29), .b(S_FA_0_30), .cin(S_FA_0_31), .s(S_FA_1_104), .cout(C_FA_1_104));
	wire S_FA_1_105, C_FA_1_105;
	fa FA_1_105 (.a(PP_22_15), .b(PP_24_13), .cin(PP_26_11), .s(S_FA_1_105), .cout(C_FA_1_105));
	wire S_FA_1_106, C_FA_1_106;
	fa FA_1_106 (.a(PP_28_9), .b(PP_30_7), .cin(PP_32_5), .s(S_FA_1_106), .cout(C_FA_1_106));
	wire S_FA_1_107, C_FA_1_107;
	fa FA_1_107 (.a(C_FA_0_29), .b(C_FA_0_30), .cin(C_FA_0_31), .s(S_FA_1_107), .cout(C_FA_1_107));
	wire S_FA_1_108, C_FA_1_108;
	fa FA_1_108 (.a(C_HA_0_10), .b(S_FA_0_32), .cin(S_FA_0_33), .s(S_FA_1_108), .cout(C_FA_1_108));
	wire S_FA_1_109, C_FA_1_109;
	fa FA_1_109 (.a(PP_22_16), .b(PP_24_14), .cin(PP_26_12), .s(S_FA_1_109), .cout(C_FA_1_109));
	wire S_FA_1_110, C_FA_1_110;
	fa FA_1_110 (.a(PP_28_10), .b(PP_30_8), .cin(PP_32_6), .s(S_FA_1_110), .cout(C_FA_1_110));
	wire S_FA_1_111, C_FA_1_111;
	fa FA_1_111 (.a(Corr_4_34), .b(C_FA_0_32), .cin(C_FA_0_33), .s(S_FA_1_111), .cout(C_FA_1_111));
	wire S_FA_1_112, C_FA_1_112;
	fa FA_1_112 (.a(C_FA_0_34), .b(S_FA_0_35), .cin(S_FA_0_36), .s(S_FA_1_112), .cout(C_FA_1_112));
	wire S_FA_1_113, C_FA_1_113;
	fa FA_1_113 (.a(PP_18_21), .b(PP_20_19), .cin(PP_22_17), .s(S_FA_1_113), .cout(C_FA_1_113));
	wire S_FA_1_114, C_FA_1_114;
	fa FA_1_114 (.a(PP_24_15), .b(PP_26_13), .cin(PP_28_11), .s(S_FA_1_114), .cout(C_FA_1_114));
	wire S_FA_1_115, C_FA_1_115;
	fa FA_1_115 (.a(PP_30_9), .b(PP_32_7), .cin(C_FA_0_35), .s(S_FA_1_115), .cout(C_FA_1_115));
	wire S_FA_1_116, C_FA_1_116;
	fa FA_1_116 (.a(C_FA_0_36), .b(C_HA_0_11), .cin(S_FA_0_37), .s(S_FA_1_116), .cout(C_FA_1_116));
	wire S_FA_1_117, C_FA_1_117;
	fa FA_1_117 (.a(PP_18_22), .b(PP_20_20), .cin(PP_22_18), .s(S_FA_1_117), .cout(C_FA_1_117));
	wire S_FA_1_118, C_FA_1_118;
	fa FA_1_118 (.a(PP_24_16), .b(PP_26_14), .cin(PP_28_12), .s(S_FA_1_118), .cout(C_FA_1_118));
	wire S_FA_1_119, C_FA_1_119;
	fa FA_1_119 (.a(PP_30_10), .b(PP_32_8), .cin(Corr_6_34), .s(S_FA_1_119), .cout(C_FA_1_119));
	wire S_FA_1_120, C_FA_1_120;
	fa FA_1_120 (.a(C_FA_0_37), .b(C_FA_0_38), .cin(S_FA_0_39), .s(S_FA_1_120), .cout(C_FA_1_120));
	wire S_FA_1_121, C_FA_1_121;
	fa FA_1_121 (.a(PP_14_27), .b(PP_16_25), .cin(PP_18_23), .s(S_FA_1_121), .cout(C_FA_1_121));
	wire S_FA_1_122, C_FA_1_122;
	fa FA_1_122 (.a(PP_20_21), .b(PP_22_19), .cin(PP_24_17), .s(S_FA_1_122), .cout(C_FA_1_122));
	wire S_FA_1_123, C_FA_1_123;
	fa FA_1_123 (.a(PP_26_15), .b(PP_28_13), .cin(PP_30_11), .s(S_FA_1_123), .cout(C_FA_1_123));
	wire S_FA_1_124, C_FA_1_124;
	fa FA_1_124 (.a(PP_32_9), .b(C_FA_0_39), .cin(C_HA_0_12), .s(S_FA_1_124), .cout(C_FA_1_124));
	wire S_FA_1_125, C_FA_1_125;
	fa FA_1_125 (.a(PP_14_28), .b(PP_16_26), .cin(PP_18_24), .s(S_FA_1_125), .cout(C_FA_1_125));
	wire S_FA_1_126, C_FA_1_126;
	fa FA_1_126 (.a(PP_20_22), .b(PP_22_20), .cin(PP_24_18), .s(S_FA_1_126), .cout(C_FA_1_126));
	wire S_FA_1_127, C_FA_1_127;
	fa FA_1_127 (.a(PP_26_16), .b(PP_28_14), .cin(PP_30_12), .s(S_FA_1_127), .cout(C_FA_1_127));
	wire S_FA_1_128, C_FA_1_128;
	fa FA_1_128 (.a(PP_32_10), .b(Corr_8_34), .cin(C_FA_0_40), .s(S_FA_1_128), .cout(C_FA_1_128));
	wire S_FA_1_129, C_FA_1_129;
	fa FA_1_129 (.a(PP_10_33), .b(PP_12_31), .cin(PP_14_29), .s(S_FA_1_129), .cout(C_FA_1_129));
	wire S_FA_1_130, C_FA_1_130;
	fa FA_1_130 (.a(PP_16_27), .b(PP_18_25), .cin(PP_20_23), .s(S_FA_1_130), .cout(C_FA_1_130));
	wire S_FA_1_131, C_FA_1_131;
	fa FA_1_131 (.a(PP_22_21), .b(PP_24_19), .cin(PP_26_17), .s(S_FA_1_131), .cout(C_FA_1_131));
	wire S_FA_1_132, C_FA_1_132;
	fa FA_1_132 (.a(PP_28_15), .b(PP_30_13), .cin(PP_32_11), .s(S_FA_1_132), .cout(C_FA_1_132));
	wire S_FA_1_133, C_FA_1_133;
	fa FA_1_133 (.a(PP_12_32), .b(PP_14_30), .cin(PP_16_28), .s(S_FA_1_133), .cout(C_FA_1_133));
	wire S_FA_1_134, C_FA_1_134;
	fa FA_1_134 (.a(PP_18_26), .b(PP_20_24), .cin(PP_22_22), .s(S_FA_1_134), .cout(C_FA_1_134));
	wire S_FA_1_135, C_FA_1_135;
	fa FA_1_135 (.a(PP_24_20), .b(PP_26_18), .cin(PP_28_16), .s(S_FA_1_135), .cout(C_FA_1_135));
	wire S_HA_1_22, C_HA_1_22;
	ha HA_1_22 (.a(PP_30_14), .b(PP_32_12), .s(S_HA_1_22), .c(C_HA_1_22));
	wire S_FA_1_136, C_FA_1_136;
	fa FA_1_136 (.a(PP_12_33), .b(PP_14_31), .cin(PP_16_29), .s(S_FA_1_136), .cout(C_FA_1_136));
	wire S_FA_1_137, C_FA_1_137;
	fa FA_1_137 (.a(PP_18_27), .b(PP_20_25), .cin(PP_22_23), .s(S_FA_1_137), .cout(C_FA_1_137));
	wire S_FA_1_138, C_FA_1_138;
	fa FA_1_138 (.a(PP_24_21), .b(PP_26_19), .cin(PP_28_17), .s(S_FA_1_138), .cout(C_FA_1_138));
	wire S_FA_1_139, C_FA_1_139;
	fa FA_1_139 (.a(PP_14_32), .b(PP_16_30), .cin(PP_18_28), .s(S_FA_1_139), .cout(C_FA_1_139));
	wire S_FA_1_140, C_FA_1_140;
	fa FA_1_140 (.a(PP_20_26), .b(PP_22_24), .cin(PP_24_22), .s(S_FA_1_140), .cout(C_FA_1_140));
	wire S_HA_1_23, C_HA_1_23;
	ha HA_1_23 (.a(PP_26_20), .b(PP_28_18), .s(S_HA_1_23), .c(C_HA_1_23));
	wire S_FA_1_141, C_FA_1_141;
	fa FA_1_141 (.a(PP_14_33), .b(PP_16_31), .cin(PP_18_29), .s(S_FA_1_141), .cout(C_FA_1_141));
	wire S_FA_1_142, C_FA_1_142;
	fa FA_1_142 (.a(PP_20_27), .b(PP_22_25), .cin(PP_24_23), .s(S_FA_1_142), .cout(C_FA_1_142));
	wire S_FA_1_143, C_FA_1_143;
	fa FA_1_143 (.a(PP_16_32), .b(PP_18_30), .cin(PP_20_28), .s(S_FA_1_143), .cout(C_FA_1_143));
	wire S_HA_1_24, C_HA_1_24;
	ha HA_1_24 (.a(PP_22_26), .b(PP_24_24), .s(S_HA_1_24), .c(C_HA_1_24));
	wire S_FA_1_144, C_FA_1_144;
	fa FA_1_144 (.a(PP_16_33), .b(PP_18_31), .cin(PP_20_29), .s(S_FA_1_144), .cout(C_FA_1_144));
	wire S_HA_1_25, C_HA_1_25;
	ha HA_1_25 (.a(PP_18_32), .b(PP_20_30), .s(S_HA_1_25), .c(C_HA_1_25));

	// --- Dadda Stage 3: Target Height = 6 ---
	wire S_HA_2_26, C_HA_2_26;
	ha HA_2_26 (.a(PP_0_10), .b(PP_2_8), .s(S_HA_2_26), .c(C_HA_2_26));
	wire S_HA_2_27, C_HA_2_27;
	ha HA_2_27 (.a(PP_0_11), .b(PP_2_9), .s(S_HA_2_27), .c(C_HA_2_27));
	wire S_FA_2_145, C_FA_2_145;
	fa FA_2_145 (.a(PP_0_12), .b(PP_2_10), .cin(PP_4_8), .s(S_FA_2_145), .cout(C_FA_2_145));
	wire S_HA_2_28, C_HA_2_28;
	ha HA_2_28 (.a(PP_6_6), .b(PP_8_4), .s(S_HA_2_28), .c(C_HA_2_28));
	wire S_FA_2_146, C_FA_2_146;
	fa FA_2_146 (.a(PP_0_13), .b(PP_2_11), .cin(PP_4_9), .s(S_FA_2_146), .cout(C_FA_2_146));
	wire S_HA_2_29, C_HA_2_29;
	ha HA_2_29 (.a(PP_6_7), .b(PP_8_5), .s(S_HA_2_29), .c(C_HA_2_29));
	wire S_FA_2_147, C_FA_2_147;
	fa FA_2_147 (.a(PP_0_14), .b(PP_2_12), .cin(PP_4_10), .s(S_FA_2_147), .cout(C_FA_2_147));
	wire S_FA_2_148, C_FA_2_148;
	fa FA_2_148 (.a(PP_6_8), .b(PP_8_6), .cin(PP_10_4), .s(S_FA_2_148), .cout(C_FA_2_148));
	wire S_HA_2_30, C_HA_2_30;
	ha HA_2_30 (.a(PP_12_2), .b(PP_14_0), .s(S_HA_2_30), .c(C_HA_2_30));
	wire S_FA_2_149, C_FA_2_149;
	fa FA_2_149 (.a(PP_0_15), .b(PP_2_13), .cin(PP_4_11), .s(S_FA_2_149), .cout(C_FA_2_149));
	wire S_FA_2_150, C_FA_2_150;
	fa FA_2_150 (.a(PP_6_9), .b(PP_8_7), .cin(PP_10_5), .s(S_FA_2_150), .cout(C_FA_2_150));
	wire S_HA_2_31, C_HA_2_31;
	ha HA_2_31 (.a(PP_12_3), .b(PP_14_1), .s(S_HA_2_31), .c(C_HA_2_31));
	wire S_FA_2_151, C_FA_2_151;
	fa FA_2_151 (.a(PP_4_12), .b(PP_6_10), .cin(PP_8_8), .s(S_FA_2_151), .cout(C_FA_2_151));
	wire S_FA_2_152, C_FA_2_152;
	fa FA_2_152 (.a(PP_10_6), .b(PP_12_4), .cin(PP_14_2), .s(S_FA_2_152), .cout(C_FA_2_152));
	wire S_FA_2_153, C_FA_2_153;
	fa FA_2_153 (.a(PP_16_0), .b(NegCin_16_0), .cin(S_HA_1_14), .s(S_FA_2_153), .cout(C_FA_2_153));
	wire S_FA_2_154, C_FA_2_154;
	fa FA_2_154 (.a(PP_4_13), .b(PP_6_11), .cin(PP_8_9), .s(S_FA_2_154), .cout(C_FA_2_154));
	wire S_FA_2_155, C_FA_2_155;
	fa FA_2_155 (.a(PP_10_7), .b(PP_12_5), .cin(PP_14_3), .s(S_FA_2_155), .cout(C_FA_2_155));
	wire S_FA_2_156, C_FA_2_156;
	fa FA_2_156 (.a(PP_16_1), .b(C_HA_1_14), .cin(S_HA_1_15), .s(S_FA_2_156), .cout(C_FA_2_156));
	wire S_FA_2_157, C_FA_2_157;
	fa FA_2_157 (.a(PP_10_8), .b(PP_12_6), .cin(PP_14_4), .s(S_FA_2_157), .cout(C_FA_2_157));
	wire S_FA_2_158, C_FA_2_158;
	fa FA_2_158 (.a(PP_16_2), .b(PP_18_0), .cin(NegCin_18_0), .s(S_FA_2_158), .cout(C_FA_2_158));
	wire S_FA_2_159, C_FA_2_159;
	fa FA_2_159 (.a(C_HA_1_15), .b(S_FA_1_41), .cin(S_HA_1_16), .s(S_FA_2_159), .cout(C_FA_2_159));
	wire S_FA_2_160, C_FA_2_160;
	fa FA_2_160 (.a(PP_10_9), .b(PP_12_7), .cin(PP_14_5), .s(S_FA_2_160), .cout(C_FA_2_160));
	wire S_FA_2_161, C_FA_2_161;
	fa FA_2_161 (.a(PP_16_3), .b(PP_18_1), .cin(C_FA_1_41), .s(S_FA_2_161), .cout(C_FA_2_161));
	wire S_FA_2_162, C_FA_2_162;
	fa FA_2_162 (.a(C_HA_1_16), .b(S_FA_1_42), .cin(S_HA_1_17), .s(S_FA_2_162), .cout(C_FA_2_162));
	wire S_FA_2_163, C_FA_2_163;
	fa FA_2_163 (.a(PP_16_4), .b(PP_18_2), .cin(PP_20_0), .s(S_FA_2_163), .cout(C_FA_2_163));
	wire S_FA_2_164, C_FA_2_164;
	fa FA_2_164 (.a(NegCin_20_0), .b(C_FA_1_42), .cin(C_HA_1_17), .s(S_FA_2_164), .cout(C_FA_2_164));
	wire S_FA_2_165, C_FA_2_165;
	fa FA_2_165 (.a(S_FA_1_43), .b(S_FA_1_44), .cin(S_HA_1_18), .s(S_FA_2_165), .cout(C_FA_2_165));
	wire S_FA_2_166, C_FA_2_166;
	fa FA_2_166 (.a(PP_16_5), .b(PP_18_3), .cin(PP_20_1), .s(S_FA_2_166), .cout(C_FA_2_166));
	wire S_FA_2_167, C_FA_2_167;
	fa FA_2_167 (.a(C_FA_1_43), .b(C_FA_1_44), .cin(C_HA_1_18), .s(S_FA_2_167), .cout(C_FA_2_167));
	wire S_FA_2_168, C_FA_2_168;
	fa FA_2_168 (.a(S_FA_1_45), .b(S_FA_1_46), .cin(S_HA_1_19), .s(S_FA_2_168), .cout(C_FA_2_168));
	wire S_FA_2_169, C_FA_2_169;
	fa FA_2_169 (.a(PP_22_0), .b(NegCin_22_0), .cin(C_FA_1_45), .s(S_FA_2_169), .cout(C_FA_2_169));
	wire S_FA_2_170, C_FA_2_170;
	fa FA_2_170 (.a(C_FA_1_46), .b(C_HA_1_19), .cin(S_FA_1_47), .s(S_FA_2_170), .cout(C_FA_2_170));
	wire S_FA_2_171, C_FA_2_171;
	fa FA_2_171 (.a(S_FA_1_48), .b(S_FA_1_49), .cin(S_HA_1_20), .s(S_FA_2_171), .cout(C_FA_2_171));
	wire S_FA_2_172, C_FA_2_172;
	fa FA_2_172 (.a(PP_22_1), .b(C_FA_1_47), .cin(C_FA_1_48), .s(S_FA_2_172), .cout(C_FA_2_172));
	wire S_FA_2_173, C_FA_2_173;
	fa FA_2_173 (.a(C_FA_1_49), .b(C_HA_1_20), .cin(S_FA_1_50), .s(S_FA_2_173), .cout(C_FA_2_173));
	wire S_FA_2_174, C_FA_2_174;
	fa FA_2_174 (.a(S_FA_1_51), .b(S_FA_1_52), .cin(S_HA_1_21), .s(S_FA_2_174), .cout(C_FA_2_174));
	wire S_FA_2_175, C_FA_2_175;
	fa FA_2_175 (.a(S_HA_0_0), .b(C_FA_1_50), .cin(C_FA_1_51), .s(S_FA_2_175), .cout(C_FA_2_175));
	wire S_FA_2_176, C_FA_2_176;
	fa FA_2_176 (.a(C_FA_1_52), .b(C_HA_1_21), .cin(S_FA_1_53), .s(S_FA_2_176), .cout(C_FA_2_176));
	wire S_FA_2_177, C_FA_2_177;
	fa FA_2_177 (.a(S_FA_1_54), .b(S_FA_1_55), .cin(S_FA_1_56), .s(S_FA_2_177), .cout(C_FA_2_177));
	wire S_FA_2_178, C_FA_2_178;
	fa FA_2_178 (.a(S_HA_0_1), .b(C_FA_1_53), .cin(C_FA_1_54), .s(S_FA_2_178), .cout(C_FA_2_178));
	wire S_FA_2_179, C_FA_2_179;
	fa FA_2_179 (.a(C_FA_1_55), .b(C_FA_1_56), .cin(S_FA_1_57), .s(S_FA_2_179), .cout(C_FA_2_179));
	wire S_FA_2_180, C_FA_2_180;
	fa FA_2_180 (.a(S_FA_1_58), .b(S_FA_1_59), .cin(S_FA_1_60), .s(S_FA_2_180), .cout(C_FA_2_180));
	wire S_FA_2_181, C_FA_2_181;
	fa FA_2_181 (.a(S_HA_0_2), .b(C_FA_1_57), .cin(C_FA_1_58), .s(S_FA_2_181), .cout(C_FA_2_181));
	wire S_FA_2_182, C_FA_2_182;
	fa FA_2_182 (.a(C_FA_1_59), .b(C_FA_1_60), .cin(S_FA_1_61), .s(S_FA_2_182), .cout(C_FA_2_182));
	wire S_FA_2_183, C_FA_2_183;
	fa FA_2_183 (.a(S_FA_1_62), .b(S_FA_1_63), .cin(S_FA_1_64), .s(S_FA_2_183), .cout(C_FA_2_183));
	wire S_FA_2_184, C_FA_2_184;
	fa FA_2_184 (.a(S_HA_0_3), .b(C_FA_1_61), .cin(C_FA_1_62), .s(S_FA_2_184), .cout(C_FA_2_184));
	wire S_FA_2_185, C_FA_2_185;
	fa FA_2_185 (.a(C_FA_1_63), .b(C_FA_1_64), .cin(S_FA_1_65), .s(S_FA_2_185), .cout(C_FA_2_185));
	wire S_FA_2_186, C_FA_2_186;
	fa FA_2_186 (.a(S_FA_1_66), .b(S_FA_1_67), .cin(S_FA_1_68), .s(S_FA_2_186), .cout(C_FA_2_186));
	wire S_FA_2_187, C_FA_2_187;
	fa FA_2_187 (.a(S_HA_0_4), .b(C_FA_1_65), .cin(C_FA_1_66), .s(S_FA_2_187), .cout(C_FA_2_187));
	wire S_FA_2_188, C_FA_2_188;
	fa FA_2_188 (.a(C_FA_1_67), .b(C_FA_1_68), .cin(S_FA_1_69), .s(S_FA_2_188), .cout(C_FA_2_188));
	wire S_FA_2_189, C_FA_2_189;
	fa FA_2_189 (.a(S_FA_1_70), .b(S_FA_1_71), .cin(S_FA_1_72), .s(S_FA_2_189), .cout(C_FA_2_189));
	wire S_FA_2_190, C_FA_2_190;
	fa FA_2_190 (.a(S_HA_0_5), .b(C_FA_1_69), .cin(C_FA_1_70), .s(S_FA_2_190), .cout(C_FA_2_190));
	wire S_FA_2_191, C_FA_2_191;
	fa FA_2_191 (.a(C_FA_1_71), .b(C_FA_1_72), .cin(S_FA_1_73), .s(S_FA_2_191), .cout(C_FA_2_191));
	wire S_FA_2_192, C_FA_2_192;
	fa FA_2_192 (.a(S_FA_1_74), .b(S_FA_1_75), .cin(S_FA_1_76), .s(S_FA_2_192), .cout(C_FA_2_192));
	wire S_FA_2_193, C_FA_2_193;
	fa FA_2_193 (.a(S_HA_0_6), .b(C_FA_1_73), .cin(C_FA_1_74), .s(S_FA_2_193), .cout(C_FA_2_193));
	wire S_FA_2_194, C_FA_2_194;
	fa FA_2_194 (.a(C_FA_1_75), .b(C_FA_1_76), .cin(S_FA_1_77), .s(S_FA_2_194), .cout(C_FA_2_194));
	wire S_FA_2_195, C_FA_2_195;
	fa FA_2_195 (.a(S_FA_1_78), .b(S_FA_1_79), .cin(S_FA_1_80), .s(S_FA_2_195), .cout(C_FA_2_195));
	wire S_FA_2_196, C_FA_2_196;
	fa FA_2_196 (.a(S_HA_0_7), .b(C_FA_1_77), .cin(C_FA_1_78), .s(S_FA_2_196), .cout(C_FA_2_196));
	wire S_FA_2_197, C_FA_2_197;
	fa FA_2_197 (.a(C_FA_1_79), .b(C_FA_1_80), .cin(S_FA_1_81), .s(S_FA_2_197), .cout(C_FA_2_197));
	wire S_FA_2_198, C_FA_2_198;
	fa FA_2_198 (.a(S_FA_1_82), .b(S_FA_1_83), .cin(S_FA_1_84), .s(S_FA_2_198), .cout(C_FA_2_198));
	wire S_FA_2_199, C_FA_2_199;
	fa FA_2_199 (.a(S_HA_0_8), .b(C_FA_1_81), .cin(C_FA_1_82), .s(S_FA_2_199), .cout(C_FA_2_199));
	wire S_FA_2_200, C_FA_2_200;
	fa FA_2_200 (.a(C_FA_1_83), .b(C_FA_1_84), .cin(S_FA_1_85), .s(S_FA_2_200), .cout(C_FA_2_200));
	wire S_FA_2_201, C_FA_2_201;
	fa FA_2_201 (.a(S_FA_1_86), .b(S_FA_1_87), .cin(S_FA_1_88), .s(S_FA_2_201), .cout(C_FA_2_201));
	wire S_FA_2_202, C_FA_2_202;
	fa FA_2_202 (.a(S_FA_0_20), .b(C_FA_1_85), .cin(C_FA_1_86), .s(S_FA_2_202), .cout(C_FA_2_202));
	wire S_FA_2_203, C_FA_2_203;
	fa FA_2_203 (.a(C_FA_1_87), .b(C_FA_1_88), .cin(S_FA_1_89), .s(S_FA_2_203), .cout(C_FA_2_203));
	wire S_FA_2_204, C_FA_2_204;
	fa FA_2_204 (.a(S_FA_1_90), .b(S_FA_1_91), .cin(S_FA_1_92), .s(S_FA_2_204), .cout(C_FA_2_204));
	wire S_FA_2_205, C_FA_2_205;
	fa FA_2_205 (.a(S_HA_0_9), .b(C_FA_1_89), .cin(C_FA_1_90), .s(S_FA_2_205), .cout(C_FA_2_205));
	wire S_FA_2_206, C_FA_2_206;
	fa FA_2_206 (.a(C_FA_1_91), .b(C_FA_1_92), .cin(S_FA_1_93), .s(S_FA_2_206), .cout(C_FA_2_206));
	wire S_FA_2_207, C_FA_2_207;
	fa FA_2_207 (.a(S_FA_1_94), .b(S_FA_1_95), .cin(S_FA_1_96), .s(S_FA_2_207), .cout(C_FA_2_207));
	wire S_FA_2_208, C_FA_2_208;
	fa FA_2_208 (.a(S_FA_0_28), .b(C_FA_1_93), .cin(C_FA_1_94), .s(S_FA_2_208), .cout(C_FA_2_208));
	wire S_FA_2_209, C_FA_2_209;
	fa FA_2_209 (.a(C_FA_1_95), .b(C_FA_1_96), .cin(S_FA_1_97), .s(S_FA_2_209), .cout(C_FA_2_209));
	wire S_FA_2_210, C_FA_2_210;
	fa FA_2_210 (.a(S_FA_1_98), .b(S_FA_1_99), .cin(S_FA_1_100), .s(S_FA_2_210), .cout(C_FA_2_210));
	wire S_FA_2_211, C_FA_2_211;
	fa FA_2_211 (.a(S_HA_0_10), .b(C_FA_1_97), .cin(C_FA_1_98), .s(S_FA_2_211), .cout(C_FA_2_211));
	wire S_FA_2_212, C_FA_2_212;
	fa FA_2_212 (.a(C_FA_1_99), .b(C_FA_1_100), .cin(S_FA_1_101), .s(S_FA_2_212), .cout(C_FA_2_212));
	wire S_FA_2_213, C_FA_2_213;
	fa FA_2_213 (.a(S_FA_1_102), .b(S_FA_1_103), .cin(S_FA_1_104), .s(S_FA_2_213), .cout(C_FA_2_213));
	wire S_FA_2_214, C_FA_2_214;
	fa FA_2_214 (.a(S_FA_0_34), .b(C_FA_1_101), .cin(C_FA_1_102), .s(S_FA_2_214), .cout(C_FA_2_214));
	wire S_FA_2_215, C_FA_2_215;
	fa FA_2_215 (.a(C_FA_1_103), .b(C_FA_1_104), .cin(S_FA_1_105), .s(S_FA_2_215), .cout(C_FA_2_215));
	wire S_FA_2_216, C_FA_2_216;
	fa FA_2_216 (.a(S_FA_1_106), .b(S_FA_1_107), .cin(S_FA_1_108), .s(S_FA_2_216), .cout(C_FA_2_216));
	wire S_FA_2_217, C_FA_2_217;
	fa FA_2_217 (.a(S_HA_0_11), .b(C_FA_1_105), .cin(C_FA_1_106), .s(S_FA_2_217), .cout(C_FA_2_217));
	wire S_FA_2_218, C_FA_2_218;
	fa FA_2_218 (.a(C_FA_1_107), .b(C_FA_1_108), .cin(S_FA_1_109), .s(S_FA_2_218), .cout(C_FA_2_218));
	wire S_FA_2_219, C_FA_2_219;
	fa FA_2_219 (.a(S_FA_1_110), .b(S_FA_1_111), .cin(S_FA_1_112), .s(S_FA_2_219), .cout(C_FA_2_219));
	wire S_FA_2_220, C_FA_2_220;
	fa FA_2_220 (.a(S_FA_0_38), .b(C_FA_1_109), .cin(C_FA_1_110), .s(S_FA_2_220), .cout(C_FA_2_220));
	wire S_FA_2_221, C_FA_2_221;
	fa FA_2_221 (.a(C_FA_1_111), .b(C_FA_1_112), .cin(S_FA_1_113), .s(S_FA_2_221), .cout(C_FA_2_221));
	wire S_FA_2_222, C_FA_2_222;
	fa FA_2_222 (.a(S_FA_1_114), .b(S_FA_1_115), .cin(S_FA_1_116), .s(S_FA_2_222), .cout(C_FA_2_222));
	wire S_FA_2_223, C_FA_2_223;
	fa FA_2_223 (.a(S_HA_0_12), .b(C_FA_1_113), .cin(C_FA_1_114), .s(S_FA_2_223), .cout(C_FA_2_223));
	wire S_FA_2_224, C_FA_2_224;
	fa FA_2_224 (.a(C_FA_1_115), .b(C_FA_1_116), .cin(S_FA_1_117), .s(S_FA_2_224), .cout(C_FA_2_224));
	wire S_FA_2_225, C_FA_2_225;
	fa FA_2_225 (.a(S_FA_1_118), .b(S_FA_1_119), .cin(S_FA_1_120), .s(S_FA_2_225), .cout(C_FA_2_225));
	wire S_FA_2_226, C_FA_2_226;
	fa FA_2_226 (.a(S_FA_0_40), .b(C_FA_1_117), .cin(C_FA_1_118), .s(S_FA_2_226), .cout(C_FA_2_226));
	wire S_FA_2_227, C_FA_2_227;
	fa FA_2_227 (.a(C_FA_1_119), .b(C_FA_1_120), .cin(S_FA_1_121), .s(S_FA_2_227), .cout(C_FA_2_227));
	wire S_FA_2_228, C_FA_2_228;
	fa FA_2_228 (.a(S_FA_1_122), .b(S_FA_1_123), .cin(S_FA_1_124), .s(S_FA_2_228), .cout(C_FA_2_228));
	wire S_FA_2_229, C_FA_2_229;
	fa FA_2_229 (.a(S_HA_0_13), .b(C_FA_1_121), .cin(C_FA_1_122), .s(S_FA_2_229), .cout(C_FA_2_229));
	wire S_FA_2_230, C_FA_2_230;
	fa FA_2_230 (.a(C_FA_1_123), .b(C_FA_1_124), .cin(S_FA_1_125), .s(S_FA_2_230), .cout(C_FA_2_230));
	wire S_FA_2_231, C_FA_2_231;
	fa FA_2_231 (.a(S_FA_1_126), .b(S_FA_1_127), .cin(S_FA_1_128), .s(S_FA_2_231), .cout(C_FA_2_231));
	wire S_FA_2_232, C_FA_2_232;
	fa FA_2_232 (.a(C_HA_0_13), .b(C_FA_1_125), .cin(C_FA_1_126), .s(S_FA_2_232), .cout(C_FA_2_232));
	wire S_FA_2_233, C_FA_2_233;
	fa FA_2_233 (.a(C_FA_1_127), .b(C_FA_1_128), .cin(S_FA_1_129), .s(S_FA_2_233), .cout(C_FA_2_233));
	wire S_FA_2_234, C_FA_2_234;
	fa FA_2_234 (.a(S_FA_1_130), .b(S_FA_1_131), .cin(S_FA_1_132), .s(S_FA_2_234), .cout(C_FA_2_234));
	wire S_FA_2_235, C_FA_2_235;
	fa FA_2_235 (.a(Corr_10_34), .b(C_FA_1_129), .cin(C_FA_1_130), .s(S_FA_2_235), .cout(C_FA_2_235));
	wire S_FA_2_236, C_FA_2_236;
	fa FA_2_236 (.a(C_FA_1_131), .b(C_FA_1_132), .cin(S_FA_1_133), .s(S_FA_2_236), .cout(C_FA_2_236));
	wire S_FA_2_237, C_FA_2_237;
	fa FA_2_237 (.a(S_FA_1_134), .b(S_FA_1_135), .cin(S_HA_1_22), .s(S_FA_2_237), .cout(C_FA_2_237));
	wire S_FA_2_238, C_FA_2_238;
	fa FA_2_238 (.a(PP_30_15), .b(PP_32_13), .cin(C_FA_1_133), .s(S_FA_2_238), .cout(C_FA_2_238));
	wire S_FA_2_239, C_FA_2_239;
	fa FA_2_239 (.a(C_FA_1_134), .b(C_FA_1_135), .cin(C_HA_1_22), .s(S_FA_2_239), .cout(C_FA_2_239));
	wire S_FA_2_240, C_FA_2_240;
	fa FA_2_240 (.a(S_FA_1_136), .b(S_FA_1_137), .cin(S_FA_1_138), .s(S_FA_2_240), .cout(C_FA_2_240));
	wire S_FA_2_241, C_FA_2_241;
	fa FA_2_241 (.a(PP_30_16), .b(PP_32_14), .cin(Corr_12_34), .s(S_FA_2_241), .cout(C_FA_2_241));
	wire S_FA_2_242, C_FA_2_242;
	fa FA_2_242 (.a(C_FA_1_136), .b(C_FA_1_137), .cin(C_FA_1_138), .s(S_FA_2_242), .cout(C_FA_2_242));
	wire S_FA_2_243, C_FA_2_243;
	fa FA_2_243 (.a(S_FA_1_139), .b(S_FA_1_140), .cin(S_HA_1_23), .s(S_FA_2_243), .cout(C_FA_2_243));
	wire S_FA_2_244, C_FA_2_244;
	fa FA_2_244 (.a(PP_26_21), .b(PP_28_19), .cin(PP_30_17), .s(S_FA_2_244), .cout(C_FA_2_244));
	wire S_FA_2_245, C_FA_2_245;
	fa FA_2_245 (.a(PP_32_15), .b(C_FA_1_139), .cin(C_FA_1_140), .s(S_FA_2_245), .cout(C_FA_2_245));
	wire S_FA_2_246, C_FA_2_246;
	fa FA_2_246 (.a(C_HA_1_23), .b(S_FA_1_141), .cin(S_FA_1_142), .s(S_FA_2_246), .cout(C_FA_2_246));
	wire S_FA_2_247, C_FA_2_247;
	fa FA_2_247 (.a(PP_26_22), .b(PP_28_20), .cin(PP_30_18), .s(S_FA_2_247), .cout(C_FA_2_247));
	wire S_FA_2_248, C_FA_2_248;
	fa FA_2_248 (.a(PP_32_16), .b(Corr_14_34), .cin(C_FA_1_141), .s(S_FA_2_248), .cout(C_FA_2_248));
	wire S_FA_2_249, C_FA_2_249;
	fa FA_2_249 (.a(C_FA_1_142), .b(S_FA_1_143), .cin(S_HA_1_24), .s(S_FA_2_249), .cout(C_FA_2_249));
	wire S_FA_2_250, C_FA_2_250;
	fa FA_2_250 (.a(PP_22_27), .b(PP_24_25), .cin(PP_26_23), .s(S_FA_2_250), .cout(C_FA_2_250));
	wire S_FA_2_251, C_FA_2_251;
	fa FA_2_251 (.a(PP_28_21), .b(PP_30_19), .cin(PP_32_17), .s(S_FA_2_251), .cout(C_FA_2_251));
	wire S_FA_2_252, C_FA_2_252;
	fa FA_2_252 (.a(C_FA_1_143), .b(C_HA_1_24), .cin(S_FA_1_144), .s(S_FA_2_252), .cout(C_FA_2_252));
	wire S_FA_2_253, C_FA_2_253;
	fa FA_2_253 (.a(PP_22_28), .b(PP_24_26), .cin(PP_26_24), .s(S_FA_2_253), .cout(C_FA_2_253));
	wire S_FA_2_254, C_FA_2_254;
	fa FA_2_254 (.a(PP_28_22), .b(PP_30_20), .cin(PP_32_18), .s(S_FA_2_254), .cout(C_FA_2_254));
	wire S_FA_2_255, C_FA_2_255;
	fa FA_2_255 (.a(Corr_16_34), .b(C_FA_1_144), .cin(S_HA_1_25), .s(S_FA_2_255), .cout(C_FA_2_255));
	wire S_FA_2_256, C_FA_2_256;
	fa FA_2_256 (.a(PP_18_33), .b(PP_20_31), .cin(PP_22_29), .s(S_FA_2_256), .cout(C_FA_2_256));
	wire S_FA_2_257, C_FA_2_257;
	fa FA_2_257 (.a(PP_24_27), .b(PP_26_25), .cin(PP_28_23), .s(S_FA_2_257), .cout(C_FA_2_257));
	wire S_FA_2_258, C_FA_2_258;
	fa FA_2_258 (.a(PP_30_21), .b(PP_32_19), .cin(C_HA_1_25), .s(S_FA_2_258), .cout(C_FA_2_258));
	wire S_FA_2_259, C_FA_2_259;
	fa FA_2_259 (.a(PP_20_32), .b(PP_22_30), .cin(PP_24_28), .s(S_FA_2_259), .cout(C_FA_2_259));
	wire S_FA_2_260, C_FA_2_260;
	fa FA_2_260 (.a(PP_26_26), .b(PP_28_24), .cin(PP_30_22), .s(S_FA_2_260), .cout(C_FA_2_260));
	wire S_HA_2_32, C_HA_2_32;
	ha HA_2_32 (.a(PP_32_20), .b(Corr_18_34), .s(S_HA_2_32), .c(C_HA_2_32));
	wire S_FA_2_261, C_FA_2_261;
	fa FA_2_261 (.a(PP_20_33), .b(PP_22_31), .cin(PP_24_29), .s(S_FA_2_261), .cout(C_FA_2_261));
	wire S_FA_2_262, C_FA_2_262;
	fa FA_2_262 (.a(PP_26_27), .b(PP_28_25), .cin(PP_30_23), .s(S_FA_2_262), .cout(C_FA_2_262));
	wire S_FA_2_263, C_FA_2_263;
	fa FA_2_263 (.a(PP_22_32), .b(PP_24_30), .cin(PP_26_28), .s(S_FA_2_263), .cout(C_FA_2_263));
	wire S_HA_2_33, C_HA_2_33;
	ha HA_2_33 (.a(PP_28_26), .b(PP_30_24), .s(S_HA_2_33), .c(C_HA_2_33));
	wire S_FA_2_264, C_FA_2_264;
	fa FA_2_264 (.a(PP_22_33), .b(PP_24_31), .cin(PP_26_29), .s(S_FA_2_264), .cout(C_FA_2_264));
	wire S_HA_2_34, C_HA_2_34;
	ha HA_2_34 (.a(PP_24_32), .b(PP_26_30), .s(S_HA_2_34), .c(C_HA_2_34));

	// --- Dadda Stage 4: Target Height = 4 ---
	wire S_HA_3_35, C_HA_3_35;
	ha HA_3_35 (.a(PP_0_6), .b(PP_2_4), .s(S_HA_3_35), .c(C_HA_3_35));
	wire S_HA_3_36, C_HA_3_36;
	ha HA_3_36 (.a(PP_0_7), .b(PP_2_5), .s(S_HA_3_36), .c(C_HA_3_36));
	wire S_FA_3_265, C_FA_3_265;
	fa FA_3_265 (.a(PP_0_8), .b(PP_2_6), .cin(PP_4_4), .s(S_FA_3_265), .cout(C_FA_3_265));
	wire S_HA_3_37, C_HA_3_37;
	ha HA_3_37 (.a(PP_6_2), .b(PP_8_0), .s(S_HA_3_37), .c(C_HA_3_37));
	wire S_FA_3_266, C_FA_3_266;
	fa FA_3_266 (.a(PP_0_9), .b(PP_2_7), .cin(PP_4_5), .s(S_FA_3_266), .cout(C_FA_3_266));
	wire S_HA_3_38, C_HA_3_38;
	ha HA_3_38 (.a(PP_6_3), .b(PP_8_1), .s(S_HA_3_38), .c(C_HA_3_38));
	wire S_FA_3_267, C_FA_3_267;
	fa FA_3_267 (.a(PP_4_6), .b(PP_6_4), .cin(PP_8_2), .s(S_FA_3_267), .cout(C_FA_3_267));
	wire S_FA_3_268, C_FA_3_268;
	fa FA_3_268 (.a(PP_10_0), .b(NegCin_10_0), .cin(S_HA_2_26), .s(S_FA_3_268), .cout(C_FA_3_268));
	wire S_FA_3_269, C_FA_3_269;
	fa FA_3_269 (.a(PP_4_7), .b(PP_6_5), .cin(PP_8_3), .s(S_FA_3_269), .cout(C_FA_3_269));
	wire S_FA_3_270, C_FA_3_270;
	fa FA_3_270 (.a(PP_10_1), .b(C_HA_2_26), .cin(S_HA_2_27), .s(S_FA_3_270), .cout(C_FA_3_270));
	wire S_FA_3_271, C_FA_3_271;
	fa FA_3_271 (.a(PP_10_2), .b(PP_12_0), .cin(NegCin_12_0), .s(S_FA_3_271), .cout(C_FA_3_271));
	wire S_FA_3_272, C_FA_3_272;
	fa FA_3_272 (.a(C_HA_2_27), .b(S_FA_2_145), .cin(S_HA_2_28), .s(S_FA_3_272), .cout(C_FA_3_272));
	wire S_FA_3_273, C_FA_3_273;
	fa FA_3_273 (.a(PP_10_3), .b(PP_12_1), .cin(C_FA_2_145), .s(S_FA_3_273), .cout(C_FA_3_273));
	wire S_FA_3_274, C_FA_3_274;
	fa FA_3_274 (.a(C_HA_2_28), .b(S_FA_2_146), .cin(S_HA_2_29), .s(S_FA_3_274), .cout(C_FA_3_274));
	wire S_FA_3_275, C_FA_3_275;
	fa FA_3_275 (.a(NegCin_14_0), .b(C_FA_2_146), .cin(C_HA_2_29), .s(S_FA_3_275), .cout(C_FA_3_275));
	wire S_FA_3_276, C_FA_3_276;
	fa FA_3_276 (.a(S_FA_2_147), .b(S_FA_2_148), .cin(S_HA_2_30), .s(S_FA_3_276), .cout(C_FA_3_276));
	wire S_FA_3_277, C_FA_3_277;
	fa FA_3_277 (.a(C_FA_2_147), .b(C_FA_2_148), .cin(C_HA_2_30), .s(S_FA_3_277), .cout(C_FA_3_277));
	wire S_FA_3_278, C_FA_3_278;
	fa FA_3_278 (.a(S_FA_2_149), .b(S_FA_2_150), .cin(S_HA_2_31), .s(S_FA_3_278), .cout(C_FA_3_278));
	wire S_FA_3_279, C_FA_3_279;
	fa FA_3_279 (.a(C_FA_2_149), .b(C_FA_2_150), .cin(C_HA_2_31), .s(S_FA_3_279), .cout(C_FA_3_279));
	wire S_FA_3_280, C_FA_3_280;
	fa FA_3_280 (.a(S_FA_2_151), .b(S_FA_2_152), .cin(S_FA_2_153), .s(S_FA_3_280), .cout(C_FA_3_280));
	wire S_FA_3_281, C_FA_3_281;
	fa FA_3_281 (.a(C_FA_2_151), .b(C_FA_2_152), .cin(C_FA_2_153), .s(S_FA_3_281), .cout(C_FA_3_281));
	wire S_FA_3_282, C_FA_3_282;
	fa FA_3_282 (.a(S_FA_2_154), .b(S_FA_2_155), .cin(S_FA_2_156), .s(S_FA_3_282), .cout(C_FA_3_282));
	wire S_FA_3_283, C_FA_3_283;
	fa FA_3_283 (.a(C_FA_2_154), .b(C_FA_2_155), .cin(C_FA_2_156), .s(S_FA_3_283), .cout(C_FA_3_283));
	wire S_FA_3_284, C_FA_3_284;
	fa FA_3_284 (.a(S_FA_2_157), .b(S_FA_2_158), .cin(S_FA_2_159), .s(S_FA_3_284), .cout(C_FA_3_284));
	wire S_FA_3_285, C_FA_3_285;
	fa FA_3_285 (.a(C_FA_2_157), .b(C_FA_2_158), .cin(C_FA_2_159), .s(S_FA_3_285), .cout(C_FA_3_285));
	wire S_FA_3_286, C_FA_3_286;
	fa FA_3_286 (.a(S_FA_2_160), .b(S_FA_2_161), .cin(S_FA_2_162), .s(S_FA_3_286), .cout(C_FA_3_286));
	wire S_FA_3_287, C_FA_3_287;
	fa FA_3_287 (.a(C_FA_2_160), .b(C_FA_2_161), .cin(C_FA_2_162), .s(S_FA_3_287), .cout(C_FA_3_287));
	wire S_FA_3_288, C_FA_3_288;
	fa FA_3_288 (.a(S_FA_2_163), .b(S_FA_2_164), .cin(S_FA_2_165), .s(S_FA_3_288), .cout(C_FA_3_288));
	wire S_FA_3_289, C_FA_3_289;
	fa FA_3_289 (.a(C_FA_2_163), .b(C_FA_2_164), .cin(C_FA_2_165), .s(S_FA_3_289), .cout(C_FA_3_289));
	wire S_FA_3_290, C_FA_3_290;
	fa FA_3_290 (.a(S_FA_2_166), .b(S_FA_2_167), .cin(S_FA_2_168), .s(S_FA_3_290), .cout(C_FA_3_290));
	wire S_FA_3_291, C_FA_3_291;
	fa FA_3_291 (.a(C_FA_2_166), .b(C_FA_2_167), .cin(C_FA_2_168), .s(S_FA_3_291), .cout(C_FA_3_291));
	wire S_FA_3_292, C_FA_3_292;
	fa FA_3_292 (.a(S_FA_2_169), .b(S_FA_2_170), .cin(S_FA_2_171), .s(S_FA_3_292), .cout(C_FA_3_292));
	wire S_FA_3_293, C_FA_3_293;
	fa FA_3_293 (.a(C_FA_2_169), .b(C_FA_2_170), .cin(C_FA_2_171), .s(S_FA_3_293), .cout(C_FA_3_293));
	wire S_FA_3_294, C_FA_3_294;
	fa FA_3_294 (.a(S_FA_2_172), .b(S_FA_2_173), .cin(S_FA_2_174), .s(S_FA_3_294), .cout(C_FA_3_294));
	wire S_FA_3_295, C_FA_3_295;
	fa FA_3_295 (.a(C_FA_2_172), .b(C_FA_2_173), .cin(C_FA_2_174), .s(S_FA_3_295), .cout(C_FA_3_295));
	wire S_FA_3_296, C_FA_3_296;
	fa FA_3_296 (.a(S_FA_2_175), .b(S_FA_2_176), .cin(S_FA_2_177), .s(S_FA_3_296), .cout(C_FA_3_296));
	wire S_FA_3_297, C_FA_3_297;
	fa FA_3_297 (.a(C_FA_2_175), .b(C_FA_2_176), .cin(C_FA_2_177), .s(S_FA_3_297), .cout(C_FA_3_297));
	wire S_FA_3_298, C_FA_3_298;
	fa FA_3_298 (.a(S_FA_2_178), .b(S_FA_2_179), .cin(S_FA_2_180), .s(S_FA_3_298), .cout(C_FA_3_298));
	wire S_FA_3_299, C_FA_3_299;
	fa FA_3_299 (.a(C_FA_2_178), .b(C_FA_2_179), .cin(C_FA_2_180), .s(S_FA_3_299), .cout(C_FA_3_299));
	wire S_FA_3_300, C_FA_3_300;
	fa FA_3_300 (.a(S_FA_2_181), .b(S_FA_2_182), .cin(S_FA_2_183), .s(S_FA_3_300), .cout(C_FA_3_300));
	wire S_FA_3_301, C_FA_3_301;
	fa FA_3_301 (.a(C_FA_2_181), .b(C_FA_2_182), .cin(C_FA_2_183), .s(S_FA_3_301), .cout(C_FA_3_301));
	wire S_FA_3_302, C_FA_3_302;
	fa FA_3_302 (.a(S_FA_2_184), .b(S_FA_2_185), .cin(S_FA_2_186), .s(S_FA_3_302), .cout(C_FA_3_302));
	wire S_FA_3_303, C_FA_3_303;
	fa FA_3_303 (.a(C_FA_2_184), .b(C_FA_2_185), .cin(C_FA_2_186), .s(S_FA_3_303), .cout(C_FA_3_303));
	wire S_FA_3_304, C_FA_3_304;
	fa FA_3_304 (.a(S_FA_2_187), .b(S_FA_2_188), .cin(S_FA_2_189), .s(S_FA_3_304), .cout(C_FA_3_304));
	wire S_FA_3_305, C_FA_3_305;
	fa FA_3_305 (.a(C_FA_2_187), .b(C_FA_2_188), .cin(C_FA_2_189), .s(S_FA_3_305), .cout(C_FA_3_305));
	wire S_FA_3_306, C_FA_3_306;
	fa FA_3_306 (.a(S_FA_2_190), .b(S_FA_2_191), .cin(S_FA_2_192), .s(S_FA_3_306), .cout(C_FA_3_306));
	wire S_FA_3_307, C_FA_3_307;
	fa FA_3_307 (.a(C_FA_2_190), .b(C_FA_2_191), .cin(C_FA_2_192), .s(S_FA_3_307), .cout(C_FA_3_307));
	wire S_FA_3_308, C_FA_3_308;
	fa FA_3_308 (.a(S_FA_2_193), .b(S_FA_2_194), .cin(S_FA_2_195), .s(S_FA_3_308), .cout(C_FA_3_308));
	wire S_FA_3_309, C_FA_3_309;
	fa FA_3_309 (.a(C_FA_2_193), .b(C_FA_2_194), .cin(C_FA_2_195), .s(S_FA_3_309), .cout(C_FA_3_309));
	wire S_FA_3_310, C_FA_3_310;
	fa FA_3_310 (.a(S_FA_2_196), .b(S_FA_2_197), .cin(S_FA_2_198), .s(S_FA_3_310), .cout(C_FA_3_310));
	wire S_FA_3_311, C_FA_3_311;
	fa FA_3_311 (.a(C_FA_2_196), .b(C_FA_2_197), .cin(C_FA_2_198), .s(S_FA_3_311), .cout(C_FA_3_311));
	wire S_FA_3_312, C_FA_3_312;
	fa FA_3_312 (.a(S_FA_2_199), .b(S_FA_2_200), .cin(S_FA_2_201), .s(S_FA_3_312), .cout(C_FA_3_312));
	wire S_FA_3_313, C_FA_3_313;
	fa FA_3_313 (.a(C_FA_2_199), .b(C_FA_2_200), .cin(C_FA_2_201), .s(S_FA_3_313), .cout(C_FA_3_313));
	wire S_FA_3_314, C_FA_3_314;
	fa FA_3_314 (.a(S_FA_2_202), .b(S_FA_2_203), .cin(S_FA_2_204), .s(S_FA_3_314), .cout(C_FA_3_314));
	wire S_FA_3_315, C_FA_3_315;
	fa FA_3_315 (.a(C_FA_2_202), .b(C_FA_2_203), .cin(C_FA_2_204), .s(S_FA_3_315), .cout(C_FA_3_315));
	wire S_FA_3_316, C_FA_3_316;
	fa FA_3_316 (.a(S_FA_2_205), .b(S_FA_2_206), .cin(S_FA_2_207), .s(S_FA_3_316), .cout(C_FA_3_316));
	wire S_FA_3_317, C_FA_3_317;
	fa FA_3_317 (.a(C_FA_2_205), .b(C_FA_2_206), .cin(C_FA_2_207), .s(S_FA_3_317), .cout(C_FA_3_317));
	wire S_FA_3_318, C_FA_3_318;
	fa FA_3_318 (.a(S_FA_2_208), .b(S_FA_2_209), .cin(S_FA_2_210), .s(S_FA_3_318), .cout(C_FA_3_318));
	wire S_FA_3_319, C_FA_3_319;
	fa FA_3_319 (.a(C_FA_2_208), .b(C_FA_2_209), .cin(C_FA_2_210), .s(S_FA_3_319), .cout(C_FA_3_319));
	wire S_FA_3_320, C_FA_3_320;
	fa FA_3_320 (.a(S_FA_2_211), .b(S_FA_2_212), .cin(S_FA_2_213), .s(S_FA_3_320), .cout(C_FA_3_320));
	wire S_FA_3_321, C_FA_3_321;
	fa FA_3_321 (.a(C_FA_2_211), .b(C_FA_2_212), .cin(C_FA_2_213), .s(S_FA_3_321), .cout(C_FA_3_321));
	wire S_FA_3_322, C_FA_3_322;
	fa FA_3_322 (.a(S_FA_2_214), .b(S_FA_2_215), .cin(S_FA_2_216), .s(S_FA_3_322), .cout(C_FA_3_322));
	wire S_FA_3_323, C_FA_3_323;
	fa FA_3_323 (.a(C_FA_2_214), .b(C_FA_2_215), .cin(C_FA_2_216), .s(S_FA_3_323), .cout(C_FA_3_323));
	wire S_FA_3_324, C_FA_3_324;
	fa FA_3_324 (.a(S_FA_2_217), .b(S_FA_2_218), .cin(S_FA_2_219), .s(S_FA_3_324), .cout(C_FA_3_324));
	wire S_FA_3_325, C_FA_3_325;
	fa FA_3_325 (.a(C_FA_2_217), .b(C_FA_2_218), .cin(C_FA_2_219), .s(S_FA_3_325), .cout(C_FA_3_325));
	wire S_FA_3_326, C_FA_3_326;
	fa FA_3_326 (.a(S_FA_2_220), .b(S_FA_2_221), .cin(S_FA_2_222), .s(S_FA_3_326), .cout(C_FA_3_326));
	wire S_FA_3_327, C_FA_3_327;
	fa FA_3_327 (.a(C_FA_2_220), .b(C_FA_2_221), .cin(C_FA_2_222), .s(S_FA_3_327), .cout(C_FA_3_327));
	wire S_FA_3_328, C_FA_3_328;
	fa FA_3_328 (.a(S_FA_2_223), .b(S_FA_2_224), .cin(S_FA_2_225), .s(S_FA_3_328), .cout(C_FA_3_328));
	wire S_FA_3_329, C_FA_3_329;
	fa FA_3_329 (.a(C_FA_2_223), .b(C_FA_2_224), .cin(C_FA_2_225), .s(S_FA_3_329), .cout(C_FA_3_329));
	wire S_FA_3_330, C_FA_3_330;
	fa FA_3_330 (.a(S_FA_2_226), .b(S_FA_2_227), .cin(S_FA_2_228), .s(S_FA_3_330), .cout(C_FA_3_330));
	wire S_FA_3_331, C_FA_3_331;
	fa FA_3_331 (.a(C_FA_2_226), .b(C_FA_2_227), .cin(C_FA_2_228), .s(S_FA_3_331), .cout(C_FA_3_331));
	wire S_FA_3_332, C_FA_3_332;
	fa FA_3_332 (.a(S_FA_2_229), .b(S_FA_2_230), .cin(S_FA_2_231), .s(S_FA_3_332), .cout(C_FA_3_332));
	wire S_FA_3_333, C_FA_3_333;
	fa FA_3_333 (.a(C_FA_2_229), .b(C_FA_2_230), .cin(C_FA_2_231), .s(S_FA_3_333), .cout(C_FA_3_333));
	wire S_FA_3_334, C_FA_3_334;
	fa FA_3_334 (.a(S_FA_2_232), .b(S_FA_2_233), .cin(S_FA_2_234), .s(S_FA_3_334), .cout(C_FA_3_334));
	wire S_FA_3_335, C_FA_3_335;
	fa FA_3_335 (.a(C_FA_2_232), .b(C_FA_2_233), .cin(C_FA_2_234), .s(S_FA_3_335), .cout(C_FA_3_335));
	wire S_FA_3_336, C_FA_3_336;
	fa FA_3_336 (.a(S_FA_2_235), .b(S_FA_2_236), .cin(S_FA_2_237), .s(S_FA_3_336), .cout(C_FA_3_336));
	wire S_FA_3_337, C_FA_3_337;
	fa FA_3_337 (.a(C_FA_2_235), .b(C_FA_2_236), .cin(C_FA_2_237), .s(S_FA_3_337), .cout(C_FA_3_337));
	wire S_FA_3_338, C_FA_3_338;
	fa FA_3_338 (.a(S_FA_2_238), .b(S_FA_2_239), .cin(S_FA_2_240), .s(S_FA_3_338), .cout(C_FA_3_338));
	wire S_FA_3_339, C_FA_3_339;
	fa FA_3_339 (.a(C_FA_2_238), .b(C_FA_2_239), .cin(C_FA_2_240), .s(S_FA_3_339), .cout(C_FA_3_339));
	wire S_FA_3_340, C_FA_3_340;
	fa FA_3_340 (.a(S_FA_2_241), .b(S_FA_2_242), .cin(S_FA_2_243), .s(S_FA_3_340), .cout(C_FA_3_340));
	wire S_FA_3_341, C_FA_3_341;
	fa FA_3_341 (.a(C_FA_2_241), .b(C_FA_2_242), .cin(C_FA_2_243), .s(S_FA_3_341), .cout(C_FA_3_341));
	wire S_FA_3_342, C_FA_3_342;
	fa FA_3_342 (.a(S_FA_2_244), .b(S_FA_2_245), .cin(S_FA_2_246), .s(S_FA_3_342), .cout(C_FA_3_342));
	wire S_FA_3_343, C_FA_3_343;
	fa FA_3_343 (.a(C_FA_2_244), .b(C_FA_2_245), .cin(C_FA_2_246), .s(S_FA_3_343), .cout(C_FA_3_343));
	wire S_FA_3_344, C_FA_3_344;
	fa FA_3_344 (.a(S_FA_2_247), .b(S_FA_2_248), .cin(S_FA_2_249), .s(S_FA_3_344), .cout(C_FA_3_344));
	wire S_FA_3_345, C_FA_3_345;
	fa FA_3_345 (.a(C_FA_2_247), .b(C_FA_2_248), .cin(C_FA_2_249), .s(S_FA_3_345), .cout(C_FA_3_345));
	wire S_FA_3_346, C_FA_3_346;
	fa FA_3_346 (.a(S_FA_2_250), .b(S_FA_2_251), .cin(S_FA_2_252), .s(S_FA_3_346), .cout(C_FA_3_346));
	wire S_FA_3_347, C_FA_3_347;
	fa FA_3_347 (.a(C_FA_2_250), .b(C_FA_2_251), .cin(C_FA_2_252), .s(S_FA_3_347), .cout(C_FA_3_347));
	wire S_FA_3_348, C_FA_3_348;
	fa FA_3_348 (.a(S_FA_2_253), .b(S_FA_2_254), .cin(S_FA_2_255), .s(S_FA_3_348), .cout(C_FA_3_348));
	wire S_FA_3_349, C_FA_3_349;
	fa FA_3_349 (.a(C_FA_2_253), .b(C_FA_2_254), .cin(C_FA_2_255), .s(S_FA_3_349), .cout(C_FA_3_349));
	wire S_FA_3_350, C_FA_3_350;
	fa FA_3_350 (.a(S_FA_2_256), .b(S_FA_2_257), .cin(S_FA_2_258), .s(S_FA_3_350), .cout(C_FA_3_350));
	wire S_FA_3_351, C_FA_3_351;
	fa FA_3_351 (.a(C_FA_2_256), .b(C_FA_2_257), .cin(C_FA_2_258), .s(S_FA_3_351), .cout(C_FA_3_351));
	wire S_FA_3_352, C_FA_3_352;
	fa FA_3_352 (.a(S_FA_2_259), .b(S_FA_2_260), .cin(S_HA_2_32), .s(S_FA_3_352), .cout(C_FA_3_352));
	wire S_FA_3_353, C_FA_3_353;
	fa FA_3_353 (.a(PP_32_21), .b(C_FA_2_259), .cin(C_FA_2_260), .s(S_FA_3_353), .cout(C_FA_3_353));
	wire S_FA_3_354, C_FA_3_354;
	fa FA_3_354 (.a(C_HA_2_32), .b(S_FA_2_261), .cin(S_FA_2_262), .s(S_FA_3_354), .cout(C_FA_3_354));
	wire S_FA_3_355, C_FA_3_355;
	fa FA_3_355 (.a(PP_32_22), .b(Corr_20_34), .cin(C_FA_2_261), .s(S_FA_3_355), .cout(C_FA_3_355));
	wire S_FA_3_356, C_FA_3_356;
	fa FA_3_356 (.a(C_FA_2_262), .b(S_FA_2_263), .cin(S_HA_2_33), .s(S_FA_3_356), .cout(C_FA_3_356));
	wire S_FA_3_357, C_FA_3_357;
	fa FA_3_357 (.a(PP_28_27), .b(PP_30_25), .cin(PP_32_23), .s(S_FA_3_357), .cout(C_FA_3_357));
	wire S_FA_3_358, C_FA_3_358;
	fa FA_3_358 (.a(C_FA_2_263), .b(C_HA_2_33), .cin(S_FA_2_264), .s(S_FA_3_358), .cout(C_FA_3_358));
	wire S_FA_3_359, C_FA_3_359;
	fa FA_3_359 (.a(PP_28_28), .b(PP_30_26), .cin(PP_32_24), .s(S_FA_3_359), .cout(C_FA_3_359));
	wire S_FA_3_360, C_FA_3_360;
	fa FA_3_360 (.a(Corr_22_34), .b(C_FA_2_264), .cin(S_HA_2_34), .s(S_FA_3_360), .cout(C_FA_3_360));
	wire S_FA_3_361, C_FA_3_361;
	fa FA_3_361 (.a(PP_24_33), .b(PP_26_31), .cin(PP_28_29), .s(S_FA_3_361), .cout(C_FA_3_361));
	wire S_FA_3_362, C_FA_3_362;
	fa FA_3_362 (.a(PP_30_27), .b(PP_32_25), .cin(C_HA_2_34), .s(S_FA_3_362), .cout(C_FA_3_362));
	wire S_FA_3_363, C_FA_3_363;
	fa FA_3_363 (.a(PP_26_32), .b(PP_28_30), .cin(PP_30_28), .s(S_FA_3_363), .cout(C_FA_3_363));
	wire S_HA_3_39, C_HA_3_39;
	ha HA_3_39 (.a(PP_32_26), .b(Corr_24_34), .s(S_HA_3_39), .c(C_HA_3_39));
	wire S_FA_3_364, C_FA_3_364;
	fa FA_3_364 (.a(PP_26_33), .b(PP_28_31), .cin(PP_30_29), .s(S_FA_3_364), .cout(C_FA_3_364));
	wire S_HA_3_40, C_HA_3_40;
	ha HA_3_40 (.a(PP_28_32), .b(PP_30_30), .s(S_HA_3_40), .c(C_HA_3_40));

	// --- Dadda Stage 5: Target Height = 3 ---
	wire S_HA_4_41, C_HA_4_41;
	ha HA_4_41 (.a(PP_0_4), .b(PP_2_2), .s(S_HA_4_41), .c(C_HA_4_41));
	wire S_HA_4_42, C_HA_4_42;
	ha HA_4_42 (.a(PP_0_5), .b(PP_2_3), .s(S_HA_4_42), .c(C_HA_4_42));
	wire S_FA_4_365, C_FA_4_365;
	fa FA_4_365 (.a(PP_4_2), .b(PP_6_0), .cin(NegCin_6_0), .s(S_FA_4_365), .cout(C_FA_4_365));
	wire S_FA_4_366, C_FA_4_366;
	fa FA_4_366 (.a(PP_4_3), .b(PP_6_1), .cin(C_HA_3_35), .s(S_FA_4_366), .cout(C_FA_4_366));
	wire S_FA_4_367, C_FA_4_367;
	fa FA_4_367 (.a(NegCin_8_0), .b(C_HA_3_36), .cin(S_FA_3_265), .s(S_FA_4_367), .cout(C_FA_4_367));
	wire S_FA_4_368, C_FA_4_368;
	fa FA_4_368 (.a(C_FA_3_265), .b(C_HA_3_37), .cin(S_FA_3_266), .s(S_FA_4_368), .cout(C_FA_4_368));
	wire S_FA_4_369, C_FA_4_369;
	fa FA_4_369 (.a(C_FA_3_266), .b(C_HA_3_38), .cin(S_FA_3_267), .s(S_FA_4_369), .cout(C_FA_4_369));
	wire S_FA_4_370, C_FA_4_370;
	fa FA_4_370 (.a(C_FA_3_267), .b(C_FA_3_268), .cin(S_FA_3_269), .s(S_FA_4_370), .cout(C_FA_4_370));
	wire S_FA_4_371, C_FA_4_371;
	fa FA_4_371 (.a(C_FA_3_269), .b(C_FA_3_270), .cin(S_FA_3_271), .s(S_FA_4_371), .cout(C_FA_4_371));
	wire S_FA_4_372, C_FA_4_372;
	fa FA_4_372 (.a(C_FA_3_271), .b(C_FA_3_272), .cin(S_FA_3_273), .s(S_FA_4_372), .cout(C_FA_4_372));
	wire S_FA_4_373, C_FA_4_373;
	fa FA_4_373 (.a(C_FA_3_273), .b(C_FA_3_274), .cin(S_FA_3_275), .s(S_FA_4_373), .cout(C_FA_4_373));
	wire S_FA_4_374, C_FA_4_374;
	fa FA_4_374 (.a(C_FA_3_275), .b(C_FA_3_276), .cin(S_FA_3_277), .s(S_FA_4_374), .cout(C_FA_4_374));
	wire S_FA_4_375, C_FA_4_375;
	fa FA_4_375 (.a(C_FA_3_277), .b(C_FA_3_278), .cin(S_FA_3_279), .s(S_FA_4_375), .cout(C_FA_4_375));
	wire S_FA_4_376, C_FA_4_376;
	fa FA_4_376 (.a(C_FA_3_279), .b(C_FA_3_280), .cin(S_FA_3_281), .s(S_FA_4_376), .cout(C_FA_4_376));
	wire S_FA_4_377, C_FA_4_377;
	fa FA_4_377 (.a(C_FA_3_281), .b(C_FA_3_282), .cin(S_FA_3_283), .s(S_FA_4_377), .cout(C_FA_4_377));
	wire S_FA_4_378, C_FA_4_378;
	fa FA_4_378 (.a(C_FA_3_283), .b(C_FA_3_284), .cin(S_FA_3_285), .s(S_FA_4_378), .cout(C_FA_4_378));
	wire S_FA_4_379, C_FA_4_379;
	fa FA_4_379 (.a(C_FA_3_285), .b(C_FA_3_286), .cin(S_FA_3_287), .s(S_FA_4_379), .cout(C_FA_4_379));
	wire S_FA_4_380, C_FA_4_380;
	fa FA_4_380 (.a(C_FA_3_287), .b(C_FA_3_288), .cin(S_FA_3_289), .s(S_FA_4_380), .cout(C_FA_4_380));
	wire S_FA_4_381, C_FA_4_381;
	fa FA_4_381 (.a(C_FA_3_289), .b(C_FA_3_290), .cin(S_FA_3_291), .s(S_FA_4_381), .cout(C_FA_4_381));
	wire S_FA_4_382, C_FA_4_382;
	fa FA_4_382 (.a(C_FA_3_291), .b(C_FA_3_292), .cin(S_FA_3_293), .s(S_FA_4_382), .cout(C_FA_4_382));
	wire S_FA_4_383, C_FA_4_383;
	fa FA_4_383 (.a(C_FA_3_293), .b(C_FA_3_294), .cin(S_FA_3_295), .s(S_FA_4_383), .cout(C_FA_4_383));
	wire S_FA_4_384, C_FA_4_384;
	fa FA_4_384 (.a(C_FA_3_295), .b(C_FA_3_296), .cin(S_FA_3_297), .s(S_FA_4_384), .cout(C_FA_4_384));
	wire S_FA_4_385, C_FA_4_385;
	fa FA_4_385 (.a(C_FA_3_297), .b(C_FA_3_298), .cin(S_FA_3_299), .s(S_FA_4_385), .cout(C_FA_4_385));
	wire S_FA_4_386, C_FA_4_386;
	fa FA_4_386 (.a(C_FA_3_299), .b(C_FA_3_300), .cin(S_FA_3_301), .s(S_FA_4_386), .cout(C_FA_4_386));
	wire S_FA_4_387, C_FA_4_387;
	fa FA_4_387 (.a(C_FA_3_301), .b(C_FA_3_302), .cin(S_FA_3_303), .s(S_FA_4_387), .cout(C_FA_4_387));
	wire S_FA_4_388, C_FA_4_388;
	fa FA_4_388 (.a(C_FA_3_303), .b(C_FA_3_304), .cin(S_FA_3_305), .s(S_FA_4_388), .cout(C_FA_4_388));
	wire S_FA_4_389, C_FA_4_389;
	fa FA_4_389 (.a(C_FA_3_305), .b(C_FA_3_306), .cin(S_FA_3_307), .s(S_FA_4_389), .cout(C_FA_4_389));
	wire S_FA_4_390, C_FA_4_390;
	fa FA_4_390 (.a(C_FA_3_307), .b(C_FA_3_308), .cin(S_FA_3_309), .s(S_FA_4_390), .cout(C_FA_4_390));
	wire S_FA_4_391, C_FA_4_391;
	fa FA_4_391 (.a(C_FA_3_309), .b(C_FA_3_310), .cin(S_FA_3_311), .s(S_FA_4_391), .cout(C_FA_4_391));
	wire S_FA_4_392, C_FA_4_392;
	fa FA_4_392 (.a(C_FA_3_311), .b(C_FA_3_312), .cin(S_FA_3_313), .s(S_FA_4_392), .cout(C_FA_4_392));
	wire S_FA_4_393, C_FA_4_393;
	fa FA_4_393 (.a(C_FA_3_313), .b(C_FA_3_314), .cin(S_FA_3_315), .s(S_FA_4_393), .cout(C_FA_4_393));
	wire S_FA_4_394, C_FA_4_394;
	fa FA_4_394 (.a(C_FA_3_315), .b(C_FA_3_316), .cin(S_FA_3_317), .s(S_FA_4_394), .cout(C_FA_4_394));
	wire S_FA_4_395, C_FA_4_395;
	fa FA_4_395 (.a(C_FA_3_317), .b(C_FA_3_318), .cin(S_FA_3_319), .s(S_FA_4_395), .cout(C_FA_4_395));
	wire S_FA_4_396, C_FA_4_396;
	fa FA_4_396 (.a(C_FA_3_319), .b(C_FA_3_320), .cin(S_FA_3_321), .s(S_FA_4_396), .cout(C_FA_4_396));
	wire S_FA_4_397, C_FA_4_397;
	fa FA_4_397 (.a(C_FA_3_321), .b(C_FA_3_322), .cin(S_FA_3_323), .s(S_FA_4_397), .cout(C_FA_4_397));
	wire S_FA_4_398, C_FA_4_398;
	fa FA_4_398 (.a(C_FA_3_323), .b(C_FA_3_324), .cin(S_FA_3_325), .s(S_FA_4_398), .cout(C_FA_4_398));
	wire S_FA_4_399, C_FA_4_399;
	fa FA_4_399 (.a(C_FA_3_325), .b(C_FA_3_326), .cin(S_FA_3_327), .s(S_FA_4_399), .cout(C_FA_4_399));
	wire S_FA_4_400, C_FA_4_400;
	fa FA_4_400 (.a(C_FA_3_327), .b(C_FA_3_328), .cin(S_FA_3_329), .s(S_FA_4_400), .cout(C_FA_4_400));
	wire S_FA_4_401, C_FA_4_401;
	fa FA_4_401 (.a(C_FA_3_329), .b(C_FA_3_330), .cin(S_FA_3_331), .s(S_FA_4_401), .cout(C_FA_4_401));
	wire S_FA_4_402, C_FA_4_402;
	fa FA_4_402 (.a(C_FA_3_331), .b(C_FA_3_332), .cin(S_FA_3_333), .s(S_FA_4_402), .cout(C_FA_4_402));
	wire S_FA_4_403, C_FA_4_403;
	fa FA_4_403 (.a(C_FA_3_333), .b(C_FA_3_334), .cin(S_FA_3_335), .s(S_FA_4_403), .cout(C_FA_4_403));
	wire S_FA_4_404, C_FA_4_404;
	fa FA_4_404 (.a(C_FA_3_335), .b(C_FA_3_336), .cin(S_FA_3_337), .s(S_FA_4_404), .cout(C_FA_4_404));
	wire S_FA_4_405, C_FA_4_405;
	fa FA_4_405 (.a(C_FA_3_337), .b(C_FA_3_338), .cin(S_FA_3_339), .s(S_FA_4_405), .cout(C_FA_4_405));
	wire S_FA_4_406, C_FA_4_406;
	fa FA_4_406 (.a(C_FA_3_339), .b(C_FA_3_340), .cin(S_FA_3_341), .s(S_FA_4_406), .cout(C_FA_4_406));
	wire S_FA_4_407, C_FA_4_407;
	fa FA_4_407 (.a(C_FA_3_341), .b(C_FA_3_342), .cin(S_FA_3_343), .s(S_FA_4_407), .cout(C_FA_4_407));
	wire S_FA_4_408, C_FA_4_408;
	fa FA_4_408 (.a(C_FA_3_343), .b(C_FA_3_344), .cin(S_FA_3_345), .s(S_FA_4_408), .cout(C_FA_4_408));
	wire S_FA_4_409, C_FA_4_409;
	fa FA_4_409 (.a(C_FA_3_345), .b(C_FA_3_346), .cin(S_FA_3_347), .s(S_FA_4_409), .cout(C_FA_4_409));
	wire S_FA_4_410, C_FA_4_410;
	fa FA_4_410 (.a(C_FA_3_347), .b(C_FA_3_348), .cin(S_FA_3_349), .s(S_FA_4_410), .cout(C_FA_4_410));
	wire S_FA_4_411, C_FA_4_411;
	fa FA_4_411 (.a(C_FA_3_349), .b(C_FA_3_350), .cin(S_FA_3_351), .s(S_FA_4_411), .cout(C_FA_4_411));
	wire S_FA_4_412, C_FA_4_412;
	fa FA_4_412 (.a(C_FA_3_351), .b(C_FA_3_352), .cin(S_FA_3_353), .s(S_FA_4_412), .cout(C_FA_4_412));
	wire S_FA_4_413, C_FA_4_413;
	fa FA_4_413 (.a(C_FA_3_353), .b(C_FA_3_354), .cin(S_FA_3_355), .s(S_FA_4_413), .cout(C_FA_4_413));
	wire S_FA_4_414, C_FA_4_414;
	fa FA_4_414 (.a(C_FA_3_355), .b(C_FA_3_356), .cin(S_FA_3_357), .s(S_FA_4_414), .cout(C_FA_4_414));
	wire S_FA_4_415, C_FA_4_415;
	fa FA_4_415 (.a(C_FA_3_357), .b(C_FA_3_358), .cin(S_FA_3_359), .s(S_FA_4_415), .cout(C_FA_4_415));
	wire S_FA_4_416, C_FA_4_416;
	fa FA_4_416 (.a(C_FA_3_359), .b(C_FA_3_360), .cin(S_FA_3_361), .s(S_FA_4_416), .cout(C_FA_4_416));
	wire S_FA_4_417, C_FA_4_417;
	fa FA_4_417 (.a(C_FA_3_361), .b(C_FA_3_362), .cin(S_FA_3_363), .s(S_FA_4_417), .cout(C_FA_4_417));
	wire S_FA_4_418, C_FA_4_418;
	fa FA_4_418 (.a(PP_32_27), .b(C_FA_3_363), .cin(C_HA_3_39), .s(S_FA_4_418), .cout(C_FA_4_418));
	wire S_FA_4_419, C_FA_4_419;
	fa FA_4_419 (.a(PP_32_28), .b(Corr_26_34), .cin(C_FA_3_364), .s(S_FA_4_419), .cout(C_FA_4_419));
	wire S_FA_4_420, C_FA_4_420;
	fa FA_4_420 (.a(PP_28_33), .b(PP_30_31), .cin(PP_32_29), .s(S_FA_4_420), .cout(C_FA_4_420));
	wire S_HA_4_43, C_HA_4_43;
	ha HA_4_43 (.a(PP_30_32), .b(PP_32_30), .s(S_HA_4_43), .c(C_HA_4_43));

	// --- Dadda Stage 6: Target Height = 2 ---
	wire S_HA_5_44, C_HA_5_44;
	ha HA_5_44 (.a(PP_0_2), .b(PP_2_0), .s(S_HA_5_44), .c(C_HA_5_44));
	wire S_HA_5_45, C_HA_5_45;
	ha HA_5_45 (.a(PP_0_3), .b(PP_2_1), .s(S_HA_5_45), .c(C_HA_5_45));
	wire S_FA_5_421, C_FA_5_421;
	fa FA_5_421 (.a(PP_4_0), .b(NegCin_4_0), .cin(S_HA_4_41), .s(S_FA_5_421), .cout(C_FA_5_421));
	wire S_FA_5_422, C_FA_5_422;
	fa FA_5_422 (.a(PP_4_1), .b(C_HA_4_41), .cin(S_HA_4_42), .s(S_FA_5_422), .cout(C_FA_5_422));
	wire S_FA_5_423, C_FA_5_423;
	fa FA_5_423 (.a(S_HA_3_35), .b(C_HA_4_42), .cin(S_FA_4_365), .s(S_FA_5_423), .cout(C_FA_5_423));
	wire S_FA_5_424, C_FA_5_424;
	fa FA_5_424 (.a(S_HA_3_36), .b(C_FA_4_365), .cin(S_FA_4_366), .s(S_FA_5_424), .cout(C_FA_5_424));
	wire S_FA_5_425, C_FA_5_425;
	fa FA_5_425 (.a(S_HA_3_37), .b(C_FA_4_366), .cin(S_FA_4_367), .s(S_FA_5_425), .cout(C_FA_5_425));
	wire S_FA_5_426, C_FA_5_426;
	fa FA_5_426 (.a(S_HA_3_38), .b(C_FA_4_367), .cin(S_FA_4_368), .s(S_FA_5_426), .cout(C_FA_5_426));
	wire S_FA_5_427, C_FA_5_427;
	fa FA_5_427 (.a(S_FA_3_268), .b(C_FA_4_368), .cin(S_FA_4_369), .s(S_FA_5_427), .cout(C_FA_5_427));
	wire S_FA_5_428, C_FA_5_428;
	fa FA_5_428 (.a(S_FA_3_270), .b(C_FA_4_369), .cin(S_FA_4_370), .s(S_FA_5_428), .cout(C_FA_5_428));
	wire S_FA_5_429, C_FA_5_429;
	fa FA_5_429 (.a(S_FA_3_272), .b(C_FA_4_370), .cin(S_FA_4_371), .s(S_FA_5_429), .cout(C_FA_5_429));
	wire S_FA_5_430, C_FA_5_430;
	fa FA_5_430 (.a(S_FA_3_274), .b(C_FA_4_371), .cin(S_FA_4_372), .s(S_FA_5_430), .cout(C_FA_5_430));
	wire S_FA_5_431, C_FA_5_431;
	fa FA_5_431 (.a(S_FA_3_276), .b(C_FA_4_372), .cin(S_FA_4_373), .s(S_FA_5_431), .cout(C_FA_5_431));
	wire S_FA_5_432, C_FA_5_432;
	fa FA_5_432 (.a(S_FA_3_278), .b(C_FA_4_373), .cin(S_FA_4_374), .s(S_FA_5_432), .cout(C_FA_5_432));
	wire S_FA_5_433, C_FA_5_433;
	fa FA_5_433 (.a(S_FA_3_280), .b(C_FA_4_374), .cin(S_FA_4_375), .s(S_FA_5_433), .cout(C_FA_5_433));
	wire S_FA_5_434, C_FA_5_434;
	fa FA_5_434 (.a(S_FA_3_282), .b(C_FA_4_375), .cin(S_FA_4_376), .s(S_FA_5_434), .cout(C_FA_5_434));
	wire S_FA_5_435, C_FA_5_435;
	fa FA_5_435 (.a(S_FA_3_284), .b(C_FA_4_376), .cin(S_FA_4_377), .s(S_FA_5_435), .cout(C_FA_5_435));
	wire S_FA_5_436, C_FA_5_436;
	fa FA_5_436 (.a(S_FA_3_286), .b(C_FA_4_377), .cin(S_FA_4_378), .s(S_FA_5_436), .cout(C_FA_5_436));
	wire S_FA_5_437, C_FA_5_437;
	fa FA_5_437 (.a(S_FA_3_288), .b(C_FA_4_378), .cin(S_FA_4_379), .s(S_FA_5_437), .cout(C_FA_5_437));
	wire S_FA_5_438, C_FA_5_438;
	fa FA_5_438 (.a(S_FA_3_290), .b(C_FA_4_379), .cin(S_FA_4_380), .s(S_FA_5_438), .cout(C_FA_5_438));
	wire S_FA_5_439, C_FA_5_439;
	fa FA_5_439 (.a(S_FA_3_292), .b(C_FA_4_380), .cin(S_FA_4_381), .s(S_FA_5_439), .cout(C_FA_5_439));
	wire S_FA_5_440, C_FA_5_440;
	fa FA_5_440 (.a(S_FA_3_294), .b(C_FA_4_381), .cin(S_FA_4_382), .s(S_FA_5_440), .cout(C_FA_5_440));
	wire S_FA_5_441, C_FA_5_441;
	fa FA_5_441 (.a(S_FA_3_296), .b(C_FA_4_382), .cin(S_FA_4_383), .s(S_FA_5_441), .cout(C_FA_5_441));
	wire S_FA_5_442, C_FA_5_442;
	fa FA_5_442 (.a(S_FA_3_298), .b(C_FA_4_383), .cin(S_FA_4_384), .s(S_FA_5_442), .cout(C_FA_5_442));
	wire S_FA_5_443, C_FA_5_443;
	fa FA_5_443 (.a(S_FA_3_300), .b(C_FA_4_384), .cin(S_FA_4_385), .s(S_FA_5_443), .cout(C_FA_5_443));
	wire S_FA_5_444, C_FA_5_444;
	fa FA_5_444 (.a(S_FA_3_302), .b(C_FA_4_385), .cin(S_FA_4_386), .s(S_FA_5_444), .cout(C_FA_5_444));
	wire S_FA_5_445, C_FA_5_445;
	fa FA_5_445 (.a(S_FA_3_304), .b(C_FA_4_386), .cin(S_FA_4_387), .s(S_FA_5_445), .cout(C_FA_5_445));
	wire S_FA_5_446, C_FA_5_446;
	fa FA_5_446 (.a(S_FA_3_306), .b(C_FA_4_387), .cin(S_FA_4_388), .s(S_FA_5_446), .cout(C_FA_5_446));
	wire S_FA_5_447, C_FA_5_447;
	fa FA_5_447 (.a(S_FA_3_308), .b(C_FA_4_388), .cin(S_FA_4_389), .s(S_FA_5_447), .cout(C_FA_5_447));
	wire S_FA_5_448, C_FA_5_448;
	fa FA_5_448 (.a(S_FA_3_310), .b(C_FA_4_389), .cin(S_FA_4_390), .s(S_FA_5_448), .cout(C_FA_5_448));
	wire S_FA_5_449, C_FA_5_449;
	fa FA_5_449 (.a(S_FA_3_312), .b(C_FA_4_390), .cin(S_FA_4_391), .s(S_FA_5_449), .cout(C_FA_5_449));
	wire S_FA_5_450, C_FA_5_450;
	fa FA_5_450 (.a(S_FA_3_314), .b(C_FA_4_391), .cin(S_FA_4_392), .s(S_FA_5_450), .cout(C_FA_5_450));
	wire S_FA_5_451, C_FA_5_451;
	fa FA_5_451 (.a(S_FA_3_316), .b(C_FA_4_392), .cin(S_FA_4_393), .s(S_FA_5_451), .cout(C_FA_5_451));
	wire S_FA_5_452, C_FA_5_452;
	fa FA_5_452 (.a(S_FA_3_318), .b(C_FA_4_393), .cin(S_FA_4_394), .s(S_FA_5_452), .cout(C_FA_5_452));
	wire S_FA_5_453, C_FA_5_453;
	fa FA_5_453 (.a(S_FA_3_320), .b(C_FA_4_394), .cin(S_FA_4_395), .s(S_FA_5_453), .cout(C_FA_5_453));
	wire S_FA_5_454, C_FA_5_454;
	fa FA_5_454 (.a(S_FA_3_322), .b(C_FA_4_395), .cin(S_FA_4_396), .s(S_FA_5_454), .cout(C_FA_5_454));
	wire S_FA_5_455, C_FA_5_455;
	fa FA_5_455 (.a(S_FA_3_324), .b(C_FA_4_396), .cin(S_FA_4_397), .s(S_FA_5_455), .cout(C_FA_5_455));
	wire S_FA_5_456, C_FA_5_456;
	fa FA_5_456 (.a(S_FA_3_326), .b(C_FA_4_397), .cin(S_FA_4_398), .s(S_FA_5_456), .cout(C_FA_5_456));
	wire S_FA_5_457, C_FA_5_457;
	fa FA_5_457 (.a(S_FA_3_328), .b(C_FA_4_398), .cin(S_FA_4_399), .s(S_FA_5_457), .cout(C_FA_5_457));
	wire S_FA_5_458, C_FA_5_458;
	fa FA_5_458 (.a(S_FA_3_330), .b(C_FA_4_399), .cin(S_FA_4_400), .s(S_FA_5_458), .cout(C_FA_5_458));
	wire S_FA_5_459, C_FA_5_459;
	fa FA_5_459 (.a(S_FA_3_332), .b(C_FA_4_400), .cin(S_FA_4_401), .s(S_FA_5_459), .cout(C_FA_5_459));
	wire S_FA_5_460, C_FA_5_460;
	fa FA_5_460 (.a(S_FA_3_334), .b(C_FA_4_401), .cin(S_FA_4_402), .s(S_FA_5_460), .cout(C_FA_5_460));
	wire S_FA_5_461, C_FA_5_461;
	fa FA_5_461 (.a(S_FA_3_336), .b(C_FA_4_402), .cin(S_FA_4_403), .s(S_FA_5_461), .cout(C_FA_5_461));
	wire S_FA_5_462, C_FA_5_462;
	fa FA_5_462 (.a(S_FA_3_338), .b(C_FA_4_403), .cin(S_FA_4_404), .s(S_FA_5_462), .cout(C_FA_5_462));
	wire S_FA_5_463, C_FA_5_463;
	fa FA_5_463 (.a(S_FA_3_340), .b(C_FA_4_404), .cin(S_FA_4_405), .s(S_FA_5_463), .cout(C_FA_5_463));
	wire S_FA_5_464, C_FA_5_464;
	fa FA_5_464 (.a(S_FA_3_342), .b(C_FA_4_405), .cin(S_FA_4_406), .s(S_FA_5_464), .cout(C_FA_5_464));
	wire S_FA_5_465, C_FA_5_465;
	fa FA_5_465 (.a(S_FA_3_344), .b(C_FA_4_406), .cin(S_FA_4_407), .s(S_FA_5_465), .cout(C_FA_5_465));
	wire S_FA_5_466, C_FA_5_466;
	fa FA_5_466 (.a(S_FA_3_346), .b(C_FA_4_407), .cin(S_FA_4_408), .s(S_FA_5_466), .cout(C_FA_5_466));
	wire S_FA_5_467, C_FA_5_467;
	fa FA_5_467 (.a(S_FA_3_348), .b(C_FA_4_408), .cin(S_FA_4_409), .s(S_FA_5_467), .cout(C_FA_5_467));
	wire S_FA_5_468, C_FA_5_468;
	fa FA_5_468 (.a(S_FA_3_350), .b(C_FA_4_409), .cin(S_FA_4_410), .s(S_FA_5_468), .cout(C_FA_5_468));
	wire S_FA_5_469, C_FA_5_469;
	fa FA_5_469 (.a(S_FA_3_352), .b(C_FA_4_410), .cin(S_FA_4_411), .s(S_FA_5_469), .cout(C_FA_5_469));
	wire S_FA_5_470, C_FA_5_470;
	fa FA_5_470 (.a(S_FA_3_354), .b(C_FA_4_411), .cin(S_FA_4_412), .s(S_FA_5_470), .cout(C_FA_5_470));
	wire S_FA_5_471, C_FA_5_471;
	fa FA_5_471 (.a(S_FA_3_356), .b(C_FA_4_412), .cin(S_FA_4_413), .s(S_FA_5_471), .cout(C_FA_5_471));
	wire S_FA_5_472, C_FA_5_472;
	fa FA_5_472 (.a(S_FA_3_358), .b(C_FA_4_413), .cin(S_FA_4_414), .s(S_FA_5_472), .cout(C_FA_5_472));
	wire S_FA_5_473, C_FA_5_473;
	fa FA_5_473 (.a(S_FA_3_360), .b(C_FA_4_414), .cin(S_FA_4_415), .s(S_FA_5_473), .cout(C_FA_5_473));
	wire S_FA_5_474, C_FA_5_474;
	fa FA_5_474 (.a(S_FA_3_362), .b(C_FA_4_415), .cin(S_FA_4_416), .s(S_FA_5_474), .cout(C_FA_5_474));
	wire S_FA_5_475, C_FA_5_475;
	fa FA_5_475 (.a(S_HA_3_39), .b(C_FA_4_416), .cin(S_FA_4_417), .s(S_FA_5_475), .cout(C_FA_5_475));
	wire S_FA_5_476, C_FA_5_476;
	fa FA_5_476 (.a(S_FA_3_364), .b(C_FA_4_417), .cin(S_FA_4_418), .s(S_FA_5_476), .cout(C_FA_5_476));
	wire S_FA_5_477, C_FA_5_477;
	fa FA_5_477 (.a(S_HA_3_40), .b(C_FA_4_418), .cin(S_FA_4_419), .s(S_FA_5_477), .cout(C_FA_5_477));
	wire S_FA_5_478, C_FA_5_478;
	fa FA_5_478 (.a(C_HA_3_40), .b(C_FA_4_419), .cin(S_FA_4_420), .s(S_FA_5_478), .cout(C_FA_5_478));
	wire S_FA_5_479, C_FA_5_479;
	fa FA_5_479 (.a(Corr_28_34), .b(C_FA_4_420), .cin(S_HA_4_43), .s(S_FA_5_479), .cout(C_FA_5_479));
	wire S_FA_5_480, C_FA_5_480;
	fa FA_5_480 (.a(PP_30_33), .b(PP_32_31), .cin(C_HA_4_43), .s(S_FA_5_480), .cout(C_FA_5_480));

	// --- Final CPA Wiring ---
	wire [63:0] Final_A, Final_B;
	assign Final_A[0] = PP_0_0;
	assign Final_B[0] = NegCin_0_0;
	assign Final_A[1] = PP_0_1;
	assign Final_B[1] = 1'b0;
	assign Final_A[2] = NegCin_2_0;
	assign Final_B[2] = S_HA_5_44;
	assign Final_A[3] = C_HA_5_44;
	assign Final_B[3] = S_HA_5_45;
	assign Final_A[4] = C_HA_5_45;
	assign Final_B[4] = S_FA_5_421;
	assign Final_A[5] = C_FA_5_421;
	assign Final_B[5] = S_FA_5_422;
	assign Final_A[6] = C_FA_5_422;
	assign Final_B[6] = S_FA_5_423;
	assign Final_A[7] = C_FA_5_423;
	assign Final_B[7] = S_FA_5_424;
	assign Final_A[8] = C_FA_5_424;
	assign Final_B[8] = S_FA_5_425;
	assign Final_A[9] = C_FA_5_425;
	assign Final_B[9] = S_FA_5_426;
	assign Final_A[10] = C_FA_5_426;
	assign Final_B[10] = S_FA_5_427;
	assign Final_A[11] = C_FA_5_427;
	assign Final_B[11] = S_FA_5_428;
	assign Final_A[12] = C_FA_5_428;
	assign Final_B[12] = S_FA_5_429;
	assign Final_A[13] = C_FA_5_429;
	assign Final_B[13] = S_FA_5_430;
	assign Final_A[14] = C_FA_5_430;
	assign Final_B[14] = S_FA_5_431;
	assign Final_A[15] = C_FA_5_431;
	assign Final_B[15] = S_FA_5_432;
	assign Final_A[16] = C_FA_5_432;
	assign Final_B[16] = S_FA_5_433;
	assign Final_A[17] = C_FA_5_433;
	assign Final_B[17] = S_FA_5_434;
	assign Final_A[18] = C_FA_5_434;
	assign Final_B[18] = S_FA_5_435;
	assign Final_A[19] = C_FA_5_435;
	assign Final_B[19] = S_FA_5_436;
	assign Final_A[20] = C_FA_5_436;
	assign Final_B[20] = S_FA_5_437;
	assign Final_A[21] = C_FA_5_437;
	assign Final_B[21] = S_FA_5_438;
	assign Final_A[22] = C_FA_5_438;
	assign Final_B[22] = S_FA_5_439;
	assign Final_A[23] = C_FA_5_439;
	assign Final_B[23] = S_FA_5_440;
	assign Final_A[24] = C_FA_5_440;
	assign Final_B[24] = S_FA_5_441;
	assign Final_A[25] = C_FA_5_441;
	assign Final_B[25] = S_FA_5_442;
	assign Final_A[26] = C_FA_5_442;
	assign Final_B[26] = S_FA_5_443;
	assign Final_A[27] = C_FA_5_443;
	assign Final_B[27] = S_FA_5_444;
	assign Final_A[28] = C_FA_5_444;
	assign Final_B[28] = S_FA_5_445;
	assign Final_A[29] = C_FA_5_445;
	assign Final_B[29] = S_FA_5_446;
	assign Final_A[30] = C_FA_5_446;
	assign Final_B[30] = S_FA_5_447;
	assign Final_A[31] = C_FA_5_447;
	assign Final_B[31] = S_FA_5_448;
	assign Final_A[32] = C_FA_5_448;
	assign Final_B[32] = S_FA_5_449;
	assign Final_A[33] = C_FA_5_449;
	assign Final_B[33] = S_FA_5_450;
	assign Final_A[34] = C_FA_5_450;
	assign Final_B[34] = S_FA_5_451;
	assign Final_A[35] = C_FA_5_451;
	assign Final_B[35] = S_FA_5_452;
	assign Final_A[36] = C_FA_5_452;
	assign Final_B[36] = S_FA_5_453;
	assign Final_A[37] = C_FA_5_453;
	assign Final_B[37] = S_FA_5_454;
	assign Final_A[38] = C_FA_5_454;
	assign Final_B[38] = S_FA_5_455;
	assign Final_A[39] = C_FA_5_455;
	assign Final_B[39] = S_FA_5_456;
	assign Final_A[40] = C_FA_5_456;
	assign Final_B[40] = S_FA_5_457;
	assign Final_A[41] = C_FA_5_457;
	assign Final_B[41] = S_FA_5_458;
	assign Final_A[42] = C_FA_5_458;
	assign Final_B[42] = S_FA_5_459;
	assign Final_A[43] = C_FA_5_459;
	assign Final_B[43] = S_FA_5_460;
	assign Final_A[44] = C_FA_5_460;
	assign Final_B[44] = S_FA_5_461;
	assign Final_A[45] = C_FA_5_461;
	assign Final_B[45] = S_FA_5_462;
	assign Final_A[46] = C_FA_5_462;
	assign Final_B[46] = S_FA_5_463;
	assign Final_A[47] = C_FA_5_463;
	assign Final_B[47] = S_FA_5_464;
	assign Final_A[48] = C_FA_5_464;
	assign Final_B[48] = S_FA_5_465;
	assign Final_A[49] = C_FA_5_465;
	assign Final_B[49] = S_FA_5_466;
	assign Final_A[50] = C_FA_5_466;
	assign Final_B[50] = S_FA_5_467;
	assign Final_A[51] = C_FA_5_467;
	assign Final_B[51] = S_FA_5_468;
	assign Final_A[52] = C_FA_5_468;
	assign Final_B[52] = S_FA_5_469;
	assign Final_A[53] = C_FA_5_469;
	assign Final_B[53] = S_FA_5_470;
	assign Final_A[54] = C_FA_5_470;
	assign Final_B[54] = S_FA_5_471;
	assign Final_A[55] = C_FA_5_471;
	assign Final_B[55] = S_FA_5_472;
	assign Final_A[56] = C_FA_5_472;
	assign Final_B[56] = S_FA_5_473;
	assign Final_A[57] = C_FA_5_473;
	assign Final_B[57] = S_FA_5_474;
	assign Final_A[58] = C_FA_5_474;
	assign Final_B[58] = S_FA_5_475;
	assign Final_A[59] = C_FA_5_475;
	assign Final_B[59] = S_FA_5_476;
	assign Final_A[60] = C_FA_5_476;
	assign Final_B[60] = S_FA_5_477;
	assign Final_A[61] = C_FA_5_477;
	assign Final_B[61] = S_FA_5_478;
	assign Final_A[62] = C_FA_5_478;
	assign Final_B[62] = S_FA_5_479;
	assign Final_A[63] = C_FA_5_479;
	assign Final_B[63] = S_FA_5_480;
	//Final Adder
	BK_Adder_64 final_adder (.A(Final_A), .B(Final_B), .CIN(1'b0), .COUT(COUT), .SUM(PRODUCT));
endmodule