/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Fri Nov 19 21:09:27 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1300307402 */

module myDFF(D, clk, rst, en, Q);
   input [32:0]D;
   input clk;
   input rst;
   input en;
   output [32:0]Q;

   wire n_0_0;

   CLKGATETST_X1 clk_gate_Q_reg (.CK(clk), .E(n_34), .SE(1'b0), .GCK(n_0));
   DFF_X1 \Q_reg[32]  (.D(n_33), .CK(n_0), .Q(Q[32]), .QN());
   DFF_X1 \Q_reg[31]  (.D(n_32), .CK(n_0), .Q(Q[31]), .QN());
   DFF_X1 \Q_reg[30]  (.D(n_31), .CK(n_0), .Q(Q[30]), .QN());
   DFF_X1 \Q_reg[29]  (.D(n_30), .CK(n_0), .Q(Q[29]), .QN());
   DFF_X1 \Q_reg[28]  (.D(n_29), .CK(n_0), .Q(Q[28]), .QN());
   DFF_X1 \Q_reg[27]  (.D(n_28), .CK(n_0), .Q(Q[27]), .QN());
   DFF_X1 \Q_reg[26]  (.D(n_27), .CK(n_0), .Q(Q[26]), .QN());
   DFF_X1 \Q_reg[25]  (.D(n_26), .CK(n_0), .Q(Q[25]), .QN());
   DFF_X1 \Q_reg[24]  (.D(n_25), .CK(n_0), .Q(Q[24]), .QN());
   DFF_X1 \Q_reg[23]  (.D(n_24), .CK(n_0), .Q(Q[23]), .QN());
   DFF_X1 \Q_reg[22]  (.D(n_23), .CK(n_0), .Q(Q[22]), .QN());
   DFF_X1 \Q_reg[21]  (.D(n_22), .CK(n_0), .Q(Q[21]), .QN());
   DFF_X1 \Q_reg[20]  (.D(n_21), .CK(n_0), .Q(Q[20]), .QN());
   DFF_X1 \Q_reg[19]  (.D(n_20), .CK(n_0), .Q(Q[19]), .QN());
   DFF_X1 \Q_reg[18]  (.D(n_19), .CK(n_0), .Q(Q[18]), .QN());
   DFF_X1 \Q_reg[17]  (.D(n_18), .CK(n_0), .Q(Q[17]), .QN());
   DFF_X1 \Q_reg[16]  (.D(n_17), .CK(n_0), .Q(Q[16]), .QN());
   DFF_X1 \Q_reg[15]  (.D(n_16), .CK(n_0), .Q(Q[15]), .QN());
   DFF_X1 \Q_reg[14]  (.D(n_15), .CK(n_0), .Q(Q[14]), .QN());
   DFF_X1 \Q_reg[13]  (.D(n_14), .CK(n_0), .Q(Q[13]), .QN());
   DFF_X1 \Q_reg[12]  (.D(n_13), .CK(n_0), .Q(Q[12]), .QN());
   DFF_X1 \Q_reg[11]  (.D(n_12), .CK(n_0), .Q(Q[11]), .QN());
   DFF_X1 \Q_reg[10]  (.D(n_11), .CK(n_0), .Q(Q[10]), .QN());
   DFF_X1 \Q_reg[9]  (.D(n_10), .CK(n_0), .Q(Q[9]), .QN());
   DFF_X1 \Q_reg[8]  (.D(n_9), .CK(n_0), .Q(Q[8]), .QN());
   DFF_X1 \Q_reg[7]  (.D(n_8), .CK(n_0), .Q(Q[7]), .QN());
   DFF_X1 \Q_reg[6]  (.D(n_7), .CK(n_0), .Q(Q[6]), .QN());
   DFF_X1 \Q_reg[5]  (.D(n_6), .CK(n_0), .Q(Q[5]), .QN());
   DFF_X1 \Q_reg[4]  (.D(n_5), .CK(n_0), .Q(Q[4]), .QN());
   DFF_X1 \Q_reg[3]  (.D(n_4), .CK(n_0), .Q(Q[3]), .QN());
   DFF_X1 \Q_reg[2]  (.D(n_3), .CK(n_0), .Q(Q[2]), .QN());
   DFF_X1 \Q_reg[1]  (.D(n_2), .CK(n_0), .Q(Q[1]), .QN());
   DFF_X1 \Q_reg[0]  (.D(n_1), .CK(n_0), .Q(Q[0]), .QN());
   INV_X1 i_0_0 (.A(rst), .ZN(n_0_0));
   AND2_X1 i_0_1 (.A1(n_0_0), .A2(D[0]), .ZN(n_1));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(D[1]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(D[2]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(D[3]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(D[4]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(D[5]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(D[6]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(D[7]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(D[8]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(D[9]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(D[10]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(D[11]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(D[12]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(D[13]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(D[14]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(D[15]), .ZN(n_16));
   AND2_X1 i_0_17 (.A1(n_0_0), .A2(D[16]), .ZN(n_17));
   AND2_X1 i_0_18 (.A1(n_0_0), .A2(D[17]), .ZN(n_18));
   AND2_X1 i_0_19 (.A1(n_0_0), .A2(D[18]), .ZN(n_19));
   AND2_X1 i_0_20 (.A1(n_0_0), .A2(D[19]), .ZN(n_20));
   AND2_X1 i_0_21 (.A1(n_0_0), .A2(D[20]), .ZN(n_21));
   AND2_X1 i_0_22 (.A1(n_0_0), .A2(D[21]), .ZN(n_22));
   AND2_X1 i_0_23 (.A1(n_0_0), .A2(D[22]), .ZN(n_23));
   AND2_X1 i_0_24 (.A1(n_0_0), .A2(D[23]), .ZN(n_24));
   AND2_X1 i_0_25 (.A1(n_0_0), .A2(D[24]), .ZN(n_25));
   AND2_X1 i_0_26 (.A1(n_0_0), .A2(D[25]), .ZN(n_26));
   AND2_X1 i_0_27 (.A1(n_0_0), .A2(D[26]), .ZN(n_27));
   AND2_X1 i_0_28 (.A1(n_0_0), .A2(D[27]), .ZN(n_28));
   AND2_X1 i_0_29 (.A1(n_0_0), .A2(D[28]), .ZN(n_29));
   AND2_X1 i_0_30 (.A1(n_0_0), .A2(D[29]), .ZN(n_30));
   AND2_X1 i_0_31 (.A1(n_0_0), .A2(D[30]), .ZN(n_31));
   AND2_X1 i_0_32 (.A1(n_0_0), .A2(D[31]), .ZN(n_32));
   AND2_X1 i_0_33 (.A1(n_0_0), .A2(D[32]), .ZN(n_33));
   OR2_X1 i_0_34 (.A1(rst), .A2(en), .ZN(n_34));
endmodule

module ripple_adder(A, B, cin, Sum, cout);
   input [15:0]A;
   input [15:0]B;
   input cin;
   output [15:0]Sum;
   output cout;

   wire n_0_0;
   wire n_0_1;
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_5;
   wire n_0_6;
   wire n_0_7;
   wire n_0_8;
   wire n_0_9;
   wire n_0_10;
   wire n_0_11;
   wire n_0_12;
   wire n_0_13;
   wire n_0_14;
   wire n_0_15;
   wire n_0_16;
   wire n_0_17;
   wire n_0_18;
   wire n_0_19;
   wire n_0_20;
   wire n_0_21;
   wire n_0_22;
   wire n_0_23;
   wire n_0_24;
   wire n_0_25;
   wire n_0_26;
   wire n_0_27;
   wire n_0_28;
   wire n_0_29;
   wire n_0_30;
   wire n_0_31;
   wire n_0_32;
   wire n_0_33;
   wire n_0_34;
   wire n_0_35;
   wire n_0_36;
   wire n_0_37;
   wire n_0_38;
   wire n_0_39;
   wire n_0_40;
   wire n_0_41;
   wire n_0_42;
   wire n_0_43;
   wire n_0_44;
   wire n_0_45;

   OAI21_X1 i_0_0 (.A(n_0_1), .B1(n_0_2), .B2(n_0_0), .ZN(cout));
   XOR2_X1 i_0_1 (.A(cin), .B(n_0_45), .Z(Sum[0]));
   XNOR2_X1 i_0_2 (.A(n_0_44), .B(n_0_42), .ZN(Sum[1]));
   XNOR2_X1 i_0_3 (.A(n_0_41), .B(n_0_39), .ZN(Sum[2]));
   XNOR2_X1 i_0_4 (.A(n_0_38), .B(n_0_36), .ZN(Sum[3]));
   XNOR2_X1 i_0_5 (.A(n_0_35), .B(n_0_33), .ZN(Sum[4]));
   XNOR2_X1 i_0_6 (.A(n_0_32), .B(n_0_30), .ZN(Sum[5]));
   XNOR2_X1 i_0_7 (.A(n_0_29), .B(n_0_27), .ZN(Sum[6]));
   XNOR2_X1 i_0_8 (.A(n_0_26), .B(n_0_24), .ZN(Sum[7]));
   XNOR2_X1 i_0_9 (.A(n_0_23), .B(n_0_21), .ZN(Sum[8]));
   XNOR2_X1 i_0_10 (.A(n_0_20), .B(n_0_18), .ZN(Sum[9]));
   XNOR2_X1 i_0_11 (.A(n_0_17), .B(n_0_15), .ZN(Sum[10]));
   XNOR2_X1 i_0_12 (.A(n_0_14), .B(n_0_12), .ZN(Sum[11]));
   XNOR2_X1 i_0_13 (.A(n_0_11), .B(n_0_9), .ZN(Sum[12]));
   XNOR2_X1 i_0_14 (.A(n_0_8), .B(n_0_6), .ZN(Sum[13]));
   XNOR2_X1 i_0_15 (.A(n_0_5), .B(n_0_3), .ZN(Sum[14]));
   XOR2_X1 i_0_16 (.A(n_0_2), .B(n_0_0), .Z(Sum[15]));
   OAI21_X1 i_0_17 (.A(n_0_1), .B1(B[15]), .B2(A[15]), .ZN(n_0_0));
   NAND2_X1 i_0_18 (.A1(B[15]), .A2(A[15]), .ZN(n_0_1));
   AOI22_X1 i_0_19 (.A1(B[14]), .A2(A[14]), .B1(n_0_4), .B2(n_0_3), .ZN(n_0_2));
   XOR2_X1 i_0_20 (.A(B[14]), .B(A[14]), .Z(n_0_3));
   INV_X1 i_0_21 (.A(n_0_5), .ZN(n_0_4));
   AOI22_X1 i_0_22 (.A1(B[13]), .A2(A[13]), .B1(n_0_7), .B2(n_0_6), .ZN(n_0_5));
   XOR2_X1 i_0_23 (.A(B[13]), .B(A[13]), .Z(n_0_6));
   INV_X1 i_0_24 (.A(n_0_8), .ZN(n_0_7));
   AOI22_X1 i_0_25 (.A1(B[12]), .A2(A[12]), .B1(n_0_10), .B2(n_0_9), .ZN(n_0_8));
   XOR2_X1 i_0_26 (.A(B[12]), .B(A[12]), .Z(n_0_9));
   INV_X1 i_0_27 (.A(n_0_11), .ZN(n_0_10));
   AOI22_X1 i_0_28 (.A1(B[11]), .A2(A[11]), .B1(n_0_13), .B2(n_0_12), .ZN(n_0_11));
   XOR2_X1 i_0_29 (.A(B[11]), .B(A[11]), .Z(n_0_12));
   INV_X1 i_0_30 (.A(n_0_14), .ZN(n_0_13));
   AOI22_X1 i_0_31 (.A1(B[10]), .A2(A[10]), .B1(n_0_16), .B2(n_0_15), .ZN(n_0_14));
   XOR2_X1 i_0_32 (.A(B[10]), .B(A[10]), .Z(n_0_15));
   INV_X1 i_0_33 (.A(n_0_17), .ZN(n_0_16));
   AOI22_X1 i_0_34 (.A1(B[9]), .A2(A[9]), .B1(n_0_19), .B2(n_0_18), .ZN(n_0_17));
   XOR2_X1 i_0_35 (.A(B[9]), .B(A[9]), .Z(n_0_18));
   INV_X1 i_0_36 (.A(n_0_20), .ZN(n_0_19));
   AOI22_X1 i_0_37 (.A1(B[8]), .A2(A[8]), .B1(n_0_22), .B2(n_0_21), .ZN(n_0_20));
   XOR2_X1 i_0_38 (.A(B[8]), .B(A[8]), .Z(n_0_21));
   INV_X1 i_0_39 (.A(n_0_23), .ZN(n_0_22));
   AOI22_X1 i_0_40 (.A1(B[7]), .A2(A[7]), .B1(n_0_25), .B2(n_0_24), .ZN(n_0_23));
   XOR2_X1 i_0_41 (.A(B[7]), .B(A[7]), .Z(n_0_24));
   INV_X1 i_0_42 (.A(n_0_26), .ZN(n_0_25));
   AOI22_X1 i_0_43 (.A1(B[6]), .A2(A[6]), .B1(n_0_28), .B2(n_0_27), .ZN(n_0_26));
   XOR2_X1 i_0_44 (.A(B[6]), .B(A[6]), .Z(n_0_27));
   INV_X1 i_0_45 (.A(n_0_29), .ZN(n_0_28));
   AOI22_X1 i_0_46 (.A1(B[5]), .A2(A[5]), .B1(n_0_31), .B2(n_0_30), .ZN(n_0_29));
   XOR2_X1 i_0_47 (.A(B[5]), .B(A[5]), .Z(n_0_30));
   INV_X1 i_0_48 (.A(n_0_32), .ZN(n_0_31));
   AOI22_X1 i_0_49 (.A1(B[4]), .A2(A[4]), .B1(n_0_34), .B2(n_0_33), .ZN(n_0_32));
   XOR2_X1 i_0_50 (.A(B[4]), .B(A[4]), .Z(n_0_33));
   INV_X1 i_0_51 (.A(n_0_35), .ZN(n_0_34));
   AOI22_X1 i_0_52 (.A1(B[3]), .A2(A[3]), .B1(n_0_37), .B2(n_0_36), .ZN(n_0_35));
   XOR2_X1 i_0_53 (.A(B[3]), .B(A[3]), .Z(n_0_36));
   INV_X1 i_0_54 (.A(n_0_38), .ZN(n_0_37));
   AOI22_X1 i_0_55 (.A1(B[2]), .A2(A[2]), .B1(n_0_40), .B2(n_0_39), .ZN(n_0_38));
   XOR2_X1 i_0_56 (.A(B[2]), .B(A[2]), .Z(n_0_39));
   INV_X1 i_0_57 (.A(n_0_41), .ZN(n_0_40));
   AOI22_X1 i_0_58 (.A1(B[1]), .A2(A[1]), .B1(n_0_43), .B2(n_0_42), .ZN(n_0_41));
   XOR2_X1 i_0_59 (.A(B[1]), .B(A[1]), .Z(n_0_42));
   INV_X1 i_0_60 (.A(n_0_44), .ZN(n_0_43));
   AOI22_X1 i_0_61 (.A1(B[0]), .A2(A[0]), .B1(cin), .B2(n_0_45), .ZN(n_0_44));
   XOR2_X1 i_0_62 (.A(B[0]), .B(A[0]), .Z(n_0_45));
endmodule

module myDFF__parameterized0(D, clk, rst, en, Q);
   input [15:0]D;
   input clk;
   input rst;
   input en;
   output [15:0]Q;

   wire n_0_0;

   CLKGATETST_X1 clk_gate_Q_reg (.CK(clk), .E(n_17), .SE(1'b0), .GCK(n_0));
   DFF_X1 \Q_reg[15]  (.D(n_16), .CK(n_0), .Q(Q[15]), .QN());
   DFF_X1 \Q_reg[14]  (.D(n_15), .CK(n_0), .Q(Q[14]), .QN());
   DFF_X1 \Q_reg[13]  (.D(n_14), .CK(n_0), .Q(Q[13]), .QN());
   DFF_X1 \Q_reg[12]  (.D(n_13), .CK(n_0), .Q(Q[12]), .QN());
   DFF_X1 \Q_reg[11]  (.D(n_12), .CK(n_0), .Q(Q[11]), .QN());
   DFF_X1 \Q_reg[10]  (.D(n_11), .CK(n_0), .Q(Q[10]), .QN());
   DFF_X1 \Q_reg[9]  (.D(n_10), .CK(n_0), .Q(Q[9]), .QN());
   DFF_X1 \Q_reg[8]  (.D(n_9), .CK(n_0), .Q(Q[8]), .QN());
   DFF_X1 \Q_reg[7]  (.D(n_8), .CK(n_0), .Q(Q[7]), .QN());
   DFF_X1 \Q_reg[6]  (.D(n_7), .CK(n_0), .Q(Q[6]), .QN());
   DFF_X1 \Q_reg[5]  (.D(n_6), .CK(n_0), .Q(Q[5]), .QN());
   DFF_X1 \Q_reg[4]  (.D(n_5), .CK(n_0), .Q(Q[4]), .QN());
   DFF_X1 \Q_reg[3]  (.D(n_4), .CK(n_0), .Q(Q[3]), .QN());
   DFF_X1 \Q_reg[2]  (.D(n_3), .CK(n_0), .Q(Q[2]), .QN());
   DFF_X1 \Q_reg[1]  (.D(n_2), .CK(n_0), .Q(Q[1]), .QN());
   DFF_X1 \Q_reg[0]  (.D(n_1), .CK(n_0), .Q(Q[0]), .QN());
   INV_X1 i_0_0 (.A(rst), .ZN(n_0_0));
   AND2_X1 i_0_1 (.A1(n_0_0), .A2(D[0]), .ZN(n_1));
   AND2_X1 i_0_2 (.A1(n_0_0), .A2(D[1]), .ZN(n_2));
   AND2_X1 i_0_3 (.A1(n_0_0), .A2(D[2]), .ZN(n_3));
   AND2_X1 i_0_4 (.A1(n_0_0), .A2(D[3]), .ZN(n_4));
   AND2_X1 i_0_5 (.A1(n_0_0), .A2(D[4]), .ZN(n_5));
   AND2_X1 i_0_6 (.A1(n_0_0), .A2(D[5]), .ZN(n_6));
   AND2_X1 i_0_7 (.A1(n_0_0), .A2(D[6]), .ZN(n_7));
   AND2_X1 i_0_8 (.A1(n_0_0), .A2(D[7]), .ZN(n_8));
   AND2_X1 i_0_9 (.A1(n_0_0), .A2(D[8]), .ZN(n_9));
   AND2_X1 i_0_10 (.A1(n_0_0), .A2(D[9]), .ZN(n_10));
   AND2_X1 i_0_11 (.A1(n_0_0), .A2(D[10]), .ZN(n_11));
   AND2_X1 i_0_12 (.A1(n_0_0), .A2(D[11]), .ZN(n_12));
   AND2_X1 i_0_13 (.A1(n_0_0), .A2(D[12]), .ZN(n_13));
   AND2_X1 i_0_14 (.A1(n_0_0), .A2(D[13]), .ZN(n_14));
   AND2_X1 i_0_15 (.A1(n_0_0), .A2(D[14]), .ZN(n_15));
   AND2_X1 i_0_16 (.A1(n_0_0), .A2(D[15]), .ZN(n_16));
   OR2_X1 i_0_17 (.A1(rst), .A2(en), .ZN(n_17));
endmodule

module myDFF__parameterized1(D, clk, rst, en, Q);
   input [0:0]D;
   input clk;
   input rst;
   input en;
   output [0:0]Q;

   wire n_0_0;
   wire n_0_1;

   DFF_X1 \Q_reg[0]  (.D(n_0), .CK(clk), .Q(Q[0]), .QN());
   AOI211_X1 i_0_0 (.A(rst), .B(n_0_0), .C1(en), .C2(n_0_1), .ZN(n_0));
   NOR2_X1 i_0_1 (.A1(Q[0]), .A2(en), .ZN(n_0_0));
   INV_X1 i_0_2 (.A(D[0]), .ZN(n_0_1));
endmodule

module myRippleAdder_withRegisters(A, B, clk, rst, en, cin, Sum, cout);
   input [15:0]A;
   input [15:0]B;
   input clk;
   input rst;
   input en;
   input cin;
   output [15:0]Sum;
   output cout;

   wire [32:0]Q;
   wire outC;
   wire [15:0]outS;

   myDFF InputReg (.D({A[15], A[14], A[13], A[12], A[11], A[10], A[9], A[8], 
      A[7], A[6], A[5], A[4], A[3], A[2], A[1], A[0], B[15], B[14], B[13], B[12], 
      B[11], B[10], B[9], B[8], B[7], B[6], B[5], B[4], B[3], B[2], B[1], B[0], 
      cin}), .clk(clk), .rst(rst), .en(en), .Q(Q));
   ripple_adder Adder (.A({Q[32], Q[31], Q[30], Q[29], Q[28], Q[27], Q[26], 
      Q[25], Q[24], Q[23], Q[22], Q[21], Q[20], Q[19], Q[18], Q[17]}), .B({Q[16], 
      Q[15], Q[14], Q[13], Q[12], Q[11], Q[10], Q[9], Q[8], Q[7], Q[6], Q[5], 
      Q[4], Q[3], Q[2], Q[1]}), .cin(Q[0]), .Sum(outS), .cout(outC));
   myDFF__parameterized0 outputReg (.D(outS), .clk(clk), .rst(rst), .en(en), 
      .Q(Sum));
   myDFF__parameterized1 outputRegC (.D(outC), .clk(clk), .rst(rst), .en(en), 
      .Q(cout));
endmodule
