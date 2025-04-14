
module FF_N8_3 ( D, Q, clk );
  input [7:0] D;
  output [7:0] Q;
  input clk;


  HS65_LL_DFPQX9 Q_reg_7_ ( .D(D[7]), .CP(clk), .Q(Q[7]) );
  HS65_LL_DFPQX9 Q_reg_6_ ( .D(D[6]), .CP(clk), .Q(Q[6]) );
  HS65_LL_DFPQX9 Q_reg_5_ ( .D(D[5]), .CP(clk), .Q(Q[5]) );
  HS65_LL_DFPQX9 Q_reg_4_ ( .D(D[4]), .CP(clk), .Q(Q[4]) );
  HS65_LL_DFPQX9 Q_reg_3_ ( .D(D[3]), .CP(clk), .Q(Q[3]) );
  HS65_LL_DFPQX9 Q_reg_2_ ( .D(D[2]), .CP(clk), .Q(Q[2]) );
  HS65_LL_DFPQX9 Q_reg_1_ ( .D(D[1]), .CP(clk), .Q(Q[1]) );
  HS65_LL_DFPQX9 Q_reg_0_ ( .D(D[0]), .CP(clk), .Q(Q[0]) );
endmodule


module FF_N8_2 ( D, Q, clk );
  input [7:0] D;
  output [7:0] Q;
  input clk;


  HS65_LL_DFPQX9 Q_reg_7_ ( .D(D[7]), .CP(clk), .Q(Q[7]) );
  HS65_LL_DFPQX9 Q_reg_6_ ( .D(D[6]), .CP(clk), .Q(Q[6]) );
  HS65_LL_DFPQX9 Q_reg_5_ ( .D(D[5]), .CP(clk), .Q(Q[5]) );
  HS65_LL_DFPQX9 Q_reg_4_ ( .D(D[4]), .CP(clk), .Q(Q[4]) );
  HS65_LL_DFPQX9 Q_reg_3_ ( .D(D[3]), .CP(clk), .Q(Q[3]) );
  HS65_LL_DFPQX9 Q_reg_2_ ( .D(D[2]), .CP(clk), .Q(Q[2]) );
  HS65_LL_DFPQX9 Q_reg_1_ ( .D(D[1]), .CP(clk), .Q(Q[1]) );
  HS65_LL_DFPQX9 Q_reg_0_ ( .D(D[0]), .CP(clk), .Q(Q[0]) );
endmodule


module FF_N8_1 ( D, Q, clk );
  input [7:0] D;
  output [7:0] Q;
  input clk;


  HS65_LL_DFPQX9 Q_reg_7_ ( .D(D[7]), .CP(clk), .Q(Q[7]) );
  HS65_LL_DFPQX9 Q_reg_6_ ( .D(D[6]), .CP(clk), .Q(Q[6]) );
  HS65_LL_DFPQX9 Q_reg_5_ ( .D(D[5]), .CP(clk), .Q(Q[5]) );
  HS65_LL_DFPQX9 Q_reg_4_ ( .D(D[4]), .CP(clk), .Q(Q[4]) );
  HS65_LL_DFPQX9 Q_reg_3_ ( .D(D[3]), .CP(clk), .Q(Q[3]) );
  HS65_LL_DFPQX9 Q_reg_2_ ( .D(D[2]), .CP(clk), .Q(Q[2]) );
  HS65_LL_DFPQX9 Q_reg_1_ ( .D(D[1]), .CP(clk), .Q(Q[1]) );
  HS65_LL_DFPQX9 Q_reg_0_ ( .D(D[0]), .CP(clk), .Q(Q[0]) );
endmodule


module MUX2_N8_1 ( IN0, IN1, Q, SEL );
  input [7:0] IN0;
  input [7:0] IN1;
  output [7:0] Q;
  input SEL;
  wire   n1;

  HS65_LL_IVX18 U1 ( .A(SEL), .Z(n1) );
  HS65_LL_AO22X9 U2 ( .A(IN1[0]), .B(SEL), .C(IN0[0]), .D(n1), .Z(Q[0]) );
  HS65_LL_AO22X9 U3 ( .A(IN1[1]), .B(SEL), .C(IN0[1]), .D(n1), .Z(Q[1]) );
  HS65_LL_AO22X9 U4 ( .A(IN1[3]), .B(SEL), .C(IN0[3]), .D(n1), .Z(Q[3]) );
  HS65_LL_AO22X9 U5 ( .A(IN1[5]), .B(SEL), .C(IN0[5]), .D(n1), .Z(Q[5]) );
  HS65_LL_AO22X9 U6 ( .A(IN1[6]), .B(SEL), .C(IN0[6]), .D(n1), .Z(Q[6]) );
  HS65_LL_AO22X9 U7 ( .A(IN1[4]), .B(SEL), .C(IN0[4]), .D(n1), .Z(Q[4]) );
  HS65_LL_AO22X9 U8 ( .A(SEL), .B(IN1[7]), .C(IN0[7]), .D(n1), .Z(Q[7]) );
  HS65_LL_AO22X9 U9 ( .A(IN1[2]), .B(SEL), .C(IN0[2]), .D(n1), .Z(Q[2]) );
endmodule


module MUX2_N8_0 ( IN0, IN1, Q, SEL );
  input [7:0] IN0;
  input [7:0] IN1;
  output [7:0] Q;
  input SEL;
  wire   n1;

  HS65_LL_AO22X9 U1 ( .A(IN1[6]), .B(SEL), .C(IN0[6]), .D(n1), .Z(Q[6]) );
  HS65_LL_AO22X9 U2 ( .A(IN1[3]), .B(SEL), .C(IN0[3]), .D(n1), .Z(Q[3]) );
  HS65_LL_AO22X9 U3 ( .A(IN1[1]), .B(SEL), .C(IN0[1]), .D(n1), .Z(Q[1]) );
  HS65_LL_AO22X9 U4 ( .A(IN1[5]), .B(SEL), .C(IN0[5]), .D(n1), .Z(Q[5]) );
  HS65_LL_AO22X9 U5 ( .A(IN1[0]), .B(SEL), .C(IN0[0]), .D(n1), .Z(Q[0]) );
  HS65_LL_IVX27 U6 ( .A(SEL), .Z(n1) );
  HS65_LL_AO22X18 U7 ( .A(IN1[2]), .B(SEL), .C(IN0[2]), .D(n1), .Z(Q[2]) );
  HS65_LL_AO22X18 U8 ( .A(IN1[4]), .B(SEL), .C(IN0[4]), .D(n1), .Z(Q[4]) );
  HS65_LL_AO22X18 U9 ( .A(SEL), .B(IN1[7]), .C(IN0[7]), .D(n1), .Z(Q[7]) );
endmodule


module FF_N8_0 ( D, Q, clk );
  input [7:0] D;
  output [7:0] Q;
  input clk;


  HS65_LL_DFPQX9 Q_reg_7_ ( .D(D[7]), .CP(clk), .Q(Q[7]) );
  HS65_LL_DFPQX9 Q_reg_4_ ( .D(D[4]), .CP(clk), .Q(Q[4]) );
  HS65_LL_DFPQX9 Q_reg_2_ ( .D(D[2]), .CP(clk), .Q(Q[2]) );
  HS65_LL_DFPQX9 Q_reg_0_ ( .D(D[0]), .CP(clk), .Q(Q[0]) );
  HS65_LL_DFPQX9 Q_reg_5_ ( .D(D[5]), .CP(clk), .Q(Q[5]) );
  HS65_LL_DFPQX9 Q_reg_1_ ( .D(D[1]), .CP(clk), .Q(Q[1]) );
  HS65_LL_DFPQX9 Q_reg_3_ ( .D(D[3]), .CP(clk), .Q(Q[3]) );
  HS65_LL_DFPQX9 Q_reg_6_ ( .D(D[6]), .CP(clk), .Q(Q[6]) );
endmodule


module SUB_N8_2_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   carry_8_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22;

  HS65_LLS1_FA1X9 U2_8 ( .A0(A[8]), .B0(n5), .CI(carry_8_), .S0(DIFF[8]) );
  HS65_LL_CBI4I1X11 U1 ( .A(n21), .B(n4), .C(B[1]), .D(n22), .Z(n19) );
  HS65_LL_AND2X9 U2 ( .A(A[6]), .B(n11), .Z(n12) );
  HS65_LL_CBI4I6X9 U3 ( .A(n19), .B(A[2]), .C(n8), .D(n20), .Z(n17) );
  HS65_LL_AND2X18 U4 ( .A(A[2]), .B(n19), .Z(n20) );
  HS65_LL_IVX9 U5 ( .A(B[2]), .Z(n8) );
  HS65_LL_OR2X9 U6 ( .A(n17), .B(n3), .Z(n18) );
  HS65_LL_CBI4I6X5 U7 ( .A(n11), .B(A[6]), .C(n6), .D(n12), .Z(n9) );
  HS65_LL_AO12X9 U8 ( .A(n1), .B(n9), .C(B[8]), .Z(n10) );
  HS65_LL_OR2X18 U9 ( .A(n21), .B(n4), .Z(n22) );
  HS65_LL_IVX9 U10 ( .A(A[1]), .Z(n4) );
  HS65_LL_CNNOR2AX15 U11 ( .A(B[0]), .B(A[0]), .Z(n21) );
  HS65_LL_IVX9 U12 ( .A(B[6]), .Z(n6) );
  HS65_LL_IVX9 U13 ( .A(A[8]), .Z(n1) );
  HS65_LL_IVX9 U14 ( .A(A[3]), .Z(n3) );
  HS65_LL_IVX9 U15 ( .A(A[5]), .Z(n2) );
  HS65_LL_OR2X18 U16 ( .A(n13), .B(n2), .Z(n14) );
  HS65_LL_OAI21X6 U17 ( .A(n9), .B(n1), .C(n10), .Z(carry_8_) );
  HS65_LL_CBI4I6X14 U18 ( .A(n15), .B(A[4]), .C(n7), .D(n16), .Z(n13) );
  HS65_LL_AND2X27 U19 ( .A(A[4]), .B(n15), .Z(n16) );
  HS65_LL_CBI4I1X11 U20 ( .A(n17), .B(n3), .C(B[3]), .D(n18), .Z(n15) );
  HS65_LL_CBI4I1X5 U21 ( .A(n13), .B(n2), .C(B[5]), .D(n14), .Z(n11) );
  HS65_LL_CNIVX21 U22 ( .A(B[8]), .Z(n5) );
  HS65_LL_CNIVX21 U23 ( .A(B[4]), .Z(n7) );
endmodule


module SUB_N8_2 ( POS, NEG, Q );
  input [7:0] POS;
  input [7:0] NEG;
  output [8:0] Q;


  SUB_N8_2_DW01_sub_0 sub_26 ( .A({POS[7], POS}), .B({NEG[7], NEG}), .CI(1'b0), 
        .DIFF(Q) );
endmodule


module SUB_N8_1_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   carry_8_, n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25;

  HS65_LLS1_FA1X9 U2_8 ( .A0(A[8]), .B0(n4), .CI(carry_8_), .S0(DIFF[8]) );
  HS65_LL_OR2X9 U1 ( .A(n24), .B(n11), .Z(n25) );
  HS65_LL_NOR2AX13 U2 ( .A(B[0]), .B(A[0]), .Z(n24) );
  HS65_LL_CBI4I1X16 U3 ( .A(n16), .B(n9), .C(B[5]), .D(n17), .Z(n14) );
  HS65_LL_OR2X18 U4 ( .A(n1), .B(n9), .Z(n17) );
  HS65_LL_CBI4I6X9 U5 ( .A(n14), .B(A[6]), .C(n5), .D(n15), .Z(n12) );
  HS65_LL_AND2X18 U6 ( .A(A[6]), .B(n14), .Z(n15) );
  HS65_LL_IVX9 U7 ( .A(A[1]), .Z(n11) );
  HS65_LL_AND2X9 U8 ( .A(A[2]), .B(n22), .Z(n23) );
  HS65_LL_AO12X9 U9 ( .A(n8), .B(n12), .C(B[8]), .Z(n13) );
  HS65_LL_OR2X9 U10 ( .A(n12), .B(n8), .Z(n3) );
  HS65_LL_CBI4I1X11 U11 ( .A(n10), .B(n20), .C(B[3]), .D(n21), .Z(n18) );
  HS65_LL_OR2X18 U12 ( .A(n10), .B(n20), .Z(n21) );
  HS65_LL_CBI4I6X5 U13 ( .A(A[4]), .B(n18), .C(n6), .D(n19), .Z(n1) );
  HS65_LL_AND2X18 U14 ( .A(A[4]), .B(n18), .Z(n19) );
  HS65_LL_CBI4I1X5 U15 ( .A(n24), .B(n11), .C(B[1]), .D(n25), .Z(n2) );
  HS65_LL_CBI4I6X5 U16 ( .A(A[4]), .B(n18), .C(n6), .D(n19), .Z(n16) );
  HS65_LL_CBI4I1X5 U17 ( .A(n24), .B(n11), .C(B[1]), .D(n25), .Z(n22) );
  HS65_LL_CBI4I6X9 U18 ( .A(n2), .B(A[2]), .C(n7), .D(n23), .Z(n20) );
  HS65_LL_IVX2 U19 ( .A(B[2]), .Z(n7) );
  HS65_LL_IVX9 U20 ( .A(B[6]), .Z(n5) );
  HS65_LL_IVX9 U21 ( .A(B[4]), .Z(n6) );
  HS65_LL_IVX9 U22 ( .A(B[8]), .Z(n4) );
  HS65_LL_CNNAND2X18 U23 ( .A(n3), .B(n13), .Z(carry_8_) );
  HS65_LL_IVX9 U24 ( .A(A[3]), .Z(n10) );
  HS65_LL_IVX9 U25 ( .A(A[5]), .Z(n9) );
  HS65_LL_IVX9 U26 ( .A(A[8]), .Z(n8) );
endmodule


module SUB_N8_1 ( POS, NEG, Q );
  input [7:0] POS;
  input [7:0] NEG;
  output [8:0] Q;


  SUB_N8_1_DW01_sub_0 sub_26 ( .A({POS[7], POS}), .B({NEG[7], NEG}), .CI(1'b0), 
        .DIFF(Q) );
endmodule


module SUB_N8_0_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [8:0] A;
  input [8:0] B;
  output [8:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26;

  HS65_LL_CBI4I6X9 U1 ( .A(A[6]), .B(n6), .C(n11), .D(n16), .Z(n1) );
  HS65_LL_NOR2AX6 U2 ( .A(B[0]), .B(A[0]), .Z(n25) );
  HS65_LL_XOR2X35 U3 ( .A(n4), .B(n5), .Z(DIFF[8]) );
  HS65_LL_AND2X9 U4 ( .A(A[2]), .B(n23), .Z(n24) );
  HS65_LL_OR2X18 U5 ( .A(n10), .B(n25), .Z(n26) );
  HS65_LL_IVX9 U6 ( .A(B[4]), .Z(n12) );
  HS65_LL_IVX9 U7 ( .A(A[1]), .Z(n10) );
  HS65_LL_CBI4I1X5 U8 ( .A(n25), .B(n10), .C(B[1]), .D(n26), .Z(n23) );
  HS65_LL_CBI4I1X5 U9 ( .A(n25), .B(n10), .C(B[1]), .D(n26), .Z(n3) );
  HS65_LL_IVX9 U10 ( .A(B[2]), .Z(n13) );
  HS65_LL_AND2X4 U11 ( .A(A[6]), .B(n15), .Z(n16) );
  HS65_LL_AO12X9 U12 ( .A(n7), .B(n1), .C(B[8]), .Z(n14) );
  HS65_LL_CBI4I6X9 U13 ( .A(A[4]), .B(n19), .C(n12), .D(n20), .Z(n2) );
  HS65_LL_OA12X18 U14 ( .A(n7), .B(n1), .C(n14), .Z(n5) );
  HS65_LL_CBI4I1X16 U15 ( .A(n21), .B(n9), .C(B[3]), .D(n22), .Z(n19) );
  HS65_LL_OR2X35 U16 ( .A(n9), .B(n21), .Z(n22) );
  HS65_LLS_XOR2X6 U17 ( .A(B[8]), .B(A[8]), .Z(n4) );
  HS65_LL_IVX9 U18 ( .A(B[6]), .Z(n11) );
  HS65_LL_IVX9 U19 ( .A(A[8]), .Z(n7) );
  HS65_LL_IVX9 U20 ( .A(A[3]), .Z(n9) );
  HS65_LL_IVX9 U21 ( .A(A[5]), .Z(n8) );
  HS65_LL_CBI4I6X18 U22 ( .A(n3), .B(A[2]), .C(n13), .D(n24), .Z(n21) );
  HS65_LL_CBI4I1X5 U23 ( .A(n2), .B(n8), .C(B[5]), .D(n18), .Z(n6) );
  HS65_LL_CBI4I6X9 U24 ( .A(A[4]), .B(n19), .C(n12), .D(n20), .Z(n17) );
  HS65_LL_AND2X27 U25 ( .A(A[4]), .B(n19), .Z(n20) );
  HS65_LL_OR2X18 U26 ( .A(n8), .B(n17), .Z(n18) );
  HS65_LL_CBI4I1X5 U27 ( .A(n2), .B(n8), .C(B[5]), .D(n18), .Z(n15) );
endmodule


module SUB_N8_0 ( POS, NEG, Q );
  input [7:0] POS;
  input [7:0] NEG;
  output [8:0] Q;


  SUB_N8_0_DW01_sub_0 sub_26 ( .A({POS[7], POS}), .B({NEG[7], NEG}), .CI(1'b0), 
        .DIFF(Q) );
endmodule


module MEDIAN_LOGIC ( a, b, c, q, w );
  input a, b, c;
  output q, w;


  HS65_LL_XNOR2X27 U3 ( .A(b), .B(c), .Z(q) );
  HS65_LL_XNOR2X18 U4 ( .A(a), .B(c), .Z(w) );
endmodule


module MEDIANFILTER ( INP, UTP, clk );
  inout [7:0] INP;
  inout [7:0] UTP;
  inout clk;
  wire   clki, q, w, aa_8_, bb_8_, cc_8_, SYNOPSYS_UNCONNECTED_1,
         SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3,
         SYNOPSYS_UNCONNECTED_4, SYNOPSYS_UNCONNECTED_5,
         SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7,
         SYNOPSYS_UNCONNECTED_8, SYNOPSYS_UNCONNECTED_9,
         SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11,
         SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13,
         SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15,
         SYNOPSYS_UNCONNECTED_16, SYNOPSYS_UNCONNECTED_17,
         SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19,
         SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21,
         SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23,
         SYNOPSYS_UNCONNECTED_24;
  wire   [7:0] INPi;
  wire   [7:0] UTPi;
  wire   [7:0] inp1;
  wire   [7:0] inp2;
  wire   [7:0] inp3;
  wire   [7:0] mux0;
  wire   [7:0] utp0;
  tri   [7:0] INP;
  tri   [7:0] UTP;
  tri   clk;

  CPAD_S_74x50u_IN InPad_0 ( .PADIO(INP[0]), .COREIO(INPi[0]) );
  CPAD_S_74x50u_IN InPad_1 ( .PADIO(INP[1]), .COREIO(INPi[1]) );
  CPAD_S_74x50u_IN InPad_2 ( .PADIO(INP[2]), .COREIO(INPi[2]) );
  CPAD_S_74x50u_IN InPad_3 ( .PADIO(INP[3]), .COREIO(INPi[3]) );
  CPAD_S_74x50u_IN InPad_4 ( .PADIO(INP[4]), .COREIO(INPi[4]) );
  CPAD_S_74x50u_IN InPad_5 ( .PADIO(INP[5]), .COREIO(INPi[5]) );
  CPAD_S_74x50u_IN InPad_6 ( .PADIO(INP[6]), .COREIO(INPi[6]) );
  CPAD_S_74x50u_IN InPad_7 ( .PADIO(INP[7]), .COREIO(INPi[7]) );
  CPAD_S_74x50u_IN clkpad ( .PADIO(clk), .COREIO(clki) );
  CPAD_S_74x50u_OUT OutPad_0 ( .COREIO(UTPi[0]), .PADIO(UTP[0]) );
  CPAD_S_74x50u_OUT OutPad_1 ( .COREIO(UTPi[1]), .PADIO(UTP[1]) );
  CPAD_S_74x50u_OUT OutPad_2 ( .COREIO(UTPi[2]), .PADIO(UTP[2]) );
  CPAD_S_74x50u_OUT OutPad_3 ( .COREIO(UTPi[3]), .PADIO(UTP[3]) );
  CPAD_S_74x50u_OUT OutPad_4 ( .COREIO(UTPi[4]), .PADIO(UTP[4]) );
  CPAD_S_74x50u_OUT OutPad_5 ( .COREIO(UTPi[5]), .PADIO(UTP[5]) );
  CPAD_S_74x50u_OUT OutPad_6 ( .COREIO(UTPi[6]), .PADIO(UTP[6]) );
  CPAD_S_74x50u_OUT OutPad_7 ( .COREIO(UTPi[7]), .PADIO(UTP[7]) );
  FF_N8_3 FF_0 ( .D(INPi), .Q(inp1), .clk(clki) );
  FF_N8_2 FF_1 ( .D(inp1), .Q(inp2), .clk(clki) );
  FF_N8_1 FF_2 ( .D(inp2), .Q(inp3), .clk(clki) );
  MUX2_N8_1 MUX2_0 ( .IN0(inp1), .IN1(inp2), .Q(mux0), .SEL(q) );
  MUX2_N8_0 MUX2_1 ( .IN0(mux0), .IN1(inp3), .Q(utp0), .SEL(w) );
  FF_N8_0 FF_3 ( .D(utp0), .Q(UTPi), .clk(clki) );
  SUB_N8_2 SUB_0 ( .POS(inp3), .NEG(inp1), .Q({aa_8_, SYNOPSYS_UNCONNECTED_1, 
        SYNOPSYS_UNCONNECTED_2, SYNOPSYS_UNCONNECTED_3, SYNOPSYS_UNCONNECTED_4, 
        SYNOPSYS_UNCONNECTED_5, SYNOPSYS_UNCONNECTED_6, SYNOPSYS_UNCONNECTED_7, 
        SYNOPSYS_UNCONNECTED_8}) );
  SUB_N8_1 SUB_1 ( .POS(inp1), .NEG(inp2), .Q({bb_8_, SYNOPSYS_UNCONNECTED_9, 
        SYNOPSYS_UNCONNECTED_10, SYNOPSYS_UNCONNECTED_11, 
        SYNOPSYS_UNCONNECTED_12, SYNOPSYS_UNCONNECTED_13, 
        SYNOPSYS_UNCONNECTED_14, SYNOPSYS_UNCONNECTED_15, 
        SYNOPSYS_UNCONNECTED_16}) );
  SUB_N8_0 SUB_2 ( .POS(inp2), .NEG(inp3), .Q({cc_8_, SYNOPSYS_UNCONNECTED_17, 
        SYNOPSYS_UNCONNECTED_18, SYNOPSYS_UNCONNECTED_19, 
        SYNOPSYS_UNCONNECTED_20, SYNOPSYS_UNCONNECTED_21, 
        SYNOPSYS_UNCONNECTED_22, SYNOPSYS_UNCONNECTED_23, 
        SYNOPSYS_UNCONNECTED_24}) );
  MEDIAN_LOGIC LOGIC ( .a(aa_8_), .b(bb_8_), .c(cc_8_), .q(q), .w(w) );
endmodule

