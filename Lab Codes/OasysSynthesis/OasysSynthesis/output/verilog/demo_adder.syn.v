/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Sat Oct 30 21:13:03 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 2665014624 */

module carry_lookahead_adder(i_add1, i_add2, o_result);
   input [15:0]i_add1;
   input [15:0]i_add2;
   output [16:0]o_result;

   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_3;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_0_6;
   wire n_0_0_7;
   wire n_0_0_8;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_13;
   wire n_0_0_14;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_0_22;
   wire n_0_0_23;
   wire n_0_0_24;
   wire n_0_0_25;
   wire n_0_0_26;
   wire n_0_0_27;
   wire n_0_0_28;
   wire n_0_0_29;
   wire n_0_0_30;
   wire n_0_0_31;
   wire n_0_0_32;
   wire n_0_0_33;
   wire n_0_0_34;
   wire n_0_0_35;
   wire n_0_0_36;
   wire n_0_0_37;
   wire n_0_0_38;
   wire n_0_0_39;
   wire n_0_0_40;
   wire n_0_0_41;
   wire n_0_0_42;
   wire n_0_0_43;
   wire n_0_0_44;
   wire n_0_0_45;
   wire n_0_0_46;
   wire n_0_0_47;
   wire n_0_0_48;
   wire n_0_0_49;
   wire n_0_0_50;
   wire n_0_0_51;
   wire n_0_0_52;
   wire n_0_0_53;
   wire n_0_0_54;
   wire n_0_0_55;
   wire n_0_0_56;
   wire n_0_0_57;
   wire n_0_0_58;
   wire n_0_0_59;

   XOR2_X1_LVT i_0_0_0 (.A(i_add2[0]), .B(i_add1[0]), .Z(o_result[0]));
   XNOR2_X1_LVT i_0_0_1 (.A(n_0_0_57), .B(n_0_0_0), .ZN(o_result[1]));
   XOR2_X1_LVT i_0_0_2 (.A(i_add2[1]), .B(i_add1[1]), .Z(n_0_0_0));
   XNOR2_X1_LVT i_0_0_3 (.A(n_0_0_54), .B(n_0_0_1), .ZN(o_result[2]));
   XNOR2_X1_LVT i_0_0_4 (.A(i_add2[2]), .B(i_add1[2]), .ZN(n_0_0_1));
   XNOR2_X1_LVT i_0_0_5 (.A(n_0_0_51), .B(n_0_0_2), .ZN(o_result[3]));
   XOR2_X1_LVT i_0_0_6 (.A(i_add2[3]), .B(i_add1[3]), .Z(n_0_0_2));
   XNOR2_X1_LVT i_0_0_7 (.A(n_0_0_48), .B(n_0_0_3), .ZN(o_result[4]));
   XNOR2_X1_LVT i_0_0_8 (.A(i_add2[4]), .B(i_add1[4]), .ZN(n_0_0_3));
   XNOR2_X1_LVT i_0_0_9 (.A(n_0_0_44), .B(n_0_0_4), .ZN(o_result[5]));
   XNOR2_X1_LVT i_0_0_10 (.A(i_add2[5]), .B(i_add1[5]), .ZN(n_0_0_4));
   XNOR2_X1_LVT i_0_0_11 (.A(n_0_0_42), .B(n_0_0_5), .ZN(o_result[6]));
   XNOR2_X1_LVT i_0_0_12 (.A(i_add2[6]), .B(i_add1[6]), .ZN(n_0_0_5));
   XNOR2_X1_LVT i_0_0_13 (.A(n_0_0_40), .B(n_0_0_6), .ZN(o_result[7]));
   XNOR2_X1_LVT i_0_0_14 (.A(i_add2[7]), .B(i_add1[7]), .ZN(n_0_0_6));
   XNOR2_X1_LVT i_0_0_15 (.A(n_0_0_37), .B(n_0_0_7), .ZN(o_result[8]));
   XNOR2_X1_LVT i_0_0_16 (.A(i_add2[8]), .B(i_add1[8]), .ZN(n_0_0_7));
   XNOR2_X1_LVT i_0_0_17 (.A(n_0_0_34), .B(n_0_0_8), .ZN(o_result[9]));
   XOR2_X1_LVT i_0_0_18 (.A(i_add2[9]), .B(i_add1[9]), .Z(n_0_0_8));
   XNOR2_X1_LVT i_0_0_19 (.A(n_0_0_30), .B(n_0_0_9), .ZN(o_result[10]));
   XNOR2_X1_LVT i_0_0_20 (.A(i_add2[10]), .B(i_add1[10]), .ZN(n_0_0_9));
   XNOR2_X1_LVT i_0_0_21 (.A(n_0_0_28), .B(n_0_0_10), .ZN(o_result[11]));
   XNOR2_X1_LVT i_0_0_22 (.A(i_add2[11]), .B(i_add1[11]), .ZN(n_0_0_10));
   XNOR2_X1_LVT i_0_0_23 (.A(n_0_0_26), .B(n_0_0_11), .ZN(o_result[12]));
   XNOR2_X1_LVT i_0_0_24 (.A(i_add2[12]), .B(i_add1[12]), .ZN(n_0_0_11));
   XNOR2_X1_LVT i_0_0_25 (.A(n_0_0_23), .B(n_0_0_12), .ZN(o_result[13]));
   XNOR2_X1_LVT i_0_0_26 (.A(i_add2[13]), .B(i_add1[13]), .ZN(n_0_0_12));
   XNOR2_X1_LVT i_0_0_27 (.A(n_0_0_20), .B(n_0_0_13), .ZN(o_result[14]));
   XOR2_X1_LVT i_0_0_28 (.A(i_add2[14]), .B(i_add1[14]), .Z(n_0_0_13));
   XNOR2_X1_LVT i_0_0_29 (.A(n_0_0_16), .B(n_0_0_14), .ZN(o_result[15]));
   XNOR2_X1_LVT i_0_0_30 (.A(i_add2[15]), .B(i_add1[15]), .ZN(n_0_0_14));
   NAND2_X1_LVT i_0_0_31 (.A1(n_0_0_19), .A2(n_0_0_15), .ZN(o_result[16]));
   OAI21_X1_LVT i_0_0_32 (.A(n_0_0_16), .B1(i_add1[15]), .B2(i_add2[15]), 
      .ZN(n_0_0_15));
   OAI21_X1_LVT i_0_0_33 (.A(n_0_0_18), .B1(n_0_0_20), .B2(n_0_0_17), .ZN(
      n_0_0_16));
   NOR2_X1_LVT i_0_0_34 (.A1(i_add2[14]), .A2(i_add1[14]), .ZN(n_0_0_17));
   NAND2_X1_LVT i_0_0_35 (.A1(i_add2[14]), .A2(i_add1[14]), .ZN(n_0_0_18));
   NAND2_X1_LVT i_0_0_36 (.A1(i_add2[15]), .A2(i_add1[15]), .ZN(n_0_0_19));
   OAI21_X1_LVT i_0_0_37 (.A(n_0_0_21), .B1(i_add1[13]), .B2(i_add2[13]), 
      .ZN(n_0_0_20));
   INV_X1_LVT i_0_0_38 (.A(n_0_0_22), .ZN(n_0_0_21));
   AOI21_X1_LVT i_0_0_39 (.A(n_0_0_23), .B1(i_add1[13]), .B2(i_add2[13]), 
      .ZN(n_0_0_22));
   NAND2_X1_LVT i_0_0_40 (.A1(n_0_0_25), .A2(n_0_0_24), .ZN(n_0_0_23));
   OAI21_X1_LVT i_0_0_41 (.A(n_0_0_26), .B1(i_add1[12]), .B2(i_add2[12]), 
      .ZN(n_0_0_24));
   NAND2_X1_LVT i_0_0_42 (.A1(i_add2[12]), .A2(i_add1[12]), .ZN(n_0_0_25));
   NAND2_X1_LVT i_0_0_43 (.A1(n_0_0_59), .A2(n_0_0_27), .ZN(n_0_0_26));
   OAI21_X1_LVT i_0_0_44 (.A(n_0_0_28), .B1(i_add1[11]), .B2(i_add2[11]), 
      .ZN(n_0_0_27));
   NAND2_X1_LVT i_0_0_45 (.A1(n_0_0_33), .A2(n_0_0_29), .ZN(n_0_0_28));
   OAI21_X1_LVT i_0_0_46 (.A(n_0_0_30), .B1(i_add1[10]), .B2(i_add2[10]), 
      .ZN(n_0_0_29));
   OAI21_X1_LVT i_0_0_47 (.A(n_0_0_32), .B1(n_0_0_34), .B2(n_0_0_31), .ZN(
      n_0_0_30));
   NOR2_X1_LVT i_0_0_48 (.A1(i_add2[9]), .A2(i_add1[9]), .ZN(n_0_0_31));
   NAND2_X1_LVT i_0_0_49 (.A1(i_add2[9]), .A2(i_add1[9]), .ZN(n_0_0_32));
   NAND2_X1_LVT i_0_0_50 (.A1(i_add2[10]), .A2(i_add1[10]), .ZN(n_0_0_33));
   OAI21_X1_LVT i_0_0_51 (.A(n_0_0_35), .B1(i_add1[8]), .B2(i_add2[8]), .ZN(
      n_0_0_34));
   INV_X1_LVT i_0_0_52 (.A(n_0_0_36), .ZN(n_0_0_35));
   AOI21_X1_LVT i_0_0_53 (.A(n_0_0_37), .B1(i_add1[8]), .B2(i_add2[8]), .ZN(
      n_0_0_36));
   NAND2_X1_LVT i_0_0_54 (.A1(n_0_0_39), .A2(n_0_0_38), .ZN(n_0_0_37));
   OAI21_X1_LVT i_0_0_55 (.A(n_0_0_40), .B1(i_add1[7]), .B2(i_add2[7]), .ZN(
      n_0_0_38));
   NAND2_X1_LVT i_0_0_56 (.A1(i_add2[7]), .A2(i_add1[7]), .ZN(n_0_0_39));
   NAND2_X1_LVT i_0_0_57 (.A1(n_0_0_58), .A2(n_0_0_41), .ZN(n_0_0_40));
   OAI21_X1_LVT i_0_0_58 (.A(n_0_0_42), .B1(i_add1[6]), .B2(i_add2[6]), .ZN(
      n_0_0_41));
   NAND2_X1_LVT i_0_0_59 (.A1(n_0_0_47), .A2(n_0_0_43), .ZN(n_0_0_42));
   OAI21_X1_LVT i_0_0_60 (.A(n_0_0_44), .B1(i_add1[5]), .B2(i_add2[5]), .ZN(
      n_0_0_43));
   NAND2_X1_LVT i_0_0_61 (.A1(n_0_0_46), .A2(n_0_0_45), .ZN(n_0_0_44));
   OAI21_X1_LVT i_0_0_62 (.A(n_0_0_48), .B1(i_add1[4]), .B2(i_add2[4]), .ZN(
      n_0_0_45));
   NAND2_X1_LVT i_0_0_63 (.A1(i_add2[4]), .A2(i_add1[4]), .ZN(n_0_0_46));
   NAND2_X1_LVT i_0_0_64 (.A1(i_add2[5]), .A2(i_add1[5]), .ZN(n_0_0_47));
   OAI21_X1_LVT i_0_0_65 (.A(n_0_0_50), .B1(n_0_0_51), .B2(n_0_0_49), .ZN(
      n_0_0_48));
   NOR2_X1_LVT i_0_0_66 (.A1(i_add2[3]), .A2(i_add1[3]), .ZN(n_0_0_49));
   NAND2_X1_LVT i_0_0_67 (.A1(i_add2[3]), .A2(i_add1[3]), .ZN(n_0_0_50));
   OAI21_X1_LVT i_0_0_68 (.A(n_0_0_52), .B1(i_add1[2]), .B2(i_add2[2]), .ZN(
      n_0_0_51));
   INV_X1_LVT i_0_0_69 (.A(n_0_0_53), .ZN(n_0_0_52));
   AOI21_X1_LVT i_0_0_70 (.A(n_0_0_54), .B1(i_add1[2]), .B2(i_add2[2]), .ZN(
      n_0_0_53));
   OAI21_X1_LVT i_0_0_71 (.A(n_0_0_56), .B1(n_0_0_55), .B2(n_0_0_57), .ZN(
      n_0_0_54));
   NOR2_X1_LVT i_0_0_72 (.A1(i_add2[1]), .A2(i_add1[1]), .ZN(n_0_0_55));
   NAND2_X1_LVT i_0_0_73 (.A1(i_add2[1]), .A2(i_add1[1]), .ZN(n_0_0_56));
   NAND2_X1_LVT i_0_0_74 (.A1(i_add2[0]), .A2(i_add1[0]), .ZN(n_0_0_57));
   NAND2_X1_LVT i_0_0_75 (.A1(i_add2[6]), .A2(i_add1[6]), .ZN(n_0_0_58));
   NAND2_X1_LVT i_0_0_76 (.A1(i_add2[11]), .A2(i_add1[11]), .ZN(n_0_0_59));
endmodule
