/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Mon Dec 20 23:31:18 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 3699075271 */

module homeSystem(sfd, srd, sw, sfa, st, clk, rst, fdoor, rdoor, winbuzz, 
      alarambuzz, heater, cooler, display);
   input sfd;
   input srd;
   input sw;
   input sfa;
   input [6:0]st;
   input clk;
   input rst;
   output fdoor;
   output rdoor;
   output winbuzz;
   output alarambuzz;
   output heater;
   output cooler;
   output [2:0]display;

   wire [2:0]state;
   wire [2:0]next_state;
   wire n_0_3_0;
   wire n_0_3_1;
   wire n_0_5_0;
   wire n_0_6_0;
   wire n_0_7_0;
   wire n_0_8_0;
   wire n_0_8_1;
   wire n_0_5;
   wire n_0_8_2;
   wire n_0_8_3;
   wire n_0_8_4;
   wire n_0_8_5;
   wire n_0_2;
   wire n_0_8_6;
   wire n_0_8_7;
   wire n_0_3;
   wire n_0_4;
   wire n_0_8_8;
   wire n_0_6;
   wire n_0_7;
   wire n_0_8;
   wire n_0_1_0;
   wire n_0_1_1;
   wire n_0_1_2;
   wire n_0_1_3;
   wire n_0_1_4;
   wire n_0_1_5;
   wire n_0_1_6;
   wire n_0_1_7;
   wire n_0_1_8;
   wire n_0_1_9;
   wire n_0_1_10;
   wire n_0_1_11;
   wire n_0_0_0;
   wire n_0_0_3;
   wire n_0_0_11;
   wire n_0_0_12;
   wire n_0_0_23;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_0_4;
   wire n_0_0_5;
   wire n_0_0_15;
   wire n_0_0_16;
   wire n_0_0_17;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_6;
   wire n_0_0_22;
   wire n_0_0_24;
   wire n_0_0_25;
   wire n_0_0_27;
   wire n_0_0_28;
   wire n_0_0_7;
   wire n_0_0_31;
   wire n_0_0_32;
   wire n_0_0_33;
   wire n_0_0_34;
   wire n_0_0_35;
   wire n_0_0;
   wire n_0_0_36;
   wire n_0_0_37;
   wire n_0_0_38;
   wire n_0_0_39;
   wire n_0_0_40;
   wire n_0_0_8;
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
   wire n_0_0_60;
   wire n_0_0_61;
   wire n_0_0_62;
   wire n_0_0_63;
   wire n_0_0_64;
   wire n_0_0_65;
   wire n_0_0_66;
   wire n_0_0_67;
   wire n_0_0_9;
   wire n_0_0_72;
   wire n_0_0_73;
   wire n_0_0_74;
   wire n_0_0_75;
   wire n_0_1;
   wire n_0_0_76;
   wire n_0_0_77;
   wire n_0_0_78;
   wire n_0_0_10;
   wire n_0_0_80;
   wire n_0_0_81;
   wire n_0_0_82;
   wire n_0_0_83;
   wire n_0_0_84;
   wire n_0_0_85;
   wire n_0_0_86;
   wire n_0_0_87;
   wire n_0_0_13;
   wire n_0_0_89;
   wire n_0_0_90;
   wire n_0_0_91;
   wire n_0_0_92;
   wire n_0_0_93;
   wire n_0_0_14;
   wire n_0_0_21;
   wire n_0_0_26;
   wire n_0_0_30;
   wire n_0_0_41;
   wire n_0_0_42;
   wire n_0_0_43;
   wire n_0_0_44;
   wire n_0_0_68;
   wire n_0_0_69;
   wire n_0_0_70;
   wire n_0_0_71;
   wire n_0_0_79;
   wire n_0_0_88;
   wire n_0_0_94;
   wire n_0_0_95;
   wire n_0_0_96;
   wire n_0_0_97;
   wire n_0_0_98;
   wire n_0_0_99;
   wire n_0_0_29;
   wire n_0_0_101;
   wire n_0_0_100;
   wire n_0_0_102;
   wire n_0_0_103;
   wire n_0_0_104;
   wire n_0_0_105;
   wire n_0_9;
   wire n_0_10;

   assign fdoor = sfd;

   DFF_X2 \state_reg[0]  (.D(n_0_6), .CK(clk), .Q(state[0]), .QN());
   DFF_X2 \state_reg[1]  (.D(n_0_7), .CK(clk), .Q(state[1]), .QN());
   DFF_X2 \state_reg[2]  (.D(n_0_8), .CK(clk), .Q(state[2]), .QN());
   DLH_X1 \next_state_reg[2]  (.D(n_0_5), .G(n_0_2), .Q(next_state[2]));
   DLH_X1 \next_state_reg[1]  (.D(n_0_4), .G(n_0_2), .Q(next_state[1]));
   DLH_X1 \next_state_reg[0]  (.D(n_0_3), .G(n_0_2), .Q(next_state[0]));
   NOR3_X1 i_0_3_0 (.A1(srd), .A2(sfa), .A3(sw), .ZN(n_0_3_0));
   NAND2_X1 i_0_3_1 (.A1(n_0_0), .A2(n_0_3_0), .ZN(n_0_3_1));
   NOR2_X1 i_0_3_2 (.A1(n_0_3_1), .A2(sfd), .ZN(cooler));
   INV_X1 i_0_5_0 (.A(sfa), .ZN(n_0_5_0));
   NOR3_X1 i_0_5_1 (.A1(n_0_5_0), .A2(srd), .A3(sfd), .ZN(alarambuzz));
   INV_X1 i_0_6_0 (.A(sw), .ZN(n_0_6_0));
   NOR4_X1 i_0_6_1 (.A1(n_0_6_0), .A2(srd), .A3(sfd), .A4(sfa), .ZN(winbuzz));
   INV_X1 i_0_7_0 (.A(srd), .ZN(n_0_7_0));
   NOR2_X1 i_0_7_1 (.A1(n_0_7_0), .A2(sfd), .ZN(rdoor));
   NOR2_X1 i_0_8_0 (.A1(n_0_9), .A2(srd), .ZN(n_0_8_0));
   INV_X1 i_0_8_1 (.A(n_0_10), .ZN(n_0_8_1));
   AND2_X1 i_0_8_2 (.A1(n_0_8_0), .A2(n_0_8_1), .ZN(n_0_5));
   INV_X1 i_0_8_3 (.A(n_0_5), .ZN(n_0_8_2));
   NOR2_X1 i_0_8_4 (.A1(n_0_8_2), .A2(sw), .ZN(n_0_8_3));
   INV_X1 i_0_8_5 (.A(n_0_1), .ZN(n_0_8_4));
   NAND2_X1 i_0_8_6 (.A1(n_0_8_3), .A2(n_0_8_4), .ZN(n_0_8_5));
   OR2_X1 i_0_8_7 (.A1(n_0_8_5), .A2(n_0_0), .ZN(n_0_2));
   INV_X1 i_0_8_8 (.A(n_0_9), .ZN(n_0_8_6));
   INV_X1 i_0_8_9 (.A(n_0_8_3), .ZN(n_0_8_7));
   OAI221_X1 i_0_8_10 (.A(n_0_8_1), .B1(n_0_8_6), .B2(srd), .C1(n_0_8_7), 
      .C2(n_0_8_4), .ZN(n_0_3));
   OAI21_X1 i_0_8_11 (.A(n_0_8_5), .B1(n_0_10), .B2(n_0_8_0), .ZN(n_0_4));
   INV_X1 i_0_8_12 (.A(rst), .ZN(n_0_8_8));
   AND2_X1 i_0_8_13 (.A1(n_0_8_8), .A2(next_state[0]), .ZN(n_0_6));
   AND2_X1 i_0_8_14 (.A1(n_0_8_8), .A2(next_state[1]), .ZN(n_0_7));
   AND2_X1 i_0_8_15 (.A1(n_0_8_8), .A2(next_state[2]), .ZN(n_0_8));
   INV_X1 i_0_1_0 (.A(st[2]), .ZN(n_0_1_0));
   INV_X1 i_0_1_1 (.A(st[3]), .ZN(n_0_1_1));
   INV_X1 i_0_1_2 (.A(st[1]), .ZN(n_0_1_2));
   INV_X1 i_0_1_3 (.A(srd), .ZN(n_0_1_3));
   INV_X1 i_0_1_4 (.A(sfa), .ZN(n_0_1_4));
   INV_X1 i_0_1_5 (.A(sw), .ZN(n_0_1_5));
   NAND3_X1 i_0_1_6 (.A1(n_0_1_3), .A2(n_0_1_4), .A3(n_0_1_5), .ZN(n_0_1_6));
   INV_X1 i_0_1_7 (.A(st[6]), .ZN(n_0_1_7));
   INV_X1 i_0_1_8 (.A(sfd), .ZN(n_0_1_8));
   NAND2_X1 i_0_1_9 (.A1(n_0_1_7), .A2(n_0_1_8), .ZN(n_0_1_9));
   NAND3_X1 i_0_1_10 (.A1(n_0_1_1), .A2(n_0_1_2), .A3(n_0_1_0), .ZN(n_0_1_10));
   AND3_X1 i_0_1_11 (.A1(n_0_1_10), .A2(st[5]), .A3(st[4]), .ZN(n_0_1_11));
   NOR3_X1 i_0_1_12 (.A1(n_0_1_11), .A2(n_0_1_6), .A3(n_0_1_9), .ZN(heater));
   OAI21_X1 i_0_0_0 (.A(n_0_0_32), .B1(n_0_0_19), .B2(srd), .ZN(n_0_0_0));
   NAND2_X1 i_0_0_3 (.A1(n_0_0_39), .A2(n_0_0_11), .ZN(n_0_0_3));
   OAI21_X1 i_0_0_1 (.A(state[2]), .B1(n_0_0_12), .B2(n_0_0_99), .ZN(n_0_0_11));
   INV_X1 i_0_0_2 (.A(state[0]), .ZN(n_0_0_12));
   INV_X1 i_0_0_9 (.A(n_0_0_0), .ZN(n_0_0_23));
   NAND3_X1 i_0_0_4 (.A1(n_0_0_26), .A2(n_0_0_67), .A3(n_0_0_23), .ZN(display[0]));
   INV_X1 i_0_0_11 (.A(st[6]), .ZN(n_0_0_1));
   INV_X1 i_0_0_12 (.A(st[1]), .ZN(n_0_0_2));
   INV_X1 i_0_0_14 (.A(st[0]), .ZN(n_0_0_4));
   INV_X1 i_0_0_16 (.A(st[2]), .ZN(n_0_0_5));
   INV_X1 i_0_0_18 (.A(st[6]), .ZN(n_0_0_15));
   NAND2_X1 i_0_0_27 (.A1(n_0_0_3), .A2(n_0_0_32), .ZN(n_0_0_16));
   INV_X1 i_0_0_28 (.A(n_0_0_16), .ZN(n_0_0_17));
   NAND2_X1 i_0_0_26 (.A1(n_0_0_31), .A2(n_0_0_17), .ZN(n_0_0_18));
   NAND3_X1 i_0_0_29 (.A1(n_0_0_78), .A2(n_0_0_38), .A3(n_0_0_18), .ZN(
      display[2]));
   INV_X1 i_0_0_33 (.A(sfa), .ZN(n_0_0_19));
   INV_X1 i_0_0_22 (.A(sfd), .ZN(n_0_0_20));
   OAI21_X1 i_0_0_23 (.A(n_0_0_20), .B1(srd), .B2(sfa), .ZN(n_0_0_6));
   INV_X1 i_0_0_24 (.A(sw), .ZN(n_0_0_22));
   NAND2_X1 i_0_0_25 (.A1(n_0_0_22), .A2(n_0_0_20), .ZN(n_0_0_24));
   INV_X1 i_0_0_38 (.A(st[6]), .ZN(n_0_0_25));
   INV_X1 i_0_0_35 (.A(n_0_0_25), .ZN(n_0_0_27));
   NOR2_X1 i_0_0_36 (.A1(n_0_0_27), .A2(n_0_0_42), .ZN(n_0_0_28));
   NOR2_X1 i_0_0_15 (.A1(n_0_0_24), .A2(n_0_0_28), .ZN(n_0_0_7));
   INV_X1 i_0_0_48 (.A(n_0_0_90), .ZN(n_0_0_31));
   INV_X1 i_0_0_49 (.A(sfd), .ZN(n_0_0_32));
   INV_X1 i_0_0_56 (.A(st[4]), .ZN(n_0_0_33));
   INV_X1 i_0_0_57 (.A(st[3]), .ZN(n_0_0_34));
   INV_X1 i_0_0_58 (.A(st[5]), .ZN(n_0_0_35));
   AOI21_X1 i_0_0_61 (.A(n_0_0_15), .B1(n_0_0_72), .B2(n_0_0_73), .ZN(n_0_0));
   INV_X1 i_0_0_64 (.A(n_0_0_15), .ZN(n_0_0_36));
   INV_X1 i_0_0_65 (.A(sfd), .ZN(n_0_0_37));
   NAND2_X1 i_0_0_55 (.A1(n_0_0_89), .A2(n_0_0_93), .ZN(n_0_0_38));
   INV_X1 i_0_0_69 (.A(sw), .ZN(n_0_0_39));
   INV_X1 i_0_0_70 (.A(srd), .ZN(n_0_0_40));
   NAND2_X1 i_0_0_5 (.A1(n_0_0_1), .A2(n_0_0_29), .ZN(n_0_0_8));
   NAND4_X1 i_0_0_44 (.A1(n_0_0_48), .A2(n_0_0_49), .A3(n_0_0_50), .A4(n_0_0_51), 
      .ZN(n_0_0_45));
   NAND2_X1 i_0_0_45 (.A1(n_0_0_52), .A2(n_0_0_48), .ZN(n_0_0_46));
   NAND2_X1 i_0_0_73 (.A1(n_0_0_53), .A2(n_0_0_54), .ZN(n_0_0_47));
   INV_X1 i_0_0_78 (.A(st[6]), .ZN(n_0_0_48));
   INV_X1 i_0_0_79 (.A(st[3]), .ZN(n_0_0_49));
   INV_X1 i_0_0_80 (.A(st[2]), .ZN(n_0_0_50));
   INV_X1 i_0_0_81 (.A(st[1]), .ZN(n_0_0_51));
   NAND2_X1 i_0_0_82 (.A1(st[5]), .A2(st[4]), .ZN(n_0_0_52));
   INV_X1 i_0_0_83 (.A(srd), .ZN(n_0_0_53));
   INV_X1 i_0_0_84 (.A(sw), .ZN(n_0_0_54));
   INV_X1 i_0_0_85 (.A(st[2]), .ZN(n_0_0_55));
   INV_X1 i_0_0_86 (.A(st[1]), .ZN(n_0_0_56));
   INV_X1 i_0_0_87 (.A(st[3]), .ZN(n_0_0_57));
   NAND3_X1 i_0_0_88 (.A1(n_0_0_55), .A2(n_0_0_56), .A3(n_0_0_57), .ZN(n_0_0_58));
   NAND2_X1 i_0_0_89 (.A1(st[4]), .A2(st[5]), .ZN(n_0_0_59));
   INV_X1 i_0_0_90 (.A(n_0_0_59), .ZN(n_0_0_60));
   NAND2_X1 i_0_0_91 (.A1(n_0_0_58), .A2(n_0_0_60), .ZN(n_0_0_61));
   INV_X1 i_0_0_92 (.A(srd), .ZN(n_0_0_62));
   INV_X1 i_0_0_93 (.A(sw), .ZN(n_0_0_63));
   INV_X1 i_0_0_94 (.A(st[6]), .ZN(n_0_0_64));
   NAND3_X1 i_0_0_95 (.A1(n_0_0_62), .A2(n_0_0_63), .A3(n_0_0_64), .ZN(n_0_0_65));
   INV_X1 i_0_0_96 (.A(n_0_0_65), .ZN(n_0_0_66));
   NAND2_X1 i_0_0_97 (.A1(n_0_0_61), .A2(n_0_0_66), .ZN(n_0_0_67));
   INV_X1 i_0_0_68 (.A(n_0_0_47), .ZN(n_0_0_9));
   INV_X1 i_0_0_46 (.A(n_0_0_74), .ZN(n_0_0_72));
   NAND3_X1 i_0_0_47 (.A1(st[2]), .A2(st[1]), .A3(st[0]), .ZN(n_0_0_73));
   NAND3_X1 i_0_0_50 (.A1(n_0_0_33), .A2(n_0_0_34), .A3(n_0_0_35), .ZN(n_0_0_74));
   NAND3_X1 i_0_0_51 (.A1(st[1]), .A2(st[0]), .A3(st[2]), .ZN(n_0_0_75));
   NAND2_X1 i_0_0_62 (.A1(n_0_0_45), .A2(n_0_0_46), .ZN(n_0_1));
   NAND2_X1 i_0_0_71 (.A1(n_0_0_45), .A2(n_0_0_46), .ZN(n_0_0_76));
   NOR2_X1 i_0_0_72 (.A1(n_0_0_90), .A2(sfd), .ZN(n_0_0_77));
   NAND2_X1 i_0_0_100 (.A1(n_0_0_76), .A2(n_0_0_77), .ZN(n_0_0_78));
   NAND3_X1 i_0_0_19 (.A1(n_0_0_80), .A2(n_0_0_81), .A3(n_0_0_82), .ZN(n_0_0_10));
   INV_X1 i_0_0_20 (.A(st[5]), .ZN(n_0_0_80));
   INV_X1 i_0_0_21 (.A(st[4]), .ZN(n_0_0_81));
   INV_X1 i_0_0_32 (.A(st[3]), .ZN(n_0_0_82));
   INV_X1 i_0_0_34 (.A(st[5]), .ZN(n_0_0_83));
   NAND2_X1 i_0_0_17 (.A1(n_0_0_68), .A2(n_0_0_83), .ZN(n_0_0_84));
   INV_X1 i_0_0_31 (.A(n_0_0_84), .ZN(n_0_0_85));
   NOR2_X1 i_0_0_43 (.A1(st[3]), .A2(st[4]), .ZN(n_0_0_86));
   NAND3_X1 i_0_0_52 (.A1(st[1]), .A2(st[0]), .A3(st[2]), .ZN(n_0_0_87));
   NAND3_X1 i_0_0_37 (.A1(n_0_0_85), .A2(n_0_0_86), .A3(n_0_0_87), .ZN(n_0_0_13));
   NAND4_X1 i_0_0_59 (.A1(n_0_0_75), .A2(n_0_0_34), .A3(n_0_0_35), .A4(n_0_0_33), 
      .ZN(n_0_0_89));
   NAND2_X1 i_0_0_8 (.A1(n_0_0_19), .A2(n_0_0_40), .ZN(n_0_0_90));
   INV_X1 i_0_0_30 (.A(n_0_0_36), .ZN(n_0_0_91));
   NAND3_X1 i_0_0_54 (.A1(n_0_0_19), .A2(n_0_0_40), .A3(n_0_0_37), .ZN(n_0_0_92));
   NOR2_X1 i_0_0_60 (.A1(n_0_0_91), .A2(n_0_0_92), .ZN(n_0_0_93));
   NAND2_X1 i_0_0_39 (.A1(n_0_0_7), .A2(n_0_0_13), .ZN(n_0_0_14));
   OAI21_X1 i_0_0_67 (.A(n_0_0_6), .B1(n_0_0_14), .B2(n_0_1), .ZN(display[1]));
   NAND2_X1 i_0_0_6 (.A1(n_0_0_8), .A2(n_0_0_10), .ZN(n_0_0_21));
   NAND3_X1 i_0_0_7 (.A1(n_0_0_69), .A2(n_0_0_21), .A3(n_0_0_9), .ZN(n_0_0_26));
   NAND2_X1 i_0_0_10 (.A1(n_0_0_29), .A2(n_0_0_5), .ZN(n_0_0_30));
   NAND2_X1 i_0_0_13 (.A1(n_0_0_1), .A2(n_0_0_94), .ZN(n_0_0_41));
   AOI21_X1 i_0_0_66 (.A(n_0_0_99), .B1(state[2]), .B2(state[0]), .ZN(n_0_0_42));
   NAND2_X1 i_0_0_77 (.A1(state[0]), .A2(state[2]), .ZN(n_0_0_43));
   INV_X1 i_0_0_98 (.A(n_0_0_99), .ZN(n_0_0_44));
   NAND2_X1 i_0_0_99 (.A1(n_0_0_43), .A2(n_0_0_44), .ZN(n_0_0_68));
   NAND4_X1 i_0_0_40 (.A1(n_0_0_41), .A2(n_0_0_30), .A3(n_0_0_105), .A4(n_0_0_71), 
      .ZN(n_0_0_69));
   AOI21_X1 i_0_0_41 (.A(n_0_0_95), .B1(n_0_0_96), .B2(n_0_0_97), .ZN(n_0_0_70));
   NAND2_X1 i_0_0_42 (.A1(n_0_0_4), .A2(n_0_0_70), .ZN(n_0_0_71));
   NAND2_X1 i_0_0_53 (.A1(state[2]), .A2(state[1]), .ZN(n_0_0_79));
   NAND2_X1 i_0_0_63 (.A1(n_0_0_79), .A2(state[0]), .ZN(n_0_0_88));
   INV_X1 i_0_0_74 (.A(n_0_0_88), .ZN(n_0_0_94));
   INV_X1 i_0_0_75 (.A(state[0]), .ZN(n_0_0_95));
   INV_X1 i_0_0_76 (.A(n_0_0_98), .ZN(n_0_0_96));
   INV_X1 i_0_0_101 (.A(n_0_0_99), .ZN(n_0_0_97));
   INV_X1 i_0_0_103 (.A(state[2]), .ZN(n_0_0_98));
   INV_X1 i_0_0_104 (.A(state[1]), .ZN(n_0_0_99));
   INV_X1 i_0_0_102 (.A(n_0_0_101), .ZN(n_0_0_29));
   NAND2_X1 i_0_0_105 (.A1(n_0_0_100), .A2(state[0]), .ZN(n_0_0_101));
   NAND2_X1 i_0_0_106 (.A1(state[2]), .A2(state[1]), .ZN(n_0_0_100));
   NAND2_X1 i_0_0_107 (.A1(state[2]), .A2(state[1]), .ZN(n_0_0_102));
   NAND2_X1 i_0_0_108 (.A1(n_0_0_102), .A2(state[0]), .ZN(n_0_0_103));
   INV_X1 i_0_0_109 (.A(n_0_0_103), .ZN(n_0_0_104));
   NAND2_X1 i_0_0_110 (.A1(n_0_0_104), .A2(n_0_0_2), .ZN(n_0_0_105));
   BUF_X1 rt_shieldBuf__1 (.A(sfa), .Z(n_0_9));
   BUF_X1 rt_shieldBuf__1__1__0 (.A(sfd), .Z(n_0_10));
endmodule
