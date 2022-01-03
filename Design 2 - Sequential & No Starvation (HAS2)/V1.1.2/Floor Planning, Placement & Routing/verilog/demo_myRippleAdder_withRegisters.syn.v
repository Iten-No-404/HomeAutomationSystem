/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Thu Dec 23 20:59:11 2021
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 2070603815 */

module HAS2(clk, sfd, srd, sw, sfa, st, rst, fdoor, rdoor, winbuzz, alarmbuzz, 
      heater, cooler, display);
   input clk;
   input sfd;
   input srd;
   input sw;
   input sfa;
   input [6:0]st;
   input rst;
   output fdoor;
   output rdoor;
   output winbuzz;
   output alarmbuzz;
   output heater;
   output cooler;
   output [2:0]display;

   wire [2:0]curr_state;
   wire n_0_1;
   wire n_0_17;
   wire n_0_15;
   wire n_0_14;
   wire n_0_13;
   wire n_0_12;
   wire n_0_11;
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_9;
   wire n_0_8;
   wire n_0_0_3;
   wire n_0_0_4;
   wire n_0_6;
   wire n_0_4;
   wire n_0_0_5;
   wire n_0_5;
   wire n_0_2;
   wire n_0_3;
   wire n_0_7;
   wire n_0_16;
   wire n_0_10;
   wire n_0_0_6;
   wire n_0_0;
   wire n_0_0_8;
   wire n_0_0_9;
   wire n_0_0_10;
   wire n_0_0_11;
   wire n_0_0_7;
   wire n_0_18;

   DFF_X1 \curr_state_reg[2]  (.D(n_0_10), .CK(clk), .Q(curr_state[2]), .QN());
   DFF_X1 \curr_state_reg[1]  (.D(n_0_7), .CK(clk), .Q(curr_state[1]), .QN());
   DFF_X1 \curr_state_reg[0]  (.D(n_0_2), .CK(clk), .Q(curr_state[0]), .QN());
   DLH_X1 \display_reg[2]  (.D(n_0_5), .G(n_0_6), .Q(display[2]));
   DLH_X1 \display_reg[1]  (.D(n_0_4), .G(n_0_6), .Q(display[1]));
   DLH_X1 \display_reg[0]  (.D(n_0_3), .G(n_0_6), .Q(display[0]));
   DLH_X1 cooler_reg (.D(n_0_8), .G(n_0_9), .Q(cooler));
   DLH_X1 heater_reg (.D(n_0_11), .G(n_0_12), .Q(heater));
   DLH_X1 alarmbuzz_reg (.D(n_0_13), .G(n_0_14), .Q(alarmbuzz));
   DLH_X1 winbuzz_reg (.D(n_0_15), .G(n_0_16), .Q(winbuzz));
   DLH_X1 rdoor_reg (.D(n_0_17), .G(n_0_18), .Q(rdoor));
   DLH_X1 fdoor_reg (.D(n_0_1), .G(n_0_0), .Q(fdoor));
   AND2_X1 i_0_0_0 (.A1(n_0_6), .A2(sfd), .ZN(n_0_1));
   AND2_X1 i_0_0_1 (.A1(n_0_6), .A2(srd), .ZN(n_0_17));
   AND2_X1 i_0_0_2 (.A1(n_0_6), .A2(sw), .ZN(n_0_15));
   OAI21_X1 i_0_0_3 (.A(n_0_6), .B1(n_0_0_6), .B2(curr_state[2]), .ZN(n_0_14));
   NOR3_X1 i_0_0_4 (.A1(n_0_0_6), .A2(curr_state[2]), .A3(n_0_0_10), .ZN(n_0_13));
   AOI21_X1 i_0_0_5 (.A(curr_state[1]), .B1(n_0_0_7), .B2(n_0_0_5), .ZN(n_0_12));
   NOR4_X1 i_0_0_6 (.A1(n_0_0_5), .A2(n_0_0_0), .A3(curr_state[1]), .A4(st[6]), 
      .ZN(n_0_11));
   NOR2_X1 i_0_0_7 (.A1(n_0_0_2), .A2(n_0_0_1), .ZN(n_0_0_0));
   NAND2_X1 i_0_0_8 (.A1(st[5]), .A2(st[4]), .ZN(n_0_0_1));
   NOR3_X1 i_0_0_9 (.A1(st[3]), .A2(st[2]), .A3(st[1]), .ZN(n_0_0_2));
   OAI21_X1 i_0_0_10 (.A(n_0_6), .B1(n_0_0_9), .B2(curr_state[0]), .ZN(n_0_9));
   NOR4_X1 i_0_0_11 (.A1(n_0_0_11), .A2(n_0_0_3), .A3(n_0_0_9), .A4(
      curr_state[0]), .ZN(n_0_8));
   NOR4_X1 i_0_0_12 (.A1(st[5]), .A2(st[4]), .A3(st[3]), .A4(n_0_0_4), .ZN(
      n_0_0_3));
   AND3_X1 i_0_0_13 (.A1(st[2]), .A2(st[1]), .A3(st[0]), .ZN(n_0_0_4));
   OR2_X1 i_0_0_14 (.A1(n_0_0_7), .A2(curr_state[1]), .ZN(n_0_6));
   AND2_X1 i_0_0_15 (.A1(n_0_0_5), .A2(curr_state[1]), .ZN(n_0_4));
   NAND2_X1 i_0_0_16 (.A1(curr_state[2]), .A2(curr_state[0]), .ZN(n_0_0_5));
   AND2_X1 i_0_0_17 (.A1(n_0_0_6), .A2(curr_state[2]), .ZN(n_0_5));
   NOR2_X1 i_0_0_18 (.A1(rst), .A2(n_0_3), .ZN(n_0_2));
   AND2_X1 i_0_0_19 (.A1(n_0_0_9), .A2(curr_state[0]), .ZN(n_0_3));
   AOI211_X1 i_0_0_20 (.A(rst), .B(n_0_16), .C1(n_0_0_7), .C2(curr_state[1]), 
      .ZN(n_0_7));
   NOR2_X1 i_0_0_21 (.A1(curr_state[1]), .A2(curr_state[0]), .ZN(n_0_16));
   NOR4_X1 i_0_0_22 (.A1(rst), .A2(n_0_0_8), .A3(n_0_0), .A4(n_0_18), .ZN(n_0_10));
   NAND2_X1 i_0_0_23 (.A1(curr_state[1]), .A2(curr_state[0]), .ZN(n_0_0_6));
   NOR2_X1 i_0_0_24 (.A1(curr_state[2]), .A2(curr_state[1]), .ZN(n_0_0));
   INV_X1 i_0_0_25 (.A(n_0_0_9), .ZN(n_0_0_8));
   NAND2_X1 i_0_0_26 (.A1(curr_state[2]), .A2(curr_state[1]), .ZN(n_0_0_9));
   INV_X1 i_0_0_27 (.A(sfa), .ZN(n_0_0_10));
   INV_X1 i_0_0_28 (.A(st[6]), .ZN(n_0_0_11));
   INV_X1 i_0_0_29 (.A(n_0_18), .ZN(n_0_0_7));
   NOR2_X1 i_0_0_30 (.A1(curr_state[2]), .A2(curr_state[0]), .ZN(n_0_18));
endmodule
