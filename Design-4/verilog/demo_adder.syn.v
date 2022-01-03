/*
 * Created by 
   ../bin/Linux-x86_64-O/oasysGui 19.2-p002 on Mon Jan  3 14:24:48 2022
 * (C) Mentor Graphics Corporation
 */
/* CheckSum: 1926914133 */

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
   wire n_0_0_0;
   wire n_0_0_1;
   wire n_0_0_2;
   wire n_0_5;
   wire n_0_0_3;
   wire n_0_0_4;
   wire n_0_6;
   wire n_0_0_5;
   wire n_0_0;
   wire n_0_0_6;
   wire n_0_1;
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
   wire n_0_2;
   wire n_0_3;
   wire n_0_4;
   wire n_0_0_18;
   wire n_0_0_19;
   wire n_0_0_20;
   wire n_0_0_21;
   wire n_0_0_22;

   assign fdoor = sfd;

   DFF_X1_LVT \state_reg[2]  (.D(n_0_4), .CK(clk), .Q(state[2]), .QN());
   DFF_X1_LVT \state_reg[1]  (.D(n_0_3), .CK(clk), .Q(state[1]), .QN());
   DFF_X1_LVT \state_reg[0]  (.D(n_0_2), .CK(clk), .Q(state[0]), .QN());
   DLH_X1_LVT \next_state_reg[2]  (.D(n_0_1), .G(n_0_0), .Q(next_state[2]));
   DLH_X1_LVT \next_state_reg[1]  (.D(n_0_6), .G(n_0_0), .Q(next_state[1]));
   DLH_X1_LVT \next_state_reg[0]  (.D(n_0_5), .G(n_0_0), .Q(next_state[0]));
   NOR2_X1_LVT i_0_0_0 (.A1(sfd), .A2(n_0_0_19), .ZN(rdoor));
   NOR2_X1_LVT i_0_0_1 (.A1(sfd), .A2(n_0_0_3), .ZN(alarambuzz));
   AND3_X1_LVT i_0_0_2 (.A1(n_0_0_18), .A2(n_0_1), .A3(n_0_0_15), .ZN(heater));
   NOR3_X1_LVT i_0_0_3 (.A1(sw), .A2(n_0_0_6), .A3(n_0_0_11), .ZN(cooler));
   INV_X1_LVT i_0_0_4 (.A(n_0_0_0), .ZN(display[0]));
   AOI21_X1_LVT i_0_0_5 (.A(n_0_5), .B1(state[0]), .B2(n_0_0_1), .ZN(n_0_0_0));
   AOI21_X1_LVT i_0_0_6 (.A(n_0_0_2), .B1(state[2]), .B2(state[1]), .ZN(n_0_0_1));
   NAND3_X1_LVT i_0_0_7 (.A1(n_0_0_19), .A2(n_0_0_18), .A3(n_0_0_11), .ZN(
      n_0_0_2));
   AOI21_X1_LVT i_0_0_8 (.A(winbuzz), .B1(n_0_6), .B2(n_0_0_3), .ZN(n_0_5));
   NAND2_X1_LVT i_0_0_9 (.A1(n_0_0_19), .A2(sfa), .ZN(n_0_0_3));
   NOR2_X1_LVT i_0_0_10 (.A1(n_0_0_18), .A2(n_0_0_6), .ZN(winbuzz));
   INV_X1_LVT i_0_0_11 (.A(n_0_0_4), .ZN(display[1]));
   OAI21_X1_LVT i_0_0_12 (.A(n_0_6), .B1(n_0_0), .B2(n_0_0_5), .ZN(n_0_0_4));
   AOI21_X1_LVT i_0_0_13 (.A(sfd), .B1(n_0_0_14), .B2(n_0_0_7), .ZN(n_0_6));
   AOI21_X1_LVT i_0_0_14 (.A(n_0_0_21), .B1(state[2]), .B2(state[0]), .ZN(
      n_0_0_5));
   NAND2_X1_LVT i_0_0_15 (.A1(n_0_0_9), .A2(n_0_1), .ZN(n_0_0));
   AOI21_X1_LVT i_0_0_16 (.A(n_0_0_6), .B1(n_0_0_9), .B2(n_0_0_8), .ZN(
      display[2]));
   INV_X1_LVT i_0_0_17 (.A(n_0_1), .ZN(n_0_0_6));
   NOR3_X1_LVT i_0_0_18 (.A1(srd), .A2(sfa), .A3(sfd), .ZN(n_0_1));
   NOR2_X1_LVT i_0_0_19 (.A1(srd), .A2(sfa), .ZN(n_0_0_7));
   OAI21_X1_LVT i_0_0_20 (.A(state[2]), .B1(n_0_0_21), .B2(n_0_0_20), .ZN(
      n_0_0_8));
   NOR2_X1_LVT i_0_0_21 (.A1(n_0_0_14), .A2(n_0_0_10), .ZN(n_0_0_9));
   INV_X1_LVT i_0_0_22 (.A(n_0_0_11), .ZN(n_0_0_10));
   OAI21_X1_LVT i_0_0_23 (.A(st[6]), .B1(n_0_0_13), .B2(n_0_0_12), .ZN(n_0_0_11));
   OR3_X1_LVT i_0_0_24 (.A1(st[5]), .A2(st[4]), .A3(st[3]), .ZN(n_0_0_12));
   AND3_X1_LVT i_0_0_25 (.A1(st[2]), .A2(st[1]), .A3(st[0]), .ZN(n_0_0_13));
   OR2_X1_LVT i_0_0_26 (.A1(sw), .A2(n_0_0_15), .ZN(n_0_0_14));
   AOI21_X1_LVT i_0_0_27 (.A(st[6]), .B1(n_0_0_17), .B2(n_0_0_16), .ZN(n_0_0_15));
   AND2_X1_LVT i_0_0_28 (.A1(st[5]), .A2(st[4]), .ZN(n_0_0_16));
   OR3_X1_LVT i_0_0_29 (.A1(st[3]), .A2(st[2]), .A3(st[1]), .ZN(n_0_0_17));
   AND2_X1_LVT i_0_0_30 (.A1(next_state[0]), .A2(n_0_0_22), .ZN(n_0_2));
   AND2_X1_LVT i_0_0_31 (.A1(next_state[1]), .A2(n_0_0_22), .ZN(n_0_3));
   AND2_X1_LVT i_0_0_32 (.A1(next_state[2]), .A2(n_0_0_22), .ZN(n_0_4));
   INV_X1_LVT i_0_0_33 (.A(sw), .ZN(n_0_0_18));
   INV_X1_LVT i_0_0_34 (.A(srd), .ZN(n_0_0_19));
   INV_X1_LVT i_0_0_35 (.A(state[0]), .ZN(n_0_0_20));
   INV_X1_LVT i_0_0_36 (.A(state[1]), .ZN(n_0_0_21));
   INV_X1_LVT i_0_0_37 (.A(rst), .ZN(n_0_0_22));
endmodule
