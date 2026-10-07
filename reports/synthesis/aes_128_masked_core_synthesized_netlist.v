// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.2 (win64) Build 6299465 Fri Nov 14 19:35:11 GMT 2025
// Date        : Sat Oct  3 20:43:11 2026
// Host        : LAPTOP-3FCV1ALG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode design
//               C:/Users/LENOVO/Documents/antigravity/fervent-kepler/docs/vivado_reports/aes_128_masked_core_synthesized_netlist.v
// Design      : aes_128_masked_core
// Purpose     : This is a Verilog netlist of the current design or from a specific cell of the design. The output is an
//               IEEE 1364-2001 compliant Verilog HDL file that contains netlist information obtained from the input
//               design files.
// Device      : xc7a35tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* S_DONE = "3'b010" *) (* S_IDLE = "3'b000" *) (* S_ROUND_OP = "3'b001" *) 
(* STRUCTURAL_NETLIST = "yes" *)
module aes_128_masked_core
   (clk,
    rst_n,
    start,
    plaintext,
    key,
    mask_in,
    ciphertext,
    busy,
    done);
  input clk;
  input rst_n;
  input start;
  input [127:0]plaintext;
  input [127:0]key;
  input [127:0]mask_in;
  output [127:0]ciphertext;
  output busy;
  output done;

  wire \FSM_onehot_current_state[1]_rep__0_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_rep__1_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_rep_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_3_n_0 ;
  wire \FSM_onehot_current_state_reg[1]_rep__0_n_0 ;
  wire \FSM_onehot_current_state_reg[1]_rep__1_n_0 ;
  wire \FSM_onehot_current_state_reg[1]_rep_n_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire busy;
  wire busy_OBUF;
  wire busy_i_1_n_0;
  wire busy_i_2_n_0;
  wire [127:0]ciphertext;
  wire [127:0]ciphertext0;
  wire [127:0]ciphertext_OBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]current_state;
  wire [2:1]current_state__0;
  wire done;
  wire done_OBUF;
  wire [124:9]in9;
  wire [127:0]key;
  wire [127:0]key_IBUF;
  wire \key_reg_reg_n_0_[0] ;
  wire \key_reg_reg_n_0_[100] ;
  wire \key_reg_reg_n_0_[101] ;
  wire \key_reg_reg_n_0_[102] ;
  wire \key_reg_reg_n_0_[103] ;
  wire \key_reg_reg_n_0_[104] ;
  wire \key_reg_reg_n_0_[105] ;
  wire \key_reg_reg_n_0_[106] ;
  wire \key_reg_reg_n_0_[107] ;
  wire \key_reg_reg_n_0_[108] ;
  wire \key_reg_reg_n_0_[109] ;
  wire \key_reg_reg_n_0_[10] ;
  wire \key_reg_reg_n_0_[110] ;
  wire \key_reg_reg_n_0_[111] ;
  wire \key_reg_reg_n_0_[112] ;
  wire \key_reg_reg_n_0_[113] ;
  wire \key_reg_reg_n_0_[114] ;
  wire \key_reg_reg_n_0_[115] ;
  wire \key_reg_reg_n_0_[116] ;
  wire \key_reg_reg_n_0_[117] ;
  wire \key_reg_reg_n_0_[118] ;
  wire \key_reg_reg_n_0_[119] ;
  wire \key_reg_reg_n_0_[11] ;
  wire \key_reg_reg_n_0_[120] ;
  wire \key_reg_reg_n_0_[121] ;
  wire \key_reg_reg_n_0_[122] ;
  wire \key_reg_reg_n_0_[123] ;
  wire \key_reg_reg_n_0_[124] ;
  wire \key_reg_reg_n_0_[125] ;
  wire \key_reg_reg_n_0_[126] ;
  wire \key_reg_reg_n_0_[127] ;
  wire \key_reg_reg_n_0_[12] ;
  wire \key_reg_reg_n_0_[13] ;
  wire \key_reg_reg_n_0_[14] ;
  wire \key_reg_reg_n_0_[15] ;
  wire \key_reg_reg_n_0_[16] ;
  wire \key_reg_reg_n_0_[17] ;
  wire \key_reg_reg_n_0_[18] ;
  wire \key_reg_reg_n_0_[19] ;
  wire \key_reg_reg_n_0_[1] ;
  wire \key_reg_reg_n_0_[20] ;
  wire \key_reg_reg_n_0_[21] ;
  wire \key_reg_reg_n_0_[22] ;
  wire \key_reg_reg_n_0_[23] ;
  wire \key_reg_reg_n_0_[24] ;
  wire \key_reg_reg_n_0_[25] ;
  wire \key_reg_reg_n_0_[26] ;
  wire \key_reg_reg_n_0_[27] ;
  wire \key_reg_reg_n_0_[28] ;
  wire \key_reg_reg_n_0_[29] ;
  wire \key_reg_reg_n_0_[2] ;
  wire \key_reg_reg_n_0_[30] ;
  wire \key_reg_reg_n_0_[31] ;
  wire \key_reg_reg_n_0_[32] ;
  wire \key_reg_reg_n_0_[33] ;
  wire \key_reg_reg_n_0_[34] ;
  wire \key_reg_reg_n_0_[35] ;
  wire \key_reg_reg_n_0_[36] ;
  wire \key_reg_reg_n_0_[37] ;
  wire \key_reg_reg_n_0_[38] ;
  wire \key_reg_reg_n_0_[39] ;
  wire \key_reg_reg_n_0_[3] ;
  wire \key_reg_reg_n_0_[40] ;
  wire \key_reg_reg_n_0_[41] ;
  wire \key_reg_reg_n_0_[42] ;
  wire \key_reg_reg_n_0_[43] ;
  wire \key_reg_reg_n_0_[44] ;
  wire \key_reg_reg_n_0_[45] ;
  wire \key_reg_reg_n_0_[46] ;
  wire \key_reg_reg_n_0_[47] ;
  wire \key_reg_reg_n_0_[48] ;
  wire \key_reg_reg_n_0_[49] ;
  wire \key_reg_reg_n_0_[4] ;
  wire \key_reg_reg_n_0_[50] ;
  wire \key_reg_reg_n_0_[51] ;
  wire \key_reg_reg_n_0_[52] ;
  wire \key_reg_reg_n_0_[53] ;
  wire \key_reg_reg_n_0_[54] ;
  wire \key_reg_reg_n_0_[55] ;
  wire \key_reg_reg_n_0_[56] ;
  wire \key_reg_reg_n_0_[57] ;
  wire \key_reg_reg_n_0_[58] ;
  wire \key_reg_reg_n_0_[59] ;
  wire \key_reg_reg_n_0_[5] ;
  wire \key_reg_reg_n_0_[60] ;
  wire \key_reg_reg_n_0_[61] ;
  wire \key_reg_reg_n_0_[62] ;
  wire \key_reg_reg_n_0_[63] ;
  wire \key_reg_reg_n_0_[64] ;
  wire \key_reg_reg_n_0_[65] ;
  wire \key_reg_reg_n_0_[66] ;
  wire \key_reg_reg_n_0_[67] ;
  wire \key_reg_reg_n_0_[68] ;
  wire \key_reg_reg_n_0_[69] ;
  wire \key_reg_reg_n_0_[6] ;
  wire \key_reg_reg_n_0_[70] ;
  wire \key_reg_reg_n_0_[71] ;
  wire \key_reg_reg_n_0_[72] ;
  wire \key_reg_reg_n_0_[73] ;
  wire \key_reg_reg_n_0_[74] ;
  wire \key_reg_reg_n_0_[75] ;
  wire \key_reg_reg_n_0_[76] ;
  wire \key_reg_reg_n_0_[77] ;
  wire \key_reg_reg_n_0_[78] ;
  wire \key_reg_reg_n_0_[79] ;
  wire \key_reg_reg_n_0_[7] ;
  wire \key_reg_reg_n_0_[80] ;
  wire \key_reg_reg_n_0_[81] ;
  wire \key_reg_reg_n_0_[82] ;
  wire \key_reg_reg_n_0_[83] ;
  wire \key_reg_reg_n_0_[84] ;
  wire \key_reg_reg_n_0_[85] ;
  wire \key_reg_reg_n_0_[86] ;
  wire \key_reg_reg_n_0_[87] ;
  wire \key_reg_reg_n_0_[88] ;
  wire \key_reg_reg_n_0_[89] ;
  wire \key_reg_reg_n_0_[8] ;
  wire \key_reg_reg_n_0_[90] ;
  wire \key_reg_reg_n_0_[91] ;
  wire \key_reg_reg_n_0_[92] ;
  wire \key_reg_reg_n_0_[93] ;
  wire \key_reg_reg_n_0_[94] ;
  wire \key_reg_reg_n_0_[95] ;
  wire \key_reg_reg_n_0_[96] ;
  wire \key_reg_reg_n_0_[97] ;
  wire \key_reg_reg_n_0_[98] ;
  wire \key_reg_reg_n_0_[99] ;
  wire \key_reg_reg_n_0_[9] ;
  wire [127:0]mask_in;
  wire [127:0]mask_in_IBUF;
  wire [127:0]mix_cols_share2;
  wire [95:0]next_round_key;
  wire [127:0]p_0_in;
  wire [31:8]p_0_in_0;
  wire [127:0]plaintext;
  wire [127:0]plaintext_IBUF;
  wire [116:9]post_linear_share1;
  wire [3:0]round_ctr;
  wire \round_ctr[3]_i_1_n_0 ;
  wire \round_ctr[3]_i_3_n_0 ;
  wire \round_ctr_reg_n_0_[0] ;
  wire \round_ctr_reg_n_0_[1] ;
  wire \round_ctr_reg_n_0_[2] ;
  wire \round_ctr_reg_n_0_[3] ;
  wire rst_n;
  wire rst_n_IBUF;
  wire \share1_reg_reg_n_0_[0] ;
  wire \share1_reg_reg_n_0_[100] ;
  wire \share1_reg_reg_n_0_[101] ;
  wire \share1_reg_reg_n_0_[102] ;
  wire \share1_reg_reg_n_0_[103] ;
  wire \share1_reg_reg_n_0_[104] ;
  wire \share1_reg_reg_n_0_[105] ;
  wire \share1_reg_reg_n_0_[106] ;
  wire \share1_reg_reg_n_0_[107] ;
  wire \share1_reg_reg_n_0_[108] ;
  wire \share1_reg_reg_n_0_[109] ;
  wire \share1_reg_reg_n_0_[10] ;
  wire \share1_reg_reg_n_0_[110] ;
  wire \share1_reg_reg_n_0_[111] ;
  wire \share1_reg_reg_n_0_[112] ;
  wire \share1_reg_reg_n_0_[113] ;
  wire \share1_reg_reg_n_0_[114] ;
  wire \share1_reg_reg_n_0_[115] ;
  wire \share1_reg_reg_n_0_[116] ;
  wire \share1_reg_reg_n_0_[117] ;
  wire \share1_reg_reg_n_0_[118] ;
  wire \share1_reg_reg_n_0_[119] ;
  wire \share1_reg_reg_n_0_[11] ;
  wire \share1_reg_reg_n_0_[120] ;
  wire \share1_reg_reg_n_0_[121] ;
  wire \share1_reg_reg_n_0_[122] ;
  wire \share1_reg_reg_n_0_[123] ;
  wire \share1_reg_reg_n_0_[124] ;
  wire \share1_reg_reg_n_0_[125] ;
  wire \share1_reg_reg_n_0_[126] ;
  wire \share1_reg_reg_n_0_[127] ;
  wire \share1_reg_reg_n_0_[12] ;
  wire \share1_reg_reg_n_0_[13] ;
  wire \share1_reg_reg_n_0_[14] ;
  wire \share1_reg_reg_n_0_[15] ;
  wire \share1_reg_reg_n_0_[16] ;
  wire \share1_reg_reg_n_0_[17] ;
  wire \share1_reg_reg_n_0_[18] ;
  wire \share1_reg_reg_n_0_[19] ;
  wire \share1_reg_reg_n_0_[1] ;
  wire \share1_reg_reg_n_0_[20] ;
  wire \share1_reg_reg_n_0_[21] ;
  wire \share1_reg_reg_n_0_[22] ;
  wire \share1_reg_reg_n_0_[23] ;
  wire \share1_reg_reg_n_0_[24] ;
  wire \share1_reg_reg_n_0_[25] ;
  wire \share1_reg_reg_n_0_[26] ;
  wire \share1_reg_reg_n_0_[27] ;
  wire \share1_reg_reg_n_0_[28] ;
  wire \share1_reg_reg_n_0_[29] ;
  wire \share1_reg_reg_n_0_[2] ;
  wire \share1_reg_reg_n_0_[30] ;
  wire \share1_reg_reg_n_0_[31] ;
  wire \share1_reg_reg_n_0_[32] ;
  wire \share1_reg_reg_n_0_[33] ;
  wire \share1_reg_reg_n_0_[34] ;
  wire \share1_reg_reg_n_0_[35] ;
  wire \share1_reg_reg_n_0_[36] ;
  wire \share1_reg_reg_n_0_[37] ;
  wire \share1_reg_reg_n_0_[38] ;
  wire \share1_reg_reg_n_0_[39] ;
  wire \share1_reg_reg_n_0_[3] ;
  wire \share1_reg_reg_n_0_[40] ;
  wire \share1_reg_reg_n_0_[41] ;
  wire \share1_reg_reg_n_0_[42] ;
  wire \share1_reg_reg_n_0_[43] ;
  wire \share1_reg_reg_n_0_[44] ;
  wire \share1_reg_reg_n_0_[45] ;
  wire \share1_reg_reg_n_0_[46] ;
  wire \share1_reg_reg_n_0_[47] ;
  wire \share1_reg_reg_n_0_[48] ;
  wire \share1_reg_reg_n_0_[49] ;
  wire \share1_reg_reg_n_0_[4] ;
  wire \share1_reg_reg_n_0_[50] ;
  wire \share1_reg_reg_n_0_[51] ;
  wire \share1_reg_reg_n_0_[52] ;
  wire \share1_reg_reg_n_0_[53] ;
  wire \share1_reg_reg_n_0_[54] ;
  wire \share1_reg_reg_n_0_[55] ;
  wire \share1_reg_reg_n_0_[56] ;
  wire \share1_reg_reg_n_0_[57] ;
  wire \share1_reg_reg_n_0_[58] ;
  wire \share1_reg_reg_n_0_[59] ;
  wire \share1_reg_reg_n_0_[5] ;
  wire \share1_reg_reg_n_0_[60] ;
  wire \share1_reg_reg_n_0_[61] ;
  wire \share1_reg_reg_n_0_[62] ;
  wire \share1_reg_reg_n_0_[63] ;
  wire \share1_reg_reg_n_0_[64] ;
  wire \share1_reg_reg_n_0_[65] ;
  wire \share1_reg_reg_n_0_[66] ;
  wire \share1_reg_reg_n_0_[67] ;
  wire \share1_reg_reg_n_0_[68] ;
  wire \share1_reg_reg_n_0_[69] ;
  wire \share1_reg_reg_n_0_[6] ;
  wire \share1_reg_reg_n_0_[70] ;
  wire \share1_reg_reg_n_0_[71] ;
  wire \share1_reg_reg_n_0_[72] ;
  wire \share1_reg_reg_n_0_[73] ;
  wire \share1_reg_reg_n_0_[74] ;
  wire \share1_reg_reg_n_0_[75] ;
  wire \share1_reg_reg_n_0_[76] ;
  wire \share1_reg_reg_n_0_[77] ;
  wire \share1_reg_reg_n_0_[78] ;
  wire \share1_reg_reg_n_0_[79] ;
  wire \share1_reg_reg_n_0_[7] ;
  wire \share1_reg_reg_n_0_[80] ;
  wire \share1_reg_reg_n_0_[81] ;
  wire \share1_reg_reg_n_0_[82] ;
  wire \share1_reg_reg_n_0_[83] ;
  wire \share1_reg_reg_n_0_[84] ;
  wire \share1_reg_reg_n_0_[85] ;
  wire \share1_reg_reg_n_0_[86] ;
  wire \share1_reg_reg_n_0_[87] ;
  wire \share1_reg_reg_n_0_[88] ;
  wire \share1_reg_reg_n_0_[89] ;
  wire \share1_reg_reg_n_0_[8] ;
  wire \share1_reg_reg_n_0_[90] ;
  wire \share1_reg_reg_n_0_[91] ;
  wire \share1_reg_reg_n_0_[92] ;
  wire \share1_reg_reg_n_0_[93] ;
  wire \share1_reg_reg_n_0_[94] ;
  wire \share1_reg_reg_n_0_[95] ;
  wire \share1_reg_reg_n_0_[96] ;
  wire \share1_reg_reg_n_0_[97] ;
  wire \share1_reg_reg_n_0_[98] ;
  wire \share1_reg_reg_n_0_[99] ;
  wire \share1_reg_reg_n_0_[9] ;
  wire \share2_reg[0]_i_1_n_0 ;
  wire \share2_reg[100]_i_1_n_0 ;
  wire \share2_reg[100]_i_3_n_0 ;
  wire \share2_reg[101]_i_1_n_0 ;
  wire \share2_reg[102]_i_1_n_0 ;
  wire \share2_reg[103]_i_1_n_0 ;
  wire \share2_reg[104]_i_1_n_0 ;
  wire \share2_reg[105]_i_1_n_0 ;
  wire \share2_reg[105]_i_2_n_0 ;
  wire \share2_reg[106]_i_1_n_0 ;
  wire \share2_reg[107]_i_1_n_0 ;
  wire \share2_reg[107]_i_2_n_0 ;
  wire \share2_reg[108]_i_1_n_0 ;
  wire \share2_reg[108]_i_2_n_0 ;
  wire \share2_reg[108]_i_3_n_0 ;
  wire \share2_reg[109]_i_1_n_0 ;
  wire \share2_reg[10]_i_1_n_0 ;
  wire \share2_reg[10]_i_2_n_0 ;
  wire \share2_reg[110]_i_1_n_0 ;
  wire \share2_reg[110]_i_2_n_0 ;
  wire \share2_reg[111]_i_1_n_0 ;
  wire \share2_reg[112]_i_1_n_0 ;
  wire \share2_reg[113]_i_1_n_0 ;
  wire \share2_reg[114]_i_1_n_0 ;
  wire \share2_reg[115]_i_1_n_0 ;
  wire \share2_reg[116]_i_1_n_0 ;
  wire \share2_reg[117]_i_1_n_0 ;
  wire \share2_reg[118]_i_1_n_0 ;
  wire \share2_reg[118]_i_2_n_0 ;
  wire \share2_reg[119]_i_1_n_0 ;
  wire \share2_reg[11]_i_1_n_0 ;
  wire \share2_reg[120]_i_1_n_0 ;
  wire \share2_reg[121]_i_1_n_0 ;
  wire \share2_reg[121]_i_3_n_0 ;
  wire \share2_reg[122]_i_1_n_0 ;
  wire \share2_reg[123]_i_1_n_0 ;
  wire \share2_reg[123]_i_3_n_0 ;
  wire \share2_reg[124]_i_1_n_0 ;
  wire \share2_reg[124]_i_3_n_0 ;
  wire \share2_reg[125]_i_1_n_0 ;
  wire \share2_reg[126]_i_1_n_0 ;
  wire \share2_reg[127]_i_1_n_0 ;
  wire \share2_reg[127]_i_2_n_0 ;
  wire \share2_reg[12]_i_1_n_0 ;
  wire \share2_reg[13]_i_1_n_0 ;
  wire \share2_reg[13]_i_2_n_0 ;
  wire \share2_reg[14]_i_1_n_0 ;
  wire \share2_reg[15]_i_1_n_0 ;
  wire \share2_reg[15]_i_2_n_0 ;
  wire \share2_reg[16]_i_1_n_0 ;
  wire \share2_reg[17]_i_1_n_0 ;
  wire \share2_reg[17]_i_3_n_0 ;
  wire \share2_reg[18]_i_1_n_0 ;
  wire \share2_reg[18]_i_2_n_0 ;
  wire \share2_reg[19]_i_1_n_0 ;
  wire \share2_reg[19]_i_3_n_0 ;
  wire \share2_reg[1]_i_1_n_0 ;
  wire \share2_reg[20]_i_1_n_0 ;
  wire \share2_reg[20]_i_3_n_0 ;
  wire \share2_reg[21]_i_1_n_0 ;
  wire \share2_reg[21]_i_2_n_0 ;
  wire \share2_reg[22]_i_1_n_0 ;
  wire \share2_reg[23]_i_1_n_0 ;
  wire \share2_reg[23]_i_2_n_0 ;
  wire \share2_reg[24]_i_1_n_0 ;
  wire \share2_reg[25]_i_1_n_0 ;
  wire \share2_reg[25]_i_2_n_0 ;
  wire \share2_reg[26]_i_1_n_0 ;
  wire \share2_reg[27]_i_1_n_0 ;
  wire \share2_reg[27]_i_2_n_0 ;
  wire \share2_reg[28]_i_1_n_0 ;
  wire \share2_reg[28]_i_2_n_0 ;
  wire \share2_reg[28]_i_3_n_0 ;
  wire \share2_reg[29]_i_1_n_0 ;
  wire \share2_reg[2]_i_1_n_0 ;
  wire \share2_reg[2]_i_2_n_0 ;
  wire \share2_reg[30]_i_1_n_0 ;
  wire \share2_reg[30]_i_2_n_0 ;
  wire \share2_reg[31]_i_1_n_0 ;
  wire \share2_reg[32]_i_1_n_0 ;
  wire \share2_reg[33]_i_1_n_0 ;
  wire \share2_reg[33]_i_2_n_0 ;
  wire \share2_reg[34]_i_1_n_0 ;
  wire \share2_reg[35]_i_1_n_0 ;
  wire \share2_reg[35]_i_2_n_0 ;
  wire \share2_reg[36]_i_1_n_0 ;
  wire \share2_reg[36]_i_2_n_0 ;
  wire \share2_reg[37]_i_1_n_0 ;
  wire \share2_reg[38]_i_1_n_0 ;
  wire \share2_reg[38]_i_2_n_0 ;
  wire \share2_reg[39]_i_1_n_0 ;
  wire \share2_reg[3]_i_1_n_0 ;
  wire \share2_reg[40]_i_1_n_0 ;
  wire \share2_reg[41]_i_1_n_0 ;
  wire \share2_reg[42]_i_1_n_0 ;
  wire \share2_reg[42]_i_2_n_0 ;
  wire \share2_reg[43]_i_1_n_0 ;
  wire \share2_reg[44]_i_1_n_0 ;
  wire \share2_reg[45]_i_1_n_0 ;
  wire \share2_reg[45]_i_2_n_0 ;
  wire \share2_reg[46]_i_1_n_0 ;
  wire \share2_reg[47]_i_1_n_0 ;
  wire \share2_reg[47]_i_2_n_0 ;
  wire \share2_reg[48]_i_1_n_0 ;
  wire \share2_reg[49]_i_1_n_0 ;
  wire \share2_reg[49]_i_3_n_0 ;
  wire \share2_reg[4]_i_1_n_0 ;
  wire \share2_reg[4]_i_3_n_0 ;
  wire \share2_reg[50]_i_1_n_0 ;
  wire \share2_reg[51]_i_1_n_0 ;
  wire \share2_reg[51]_i_3_n_0 ;
  wire \share2_reg[52]_i_1_n_0 ;
  wire \share2_reg[52]_i_3_n_0 ;
  wire \share2_reg[53]_i_1_n_0 ;
  wire \share2_reg[54]_i_1_n_0 ;
  wire \share2_reg[54]_i_2_n_0 ;
  wire \share2_reg[55]_i_1_n_0 ;
  wire \share2_reg[56]_i_1_n_0 ;
  wire \share2_reg[57]_i_1_n_0 ;
  wire \share2_reg[57]_i_2_n_0 ;
  wire \share2_reg[58]_i_1_n_0 ;
  wire \share2_reg[59]_i_1_n_0 ;
  wire \share2_reg[59]_i_2_n_0 ;
  wire \share2_reg[5]_i_1_n_0 ;
  wire \share2_reg[5]_i_2_n_0 ;
  wire \share2_reg[60]_i_1_n_0 ;
  wire \share2_reg[60]_i_2_n_0 ;
  wire \share2_reg[60]_i_3_n_0 ;
  wire \share2_reg[61]_i_1_n_0 ;
  wire \share2_reg[62]_i_1_n_0 ;
  wire \share2_reg[62]_i_2_n_0 ;
  wire \share2_reg[63]_i_1_n_0 ;
  wire \share2_reg[64]_i_1_n_0 ;
  wire \share2_reg[65]_i_1_n_0 ;
  wire \share2_reg[66]_i_1_n_0 ;
  wire \share2_reg[67]_i_1_n_0 ;
  wire \share2_reg[67]_i_3_n_0 ;
  wire \share2_reg[68]_i_1_n_0 ;
  wire \share2_reg[68]_i_3_n_0 ;
  wire \share2_reg[69]_i_1_n_0 ;
  wire \share2_reg[6]_i_1_n_0 ;
  wire \share2_reg[70]_i_1_n_0 ;
  wire \share2_reg[71]_i_1_n_0 ;
  wire \share2_reg[72]_i_1_n_0 ;
  wire \share2_reg[73]_i_1_n_0 ;
  wire \share2_reg[73]_i_3_n_0 ;
  wire \share2_reg[74]_i_1_n_0 ;
  wire \share2_reg[75]_i_1_n_0 ;
  wire \share2_reg[76]_i_1_n_0 ;
  wire \share2_reg[77]_i_1_n_0 ;
  wire \share2_reg[78]_i_1_n_0 ;
  wire \share2_reg[79]_i_1_n_0 ;
  wire \share2_reg[7]_i_1_n_0 ;
  wire \share2_reg[7]_i_2_n_0 ;
  wire \share2_reg[80]_i_1_n_0 ;
  wire \share2_reg[81]_i_1_n_0 ;
  wire \share2_reg[81]_i_2_n_0 ;
  wire \share2_reg[82]_i_1_n_0 ;
  wire \share2_reg[83]_i_1_n_0 ;
  wire \share2_reg[83]_i_3_n_0 ;
  wire \share2_reg[84]_i_1_n_0 ;
  wire \share2_reg[84]_i_3_n_0 ;
  wire \share2_reg[85]_i_1_n_0 ;
  wire \share2_reg[86]_i_1_n_0 ;
  wire \share2_reg[86]_i_2_n_0 ;
  wire \share2_reg[87]_i_1_n_0 ;
  wire \share2_reg[88]_i_1_n_0 ;
  wire \share2_reg[89]_i_1_n_0 ;
  wire \share2_reg[8]_i_1_n_0 ;
  wire \share2_reg[90]_i_1_n_0 ;
  wire \share2_reg[90]_i_2_n_0 ;
  wire \share2_reg[91]_i_1_n_0 ;
  wire \share2_reg[92]_i_1_n_0 ;
  wire \share2_reg[92]_i_3_n_0 ;
  wire \share2_reg[93]_i_1_n_0 ;
  wire \share2_reg[93]_i_2_n_0 ;
  wire \share2_reg[94]_i_1_n_0 ;
  wire \share2_reg[95]_i_1_n_0 ;
  wire \share2_reg[95]_i_2_n_0 ;
  wire \share2_reg[96]_i_1_n_0 ;
  wire \share2_reg[97]_i_1_n_0 ;
  wire \share2_reg[97]_i_3_n_0 ;
  wire \share2_reg[98]_i_1_n_0 ;
  wire \share2_reg[99]_i_1_n_0 ;
  wire \share2_reg[99]_i_3_n_0 ;
  wire \share2_reg[9]_i_1_n_0 ;
  wire start;
  wire start_IBUF;
  wire u_key_expansion_n_0;
  wire u_key_expansion_n_1;
  wire u_key_expansion_n_10;
  wire u_key_expansion_n_100;
  wire u_key_expansion_n_101;
  wire u_key_expansion_n_102;
  wire u_key_expansion_n_103;
  wire u_key_expansion_n_104;
  wire u_key_expansion_n_105;
  wire u_key_expansion_n_106;
  wire u_key_expansion_n_107;
  wire u_key_expansion_n_108;
  wire u_key_expansion_n_109;
  wire u_key_expansion_n_11;
  wire u_key_expansion_n_110;
  wire u_key_expansion_n_111;
  wire u_key_expansion_n_112;
  wire u_key_expansion_n_113;
  wire u_key_expansion_n_114;
  wire u_key_expansion_n_115;
  wire u_key_expansion_n_116;
  wire u_key_expansion_n_117;
  wire u_key_expansion_n_118;
  wire u_key_expansion_n_119;
  wire u_key_expansion_n_12;
  wire u_key_expansion_n_120;
  wire u_key_expansion_n_121;
  wire u_key_expansion_n_122;
  wire u_key_expansion_n_123;
  wire u_key_expansion_n_124;
  wire u_key_expansion_n_125;
  wire u_key_expansion_n_126;
  wire u_key_expansion_n_127;
  wire u_key_expansion_n_13;
  wire u_key_expansion_n_14;
  wire u_key_expansion_n_15;
  wire u_key_expansion_n_16;
  wire u_key_expansion_n_17;
  wire u_key_expansion_n_18;
  wire u_key_expansion_n_19;
  wire u_key_expansion_n_2;
  wire u_key_expansion_n_20;
  wire u_key_expansion_n_21;
  wire u_key_expansion_n_218;
  wire u_key_expansion_n_219;
  wire u_key_expansion_n_22;
  wire u_key_expansion_n_220;
  wire u_key_expansion_n_221;
  wire u_key_expansion_n_222;
  wire u_key_expansion_n_223;
  wire u_key_expansion_n_224;
  wire u_key_expansion_n_225;
  wire u_key_expansion_n_226;
  wire u_key_expansion_n_227;
  wire u_key_expansion_n_228;
  wire u_key_expansion_n_229;
  wire u_key_expansion_n_23;
  wire u_key_expansion_n_230;
  wire u_key_expansion_n_231;
  wire u_key_expansion_n_232;
  wire u_key_expansion_n_233;
  wire u_key_expansion_n_234;
  wire u_key_expansion_n_235;
  wire u_key_expansion_n_236;
  wire u_key_expansion_n_237;
  wire u_key_expansion_n_238;
  wire u_key_expansion_n_239;
  wire u_key_expansion_n_24;
  wire u_key_expansion_n_240;
  wire u_key_expansion_n_241;
  wire u_key_expansion_n_242;
  wire u_key_expansion_n_243;
  wire u_key_expansion_n_244;
  wire u_key_expansion_n_245;
  wire u_key_expansion_n_246;
  wire u_key_expansion_n_247;
  wire u_key_expansion_n_248;
  wire u_key_expansion_n_249;
  wire u_key_expansion_n_25;
  wire u_key_expansion_n_250;
  wire u_key_expansion_n_251;
  wire u_key_expansion_n_26;
  wire u_key_expansion_n_27;
  wire u_key_expansion_n_28;
  wire u_key_expansion_n_29;
  wire u_key_expansion_n_3;
  wire u_key_expansion_n_30;
  wire u_key_expansion_n_31;
  wire u_key_expansion_n_32;
  wire u_key_expansion_n_33;
  wire u_key_expansion_n_34;
  wire u_key_expansion_n_35;
  wire u_key_expansion_n_36;
  wire u_key_expansion_n_37;
  wire u_key_expansion_n_38;
  wire u_key_expansion_n_39;
  wire u_key_expansion_n_4;
  wire u_key_expansion_n_40;
  wire u_key_expansion_n_41;
  wire u_key_expansion_n_42;
  wire u_key_expansion_n_43;
  wire u_key_expansion_n_44;
  wire u_key_expansion_n_45;
  wire u_key_expansion_n_46;
  wire u_key_expansion_n_47;
  wire u_key_expansion_n_48;
  wire u_key_expansion_n_49;
  wire u_key_expansion_n_5;
  wire u_key_expansion_n_50;
  wire u_key_expansion_n_51;
  wire u_key_expansion_n_52;
  wire u_key_expansion_n_53;
  wire u_key_expansion_n_54;
  wire u_key_expansion_n_55;
  wire u_key_expansion_n_56;
  wire u_key_expansion_n_57;
  wire u_key_expansion_n_58;
  wire u_key_expansion_n_59;
  wire u_key_expansion_n_6;
  wire u_key_expansion_n_60;
  wire u_key_expansion_n_61;
  wire u_key_expansion_n_62;
  wire u_key_expansion_n_63;
  wire u_key_expansion_n_64;
  wire u_key_expansion_n_65;
  wire u_key_expansion_n_66;
  wire u_key_expansion_n_67;
  wire u_key_expansion_n_68;
  wire u_key_expansion_n_69;
  wire u_key_expansion_n_7;
  wire u_key_expansion_n_70;
  wire u_key_expansion_n_71;
  wire u_key_expansion_n_72;
  wire u_key_expansion_n_73;
  wire u_key_expansion_n_74;
  wire u_key_expansion_n_75;
  wire u_key_expansion_n_76;
  wire u_key_expansion_n_77;
  wire u_key_expansion_n_78;
  wire u_key_expansion_n_79;
  wire u_key_expansion_n_8;
  wire u_key_expansion_n_80;
  wire u_key_expansion_n_81;
  wire u_key_expansion_n_82;
  wire u_key_expansion_n_83;
  wire u_key_expansion_n_84;
  wire u_key_expansion_n_85;
  wire u_key_expansion_n_86;
  wire u_key_expansion_n_87;
  wire u_key_expansion_n_88;
  wire u_key_expansion_n_89;
  wire u_key_expansion_n_9;
  wire u_key_expansion_n_90;
  wire u_key_expansion_n_91;
  wire u_key_expansion_n_92;
  wire u_key_expansion_n_93;
  wire u_key_expansion_n_94;
  wire u_key_expansion_n_95;
  wire u_key_expansion_n_96;
  wire u_key_expansion_n_97;
  wire u_key_expansion_n_98;
  wire u_key_expansion_n_99;
  wire u_masked_sub_bytes_n_163;
  wire u_masked_sub_bytes_n_164;
  wire u_masked_sub_bytes_n_165;
  wire u_masked_sub_bytes_n_166;
  wire u_masked_sub_bytes_n_167;
  wire u_masked_sub_bytes_n_168;
  wire u_masked_sub_bytes_n_169;
  wire u_masked_sub_bytes_n_170;
  wire u_masked_sub_bytes_n_171;
  wire u_masked_sub_bytes_n_172;
  wire u_masked_sub_bytes_n_173;
  wire u_masked_sub_bytes_n_174;
  wire u_masked_sub_bytes_n_175;
  wire u_masked_sub_bytes_n_176;
  wire u_masked_sub_bytes_n_177;
  wire u_masked_sub_bytes_n_178;
  wire u_masked_sub_bytes_n_179;
  wire u_masked_sub_bytes_n_180;
  wire u_masked_sub_bytes_n_181;
  wire u_masked_sub_bytes_n_182;
  wire u_masked_sub_bytes_n_183;
  wire u_masked_sub_bytes_n_184;
  wire u_masked_sub_bytes_n_185;
  wire u_masked_sub_bytes_n_186;
  wire u_masked_sub_bytes_n_187;
  wire u_masked_sub_bytes_n_188;
  wire u_masked_sub_bytes_n_189;
  wire u_masked_sub_bytes_n_190;
  wire u_masked_sub_bytes_n_191;
  wire u_masked_sub_bytes_n_192;
  wire u_masked_sub_bytes_n_193;
  wire u_masked_sub_bytes_n_194;
  wire u_masked_sub_bytes_n_195;
  wire u_masked_sub_bytes_n_196;
  wire u_masked_sub_bytes_n_197;
  wire u_masked_sub_bytes_n_198;
  wire u_masked_sub_bytes_n_199;
  wire u_masked_sub_bytes_n_200;
  wire u_masked_sub_bytes_n_201;
  wire u_masked_sub_bytes_n_202;
  wire u_masked_sub_bytes_n_203;
  wire u_masked_sub_bytes_n_204;
  wire u_masked_sub_bytes_n_205;
  wire u_masked_sub_bytes_n_206;
  wire u_masked_sub_bytes_n_207;
  wire u_masked_sub_bytes_n_208;
  wire u_masked_sub_bytes_n_209;
  wire u_masked_sub_bytes_n_210;
  wire u_masked_sub_bytes_n_211;
  wire u_masked_sub_bytes_n_212;
  wire u_masked_sub_bytes_n_213;
  wire u_masked_sub_bytes_n_214;
  wire u_masked_sub_bytes_n_215;
  wire u_masked_sub_bytes_n_216;
  wire u_masked_sub_bytes_n_217;
  wire u_masked_sub_bytes_n_218;
  wire u_masked_sub_bytes_n_219;
  wire u_masked_sub_bytes_n_220;
  wire u_masked_sub_bytes_n_221;
  wire u_masked_sub_bytes_n_222;
  wire u_masked_sub_bytes_n_223;
  wire u_masked_sub_bytes_n_224;
  wire u_masked_sub_bytes_n_225;
  wire u_masked_sub_bytes_n_226;
  wire u_masked_sub_bytes_n_227;
  wire u_masked_sub_bytes_n_228;
  wire u_masked_sub_bytes_n_229;
  wire u_masked_sub_bytes_n_230;
  wire u_masked_sub_bytes_n_231;
  wire u_masked_sub_bytes_n_232;
  wire u_masked_sub_bytes_n_233;
  wire u_masked_sub_bytes_n_234;
  wire u_masked_sub_bytes_n_235;
  wire u_masked_sub_bytes_n_236;
  wire u_masked_sub_bytes_n_237;
  wire u_masked_sub_bytes_n_238;
  wire u_masked_sub_bytes_n_239;
  wire u_masked_sub_bytes_n_240;
  wire u_masked_sub_bytes_n_241;
  wire u_masked_sub_bytes_n_242;
  wire u_masked_sub_bytes_n_243;
  wire u_masked_sub_bytes_n_244;
  wire u_masked_sub_bytes_n_245;
  wire u_masked_sub_bytes_n_246;
  wire u_masked_sub_bytes_n_247;
  wire u_masked_sub_bytes_n_248;
  wire u_masked_sub_bytes_n_249;
  wire u_masked_sub_bytes_n_250;
  wire u_masked_sub_bytes_n_251;
  wire u_masked_sub_bytes_n_252;
  wire u_masked_sub_bytes_n_253;
  wire u_masked_sub_bytes_n_254;
  wire u_masked_sub_bytes_n_255;
  wire u_masked_sub_bytes_n_256;
  wire u_masked_sub_bytes_n_257;
  wire u_masked_sub_bytes_n_34;
  wire [3:1]\u_mc_share2/xtime_return ;
  wire [3:1]\u_mc_share2/xtime_return10_in ;
  wire [1:1]\u_mc_share2/xtime_return21_in ;
  wire [3:1]\u_mc_share2/xtime_return26_in ;
  wire [3:1]\u_mc_share2/xtime_return36_in ;
  wire [3:1]\u_mc_share2/xtime_return3_in ;

  LUT6 #(
    .INIT(64'hFFFFFFBFAAAAAAAA)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(current_state[0]),
        .I1(\round_ctr_reg_n_0_[3] ),
        .I2(\round_ctr_reg_n_0_[1] ),
        .I3(\round_ctr_reg_n_0_[0] ),
        .I4(\round_ctr_reg_n_0_[2] ),
        .I5(current_state[1]),
        .O(current_state__0[1]));
  LUT6 #(
    .INIT(64'hFFFFFFBFAAAAAAAA)) 
    \FSM_onehot_current_state[1]_rep__0_i_1 
       (.I0(current_state[0]),
        .I1(\round_ctr_reg_n_0_[3] ),
        .I2(\round_ctr_reg_n_0_[1] ),
        .I3(\round_ctr_reg_n_0_[0] ),
        .I4(\round_ctr_reg_n_0_[2] ),
        .I5(current_state[1]),
        .O(\FSM_onehot_current_state[1]_rep__0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBFAAAAAAAA)) 
    \FSM_onehot_current_state[1]_rep__1_i_1 
       (.I0(current_state[0]),
        .I1(\round_ctr_reg_n_0_[3] ),
        .I2(\round_ctr_reg_n_0_[1] ),
        .I3(\round_ctr_reg_n_0_[0] ),
        .I4(\round_ctr_reg_n_0_[2] ),
        .I5(current_state[1]),
        .O(\FSM_onehot_current_state[1]_rep__1_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBFAAAAAAAA)) 
    \FSM_onehot_current_state[1]_rep_i_1 
       (.I0(current_state[0]),
        .I1(\round_ctr_reg_n_0_[3] ),
        .I2(\round_ctr_reg_n_0_[1] ),
        .I3(\round_ctr_reg_n_0_[0] ),
        .I4(\round_ctr_reg_n_0_[2] ),
        .I5(current_state[1]),
        .O(\FSM_onehot_current_state[1]_rep_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEA)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg[1]_rep__1_n_0 ),
        .I1(start_IBUF),
        .I2(current_state[0]),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \FSM_onehot_current_state[2]_i_2 
       (.I0(\FSM_onehot_current_state_reg[1]_rep__1_n_0 ),
        .I1(\round_ctr_reg_n_0_[3] ),
        .I2(\round_ctr_reg_n_0_[1] ),
        .I3(\round_ctr_reg_n_0_[2] ),
        .I4(\round_ctr_reg_n_0_[0] ),
        .O(current_state__0[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_current_state[2]_i_3 
       (.I0(rst_n_IBUF),
        .O(\FSM_onehot_current_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:001,S_ROUND_OP:010,S_DONE:100" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[2] ),
        .PRE(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "S_IDLE:001,S_ROUND_OP:010,S_DONE:100" *) 
  (* ORIG_CELL_NAME = "FSM_onehot_current_state_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(current_state__0[1]),
        .Q(current_state[1]));
  (* FSM_ENCODED_STATES = "S_IDLE:001,S_ROUND_OP:010,S_DONE:100" *) 
  (* ORIG_CELL_NAME = "FSM_onehot_current_state_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1]_rep 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\FSM_onehot_current_state[1]_rep_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg[1]_rep_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:001,S_ROUND_OP:010,S_DONE:100" *) 
  (* ORIG_CELL_NAME = "FSM_onehot_current_state_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1]_rep__0 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\FSM_onehot_current_state[1]_rep__0_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg[1]_rep__0_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:001,S_ROUND_OP:010,S_DONE:100" *) 
  (* ORIG_CELL_NAME = "FSM_onehot_current_state_reg[1]" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1]_rep__1 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\FSM_onehot_current_state[1]_rep__1_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg[1]_rep__1_n_0 ));
  (* FSM_ENCODED_STATES = "S_IDLE:001,S_ROUND_OP:010,S_DONE:100" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(current_state__0[2]),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ));
  OBUF busy_OBUF_inst
       (.I(busy_OBUF),
        .O(busy));
  LUT2 #(
    .INIT(4'hE)) 
    busy_i_1
       (.I0(current_state[0]),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(busy_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    busy_i_2
       (.I0(current_state[0]),
        .I1(start_IBUF),
        .O(busy_i_2_n_0));
  FDCE busy_reg
       (.C(clk_IBUF_BUFG),
        .CE(busy_i_1_n_0),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(busy_i_2_n_0),
        .Q(busy_OBUF));
  OBUF \ciphertext_OBUF[0]_inst 
       (.I(ciphertext_OBUF[0]),
        .O(ciphertext[0]));
  OBUF \ciphertext_OBUF[100]_inst 
       (.I(ciphertext_OBUF[100]),
        .O(ciphertext[100]));
  OBUF \ciphertext_OBUF[101]_inst 
       (.I(ciphertext_OBUF[101]),
        .O(ciphertext[101]));
  OBUF \ciphertext_OBUF[102]_inst 
       (.I(ciphertext_OBUF[102]),
        .O(ciphertext[102]));
  OBUF \ciphertext_OBUF[103]_inst 
       (.I(ciphertext_OBUF[103]),
        .O(ciphertext[103]));
  OBUF \ciphertext_OBUF[104]_inst 
       (.I(ciphertext_OBUF[104]),
        .O(ciphertext[104]));
  OBUF \ciphertext_OBUF[105]_inst 
       (.I(ciphertext_OBUF[105]),
        .O(ciphertext[105]));
  OBUF \ciphertext_OBUF[106]_inst 
       (.I(ciphertext_OBUF[106]),
        .O(ciphertext[106]));
  OBUF \ciphertext_OBUF[107]_inst 
       (.I(ciphertext_OBUF[107]),
        .O(ciphertext[107]));
  OBUF \ciphertext_OBUF[108]_inst 
       (.I(ciphertext_OBUF[108]),
        .O(ciphertext[108]));
  OBUF \ciphertext_OBUF[109]_inst 
       (.I(ciphertext_OBUF[109]),
        .O(ciphertext[109]));
  OBUF \ciphertext_OBUF[10]_inst 
       (.I(ciphertext_OBUF[10]),
        .O(ciphertext[10]));
  OBUF \ciphertext_OBUF[110]_inst 
       (.I(ciphertext_OBUF[110]),
        .O(ciphertext[110]));
  OBUF \ciphertext_OBUF[111]_inst 
       (.I(ciphertext_OBUF[111]),
        .O(ciphertext[111]));
  OBUF \ciphertext_OBUF[112]_inst 
       (.I(ciphertext_OBUF[112]),
        .O(ciphertext[112]));
  OBUF \ciphertext_OBUF[113]_inst 
       (.I(ciphertext_OBUF[113]),
        .O(ciphertext[113]));
  OBUF \ciphertext_OBUF[114]_inst 
       (.I(ciphertext_OBUF[114]),
        .O(ciphertext[114]));
  OBUF \ciphertext_OBUF[115]_inst 
       (.I(ciphertext_OBUF[115]),
        .O(ciphertext[115]));
  OBUF \ciphertext_OBUF[116]_inst 
       (.I(ciphertext_OBUF[116]),
        .O(ciphertext[116]));
  OBUF \ciphertext_OBUF[117]_inst 
       (.I(ciphertext_OBUF[117]),
        .O(ciphertext[117]));
  OBUF \ciphertext_OBUF[118]_inst 
       (.I(ciphertext_OBUF[118]),
        .O(ciphertext[118]));
  OBUF \ciphertext_OBUF[119]_inst 
       (.I(ciphertext_OBUF[119]),
        .O(ciphertext[119]));
  OBUF \ciphertext_OBUF[11]_inst 
       (.I(ciphertext_OBUF[11]),
        .O(ciphertext[11]));
  OBUF \ciphertext_OBUF[120]_inst 
       (.I(ciphertext_OBUF[120]),
        .O(ciphertext[120]));
  OBUF \ciphertext_OBUF[121]_inst 
       (.I(ciphertext_OBUF[121]),
        .O(ciphertext[121]));
  OBUF \ciphertext_OBUF[122]_inst 
       (.I(ciphertext_OBUF[122]),
        .O(ciphertext[122]));
  OBUF \ciphertext_OBUF[123]_inst 
       (.I(ciphertext_OBUF[123]),
        .O(ciphertext[123]));
  OBUF \ciphertext_OBUF[124]_inst 
       (.I(ciphertext_OBUF[124]),
        .O(ciphertext[124]));
  OBUF \ciphertext_OBUF[125]_inst 
       (.I(ciphertext_OBUF[125]),
        .O(ciphertext[125]));
  OBUF \ciphertext_OBUF[126]_inst 
       (.I(ciphertext_OBUF[126]),
        .O(ciphertext[126]));
  OBUF \ciphertext_OBUF[127]_inst 
       (.I(ciphertext_OBUF[127]),
        .O(ciphertext[127]));
  OBUF \ciphertext_OBUF[12]_inst 
       (.I(ciphertext_OBUF[12]),
        .O(ciphertext[12]));
  OBUF \ciphertext_OBUF[13]_inst 
       (.I(ciphertext_OBUF[13]),
        .O(ciphertext[13]));
  OBUF \ciphertext_OBUF[14]_inst 
       (.I(ciphertext_OBUF[14]),
        .O(ciphertext[14]));
  OBUF \ciphertext_OBUF[15]_inst 
       (.I(ciphertext_OBUF[15]),
        .O(ciphertext[15]));
  OBUF \ciphertext_OBUF[16]_inst 
       (.I(ciphertext_OBUF[16]),
        .O(ciphertext[16]));
  OBUF \ciphertext_OBUF[17]_inst 
       (.I(ciphertext_OBUF[17]),
        .O(ciphertext[17]));
  OBUF \ciphertext_OBUF[18]_inst 
       (.I(ciphertext_OBUF[18]),
        .O(ciphertext[18]));
  OBUF \ciphertext_OBUF[19]_inst 
       (.I(ciphertext_OBUF[19]),
        .O(ciphertext[19]));
  OBUF \ciphertext_OBUF[1]_inst 
       (.I(ciphertext_OBUF[1]),
        .O(ciphertext[1]));
  OBUF \ciphertext_OBUF[20]_inst 
       (.I(ciphertext_OBUF[20]),
        .O(ciphertext[20]));
  OBUF \ciphertext_OBUF[21]_inst 
       (.I(ciphertext_OBUF[21]),
        .O(ciphertext[21]));
  OBUF \ciphertext_OBUF[22]_inst 
       (.I(ciphertext_OBUF[22]),
        .O(ciphertext[22]));
  OBUF \ciphertext_OBUF[23]_inst 
       (.I(ciphertext_OBUF[23]),
        .O(ciphertext[23]));
  OBUF \ciphertext_OBUF[24]_inst 
       (.I(ciphertext_OBUF[24]),
        .O(ciphertext[24]));
  OBUF \ciphertext_OBUF[25]_inst 
       (.I(ciphertext_OBUF[25]),
        .O(ciphertext[25]));
  OBUF \ciphertext_OBUF[26]_inst 
       (.I(ciphertext_OBUF[26]),
        .O(ciphertext[26]));
  OBUF \ciphertext_OBUF[27]_inst 
       (.I(ciphertext_OBUF[27]),
        .O(ciphertext[27]));
  OBUF \ciphertext_OBUF[28]_inst 
       (.I(ciphertext_OBUF[28]),
        .O(ciphertext[28]));
  OBUF \ciphertext_OBUF[29]_inst 
       (.I(ciphertext_OBUF[29]),
        .O(ciphertext[29]));
  OBUF \ciphertext_OBUF[2]_inst 
       (.I(ciphertext_OBUF[2]),
        .O(ciphertext[2]));
  OBUF \ciphertext_OBUF[30]_inst 
       (.I(ciphertext_OBUF[30]),
        .O(ciphertext[30]));
  OBUF \ciphertext_OBUF[31]_inst 
       (.I(ciphertext_OBUF[31]),
        .O(ciphertext[31]));
  OBUF \ciphertext_OBUF[32]_inst 
       (.I(ciphertext_OBUF[32]),
        .O(ciphertext[32]));
  OBUF \ciphertext_OBUF[33]_inst 
       (.I(ciphertext_OBUF[33]),
        .O(ciphertext[33]));
  OBUF \ciphertext_OBUF[34]_inst 
       (.I(ciphertext_OBUF[34]),
        .O(ciphertext[34]));
  OBUF \ciphertext_OBUF[35]_inst 
       (.I(ciphertext_OBUF[35]),
        .O(ciphertext[35]));
  OBUF \ciphertext_OBUF[36]_inst 
       (.I(ciphertext_OBUF[36]),
        .O(ciphertext[36]));
  OBUF \ciphertext_OBUF[37]_inst 
       (.I(ciphertext_OBUF[37]),
        .O(ciphertext[37]));
  OBUF \ciphertext_OBUF[38]_inst 
       (.I(ciphertext_OBUF[38]),
        .O(ciphertext[38]));
  OBUF \ciphertext_OBUF[39]_inst 
       (.I(ciphertext_OBUF[39]),
        .O(ciphertext[39]));
  OBUF \ciphertext_OBUF[3]_inst 
       (.I(ciphertext_OBUF[3]),
        .O(ciphertext[3]));
  OBUF \ciphertext_OBUF[40]_inst 
       (.I(ciphertext_OBUF[40]),
        .O(ciphertext[40]));
  OBUF \ciphertext_OBUF[41]_inst 
       (.I(ciphertext_OBUF[41]),
        .O(ciphertext[41]));
  OBUF \ciphertext_OBUF[42]_inst 
       (.I(ciphertext_OBUF[42]),
        .O(ciphertext[42]));
  OBUF \ciphertext_OBUF[43]_inst 
       (.I(ciphertext_OBUF[43]),
        .O(ciphertext[43]));
  OBUF \ciphertext_OBUF[44]_inst 
       (.I(ciphertext_OBUF[44]),
        .O(ciphertext[44]));
  OBUF \ciphertext_OBUF[45]_inst 
       (.I(ciphertext_OBUF[45]),
        .O(ciphertext[45]));
  OBUF \ciphertext_OBUF[46]_inst 
       (.I(ciphertext_OBUF[46]),
        .O(ciphertext[46]));
  OBUF \ciphertext_OBUF[47]_inst 
       (.I(ciphertext_OBUF[47]),
        .O(ciphertext[47]));
  OBUF \ciphertext_OBUF[48]_inst 
       (.I(ciphertext_OBUF[48]),
        .O(ciphertext[48]));
  OBUF \ciphertext_OBUF[49]_inst 
       (.I(ciphertext_OBUF[49]),
        .O(ciphertext[49]));
  OBUF \ciphertext_OBUF[4]_inst 
       (.I(ciphertext_OBUF[4]),
        .O(ciphertext[4]));
  OBUF \ciphertext_OBUF[50]_inst 
       (.I(ciphertext_OBUF[50]),
        .O(ciphertext[50]));
  OBUF \ciphertext_OBUF[51]_inst 
       (.I(ciphertext_OBUF[51]),
        .O(ciphertext[51]));
  OBUF \ciphertext_OBUF[52]_inst 
       (.I(ciphertext_OBUF[52]),
        .O(ciphertext[52]));
  OBUF \ciphertext_OBUF[53]_inst 
       (.I(ciphertext_OBUF[53]),
        .O(ciphertext[53]));
  OBUF \ciphertext_OBUF[54]_inst 
       (.I(ciphertext_OBUF[54]),
        .O(ciphertext[54]));
  OBUF \ciphertext_OBUF[55]_inst 
       (.I(ciphertext_OBUF[55]),
        .O(ciphertext[55]));
  OBUF \ciphertext_OBUF[56]_inst 
       (.I(ciphertext_OBUF[56]),
        .O(ciphertext[56]));
  OBUF \ciphertext_OBUF[57]_inst 
       (.I(ciphertext_OBUF[57]),
        .O(ciphertext[57]));
  OBUF \ciphertext_OBUF[58]_inst 
       (.I(ciphertext_OBUF[58]),
        .O(ciphertext[58]));
  OBUF \ciphertext_OBUF[59]_inst 
       (.I(ciphertext_OBUF[59]),
        .O(ciphertext[59]));
  OBUF \ciphertext_OBUF[5]_inst 
       (.I(ciphertext_OBUF[5]),
        .O(ciphertext[5]));
  OBUF \ciphertext_OBUF[60]_inst 
       (.I(ciphertext_OBUF[60]),
        .O(ciphertext[60]));
  OBUF \ciphertext_OBUF[61]_inst 
       (.I(ciphertext_OBUF[61]),
        .O(ciphertext[61]));
  OBUF \ciphertext_OBUF[62]_inst 
       (.I(ciphertext_OBUF[62]),
        .O(ciphertext[62]));
  OBUF \ciphertext_OBUF[63]_inst 
       (.I(ciphertext_OBUF[63]),
        .O(ciphertext[63]));
  OBUF \ciphertext_OBUF[64]_inst 
       (.I(ciphertext_OBUF[64]),
        .O(ciphertext[64]));
  OBUF \ciphertext_OBUF[65]_inst 
       (.I(ciphertext_OBUF[65]),
        .O(ciphertext[65]));
  OBUF \ciphertext_OBUF[66]_inst 
       (.I(ciphertext_OBUF[66]),
        .O(ciphertext[66]));
  OBUF \ciphertext_OBUF[67]_inst 
       (.I(ciphertext_OBUF[67]),
        .O(ciphertext[67]));
  OBUF \ciphertext_OBUF[68]_inst 
       (.I(ciphertext_OBUF[68]),
        .O(ciphertext[68]));
  OBUF \ciphertext_OBUF[69]_inst 
       (.I(ciphertext_OBUF[69]),
        .O(ciphertext[69]));
  OBUF \ciphertext_OBUF[6]_inst 
       (.I(ciphertext_OBUF[6]),
        .O(ciphertext[6]));
  OBUF \ciphertext_OBUF[70]_inst 
       (.I(ciphertext_OBUF[70]),
        .O(ciphertext[70]));
  OBUF \ciphertext_OBUF[71]_inst 
       (.I(ciphertext_OBUF[71]),
        .O(ciphertext[71]));
  OBUF \ciphertext_OBUF[72]_inst 
       (.I(ciphertext_OBUF[72]),
        .O(ciphertext[72]));
  OBUF \ciphertext_OBUF[73]_inst 
       (.I(ciphertext_OBUF[73]),
        .O(ciphertext[73]));
  OBUF \ciphertext_OBUF[74]_inst 
       (.I(ciphertext_OBUF[74]),
        .O(ciphertext[74]));
  OBUF \ciphertext_OBUF[75]_inst 
       (.I(ciphertext_OBUF[75]),
        .O(ciphertext[75]));
  OBUF \ciphertext_OBUF[76]_inst 
       (.I(ciphertext_OBUF[76]),
        .O(ciphertext[76]));
  OBUF \ciphertext_OBUF[77]_inst 
       (.I(ciphertext_OBUF[77]),
        .O(ciphertext[77]));
  OBUF \ciphertext_OBUF[78]_inst 
       (.I(ciphertext_OBUF[78]),
        .O(ciphertext[78]));
  OBUF \ciphertext_OBUF[79]_inst 
       (.I(ciphertext_OBUF[79]),
        .O(ciphertext[79]));
  OBUF \ciphertext_OBUF[7]_inst 
       (.I(ciphertext_OBUF[7]),
        .O(ciphertext[7]));
  OBUF \ciphertext_OBUF[80]_inst 
       (.I(ciphertext_OBUF[80]),
        .O(ciphertext[80]));
  OBUF \ciphertext_OBUF[81]_inst 
       (.I(ciphertext_OBUF[81]),
        .O(ciphertext[81]));
  OBUF \ciphertext_OBUF[82]_inst 
       (.I(ciphertext_OBUF[82]),
        .O(ciphertext[82]));
  OBUF \ciphertext_OBUF[83]_inst 
       (.I(ciphertext_OBUF[83]),
        .O(ciphertext[83]));
  OBUF \ciphertext_OBUF[84]_inst 
       (.I(ciphertext_OBUF[84]),
        .O(ciphertext[84]));
  OBUF \ciphertext_OBUF[85]_inst 
       (.I(ciphertext_OBUF[85]),
        .O(ciphertext[85]));
  OBUF \ciphertext_OBUF[86]_inst 
       (.I(ciphertext_OBUF[86]),
        .O(ciphertext[86]));
  OBUF \ciphertext_OBUF[87]_inst 
       (.I(ciphertext_OBUF[87]),
        .O(ciphertext[87]));
  OBUF \ciphertext_OBUF[88]_inst 
       (.I(ciphertext_OBUF[88]),
        .O(ciphertext[88]));
  OBUF \ciphertext_OBUF[89]_inst 
       (.I(ciphertext_OBUF[89]),
        .O(ciphertext[89]));
  OBUF \ciphertext_OBUF[8]_inst 
       (.I(ciphertext_OBUF[8]),
        .O(ciphertext[8]));
  OBUF \ciphertext_OBUF[90]_inst 
       (.I(ciphertext_OBUF[90]),
        .O(ciphertext[90]));
  OBUF \ciphertext_OBUF[91]_inst 
       (.I(ciphertext_OBUF[91]),
        .O(ciphertext[91]));
  OBUF \ciphertext_OBUF[92]_inst 
       (.I(ciphertext_OBUF[92]),
        .O(ciphertext[92]));
  OBUF \ciphertext_OBUF[93]_inst 
       (.I(ciphertext_OBUF[93]),
        .O(ciphertext[93]));
  OBUF \ciphertext_OBUF[94]_inst 
       (.I(ciphertext_OBUF[94]),
        .O(ciphertext[94]));
  OBUF \ciphertext_OBUF[95]_inst 
       (.I(ciphertext_OBUF[95]),
        .O(ciphertext[95]));
  OBUF \ciphertext_OBUF[96]_inst 
       (.I(ciphertext_OBUF[96]),
        .O(ciphertext[96]));
  OBUF \ciphertext_OBUF[97]_inst 
       (.I(ciphertext_OBUF[97]),
        .O(ciphertext[97]));
  OBUF \ciphertext_OBUF[98]_inst 
       (.I(ciphertext_OBUF[98]),
        .O(ciphertext[98]));
  OBUF \ciphertext_OBUF[99]_inst 
       (.I(ciphertext_OBUF[99]),
        .O(ciphertext[99]));
  OBUF \ciphertext_OBUF[9]_inst 
       (.I(ciphertext_OBUF[9]),
        .O(ciphertext[9]));
  FDCE \ciphertext_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[0]),
        .Q(ciphertext_OBUF[0]));
  FDCE \ciphertext_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[100]),
        .Q(ciphertext_OBUF[100]));
  FDCE \ciphertext_reg[101] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[101]),
        .Q(ciphertext_OBUF[101]));
  FDCE \ciphertext_reg[102] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[102]),
        .Q(ciphertext_OBUF[102]));
  FDCE \ciphertext_reg[103] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[103]),
        .Q(ciphertext_OBUF[103]));
  FDCE \ciphertext_reg[104] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[104]),
        .Q(ciphertext_OBUF[104]));
  FDCE \ciphertext_reg[105] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[105]),
        .Q(ciphertext_OBUF[105]));
  FDCE \ciphertext_reg[106] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[106]),
        .Q(ciphertext_OBUF[106]));
  FDCE \ciphertext_reg[107] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[107]),
        .Q(ciphertext_OBUF[107]));
  FDCE \ciphertext_reg[108] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[108]),
        .Q(ciphertext_OBUF[108]));
  FDCE \ciphertext_reg[109] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[109]),
        .Q(ciphertext_OBUF[109]));
  FDCE \ciphertext_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[10]),
        .Q(ciphertext_OBUF[10]));
  FDCE \ciphertext_reg[110] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[110]),
        .Q(ciphertext_OBUF[110]));
  FDCE \ciphertext_reg[111] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[111]),
        .Q(ciphertext_OBUF[111]));
  FDCE \ciphertext_reg[112] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[112]),
        .Q(ciphertext_OBUF[112]));
  FDCE \ciphertext_reg[113] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[113]),
        .Q(ciphertext_OBUF[113]));
  FDCE \ciphertext_reg[114] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[114]),
        .Q(ciphertext_OBUF[114]));
  FDCE \ciphertext_reg[115] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[115]),
        .Q(ciphertext_OBUF[115]));
  FDCE \ciphertext_reg[116] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[116]),
        .Q(ciphertext_OBUF[116]));
  FDCE \ciphertext_reg[117] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[117]),
        .Q(ciphertext_OBUF[117]));
  FDCE \ciphertext_reg[118] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[118]),
        .Q(ciphertext_OBUF[118]));
  FDCE \ciphertext_reg[119] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[119]),
        .Q(ciphertext_OBUF[119]));
  FDCE \ciphertext_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[11]),
        .Q(ciphertext_OBUF[11]));
  FDCE \ciphertext_reg[120] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[120]),
        .Q(ciphertext_OBUF[120]));
  FDCE \ciphertext_reg[121] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[121]),
        .Q(ciphertext_OBUF[121]));
  FDCE \ciphertext_reg[122] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[122]),
        .Q(ciphertext_OBUF[122]));
  FDCE \ciphertext_reg[123] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[123]),
        .Q(ciphertext_OBUF[123]));
  FDCE \ciphertext_reg[124] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[124]),
        .Q(ciphertext_OBUF[124]));
  FDCE \ciphertext_reg[125] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[125]),
        .Q(ciphertext_OBUF[125]));
  FDCE \ciphertext_reg[126] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[126]),
        .Q(ciphertext_OBUF[126]));
  FDCE \ciphertext_reg[127] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[127]),
        .Q(ciphertext_OBUF[127]));
  FDCE \ciphertext_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[12]),
        .Q(ciphertext_OBUF[12]));
  FDCE \ciphertext_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[13]),
        .Q(ciphertext_OBUF[13]));
  FDCE \ciphertext_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[14]),
        .Q(ciphertext_OBUF[14]));
  FDCE \ciphertext_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[15]),
        .Q(ciphertext_OBUF[15]));
  FDCE \ciphertext_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[16]),
        .Q(ciphertext_OBUF[16]));
  FDCE \ciphertext_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[17]),
        .Q(ciphertext_OBUF[17]));
  FDCE \ciphertext_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[18]),
        .Q(ciphertext_OBUF[18]));
  FDCE \ciphertext_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[19]),
        .Q(ciphertext_OBUF[19]));
  FDCE \ciphertext_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[1]),
        .Q(ciphertext_OBUF[1]));
  FDCE \ciphertext_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[20]),
        .Q(ciphertext_OBUF[20]));
  FDCE \ciphertext_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[21]),
        .Q(ciphertext_OBUF[21]));
  FDCE \ciphertext_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[22]),
        .Q(ciphertext_OBUF[22]));
  FDCE \ciphertext_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[23]),
        .Q(ciphertext_OBUF[23]));
  FDCE \ciphertext_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[24]),
        .Q(ciphertext_OBUF[24]));
  FDCE \ciphertext_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[25]),
        .Q(ciphertext_OBUF[25]));
  FDCE \ciphertext_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[26]),
        .Q(ciphertext_OBUF[26]));
  FDCE \ciphertext_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[27]),
        .Q(ciphertext_OBUF[27]));
  FDCE \ciphertext_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[28]),
        .Q(ciphertext_OBUF[28]));
  FDCE \ciphertext_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[29]),
        .Q(ciphertext_OBUF[29]));
  FDCE \ciphertext_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[2]),
        .Q(ciphertext_OBUF[2]));
  FDCE \ciphertext_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[30]),
        .Q(ciphertext_OBUF[30]));
  FDCE \ciphertext_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[31]),
        .Q(ciphertext_OBUF[31]));
  FDCE \ciphertext_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[32]),
        .Q(ciphertext_OBUF[32]));
  FDCE \ciphertext_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[33]),
        .Q(ciphertext_OBUF[33]));
  FDCE \ciphertext_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[34]),
        .Q(ciphertext_OBUF[34]));
  FDCE \ciphertext_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[35]),
        .Q(ciphertext_OBUF[35]));
  FDCE \ciphertext_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[36]),
        .Q(ciphertext_OBUF[36]));
  FDCE \ciphertext_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[37]),
        .Q(ciphertext_OBUF[37]));
  FDCE \ciphertext_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[38]),
        .Q(ciphertext_OBUF[38]));
  FDCE \ciphertext_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[39]),
        .Q(ciphertext_OBUF[39]));
  FDCE \ciphertext_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[3]),
        .Q(ciphertext_OBUF[3]));
  FDCE \ciphertext_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[40]),
        .Q(ciphertext_OBUF[40]));
  FDCE \ciphertext_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[41]),
        .Q(ciphertext_OBUF[41]));
  FDCE \ciphertext_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[42]),
        .Q(ciphertext_OBUF[42]));
  FDCE \ciphertext_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[43]),
        .Q(ciphertext_OBUF[43]));
  FDCE \ciphertext_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[44]),
        .Q(ciphertext_OBUF[44]));
  FDCE \ciphertext_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[45]),
        .Q(ciphertext_OBUF[45]));
  FDCE \ciphertext_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[46]),
        .Q(ciphertext_OBUF[46]));
  FDCE \ciphertext_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[47]),
        .Q(ciphertext_OBUF[47]));
  FDCE \ciphertext_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[48]),
        .Q(ciphertext_OBUF[48]));
  FDCE \ciphertext_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[49]),
        .Q(ciphertext_OBUF[49]));
  FDCE \ciphertext_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[4]),
        .Q(ciphertext_OBUF[4]));
  FDCE \ciphertext_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[50]),
        .Q(ciphertext_OBUF[50]));
  FDCE \ciphertext_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[51]),
        .Q(ciphertext_OBUF[51]));
  FDCE \ciphertext_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[52]),
        .Q(ciphertext_OBUF[52]));
  FDCE \ciphertext_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[53]),
        .Q(ciphertext_OBUF[53]));
  FDCE \ciphertext_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[54]),
        .Q(ciphertext_OBUF[54]));
  FDCE \ciphertext_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[55]),
        .Q(ciphertext_OBUF[55]));
  FDCE \ciphertext_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[56]),
        .Q(ciphertext_OBUF[56]));
  FDCE \ciphertext_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[57]),
        .Q(ciphertext_OBUF[57]));
  FDCE \ciphertext_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[58]),
        .Q(ciphertext_OBUF[58]));
  FDCE \ciphertext_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[59]),
        .Q(ciphertext_OBUF[59]));
  FDCE \ciphertext_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[5]),
        .Q(ciphertext_OBUF[5]));
  FDCE \ciphertext_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[60]),
        .Q(ciphertext_OBUF[60]));
  FDCE \ciphertext_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[61]),
        .Q(ciphertext_OBUF[61]));
  FDCE \ciphertext_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[62]),
        .Q(ciphertext_OBUF[62]));
  FDCE \ciphertext_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[63]),
        .Q(ciphertext_OBUF[63]));
  FDCE \ciphertext_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[64]),
        .Q(ciphertext_OBUF[64]));
  FDCE \ciphertext_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[65]),
        .Q(ciphertext_OBUF[65]));
  FDCE \ciphertext_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[66]),
        .Q(ciphertext_OBUF[66]));
  FDCE \ciphertext_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[67]),
        .Q(ciphertext_OBUF[67]));
  FDCE \ciphertext_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[68]),
        .Q(ciphertext_OBUF[68]));
  FDCE \ciphertext_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[69]),
        .Q(ciphertext_OBUF[69]));
  FDCE \ciphertext_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[6]),
        .Q(ciphertext_OBUF[6]));
  FDCE \ciphertext_reg[70] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[70]),
        .Q(ciphertext_OBUF[70]));
  FDCE \ciphertext_reg[71] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[71]),
        .Q(ciphertext_OBUF[71]));
  FDCE \ciphertext_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[72]),
        .Q(ciphertext_OBUF[72]));
  FDCE \ciphertext_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[73]),
        .Q(ciphertext_OBUF[73]));
  FDCE \ciphertext_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[74]),
        .Q(ciphertext_OBUF[74]));
  FDCE \ciphertext_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[75]),
        .Q(ciphertext_OBUF[75]));
  FDCE \ciphertext_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[76]),
        .Q(ciphertext_OBUF[76]));
  FDCE \ciphertext_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[77]),
        .Q(ciphertext_OBUF[77]));
  FDCE \ciphertext_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[78]),
        .Q(ciphertext_OBUF[78]));
  FDCE \ciphertext_reg[79] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[79]),
        .Q(ciphertext_OBUF[79]));
  FDCE \ciphertext_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[7]),
        .Q(ciphertext_OBUF[7]));
  FDCE \ciphertext_reg[80] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[80]),
        .Q(ciphertext_OBUF[80]));
  FDCE \ciphertext_reg[81] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[81]),
        .Q(ciphertext_OBUF[81]));
  FDCE \ciphertext_reg[82] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[82]),
        .Q(ciphertext_OBUF[82]));
  FDCE \ciphertext_reg[83] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[83]),
        .Q(ciphertext_OBUF[83]));
  FDCE \ciphertext_reg[84] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[84]),
        .Q(ciphertext_OBUF[84]));
  FDCE \ciphertext_reg[85] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[85]),
        .Q(ciphertext_OBUF[85]));
  FDCE \ciphertext_reg[86] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[86]),
        .Q(ciphertext_OBUF[86]));
  FDCE \ciphertext_reg[87] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[87]),
        .Q(ciphertext_OBUF[87]));
  FDCE \ciphertext_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[88]),
        .Q(ciphertext_OBUF[88]));
  FDCE \ciphertext_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[89]),
        .Q(ciphertext_OBUF[89]));
  FDCE \ciphertext_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[8]),
        .Q(ciphertext_OBUF[8]));
  FDCE \ciphertext_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[90]),
        .Q(ciphertext_OBUF[90]));
  FDCE \ciphertext_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[91]),
        .Q(ciphertext_OBUF[91]));
  FDCE \ciphertext_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[92]),
        .Q(ciphertext_OBUF[92]));
  FDCE \ciphertext_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[93]),
        .Q(ciphertext_OBUF[93]));
  FDCE \ciphertext_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[94]),
        .Q(ciphertext_OBUF[94]));
  FDCE \ciphertext_reg[95] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[95]),
        .Q(ciphertext_OBUF[95]));
  FDCE \ciphertext_reg[96] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[96]),
        .Q(ciphertext_OBUF[96]));
  FDCE \ciphertext_reg[97] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[97]),
        .Q(ciphertext_OBUF[97]));
  FDCE \ciphertext_reg[98] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[98]),
        .Q(ciphertext_OBUF[98]));
  FDCE \ciphertext_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[99]),
        .Q(ciphertext_OBUF[99]));
  FDCE \ciphertext_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\FSM_onehot_current_state_reg_n_0_[2] ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(ciphertext0[9]),
        .Q(ciphertext_OBUF[9]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF done_OBUF_inst
       (.I(done_OBUF),
        .O(done));
  FDCE done_reg
       (.C(clk_IBUF_BUFG),
        .CE(busy_i_1_n_0),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\FSM_onehot_current_state_reg_n_0_[2] ),
        .Q(done_OBUF));
  IBUF \key_IBUF[0]_inst 
       (.I(key[0]),
        .O(key_IBUF[0]));
  IBUF \key_IBUF[100]_inst 
       (.I(key[100]),
        .O(key_IBUF[100]));
  IBUF \key_IBUF[101]_inst 
       (.I(key[101]),
        .O(key_IBUF[101]));
  IBUF \key_IBUF[102]_inst 
       (.I(key[102]),
        .O(key_IBUF[102]));
  IBUF \key_IBUF[103]_inst 
       (.I(key[103]),
        .O(key_IBUF[103]));
  IBUF \key_IBUF[104]_inst 
       (.I(key[104]),
        .O(key_IBUF[104]));
  IBUF \key_IBUF[105]_inst 
       (.I(key[105]),
        .O(key_IBUF[105]));
  IBUF \key_IBUF[106]_inst 
       (.I(key[106]),
        .O(key_IBUF[106]));
  IBUF \key_IBUF[107]_inst 
       (.I(key[107]),
        .O(key_IBUF[107]));
  IBUF \key_IBUF[108]_inst 
       (.I(key[108]),
        .O(key_IBUF[108]));
  IBUF \key_IBUF[109]_inst 
       (.I(key[109]),
        .O(key_IBUF[109]));
  IBUF \key_IBUF[10]_inst 
       (.I(key[10]),
        .O(key_IBUF[10]));
  IBUF \key_IBUF[110]_inst 
       (.I(key[110]),
        .O(key_IBUF[110]));
  IBUF \key_IBUF[111]_inst 
       (.I(key[111]),
        .O(key_IBUF[111]));
  IBUF \key_IBUF[112]_inst 
       (.I(key[112]),
        .O(key_IBUF[112]));
  IBUF \key_IBUF[113]_inst 
       (.I(key[113]),
        .O(key_IBUF[113]));
  IBUF \key_IBUF[114]_inst 
       (.I(key[114]),
        .O(key_IBUF[114]));
  IBUF \key_IBUF[115]_inst 
       (.I(key[115]),
        .O(key_IBUF[115]));
  IBUF \key_IBUF[116]_inst 
       (.I(key[116]),
        .O(key_IBUF[116]));
  IBUF \key_IBUF[117]_inst 
       (.I(key[117]),
        .O(key_IBUF[117]));
  IBUF \key_IBUF[118]_inst 
       (.I(key[118]),
        .O(key_IBUF[118]));
  IBUF \key_IBUF[119]_inst 
       (.I(key[119]),
        .O(key_IBUF[119]));
  IBUF \key_IBUF[11]_inst 
       (.I(key[11]),
        .O(key_IBUF[11]));
  IBUF \key_IBUF[120]_inst 
       (.I(key[120]),
        .O(key_IBUF[120]));
  IBUF \key_IBUF[121]_inst 
       (.I(key[121]),
        .O(key_IBUF[121]));
  IBUF \key_IBUF[122]_inst 
       (.I(key[122]),
        .O(key_IBUF[122]));
  IBUF \key_IBUF[123]_inst 
       (.I(key[123]),
        .O(key_IBUF[123]));
  IBUF \key_IBUF[124]_inst 
       (.I(key[124]),
        .O(key_IBUF[124]));
  IBUF \key_IBUF[125]_inst 
       (.I(key[125]),
        .O(key_IBUF[125]));
  IBUF \key_IBUF[126]_inst 
       (.I(key[126]),
        .O(key_IBUF[126]));
  IBUF \key_IBUF[127]_inst 
       (.I(key[127]),
        .O(key_IBUF[127]));
  IBUF \key_IBUF[12]_inst 
       (.I(key[12]),
        .O(key_IBUF[12]));
  IBUF \key_IBUF[13]_inst 
       (.I(key[13]),
        .O(key_IBUF[13]));
  IBUF \key_IBUF[14]_inst 
       (.I(key[14]),
        .O(key_IBUF[14]));
  IBUF \key_IBUF[15]_inst 
       (.I(key[15]),
        .O(key_IBUF[15]));
  IBUF \key_IBUF[16]_inst 
       (.I(key[16]),
        .O(key_IBUF[16]));
  IBUF \key_IBUF[17]_inst 
       (.I(key[17]),
        .O(key_IBUF[17]));
  IBUF \key_IBUF[18]_inst 
       (.I(key[18]),
        .O(key_IBUF[18]));
  IBUF \key_IBUF[19]_inst 
       (.I(key[19]),
        .O(key_IBUF[19]));
  IBUF \key_IBUF[1]_inst 
       (.I(key[1]),
        .O(key_IBUF[1]));
  IBUF \key_IBUF[20]_inst 
       (.I(key[20]),
        .O(key_IBUF[20]));
  IBUF \key_IBUF[21]_inst 
       (.I(key[21]),
        .O(key_IBUF[21]));
  IBUF \key_IBUF[22]_inst 
       (.I(key[22]),
        .O(key_IBUF[22]));
  IBUF \key_IBUF[23]_inst 
       (.I(key[23]),
        .O(key_IBUF[23]));
  IBUF \key_IBUF[24]_inst 
       (.I(key[24]),
        .O(key_IBUF[24]));
  IBUF \key_IBUF[25]_inst 
       (.I(key[25]),
        .O(key_IBUF[25]));
  IBUF \key_IBUF[26]_inst 
       (.I(key[26]),
        .O(key_IBUF[26]));
  IBUF \key_IBUF[27]_inst 
       (.I(key[27]),
        .O(key_IBUF[27]));
  IBUF \key_IBUF[28]_inst 
       (.I(key[28]),
        .O(key_IBUF[28]));
  IBUF \key_IBUF[29]_inst 
       (.I(key[29]),
        .O(key_IBUF[29]));
  IBUF \key_IBUF[2]_inst 
       (.I(key[2]),
        .O(key_IBUF[2]));
  IBUF \key_IBUF[30]_inst 
       (.I(key[30]),
        .O(key_IBUF[30]));
  IBUF \key_IBUF[31]_inst 
       (.I(key[31]),
        .O(key_IBUF[31]));
  IBUF \key_IBUF[32]_inst 
       (.I(key[32]),
        .O(key_IBUF[32]));
  IBUF \key_IBUF[33]_inst 
       (.I(key[33]),
        .O(key_IBUF[33]));
  IBUF \key_IBUF[34]_inst 
       (.I(key[34]),
        .O(key_IBUF[34]));
  IBUF \key_IBUF[35]_inst 
       (.I(key[35]),
        .O(key_IBUF[35]));
  IBUF \key_IBUF[36]_inst 
       (.I(key[36]),
        .O(key_IBUF[36]));
  IBUF \key_IBUF[37]_inst 
       (.I(key[37]),
        .O(key_IBUF[37]));
  IBUF \key_IBUF[38]_inst 
       (.I(key[38]),
        .O(key_IBUF[38]));
  IBUF \key_IBUF[39]_inst 
       (.I(key[39]),
        .O(key_IBUF[39]));
  IBUF \key_IBUF[3]_inst 
       (.I(key[3]),
        .O(key_IBUF[3]));
  IBUF \key_IBUF[40]_inst 
       (.I(key[40]),
        .O(key_IBUF[40]));
  IBUF \key_IBUF[41]_inst 
       (.I(key[41]),
        .O(key_IBUF[41]));
  IBUF \key_IBUF[42]_inst 
       (.I(key[42]),
        .O(key_IBUF[42]));
  IBUF \key_IBUF[43]_inst 
       (.I(key[43]),
        .O(key_IBUF[43]));
  IBUF \key_IBUF[44]_inst 
       (.I(key[44]),
        .O(key_IBUF[44]));
  IBUF \key_IBUF[45]_inst 
       (.I(key[45]),
        .O(key_IBUF[45]));
  IBUF \key_IBUF[46]_inst 
       (.I(key[46]),
        .O(key_IBUF[46]));
  IBUF \key_IBUF[47]_inst 
       (.I(key[47]),
        .O(key_IBUF[47]));
  IBUF \key_IBUF[48]_inst 
       (.I(key[48]),
        .O(key_IBUF[48]));
  IBUF \key_IBUF[49]_inst 
       (.I(key[49]),
        .O(key_IBUF[49]));
  IBUF \key_IBUF[4]_inst 
       (.I(key[4]),
        .O(key_IBUF[4]));
  IBUF \key_IBUF[50]_inst 
       (.I(key[50]),
        .O(key_IBUF[50]));
  IBUF \key_IBUF[51]_inst 
       (.I(key[51]),
        .O(key_IBUF[51]));
  IBUF \key_IBUF[52]_inst 
       (.I(key[52]),
        .O(key_IBUF[52]));
  IBUF \key_IBUF[53]_inst 
       (.I(key[53]),
        .O(key_IBUF[53]));
  IBUF \key_IBUF[54]_inst 
       (.I(key[54]),
        .O(key_IBUF[54]));
  IBUF \key_IBUF[55]_inst 
       (.I(key[55]),
        .O(key_IBUF[55]));
  IBUF \key_IBUF[56]_inst 
       (.I(key[56]),
        .O(key_IBUF[56]));
  IBUF \key_IBUF[57]_inst 
       (.I(key[57]),
        .O(key_IBUF[57]));
  IBUF \key_IBUF[58]_inst 
       (.I(key[58]),
        .O(key_IBUF[58]));
  IBUF \key_IBUF[59]_inst 
       (.I(key[59]),
        .O(key_IBUF[59]));
  IBUF \key_IBUF[5]_inst 
       (.I(key[5]),
        .O(key_IBUF[5]));
  IBUF \key_IBUF[60]_inst 
       (.I(key[60]),
        .O(key_IBUF[60]));
  IBUF \key_IBUF[61]_inst 
       (.I(key[61]),
        .O(key_IBUF[61]));
  IBUF \key_IBUF[62]_inst 
       (.I(key[62]),
        .O(key_IBUF[62]));
  IBUF \key_IBUF[63]_inst 
       (.I(key[63]),
        .O(key_IBUF[63]));
  IBUF \key_IBUF[64]_inst 
       (.I(key[64]),
        .O(key_IBUF[64]));
  IBUF \key_IBUF[65]_inst 
       (.I(key[65]),
        .O(key_IBUF[65]));
  IBUF \key_IBUF[66]_inst 
       (.I(key[66]),
        .O(key_IBUF[66]));
  IBUF \key_IBUF[67]_inst 
       (.I(key[67]),
        .O(key_IBUF[67]));
  IBUF \key_IBUF[68]_inst 
       (.I(key[68]),
        .O(key_IBUF[68]));
  IBUF \key_IBUF[69]_inst 
       (.I(key[69]),
        .O(key_IBUF[69]));
  IBUF \key_IBUF[6]_inst 
       (.I(key[6]),
        .O(key_IBUF[6]));
  IBUF \key_IBUF[70]_inst 
       (.I(key[70]),
        .O(key_IBUF[70]));
  IBUF \key_IBUF[71]_inst 
       (.I(key[71]),
        .O(key_IBUF[71]));
  IBUF \key_IBUF[72]_inst 
       (.I(key[72]),
        .O(key_IBUF[72]));
  IBUF \key_IBUF[73]_inst 
       (.I(key[73]),
        .O(key_IBUF[73]));
  IBUF \key_IBUF[74]_inst 
       (.I(key[74]),
        .O(key_IBUF[74]));
  IBUF \key_IBUF[75]_inst 
       (.I(key[75]),
        .O(key_IBUF[75]));
  IBUF \key_IBUF[76]_inst 
       (.I(key[76]),
        .O(key_IBUF[76]));
  IBUF \key_IBUF[77]_inst 
       (.I(key[77]),
        .O(key_IBUF[77]));
  IBUF \key_IBUF[78]_inst 
       (.I(key[78]),
        .O(key_IBUF[78]));
  IBUF \key_IBUF[79]_inst 
       (.I(key[79]),
        .O(key_IBUF[79]));
  IBUF \key_IBUF[7]_inst 
       (.I(key[7]),
        .O(key_IBUF[7]));
  IBUF \key_IBUF[80]_inst 
       (.I(key[80]),
        .O(key_IBUF[80]));
  IBUF \key_IBUF[81]_inst 
       (.I(key[81]),
        .O(key_IBUF[81]));
  IBUF \key_IBUF[82]_inst 
       (.I(key[82]),
        .O(key_IBUF[82]));
  IBUF \key_IBUF[83]_inst 
       (.I(key[83]),
        .O(key_IBUF[83]));
  IBUF \key_IBUF[84]_inst 
       (.I(key[84]),
        .O(key_IBUF[84]));
  IBUF \key_IBUF[85]_inst 
       (.I(key[85]),
        .O(key_IBUF[85]));
  IBUF \key_IBUF[86]_inst 
       (.I(key[86]),
        .O(key_IBUF[86]));
  IBUF \key_IBUF[87]_inst 
       (.I(key[87]),
        .O(key_IBUF[87]));
  IBUF \key_IBUF[88]_inst 
       (.I(key[88]),
        .O(key_IBUF[88]));
  IBUF \key_IBUF[89]_inst 
       (.I(key[89]),
        .O(key_IBUF[89]));
  IBUF \key_IBUF[8]_inst 
       (.I(key[8]),
        .O(key_IBUF[8]));
  IBUF \key_IBUF[90]_inst 
       (.I(key[90]),
        .O(key_IBUF[90]));
  IBUF \key_IBUF[91]_inst 
       (.I(key[91]),
        .O(key_IBUF[91]));
  IBUF \key_IBUF[92]_inst 
       (.I(key[92]),
        .O(key_IBUF[92]));
  IBUF \key_IBUF[93]_inst 
       (.I(key[93]),
        .O(key_IBUF[93]));
  IBUF \key_IBUF[94]_inst 
       (.I(key[94]),
        .O(key_IBUF[94]));
  IBUF \key_IBUF[95]_inst 
       (.I(key[95]),
        .O(key_IBUF[95]));
  IBUF \key_IBUF[96]_inst 
       (.I(key[96]),
        .O(key_IBUF[96]));
  IBUF \key_IBUF[97]_inst 
       (.I(key[97]),
        .O(key_IBUF[97]));
  IBUF \key_IBUF[98]_inst 
       (.I(key[98]),
        .O(key_IBUF[98]));
  IBUF \key_IBUF[99]_inst 
       (.I(key[99]),
        .O(key_IBUF[99]));
  IBUF \key_IBUF[9]_inst 
       (.I(key[9]),
        .O(key_IBUF[9]));
  FDCE \key_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_127),
        .Q(\key_reg_reg_n_0_[0] ));
  FDCE \key_reg_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_27),
        .Q(\key_reg_reg_n_0_[100] ));
  FDCE \key_reg_reg[101] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_26),
        .Q(\key_reg_reg_n_0_[101] ));
  FDCE \key_reg_reg[102] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_25),
        .Q(\key_reg_reg_n_0_[102] ));
  FDCE \key_reg_reg[103] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_24),
        .Q(\key_reg_reg_n_0_[103] ));
  FDCE \key_reg_reg[104] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_23),
        .Q(\key_reg_reg_n_0_[104] ));
  FDCE \key_reg_reg[105] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_22),
        .Q(\key_reg_reg_n_0_[105] ));
  FDCE \key_reg_reg[106] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_21),
        .Q(\key_reg_reg_n_0_[106] ));
  FDCE \key_reg_reg[107] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_20),
        .Q(\key_reg_reg_n_0_[107] ));
  FDCE \key_reg_reg[108] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_19),
        .Q(\key_reg_reg_n_0_[108] ));
  FDCE \key_reg_reg[109] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_18),
        .Q(\key_reg_reg_n_0_[109] ));
  FDCE \key_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_117),
        .Q(\key_reg_reg_n_0_[10] ));
  FDCE \key_reg_reg[110] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_17),
        .Q(\key_reg_reg_n_0_[110] ));
  FDCE \key_reg_reg[111] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_16),
        .Q(\key_reg_reg_n_0_[111] ));
  FDCE \key_reg_reg[112] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_15),
        .Q(\key_reg_reg_n_0_[112] ));
  FDCE \key_reg_reg[113] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_14),
        .Q(\key_reg_reg_n_0_[113] ));
  FDCE \key_reg_reg[114] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_13),
        .Q(\key_reg_reg_n_0_[114] ));
  FDCE \key_reg_reg[115] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_12),
        .Q(\key_reg_reg_n_0_[115] ));
  FDCE \key_reg_reg[116] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_11),
        .Q(\key_reg_reg_n_0_[116] ));
  FDCE \key_reg_reg[117] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_10),
        .Q(\key_reg_reg_n_0_[117] ));
  FDCE \key_reg_reg[118] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_9),
        .Q(\key_reg_reg_n_0_[118] ));
  FDCE \key_reg_reg[119] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_8),
        .Q(\key_reg_reg_n_0_[119] ));
  FDCE \key_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_116),
        .Q(\key_reg_reg_n_0_[11] ));
  FDCE \key_reg_reg[120] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_7),
        .Q(\key_reg_reg_n_0_[120] ));
  FDCE \key_reg_reg[121] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_6),
        .Q(\key_reg_reg_n_0_[121] ));
  FDCE \key_reg_reg[122] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_5),
        .Q(\key_reg_reg_n_0_[122] ));
  FDCE \key_reg_reg[123] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_4),
        .Q(\key_reg_reg_n_0_[123] ));
  FDCE \key_reg_reg[124] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_3),
        .Q(\key_reg_reg_n_0_[124] ));
  FDCE \key_reg_reg[125] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_2),
        .Q(\key_reg_reg_n_0_[125] ));
  FDCE \key_reg_reg[126] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_1),
        .Q(\key_reg_reg_n_0_[126] ));
  FDCE \key_reg_reg[127] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_0),
        .Q(\key_reg_reg_n_0_[127] ));
  FDCE \key_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_115),
        .Q(\key_reg_reg_n_0_[12] ));
  FDCE \key_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_114),
        .Q(\key_reg_reg_n_0_[13] ));
  FDCE \key_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_113),
        .Q(\key_reg_reg_n_0_[14] ));
  FDCE \key_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_112),
        .Q(\key_reg_reg_n_0_[15] ));
  FDCE \key_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_111),
        .Q(\key_reg_reg_n_0_[16] ));
  FDCE \key_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_110),
        .Q(\key_reg_reg_n_0_[17] ));
  FDCE \key_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_109),
        .Q(\key_reg_reg_n_0_[18] ));
  FDCE \key_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_108),
        .Q(\key_reg_reg_n_0_[19] ));
  FDCE \key_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_126),
        .Q(\key_reg_reg_n_0_[1] ));
  FDCE \key_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_107),
        .Q(\key_reg_reg_n_0_[20] ));
  FDCE \key_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_106),
        .Q(\key_reg_reg_n_0_[21] ));
  FDCE \key_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_105),
        .Q(\key_reg_reg_n_0_[22] ));
  FDCE \key_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_104),
        .Q(\key_reg_reg_n_0_[23] ));
  FDCE \key_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_103),
        .Q(\key_reg_reg_n_0_[24] ));
  FDCE \key_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_102),
        .Q(\key_reg_reg_n_0_[25] ));
  FDCE \key_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_101),
        .Q(\key_reg_reg_n_0_[26] ));
  FDCE \key_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_100),
        .Q(\key_reg_reg_n_0_[27] ));
  FDCE \key_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_99),
        .Q(\key_reg_reg_n_0_[28] ));
  FDCE \key_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_98),
        .Q(\key_reg_reg_n_0_[29] ));
  FDCE \key_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_125),
        .Q(\key_reg_reg_n_0_[2] ));
  FDCE \key_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_97),
        .Q(\key_reg_reg_n_0_[30] ));
  FDCE \key_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_96),
        .Q(\key_reg_reg_n_0_[31] ));
  FDCE \key_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_95),
        .Q(\key_reg_reg_n_0_[32] ));
  FDCE \key_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_94),
        .Q(\key_reg_reg_n_0_[33] ));
  FDCE \key_reg_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_93),
        .Q(\key_reg_reg_n_0_[34] ));
  FDCE \key_reg_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_92),
        .Q(\key_reg_reg_n_0_[35] ));
  FDCE \key_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_91),
        .Q(\key_reg_reg_n_0_[36] ));
  FDCE \key_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_90),
        .Q(\key_reg_reg_n_0_[37] ));
  FDCE \key_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_89),
        .Q(\key_reg_reg_n_0_[38] ));
  FDCE \key_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_88),
        .Q(\key_reg_reg_n_0_[39] ));
  FDCE \key_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_124),
        .Q(\key_reg_reg_n_0_[3] ));
  FDCE \key_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_87),
        .Q(\key_reg_reg_n_0_[40] ));
  FDCE \key_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_86),
        .Q(\key_reg_reg_n_0_[41] ));
  FDCE \key_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_85),
        .Q(\key_reg_reg_n_0_[42] ));
  FDCE \key_reg_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_84),
        .Q(\key_reg_reg_n_0_[43] ));
  FDCE \key_reg_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_83),
        .Q(\key_reg_reg_n_0_[44] ));
  FDCE \key_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_82),
        .Q(\key_reg_reg_n_0_[45] ));
  FDCE \key_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_81),
        .Q(\key_reg_reg_n_0_[46] ));
  FDCE \key_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_80),
        .Q(\key_reg_reg_n_0_[47] ));
  FDCE \key_reg_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_79),
        .Q(\key_reg_reg_n_0_[48] ));
  FDCE \key_reg_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_78),
        .Q(\key_reg_reg_n_0_[49] ));
  FDCE \key_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_123),
        .Q(\key_reg_reg_n_0_[4] ));
  FDCE \key_reg_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_77),
        .Q(\key_reg_reg_n_0_[50] ));
  FDCE \key_reg_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_76),
        .Q(\key_reg_reg_n_0_[51] ));
  FDCE \key_reg_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_75),
        .Q(\key_reg_reg_n_0_[52] ));
  FDCE \key_reg_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_74),
        .Q(\key_reg_reg_n_0_[53] ));
  FDCE \key_reg_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_73),
        .Q(\key_reg_reg_n_0_[54] ));
  FDCE \key_reg_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_72),
        .Q(\key_reg_reg_n_0_[55] ));
  FDCE \key_reg_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_71),
        .Q(\key_reg_reg_n_0_[56] ));
  FDCE \key_reg_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_70),
        .Q(\key_reg_reg_n_0_[57] ));
  FDCE \key_reg_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_69),
        .Q(\key_reg_reg_n_0_[58] ));
  FDCE \key_reg_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_68),
        .Q(\key_reg_reg_n_0_[59] ));
  FDCE \key_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_122),
        .Q(\key_reg_reg_n_0_[5] ));
  FDCE \key_reg_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_67),
        .Q(\key_reg_reg_n_0_[60] ));
  FDCE \key_reg_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_66),
        .Q(\key_reg_reg_n_0_[61] ));
  FDCE \key_reg_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_65),
        .Q(\key_reg_reg_n_0_[62] ));
  FDCE \key_reg_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_64),
        .Q(\key_reg_reg_n_0_[63] ));
  FDCE \key_reg_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_63),
        .Q(\key_reg_reg_n_0_[64] ));
  FDCE \key_reg_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_62),
        .Q(\key_reg_reg_n_0_[65] ));
  FDCE \key_reg_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_61),
        .Q(\key_reg_reg_n_0_[66] ));
  FDCE \key_reg_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_60),
        .Q(\key_reg_reg_n_0_[67] ));
  FDCE \key_reg_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_59),
        .Q(\key_reg_reg_n_0_[68] ));
  FDCE \key_reg_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_58),
        .Q(\key_reg_reg_n_0_[69] ));
  FDCE \key_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_121),
        .Q(\key_reg_reg_n_0_[6] ));
  FDCE \key_reg_reg[70] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_57),
        .Q(\key_reg_reg_n_0_[70] ));
  FDCE \key_reg_reg[71] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_56),
        .Q(\key_reg_reg_n_0_[71] ));
  FDCE \key_reg_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_55),
        .Q(\key_reg_reg_n_0_[72] ));
  FDCE \key_reg_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_54),
        .Q(\key_reg_reg_n_0_[73] ));
  FDCE \key_reg_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_53),
        .Q(\key_reg_reg_n_0_[74] ));
  FDCE \key_reg_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_52),
        .Q(\key_reg_reg_n_0_[75] ));
  FDCE \key_reg_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_51),
        .Q(\key_reg_reg_n_0_[76] ));
  FDCE \key_reg_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_50),
        .Q(\key_reg_reg_n_0_[77] ));
  FDCE \key_reg_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_49),
        .Q(\key_reg_reg_n_0_[78] ));
  FDCE \key_reg_reg[79] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_48),
        .Q(\key_reg_reg_n_0_[79] ));
  FDCE \key_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_120),
        .Q(\key_reg_reg_n_0_[7] ));
  FDCE \key_reg_reg[80] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_47),
        .Q(\key_reg_reg_n_0_[80] ));
  FDCE \key_reg_reg[81] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_46),
        .Q(\key_reg_reg_n_0_[81] ));
  FDCE \key_reg_reg[82] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_45),
        .Q(\key_reg_reg_n_0_[82] ));
  FDCE \key_reg_reg[83] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_44),
        .Q(\key_reg_reg_n_0_[83] ));
  FDCE \key_reg_reg[84] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_43),
        .Q(\key_reg_reg_n_0_[84] ));
  FDCE \key_reg_reg[85] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_42),
        .Q(\key_reg_reg_n_0_[85] ));
  FDCE \key_reg_reg[86] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_41),
        .Q(\key_reg_reg_n_0_[86] ));
  FDCE \key_reg_reg[87] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_40),
        .Q(\key_reg_reg_n_0_[87] ));
  FDCE \key_reg_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_39),
        .Q(\key_reg_reg_n_0_[88] ));
  FDCE \key_reg_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_38),
        .Q(\key_reg_reg_n_0_[89] ));
  FDCE \key_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_119),
        .Q(\key_reg_reg_n_0_[8] ));
  FDCE \key_reg_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_37),
        .Q(\key_reg_reg_n_0_[90] ));
  FDCE \key_reg_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_36),
        .Q(\key_reg_reg_n_0_[91] ));
  FDCE \key_reg_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_35),
        .Q(\key_reg_reg_n_0_[92] ));
  FDCE \key_reg_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_34),
        .Q(\key_reg_reg_n_0_[93] ));
  FDCE \key_reg_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_33),
        .Q(\key_reg_reg_n_0_[94] ));
  FDCE \key_reg_reg[95] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_32),
        .Q(\key_reg_reg_n_0_[95] ));
  FDCE \key_reg_reg[96] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_31),
        .Q(\key_reg_reg_n_0_[96] ));
  FDCE \key_reg_reg[97] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_30),
        .Q(\key_reg_reg_n_0_[97] ));
  FDCE \key_reg_reg[98] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_29),
        .Q(\key_reg_reg_n_0_[98] ));
  FDCE \key_reg_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_28),
        .Q(\key_reg_reg_n_0_[99] ));
  FDCE \key_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_118),
        .Q(\key_reg_reg_n_0_[9] ));
  IBUF \mask_in_IBUF[0]_inst 
       (.I(mask_in[0]),
        .O(mask_in_IBUF[0]));
  IBUF \mask_in_IBUF[100]_inst 
       (.I(mask_in[100]),
        .O(mask_in_IBUF[100]));
  IBUF \mask_in_IBUF[101]_inst 
       (.I(mask_in[101]),
        .O(mask_in_IBUF[101]));
  IBUF \mask_in_IBUF[102]_inst 
       (.I(mask_in[102]),
        .O(mask_in_IBUF[102]));
  IBUF \mask_in_IBUF[103]_inst 
       (.I(mask_in[103]),
        .O(mask_in_IBUF[103]));
  IBUF \mask_in_IBUF[104]_inst 
       (.I(mask_in[104]),
        .O(mask_in_IBUF[104]));
  IBUF \mask_in_IBUF[105]_inst 
       (.I(mask_in[105]),
        .O(mask_in_IBUF[105]));
  IBUF \mask_in_IBUF[106]_inst 
       (.I(mask_in[106]),
        .O(mask_in_IBUF[106]));
  IBUF \mask_in_IBUF[107]_inst 
       (.I(mask_in[107]),
        .O(mask_in_IBUF[107]));
  IBUF \mask_in_IBUF[108]_inst 
       (.I(mask_in[108]),
        .O(mask_in_IBUF[108]));
  IBUF \mask_in_IBUF[109]_inst 
       (.I(mask_in[109]),
        .O(mask_in_IBUF[109]));
  IBUF \mask_in_IBUF[10]_inst 
       (.I(mask_in[10]),
        .O(mask_in_IBUF[10]));
  IBUF \mask_in_IBUF[110]_inst 
       (.I(mask_in[110]),
        .O(mask_in_IBUF[110]));
  IBUF \mask_in_IBUF[111]_inst 
       (.I(mask_in[111]),
        .O(mask_in_IBUF[111]));
  IBUF \mask_in_IBUF[112]_inst 
       (.I(mask_in[112]),
        .O(mask_in_IBUF[112]));
  IBUF \mask_in_IBUF[113]_inst 
       (.I(mask_in[113]),
        .O(mask_in_IBUF[113]));
  IBUF \mask_in_IBUF[114]_inst 
       (.I(mask_in[114]),
        .O(mask_in_IBUF[114]));
  IBUF \mask_in_IBUF[115]_inst 
       (.I(mask_in[115]),
        .O(mask_in_IBUF[115]));
  IBUF \mask_in_IBUF[116]_inst 
       (.I(mask_in[116]),
        .O(mask_in_IBUF[116]));
  IBUF \mask_in_IBUF[117]_inst 
       (.I(mask_in[117]),
        .O(mask_in_IBUF[117]));
  IBUF \mask_in_IBUF[118]_inst 
       (.I(mask_in[118]),
        .O(mask_in_IBUF[118]));
  IBUF \mask_in_IBUF[119]_inst 
       (.I(mask_in[119]),
        .O(mask_in_IBUF[119]));
  IBUF \mask_in_IBUF[11]_inst 
       (.I(mask_in[11]),
        .O(mask_in_IBUF[11]));
  IBUF \mask_in_IBUF[120]_inst 
       (.I(mask_in[120]),
        .O(mask_in_IBUF[120]));
  IBUF \mask_in_IBUF[121]_inst 
       (.I(mask_in[121]),
        .O(mask_in_IBUF[121]));
  IBUF \mask_in_IBUF[122]_inst 
       (.I(mask_in[122]),
        .O(mask_in_IBUF[122]));
  IBUF \mask_in_IBUF[123]_inst 
       (.I(mask_in[123]),
        .O(mask_in_IBUF[123]));
  IBUF \mask_in_IBUF[124]_inst 
       (.I(mask_in[124]),
        .O(mask_in_IBUF[124]));
  IBUF \mask_in_IBUF[125]_inst 
       (.I(mask_in[125]),
        .O(mask_in_IBUF[125]));
  IBUF \mask_in_IBUF[126]_inst 
       (.I(mask_in[126]),
        .O(mask_in_IBUF[126]));
  IBUF \mask_in_IBUF[127]_inst 
       (.I(mask_in[127]),
        .O(mask_in_IBUF[127]));
  IBUF \mask_in_IBUF[12]_inst 
       (.I(mask_in[12]),
        .O(mask_in_IBUF[12]));
  IBUF \mask_in_IBUF[13]_inst 
       (.I(mask_in[13]),
        .O(mask_in_IBUF[13]));
  IBUF \mask_in_IBUF[14]_inst 
       (.I(mask_in[14]),
        .O(mask_in_IBUF[14]));
  IBUF \mask_in_IBUF[15]_inst 
       (.I(mask_in[15]),
        .O(mask_in_IBUF[15]));
  IBUF \mask_in_IBUF[16]_inst 
       (.I(mask_in[16]),
        .O(mask_in_IBUF[16]));
  IBUF \mask_in_IBUF[17]_inst 
       (.I(mask_in[17]),
        .O(mask_in_IBUF[17]));
  IBUF \mask_in_IBUF[18]_inst 
       (.I(mask_in[18]),
        .O(mask_in_IBUF[18]));
  IBUF \mask_in_IBUF[19]_inst 
       (.I(mask_in[19]),
        .O(mask_in_IBUF[19]));
  IBUF \mask_in_IBUF[1]_inst 
       (.I(mask_in[1]),
        .O(mask_in_IBUF[1]));
  IBUF \mask_in_IBUF[20]_inst 
       (.I(mask_in[20]),
        .O(mask_in_IBUF[20]));
  IBUF \mask_in_IBUF[21]_inst 
       (.I(mask_in[21]),
        .O(mask_in_IBUF[21]));
  IBUF \mask_in_IBUF[22]_inst 
       (.I(mask_in[22]),
        .O(mask_in_IBUF[22]));
  IBUF \mask_in_IBUF[23]_inst 
       (.I(mask_in[23]),
        .O(mask_in_IBUF[23]));
  IBUF \mask_in_IBUF[24]_inst 
       (.I(mask_in[24]),
        .O(mask_in_IBUF[24]));
  IBUF \mask_in_IBUF[25]_inst 
       (.I(mask_in[25]),
        .O(mask_in_IBUF[25]));
  IBUF \mask_in_IBUF[26]_inst 
       (.I(mask_in[26]),
        .O(mask_in_IBUF[26]));
  IBUF \mask_in_IBUF[27]_inst 
       (.I(mask_in[27]),
        .O(mask_in_IBUF[27]));
  IBUF \mask_in_IBUF[28]_inst 
       (.I(mask_in[28]),
        .O(mask_in_IBUF[28]));
  IBUF \mask_in_IBUF[29]_inst 
       (.I(mask_in[29]),
        .O(mask_in_IBUF[29]));
  IBUF \mask_in_IBUF[2]_inst 
       (.I(mask_in[2]),
        .O(mask_in_IBUF[2]));
  IBUF \mask_in_IBUF[30]_inst 
       (.I(mask_in[30]),
        .O(mask_in_IBUF[30]));
  IBUF \mask_in_IBUF[31]_inst 
       (.I(mask_in[31]),
        .O(mask_in_IBUF[31]));
  IBUF \mask_in_IBUF[32]_inst 
       (.I(mask_in[32]),
        .O(mask_in_IBUF[32]));
  IBUF \mask_in_IBUF[33]_inst 
       (.I(mask_in[33]),
        .O(mask_in_IBUF[33]));
  IBUF \mask_in_IBUF[34]_inst 
       (.I(mask_in[34]),
        .O(mask_in_IBUF[34]));
  IBUF \mask_in_IBUF[35]_inst 
       (.I(mask_in[35]),
        .O(mask_in_IBUF[35]));
  IBUF \mask_in_IBUF[36]_inst 
       (.I(mask_in[36]),
        .O(mask_in_IBUF[36]));
  IBUF \mask_in_IBUF[37]_inst 
       (.I(mask_in[37]),
        .O(mask_in_IBUF[37]));
  IBUF \mask_in_IBUF[38]_inst 
       (.I(mask_in[38]),
        .O(mask_in_IBUF[38]));
  IBUF \mask_in_IBUF[39]_inst 
       (.I(mask_in[39]),
        .O(mask_in_IBUF[39]));
  IBUF \mask_in_IBUF[3]_inst 
       (.I(mask_in[3]),
        .O(mask_in_IBUF[3]));
  IBUF \mask_in_IBUF[40]_inst 
       (.I(mask_in[40]),
        .O(mask_in_IBUF[40]));
  IBUF \mask_in_IBUF[41]_inst 
       (.I(mask_in[41]),
        .O(mask_in_IBUF[41]));
  IBUF \mask_in_IBUF[42]_inst 
       (.I(mask_in[42]),
        .O(mask_in_IBUF[42]));
  IBUF \mask_in_IBUF[43]_inst 
       (.I(mask_in[43]),
        .O(mask_in_IBUF[43]));
  IBUF \mask_in_IBUF[44]_inst 
       (.I(mask_in[44]),
        .O(mask_in_IBUF[44]));
  IBUF \mask_in_IBUF[45]_inst 
       (.I(mask_in[45]),
        .O(mask_in_IBUF[45]));
  IBUF \mask_in_IBUF[46]_inst 
       (.I(mask_in[46]),
        .O(mask_in_IBUF[46]));
  IBUF \mask_in_IBUF[47]_inst 
       (.I(mask_in[47]),
        .O(mask_in_IBUF[47]));
  IBUF \mask_in_IBUF[48]_inst 
       (.I(mask_in[48]),
        .O(mask_in_IBUF[48]));
  IBUF \mask_in_IBUF[49]_inst 
       (.I(mask_in[49]),
        .O(mask_in_IBUF[49]));
  IBUF \mask_in_IBUF[4]_inst 
       (.I(mask_in[4]),
        .O(mask_in_IBUF[4]));
  IBUF \mask_in_IBUF[50]_inst 
       (.I(mask_in[50]),
        .O(mask_in_IBUF[50]));
  IBUF \mask_in_IBUF[51]_inst 
       (.I(mask_in[51]),
        .O(mask_in_IBUF[51]));
  IBUF \mask_in_IBUF[52]_inst 
       (.I(mask_in[52]),
        .O(mask_in_IBUF[52]));
  IBUF \mask_in_IBUF[53]_inst 
       (.I(mask_in[53]),
        .O(mask_in_IBUF[53]));
  IBUF \mask_in_IBUF[54]_inst 
       (.I(mask_in[54]),
        .O(mask_in_IBUF[54]));
  IBUF \mask_in_IBUF[55]_inst 
       (.I(mask_in[55]),
        .O(mask_in_IBUF[55]));
  IBUF \mask_in_IBUF[56]_inst 
       (.I(mask_in[56]),
        .O(mask_in_IBUF[56]));
  IBUF \mask_in_IBUF[57]_inst 
       (.I(mask_in[57]),
        .O(mask_in_IBUF[57]));
  IBUF \mask_in_IBUF[58]_inst 
       (.I(mask_in[58]),
        .O(mask_in_IBUF[58]));
  IBUF \mask_in_IBUF[59]_inst 
       (.I(mask_in[59]),
        .O(mask_in_IBUF[59]));
  IBUF \mask_in_IBUF[5]_inst 
       (.I(mask_in[5]),
        .O(mask_in_IBUF[5]));
  IBUF \mask_in_IBUF[60]_inst 
       (.I(mask_in[60]),
        .O(mask_in_IBUF[60]));
  IBUF \mask_in_IBUF[61]_inst 
       (.I(mask_in[61]),
        .O(mask_in_IBUF[61]));
  IBUF \mask_in_IBUF[62]_inst 
       (.I(mask_in[62]),
        .O(mask_in_IBUF[62]));
  IBUF \mask_in_IBUF[63]_inst 
       (.I(mask_in[63]),
        .O(mask_in_IBUF[63]));
  IBUF \mask_in_IBUF[64]_inst 
       (.I(mask_in[64]),
        .O(mask_in_IBUF[64]));
  IBUF \mask_in_IBUF[65]_inst 
       (.I(mask_in[65]),
        .O(mask_in_IBUF[65]));
  IBUF \mask_in_IBUF[66]_inst 
       (.I(mask_in[66]),
        .O(mask_in_IBUF[66]));
  IBUF \mask_in_IBUF[67]_inst 
       (.I(mask_in[67]),
        .O(mask_in_IBUF[67]));
  IBUF \mask_in_IBUF[68]_inst 
       (.I(mask_in[68]),
        .O(mask_in_IBUF[68]));
  IBUF \mask_in_IBUF[69]_inst 
       (.I(mask_in[69]),
        .O(mask_in_IBUF[69]));
  IBUF \mask_in_IBUF[6]_inst 
       (.I(mask_in[6]),
        .O(mask_in_IBUF[6]));
  IBUF \mask_in_IBUF[70]_inst 
       (.I(mask_in[70]),
        .O(mask_in_IBUF[70]));
  IBUF \mask_in_IBUF[71]_inst 
       (.I(mask_in[71]),
        .O(mask_in_IBUF[71]));
  IBUF \mask_in_IBUF[72]_inst 
       (.I(mask_in[72]),
        .O(mask_in_IBUF[72]));
  IBUF \mask_in_IBUF[73]_inst 
       (.I(mask_in[73]),
        .O(mask_in_IBUF[73]));
  IBUF \mask_in_IBUF[74]_inst 
       (.I(mask_in[74]),
        .O(mask_in_IBUF[74]));
  IBUF \mask_in_IBUF[75]_inst 
       (.I(mask_in[75]),
        .O(mask_in_IBUF[75]));
  IBUF \mask_in_IBUF[76]_inst 
       (.I(mask_in[76]),
        .O(mask_in_IBUF[76]));
  IBUF \mask_in_IBUF[77]_inst 
       (.I(mask_in[77]),
        .O(mask_in_IBUF[77]));
  IBUF \mask_in_IBUF[78]_inst 
       (.I(mask_in[78]),
        .O(mask_in_IBUF[78]));
  IBUF \mask_in_IBUF[79]_inst 
       (.I(mask_in[79]),
        .O(mask_in_IBUF[79]));
  IBUF \mask_in_IBUF[7]_inst 
       (.I(mask_in[7]),
        .O(mask_in_IBUF[7]));
  IBUF \mask_in_IBUF[80]_inst 
       (.I(mask_in[80]),
        .O(mask_in_IBUF[80]));
  IBUF \mask_in_IBUF[81]_inst 
       (.I(mask_in[81]),
        .O(mask_in_IBUF[81]));
  IBUF \mask_in_IBUF[82]_inst 
       (.I(mask_in[82]),
        .O(mask_in_IBUF[82]));
  IBUF \mask_in_IBUF[83]_inst 
       (.I(mask_in[83]),
        .O(mask_in_IBUF[83]));
  IBUF \mask_in_IBUF[84]_inst 
       (.I(mask_in[84]),
        .O(mask_in_IBUF[84]));
  IBUF \mask_in_IBUF[85]_inst 
       (.I(mask_in[85]),
        .O(mask_in_IBUF[85]));
  IBUF \mask_in_IBUF[86]_inst 
       (.I(mask_in[86]),
        .O(mask_in_IBUF[86]));
  IBUF \mask_in_IBUF[87]_inst 
       (.I(mask_in[87]),
        .O(mask_in_IBUF[87]));
  IBUF \mask_in_IBUF[88]_inst 
       (.I(mask_in[88]),
        .O(mask_in_IBUF[88]));
  IBUF \mask_in_IBUF[89]_inst 
       (.I(mask_in[89]),
        .O(mask_in_IBUF[89]));
  IBUF \mask_in_IBUF[8]_inst 
       (.I(mask_in[8]),
        .O(mask_in_IBUF[8]));
  IBUF \mask_in_IBUF[90]_inst 
       (.I(mask_in[90]),
        .O(mask_in_IBUF[90]));
  IBUF \mask_in_IBUF[91]_inst 
       (.I(mask_in[91]),
        .O(mask_in_IBUF[91]));
  IBUF \mask_in_IBUF[92]_inst 
       (.I(mask_in[92]),
        .O(mask_in_IBUF[92]));
  IBUF \mask_in_IBUF[93]_inst 
       (.I(mask_in[93]),
        .O(mask_in_IBUF[93]));
  IBUF \mask_in_IBUF[94]_inst 
       (.I(mask_in[94]),
        .O(mask_in_IBUF[94]));
  IBUF \mask_in_IBUF[95]_inst 
       (.I(mask_in[95]),
        .O(mask_in_IBUF[95]));
  IBUF \mask_in_IBUF[96]_inst 
       (.I(mask_in[96]),
        .O(mask_in_IBUF[96]));
  IBUF \mask_in_IBUF[97]_inst 
       (.I(mask_in[97]),
        .O(mask_in_IBUF[97]));
  IBUF \mask_in_IBUF[98]_inst 
       (.I(mask_in[98]),
        .O(mask_in_IBUF[98]));
  IBUF \mask_in_IBUF[99]_inst 
       (.I(mask_in[99]),
        .O(mask_in_IBUF[99]));
  IBUF \mask_in_IBUF[9]_inst 
       (.I(mask_in[9]),
        .O(mask_in_IBUF[9]));
  IBUF \plaintext_IBUF[0]_inst 
       (.I(plaintext[0]),
        .O(plaintext_IBUF[0]));
  IBUF \plaintext_IBUF[100]_inst 
       (.I(plaintext[100]),
        .O(plaintext_IBUF[100]));
  IBUF \plaintext_IBUF[101]_inst 
       (.I(plaintext[101]),
        .O(plaintext_IBUF[101]));
  IBUF \plaintext_IBUF[102]_inst 
       (.I(plaintext[102]),
        .O(plaintext_IBUF[102]));
  IBUF \plaintext_IBUF[103]_inst 
       (.I(plaintext[103]),
        .O(plaintext_IBUF[103]));
  IBUF \plaintext_IBUF[104]_inst 
       (.I(plaintext[104]),
        .O(plaintext_IBUF[104]));
  IBUF \plaintext_IBUF[105]_inst 
       (.I(plaintext[105]),
        .O(plaintext_IBUF[105]));
  IBUF \plaintext_IBUF[106]_inst 
       (.I(plaintext[106]),
        .O(plaintext_IBUF[106]));
  IBUF \plaintext_IBUF[107]_inst 
       (.I(plaintext[107]),
        .O(plaintext_IBUF[107]));
  IBUF \plaintext_IBUF[108]_inst 
       (.I(plaintext[108]),
        .O(plaintext_IBUF[108]));
  IBUF \plaintext_IBUF[109]_inst 
       (.I(plaintext[109]),
        .O(plaintext_IBUF[109]));
  IBUF \plaintext_IBUF[10]_inst 
       (.I(plaintext[10]),
        .O(plaintext_IBUF[10]));
  IBUF \plaintext_IBUF[110]_inst 
       (.I(plaintext[110]),
        .O(plaintext_IBUF[110]));
  IBUF \plaintext_IBUF[111]_inst 
       (.I(plaintext[111]),
        .O(plaintext_IBUF[111]));
  IBUF \plaintext_IBUF[112]_inst 
       (.I(plaintext[112]),
        .O(plaintext_IBUF[112]));
  IBUF \plaintext_IBUF[113]_inst 
       (.I(plaintext[113]),
        .O(plaintext_IBUF[113]));
  IBUF \plaintext_IBUF[114]_inst 
       (.I(plaintext[114]),
        .O(plaintext_IBUF[114]));
  IBUF \plaintext_IBUF[115]_inst 
       (.I(plaintext[115]),
        .O(plaintext_IBUF[115]));
  IBUF \plaintext_IBUF[116]_inst 
       (.I(plaintext[116]),
        .O(plaintext_IBUF[116]));
  IBUF \plaintext_IBUF[117]_inst 
       (.I(plaintext[117]),
        .O(plaintext_IBUF[117]));
  IBUF \plaintext_IBUF[118]_inst 
       (.I(plaintext[118]),
        .O(plaintext_IBUF[118]));
  IBUF \plaintext_IBUF[119]_inst 
       (.I(plaintext[119]),
        .O(plaintext_IBUF[119]));
  IBUF \plaintext_IBUF[11]_inst 
       (.I(plaintext[11]),
        .O(plaintext_IBUF[11]));
  IBUF \plaintext_IBUF[120]_inst 
       (.I(plaintext[120]),
        .O(plaintext_IBUF[120]));
  IBUF \plaintext_IBUF[121]_inst 
       (.I(plaintext[121]),
        .O(plaintext_IBUF[121]));
  IBUF \plaintext_IBUF[122]_inst 
       (.I(plaintext[122]),
        .O(plaintext_IBUF[122]));
  IBUF \plaintext_IBUF[123]_inst 
       (.I(plaintext[123]),
        .O(plaintext_IBUF[123]));
  IBUF \plaintext_IBUF[124]_inst 
       (.I(plaintext[124]),
        .O(plaintext_IBUF[124]));
  IBUF \plaintext_IBUF[125]_inst 
       (.I(plaintext[125]),
        .O(plaintext_IBUF[125]));
  IBUF \plaintext_IBUF[126]_inst 
       (.I(plaintext[126]),
        .O(plaintext_IBUF[126]));
  IBUF \plaintext_IBUF[127]_inst 
       (.I(plaintext[127]),
        .O(plaintext_IBUF[127]));
  IBUF \plaintext_IBUF[12]_inst 
       (.I(plaintext[12]),
        .O(plaintext_IBUF[12]));
  IBUF \plaintext_IBUF[13]_inst 
       (.I(plaintext[13]),
        .O(plaintext_IBUF[13]));
  IBUF \plaintext_IBUF[14]_inst 
       (.I(plaintext[14]),
        .O(plaintext_IBUF[14]));
  IBUF \plaintext_IBUF[15]_inst 
       (.I(plaintext[15]),
        .O(plaintext_IBUF[15]));
  IBUF \plaintext_IBUF[16]_inst 
       (.I(plaintext[16]),
        .O(plaintext_IBUF[16]));
  IBUF \plaintext_IBUF[17]_inst 
       (.I(plaintext[17]),
        .O(plaintext_IBUF[17]));
  IBUF \plaintext_IBUF[18]_inst 
       (.I(plaintext[18]),
        .O(plaintext_IBUF[18]));
  IBUF \plaintext_IBUF[19]_inst 
       (.I(plaintext[19]),
        .O(plaintext_IBUF[19]));
  IBUF \plaintext_IBUF[1]_inst 
       (.I(plaintext[1]),
        .O(plaintext_IBUF[1]));
  IBUF \plaintext_IBUF[20]_inst 
       (.I(plaintext[20]),
        .O(plaintext_IBUF[20]));
  IBUF \plaintext_IBUF[21]_inst 
       (.I(plaintext[21]),
        .O(plaintext_IBUF[21]));
  IBUF \plaintext_IBUF[22]_inst 
       (.I(plaintext[22]),
        .O(plaintext_IBUF[22]));
  IBUF \plaintext_IBUF[23]_inst 
       (.I(plaintext[23]),
        .O(plaintext_IBUF[23]));
  IBUF \plaintext_IBUF[24]_inst 
       (.I(plaintext[24]),
        .O(plaintext_IBUF[24]));
  IBUF \plaintext_IBUF[25]_inst 
       (.I(plaintext[25]),
        .O(plaintext_IBUF[25]));
  IBUF \plaintext_IBUF[26]_inst 
       (.I(plaintext[26]),
        .O(plaintext_IBUF[26]));
  IBUF \plaintext_IBUF[27]_inst 
       (.I(plaintext[27]),
        .O(plaintext_IBUF[27]));
  IBUF \plaintext_IBUF[28]_inst 
       (.I(plaintext[28]),
        .O(plaintext_IBUF[28]));
  IBUF \plaintext_IBUF[29]_inst 
       (.I(plaintext[29]),
        .O(plaintext_IBUF[29]));
  IBUF \plaintext_IBUF[2]_inst 
       (.I(plaintext[2]),
        .O(plaintext_IBUF[2]));
  IBUF \plaintext_IBUF[30]_inst 
       (.I(plaintext[30]),
        .O(plaintext_IBUF[30]));
  IBUF \plaintext_IBUF[31]_inst 
       (.I(plaintext[31]),
        .O(plaintext_IBUF[31]));
  IBUF \plaintext_IBUF[32]_inst 
       (.I(plaintext[32]),
        .O(plaintext_IBUF[32]));
  IBUF \plaintext_IBUF[33]_inst 
       (.I(plaintext[33]),
        .O(plaintext_IBUF[33]));
  IBUF \plaintext_IBUF[34]_inst 
       (.I(plaintext[34]),
        .O(plaintext_IBUF[34]));
  IBUF \plaintext_IBUF[35]_inst 
       (.I(plaintext[35]),
        .O(plaintext_IBUF[35]));
  IBUF \plaintext_IBUF[36]_inst 
       (.I(plaintext[36]),
        .O(plaintext_IBUF[36]));
  IBUF \plaintext_IBUF[37]_inst 
       (.I(plaintext[37]),
        .O(plaintext_IBUF[37]));
  IBUF \plaintext_IBUF[38]_inst 
       (.I(plaintext[38]),
        .O(plaintext_IBUF[38]));
  IBUF \plaintext_IBUF[39]_inst 
       (.I(plaintext[39]),
        .O(plaintext_IBUF[39]));
  IBUF \plaintext_IBUF[3]_inst 
       (.I(plaintext[3]),
        .O(plaintext_IBUF[3]));
  IBUF \plaintext_IBUF[40]_inst 
       (.I(plaintext[40]),
        .O(plaintext_IBUF[40]));
  IBUF \plaintext_IBUF[41]_inst 
       (.I(plaintext[41]),
        .O(plaintext_IBUF[41]));
  IBUF \plaintext_IBUF[42]_inst 
       (.I(plaintext[42]),
        .O(plaintext_IBUF[42]));
  IBUF \plaintext_IBUF[43]_inst 
       (.I(plaintext[43]),
        .O(plaintext_IBUF[43]));
  IBUF \plaintext_IBUF[44]_inst 
       (.I(plaintext[44]),
        .O(plaintext_IBUF[44]));
  IBUF \plaintext_IBUF[45]_inst 
       (.I(plaintext[45]),
        .O(plaintext_IBUF[45]));
  IBUF \plaintext_IBUF[46]_inst 
       (.I(plaintext[46]),
        .O(plaintext_IBUF[46]));
  IBUF \plaintext_IBUF[47]_inst 
       (.I(plaintext[47]),
        .O(plaintext_IBUF[47]));
  IBUF \plaintext_IBUF[48]_inst 
       (.I(plaintext[48]),
        .O(plaintext_IBUF[48]));
  IBUF \plaintext_IBUF[49]_inst 
       (.I(plaintext[49]),
        .O(plaintext_IBUF[49]));
  IBUF \plaintext_IBUF[4]_inst 
       (.I(plaintext[4]),
        .O(plaintext_IBUF[4]));
  IBUF \plaintext_IBUF[50]_inst 
       (.I(plaintext[50]),
        .O(plaintext_IBUF[50]));
  IBUF \plaintext_IBUF[51]_inst 
       (.I(plaintext[51]),
        .O(plaintext_IBUF[51]));
  IBUF \plaintext_IBUF[52]_inst 
       (.I(plaintext[52]),
        .O(plaintext_IBUF[52]));
  IBUF \plaintext_IBUF[53]_inst 
       (.I(plaintext[53]),
        .O(plaintext_IBUF[53]));
  IBUF \plaintext_IBUF[54]_inst 
       (.I(plaintext[54]),
        .O(plaintext_IBUF[54]));
  IBUF \plaintext_IBUF[55]_inst 
       (.I(plaintext[55]),
        .O(plaintext_IBUF[55]));
  IBUF \plaintext_IBUF[56]_inst 
       (.I(plaintext[56]),
        .O(plaintext_IBUF[56]));
  IBUF \plaintext_IBUF[57]_inst 
       (.I(plaintext[57]),
        .O(plaintext_IBUF[57]));
  IBUF \plaintext_IBUF[58]_inst 
       (.I(plaintext[58]),
        .O(plaintext_IBUF[58]));
  IBUF \plaintext_IBUF[59]_inst 
       (.I(plaintext[59]),
        .O(plaintext_IBUF[59]));
  IBUF \plaintext_IBUF[5]_inst 
       (.I(plaintext[5]),
        .O(plaintext_IBUF[5]));
  IBUF \plaintext_IBUF[60]_inst 
       (.I(plaintext[60]),
        .O(plaintext_IBUF[60]));
  IBUF \plaintext_IBUF[61]_inst 
       (.I(plaintext[61]),
        .O(plaintext_IBUF[61]));
  IBUF \plaintext_IBUF[62]_inst 
       (.I(plaintext[62]),
        .O(plaintext_IBUF[62]));
  IBUF \plaintext_IBUF[63]_inst 
       (.I(plaintext[63]),
        .O(plaintext_IBUF[63]));
  IBUF \plaintext_IBUF[64]_inst 
       (.I(plaintext[64]),
        .O(plaintext_IBUF[64]));
  IBUF \plaintext_IBUF[65]_inst 
       (.I(plaintext[65]),
        .O(plaintext_IBUF[65]));
  IBUF \plaintext_IBUF[66]_inst 
       (.I(plaintext[66]),
        .O(plaintext_IBUF[66]));
  IBUF \plaintext_IBUF[67]_inst 
       (.I(plaintext[67]),
        .O(plaintext_IBUF[67]));
  IBUF \plaintext_IBUF[68]_inst 
       (.I(plaintext[68]),
        .O(plaintext_IBUF[68]));
  IBUF \plaintext_IBUF[69]_inst 
       (.I(plaintext[69]),
        .O(plaintext_IBUF[69]));
  IBUF \plaintext_IBUF[6]_inst 
       (.I(plaintext[6]),
        .O(plaintext_IBUF[6]));
  IBUF \plaintext_IBUF[70]_inst 
       (.I(plaintext[70]),
        .O(plaintext_IBUF[70]));
  IBUF \plaintext_IBUF[71]_inst 
       (.I(plaintext[71]),
        .O(plaintext_IBUF[71]));
  IBUF \plaintext_IBUF[72]_inst 
       (.I(plaintext[72]),
        .O(plaintext_IBUF[72]));
  IBUF \plaintext_IBUF[73]_inst 
       (.I(plaintext[73]),
        .O(plaintext_IBUF[73]));
  IBUF \plaintext_IBUF[74]_inst 
       (.I(plaintext[74]),
        .O(plaintext_IBUF[74]));
  IBUF \plaintext_IBUF[75]_inst 
       (.I(plaintext[75]),
        .O(plaintext_IBUF[75]));
  IBUF \plaintext_IBUF[76]_inst 
       (.I(plaintext[76]),
        .O(plaintext_IBUF[76]));
  IBUF \plaintext_IBUF[77]_inst 
       (.I(plaintext[77]),
        .O(plaintext_IBUF[77]));
  IBUF \plaintext_IBUF[78]_inst 
       (.I(plaintext[78]),
        .O(plaintext_IBUF[78]));
  IBUF \plaintext_IBUF[79]_inst 
       (.I(plaintext[79]),
        .O(plaintext_IBUF[79]));
  IBUF \plaintext_IBUF[7]_inst 
       (.I(plaintext[7]),
        .O(plaintext_IBUF[7]));
  IBUF \plaintext_IBUF[80]_inst 
       (.I(plaintext[80]),
        .O(plaintext_IBUF[80]));
  IBUF \plaintext_IBUF[81]_inst 
       (.I(plaintext[81]),
        .O(plaintext_IBUF[81]));
  IBUF \plaintext_IBUF[82]_inst 
       (.I(plaintext[82]),
        .O(plaintext_IBUF[82]));
  IBUF \plaintext_IBUF[83]_inst 
       (.I(plaintext[83]),
        .O(plaintext_IBUF[83]));
  IBUF \plaintext_IBUF[84]_inst 
       (.I(plaintext[84]),
        .O(plaintext_IBUF[84]));
  IBUF \plaintext_IBUF[85]_inst 
       (.I(plaintext[85]),
        .O(plaintext_IBUF[85]));
  IBUF \plaintext_IBUF[86]_inst 
       (.I(plaintext[86]),
        .O(plaintext_IBUF[86]));
  IBUF \plaintext_IBUF[87]_inst 
       (.I(plaintext[87]),
        .O(plaintext_IBUF[87]));
  IBUF \plaintext_IBUF[88]_inst 
       (.I(plaintext[88]),
        .O(plaintext_IBUF[88]));
  IBUF \plaintext_IBUF[89]_inst 
       (.I(plaintext[89]),
        .O(plaintext_IBUF[89]));
  IBUF \plaintext_IBUF[8]_inst 
       (.I(plaintext[8]),
        .O(plaintext_IBUF[8]));
  IBUF \plaintext_IBUF[90]_inst 
       (.I(plaintext[90]),
        .O(plaintext_IBUF[90]));
  IBUF \plaintext_IBUF[91]_inst 
       (.I(plaintext[91]),
        .O(plaintext_IBUF[91]));
  IBUF \plaintext_IBUF[92]_inst 
       (.I(plaintext[92]),
        .O(plaintext_IBUF[92]));
  IBUF \plaintext_IBUF[93]_inst 
       (.I(plaintext[93]),
        .O(plaintext_IBUF[93]));
  IBUF \plaintext_IBUF[94]_inst 
       (.I(plaintext[94]),
        .O(plaintext_IBUF[94]));
  IBUF \plaintext_IBUF[95]_inst 
       (.I(plaintext[95]),
        .O(plaintext_IBUF[95]));
  IBUF \plaintext_IBUF[96]_inst 
       (.I(plaintext[96]),
        .O(plaintext_IBUF[96]));
  IBUF \plaintext_IBUF[97]_inst 
       (.I(plaintext[97]),
        .O(plaintext_IBUF[97]));
  IBUF \plaintext_IBUF[98]_inst 
       (.I(plaintext[98]),
        .O(plaintext_IBUF[98]));
  IBUF \plaintext_IBUF[99]_inst 
       (.I(plaintext[99]),
        .O(plaintext_IBUF[99]));
  IBUF \plaintext_IBUF[9]_inst 
       (.I(plaintext[9]),
        .O(plaintext_IBUF[9]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \round_ctr[0]_i_1 
       (.I0(current_state[0]),
        .I1(\round_ctr_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg[1]_rep__1_n_0 ),
        .O(round_ctr[0]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \round_ctr[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg[1]_rep__1_n_0 ),
        .I1(\round_ctr_reg_n_0_[1] ),
        .I2(\round_ctr_reg_n_0_[0] ),
        .O(round_ctr[1]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \round_ctr[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg[1]_rep__1_n_0 ),
        .I1(\round_ctr_reg_n_0_[2] ),
        .I2(\round_ctr_reg_n_0_[1] ),
        .I3(\round_ctr_reg_n_0_[0] ),
        .O(round_ctr[2]));
  LUT6 #(
    .INIT(64'hFFFFFFF888888888)) 
    \round_ctr[3]_i_1 
       (.I0(start_IBUF),
        .I1(current_state[0]),
        .I2(\round_ctr_reg_n_0_[2] ),
        .I3(\round_ctr_reg_n_0_[0] ),
        .I4(\round_ctr[3]_i_3_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep__1_n_0 ),
        .O(\round_ctr[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \round_ctr[3]_i_2 
       (.I0(\FSM_onehot_current_state_reg[1]_rep__1_n_0 ),
        .I1(\round_ctr_reg_n_0_[3] ),
        .I2(\round_ctr_reg_n_0_[2] ),
        .I3(\round_ctr_reg_n_0_[0] ),
        .I4(\round_ctr_reg_n_0_[1] ),
        .O(round_ctr[3]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \round_ctr[3]_i_3 
       (.I0(\round_ctr_reg_n_0_[1] ),
        .I1(\round_ctr_reg_n_0_[3] ),
        .O(\round_ctr[3]_i_3_n_0 ));
  FDCE \round_ctr_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\round_ctr[3]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(round_ctr[0]),
        .Q(\round_ctr_reg_n_0_[0] ));
  FDCE \round_ctr_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\round_ctr[3]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(round_ctr[1]),
        .Q(\round_ctr_reg_n_0_[1] ));
  FDCE \round_ctr_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\round_ctr[3]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(round_ctr[2]),
        .Q(\round_ctr_reg_n_0_[2] ));
  FDCE \round_ctr_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\round_ctr[3]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(round_ctr[3]),
        .Q(\round_ctr_reg_n_0_[3] ));
  IBUF rst_n_IBUF_inst
       (.I(rst_n),
        .O(rst_n_IBUF));
  FDCE \share1_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_257),
        .Q(\share1_reg_reg_n_0_[0] ));
  FDCE \share1_reg_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_224),
        .Q(\share1_reg_reg_n_0_[100] ));
  FDCE \share1_reg_reg[101] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_223),
        .Q(\share1_reg_reg_n_0_[101] ));
  FDCE \share1_reg_reg[102] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_222),
        .Q(\share1_reg_reg_n_0_[102] ));
  FDCE \share1_reg_reg[103] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_221),
        .Q(\share1_reg_reg_n_0_[103] ));
  FDCE \share1_reg_reg[104] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_184),
        .Q(\share1_reg_reg_n_0_[104] ));
  FDCE \share1_reg_reg[105] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_183),
        .Q(\share1_reg_reg_n_0_[105] ));
  FDCE \share1_reg_reg[106] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_182),
        .Q(\share1_reg_reg_n_0_[106] ));
  FDCE \share1_reg_reg[107] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_181),
        .Q(\share1_reg_reg_n_0_[107] ));
  FDCE \share1_reg_reg[108] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_180),
        .Q(\share1_reg_reg_n_0_[108] ));
  FDCE \share1_reg_reg[109] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_179),
        .Q(\share1_reg_reg_n_0_[109] ));
  FDCE \share1_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_248),
        .Q(\share1_reg_reg_n_0_[10] ));
  FDCE \share1_reg_reg[110] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_178),
        .Q(\share1_reg_reg_n_0_[110] ));
  FDCE \share1_reg_reg[111] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_177),
        .Q(\share1_reg_reg_n_0_[111] ));
  FDCE \share1_reg_reg[112] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_176),
        .Q(\share1_reg_reg_n_0_[112] ));
  FDCE \share1_reg_reg[113] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_220),
        .Q(\share1_reg_reg_n_0_[113] ));
  FDCE \share1_reg_reg[114] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_175),
        .Q(\share1_reg_reg_n_0_[114] ));
  FDCE \share1_reg_reg[115] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_219),
        .Q(\share1_reg_reg_n_0_[115] ));
  FDCE \share1_reg_reg[116] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_218),
        .Q(\share1_reg_reg_n_0_[116] ));
  FDCE \share1_reg_reg[117] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_174),
        .Q(\share1_reg_reg_n_0_[117] ));
  FDCE \share1_reg_reg[118] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_173),
        .Q(\share1_reg_reg_n_0_[118] ));
  FDCE \share1_reg_reg[119] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_172),
        .Q(\share1_reg_reg_n_0_[119] ));
  FDCE \share1_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_250),
        .Q(\share1_reg_reg_n_0_[11] ));
  FDCE \share1_reg_reg[120] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_171),
        .Q(\share1_reg_reg_n_0_[120] ));
  FDCE \share1_reg_reg[121] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_170),
        .Q(\share1_reg_reg_n_0_[121] ));
  FDCE \share1_reg_reg[122] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_169),
        .Q(\share1_reg_reg_n_0_[122] ));
  FDCE \share1_reg_reg[123] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_168),
        .Q(\share1_reg_reg_n_0_[123] ));
  FDCE \share1_reg_reg[124] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_167),
        .Q(\share1_reg_reg_n_0_[124] ));
  FDCE \share1_reg_reg[125] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_166),
        .Q(\share1_reg_reg_n_0_[125] ));
  FDCE \share1_reg_reg[126] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_165),
        .Q(\share1_reg_reg_n_0_[126] ));
  FDCE \share1_reg_reg[127] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_164),
        .Q(\share1_reg_reg_n_0_[127] ));
  FDCE \share1_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_249),
        .Q(\share1_reg_reg_n_0_[12] ));
  FDCE \share1_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_247),
        .Q(\share1_reg_reg_n_0_[13] ));
  FDCE \share1_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_246),
        .Q(\share1_reg_reg_n_0_[14] ));
  FDCE \share1_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_245),
        .Q(\share1_reg_reg_n_0_[15] ));
  FDCE \share1_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_244),
        .Q(\share1_reg_reg_n_0_[16] ));
  FDCE \share1_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_248),
        .Q(\share1_reg_reg_n_0_[17] ));
  FDCE \share1_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_243),
        .Q(\share1_reg_reg_n_0_[18] ));
  FDCE \share1_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_247),
        .Q(\share1_reg_reg_n_0_[19] ));
  FDCE \share1_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_256),
        .Q(\share1_reg_reg_n_0_[1] ));
  FDCE \share1_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_246),
        .Q(\share1_reg_reg_n_0_[20] ));
  FDCE \share1_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_242),
        .Q(\share1_reg_reg_n_0_[21] ));
  FDCE \share1_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_241),
        .Q(\share1_reg_reg_n_0_[22] ));
  FDCE \share1_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_240),
        .Q(\share1_reg_reg_n_0_[23] ));
  FDCE \share1_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_239),
        .Q(\share1_reg_reg_n_0_[24] ));
  FDCE \share1_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_238),
        .Q(\share1_reg_reg_n_0_[25] ));
  FDCE \share1_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_237),
        .Q(\share1_reg_reg_n_0_[26] ));
  FDCE \share1_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_236),
        .Q(\share1_reg_reg_n_0_[27] ));
  FDCE \share1_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_235),
        .Q(\share1_reg_reg_n_0_[28] ));
  FDCE \share1_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_234),
        .Q(\share1_reg_reg_n_0_[29] ));
  FDCE \share1_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_255),
        .Q(\share1_reg_reg_n_0_[2] ));
  FDCE \share1_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_233),
        .Q(\share1_reg_reg_n_0_[30] ));
  FDCE \share1_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_232),
        .Q(\share1_reg_reg_n_0_[31] ));
  FDCE \share1_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_231),
        .Q(\share1_reg_reg_n_0_[32] ));
  FDCE \share1_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_230),
        .Q(\share1_reg_reg_n_0_[33] ));
  FDCE \share1_reg_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_229),
        .Q(\share1_reg_reg_n_0_[34] ));
  FDCE \share1_reg_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_228),
        .Q(\share1_reg_reg_n_0_[35] ));
  FDCE \share1_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_227),
        .Q(\share1_reg_reg_n_0_[36] ));
  FDCE \share1_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_226),
        .Q(\share1_reg_reg_n_0_[37] ));
  FDCE \share1_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_225),
        .Q(\share1_reg_reg_n_0_[38] ));
  FDCE \share1_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_224),
        .Q(\share1_reg_reg_n_0_[39] ));
  FDCE \share1_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_254),
        .Q(\share1_reg_reg_n_0_[3] ));
  FDCE \share1_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_223),
        .Q(\share1_reg_reg_n_0_[40] ));
  FDCE \share1_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_245),
        .Q(\share1_reg_reg_n_0_[41] ));
  FDCE \share1_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_222),
        .Q(\share1_reg_reg_n_0_[42] ));
  FDCE \share1_reg_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_244),
        .Q(\share1_reg_reg_n_0_[43] ));
  FDCE \share1_reg_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_243),
        .Q(\share1_reg_reg_n_0_[44] ));
  FDCE \share1_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_221),
        .Q(\share1_reg_reg_n_0_[45] ));
  FDCE \share1_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_220),
        .Q(\share1_reg_reg_n_0_[46] ));
  FDCE \share1_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_219),
        .Q(\share1_reg_reg_n_0_[47] ));
  FDCE \share1_reg_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_218),
        .Q(\share1_reg_reg_n_0_[48] ));
  FDCE \share1_reg_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_242),
        .Q(\share1_reg_reg_n_0_[49] ));
  FDCE \share1_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_253),
        .Q(\share1_reg_reg_n_0_[4] ));
  FDCE \share1_reg_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_217),
        .Q(\share1_reg_reg_n_0_[50] ));
  FDCE \share1_reg_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_241),
        .Q(\share1_reg_reg_n_0_[51] ));
  FDCE \share1_reg_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_240),
        .Q(\share1_reg_reg_n_0_[52] ));
  FDCE \share1_reg_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_216),
        .Q(\share1_reg_reg_n_0_[53] ));
  FDCE \share1_reg_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_215),
        .Q(\share1_reg_reg_n_0_[54] ));
  FDCE \share1_reg_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_214),
        .Q(\share1_reg_reg_n_0_[55] ));
  FDCE \share1_reg_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_213),
        .Q(\share1_reg_reg_n_0_[56] ));
  FDCE \share1_reg_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_212),
        .Q(\share1_reg_reg_n_0_[57] ));
  FDCE \share1_reg_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_211),
        .Q(\share1_reg_reg_n_0_[58] ));
  FDCE \share1_reg_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_210),
        .Q(\share1_reg_reg_n_0_[59] ));
  FDCE \share1_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_252),
        .Q(\share1_reg_reg_n_0_[5] ));
  FDCE \share1_reg_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_209),
        .Q(\share1_reg_reg_n_0_[60] ));
  FDCE \share1_reg_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_208),
        .Q(\share1_reg_reg_n_0_[61] ));
  FDCE \share1_reg_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_207),
        .Q(\share1_reg_reg_n_0_[62] ));
  FDCE \share1_reg_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_206),
        .Q(\share1_reg_reg_n_0_[63] ));
  FDCE \share1_reg_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_205),
        .Q(\share1_reg_reg_n_0_[64] ));
  FDCE \share1_reg_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_239),
        .Q(\share1_reg_reg_n_0_[65] ));
  FDCE \share1_reg_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_238),
        .Q(\share1_reg_reg_n_0_[66] ));
  FDCE \share1_reg_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_237),
        .Q(\share1_reg_reg_n_0_[67] ));
  FDCE \share1_reg_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_236),
        .Q(\share1_reg_reg_n_0_[68] ));
  FDCE \share1_reg_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_235),
        .Q(\share1_reg_reg_n_0_[69] ));
  FDCE \share1_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_251),
        .Q(\share1_reg_reg_n_0_[6] ));
  FDCE \share1_reg_reg[70] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_234),
        .Q(\share1_reg_reg_n_0_[70] ));
  FDCE \share1_reg_reg[71] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_233),
        .Q(\share1_reg_reg_n_0_[71] ));
  FDCE \share1_reg_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_204),
        .Q(\share1_reg_reg_n_0_[72] ));
  FDCE \share1_reg_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_203),
        .Q(\share1_reg_reg_n_0_[73] ));
  FDCE \share1_reg_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_202),
        .Q(\share1_reg_reg_n_0_[74] ));
  FDCE \share1_reg_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_201),
        .Q(\share1_reg_reg_n_0_[75] ));
  FDCE \share1_reg_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_200),
        .Q(\share1_reg_reg_n_0_[76] ));
  FDCE \share1_reg_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_199),
        .Q(\share1_reg_reg_n_0_[77] ));
  FDCE \share1_reg_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_198),
        .Q(\share1_reg_reg_n_0_[78] ));
  FDCE \share1_reg_reg[79] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_197),
        .Q(\share1_reg_reg_n_0_[79] ));
  FDCE \share1_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_250),
        .Q(\share1_reg_reg_n_0_[7] ));
  FDCE \share1_reg_reg[80] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_196),
        .Q(\share1_reg_reg_n_0_[80] ));
  FDCE \share1_reg_reg[81] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_195),
        .Q(\share1_reg_reg_n_0_[81] ));
  FDCE \share1_reg_reg[82] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_194),
        .Q(\share1_reg_reg_n_0_[82] ));
  FDCE \share1_reg_reg[83] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_232),
        .Q(\share1_reg_reg_n_0_[83] ));
  FDCE \share1_reg_reg[84] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_231),
        .Q(\share1_reg_reg_n_0_[84] ));
  FDCE \share1_reg_reg[85] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_193),
        .Q(\share1_reg_reg_n_0_[85] ));
  FDCE \share1_reg_reg[86] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_192),
        .Q(\share1_reg_reg_n_0_[86] ));
  FDCE \share1_reg_reg[87] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_191),
        .Q(\share1_reg_reg_n_0_[87] ));
  FDCE \share1_reg_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_230),
        .Q(\share1_reg_reg_n_0_[88] ));
  FDCE \share1_reg_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_229),
        .Q(\share1_reg_reg_n_0_[89] ));
  FDCE \share1_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_249),
        .Q(\share1_reg_reg_n_0_[8] ));
  FDCE \share1_reg_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_190),
        .Q(\share1_reg_reg_n_0_[90] ));
  FDCE \share1_reg_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_189),
        .Q(\share1_reg_reg_n_0_[91] ));
  FDCE \share1_reg_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_188),
        .Q(\share1_reg_reg_n_0_[92] ));
  FDCE \share1_reg_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_187),
        .Q(\share1_reg_reg_n_0_[93] ));
  FDCE \share1_reg_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_186),
        .Q(\share1_reg_reg_n_0_[94] ));
  FDCE \share1_reg_reg[95] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_masked_sub_bytes_n_185),
        .Q(\share1_reg_reg_n_0_[95] ));
  FDCE \share1_reg_reg[96] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_228),
        .Q(\share1_reg_reg_n_0_[96] ));
  FDCE \share1_reg_reg[97] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_227),
        .Q(\share1_reg_reg_n_0_[97] ));
  FDCE \share1_reg_reg[98] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_226),
        .Q(\share1_reg_reg_n_0_[98] ));
  FDCE \share1_reg_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_225),
        .Q(\share1_reg_reg_n_0_[99] ));
  FDCE \share1_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(u_key_expansion_n_251),
        .Q(\share1_reg_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[0]_i_1 
       (.I0(mask_in_IBUF[0]),
        .I1(current_state[0]),
        .I2(p_0_in[32]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[0]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[0]_i_2 
       (.I0(p_0_in[31]),
        .I1(p_0_in[39]),
        .I2(p_0_in[112]),
        .I3(p_0_in[24]),
        .I4(p_0_in[72]),
        .O(mix_cols_share2[0]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[100]_i_1 
       (.I0(mask_in_IBUF[100]),
        .I1(current_state[0]),
        .I2(p_0_in[4]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[100]),
        .I5(current_state[1]),
        .O(\share2_reg[100]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \share2_reg[100]_i_2 
       (.I0(p_0_in[7]),
        .I1(p_0_in[3]),
        .I2(p_0_in[44]),
        .I3(\share2_reg[100]_i_3_n_0 ),
        .I4(p_0_in[124]),
        .O(mix_cols_share2[100]));
  LUT3 #(
    .INIT(8'h96)) 
    \share2_reg[100]_i_3 
       (.I0(p_0_in[84]),
        .I1(p_0_in[123]),
        .I2(p_0_in[127]),
        .O(\share2_reg[100]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[101]_i_1 
       (.I0(mask_in_IBUF[101]),
        .I1(current_state[0]),
        .I2(p_0_in[5]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[101]),
        .I5(current_state[1]),
        .O(\share2_reg[101]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[101]_i_2 
       (.I0(p_0_in[4]),
        .I1(p_0_in[45]),
        .I2(p_0_in[85]),
        .I3(p_0_in[124]),
        .I4(p_0_in[125]),
        .O(mix_cols_share2[101]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[102]_i_1 
       (.I0(mask_in_IBUF[102]),
        .I1(current_state[0]),
        .I2(p_0_in[6]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[102]),
        .I5(current_state[1]),
        .O(\share2_reg[102]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \share2_reg[102]_i_2 
       (.I0(p_0_in[5]),
        .I1(p_0_in[46]),
        .I2(p_0_in[86]),
        .I3(p_0_in[125]),
        .I4(p_0_in[126]),
        .O(mix_cols_share2[102]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[103]_i_1 
       (.I0(mask_in_IBUF[103]),
        .I1(current_state[0]),
        .I2(p_0_in[7]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[103]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[103]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[103]_i_2 
       (.I0(p_0_in[6]),
        .I1(p_0_in[47]),
        .I2(p_0_in[87]),
        .I3(p_0_in[126]),
        .I4(p_0_in[127]),
        .O(mix_cols_share2[103]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[104]_i_1 
       (.I0(mask_in_IBUF[104]),
        .I1(current_state[0]),
        .I2(p_0_in[40]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[104]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[104]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[104]_i_2 
       (.I0(p_0_in[80]),
        .I1(p_0_in[120]),
        .I2(p_0_in[47]),
        .I3(p_0_in[0]),
        .I4(p_0_in[7]),
        .O(mix_cols_share2[104]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[105]_i_1 
       (.I0(mask_in_IBUF[105]),
        .I1(current_state[0]),
        .I2(p_0_in[41]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[105]_i_2_n_0 ),
        .I5(current_state[1]),
        .O(\share2_reg[105]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \share2_reg[105]_i_2 
       (.I0(p_0_in[81]),
        .I1(p_0_in[121]),
        .I2(\u_mc_share2/xtime_return36_in [1]),
        .I3(p_0_in[1]),
        .I4(p_0_in[0]),
        .I5(p_0_in[7]),
        .O(\share2_reg[105]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \share2_reg[105]_i_3 
       (.I0(p_0_in[47]),
        .I1(p_0_in[40]),
        .O(\u_mc_share2/xtime_return36_in [1]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[106]_i_1 
       (.I0(mask_in_IBUF[106]),
        .I1(current_state[0]),
        .I2(p_0_in[42]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[106]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[106]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[106]_i_2 
       (.I0(p_0_in[82]),
        .I1(p_0_in[122]),
        .I2(p_0_in[41]),
        .I3(p_0_in[2]),
        .I4(p_0_in[1]),
        .O(mix_cols_share2[106]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[107]_i_1 
       (.I0(mask_in_IBUF[107]),
        .I1(current_state[0]),
        .I2(p_0_in[43]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[107]_i_2_n_0 ),
        .I5(current_state[1]),
        .O(\share2_reg[107]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \share2_reg[107]_i_2 
       (.I0(p_0_in[83]),
        .I1(p_0_in[123]),
        .I2(\u_mc_share2/xtime_return36_in [3]),
        .I3(p_0_in[3]),
        .I4(p_0_in[2]),
        .I5(p_0_in[7]),
        .O(\share2_reg[107]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \share2_reg[107]_i_3 
       (.I0(p_0_in[47]),
        .I1(p_0_in[42]),
        .O(\u_mc_share2/xtime_return36_in [3]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[108]_i_1 
       (.I0(mask_in_IBUF[108]),
        .I1(current_state[0]),
        .I2(p_0_in[44]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[108]_i_2_n_0 ),
        .I5(current_state[1]),
        .O(\share2_reg[108]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share2_reg[108]_i_2 
       (.I0(p_0_in[84]),
        .I1(p_0_in[124]),
        .I2(\share2_reg[108]_i_3_n_0 ),
        .I3(p_0_in[4]),
        .I4(p_0_in[3]),
        .I5(p_0_in[7]),
        .O(\share2_reg[108]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \share2_reg[108]_i_3 
       (.I0(p_0_in[47]),
        .I1(p_0_in[43]),
        .O(\share2_reg[108]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[109]_i_1 
       (.I0(mask_in_IBUF[109]),
        .I1(current_state[0]),
        .I2(p_0_in[45]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[109]),
        .I5(current_state[1]),
        .O(\share2_reg[109]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[109]_i_2 
       (.I0(p_0_in[85]),
        .I1(p_0_in[125]),
        .I2(p_0_in[44]),
        .I3(p_0_in[5]),
        .I4(p_0_in[4]),
        .O(mix_cols_share2[109]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[10]_i_1 
       (.I0(mask_in_IBUF[10]),
        .I1(current_state[0]),
        .I2(p_0_in[74]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[10]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[10]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[10]_i_2 
       (.I0(p_0_in[33]),
        .I1(p_0_in[34]),
        .I2(p_0_in[73]),
        .I3(p_0_in[26]),
        .I4(p_0_in[114]),
        .O(\share2_reg[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[110]_i_1 
       (.I0(mask_in_IBUF[110]),
        .I1(current_state[0]),
        .I2(p_0_in[46]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[110]_i_2_n_0 ),
        .I5(current_state[1]),
        .O(\share2_reg[110]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \share2_reg[110]_i_2 
       (.I0(p_0_in[86]),
        .I1(p_0_in[126]),
        .I2(p_0_in[45]),
        .I3(p_0_in[6]),
        .I4(p_0_in[5]),
        .O(\share2_reg[110]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[111]_i_1 
       (.I0(mask_in_IBUF[111]),
        .I1(current_state[0]),
        .I2(p_0_in[47]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[111]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[111]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[111]_i_2 
       (.I0(p_0_in[87]),
        .I1(p_0_in[127]),
        .I2(p_0_in[46]),
        .I3(p_0_in[7]),
        .I4(p_0_in[6]),
        .O(mix_cols_share2[111]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[112]_i_1 
       (.I0(mask_in_IBUF[112]),
        .I1(current_state[0]),
        .I2(p_0_in[80]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[112]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[112]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[112]_i_2 
       (.I0(p_0_in[120]),
        .I1(p_0_in[40]),
        .I2(p_0_in[87]),
        .I3(p_0_in[0]),
        .I4(p_0_in[47]),
        .O(mix_cols_share2[112]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[113]_i_1 
       (.I0(mask_in_IBUF[113]),
        .I1(current_state[0]),
        .I2(in9[113]),
        .I3(current_state[1]),
        .O(\share2_reg[113]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7447477447747447)) 
    \share2_reg[113]_i_2 
       (.I0(p_0_in[81]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[121]),
        .I3(\share2_reg[121]_i_3_n_0 ),
        .I4(p_0_in[47]),
        .I5(p_0_in[40]),
        .O(in9[113]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[114]_i_1 
       (.I0(mask_in_IBUF[114]),
        .I1(current_state[0]),
        .I2(p_0_in[82]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[114]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[114]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[114]_i_2 
       (.I0(p_0_in[122]),
        .I1(p_0_in[42]),
        .I2(p_0_in[81]),
        .I3(p_0_in[2]),
        .I4(p_0_in[41]),
        .O(mix_cols_share2[114]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[115]_i_1 
       (.I0(mask_in_IBUF[115]),
        .I1(current_state[0]),
        .I2(in9[115]),
        .I3(current_state[1]),
        .O(\share2_reg[115]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7447477447747447)) 
    \share2_reg[115]_i_2 
       (.I0(p_0_in[83]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[123]),
        .I3(\share2_reg[123]_i_3_n_0 ),
        .I4(p_0_in[47]),
        .I5(p_0_in[42]),
        .O(in9[115]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[116]_i_1 
       (.I0(mask_in_IBUF[116]),
        .I1(current_state[0]),
        .I2(in9[116]),
        .I3(current_state[1]),
        .O(\share2_reg[116]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4774744774474774)) 
    \share2_reg[116]_i_2 
       (.I0(p_0_in[84]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[124]),
        .I3(\share2_reg[124]_i_3_n_0 ),
        .I4(p_0_in[47]),
        .I5(p_0_in[43]),
        .O(in9[116]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[117]_i_1 
       (.I0(mask_in_IBUF[117]),
        .I1(current_state[0]),
        .I2(p_0_in[85]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[117]),
        .I5(\FSM_onehot_current_state_reg[1]_rep__0_n_0 ),
        .O(\share2_reg[117]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[117]_i_2 
       (.I0(p_0_in[125]),
        .I1(p_0_in[45]),
        .I2(p_0_in[84]),
        .I3(p_0_in[5]),
        .I4(p_0_in[44]),
        .O(mix_cols_share2[117]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[118]_i_1 
       (.I0(mask_in_IBUF[118]),
        .I1(current_state[0]),
        .I2(p_0_in[86]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[118]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[118]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \share2_reg[118]_i_2 
       (.I0(p_0_in[126]),
        .I1(p_0_in[46]),
        .I2(p_0_in[85]),
        .I3(p_0_in[6]),
        .I4(p_0_in[45]),
        .O(\share2_reg[118]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[119]_i_1 
       (.I0(mask_in_IBUF[119]),
        .I1(current_state[0]),
        .I2(p_0_in[87]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[119]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[119]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[119]_i_2 
       (.I0(p_0_in[127]),
        .I1(p_0_in[47]),
        .I2(p_0_in[86]),
        .I3(p_0_in[7]),
        .I4(p_0_in[46]),
        .O(mix_cols_share2[119]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[11]_i_1 
       (.I0(mask_in_IBUF[11]),
        .I1(current_state[0]),
        .I2(in9[11]),
        .I3(current_state[1]),
        .O(\share2_reg[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7447477447747447)) 
    \share2_reg[11]_i_2 
       (.I0(p_0_in[75]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[34]),
        .I3(p_0_in[39]),
        .I4(\share2_reg[19]_i_3_n_0 ),
        .I5(p_0_in[115]),
        .O(in9[11]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[120]_i_1 
       (.I0(mask_in_IBUF[120]),
        .I1(current_state[0]),
        .I2(p_0_in[120]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[120]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[120]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[120]_i_2 
       (.I0(p_0_in[127]),
        .I1(p_0_in[80]),
        .I2(p_0_in[0]),
        .I3(p_0_in[87]),
        .I4(p_0_in[40]),
        .O(mix_cols_share2[120]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[121]_i_1 
       (.I0(mask_in_IBUF[121]),
        .I1(current_state[0]),
        .I2(in9[121]),
        .I3(current_state[1]),
        .O(\share2_reg[121]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7447477447747447)) 
    \share2_reg[121]_i_2 
       (.I0(p_0_in[121]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[127]),
        .I3(p_0_in[120]),
        .I4(p_0_in[81]),
        .I5(\share2_reg[121]_i_3_n_0 ),
        .O(in9[121]));
  LUT4 #(
    .INIT(16'h6996)) 
    \share2_reg[121]_i_3 
       (.I0(p_0_in[41]),
        .I1(p_0_in[87]),
        .I2(p_0_in[80]),
        .I3(p_0_in[1]),
        .O(\share2_reg[121]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[122]_i_1 
       (.I0(mask_in_IBUF[122]),
        .I1(current_state[0]),
        .I2(p_0_in[122]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[122]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[122]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[122]_i_2 
       (.I0(p_0_in[121]),
        .I1(p_0_in[82]),
        .I2(p_0_in[2]),
        .I3(p_0_in[81]),
        .I4(p_0_in[42]),
        .O(mix_cols_share2[122]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[123]_i_1 
       (.I0(mask_in_IBUF[123]),
        .I1(current_state[0]),
        .I2(in9[123]),
        .I3(current_state[1]),
        .O(\share2_reg[123]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7447477447747447)) 
    \share2_reg[123]_i_2 
       (.I0(p_0_in[123]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[127]),
        .I3(p_0_in[122]),
        .I4(p_0_in[83]),
        .I5(\share2_reg[123]_i_3_n_0 ),
        .O(in9[123]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \share2_reg[123]_i_3 
       (.I0(p_0_in[43]),
        .I1(p_0_in[87]),
        .I2(p_0_in[82]),
        .I3(p_0_in[3]),
        .O(\share2_reg[123]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[124]_i_1 
       (.I0(mask_in_IBUF[124]),
        .I1(current_state[0]),
        .I2(in9[124]),
        .I3(current_state[1]),
        .O(\share2_reg[124]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4774744774474774)) 
    \share2_reg[124]_i_2 
       (.I0(p_0_in[124]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[127]),
        .I3(p_0_in[123]),
        .I4(p_0_in[84]),
        .I5(\share2_reg[124]_i_3_n_0 ),
        .O(in9[124]));
  LUT4 #(
    .INIT(16'h9669)) 
    \share2_reg[124]_i_3 
       (.I0(p_0_in[44]),
        .I1(p_0_in[87]),
        .I2(p_0_in[83]),
        .I3(p_0_in[4]),
        .O(\share2_reg[124]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[125]_i_1 
       (.I0(mask_in_IBUF[125]),
        .I1(current_state[0]),
        .I2(p_0_in[125]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[125]),
        .I5(current_state[1]),
        .O(\share2_reg[125]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[125]_i_2 
       (.I0(p_0_in[124]),
        .I1(p_0_in[85]),
        .I2(p_0_in[5]),
        .I3(p_0_in[84]),
        .I4(p_0_in[45]),
        .O(mix_cols_share2[125]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[126]_i_1 
       (.I0(mask_in_IBUF[126]),
        .I1(current_state[0]),
        .I2(p_0_in[126]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[126]),
        .I5(\FSM_onehot_current_state_reg[1]_rep__0_n_0 ),
        .O(\share2_reg[126]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \share2_reg[126]_i_2 
       (.I0(p_0_in[125]),
        .I1(p_0_in[86]),
        .I2(p_0_in[6]),
        .I3(p_0_in[85]),
        .I4(p_0_in[46]),
        .O(mix_cols_share2[126]));
  LUT3 #(
    .INIT(8'hEA)) 
    \share2_reg[127]_i_1 
       (.I0(current_state[1]),
        .I1(start_IBUF),
        .I2(current_state[0]),
        .O(\share2_reg[127]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[127]_i_2 
       (.I0(mask_in_IBUF[127]),
        .I1(current_state[0]),
        .I2(p_0_in[127]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[127]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[127]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[127]_i_4 
       (.I0(p_0_in[126]),
        .I1(p_0_in[87]),
        .I2(p_0_in[7]),
        .I3(p_0_in[86]),
        .I4(p_0_in[47]),
        .O(mix_cols_share2[127]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[12]_i_1 
       (.I0(mask_in_IBUF[12]),
        .I1(current_state[0]),
        .I2(in9[12]),
        .I3(current_state[1]),
        .O(\share2_reg[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4774744774474774)) 
    \share2_reg[12]_i_2 
       (.I0(p_0_in[76]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[35]),
        .I3(p_0_in[39]),
        .I4(\share2_reg[20]_i_3_n_0 ),
        .I5(p_0_in[116]),
        .O(in9[12]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[13]_i_1 
       (.I0(mask_in_IBUF[13]),
        .I1(current_state[0]),
        .I2(p_0_in[77]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[13]_i_2_n_0 ),
        .I5(current_state[1]),
        .O(\share2_reg[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[13]_i_2 
       (.I0(p_0_in[36]),
        .I1(p_0_in[37]),
        .I2(p_0_in[76]),
        .I3(p_0_in[29]),
        .I4(p_0_in[117]),
        .O(\share2_reg[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[14]_i_1 
       (.I0(mask_in_IBUF[14]),
        .I1(current_state[0]),
        .I2(p_0_in[78]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[14]),
        .I5(current_state[1]),
        .O(\share2_reg[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \share2_reg[14]_i_2 
       (.I0(p_0_in[37]),
        .I1(p_0_in[38]),
        .I2(p_0_in[77]),
        .I3(p_0_in[30]),
        .I4(p_0_in[118]),
        .O(mix_cols_share2[14]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[15]_i_1 
       (.I0(mask_in_IBUF[15]),
        .I1(current_state[0]),
        .I2(p_0_in[79]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[15]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[15]_i_2 
       (.I0(p_0_in[38]),
        .I1(p_0_in[39]),
        .I2(p_0_in[78]),
        .I3(p_0_in[31]),
        .I4(p_0_in[119]),
        .O(\share2_reg[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[16]_i_1 
       (.I0(mask_in_IBUF[16]),
        .I1(current_state[0]),
        .I2(p_0_in[112]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[16]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[16]_i_2 
       (.I0(p_0_in[119]),
        .I1(p_0_in[32]),
        .I2(p_0_in[79]),
        .I3(p_0_in[24]),
        .I4(p_0_in[72]),
        .O(mix_cols_share2[16]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[17]_i_1 
       (.I0(mask_in_IBUF[17]),
        .I1(current_state[0]),
        .I2(in9[17]),
        .I3(current_state[1]),
        .O(\share2_reg[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7447477447747447)) 
    \share2_reg[17]_i_2 
       (.I0(p_0_in[113]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[112]),
        .I3(p_0_in[119]),
        .I4(\share2_reg[17]_i_3_n_0 ),
        .I5(p_0_in[73]),
        .O(in9[17]));
  LUT4 #(
    .INIT(16'h6996)) 
    \share2_reg[17]_i_3 
       (.I0(p_0_in[33]),
        .I1(p_0_in[79]),
        .I2(p_0_in[72]),
        .I3(p_0_in[25]),
        .O(\share2_reg[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[18]_i_1 
       (.I0(mask_in_IBUF[18]),
        .I1(current_state[0]),
        .I2(p_0_in[114]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[18]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[18]_i_2 
       (.I0(p_0_in[113]),
        .I1(p_0_in[34]),
        .I2(p_0_in[73]),
        .I3(p_0_in[26]),
        .I4(p_0_in[74]),
        .O(\share2_reg[18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[19]_i_1 
       (.I0(mask_in_IBUF[19]),
        .I1(current_state[0]),
        .I2(in9[19]),
        .I3(current_state[1]),
        .O(\share2_reg[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7447477447747447)) 
    \share2_reg[19]_i_2 
       (.I0(p_0_in[115]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[114]),
        .I3(p_0_in[119]),
        .I4(\share2_reg[19]_i_3_n_0 ),
        .I5(p_0_in[75]),
        .O(in9[19]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \share2_reg[19]_i_3 
       (.I0(p_0_in[35]),
        .I1(p_0_in[79]),
        .I2(p_0_in[74]),
        .I3(p_0_in[27]),
        .O(\share2_reg[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[1]_i_1 
       (.I0(mask_in_IBUF[1]),
        .I1(current_state[0]),
        .I2(p_0_in[33]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[1]),
        .I5(current_state[1]),
        .O(\share2_reg[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \share2_reg[1]_i_2 
       (.I0(p_0_in[24]),
        .I1(p_0_in[31]),
        .I2(\u_mc_share2/xtime_return [1]),
        .I3(p_0_in[113]),
        .I4(p_0_in[25]),
        .I5(p_0_in[73]),
        .O(mix_cols_share2[1]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \share2_reg[1]_i_3 
       (.I0(p_0_in[39]),
        .I1(p_0_in[32]),
        .O(\u_mc_share2/xtime_return [1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[20]_i_1 
       (.I0(mask_in_IBUF[20]),
        .I1(current_state[0]),
        .I2(in9[20]),
        .I3(current_state[1]),
        .O(\share2_reg[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4774744774474774)) 
    \share2_reg[20]_i_2 
       (.I0(p_0_in[116]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[115]),
        .I3(p_0_in[119]),
        .I4(\share2_reg[20]_i_3_n_0 ),
        .I5(p_0_in[76]),
        .O(in9[20]));
  LUT4 #(
    .INIT(16'h9669)) 
    \share2_reg[20]_i_3 
       (.I0(p_0_in[36]),
        .I1(p_0_in[79]),
        .I2(p_0_in[75]),
        .I3(p_0_in[28]),
        .O(\share2_reg[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[21]_i_1 
       (.I0(mask_in_IBUF[21]),
        .I1(current_state[0]),
        .I2(p_0_in[117]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[21]_i_2_n_0 ),
        .I5(current_state[1]),
        .O(\share2_reg[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[21]_i_2 
       (.I0(p_0_in[116]),
        .I1(p_0_in[37]),
        .I2(p_0_in[76]),
        .I3(p_0_in[29]),
        .I4(p_0_in[77]),
        .O(\share2_reg[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[22]_i_1 
       (.I0(mask_in_IBUF[22]),
        .I1(current_state[0]),
        .I2(p_0_in[118]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[22]),
        .I5(\FSM_onehot_current_state_reg[1]_rep__0_n_0 ),
        .O(\share2_reg[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \share2_reg[22]_i_2 
       (.I0(p_0_in[117]),
        .I1(p_0_in[38]),
        .I2(p_0_in[77]),
        .I3(p_0_in[30]),
        .I4(p_0_in[78]),
        .O(mix_cols_share2[22]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[23]_i_1 
       (.I0(mask_in_IBUF[23]),
        .I1(current_state[0]),
        .I2(p_0_in[119]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[23]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[23]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[23]_i_2 
       (.I0(p_0_in[118]),
        .I1(p_0_in[39]),
        .I2(p_0_in[78]),
        .I3(p_0_in[31]),
        .I4(p_0_in[79]),
        .O(\share2_reg[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[24]_i_1 
       (.I0(mask_in_IBUF[24]),
        .I1(current_state[0]),
        .I2(p_0_in[24]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[24]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[24]_i_2 
       (.I0(p_0_in[32]),
        .I1(p_0_in[72]),
        .I2(p_0_in[112]),
        .I3(p_0_in[31]),
        .I4(p_0_in[119]),
        .O(mix_cols_share2[24]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[25]_i_1 
       (.I0(mask_in_IBUF[25]),
        .I1(current_state[0]),
        .I2(p_0_in[25]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[25]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \share2_reg[25]_i_2 
       (.I0(p_0_in[33]),
        .I1(p_0_in[73]),
        .I2(p_0_in[113]),
        .I3(p_0_in[24]),
        .I4(p_0_in[31]),
        .I5(\u_mc_share2/xtime_return3_in [1]),
        .O(\share2_reg[25]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \share2_reg[25]_i_3 
       (.I0(p_0_in[119]),
        .I1(p_0_in[112]),
        .O(\u_mc_share2/xtime_return3_in [1]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[26]_i_1 
       (.I0(mask_in_IBUF[26]),
        .I1(current_state[0]),
        .I2(p_0_in[26]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[26]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[26]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[26]_i_2 
       (.I0(p_0_in[34]),
        .I1(p_0_in[74]),
        .I2(p_0_in[114]),
        .I3(p_0_in[25]),
        .I4(p_0_in[113]),
        .O(mix_cols_share2[26]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[27]_i_1 
       (.I0(mask_in_IBUF[27]),
        .I1(current_state[0]),
        .I2(p_0_in[27]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[27]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \share2_reg[27]_i_2 
       (.I0(p_0_in[35]),
        .I1(p_0_in[75]),
        .I2(p_0_in[115]),
        .I3(p_0_in[26]),
        .I4(p_0_in[31]),
        .I5(\u_mc_share2/xtime_return3_in [3]),
        .O(\share2_reg[27]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \share2_reg[27]_i_3 
       (.I0(p_0_in[119]),
        .I1(p_0_in[114]),
        .O(\u_mc_share2/xtime_return3_in [3]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[28]_i_1 
       (.I0(mask_in_IBUF[28]),
        .I1(current_state[0]),
        .I2(p_0_in[28]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[28]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share2_reg[28]_i_2 
       (.I0(p_0_in[36]),
        .I1(p_0_in[76]),
        .I2(p_0_in[116]),
        .I3(p_0_in[27]),
        .I4(p_0_in[31]),
        .I5(\share2_reg[28]_i_3_n_0 ),
        .O(\share2_reg[28]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \share2_reg[28]_i_3 
       (.I0(p_0_in[119]),
        .I1(p_0_in[115]),
        .O(\share2_reg[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[29]_i_1 
       (.I0(mask_in_IBUF[29]),
        .I1(current_state[0]),
        .I2(p_0_in[29]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[29]),
        .I5(current_state[1]),
        .O(\share2_reg[29]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[29]_i_2 
       (.I0(p_0_in[37]),
        .I1(p_0_in[77]),
        .I2(p_0_in[117]),
        .I3(p_0_in[28]),
        .I4(p_0_in[116]),
        .O(mix_cols_share2[29]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[2]_i_1 
       (.I0(mask_in_IBUF[2]),
        .I1(current_state[0]),
        .I2(p_0_in[34]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[2]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[2]_i_2 
       (.I0(p_0_in[25]),
        .I1(p_0_in[33]),
        .I2(p_0_in[114]),
        .I3(p_0_in[26]),
        .I4(p_0_in[74]),
        .O(\share2_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[30]_i_1 
       (.I0(mask_in_IBUF[30]),
        .I1(current_state[0]),
        .I2(p_0_in[30]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[30]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[30]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \share2_reg[30]_i_2 
       (.I0(p_0_in[38]),
        .I1(p_0_in[78]),
        .I2(p_0_in[118]),
        .I3(p_0_in[29]),
        .I4(p_0_in[117]),
        .O(\share2_reg[30]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[31]_i_1 
       (.I0(mask_in_IBUF[31]),
        .I1(current_state[0]),
        .I2(p_0_in[31]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[31]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[31]_i_2 
       (.I0(p_0_in[39]),
        .I1(p_0_in[79]),
        .I2(p_0_in[119]),
        .I3(p_0_in[30]),
        .I4(p_0_in[118]),
        .O(mix_cols_share2[31]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[32]_i_1 
       (.I0(mask_in_IBUF[32]),
        .I1(current_state[0]),
        .I2(p_0_in[64]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[32]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[32]_i_2 
       (.I0(p_0_in[56]),
        .I1(p_0_in[16]),
        .I2(p_0_in[63]),
        .I3(p_0_in[71]),
        .I4(p_0_in[104]),
        .O(mix_cols_share2[32]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[33]_i_1 
       (.I0(mask_in_IBUF[33]),
        .I1(current_state[0]),
        .I2(p_0_in[65]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[33]_i_2_n_0 ),
        .I5(current_state[1]),
        .O(\share2_reg[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \share2_reg[33]_i_2 
       (.I0(p_0_in[57]),
        .I1(p_0_in[17]),
        .I2(\u_mc_share2/xtime_return10_in [1]),
        .I3(p_0_in[64]),
        .I4(p_0_in[71]),
        .I5(p_0_in[105]),
        .O(\share2_reg[33]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[34]_i_1 
       (.I0(mask_in_IBUF[34]),
        .I1(current_state[0]),
        .I2(p_0_in[66]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[34]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[34]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[34]_i_2 
       (.I0(p_0_in[58]),
        .I1(p_0_in[18]),
        .I2(p_0_in[57]),
        .I3(p_0_in[65]),
        .I4(p_0_in[106]),
        .O(mix_cols_share2[34]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[35]_i_1 
       (.I0(mask_in_IBUF[35]),
        .I1(current_state[0]),
        .I2(p_0_in[67]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[35]_i_2_n_0 ),
        .I5(current_state[1]),
        .O(\share2_reg[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \share2_reg[35]_i_2 
       (.I0(p_0_in[59]),
        .I1(p_0_in[19]),
        .I2(\u_mc_share2/xtime_return10_in [3]),
        .I3(p_0_in[66]),
        .I4(p_0_in[71]),
        .I5(p_0_in[107]),
        .O(\share2_reg[35]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[36]_i_1 
       (.I0(mask_in_IBUF[36]),
        .I1(current_state[0]),
        .I2(p_0_in[68]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[36]_i_2_n_0 ),
        .I5(current_state[1]),
        .O(\share2_reg[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share2_reg[36]_i_2 
       (.I0(p_0_in[60]),
        .I1(p_0_in[20]),
        .I2(\share2_reg[60]_i_3_n_0 ),
        .I3(p_0_in[67]),
        .I4(p_0_in[71]),
        .I5(p_0_in[108]),
        .O(\share2_reg[36]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[37]_i_1 
       (.I0(mask_in_IBUF[37]),
        .I1(current_state[0]),
        .I2(p_0_in[69]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[37]),
        .I5(\FSM_onehot_current_state_reg[1]_rep__0_n_0 ),
        .O(\share2_reg[37]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[37]_i_2 
       (.I0(p_0_in[61]),
        .I1(p_0_in[21]),
        .I2(p_0_in[60]),
        .I3(p_0_in[68]),
        .I4(p_0_in[109]),
        .O(mix_cols_share2[37]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[38]_i_1 
       (.I0(mask_in_IBUF[38]),
        .I1(current_state[0]),
        .I2(p_0_in[70]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[38]_i_2_n_0 ),
        .I5(current_state[1]),
        .O(\share2_reg[38]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \share2_reg[38]_i_2 
       (.I0(p_0_in[62]),
        .I1(p_0_in[22]),
        .I2(p_0_in[61]),
        .I3(p_0_in[69]),
        .I4(p_0_in[110]),
        .O(\share2_reg[38]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[39]_i_1 
       (.I0(mask_in_IBUF[39]),
        .I1(current_state[0]),
        .I2(p_0_in[71]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[39]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[39]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[39]_i_2 
       (.I0(p_0_in[63]),
        .I1(p_0_in[23]),
        .I2(p_0_in[62]),
        .I3(p_0_in[70]),
        .I4(p_0_in[111]),
        .O(mix_cols_share2[39]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[3]_i_1 
       (.I0(mask_in_IBUF[3]),
        .I1(current_state[0]),
        .I2(p_0_in[35]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[3]),
        .I5(current_state[1]),
        .O(\share2_reg[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \share2_reg[3]_i_2 
       (.I0(p_0_in[26]),
        .I1(p_0_in[31]),
        .I2(\u_mc_share2/xtime_return [3]),
        .I3(p_0_in[115]),
        .I4(p_0_in[27]),
        .I5(p_0_in[75]),
        .O(mix_cols_share2[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \share2_reg[3]_i_3 
       (.I0(p_0_in[39]),
        .I1(p_0_in[34]),
        .O(\u_mc_share2/xtime_return [3]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[40]_i_1 
       (.I0(mask_in_IBUF[40]),
        .I1(current_state[0]),
        .I2(p_0_in[104]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[40]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[40]_i_2 
       (.I0(p_0_in[71]),
        .I1(p_0_in[64]),
        .I2(p_0_in[111]),
        .I3(p_0_in[56]),
        .I4(p_0_in[16]),
        .O(mix_cols_share2[40]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[41]_i_1 
       (.I0(mask_in_IBUF[41]),
        .I1(current_state[0]),
        .I2(in9[41]),
        .I3(current_state[1]),
        .O(\share2_reg[41]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7447477447747447)) 
    \share2_reg[41]_i_2 
       (.I0(p_0_in[105]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[64]),
        .I3(p_0_in[71]),
        .I4(\share2_reg[49]_i_3_n_0 ),
        .I5(p_0_in[17]),
        .O(in9[41]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[42]_i_1 
       (.I0(mask_in_IBUF[42]),
        .I1(current_state[0]),
        .I2(p_0_in[106]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[42]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[42]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[42]_i_2 
       (.I0(p_0_in[65]),
        .I1(p_0_in[66]),
        .I2(p_0_in[105]),
        .I3(p_0_in[58]),
        .I4(p_0_in[18]),
        .O(\share2_reg[42]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[43]_i_1 
       (.I0(mask_in_IBUF[43]),
        .I1(current_state[0]),
        .I2(in9[43]),
        .I3(current_state[1]),
        .O(\share2_reg[43]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7447477447747447)) 
    \share2_reg[43]_i_2 
       (.I0(p_0_in[107]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[66]),
        .I3(p_0_in[71]),
        .I4(\share2_reg[51]_i_3_n_0 ),
        .I5(p_0_in[19]),
        .O(in9[43]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[44]_i_1 
       (.I0(mask_in_IBUF[44]),
        .I1(current_state[0]),
        .I2(in9[44]),
        .I3(current_state[1]),
        .O(\share2_reg[44]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4774744774474774)) 
    \share2_reg[44]_i_2 
       (.I0(p_0_in[108]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[67]),
        .I3(p_0_in[71]),
        .I4(\share2_reg[52]_i_3_n_0 ),
        .I5(p_0_in[20]),
        .O(in9[44]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[45]_i_1 
       (.I0(mask_in_IBUF[45]),
        .I1(current_state[0]),
        .I2(p_0_in[109]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[45]_i_2_n_0 ),
        .I5(current_state[1]),
        .O(\share2_reg[45]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[45]_i_2 
       (.I0(p_0_in[68]),
        .I1(p_0_in[69]),
        .I2(p_0_in[108]),
        .I3(p_0_in[61]),
        .I4(p_0_in[21]),
        .O(\share2_reg[45]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[46]_i_1 
       (.I0(mask_in_IBUF[46]),
        .I1(current_state[0]),
        .I2(p_0_in[110]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[46]),
        .I5(\FSM_onehot_current_state_reg[1]_rep__0_n_0 ),
        .O(\share2_reg[46]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \share2_reg[46]_i_2 
       (.I0(p_0_in[69]),
        .I1(p_0_in[70]),
        .I2(p_0_in[109]),
        .I3(p_0_in[62]),
        .I4(p_0_in[22]),
        .O(mix_cols_share2[46]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[47]_i_1 
       (.I0(mask_in_IBUF[47]),
        .I1(current_state[0]),
        .I2(p_0_in[111]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[47]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[47]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[47]_i_2 
       (.I0(p_0_in[70]),
        .I1(p_0_in[71]),
        .I2(p_0_in[110]),
        .I3(p_0_in[63]),
        .I4(p_0_in[23]),
        .O(\share2_reg[47]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[48]_i_1 
       (.I0(mask_in_IBUF[48]),
        .I1(current_state[0]),
        .I2(p_0_in[16]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[48]),
        .I5(\FSM_onehot_current_state_reg[1]_rep__0_n_0 ),
        .O(\share2_reg[48]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[48]_i_2 
       (.I0(p_0_in[104]),
        .I1(p_0_in[64]),
        .I2(p_0_in[111]),
        .I3(p_0_in[56]),
        .I4(p_0_in[23]),
        .O(mix_cols_share2[48]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[49]_i_1 
       (.I0(mask_in_IBUF[49]),
        .I1(current_state[0]),
        .I2(in9[49]),
        .I3(current_state[1]),
        .O(\share2_reg[49]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7447477447747447)) 
    \share2_reg[49]_i_2 
       (.I0(p_0_in[17]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[105]),
        .I3(\share2_reg[49]_i_3_n_0 ),
        .I4(p_0_in[23]),
        .I5(p_0_in[16]),
        .O(in9[49]));
  LUT4 #(
    .INIT(16'h6996)) 
    \share2_reg[49]_i_3 
       (.I0(p_0_in[65]),
        .I1(p_0_in[111]),
        .I2(p_0_in[104]),
        .I3(p_0_in[57]),
        .O(\share2_reg[49]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[4]_i_1 
       (.I0(mask_in_IBUF[4]),
        .I1(current_state[0]),
        .I2(p_0_in[36]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[4]),
        .I5(current_state[1]),
        .O(\share2_reg[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share2_reg[4]_i_2 
       (.I0(p_0_in[27]),
        .I1(p_0_in[31]),
        .I2(\share2_reg[4]_i_3_n_0 ),
        .I3(p_0_in[116]),
        .I4(p_0_in[28]),
        .I5(p_0_in[76]),
        .O(mix_cols_share2[4]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \share2_reg[4]_i_3 
       (.I0(p_0_in[39]),
        .I1(p_0_in[35]),
        .O(\share2_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[50]_i_1 
       (.I0(mask_in_IBUF[50]),
        .I1(current_state[0]),
        .I2(p_0_in[18]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[50]),
        .I5(\FSM_onehot_current_state_reg[1]_rep__0_n_0 ),
        .O(\share2_reg[50]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[50]_i_2 
       (.I0(p_0_in[106]),
        .I1(p_0_in[66]),
        .I2(p_0_in[105]),
        .I3(p_0_in[58]),
        .I4(p_0_in[17]),
        .O(mix_cols_share2[50]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[51]_i_1 
       (.I0(mask_in_IBUF[51]),
        .I1(current_state[0]),
        .I2(in9[51]),
        .I3(current_state[1]),
        .O(\share2_reg[51]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7447477447747447)) 
    \share2_reg[51]_i_2 
       (.I0(p_0_in[19]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[107]),
        .I3(\share2_reg[51]_i_3_n_0 ),
        .I4(p_0_in[23]),
        .I5(p_0_in[18]),
        .O(in9[51]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \share2_reg[51]_i_3 
       (.I0(p_0_in[67]),
        .I1(p_0_in[111]),
        .I2(p_0_in[106]),
        .I3(p_0_in[59]),
        .O(\share2_reg[51]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[52]_i_1 
       (.I0(mask_in_IBUF[52]),
        .I1(current_state[0]),
        .I2(in9[52]),
        .I3(current_state[1]),
        .O(\share2_reg[52]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4774744774474774)) 
    \share2_reg[52]_i_2 
       (.I0(p_0_in[20]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[108]),
        .I3(\share2_reg[52]_i_3_n_0 ),
        .I4(p_0_in[23]),
        .I5(p_0_in[19]),
        .O(in9[52]));
  LUT4 #(
    .INIT(16'h9669)) 
    \share2_reg[52]_i_3 
       (.I0(p_0_in[68]),
        .I1(p_0_in[111]),
        .I2(p_0_in[107]),
        .I3(p_0_in[60]),
        .O(\share2_reg[52]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[53]_i_1 
       (.I0(mask_in_IBUF[53]),
        .I1(current_state[0]),
        .I2(p_0_in[21]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[53]),
        .I5(\FSM_onehot_current_state_reg[1]_rep__0_n_0 ),
        .O(\share2_reg[53]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[53]_i_2 
       (.I0(p_0_in[109]),
        .I1(p_0_in[69]),
        .I2(p_0_in[108]),
        .I3(p_0_in[61]),
        .I4(p_0_in[20]),
        .O(mix_cols_share2[53]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[54]_i_1 
       (.I0(mask_in_IBUF[54]),
        .I1(current_state[0]),
        .I2(p_0_in[22]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[54]_i_2_n_0 ),
        .I5(current_state[1]),
        .O(\share2_reg[54]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \share2_reg[54]_i_2 
       (.I0(p_0_in[110]),
        .I1(p_0_in[70]),
        .I2(p_0_in[109]),
        .I3(p_0_in[62]),
        .I4(p_0_in[21]),
        .O(\share2_reg[54]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[55]_i_1 
       (.I0(mask_in_IBUF[55]),
        .I1(current_state[0]),
        .I2(p_0_in[23]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[55]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[55]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[55]_i_2 
       (.I0(p_0_in[111]),
        .I1(p_0_in[71]),
        .I2(p_0_in[110]),
        .I3(p_0_in[63]),
        .I4(p_0_in[22]),
        .O(mix_cols_share2[55]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[56]_i_1 
       (.I0(mask_in_IBUF[56]),
        .I1(current_state[0]),
        .I2(p_0_in[56]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[56]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[56]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[56]_i_2 
       (.I0(p_0_in[64]),
        .I1(p_0_in[23]),
        .I2(p_0_in[63]),
        .I3(p_0_in[104]),
        .I4(p_0_in[16]),
        .O(mix_cols_share2[56]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[57]_i_1 
       (.I0(mask_in_IBUF[57]),
        .I1(current_state[0]),
        .I2(p_0_in[57]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[57]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep__0_n_0 ),
        .O(\share2_reg[57]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \share2_reg[57]_i_2 
       (.I0(p_0_in[65]),
        .I1(p_0_in[16]),
        .I2(p_0_in[23]),
        .I3(\u_mc_share2/xtime_return10_in [1]),
        .I4(p_0_in[105]),
        .I5(p_0_in[17]),
        .O(\share2_reg[57]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \share2_reg[57]_i_3 
       (.I0(p_0_in[63]),
        .I1(p_0_in[56]),
        .O(\u_mc_share2/xtime_return10_in [1]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[58]_i_1 
       (.I0(mask_in_IBUF[58]),
        .I1(current_state[0]),
        .I2(p_0_in[58]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[58]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[58]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[58]_i_2 
       (.I0(p_0_in[66]),
        .I1(p_0_in[17]),
        .I2(p_0_in[57]),
        .I3(p_0_in[106]),
        .I4(p_0_in[18]),
        .O(mix_cols_share2[58]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[59]_i_1 
       (.I0(mask_in_IBUF[59]),
        .I1(current_state[0]),
        .I2(p_0_in[59]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[59]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep__0_n_0 ),
        .O(\share2_reg[59]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \share2_reg[59]_i_2 
       (.I0(p_0_in[67]),
        .I1(p_0_in[18]),
        .I2(p_0_in[23]),
        .I3(\u_mc_share2/xtime_return10_in [3]),
        .I4(p_0_in[107]),
        .I5(p_0_in[19]),
        .O(\share2_reg[59]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \share2_reg[59]_i_3 
       (.I0(p_0_in[63]),
        .I1(p_0_in[58]),
        .O(\u_mc_share2/xtime_return10_in [3]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[5]_i_1 
       (.I0(mask_in_IBUF[5]),
        .I1(current_state[0]),
        .I2(p_0_in[37]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[5]_i_2_n_0 ),
        .I5(current_state[1]),
        .O(\share2_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[5]_i_2 
       (.I0(p_0_in[28]),
        .I1(p_0_in[36]),
        .I2(p_0_in[117]),
        .I3(p_0_in[29]),
        .I4(p_0_in[77]),
        .O(\share2_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[60]_i_1 
       (.I0(mask_in_IBUF[60]),
        .I1(current_state[0]),
        .I2(p_0_in[60]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[60]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep__0_n_0 ),
        .O(\share2_reg[60]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share2_reg[60]_i_2 
       (.I0(p_0_in[68]),
        .I1(p_0_in[19]),
        .I2(p_0_in[23]),
        .I3(\share2_reg[60]_i_3_n_0 ),
        .I4(p_0_in[108]),
        .I5(p_0_in[20]),
        .O(\share2_reg[60]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \share2_reg[60]_i_3 
       (.I0(p_0_in[63]),
        .I1(p_0_in[59]),
        .O(\share2_reg[60]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[61]_i_1 
       (.I0(mask_in_IBUF[61]),
        .I1(current_state[0]),
        .I2(p_0_in[61]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[61]),
        .I5(current_state[1]),
        .O(\share2_reg[61]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[61]_i_2 
       (.I0(p_0_in[69]),
        .I1(p_0_in[20]),
        .I2(p_0_in[60]),
        .I3(p_0_in[109]),
        .I4(p_0_in[21]),
        .O(mix_cols_share2[61]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[62]_i_1 
       (.I0(mask_in_IBUF[62]),
        .I1(current_state[0]),
        .I2(p_0_in[62]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[62]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep__0_n_0 ),
        .O(\share2_reg[62]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \share2_reg[62]_i_2 
       (.I0(p_0_in[70]),
        .I1(p_0_in[21]),
        .I2(p_0_in[61]),
        .I3(p_0_in[110]),
        .I4(p_0_in[22]),
        .O(\share2_reg[62]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[63]_i_1 
       (.I0(mask_in_IBUF[63]),
        .I1(current_state[0]),
        .I2(p_0_in[63]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[63]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[63]_i_2 
       (.I0(p_0_in[71]),
        .I1(p_0_in[22]),
        .I2(p_0_in[62]),
        .I3(p_0_in[111]),
        .I4(p_0_in[23]),
        .O(mix_cols_share2[63]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[64]_i_1 
       (.I0(mask_in_IBUF[64]),
        .I1(current_state[0]),
        .I2(p_0_in[96]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[64]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[64]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[64]_i_2 
       (.I0(p_0_in[88]),
        .I1(p_0_in[95]),
        .I2(p_0_in[48]),
        .I3(p_0_in[103]),
        .I4(p_0_in[8]),
        .O(mix_cols_share2[64]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[65]_i_1 
       (.I0(mask_in_IBUF[65]),
        .I1(current_state[0]),
        .I2(p_0_in[97]),
        .I3(u_masked_sub_bytes_n_34),
        .I4(mix_cols_share2[65]),
        .I5(current_state[1]),
        .O(\share2_reg[65]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \share2_reg[65]_i_2 
       (.I0(p_0_in[89]),
        .I1(\u_mc_share2/xtime_return21_in ),
        .I2(p_0_in[49]),
        .I3(p_0_in[96]),
        .I4(p_0_in[103]),
        .I5(p_0_in[9]),
        .O(mix_cols_share2[65]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \share2_reg[65]_i_3 
       (.I0(p_0_in[95]),
        .I1(p_0_in[88]),
        .O(\u_mc_share2/xtime_return21_in ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[66]_i_1 
       (.I0(mask_in_IBUF[66]),
        .I1(current_state[0]),
        .I2(p_0_in[98]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[66]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[66]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[66]_i_2 
       (.I0(p_0_in[90]),
        .I1(p_0_in[89]),
        .I2(p_0_in[50]),
        .I3(p_0_in[97]),
        .I4(p_0_in[10]),
        .O(mix_cols_share2[66]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[67]_i_1 
       (.I0(mask_in_IBUF[67]),
        .I1(current_state[0]),
        .I2(p_0_in[99]),
        .I3(u_masked_sub_bytes_n_34),
        .I4(mix_cols_share2[67]),
        .I5(current_state[1]),
        .O(\share2_reg[67]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[67]_i_2 
       (.I0(p_0_in[91]),
        .I1(p_0_in[95]),
        .I2(p_0_in[90]),
        .I3(\share2_reg[67]_i_3_n_0 ),
        .I4(p_0_in[11]),
        .O(mix_cols_share2[67]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \share2_reg[67]_i_3 
       (.I0(p_0_in[51]),
        .I1(p_0_in[98]),
        .I2(p_0_in[103]),
        .O(\share2_reg[67]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[68]_i_1 
       (.I0(mask_in_IBUF[68]),
        .I1(current_state[0]),
        .I2(p_0_in[100]),
        .I3(u_masked_sub_bytes_n_34),
        .I4(mix_cols_share2[68]),
        .I5(current_state[1]),
        .O(\share2_reg[68]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \share2_reg[68]_i_2 
       (.I0(p_0_in[92]),
        .I1(p_0_in[95]),
        .I2(p_0_in[91]),
        .I3(\share2_reg[68]_i_3_n_0 ),
        .I4(p_0_in[12]),
        .O(mix_cols_share2[68]));
  LUT3 #(
    .INIT(8'h96)) 
    \share2_reg[68]_i_3 
       (.I0(p_0_in[52]),
        .I1(p_0_in[99]),
        .I2(p_0_in[103]),
        .O(\share2_reg[68]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[69]_i_1 
       (.I0(mask_in_IBUF[69]),
        .I1(current_state[0]),
        .I2(p_0_in[101]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[69]),
        .I5(current_state[1]),
        .O(\share2_reg[69]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[69]_i_2 
       (.I0(p_0_in[93]),
        .I1(p_0_in[92]),
        .I2(p_0_in[53]),
        .I3(p_0_in[100]),
        .I4(p_0_in[13]),
        .O(mix_cols_share2[69]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[6]_i_1 
       (.I0(mask_in_IBUF[6]),
        .I1(current_state[0]),
        .I2(p_0_in[38]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[6]),
        .I5(current_state[1]),
        .O(\share2_reg[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \share2_reg[6]_i_2 
       (.I0(p_0_in[29]),
        .I1(p_0_in[37]),
        .I2(p_0_in[118]),
        .I3(p_0_in[30]),
        .I4(p_0_in[78]),
        .O(mix_cols_share2[6]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[70]_i_1 
       (.I0(mask_in_IBUF[70]),
        .I1(current_state[0]),
        .I2(p_0_in[102]),
        .I3(u_masked_sub_bytes_n_34),
        .I4(mix_cols_share2[70]),
        .I5(current_state[1]),
        .O(\share2_reg[70]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \share2_reg[70]_i_2 
       (.I0(p_0_in[94]),
        .I1(p_0_in[93]),
        .I2(p_0_in[54]),
        .I3(p_0_in[101]),
        .I4(p_0_in[14]),
        .O(mix_cols_share2[70]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[71]_i_1 
       (.I0(mask_in_IBUF[71]),
        .I1(current_state[0]),
        .I2(p_0_in[103]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[71]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[71]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[71]_i_2 
       (.I0(p_0_in[95]),
        .I1(p_0_in[94]),
        .I2(p_0_in[55]),
        .I3(p_0_in[102]),
        .I4(p_0_in[15]),
        .O(mix_cols_share2[71]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[72]_i_1 
       (.I0(mask_in_IBUF[72]),
        .I1(current_state[0]),
        .I2(p_0_in[8]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[72]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[72]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[72]_i_2 
       (.I0(p_0_in[103]),
        .I1(p_0_in[48]),
        .I2(p_0_in[15]),
        .I3(p_0_in[96]),
        .I4(p_0_in[88]),
        .O(mix_cols_share2[72]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[73]_i_1 
       (.I0(mask_in_IBUF[73]),
        .I1(current_state[0]),
        .I2(in9[73]),
        .I3(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[73]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7447477447747447)) 
    \share2_reg[73]_i_2 
       (.I0(p_0_in[9]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[103]),
        .I3(p_0_in[96]),
        .I4(p_0_in[49]),
        .I5(\share2_reg[73]_i_3_n_0 ),
        .O(in9[73]));
  LUT4 #(
    .INIT(16'h6996)) 
    \share2_reg[73]_i_3 
       (.I0(p_0_in[89]),
        .I1(p_0_in[97]),
        .I2(p_0_in[15]),
        .I3(p_0_in[8]),
        .O(\share2_reg[73]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[74]_i_1 
       (.I0(mask_in_IBUF[74]),
        .I1(current_state[0]),
        .I2(p_0_in[10]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[74]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[74]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[74]_i_2 
       (.I0(p_0_in[97]),
        .I1(p_0_in[50]),
        .I2(p_0_in[9]),
        .I3(p_0_in[98]),
        .I4(p_0_in[90]),
        .O(mix_cols_share2[74]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[75]_i_1 
       (.I0(mask_in_IBUF[75]),
        .I1(current_state[0]),
        .I2(in9[75]),
        .I3(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[75]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7447477447747447)) 
    \share2_reg[75]_i_2 
       (.I0(p_0_in[11]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[103]),
        .I3(p_0_in[98]),
        .I4(p_0_in[51]),
        .I5(\share2_reg[83]_i_3_n_0 ),
        .O(in9[75]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[76]_i_1 
       (.I0(mask_in_IBUF[76]),
        .I1(current_state[0]),
        .I2(in9[76]),
        .I3(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[76]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4774744774474774)) 
    \share2_reg[76]_i_2 
       (.I0(p_0_in[12]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[103]),
        .I3(p_0_in[99]),
        .I4(p_0_in[52]),
        .I5(\share2_reg[84]_i_3_n_0 ),
        .O(in9[76]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[77]_i_1 
       (.I0(mask_in_IBUF[77]),
        .I1(current_state[0]),
        .I2(p_0_in[13]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[77]),
        .I5(current_state[1]),
        .O(\share2_reg[77]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[77]_i_2 
       (.I0(p_0_in[100]),
        .I1(p_0_in[53]),
        .I2(p_0_in[12]),
        .I3(p_0_in[101]),
        .I4(p_0_in[93]),
        .O(mix_cols_share2[77]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[78]_i_1 
       (.I0(mask_in_IBUF[78]),
        .I1(current_state[0]),
        .I2(p_0_in[14]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[78]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[78]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \share2_reg[78]_i_2 
       (.I0(p_0_in[101]),
        .I1(p_0_in[54]),
        .I2(p_0_in[13]),
        .I3(p_0_in[102]),
        .I4(p_0_in[94]),
        .O(mix_cols_share2[78]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[79]_i_1 
       (.I0(mask_in_IBUF[79]),
        .I1(current_state[0]),
        .I2(p_0_in[15]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[79]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[79]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[79]_i_2 
       (.I0(p_0_in[102]),
        .I1(p_0_in[55]),
        .I2(p_0_in[14]),
        .I3(p_0_in[103]),
        .I4(p_0_in[95]),
        .O(mix_cols_share2[79]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[7]_i_1 
       (.I0(mask_in_IBUF[7]),
        .I1(current_state[0]),
        .I2(p_0_in[39]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[7]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[7]_i_2 
       (.I0(p_0_in[30]),
        .I1(p_0_in[38]),
        .I2(p_0_in[119]),
        .I3(p_0_in[31]),
        .I4(p_0_in[79]),
        .O(\share2_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[80]_i_1 
       (.I0(mask_in_IBUF[80]),
        .I1(current_state[0]),
        .I2(p_0_in[48]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[80]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[80]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[80]_i_2 
       (.I0(p_0_in[8]),
        .I1(p_0_in[88]),
        .I2(p_0_in[96]),
        .I3(p_0_in[15]),
        .I4(p_0_in[55]),
        .O(mix_cols_share2[80]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[81]_i_1 
       (.I0(mask_in_IBUF[81]),
        .I1(current_state[0]),
        .I2(p_0_in[49]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[81]_i_2_n_0 ),
        .I5(current_state[1]),
        .O(\share2_reg[81]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \share2_reg[81]_i_2 
       (.I0(p_0_in[9]),
        .I1(p_0_in[89]),
        .I2(p_0_in[97]),
        .I3(p_0_in[15]),
        .I4(p_0_in[8]),
        .I5(\u_mc_share2/xtime_return26_in [1]),
        .O(\share2_reg[81]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[82]_i_1 
       (.I0(mask_in_IBUF[82]),
        .I1(current_state[0]),
        .I2(p_0_in[50]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[82]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[82]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[82]_i_2 
       (.I0(p_0_in[10]),
        .I1(p_0_in[90]),
        .I2(p_0_in[98]),
        .I3(p_0_in[9]),
        .I4(p_0_in[49]),
        .O(mix_cols_share2[82]));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[83]_i_1 
       (.I0(mask_in_IBUF[83]),
        .I1(current_state[0]),
        .I2(in9[83]),
        .I3(current_state[1]),
        .O(\share2_reg[83]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7447477447747447)) 
    \share2_reg[83]_i_2 
       (.I0(p_0_in[51]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[11]),
        .I3(\share2_reg[83]_i_3_n_0 ),
        .I4(p_0_in[55]),
        .I5(p_0_in[50]),
        .O(in9[83]));
  LUT4 #(
    .INIT(16'h6996)) 
    \share2_reg[83]_i_3 
       (.I0(p_0_in[91]),
        .I1(p_0_in[99]),
        .I2(p_0_in[15]),
        .I3(p_0_in[10]),
        .O(\share2_reg[83]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[84]_i_1 
       (.I0(mask_in_IBUF[84]),
        .I1(current_state[0]),
        .I2(in9[84]),
        .I3(current_state[1]),
        .O(\share2_reg[84]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4774744774474774)) 
    \share2_reg[84]_i_2 
       (.I0(p_0_in[52]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[12]),
        .I3(\share2_reg[84]_i_3_n_0 ),
        .I4(p_0_in[55]),
        .I5(p_0_in[51]),
        .O(in9[84]));
  LUT4 #(
    .INIT(16'h9669)) 
    \share2_reg[84]_i_3 
       (.I0(p_0_in[92]),
        .I1(p_0_in[100]),
        .I2(p_0_in[15]),
        .I3(p_0_in[11]),
        .O(\share2_reg[84]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[85]_i_1 
       (.I0(mask_in_IBUF[85]),
        .I1(current_state[0]),
        .I2(p_0_in[53]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[85]),
        .I5(current_state[1]),
        .O(\share2_reg[85]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[85]_i_2 
       (.I0(p_0_in[13]),
        .I1(p_0_in[93]),
        .I2(p_0_in[101]),
        .I3(p_0_in[12]),
        .I4(p_0_in[52]),
        .O(mix_cols_share2[85]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[86]_i_1 
       (.I0(mask_in_IBUF[86]),
        .I1(current_state[0]),
        .I2(p_0_in[54]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[86]_i_2_n_0 ),
        .I5(current_state[1]),
        .O(\share2_reg[86]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \share2_reg[86]_i_2 
       (.I0(p_0_in[14]),
        .I1(p_0_in[94]),
        .I2(p_0_in[102]),
        .I3(p_0_in[13]),
        .I4(p_0_in[53]),
        .O(\share2_reg[86]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[87]_i_1 
       (.I0(mask_in_IBUF[87]),
        .I1(current_state[0]),
        .I2(p_0_in[55]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[87]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[87]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[87]_i_2 
       (.I0(p_0_in[15]),
        .I1(p_0_in[95]),
        .I2(p_0_in[103]),
        .I3(p_0_in[14]),
        .I4(p_0_in[54]),
        .O(mix_cols_share2[87]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[88]_i_1 
       (.I0(mask_in_IBUF[88]),
        .I1(current_state[0]),
        .I2(p_0_in[88]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[88]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[88]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[88]_i_2 
       (.I0(p_0_in[95]),
        .I1(p_0_in[55]),
        .I2(p_0_in[48]),
        .I3(p_0_in[96]),
        .I4(p_0_in[8]),
        .O(mix_cols_share2[88]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[89]_i_1 
       (.I0(mask_in_IBUF[89]),
        .I1(current_state[0]),
        .I2(p_0_in[89]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[89]),
        .I5(current_state[1]),
        .O(\share2_reg[89]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \share2_reg[89]_i_2 
       (.I0(p_0_in[88]),
        .I1(p_0_in[95]),
        .I2(\u_mc_share2/xtime_return26_in [1]),
        .I3(p_0_in[49]),
        .I4(p_0_in[97]),
        .I5(p_0_in[9]),
        .O(mix_cols_share2[89]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \share2_reg[89]_i_3 
       (.I0(p_0_in[55]),
        .I1(p_0_in[48]),
        .O(\u_mc_share2/xtime_return26_in [1]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[8]_i_1 
       (.I0(mask_in_IBUF[8]),
        .I1(current_state[0]),
        .I2(p_0_in[72]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[8]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[8]_i_2 
       (.I0(p_0_in[39]),
        .I1(p_0_in[32]),
        .I2(p_0_in[79]),
        .I3(p_0_in[24]),
        .I4(p_0_in[112]),
        .O(mix_cols_share2[8]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[90]_i_1 
       (.I0(mask_in_IBUF[90]),
        .I1(current_state[0]),
        .I2(p_0_in[90]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[90]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[90]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[90]_i_2 
       (.I0(p_0_in[89]),
        .I1(p_0_in[49]),
        .I2(p_0_in[50]),
        .I3(p_0_in[98]),
        .I4(p_0_in[10]),
        .O(\share2_reg[90]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[91]_i_1 
       (.I0(mask_in_IBUF[91]),
        .I1(current_state[0]),
        .I2(p_0_in[91]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[91]),
        .I5(current_state[1]),
        .O(\share2_reg[91]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \share2_reg[91]_i_2 
       (.I0(p_0_in[90]),
        .I1(p_0_in[95]),
        .I2(\u_mc_share2/xtime_return26_in [3]),
        .I3(p_0_in[51]),
        .I4(p_0_in[99]),
        .I5(p_0_in[11]),
        .O(mix_cols_share2[91]));
  LUT2 #(
    .INIT(4'h6)) 
    \share2_reg[91]_i_3 
       (.I0(p_0_in[55]),
        .I1(p_0_in[50]),
        .O(\u_mc_share2/xtime_return26_in [3]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[92]_i_1 
       (.I0(mask_in_IBUF[92]),
        .I1(current_state[0]),
        .I2(p_0_in[92]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[92]),
        .I5(current_state[1]),
        .O(\share2_reg[92]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share2_reg[92]_i_2 
       (.I0(p_0_in[91]),
        .I1(p_0_in[95]),
        .I2(\share2_reg[92]_i_3_n_0 ),
        .I3(p_0_in[52]),
        .I4(p_0_in[100]),
        .I5(p_0_in[12]),
        .O(mix_cols_share2[92]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \share2_reg[92]_i_3 
       (.I0(p_0_in[55]),
        .I1(p_0_in[51]),
        .O(\share2_reg[92]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[93]_i_1 
       (.I0(mask_in_IBUF[93]),
        .I1(current_state[0]),
        .I2(p_0_in[93]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[93]_i_2_n_0 ),
        .I5(current_state[1]),
        .O(\share2_reg[93]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[93]_i_2 
       (.I0(p_0_in[92]),
        .I1(p_0_in[52]),
        .I2(p_0_in[53]),
        .I3(p_0_in[101]),
        .I4(p_0_in[13]),
        .O(\share2_reg[93]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[94]_i_1 
       (.I0(mask_in_IBUF[94]),
        .I1(current_state[0]),
        .I2(p_0_in[94]),
        .I3(u_masked_sub_bytes_n_34),
        .I4(mix_cols_share2[94]),
        .I5(current_state[1]),
        .O(\share2_reg[94]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \share2_reg[94]_i_3 
       (.I0(p_0_in[93]),
        .I1(p_0_in[53]),
        .I2(p_0_in[54]),
        .I3(p_0_in[102]),
        .I4(p_0_in[14]),
        .O(mix_cols_share2[94]));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[95]_i_1 
       (.I0(mask_in_IBUF[95]),
        .I1(current_state[0]),
        .I2(p_0_in[95]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(\share2_reg[95]_i_2_n_0 ),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[95]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[95]_i_2 
       (.I0(p_0_in[94]),
        .I1(p_0_in[54]),
        .I2(p_0_in[55]),
        .I3(p_0_in[103]),
        .I4(p_0_in[15]),
        .O(\share2_reg[95]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[96]_i_1 
       (.I0(mask_in_IBUF[96]),
        .I1(current_state[0]),
        .I2(p_0_in[0]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[96]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[96]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[96]_i_2 
       (.I0(p_0_in[7]),
        .I1(p_0_in[40]),
        .I2(p_0_in[80]),
        .I3(p_0_in[127]),
        .I4(p_0_in[120]),
        .O(mix_cols_share2[96]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[97]_i_1 
       (.I0(mask_in_IBUF[97]),
        .I1(current_state[0]),
        .I2(p_0_in[1]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[97]),
        .I5(current_state[1]),
        .O(\share2_reg[97]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[97]_i_2 
       (.I0(p_0_in[7]),
        .I1(p_0_in[0]),
        .I2(p_0_in[41]),
        .I3(\share2_reg[97]_i_3_n_0 ),
        .I4(p_0_in[121]),
        .O(mix_cols_share2[97]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \share2_reg[97]_i_3 
       (.I0(p_0_in[81]),
        .I1(p_0_in[120]),
        .I2(p_0_in[127]),
        .O(\share2_reg[97]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF8FFF88888888888)) 
    \share2_reg[98]_i_1 
       (.I0(mask_in_IBUF[98]),
        .I1(current_state[0]),
        .I2(p_0_in[2]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[98]),
        .I5(\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .O(\share2_reg[98]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[98]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[42]),
        .I2(p_0_in[82]),
        .I3(p_0_in[121]),
        .I4(p_0_in[122]),
        .O(mix_cols_share2[98]));
  LUT6 #(
    .INIT(64'h8FFF8F8888888888)) 
    \share2_reg[99]_i_1 
       (.I0(mask_in_IBUF[99]),
        .I1(current_state[0]),
        .I2(p_0_in[3]),
        .I3(u_masked_sub_bytes_n_163),
        .I4(mix_cols_share2[99]),
        .I5(current_state[1]),
        .O(\share2_reg[99]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share2_reg[99]_i_2 
       (.I0(p_0_in[7]),
        .I1(p_0_in[2]),
        .I2(p_0_in[43]),
        .I3(\share2_reg[99]_i_3_n_0 ),
        .I4(p_0_in[123]),
        .O(mix_cols_share2[99]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h69)) 
    \share2_reg[99]_i_3 
       (.I0(p_0_in[83]),
        .I1(p_0_in[122]),
        .I2(p_0_in[127]),
        .O(\share2_reg[99]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \share2_reg[9]_i_1 
       (.I0(mask_in_IBUF[9]),
        .I1(current_state[0]),
        .I2(in9[9]),
        .I3(current_state[1]),
        .O(\share2_reg[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7447477447747447)) 
    \share2_reg[9]_i_2 
       (.I0(p_0_in[73]),
        .I1(u_masked_sub_bytes_n_163),
        .I2(p_0_in[32]),
        .I3(p_0_in[39]),
        .I4(\share2_reg[17]_i_3_n_0 ),
        .I5(p_0_in[113]),
        .O(in9[9]));
  FDCE \share2_reg_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[0]_i_1_n_0 ),
        .Q(p_0_in[32]));
  FDCE \share2_reg_reg[100] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[100]_i_1_n_0 ),
        .Q(p_0_in[4]));
  FDCE \share2_reg_reg[101] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[101]_i_1_n_0 ),
        .Q(p_0_in[5]));
  FDCE \share2_reg_reg[102] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[102]_i_1_n_0 ),
        .Q(p_0_in[6]));
  FDCE \share2_reg_reg[103] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[103]_i_1_n_0 ),
        .Q(p_0_in[7]));
  FDCE \share2_reg_reg[104] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[104]_i_1_n_0 ),
        .Q(p_0_in[8]));
  FDCE \share2_reg_reg[105] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[105]_i_1_n_0 ),
        .Q(p_0_in[9]));
  FDCE \share2_reg_reg[106] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[106]_i_1_n_0 ),
        .Q(p_0_in[10]));
  FDCE \share2_reg_reg[107] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[107]_i_1_n_0 ),
        .Q(p_0_in[11]));
  FDCE \share2_reg_reg[108] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[108]_i_1_n_0 ),
        .Q(p_0_in[12]));
  FDCE \share2_reg_reg[109] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[109]_i_1_n_0 ),
        .Q(p_0_in[13]));
  FDCE \share2_reg_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[10]_i_1_n_0 ),
        .Q(p_0_in[42]));
  FDCE \share2_reg_reg[110] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[110]_i_1_n_0 ),
        .Q(p_0_in[14]));
  FDCE \share2_reg_reg[111] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[111]_i_1_n_0 ),
        .Q(p_0_in[15]));
  FDCE \share2_reg_reg[112] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[112]_i_1_n_0 ),
        .Q(p_0_in[16]));
  FDCE \share2_reg_reg[113] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[113]_i_1_n_0 ),
        .Q(p_0_in[17]));
  FDCE \share2_reg_reg[114] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[114]_i_1_n_0 ),
        .Q(p_0_in[18]));
  FDCE \share2_reg_reg[115] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[115]_i_1_n_0 ),
        .Q(p_0_in[19]));
  FDCE \share2_reg_reg[116] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[116]_i_1_n_0 ),
        .Q(p_0_in[20]));
  FDCE \share2_reg_reg[117] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[117]_i_1_n_0 ),
        .Q(p_0_in[21]));
  FDCE \share2_reg_reg[118] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[118]_i_1_n_0 ),
        .Q(p_0_in[22]));
  FDCE \share2_reg_reg[119] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[119]_i_1_n_0 ),
        .Q(p_0_in[23]));
  FDCE \share2_reg_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[11]_i_1_n_0 ),
        .Q(p_0_in[43]));
  FDCE \share2_reg_reg[120] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[120]_i_1_n_0 ),
        .Q(p_0_in[24]));
  FDCE \share2_reg_reg[121] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[121]_i_1_n_0 ),
        .Q(p_0_in[25]));
  FDCE \share2_reg_reg[122] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[122]_i_1_n_0 ),
        .Q(p_0_in[26]));
  FDCE \share2_reg_reg[123] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[123]_i_1_n_0 ),
        .Q(p_0_in[27]));
  FDCE \share2_reg_reg[124] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[124]_i_1_n_0 ),
        .Q(p_0_in[28]));
  FDCE \share2_reg_reg[125] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[125]_i_1_n_0 ),
        .Q(p_0_in[29]));
  FDCE \share2_reg_reg[126] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[126]_i_1_n_0 ),
        .Q(p_0_in[30]));
  FDCE \share2_reg_reg[127] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[127]_i_2_n_0 ),
        .Q(p_0_in[31]));
  FDCE \share2_reg_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[12]_i_1_n_0 ),
        .Q(p_0_in[44]));
  FDCE \share2_reg_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[13]_i_1_n_0 ),
        .Q(p_0_in[45]));
  FDCE \share2_reg_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[14]_i_1_n_0 ),
        .Q(p_0_in[46]));
  FDCE \share2_reg_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[15]_i_1_n_0 ),
        .Q(p_0_in[47]));
  FDCE \share2_reg_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[16]_i_1_n_0 ),
        .Q(p_0_in[48]));
  FDCE \share2_reg_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[17]_i_1_n_0 ),
        .Q(p_0_in[49]));
  FDCE \share2_reg_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[18]_i_1_n_0 ),
        .Q(p_0_in[50]));
  FDCE \share2_reg_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[19]_i_1_n_0 ),
        .Q(p_0_in[51]));
  FDCE \share2_reg_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[1]_i_1_n_0 ),
        .Q(p_0_in[33]));
  FDCE \share2_reg_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[20]_i_1_n_0 ),
        .Q(p_0_in[52]));
  FDCE \share2_reg_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[21]_i_1_n_0 ),
        .Q(p_0_in[53]));
  FDCE \share2_reg_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[22]_i_1_n_0 ),
        .Q(p_0_in[54]));
  FDCE \share2_reg_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[23]_i_1_n_0 ),
        .Q(p_0_in[55]));
  FDCE \share2_reg_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[24]_i_1_n_0 ),
        .Q(p_0_in[56]));
  FDCE \share2_reg_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[25]_i_1_n_0 ),
        .Q(p_0_in[57]));
  FDCE \share2_reg_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[26]_i_1_n_0 ),
        .Q(p_0_in[58]));
  FDCE \share2_reg_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[27]_i_1_n_0 ),
        .Q(p_0_in[59]));
  FDCE \share2_reg_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[28]_i_1_n_0 ),
        .Q(p_0_in[60]));
  FDCE \share2_reg_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[29]_i_1_n_0 ),
        .Q(p_0_in[61]));
  FDCE \share2_reg_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[2]_i_1_n_0 ),
        .Q(p_0_in[34]));
  FDCE \share2_reg_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[30]_i_1_n_0 ),
        .Q(p_0_in[62]));
  FDCE \share2_reg_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[31]_i_1_n_0 ),
        .Q(p_0_in[63]));
  FDCE \share2_reg_reg[32] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[32]_i_1_n_0 ),
        .Q(p_0_in[64]));
  FDCE \share2_reg_reg[33] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[33]_i_1_n_0 ),
        .Q(p_0_in[65]));
  FDCE \share2_reg_reg[34] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[34]_i_1_n_0 ),
        .Q(p_0_in[66]));
  FDCE \share2_reg_reg[35] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[35]_i_1_n_0 ),
        .Q(p_0_in[67]));
  FDCE \share2_reg_reg[36] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[36]_i_1_n_0 ),
        .Q(p_0_in[68]));
  FDCE \share2_reg_reg[37] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[37]_i_1_n_0 ),
        .Q(p_0_in[69]));
  FDCE \share2_reg_reg[38] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[38]_i_1_n_0 ),
        .Q(p_0_in[70]));
  FDCE \share2_reg_reg[39] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[39]_i_1_n_0 ),
        .Q(p_0_in[71]));
  FDCE \share2_reg_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[3]_i_1_n_0 ),
        .Q(p_0_in[35]));
  FDCE \share2_reg_reg[40] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[40]_i_1_n_0 ),
        .Q(p_0_in[72]));
  FDCE \share2_reg_reg[41] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[41]_i_1_n_0 ),
        .Q(p_0_in[73]));
  FDCE \share2_reg_reg[42] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[42]_i_1_n_0 ),
        .Q(p_0_in[74]));
  FDCE \share2_reg_reg[43] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[43]_i_1_n_0 ),
        .Q(p_0_in[75]));
  FDCE \share2_reg_reg[44] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[44]_i_1_n_0 ),
        .Q(p_0_in[76]));
  FDCE \share2_reg_reg[45] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[45]_i_1_n_0 ),
        .Q(p_0_in[77]));
  FDCE \share2_reg_reg[46] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[46]_i_1_n_0 ),
        .Q(p_0_in[78]));
  FDCE \share2_reg_reg[47] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[47]_i_1_n_0 ),
        .Q(p_0_in[79]));
  FDCE \share2_reg_reg[48] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[48]_i_1_n_0 ),
        .Q(p_0_in[80]));
  FDCE \share2_reg_reg[49] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[49]_i_1_n_0 ),
        .Q(p_0_in[81]));
  FDCE \share2_reg_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[4]_i_1_n_0 ),
        .Q(p_0_in[36]));
  FDCE \share2_reg_reg[50] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[50]_i_1_n_0 ),
        .Q(p_0_in[82]));
  FDCE \share2_reg_reg[51] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[51]_i_1_n_0 ),
        .Q(p_0_in[83]));
  FDCE \share2_reg_reg[52] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[52]_i_1_n_0 ),
        .Q(p_0_in[84]));
  FDCE \share2_reg_reg[53] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[53]_i_1_n_0 ),
        .Q(p_0_in[85]));
  FDCE \share2_reg_reg[54] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[54]_i_1_n_0 ),
        .Q(p_0_in[86]));
  FDCE \share2_reg_reg[55] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[55]_i_1_n_0 ),
        .Q(p_0_in[87]));
  FDCE \share2_reg_reg[56] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[56]_i_1_n_0 ),
        .Q(p_0_in[88]));
  FDCE \share2_reg_reg[57] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[57]_i_1_n_0 ),
        .Q(p_0_in[89]));
  FDCE \share2_reg_reg[58] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[58]_i_1_n_0 ),
        .Q(p_0_in[90]));
  FDCE \share2_reg_reg[59] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[59]_i_1_n_0 ),
        .Q(p_0_in[91]));
  FDCE \share2_reg_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[5]_i_1_n_0 ),
        .Q(p_0_in[37]));
  FDCE \share2_reg_reg[60] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[60]_i_1_n_0 ),
        .Q(p_0_in[92]));
  FDCE \share2_reg_reg[61] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[61]_i_1_n_0 ),
        .Q(p_0_in[93]));
  FDCE \share2_reg_reg[62] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[62]_i_1_n_0 ),
        .Q(p_0_in[94]));
  FDCE \share2_reg_reg[63] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[63]_i_1_n_0 ),
        .Q(p_0_in[95]));
  FDCE \share2_reg_reg[64] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[64]_i_1_n_0 ),
        .Q(p_0_in[96]));
  FDCE \share2_reg_reg[65] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[65]_i_1_n_0 ),
        .Q(p_0_in[97]));
  FDCE \share2_reg_reg[66] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[66]_i_1_n_0 ),
        .Q(p_0_in[98]));
  FDCE \share2_reg_reg[67] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[67]_i_1_n_0 ),
        .Q(p_0_in[99]));
  FDCE \share2_reg_reg[68] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[68]_i_1_n_0 ),
        .Q(p_0_in[100]));
  FDCE \share2_reg_reg[69] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[69]_i_1_n_0 ),
        .Q(p_0_in[101]));
  FDCE \share2_reg_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[6]_i_1_n_0 ),
        .Q(p_0_in[38]));
  FDCE \share2_reg_reg[70] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[70]_i_1_n_0 ),
        .Q(p_0_in[102]));
  FDCE \share2_reg_reg[71] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[71]_i_1_n_0 ),
        .Q(p_0_in[103]));
  FDCE \share2_reg_reg[72] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[72]_i_1_n_0 ),
        .Q(p_0_in[104]));
  FDCE \share2_reg_reg[73] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[73]_i_1_n_0 ),
        .Q(p_0_in[105]));
  FDCE \share2_reg_reg[74] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[74]_i_1_n_0 ),
        .Q(p_0_in[106]));
  FDCE \share2_reg_reg[75] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[75]_i_1_n_0 ),
        .Q(p_0_in[107]));
  FDCE \share2_reg_reg[76] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[76]_i_1_n_0 ),
        .Q(p_0_in[108]));
  FDCE \share2_reg_reg[77] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[77]_i_1_n_0 ),
        .Q(p_0_in[109]));
  FDCE \share2_reg_reg[78] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[78]_i_1_n_0 ),
        .Q(p_0_in[110]));
  FDCE \share2_reg_reg[79] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[79]_i_1_n_0 ),
        .Q(p_0_in[111]));
  FDCE \share2_reg_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[7]_i_1_n_0 ),
        .Q(p_0_in[39]));
  FDCE \share2_reg_reg[80] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[80]_i_1_n_0 ),
        .Q(p_0_in[112]));
  FDCE \share2_reg_reg[81] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[81]_i_1_n_0 ),
        .Q(p_0_in[113]));
  FDCE \share2_reg_reg[82] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[82]_i_1_n_0 ),
        .Q(p_0_in[114]));
  FDCE \share2_reg_reg[83] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[83]_i_1_n_0 ),
        .Q(p_0_in[115]));
  FDCE \share2_reg_reg[84] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[84]_i_1_n_0 ),
        .Q(p_0_in[116]));
  FDCE \share2_reg_reg[85] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[85]_i_1_n_0 ),
        .Q(p_0_in[117]));
  FDCE \share2_reg_reg[86] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[86]_i_1_n_0 ),
        .Q(p_0_in[118]));
  FDCE \share2_reg_reg[87] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[87]_i_1_n_0 ),
        .Q(p_0_in[119]));
  FDCE \share2_reg_reg[88] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[88]_i_1_n_0 ),
        .Q(p_0_in[120]));
  FDCE \share2_reg_reg[89] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[89]_i_1_n_0 ),
        .Q(p_0_in[121]));
  FDCE \share2_reg_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[8]_i_1_n_0 ),
        .Q(p_0_in[40]));
  FDCE \share2_reg_reg[90] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[90]_i_1_n_0 ),
        .Q(p_0_in[122]));
  FDCE \share2_reg_reg[91] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[91]_i_1_n_0 ),
        .Q(p_0_in[123]));
  FDCE \share2_reg_reg[92] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[92]_i_1_n_0 ),
        .Q(p_0_in[124]));
  FDCE \share2_reg_reg[93] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[93]_i_1_n_0 ),
        .Q(p_0_in[125]));
  FDCE \share2_reg_reg[94] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[94]_i_1_n_0 ),
        .Q(p_0_in[126]));
  FDCE \share2_reg_reg[95] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[95]_i_1_n_0 ),
        .Q(p_0_in[127]));
  FDCE \share2_reg_reg[96] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[96]_i_1_n_0 ),
        .Q(p_0_in[0]));
  FDCE \share2_reg_reg[97] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[97]_i_1_n_0 ),
        .Q(p_0_in[1]));
  FDCE \share2_reg_reg[98] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[98]_i_1_n_0 ),
        .Q(p_0_in[2]));
  FDCE \share2_reg_reg[99] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[99]_i_1_n_0 ),
        .Q(p_0_in[3]));
  FDCE \share2_reg_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(\share2_reg[127]_i_1_n_0 ),
        .CLR(\FSM_onehot_current_state[2]_i_3_n_0 ),
        .D(\share2_reg[9]_i_1_n_0 ),
        .Q(p_0_in[41]));
  IBUF start_IBUF_inst
       (.I(start),
        .O(start_IBUF));
  key_expansion u_key_expansion
       (.D({u_key_expansion_n_0,u_key_expansion_n_1,u_key_expansion_n_2,u_key_expansion_n_3,u_key_expansion_n_4,u_key_expansion_n_5,u_key_expansion_n_6,u_key_expansion_n_7,u_key_expansion_n_8,u_key_expansion_n_9,u_key_expansion_n_10,u_key_expansion_n_11,u_key_expansion_n_12,u_key_expansion_n_13,u_key_expansion_n_14,u_key_expansion_n_15,u_key_expansion_n_16,u_key_expansion_n_17,u_key_expansion_n_18,u_key_expansion_n_19,u_key_expansion_n_20,u_key_expansion_n_21,u_key_expansion_n_22,u_key_expansion_n_23,u_key_expansion_n_24,u_key_expansion_n_25,u_key_expansion_n_26,u_key_expansion_n_27,u_key_expansion_n_28,u_key_expansion_n_29,u_key_expansion_n_30,u_key_expansion_n_31,u_key_expansion_n_32,u_key_expansion_n_33,u_key_expansion_n_34,u_key_expansion_n_35,u_key_expansion_n_36,u_key_expansion_n_37,u_key_expansion_n_38,u_key_expansion_n_39,u_key_expansion_n_40,u_key_expansion_n_41,u_key_expansion_n_42,u_key_expansion_n_43,u_key_expansion_n_44,u_key_expansion_n_45,u_key_expansion_n_46,u_key_expansion_n_47,u_key_expansion_n_48,u_key_expansion_n_49,u_key_expansion_n_50,u_key_expansion_n_51,u_key_expansion_n_52,u_key_expansion_n_53,u_key_expansion_n_54,u_key_expansion_n_55,u_key_expansion_n_56,u_key_expansion_n_57,u_key_expansion_n_58,u_key_expansion_n_59,u_key_expansion_n_60,u_key_expansion_n_61,u_key_expansion_n_62,u_key_expansion_n_63,u_key_expansion_n_64,u_key_expansion_n_65,u_key_expansion_n_66,u_key_expansion_n_67,u_key_expansion_n_68,u_key_expansion_n_69,u_key_expansion_n_70,u_key_expansion_n_71,u_key_expansion_n_72,u_key_expansion_n_73,u_key_expansion_n_74,u_key_expansion_n_75,u_key_expansion_n_76,u_key_expansion_n_77,u_key_expansion_n_78,u_key_expansion_n_79,u_key_expansion_n_80,u_key_expansion_n_81,u_key_expansion_n_82,u_key_expansion_n_83,u_key_expansion_n_84,u_key_expansion_n_85,u_key_expansion_n_86,u_key_expansion_n_87,u_key_expansion_n_88,u_key_expansion_n_89,u_key_expansion_n_90,u_key_expansion_n_91,u_key_expansion_n_92,u_key_expansion_n_93,u_key_expansion_n_94,u_key_expansion_n_95,u_key_expansion_n_96,u_key_expansion_n_97,u_key_expansion_n_98,u_key_expansion_n_99,u_key_expansion_n_100,u_key_expansion_n_101,u_key_expansion_n_102,u_key_expansion_n_103,u_key_expansion_n_104,u_key_expansion_n_105,u_key_expansion_n_106,u_key_expansion_n_107,u_key_expansion_n_108,u_key_expansion_n_109,u_key_expansion_n_110,u_key_expansion_n_111,u_key_expansion_n_112,u_key_expansion_n_113,u_key_expansion_n_114,u_key_expansion_n_115,u_key_expansion_n_116,u_key_expansion_n_117,u_key_expansion_n_118,u_key_expansion_n_119,u_key_expansion_n_120,u_key_expansion_n_121,u_key_expansion_n_122,u_key_expansion_n_123,u_key_expansion_n_124,u_key_expansion_n_125,u_key_expansion_n_126,u_key_expansion_n_127}),
        .\FSM_onehot_current_state_reg[0] ({u_key_expansion_n_218,u_key_expansion_n_219,u_key_expansion_n_220,u_key_expansion_n_221,u_key_expansion_n_222,u_key_expansion_n_223,u_key_expansion_n_224,u_key_expansion_n_225,u_key_expansion_n_226,u_key_expansion_n_227,u_key_expansion_n_228,u_key_expansion_n_229,u_key_expansion_n_230,u_key_expansion_n_231,u_key_expansion_n_232,u_key_expansion_n_233,u_key_expansion_n_234,u_key_expansion_n_235,u_key_expansion_n_236,u_key_expansion_n_237,u_key_expansion_n_238,u_key_expansion_n_239,u_key_expansion_n_240,u_key_expansion_n_241,u_key_expansion_n_242,u_key_expansion_n_243,u_key_expansion_n_244,u_key_expansion_n_245,u_key_expansion_n_246,u_key_expansion_n_247,u_key_expansion_n_248,u_key_expansion_n_249,u_key_expansion_n_250,u_key_expansion_n_251}),
        .Q(current_state),
        .key_IBUF(key_IBUF),
        .\key_reg_reg[127] ({p_0_in_0[31:21],p_0_in_0[18],p_0_in_0[16:8]}),
        .\key_reg_reg[5] (\FSM_onehot_current_state_reg[1]_rep__1_n_0 ),
        .\key_reg_reg[63] ({\key_reg_reg_n_0_[127] ,\key_reg_reg_n_0_[126] ,\key_reg_reg_n_0_[125] ,\key_reg_reg_n_0_[124] ,\key_reg_reg_n_0_[123] ,\key_reg_reg_n_0_[122] ,\key_reg_reg_n_0_[121] ,\key_reg_reg_n_0_[120] ,\key_reg_reg_n_0_[119] ,\key_reg_reg_n_0_[118] ,\key_reg_reg_n_0_[117] ,\key_reg_reg_n_0_[116] ,\key_reg_reg_n_0_[115] ,\key_reg_reg_n_0_[114] ,\key_reg_reg_n_0_[113] ,\key_reg_reg_n_0_[112] ,\key_reg_reg_n_0_[111] ,\key_reg_reg_n_0_[110] ,\key_reg_reg_n_0_[109] ,\key_reg_reg_n_0_[108] ,\key_reg_reg_n_0_[107] ,\key_reg_reg_n_0_[106] ,\key_reg_reg_n_0_[105] ,\key_reg_reg_n_0_[104] ,\key_reg_reg_n_0_[103] ,\key_reg_reg_n_0_[102] ,\key_reg_reg_n_0_[101] ,\key_reg_reg_n_0_[100] ,\key_reg_reg_n_0_[99] ,\key_reg_reg_n_0_[98] ,\key_reg_reg_n_0_[97] ,\key_reg_reg_n_0_[96] ,\key_reg_reg_n_0_[95] ,\key_reg_reg_n_0_[94] ,\key_reg_reg_n_0_[93] ,\key_reg_reg_n_0_[92] ,\key_reg_reg_n_0_[91] ,\key_reg_reg_n_0_[90] ,\key_reg_reg_n_0_[89] ,\key_reg_reg_n_0_[88] ,\key_reg_reg_n_0_[87] ,\key_reg_reg_n_0_[86] ,\key_reg_reg_n_0_[85] ,\key_reg_reg_n_0_[84] ,\key_reg_reg_n_0_[83] ,\key_reg_reg_n_0_[82] ,\key_reg_reg_n_0_[81] ,\key_reg_reg_n_0_[80] ,\key_reg_reg_n_0_[79] ,\key_reg_reg_n_0_[78] ,\key_reg_reg_n_0_[77] ,\key_reg_reg_n_0_[76] ,\key_reg_reg_n_0_[75] ,\key_reg_reg_n_0_[74] ,\key_reg_reg_n_0_[73] ,\key_reg_reg_n_0_[72] ,\key_reg_reg_n_0_[71] ,\key_reg_reg_n_0_[70] ,\key_reg_reg_n_0_[69] ,\key_reg_reg_n_0_[68] ,\key_reg_reg_n_0_[67] ,\key_reg_reg_n_0_[66] ,\key_reg_reg_n_0_[65] ,\key_reg_reg_n_0_[64] ,\key_reg_reg_n_0_[63] ,\key_reg_reg_n_0_[62] ,\key_reg_reg_n_0_[61] ,\key_reg_reg_n_0_[60] ,\key_reg_reg_n_0_[59] ,\key_reg_reg_n_0_[58] ,\key_reg_reg_n_0_[57] ,\key_reg_reg_n_0_[56] ,\key_reg_reg_n_0_[55] ,\key_reg_reg_n_0_[54] ,\key_reg_reg_n_0_[53] ,\key_reg_reg_n_0_[52] ,\key_reg_reg_n_0_[51] ,\key_reg_reg_n_0_[50] ,\key_reg_reg_n_0_[49] ,\key_reg_reg_n_0_[48] ,\key_reg_reg_n_0_[47] ,\key_reg_reg_n_0_[46] ,\key_reg_reg_n_0_[45] ,\key_reg_reg_n_0_[44] ,\key_reg_reg_n_0_[43] ,\key_reg_reg_n_0_[42] ,\key_reg_reg_n_0_[41] ,\key_reg_reg_n_0_[40] ,\key_reg_reg_n_0_[39] ,\key_reg_reg_n_0_[38] ,\key_reg_reg_n_0_[37] ,\key_reg_reg_n_0_[36] ,\key_reg_reg_n_0_[35] ,\key_reg_reg_n_0_[34] ,\key_reg_reg_n_0_[33] ,\key_reg_reg_n_0_[32] ,\key_reg_reg_n_0_[31] ,\key_reg_reg_n_0_[30] ,\key_reg_reg_n_0_[29] ,\key_reg_reg_n_0_[28] ,\key_reg_reg_n_0_[27] ,\key_reg_reg_n_0_[26] ,\key_reg_reg_n_0_[25] ,\key_reg_reg_n_0_[24] ,\key_reg_reg_n_0_[23] ,\key_reg_reg_n_0_[22] ,\key_reg_reg_n_0_[21] ,\key_reg_reg_n_0_[20] ,\key_reg_reg_n_0_[19] ,\key_reg_reg_n_0_[18] ,\key_reg_reg_n_0_[17] ,\key_reg_reg_n_0_[16] ,\key_reg_reg_n_0_[15] ,\key_reg_reg_n_0_[14] ,\key_reg_reg_n_0_[13] ,\key_reg_reg_n_0_[12] ,\key_reg_reg_n_0_[11] ,\key_reg_reg_n_0_[10] ,\key_reg_reg_n_0_[9] ,\key_reg_reg_n_0_[8] ,\key_reg_reg_n_0_[7] ,\key_reg_reg_n_0_[6] ,\key_reg_reg_n_0_[5] ,\key_reg_reg_n_0_[4] ,\key_reg_reg_n_0_[3] ,\key_reg_reg_n_0_[2] ,\key_reg_reg_n_0_[1] ,\key_reg_reg_n_0_[0] }),
        .\key_reg_reg[63]_0 ({\round_ctr_reg_n_0_[3] ,\round_ctr_reg_n_0_[2] ,\round_ctr_reg_n_0_[1] ,\round_ctr_reg_n_0_[0] }),
        .\key_reg_reg[7] (\FSM_onehot_current_state_reg[1]_rep__0_n_0 ),
        .mask_in_IBUF({mask_in_IBUF[116:115],mask_in_IBUF[113],mask_in_IBUF[103:96],mask_in_IBUF[89:88],mask_in_IBUF[84:83],mask_in_IBUF[71:65],mask_in_IBUF[52:51],mask_in_IBUF[49],mask_in_IBUF[44:43],mask_in_IBUF[41],mask_in_IBUF[20:19],mask_in_IBUF[17],mask_in_IBUF[12:11],mask_in_IBUF[9]}),
        .plaintext_IBUF({plaintext_IBUF[116:115],plaintext_IBUF[113],plaintext_IBUF[103:96],plaintext_IBUF[89:88],plaintext_IBUF[84:83],plaintext_IBUF[71:65],plaintext_IBUF[52:51],plaintext_IBUF[49],plaintext_IBUF[44:43],plaintext_IBUF[41],plaintext_IBUF[20:19],plaintext_IBUF[17],plaintext_IBUF[12:11],plaintext_IBUF[9]}),
        .post_linear_share1({post_linear_share1[116:115],post_linear_share1[113],post_linear_share1[103:96],post_linear_share1[89:88],post_linear_share1[84:83],post_linear_share1[71:65],post_linear_share1[52:51],post_linear_share1[49],post_linear_share1[44:43],post_linear_share1[41],post_linear_share1[20:19],post_linear_share1[17],post_linear_share1[12:11],post_linear_share1[9]}),
        .\round_ctr_reg[2] ({next_round_key[95:90],next_round_key[88:85],next_round_key[82:72],next_round_key[64:61],next_round_key[57],next_round_key[55:53],next_round_key[50],next_round_key[48:45],next_round_key[42],next_round_key[40:25],next_round_key[23:21],next_round_key[18],next_round_key[16:13],next_round_key[10],next_round_key[8:0]}),
        .\share1_reg_reg[102] (\FSM_onehot_current_state_reg[1]_rep_n_0 ));
  masked_sub_bytes u_masked_sub_bytes
       (.D({u_masked_sub_bytes_n_164,u_masked_sub_bytes_n_165,u_masked_sub_bytes_n_166,u_masked_sub_bytes_n_167,u_masked_sub_bytes_n_168,u_masked_sub_bytes_n_169,u_masked_sub_bytes_n_170,u_masked_sub_bytes_n_171,u_masked_sub_bytes_n_172,u_masked_sub_bytes_n_173,u_masked_sub_bytes_n_174,u_masked_sub_bytes_n_175,u_masked_sub_bytes_n_176,u_masked_sub_bytes_n_177,u_masked_sub_bytes_n_178,u_masked_sub_bytes_n_179,u_masked_sub_bytes_n_180,u_masked_sub_bytes_n_181,u_masked_sub_bytes_n_182,u_masked_sub_bytes_n_183,u_masked_sub_bytes_n_184,u_masked_sub_bytes_n_185,u_masked_sub_bytes_n_186,u_masked_sub_bytes_n_187,u_masked_sub_bytes_n_188,u_masked_sub_bytes_n_189,u_masked_sub_bytes_n_190,u_masked_sub_bytes_n_191,u_masked_sub_bytes_n_192,u_masked_sub_bytes_n_193,u_masked_sub_bytes_n_194,u_masked_sub_bytes_n_195,u_masked_sub_bytes_n_196,u_masked_sub_bytes_n_197,u_masked_sub_bytes_n_198,u_masked_sub_bytes_n_199,u_masked_sub_bytes_n_200,u_masked_sub_bytes_n_201,u_masked_sub_bytes_n_202,u_masked_sub_bytes_n_203,u_masked_sub_bytes_n_204,u_masked_sub_bytes_n_205,u_masked_sub_bytes_n_206,u_masked_sub_bytes_n_207,u_masked_sub_bytes_n_208,u_masked_sub_bytes_n_209,u_masked_sub_bytes_n_210,u_masked_sub_bytes_n_211,u_masked_sub_bytes_n_212,u_masked_sub_bytes_n_213,u_masked_sub_bytes_n_214,u_masked_sub_bytes_n_215,u_masked_sub_bytes_n_216,u_masked_sub_bytes_n_217,u_masked_sub_bytes_n_218,u_masked_sub_bytes_n_219,u_masked_sub_bytes_n_220,u_masked_sub_bytes_n_221,u_masked_sub_bytes_n_222,u_masked_sub_bytes_n_223,u_masked_sub_bytes_n_224,u_masked_sub_bytes_n_225,u_masked_sub_bytes_n_226,u_masked_sub_bytes_n_227,u_masked_sub_bytes_n_228,u_masked_sub_bytes_n_229,u_masked_sub_bytes_n_230,u_masked_sub_bytes_n_231,u_masked_sub_bytes_n_232,u_masked_sub_bytes_n_233,u_masked_sub_bytes_n_234,u_masked_sub_bytes_n_235,u_masked_sub_bytes_n_236,u_masked_sub_bytes_n_237,u_masked_sub_bytes_n_238,u_masked_sub_bytes_n_239,u_masked_sub_bytes_n_240,u_masked_sub_bytes_n_241,u_masked_sub_bytes_n_242,u_masked_sub_bytes_n_243,u_masked_sub_bytes_n_244,u_masked_sub_bytes_n_245,u_masked_sub_bytes_n_246,u_masked_sub_bytes_n_247,u_masked_sub_bytes_n_248,u_masked_sub_bytes_n_249,u_masked_sub_bytes_n_250,u_masked_sub_bytes_n_251,u_masked_sub_bytes_n_252,u_masked_sub_bytes_n_253,u_masked_sub_bytes_n_254,u_masked_sub_bytes_n_255,u_masked_sub_bytes_n_256,u_masked_sub_bytes_n_257}),
        .Q({p_0_in[31:0],p_0_in[127:32]}),
        .ciphertext0(ciphertext0),
        .\ciphertext_reg[127] ({\share1_reg_reg_n_0_[127] ,\share1_reg_reg_n_0_[126] ,\share1_reg_reg_n_0_[125] ,\share1_reg_reg_n_0_[124] ,\share1_reg_reg_n_0_[123] ,\share1_reg_reg_n_0_[122] ,\share1_reg_reg_n_0_[121] ,\share1_reg_reg_n_0_[120] ,\share1_reg_reg_n_0_[119] ,\share1_reg_reg_n_0_[118] ,\share1_reg_reg_n_0_[117] ,\share1_reg_reg_n_0_[116] ,\share1_reg_reg_n_0_[115] ,\share1_reg_reg_n_0_[114] ,\share1_reg_reg_n_0_[113] ,\share1_reg_reg_n_0_[112] ,\share1_reg_reg_n_0_[111] ,\share1_reg_reg_n_0_[110] ,\share1_reg_reg_n_0_[109] ,\share1_reg_reg_n_0_[108] ,\share1_reg_reg_n_0_[107] ,\share1_reg_reg_n_0_[106] ,\share1_reg_reg_n_0_[105] ,\share1_reg_reg_n_0_[104] ,\share1_reg_reg_n_0_[103] ,\share1_reg_reg_n_0_[102] ,\share1_reg_reg_n_0_[101] ,\share1_reg_reg_n_0_[100] ,\share1_reg_reg_n_0_[99] ,\share1_reg_reg_n_0_[98] ,\share1_reg_reg_n_0_[97] ,\share1_reg_reg_n_0_[96] ,\share1_reg_reg_n_0_[95] ,\share1_reg_reg_n_0_[94] ,\share1_reg_reg_n_0_[93] ,\share1_reg_reg_n_0_[92] ,\share1_reg_reg_n_0_[91] ,\share1_reg_reg_n_0_[90] ,\share1_reg_reg_n_0_[89] ,\share1_reg_reg_n_0_[88] ,\share1_reg_reg_n_0_[87] ,\share1_reg_reg_n_0_[86] ,\share1_reg_reg_n_0_[85] ,\share1_reg_reg_n_0_[84] ,\share1_reg_reg_n_0_[83] ,\share1_reg_reg_n_0_[82] ,\share1_reg_reg_n_0_[81] ,\share1_reg_reg_n_0_[80] ,\share1_reg_reg_n_0_[79] ,\share1_reg_reg_n_0_[78] ,\share1_reg_reg_n_0_[77] ,\share1_reg_reg_n_0_[76] ,\share1_reg_reg_n_0_[75] ,\share1_reg_reg_n_0_[74] ,\share1_reg_reg_n_0_[73] ,\share1_reg_reg_n_0_[72] ,\share1_reg_reg_n_0_[71] ,\share1_reg_reg_n_0_[70] ,\share1_reg_reg_n_0_[69] ,\share1_reg_reg_n_0_[68] ,\share1_reg_reg_n_0_[67] ,\share1_reg_reg_n_0_[66] ,\share1_reg_reg_n_0_[65] ,\share1_reg_reg_n_0_[64] ,\share1_reg_reg_n_0_[63] ,\share1_reg_reg_n_0_[62] ,\share1_reg_reg_n_0_[61] ,\share1_reg_reg_n_0_[60] ,\share1_reg_reg_n_0_[59] ,\share1_reg_reg_n_0_[58] ,\share1_reg_reg_n_0_[57] ,\share1_reg_reg_n_0_[56] ,\share1_reg_reg_n_0_[55] ,\share1_reg_reg_n_0_[54] ,\share1_reg_reg_n_0_[53] ,\share1_reg_reg_n_0_[52] ,\share1_reg_reg_n_0_[51] ,\share1_reg_reg_n_0_[50] ,\share1_reg_reg_n_0_[49] ,\share1_reg_reg_n_0_[48] ,\share1_reg_reg_n_0_[47] ,\share1_reg_reg_n_0_[46] ,\share1_reg_reg_n_0_[45] ,\share1_reg_reg_n_0_[44] ,\share1_reg_reg_n_0_[43] ,\share1_reg_reg_n_0_[42] ,\share1_reg_reg_n_0_[41] ,\share1_reg_reg_n_0_[40] ,\share1_reg_reg_n_0_[39] ,\share1_reg_reg_n_0_[38] ,\share1_reg_reg_n_0_[37] ,\share1_reg_reg_n_0_[36] ,\share1_reg_reg_n_0_[35] ,\share1_reg_reg_n_0_[34] ,\share1_reg_reg_n_0_[33] ,\share1_reg_reg_n_0_[32] ,\share1_reg_reg_n_0_[31] ,\share1_reg_reg_n_0_[30] ,\share1_reg_reg_n_0_[29] ,\share1_reg_reg_n_0_[28] ,\share1_reg_reg_n_0_[27] ,\share1_reg_reg_n_0_[26] ,\share1_reg_reg_n_0_[25] ,\share1_reg_reg_n_0_[24] ,\share1_reg_reg_n_0_[23] ,\share1_reg_reg_n_0_[22] ,\share1_reg_reg_n_0_[21] ,\share1_reg_reg_n_0_[20] ,\share1_reg_reg_n_0_[19] ,\share1_reg_reg_n_0_[18] ,\share1_reg_reg_n_0_[17] ,\share1_reg_reg_n_0_[16] ,\share1_reg_reg_n_0_[15] ,\share1_reg_reg_n_0_[14] ,\share1_reg_reg_n_0_[13] ,\share1_reg_reg_n_0_[12] ,\share1_reg_reg_n_0_[11] ,\share1_reg_reg_n_0_[10] ,\share1_reg_reg_n_0_[9] ,\share1_reg_reg_n_0_[8] ,\share1_reg_reg_n_0_[7] ,\share1_reg_reg_n_0_[6] ,\share1_reg_reg_n_0_[5] ,\share1_reg_reg_n_0_[4] ,\share1_reg_reg_n_0_[3] ,\share1_reg_reg_n_0_[2] ,\share1_reg_reg_n_0_[1] ,\share1_reg_reg_n_0_[0] }),
        .key_IBUF({key_IBUF[127:117],key_IBUF[114],key_IBUF[112:104],key_IBUF[95:90],key_IBUF[87:85],key_IBUF[82:72],key_IBUF[64:53],key_IBUF[50],key_IBUF[48:45],key_IBUF[42],key_IBUF[40:21],key_IBUF[18],key_IBUF[16:13],key_IBUF[10],key_IBUF[8:0]}),
        .mask_in_IBUF({mask_in_IBUF[127:117],mask_in_IBUF[114],mask_in_IBUF[112:104],mask_in_IBUF[95:90],mask_in_IBUF[87:85],mask_in_IBUF[82:72],mask_in_IBUF[64:53],mask_in_IBUF[50],mask_in_IBUF[48:45],mask_in_IBUF[42],mask_in_IBUF[40:21],mask_in_IBUF[18],mask_in_IBUF[16:13],mask_in_IBUF[10],mask_in_IBUF[8:0]}),
        .plaintext_IBUF({plaintext_IBUF[127:117],plaintext_IBUF[114],plaintext_IBUF[112:104],plaintext_IBUF[95:90],plaintext_IBUF[87:85],plaintext_IBUF[82:72],plaintext_IBUF[64:53],plaintext_IBUF[50],plaintext_IBUF[48:45],plaintext_IBUF[42],plaintext_IBUF[40:21],plaintext_IBUF[18],plaintext_IBUF[16:13],plaintext_IBUF[10],plaintext_IBUF[8:0]}),
        .post_linear_share1({post_linear_share1[116:115],post_linear_share1[113],post_linear_share1[103:96],post_linear_share1[89:88],post_linear_share1[84:83],post_linear_share1[71:65],post_linear_share1[52:51],post_linear_share1[49],post_linear_share1[44:43],post_linear_share1[41],post_linear_share1[20:19],post_linear_share1[17],post_linear_share1[12:11],post_linear_share1[9]}),
        .\round_ctr_reg[2] (u_masked_sub_bytes_n_34),
        .\round_ctr_reg[2]_0 (u_masked_sub_bytes_n_163),
        .\share1_reg_reg[127] ({p_0_in_0[31:21],p_0_in_0[18],p_0_in_0[16:8]}),
        .\share1_reg_reg[60] ({\key_reg_reg_n_0_[60] ,\key_reg_reg_n_0_[59] ,\key_reg_reg_n_0_[58] ,\key_reg_reg_n_0_[56] ,\key_reg_reg_n_0_[24] }),
        .\share1_reg_reg[81] (\FSM_onehot_current_state_reg[1]_rep__0_n_0 ),
        .\share1_reg_reg[85] (current_state),
        .\share1_reg_reg[87] (\FSM_onehot_current_state_reg[1]_rep_n_0 ),
        .\share1_reg_reg[95] ({next_round_key[95:90],next_round_key[88:85],next_round_key[82:72],next_round_key[64:61],next_round_key[57],next_round_key[55:53],next_round_key[50],next_round_key[48:45],next_round_key[42],next_round_key[40:25],next_round_key[23:21],next_round_key[18],next_round_key[16:13],next_round_key[10],next_round_key[8:0]}),
        .\share2_reg_reg[126] ({\round_ctr_reg_n_0_[3] ,\round_ctr_reg_n_0_[2] ,\round_ctr_reg_n_0_[1] ,\round_ctr_reg_n_0_[0] }));
endmodule

module key_expansion
   (D,
    \key_reg_reg[127] ,
    \round_ctr_reg[2] ,
    \FSM_onehot_current_state_reg[0] ,
    key_IBUF,
    Q,
    \key_reg_reg[63] ,
    \key_reg_reg[7] ,
    \key_reg_reg[5] ,
    \key_reg_reg[63]_0 ,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[102] ,
    post_linear_share1);
  output [127:0]D;
  output [20:0]\key_reg_reg[127] ;
  output [68:0]\round_ctr_reg[2] ;
  output [33:0]\FSM_onehot_current_state_reg[0] ;
  input [127:0]key_IBUF;
  input [1:0]Q;
  input [127:0]\key_reg_reg[63] ;
  input \key_reg_reg[7] ;
  input \key_reg_reg[5] ;
  input [3:0]\key_reg_reg[63]_0 ;
  input [33:0]plaintext_IBUF;
  input [33:0]mask_in_IBUF;
  input \share1_reg_reg[102] ;
  input [33:0]post_linear_share1;

  wire [127:0]D;
  wire [33:0]\FSM_onehot_current_state_reg[0] ;
  wire [1:0]Q;
  wire [127:0]key_IBUF;
  wire [20:0]\key_reg_reg[127] ;
  wire \key_reg_reg[5] ;
  wire [127:0]\key_reg_reg[63] ;
  wire [3:0]\key_reg_reg[63]_0 ;
  wire \key_reg_reg[7] ;
  wire [33:0]mask_in_IBUF;
  wire [33:0]plaintext_IBUF;
  wire [33:0]post_linear_share1;
  wire [68:0]\round_ctr_reg[2] ;
  wire \share1_reg_reg[102] ;

  sbox_30 sbox_k0
       (.D({D[127:120],D[95:88],D[63:56],D[31:24]}),
        .\FSM_onehot_current_state_reg[0] (\FSM_onehot_current_state_reg[0] [22:21]),
        .Q(Q[0]),
        .key_IBUF({key_IBUF[127:120],key_IBUF[95:88],key_IBUF[63:56],key_IBUF[31:24]}),
        .\key_reg_reg[127] (\key_reg_reg[127] [20:13]),
        .\key_reg_reg[28] (\key_reg_reg[5] ),
        .\key_reg_reg[63] ({\key_reg_reg[63] [127:120],\key_reg_reg[63] [95:88],\key_reg_reg[63] [63:56],\key_reg_reg[63] [31:16]}),
        .\key_reg_reg[63]_0 (\key_reg_reg[63]_0 ),
        .mask_in_IBUF(mask_in_IBUF[22:21]),
        .plaintext_IBUF(plaintext_IBUF[22:21]),
        .post_linear_share1(post_linear_share1[22:21]),
        .\round_ctr_reg[2] (\round_ctr_reg[2] [62]),
        .\round_ctr_reg[2]_0 ({\round_ctr_reg[2] [68:63],\round_ctr_reg[2] [46:43],\round_ctr_reg[2] [24:18]}),
        .\share1_reg_reg[88] (\share1_reg_reg[102] ),
        .\share1_reg_reg[89] (\key_reg_reg[7] ));
  sbox_31 sbox_k1
       (.D({D[119:112],D[87:80],D[55:48],D[23:16]}),
        .\FSM_onehot_current_state_reg[0] ({\FSM_onehot_current_state_reg[0] [33:31],\FSM_onehot_current_state_reg[0] [20:19],\FSM_onehot_current_state_reg[0] [11:9],\FSM_onehot_current_state_reg[0] [5:3]}),
        .Q(Q[0]),
        .key_IBUF({key_IBUF[119:112],key_IBUF[87:80],key_IBUF[55:48],key_IBUF[23:16]}),
        .\key_reg_reg[119] ({\round_ctr_reg[2] [61:56],\round_ctr_reg[2] [42:38],\round_ctr_reg[2] [17:13]}),
        .\key_reg_reg[15] (\key_reg_reg[127] [12:8]),
        .\key_reg_reg[22] (\key_reg_reg[5] ),
        .\key_reg_reg[87] ({\key_reg_reg[63] [119:112],\key_reg_reg[63] [87:80],\key_reg_reg[63] [55:48],\key_reg_reg[63] [23:8]}),
        .mask_in_IBUF({mask_in_IBUF[33:31],mask_in_IBUF[20:19],mask_in_IBUF[11:9],mask_in_IBUF[5:3]}),
        .plaintext_IBUF({plaintext_IBUF[33:31],plaintext_IBUF[20:19],plaintext_IBUF[11:9],plaintext_IBUF[5:3]}),
        .post_linear_share1({post_linear_share1[33:31],post_linear_share1[20:19],post_linear_share1[11:9],post_linear_share1[5:3]}),
        .\share1_reg_reg[20] (\key_reg_reg[7] ),
        .\share1_reg_reg[52] (\share1_reg_reg[102] ));
  sbox_32 sbox_k2
       (.D({D[111:104],D[79:72],D[47:40],D[15:8]}),
        .\FSM_onehot_current_state_reg[0] ({\FSM_onehot_current_state_reg[0] [8:6],\FSM_onehot_current_state_reg[0] [2:0]}),
        .Q(Q[0]),
        .key_IBUF({key_IBUF[111:104],key_IBUF[79:72],key_IBUF[47:40],key_IBUF[15:8]}),
        .\key_reg_reg[111] ({\round_ctr_reg[2] [55:48],\round_ctr_reg[2] [37:33],\round_ctr_reg[2] [12:8]}),
        .\key_reg_reg[13] (\key_reg_reg[5] ),
        .\key_reg_reg[47] (\key_reg_reg[7] ),
        .\key_reg_reg[79] ({\key_reg_reg[63] [111:104],\key_reg_reg[63] [79:72],\key_reg_reg[63] [47:40],\key_reg_reg[63] [15:0]}),
        .\key_reg_reg[7] (\key_reg_reg[127] [7:0]),
        .mask_in_IBUF({mask_in_IBUF[8:6],mask_in_IBUF[2:0]}),
        .plaintext_IBUF({plaintext_IBUF[8:6],plaintext_IBUF[2:0]}),
        .post_linear_share1({post_linear_share1[8:6],post_linear_share1[2:0]}));
  sbox_33 sbox_k3
       (.D({D[103:96],D[71:64],D[39:32],D[7:0]}),
        .\FSM_onehot_current_state_reg[0] ({\FSM_onehot_current_state_reg[0] [30:23],\FSM_onehot_current_state_reg[0] [18:12]}),
        .Q(Q),
        .key_IBUF({key_IBUF[103:96],key_IBUF[71:64],key_IBUF[39:32],key_IBUF[7:0]}),
        .\key_reg_reg[5] (\key_reg_reg[5] ),
        .\key_reg_reg[71] ({\key_reg_reg[63] [103:96],\key_reg_reg[63] [71:64],\key_reg_reg[63] [39:24],\key_reg_reg[63] [7:0]}),
        .\key_reg_reg[7] (\key_reg_reg[7] ),
        .\key_reg_reg[96] ({\round_ctr_reg[2] [47],\round_ctr_reg[2] [32:25],\round_ctr_reg[2] [7:0]}),
        .mask_in_IBUF({mask_in_IBUF[30:23],mask_in_IBUF[18:12]}),
        .plaintext_IBUF({plaintext_IBUF[30:23],plaintext_IBUF[18:12]}),
        .post_linear_share1({post_linear_share1[30:23],post_linear_share1[18:12]}),
        .\share1_reg_reg[102] (\share1_reg_reg[102] ));
endmodule

module masked_sbox
   (\share2_reg_reg[49] ,
    sub_bytes_share1,
    \share2_reg_reg[127] ,
    \share2_reg_reg[126] ,
    \share2_reg_reg[51] ,
    \share2_reg_reg[52] ,
    \share2_reg_reg[91] ,
    sel,
    D,
    \share2_reg_reg[89] ,
    \share2_reg_reg[92] ,
    \share2_reg_reg[94] ,
    \share1_reg[97]_i_3 ,
    Q,
    \share1_reg[99]_i_3 ,
    \share1_reg[100]_i_3 ,
    \ciphertext_reg[127] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[125] ,
    \share1_reg_reg[127] ,
    \share1_reg_reg[121] ,
    \share1_reg_reg[121]_0 ,
    \share1_reg_reg[127]_0 ,
    \share1_reg_reg[120] ,
    \share1_reg_reg[127]_1 ,
    \share1_reg_reg[121]_1 ,
    \share1_reg_reg[122] ,
    \share1_reg_reg[123] ,
    \share1_reg_reg[124] ,
    \share1_reg_reg[125]_0 ,
    \share1_reg_reg[126] ,
    \share1_reg_reg[126]_0 ,
    \share1_reg_reg[127]_2 );
  output \share2_reg_reg[49] ;
  output [3:0]sub_bytes_share1;
  output \share2_reg_reg[127] ;
  output \share2_reg_reg[126] ;
  output \share2_reg_reg[51] ;
  output \share2_reg_reg[52] ;
  output \share2_reg_reg[91] ;
  output [5:0]sel;
  output [7:0]D;
  output \share2_reg_reg[89] ;
  output \share2_reg_reg[92] ;
  output \share2_reg_reg[94] ;
  input \share1_reg[97]_i_3 ;
  input [15:0]Q;
  input \share1_reg[99]_i_3 ;
  input \share1_reg[100]_i_3 ;
  input [7:0]\ciphertext_reg[127] ;
  input [7:0]key_IBUF;
  input [7:0]plaintext_IBUF;
  input [7:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[125] ;
  input \share1_reg_reg[127] ;
  input \share1_reg_reg[121] ;
  input \share1_reg_reg[121]_0 ;
  input [3:0]\share1_reg_reg[127]_0 ;
  input \share1_reg_reg[120] ;
  input [7:0]\share1_reg_reg[127]_1 ;
  input \share1_reg_reg[121]_1 ;
  input \share1_reg_reg[122] ;
  input \share1_reg_reg[123] ;
  input \share1_reg_reg[124] ;
  input \share1_reg_reg[125]_0 ;
  input \share1_reg_reg[126] ;
  input \share1_reg_reg[126]_0 ;
  input \share1_reg_reg[127]_2 ;

  wire [7:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[127] ;
  wire [7:0]key_IBUF;
  wire [7:0]mask_in_IBUF;
  wire [7:0]plaintext_IBUF;
  wire [5:0]sel;
  wire \share1_reg[100]_i_3 ;
  wire \share1_reg[97]_i_3 ;
  wire \share1_reg[99]_i_3 ;
  wire \share1_reg_reg[120] ;
  wire \share1_reg_reg[121] ;
  wire \share1_reg_reg[121]_0 ;
  wire \share1_reg_reg[121]_1 ;
  wire \share1_reg_reg[122] ;
  wire \share1_reg_reg[123] ;
  wire \share1_reg_reg[124] ;
  wire [1:0]\share1_reg_reg[125] ;
  wire \share1_reg_reg[125]_0 ;
  wire \share1_reg_reg[126] ;
  wire \share1_reg_reg[126]_0 ;
  wire \share1_reg_reg[127] ;
  wire [3:0]\share1_reg_reg[127]_0 ;
  wire [7:0]\share1_reg_reg[127]_1 ;
  wire \share1_reg_reg[127]_2 ;
  wire \share2_reg_reg[126] ;
  wire \share2_reg_reg[127] ;
  wire \share2_reg_reg[49] ;
  wire \share2_reg_reg[51] ;
  wire \share2_reg_reg[52] ;
  wire \share2_reg_reg[89] ;
  wire \share2_reg_reg[91] ;
  wire \share2_reg_reg[92] ;
  wire \share2_reg_reg[94] ;
  wire [3:0]sub_bytes_share1;

  sbox_29 u_sbox_core
       (.D(D),
        .Q(Q),
        .\ciphertext_reg[127] (\ciphertext_reg[127] ),
        .key_IBUF(key_IBUF),
        .mask_in_IBUF(mask_in_IBUF),
        .plaintext_IBUF(plaintext_IBUF),
        .\share1_reg[100]_i_3 (\share1_reg[100]_i_3 ),
        .\share1_reg[97]_i_3 (\share1_reg[97]_i_3 ),
        .\share1_reg[99]_i_3 (\share1_reg[99]_i_3 ),
        .\share1_reg_reg[120] (\share1_reg_reg[120] ),
        .\share1_reg_reg[121] (\share1_reg_reg[121] ),
        .\share1_reg_reg[121]_0 (\share1_reg_reg[121]_0 ),
        .\share1_reg_reg[121]_1 (\share1_reg_reg[121]_1 ),
        .\share1_reg_reg[122] (\share1_reg_reg[122] ),
        .\share1_reg_reg[123] (\share1_reg_reg[123] ),
        .\share1_reg_reg[124] (\share1_reg_reg[124] ),
        .\share1_reg_reg[125] (\share1_reg_reg[125] ),
        .\share1_reg_reg[125]_0 (\share1_reg_reg[125]_0 ),
        .\share1_reg_reg[126] (\share1_reg_reg[126] ),
        .\share1_reg_reg[126]_0 (\share1_reg_reg[126]_0 ),
        .\share1_reg_reg[127] (\share1_reg_reg[127] ),
        .\share1_reg_reg[127]_0 (\share1_reg_reg[127]_0 ),
        .\share1_reg_reg[127]_1 (\share1_reg_reg[127]_1 ),
        .\share1_reg_reg[127]_2 (\share1_reg_reg[127]_2 ),
        .\share2_reg_reg[120] (sel[0]),
        .\share2_reg_reg[121] (sel[1]),
        .\share2_reg_reg[122] (sel[2]),
        .\share2_reg_reg[123] (sel[3]),
        .\share2_reg_reg[124] (sel[4]),
        .\share2_reg_reg[125] (sel[5]),
        .\share2_reg_reg[126] (\share2_reg_reg[126] ),
        .\share2_reg_reg[127] (\share2_reg_reg[127] ),
        .\share2_reg_reg[49] (\share2_reg_reg[49] ),
        .\share2_reg_reg[51] (\share2_reg_reg[51] ),
        .\share2_reg_reg[52] (\share2_reg_reg[52] ),
        .\share2_reg_reg[89] (\share2_reg_reg[89] ),
        .\share2_reg_reg[91] (\share2_reg_reg[91] ),
        .\share2_reg_reg[92] (\share2_reg_reg[92] ),
        .\share2_reg_reg[94] (\share2_reg_reg[94] ),
        .sub_bytes_share1(sub_bytes_share1));
endmodule

(* ORIG_REF_NAME = "masked_sbox" *) 
module masked_sbox_0
   (\share2_reg_reg[10] ,
    sub_bytes_share1,
    \share2_reg_reg[13] ,
    \share2_reg_reg[14] ,
    \share2_reg_reg[14]_0 ,
    \share2_reg_reg[15] ,
    \share2_reg_reg[8] ,
    \share2_reg_reg[47] ,
    \share2_reg_reg[46] ,
    sel,
    D,
    \share2_reg_reg[9] ,
    \share2_reg_reg[11] ,
    \share2_reg_reg[12] ,
    \share1_reg_reg[105] ,
    \share1_reg_reg[119] ,
    \share1_reg_reg[108] ,
    \share1_reg[126]_i_2 ,
    \share1_reg_reg[118] ,
    Q,
    \ciphertext_reg[47] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[109] ,
    \share1_reg_reg[111] ,
    \share1_reg_reg[114] ,
    \share1_reg_reg[118]_0 ,
    \share1_reg_reg[119]_0 ,
    mix_cols_share1,
    \share1_reg_reg[105]_0 ,
    \share1_reg_reg[107] ,
    \share1_reg_reg[107]_0 ,
    \share1_reg_reg[108]_0 ,
    \share1_reg_reg[118]_1 );
  output \share2_reg_reg[10] ;
  output [3:0]sub_bytes_share1;
  output \share2_reg_reg[13] ;
  output \share2_reg_reg[14] ;
  output \share2_reg_reg[14]_0 ;
  output \share2_reg_reg[15] ;
  output \share2_reg_reg[8] ;
  output \share2_reg_reg[47] ;
  output \share2_reg_reg[46] ;
  output [5:0]sel;
  output [12:0]D;
  output \share2_reg_reg[9] ;
  output \share2_reg_reg[11] ;
  output \share2_reg_reg[12] ;
  input \share1_reg_reg[105] ;
  input [11:0]\share1_reg_reg[119] ;
  input \share1_reg_reg[108] ;
  input \share1_reg[126]_i_2 ;
  input \share1_reg_reg[118] ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[47] ;
  input [12:0]key_IBUF;
  input [12:0]plaintext_IBUF;
  input [12:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[109] ;
  input \share1_reg_reg[111] ;
  input \share1_reg_reg[114] ;
  input \share1_reg_reg[118]_0 ;
  input [12:0]\share1_reg_reg[119]_0 ;
  input [4:0]mix_cols_share1;
  input \share1_reg_reg[105]_0 ;
  input \share1_reg_reg[107] ;
  input \share1_reg_reg[107]_0 ;
  input \share1_reg_reg[108]_0 ;
  input \share1_reg_reg[118]_1 ;

  wire [12:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[47] ;
  wire [12:0]key_IBUF;
  wire [12:0]mask_in_IBUF;
  wire [4:0]mix_cols_share1;
  wire [12:0]plaintext_IBUF;
  wire [5:0]sel;
  wire \share1_reg[126]_i_2 ;
  wire \share1_reg_reg[105] ;
  wire \share1_reg_reg[105]_0 ;
  wire \share1_reg_reg[107] ;
  wire \share1_reg_reg[107]_0 ;
  wire \share1_reg_reg[108] ;
  wire \share1_reg_reg[108]_0 ;
  wire [1:0]\share1_reg_reg[109] ;
  wire \share1_reg_reg[111] ;
  wire \share1_reg_reg[114] ;
  wire \share1_reg_reg[118] ;
  wire \share1_reg_reg[118]_0 ;
  wire \share1_reg_reg[118]_1 ;
  wire [11:0]\share1_reg_reg[119] ;
  wire [12:0]\share1_reg_reg[119]_0 ;
  wire \share2_reg_reg[10] ;
  wire \share2_reg_reg[11] ;
  wire \share2_reg_reg[12] ;
  wire \share2_reg_reg[13] ;
  wire \share2_reg_reg[14] ;
  wire \share2_reg_reg[14]_0 ;
  wire \share2_reg_reg[15] ;
  wire \share2_reg_reg[46] ;
  wire \share2_reg_reg[47] ;
  wire \share2_reg_reg[8] ;
  wire \share2_reg_reg[9] ;
  wire [3:0]sub_bytes_share1;

  sbox_28 u_sbox_core
       (.D(D),
        .Q(Q),
        .\ciphertext_reg[47] (\ciphertext_reg[47] ),
        .key_IBUF(key_IBUF),
        .mask_in_IBUF(mask_in_IBUF),
        .mix_cols_share1(mix_cols_share1),
        .plaintext_IBUF(plaintext_IBUF),
        .\share1_reg[126]_i_2 (\share1_reg[126]_i_2 ),
        .\share1_reg_reg[105] (\share1_reg_reg[105] ),
        .\share1_reg_reg[105]_0 (\share1_reg_reg[105]_0 ),
        .\share1_reg_reg[107] (\share1_reg_reg[107] ),
        .\share1_reg_reg[107]_0 (\share1_reg_reg[107]_0 ),
        .\share1_reg_reg[108] (\share1_reg_reg[108] ),
        .\share1_reg_reg[108]_0 (\share1_reg_reg[108]_0 ),
        .\share1_reg_reg[109] (\share1_reg_reg[109] ),
        .\share1_reg_reg[111] (\share1_reg_reg[111] ),
        .\share1_reg_reg[114] (\share1_reg_reg[114] ),
        .\share1_reg_reg[118] (\share1_reg_reg[118] ),
        .\share1_reg_reg[118]_0 (\share1_reg_reg[118]_0 ),
        .\share1_reg_reg[118]_1 (\share1_reg_reg[118]_1 ),
        .\share1_reg_reg[119] (\share1_reg_reg[119] ),
        .\share1_reg_reg[119]_0 (\share1_reg_reg[119]_0 ),
        .\share2_reg_reg[10] (\share2_reg_reg[10] ),
        .\share2_reg_reg[11] (\share2_reg_reg[11] ),
        .\share2_reg_reg[12] (\share2_reg_reg[12] ),
        .\share2_reg_reg[13] (\share2_reg_reg[13] ),
        .\share2_reg_reg[14] (\share2_reg_reg[14] ),
        .\share2_reg_reg[14]_0 (\share2_reg_reg[14]_0 ),
        .\share2_reg_reg[15] (\share2_reg_reg[15] ),
        .\share2_reg_reg[40] (sel[0]),
        .\share2_reg_reg[41] (sel[1]),
        .\share2_reg_reg[42] (sel[2]),
        .\share2_reg_reg[43] (sel[3]),
        .\share2_reg_reg[44] (sel[4]),
        .\share2_reg_reg[45] (sel[5]),
        .\share2_reg_reg[46] (\share2_reg_reg[46] ),
        .\share2_reg_reg[47] (\share2_reg_reg[47] ),
        .\share2_reg_reg[8] (\share2_reg_reg[8] ),
        .\share2_reg_reg[9] (\share2_reg_reg[9] ),
        .sub_bytes_share1(sub_bytes_share1));
endmodule

(* ORIG_REF_NAME = "masked_sbox" *) 
module masked_sbox_1
   (sub_bytes_share1,
    \share2_reg_reg[3] ,
    \share2_reg_reg[2] ,
    \share2_reg_reg[5] ,
    \share2_reg_reg[6] ,
    \share2_reg_reg[6]_0 ,
    \share2_reg_reg[7] ,
    \share2_reg_reg[0] ,
    \share2_reg_reg[39] ,
    \share2_reg_reg[38] ,
    sel,
    D,
    \share2_reg_reg[1] ,
    \share2_reg_reg[4] ,
    \share1_reg[1]_i_2 ,
    \share1_reg[1]_i_2_0 ,
    \share1_reg[1]_i_2_1 ,
    \share1_reg[3]_i_2 ,
    \share1_reg_reg[4] ,
    \share1_reg[3]_i_2_0 ,
    \share1_reg[4]_i_2 ,
    \share1_reg[4]_i_2_0 ,
    \share1_reg[4]_i_2_1 ,
    \share1_reg_reg[15] ,
    \share1_reg[22]_i_2 ,
    \share1_reg_reg[14] ,
    Q,
    \ciphertext_reg[39] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[5] ,
    \share1_reg_reg[7] ,
    \share1_reg_reg[14]_0 ,
    \share1_reg_reg[8] ,
    mix_cols_share1,
    \share1_reg_reg[15]_0 ,
    \share1_reg_reg[14]_1 );
  output [3:0]sub_bytes_share1;
  output \share2_reg_reg[3] ;
  output \share2_reg_reg[2] ;
  output \share2_reg_reg[5] ;
  output \share2_reg_reg[6] ;
  output \share2_reg_reg[6]_0 ;
  output \share2_reg_reg[7] ;
  output \share2_reg_reg[0] ;
  output \share2_reg_reg[39] ;
  output \share2_reg_reg[38] ;
  output [5:0]sel;
  output [12:0]D;
  output \share2_reg_reg[1] ;
  output \share2_reg_reg[4] ;
  input \share1_reg[1]_i_2 ;
  input \share1_reg[1]_i_2_0 ;
  input \share1_reg[1]_i_2_1 ;
  input \share1_reg[3]_i_2 ;
  input \share1_reg_reg[4] ;
  input \share1_reg[3]_i_2_0 ;
  input \share1_reg[4]_i_2 ;
  input \share1_reg[4]_i_2_0 ;
  input \share1_reg[4]_i_2_1 ;
  input [11:0]\share1_reg_reg[15] ;
  input \share1_reg[22]_i_2 ;
  input \share1_reg_reg[14] ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[39] ;
  input [12:0]key_IBUF;
  input [12:0]plaintext_IBUF;
  input [12:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[5] ;
  input \share1_reg_reg[7] ;
  input \share1_reg_reg[14]_0 ;
  input \share1_reg_reg[8] ;
  input [4:0]mix_cols_share1;
  input [12:0]\share1_reg_reg[15]_0 ;
  input \share1_reg_reg[14]_1 ;

  wire [12:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[39] ;
  wire [12:0]key_IBUF;
  wire [12:0]mask_in_IBUF;
  wire [4:0]mix_cols_share1;
  wire [12:0]plaintext_IBUF;
  wire [5:0]sel;
  wire \share1_reg[1]_i_2 ;
  wire \share1_reg[1]_i_2_0 ;
  wire \share1_reg[1]_i_2_1 ;
  wire \share1_reg[22]_i_2 ;
  wire \share1_reg[3]_i_2 ;
  wire \share1_reg[3]_i_2_0 ;
  wire \share1_reg[4]_i_2 ;
  wire \share1_reg[4]_i_2_0 ;
  wire \share1_reg[4]_i_2_1 ;
  wire \share1_reg_reg[14] ;
  wire \share1_reg_reg[14]_0 ;
  wire \share1_reg_reg[14]_1 ;
  wire [11:0]\share1_reg_reg[15] ;
  wire [12:0]\share1_reg_reg[15]_0 ;
  wire \share1_reg_reg[4] ;
  wire [1:0]\share1_reg_reg[5] ;
  wire \share1_reg_reg[7] ;
  wire \share1_reg_reg[8] ;
  wire \share2_reg_reg[0] ;
  wire \share2_reg_reg[1] ;
  wire \share2_reg_reg[2] ;
  wire \share2_reg_reg[38] ;
  wire \share2_reg_reg[39] ;
  wire \share2_reg_reg[3] ;
  wire \share2_reg_reg[4] ;
  wire \share2_reg_reg[5] ;
  wire \share2_reg_reg[6] ;
  wire \share2_reg_reg[6]_0 ;
  wire \share2_reg_reg[7] ;
  wire [3:0]sub_bytes_share1;

  sbox_27 u_sbox_core
       (.D(D),
        .Q(Q),
        .\ciphertext_reg[39] (\ciphertext_reg[39] ),
        .key_IBUF(key_IBUF),
        .mask_in_IBUF(mask_in_IBUF),
        .mix_cols_share1(mix_cols_share1),
        .plaintext_IBUF(plaintext_IBUF),
        .\share1_reg[1]_i_2_0 (\share1_reg[1]_i_2 ),
        .\share1_reg[1]_i_2_1 (\share1_reg[1]_i_2_0 ),
        .\share1_reg[1]_i_2_2 (\share1_reg[1]_i_2_1 ),
        .\share1_reg[22]_i_2 (\share1_reg[22]_i_2 ),
        .\share1_reg[3]_i_2_0 (\share1_reg[3]_i_2 ),
        .\share1_reg[3]_i_2_1 (\share1_reg[3]_i_2_0 ),
        .\share1_reg[4]_i_2_0 (\share1_reg[4]_i_2 ),
        .\share1_reg[4]_i_2_1 (\share1_reg[4]_i_2_0 ),
        .\share1_reg[4]_i_2_2 (\share1_reg[4]_i_2_1 ),
        .\share1_reg_reg[14] (\share1_reg_reg[14] ),
        .\share1_reg_reg[14]_0 (\share1_reg_reg[14]_0 ),
        .\share1_reg_reg[14]_1 (\share1_reg_reg[14]_1 ),
        .\share1_reg_reg[15] (\share1_reg_reg[15] ),
        .\share1_reg_reg[15]_0 (\share1_reg_reg[15]_0 ),
        .\share1_reg_reg[4] (\share1_reg_reg[4] ),
        .\share1_reg_reg[5] (\share1_reg_reg[5] ),
        .\share1_reg_reg[7] (\share1_reg_reg[7] ),
        .\share1_reg_reg[8] (\share1_reg_reg[8] ),
        .\share2_reg_reg[0] (sub_bytes_share1[0]),
        .\share2_reg_reg[0]_0 (\share2_reg_reg[0] ),
        .\share2_reg_reg[1] (\share2_reg_reg[1] ),
        .\share2_reg_reg[2] (sub_bytes_share1[1]),
        .\share2_reg_reg[2]_0 (\share2_reg_reg[2] ),
        .\share2_reg_reg[32] (sel[0]),
        .\share2_reg_reg[33] (sel[1]),
        .\share2_reg_reg[34] (sel[2]),
        .\share2_reg_reg[35] (sel[3]),
        .\share2_reg_reg[36] (sel[4]),
        .\share2_reg_reg[37] (sel[5]),
        .\share2_reg_reg[38] (\share2_reg_reg[38] ),
        .\share2_reg_reg[39] (\share2_reg_reg[39] ),
        .\share2_reg_reg[3] (\share2_reg_reg[3] ),
        .\share2_reg_reg[4] (\share2_reg_reg[4] ),
        .\share2_reg_reg[5] (\share2_reg_reg[5] ),
        .\share2_reg_reg[5]_0 (sub_bytes_share1[2]),
        .\share2_reg_reg[6] (\share2_reg_reg[6] ),
        .\share2_reg_reg[6]_0 (\share2_reg_reg[6]_0 ),
        .\share2_reg_reg[7] (sub_bytes_share1[3]),
        .\share2_reg_reg[7]_0 (\share2_reg_reg[7] ));
endmodule

(* ORIG_REF_NAME = "masked_sbox" *) 
module masked_sbox_10
   (\share2_reg_reg[50] ,
    sub_bytes_share1,
    post_linear_share1,
    \share2_reg_reg[49] ,
    \share2_reg_reg[9] ,
    \share2_reg_reg[51] ,
    \share2_reg_reg[11] ,
    \share2_reg_reg[53] ,
    \share2_reg_reg[52] ,
    \share2_reg_reg[12] ,
    \share2_reg_reg[54] ,
    \share2_reg_reg[54]_0 ,
    \share2_reg_reg[55] ,
    \share2_reg_reg[48] ,
    \share2_reg_reg[87] ,
    \share2_reg_reg[86] ,
    sel,
    \share1_reg[98]_i_3 ,
    \share1_reg[113]_i_2 ,
    \share1_reg[96]_i_3 ,
    \share1_reg[115]_i_2 ,
    \share1_reg[101]_i_3 ,
    \share1_reg[116]_i_2 ,
    \share1_reg[103]_i_3 ,
    \share1_reg[121]_i_2 ,
    \share1_reg[121]_i_2_0 ,
    Q,
    \share1_reg[123]_i_2 ,
    \share1_reg[124]_i_2 ,
    \share1_reg[124]_i_2_0 ,
    \ciphertext_reg[87] );
  output \share2_reg_reg[50] ;
  output [3:0]sub_bytes_share1;
  output [2:0]post_linear_share1;
  output \share2_reg_reg[49] ;
  output \share2_reg_reg[9] ;
  output \share2_reg_reg[51] ;
  output \share2_reg_reg[11] ;
  output \share2_reg_reg[53] ;
  output \share2_reg_reg[52] ;
  output \share2_reg_reg[12] ;
  output \share2_reg_reg[54] ;
  output \share2_reg_reg[54]_0 ;
  output \share2_reg_reg[55] ;
  output \share2_reg_reg[48] ;
  output \share2_reg_reg[87] ;
  output \share2_reg_reg[86] ;
  output [5:0]sel;
  input \share1_reg[98]_i_3 ;
  input \share1_reg[113]_i_2 ;
  input [4:0]\share1_reg[96]_i_3 ;
  input \share1_reg[115]_i_2 ;
  input \share1_reg[101]_i_3 ;
  input \share1_reg[116]_i_2 ;
  input \share1_reg[103]_i_3 ;
  input \share1_reg[121]_i_2 ;
  input \share1_reg[121]_i_2_0 ;
  input [15:0]Q;
  input \share1_reg[123]_i_2 ;
  input \share1_reg[124]_i_2 ;
  input \share1_reg[124]_i_2_0 ;
  input [7:0]\ciphertext_reg[87] ;

  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[87] ;
  wire [2:0]post_linear_share1;
  wire [5:0]sel;
  wire \share1_reg[101]_i_3 ;
  wire \share1_reg[103]_i_3 ;
  wire \share1_reg[113]_i_2 ;
  wire \share1_reg[115]_i_2 ;
  wire \share1_reg[116]_i_2 ;
  wire \share1_reg[121]_i_2 ;
  wire \share1_reg[121]_i_2_0 ;
  wire \share1_reg[123]_i_2 ;
  wire \share1_reg[124]_i_2 ;
  wire \share1_reg[124]_i_2_0 ;
  wire [4:0]\share1_reg[96]_i_3 ;
  wire \share1_reg[98]_i_3 ;
  wire \share2_reg_reg[11] ;
  wire \share2_reg_reg[12] ;
  wire \share2_reg_reg[48] ;
  wire \share2_reg_reg[49] ;
  wire \share2_reg_reg[50] ;
  wire \share2_reg_reg[51] ;
  wire \share2_reg_reg[52] ;
  wire \share2_reg_reg[53] ;
  wire \share2_reg_reg[54] ;
  wire \share2_reg_reg[54]_0 ;
  wire \share2_reg_reg[55] ;
  wire \share2_reg_reg[86] ;
  wire \share2_reg_reg[87] ;
  wire \share2_reg_reg[9] ;
  wire [3:0]sub_bytes_share1;

  sbox_18 u_sbox_core
       (.Q(Q),
        .\ciphertext_reg[87] (\ciphertext_reg[87] ),
        .post_linear_share1(post_linear_share1),
        .\share1_reg[101]_i_3 (\share1_reg[101]_i_3 ),
        .\share1_reg[103]_i_3 (\share1_reg[103]_i_3 ),
        .\share1_reg[113]_i_2 (\share1_reg[113]_i_2 ),
        .\share1_reg[115]_i_2 (\share1_reg[115]_i_2 ),
        .\share1_reg[116]_i_2 (\share1_reg[116]_i_2 ),
        .\share1_reg[121]_i_2 (\share1_reg[121]_i_2 ),
        .\share1_reg[121]_i_2_0 (\share1_reg[121]_i_2_0 ),
        .\share1_reg[123]_i_2 (\share1_reg[123]_i_2 ),
        .\share1_reg[124]_i_2 (\share1_reg[124]_i_2 ),
        .\share1_reg[124]_i_2_0 (\share1_reg[124]_i_2_0 ),
        .\share1_reg[96]_i_3 (\share1_reg[96]_i_3 ),
        .\share1_reg[98]_i_3 (\share1_reg[98]_i_3 ),
        .\share2_reg_reg[11] (\share2_reg_reg[11] ),
        .\share2_reg_reg[12] (\share2_reg_reg[12] ),
        .\share2_reg_reg[48] (\share2_reg_reg[48] ),
        .\share2_reg_reg[49] (\share2_reg_reg[49] ),
        .\share2_reg_reg[50] (\share2_reg_reg[50] ),
        .\share2_reg_reg[51] (\share2_reg_reg[51] ),
        .\share2_reg_reg[52] (\share2_reg_reg[52] ),
        .\share2_reg_reg[53] (\share2_reg_reg[53] ),
        .\share2_reg_reg[54] (\share2_reg_reg[54] ),
        .\share2_reg_reg[54]_0 (\share2_reg_reg[54]_0 ),
        .\share2_reg_reg[55] (\share2_reg_reg[55] ),
        .\share2_reg_reg[80] (sel[0]),
        .\share2_reg_reg[81] (sel[1]),
        .\share2_reg_reg[82] (sel[2]),
        .\share2_reg_reg[83] (sel[3]),
        .\share2_reg_reg[84] (sel[4]),
        .\share2_reg_reg[85] (sel[5]),
        .\share2_reg_reg[86] (\share2_reg_reg[86] ),
        .\share2_reg_reg[87] (\share2_reg_reg[87] ),
        .\share2_reg_reg[9] (\share2_reg_reg[9] ),
        .sub_bytes_share1(sub_bytes_share1));
endmodule

(* ORIG_REF_NAME = "masked_sbox" *) 
module masked_sbox_11
   (post_linear_share1,
    \share2_reg_reg[41] ,
    \share2_reg_reg[1] ,
    \share2_reg_reg[43] ,
    \share2_reg_reg[3] ,
    \share2_reg_reg[44] ,
    \share2_reg_reg[4] ,
    \share2_reg_reg[47] ,
    \share2_reg_reg[79] ,
    \share2_reg_reg[78] ,
    sel,
    \share2_reg_reg[46] ,
    \share1_reg[12]_i_2 ,
    sub_bytes_share1,
    \share1_reg[9]_i_2 ,
    \share1_reg[11]_i_2 ,
    \share1_reg[12]_i_2_0 ,
    \share1_reg[12]_i_2_1 ,
    \share1_reg[17]_i_3 ,
    \share1_reg[17]_i_3_0 ,
    Q,
    \share1_reg[19]_i_3 ,
    \share1_reg[20]_i_3 ,
    \share1_reg[20]_i_3_0 ,
    \ciphertext_reg[79] );
  output [2:0]post_linear_share1;
  output \share2_reg_reg[41] ;
  output \share2_reg_reg[1] ;
  output \share2_reg_reg[43] ;
  output \share2_reg_reg[3] ;
  output \share2_reg_reg[44] ;
  output \share2_reg_reg[4] ;
  output [3:0]\share2_reg_reg[47] ;
  output \share2_reg_reg[79] ;
  output \share2_reg_reg[78] ;
  output [5:0]sel;
  output \share2_reg_reg[46] ;
  input \share1_reg[12]_i_2 ;
  input [2:0]sub_bytes_share1;
  input \share1_reg[9]_i_2 ;
  input \share1_reg[11]_i_2 ;
  input \share1_reg[12]_i_2_0 ;
  input \share1_reg[12]_i_2_1 ;
  input \share1_reg[17]_i_3 ;
  input \share1_reg[17]_i_3_0 ;
  input [15:0]Q;
  input \share1_reg[19]_i_3 ;
  input \share1_reg[20]_i_3 ;
  input \share1_reg[20]_i_3_0 ;
  input [7:0]\ciphertext_reg[79] ;

  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[79] ;
  wire [2:0]post_linear_share1;
  wire [5:0]sel;
  wire \share1_reg[11]_i_2 ;
  wire \share1_reg[12]_i_2 ;
  wire \share1_reg[12]_i_2_0 ;
  wire \share1_reg[12]_i_2_1 ;
  wire \share1_reg[17]_i_3 ;
  wire \share1_reg[17]_i_3_0 ;
  wire \share1_reg[19]_i_3 ;
  wire \share1_reg[20]_i_3 ;
  wire \share1_reg[20]_i_3_0 ;
  wire \share1_reg[9]_i_2 ;
  wire \share2_reg_reg[1] ;
  wire \share2_reg_reg[3] ;
  wire \share2_reg_reg[41] ;
  wire \share2_reg_reg[43] ;
  wire \share2_reg_reg[44] ;
  wire \share2_reg_reg[46] ;
  wire [3:0]\share2_reg_reg[47] ;
  wire \share2_reg_reg[4] ;
  wire \share2_reg_reg[78] ;
  wire \share2_reg_reg[79] ;
  wire [2:0]sub_bytes_share1;

  sbox_17 u_sbox_core
       (.Q(Q),
        .\ciphertext_reg[79] (\ciphertext_reg[79] ),
        .post_linear_share1(post_linear_share1),
        .\share1_reg[11]_i_2 (\share1_reg[11]_i_2 ),
        .\share1_reg[12]_i_2 (\share1_reg[12]_i_2 ),
        .\share1_reg[12]_i_2_0 (\share1_reg[12]_i_2_0 ),
        .\share1_reg[12]_i_2_1 (\share1_reg[12]_i_2_1 ),
        .\share1_reg[17]_i_3 (\share1_reg[17]_i_3 ),
        .\share1_reg[17]_i_3_0 (\share1_reg[17]_i_3_0 ),
        .\share1_reg[19]_i_3 (\share1_reg[19]_i_3 ),
        .\share1_reg[20]_i_3 (\share1_reg[20]_i_3 ),
        .\share1_reg[20]_i_3_0 (\share1_reg[20]_i_3_0 ),
        .\share1_reg[9]_i_2 (\share1_reg[9]_i_2 ),
        .\share2_reg_reg[1] (\share2_reg_reg[1] ),
        .\share2_reg_reg[3] (\share2_reg_reg[3] ),
        .\share2_reg_reg[41] (\share2_reg_reg[41] ),
        .\share2_reg_reg[43] (\share2_reg_reg[43] ),
        .\share2_reg_reg[44] (\share2_reg_reg[44] ),
        .\share2_reg_reg[45] (\share2_reg_reg[47] [2:0]),
        .\share2_reg_reg[46] (\share2_reg_reg[46] ),
        .\share2_reg_reg[47] (\share2_reg_reg[47] [3]),
        .\share2_reg_reg[4] (\share2_reg_reg[4] ),
        .\share2_reg_reg[72] (sel[0]),
        .\share2_reg_reg[73] (sel[1]),
        .\share2_reg_reg[74] (sel[2]),
        .\share2_reg_reg[75] (sel[3]),
        .\share2_reg_reg[76] (sel[4]),
        .\share2_reg_reg[77] (sel[5]),
        .\share2_reg_reg[78] (\share2_reg_reg[78] ),
        .\share2_reg_reg[79] (\share2_reg_reg[79] ),
        .sub_bytes_share1(sub_bytes_share1));
endmodule

(* ORIG_REF_NAME = "masked_sbox" *) 
module masked_sbox_12
   (\share2_reg_reg[34] ,
    \share2_reg_reg[39] ,
    \share2_reg_reg[37] ,
    \share2_reg_reg[35] ,
    \share2_reg_reg[38] ,
    \share2_reg_reg[38]_0 ,
    \share2_reg_reg[39]_0 ,
    \share2_reg_reg[32] ,
    \share2_reg_reg[71] ,
    \share2_reg_reg[70] ,
    sel,
    D,
    \round_ctr_reg[2] ,
    \share2_reg_reg[33] ,
    \share2_reg_reg[36] ,
    \share1_reg[50]_i_2 ,
    sub_bytes_share1,
    \share1_reg[33]_i_2 ,
    \share1_reg[35]_i_2 ,
    \share1_reg[35]_i_2_0 ,
    \share1_reg[53]_i_2 ,
    \share1_reg_reg[35] ,
    \share1_reg[36]_i_2 ,
    \share1_reg[54]_i_2 ,
    \share1_reg_reg[46] ,
    Q,
    \ciphertext_reg[71] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[45] ,
    \share1_reg_reg[39] ,
    \share1_reg_reg[47] ,
    \share2_reg_reg[94] ,
    \share1_reg_reg[47]_0 ,
    mix_cols_share1,
    \share1_reg_reg[33] ,
    \share1_reg_reg[36] ,
    \share1_reg_reg[46]_0 );
  output \share2_reg_reg[34] ;
  output [3:0]\share2_reg_reg[39] ;
  output \share2_reg_reg[37] ;
  output \share2_reg_reg[35] ;
  output \share2_reg_reg[38] ;
  output \share2_reg_reg[38]_0 ;
  output \share2_reg_reg[39]_0 ;
  output \share2_reg_reg[32] ;
  output \share2_reg_reg[71] ;
  output \share2_reg_reg[70] ;
  output [5:0]sel;
  output [12:0]D;
  output \round_ctr_reg[2] ;
  output \share2_reg_reg[33] ;
  output \share2_reg_reg[36] ;
  input \share1_reg[50]_i_2 ;
  input [11:0]sub_bytes_share1;
  input \share1_reg[33]_i_2 ;
  input \share1_reg[35]_i_2 ;
  input \share1_reg[35]_i_2_0 ;
  input \share1_reg[53]_i_2 ;
  input \share1_reg_reg[35] ;
  input \share1_reg[36]_i_2 ;
  input \share1_reg[54]_i_2 ;
  input \share1_reg_reg[46] ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[71] ;
  input [12:0]key_IBUF;
  input [12:0]plaintext_IBUF;
  input [12:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[45] ;
  input \share1_reg_reg[39] ;
  input \share1_reg_reg[47] ;
  input [3:0]\share2_reg_reg[94] ;
  input [12:0]\share1_reg_reg[47]_0 ;
  input [4:0]mix_cols_share1;
  input \share1_reg_reg[33] ;
  input \share1_reg_reg[36] ;
  input \share1_reg_reg[46]_0 ;

  wire [12:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[71] ;
  wire [12:0]key_IBUF;
  wire [12:0]mask_in_IBUF;
  wire [4:0]mix_cols_share1;
  wire [12:0]plaintext_IBUF;
  wire \round_ctr_reg[2] ;
  wire [5:0]sel;
  wire \share1_reg[33]_i_2 ;
  wire \share1_reg[35]_i_2 ;
  wire \share1_reg[35]_i_2_0 ;
  wire \share1_reg[36]_i_2 ;
  wire \share1_reg[50]_i_2 ;
  wire \share1_reg[53]_i_2 ;
  wire \share1_reg[54]_i_2 ;
  wire \share1_reg_reg[33] ;
  wire \share1_reg_reg[35] ;
  wire \share1_reg_reg[36] ;
  wire \share1_reg_reg[39] ;
  wire [1:0]\share1_reg_reg[45] ;
  wire \share1_reg_reg[46] ;
  wire \share1_reg_reg[46]_0 ;
  wire \share1_reg_reg[47] ;
  wire [12:0]\share1_reg_reg[47]_0 ;
  wire \share2_reg_reg[32] ;
  wire \share2_reg_reg[33] ;
  wire \share2_reg_reg[34] ;
  wire \share2_reg_reg[35] ;
  wire \share2_reg_reg[36] ;
  wire \share2_reg_reg[37] ;
  wire \share2_reg_reg[38] ;
  wire \share2_reg_reg[38]_0 ;
  wire [3:0]\share2_reg_reg[39] ;
  wire \share2_reg_reg[39]_0 ;
  wire \share2_reg_reg[70] ;
  wire \share2_reg_reg[71] ;
  wire [3:0]\share2_reg_reg[94] ;
  wire [11:0]sub_bytes_share1;

  sbox_16 u_sbox_core
       (.D(D),
        .Q(Q),
        .\ciphertext_reg[71] (\ciphertext_reg[71] ),
        .key_IBUF(key_IBUF),
        .mask_in_IBUF(mask_in_IBUF),
        .mix_cols_share1(mix_cols_share1),
        .plaintext_IBUF(plaintext_IBUF),
        .\round_ctr_reg[2] (\round_ctr_reg[2] ),
        .\share1_reg[33]_i_2_0 (\share1_reg[33]_i_2 ),
        .\share1_reg[35]_i_2_0 (\share1_reg[35]_i_2 ),
        .\share1_reg[35]_i_2_1 (\share1_reg[35]_i_2_0 ),
        .\share1_reg[36]_i_2_0 (\share1_reg[36]_i_2 ),
        .\share1_reg[50]_i_2 (\share1_reg[50]_i_2 ),
        .\share1_reg[53]_i_2 (\share1_reg[53]_i_2 ),
        .\share1_reg[54]_i_2 (\share1_reg[54]_i_2 ),
        .\share1_reg_reg[33] (\share1_reg_reg[33] ),
        .\share1_reg_reg[35] (\share1_reg_reg[35] ),
        .\share1_reg_reg[36] (\share1_reg_reg[36] ),
        .\share1_reg_reg[39] (\share1_reg_reg[39] ),
        .\share1_reg_reg[45] (\share1_reg_reg[45] ),
        .\share1_reg_reg[46] (\share1_reg_reg[46] ),
        .\share1_reg_reg[46]_0 (\share1_reg_reg[46]_0 ),
        .\share1_reg_reg[47] (\share1_reg_reg[47] ),
        .\share1_reg_reg[47]_0 (\share1_reg_reg[47]_0 ),
        .\share2_reg_reg[32] (\share2_reg_reg[39] [0]),
        .\share2_reg_reg[32]_0 (\share2_reg_reg[32] ),
        .\share2_reg_reg[33] (\share2_reg_reg[33] ),
        .\share2_reg_reg[34] (\share2_reg_reg[34] ),
        .\share2_reg_reg[34]_0 (\share2_reg_reg[39] [1]),
        .\share2_reg_reg[35] (\share2_reg_reg[35] ),
        .\share2_reg_reg[36] (\share2_reg_reg[36] ),
        .\share2_reg_reg[37] (\share2_reg_reg[37] ),
        .\share2_reg_reg[37]_0 (\share2_reg_reg[39] [2]),
        .\share2_reg_reg[38] (\share2_reg_reg[38] ),
        .\share2_reg_reg[38]_0 (\share2_reg_reg[38]_0 ),
        .\share2_reg_reg[39] (\share2_reg_reg[39] [3]),
        .\share2_reg_reg[39]_0 (\share2_reg_reg[39]_0 ),
        .\share2_reg_reg[64] (sel[0]),
        .\share2_reg_reg[65] (sel[1]),
        .\share2_reg_reg[66] (sel[2]),
        .\share2_reg_reg[67] (sel[3]),
        .\share2_reg_reg[68] (sel[4]),
        .\share2_reg_reg[69] (sel[5]),
        .\share2_reg_reg[70] (\share2_reg_reg[70] ),
        .\share2_reg_reg[71] (\share2_reg_reg[71] ),
        .\share2_reg_reg[94] (\share2_reg_reg[94] ),
        .sub_bytes_share1(sub_bytes_share1));
endmodule

(* ORIG_REF_NAME = "masked_sbox" *) 
module masked_sbox_13
   (mix_cols_share1,
    sub_bytes_share1,
    \share2_reg_reg[25] ,
    \share2_reg_reg[28] ,
    \share2_reg_reg[30] ,
    \share2_reg_reg[63] ,
    \share2_reg_reg[62] ,
    sel,
    D,
    \share2_reg_reg[27] ,
    \share1_reg[39]_i_2 ,
    \share1_reg_reg[57] ,
    \share1_reg_reg[60] ,
    \share1_reg[38]_i_2 ,
    \share1_reg[38]_i_2_0 ,
    \share1_reg[39]_i_2_0 ,
    Q,
    \ciphertext_reg[63] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[57]_0 ,
    \share1_reg_reg[63] ,
    \share1_reg_reg[57]_1 ,
    \share1_reg_reg[57]_2 ,
    \share1_reg_reg[60]_0 ,
    \share1_reg_reg[63]_0 ,
    \share1_reg_reg[60]_1 ,
    \share1_reg_reg[59] ,
    \share1_reg_reg[59]_0 ,
    \share1_reg_reg[60]_2 );
  output [4:0]mix_cols_share1;
  output [3:0]sub_bytes_share1;
  output \share2_reg_reg[25] ;
  output \share2_reg_reg[28] ;
  output \share2_reg_reg[30] ;
  output \share2_reg_reg[63] ;
  output \share2_reg_reg[62] ;
  output [5:0]sel;
  output [7:0]D;
  output \share2_reg_reg[27] ;
  input [9:0]\share1_reg[39]_i_2 ;
  input \share1_reg_reg[57] ;
  input \share1_reg_reg[60] ;
  input \share1_reg[38]_i_2 ;
  input \share1_reg[38]_i_2_0 ;
  input \share1_reg[39]_i_2_0 ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[63] ;
  input [7:0]key_IBUF;
  input [7:0]plaintext_IBUF;
  input [7:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[57]_0 ;
  input \share1_reg_reg[63] ;
  input \share1_reg_reg[57]_1 ;
  input \share1_reg_reg[57]_2 ;
  input [7:0]\share1_reg_reg[60]_0 ;
  input [4:0]\share1_reg_reg[63]_0 ;
  input [3:0]\share1_reg_reg[60]_1 ;
  input \share1_reg_reg[59] ;
  input \share1_reg_reg[59]_0 ;
  input \share1_reg_reg[60]_2 ;

  wire [7:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[63] ;
  wire [7:0]key_IBUF;
  wire [7:0]mask_in_IBUF;
  wire [4:0]mix_cols_share1;
  wire [7:0]plaintext_IBUF;
  wire [5:0]sel;
  wire \share1_reg[38]_i_2 ;
  wire \share1_reg[38]_i_2_0 ;
  wire [9:0]\share1_reg[39]_i_2 ;
  wire \share1_reg[39]_i_2_0 ;
  wire \share1_reg_reg[57] ;
  wire [1:0]\share1_reg_reg[57]_0 ;
  wire \share1_reg_reg[57]_1 ;
  wire \share1_reg_reg[57]_2 ;
  wire \share1_reg_reg[59] ;
  wire \share1_reg_reg[59]_0 ;
  wire \share1_reg_reg[60] ;
  wire [7:0]\share1_reg_reg[60]_0 ;
  wire [3:0]\share1_reg_reg[60]_1 ;
  wire \share1_reg_reg[60]_2 ;
  wire \share1_reg_reg[63] ;
  wire [4:0]\share1_reg_reg[63]_0 ;
  wire \share2_reg_reg[25] ;
  wire \share2_reg_reg[27] ;
  wire \share2_reg_reg[28] ;
  wire \share2_reg_reg[30] ;
  wire \share2_reg_reg[62] ;
  wire \share2_reg_reg[63] ;
  wire [3:0]sub_bytes_share1;

  sbox_15 u_sbox_core
       (.D(D),
        .Q(Q),
        .\ciphertext_reg[63] (\ciphertext_reg[63] ),
        .key_IBUF(key_IBUF),
        .mask_in_IBUF(mask_in_IBUF),
        .mix_cols_share1(mix_cols_share1),
        .plaintext_IBUF(plaintext_IBUF),
        .\share1_reg[38]_i_2 (\share1_reg[38]_i_2 ),
        .\share1_reg[38]_i_2_0 (\share1_reg[38]_i_2_0 ),
        .\share1_reg[39]_i_2 (\share1_reg[39]_i_2 ),
        .\share1_reg[39]_i_2_0 (\share1_reg[39]_i_2_0 ),
        .\share1_reg_reg[57] (\share1_reg_reg[57] ),
        .\share1_reg_reg[57]_0 (\share1_reg_reg[57]_0 ),
        .\share1_reg_reg[57]_1 (\share1_reg_reg[57]_1 ),
        .\share1_reg_reg[57]_2 (\share1_reg_reg[57]_2 ),
        .\share1_reg_reg[59] (\share1_reg_reg[59] ),
        .\share1_reg_reg[59]_0 (\share1_reg_reg[59]_0 ),
        .\share1_reg_reg[60] (\share1_reg_reg[60] ),
        .\share1_reg_reg[60]_0 (\share1_reg_reg[60]_0 ),
        .\share1_reg_reg[60]_1 (\share1_reg_reg[60]_1 ),
        .\share1_reg_reg[60]_2 (\share1_reg_reg[60]_2 ),
        .\share1_reg_reg[63] (\share1_reg_reg[63] ),
        .\share1_reg_reg[63]_0 (\share1_reg_reg[63]_0 ),
        .\share2_reg_reg[25] (\share2_reg_reg[25] ),
        .\share2_reg_reg[27] (\share2_reg_reg[27] ),
        .\share2_reg_reg[28] (\share2_reg_reg[28] ),
        .\share2_reg_reg[30] (\share2_reg_reg[30] ),
        .\share2_reg_reg[56] (sel[0]),
        .\share2_reg_reg[57] (sel[1]),
        .\share2_reg_reg[58] (sel[2]),
        .\share2_reg_reg[59] (sel[3]),
        .\share2_reg_reg[60] (sel[4]),
        .\share2_reg_reg[61] (sel[5]),
        .\share2_reg_reg[62] (\share2_reg_reg[62] ),
        .\share2_reg_reg[63] (\share2_reg_reg[63] ),
        .sub_bytes_share1(sub_bytes_share1));
endmodule

(* ORIG_REF_NAME = "masked_sbox" *) 
module masked_sbox_14
   (\share2_reg_reg[18] ,
    \share2_reg_reg[23] ,
    mix_cols_share1,
    \share2_reg_reg[17] ,
    post_linear_share1,
    \share2_reg_reg[19] ,
    \round_ctr_reg[2] ,
    \share2_reg_reg[107] ,
    \share2_reg_reg[21] ,
    \share2_reg_reg[20] ,
    \share2_reg_reg[108] ,
    \share2_reg_reg[22] ,
    \share2_reg_reg[22]_0 ,
    \share2_reg_reg[23]_0 ,
    \share2_reg_reg[16] ,
    xtime_return26_in,
    \share2_reg_reg[55] ,
    \share2_reg_reg[54] ,
    sel,
    D,
    \share1_reg[95]_i_2 ,
    \share1_reg[74]_i_2 ,
    \share1_reg[90]_i_2 ,
    \share1_reg[83]_i_2 ,
    \share1_reg[83]_i_2_0 ,
    \share1_reg[91]_i_2 ,
    \share1_reg[69]_i_5 ,
    \share1_reg[84]_i_2 ,
    \share1_reg[84]_i_2_0 ,
    \share1_reg[93]_i_2 ,
    \share1_reg[71]_i_5 ,
    \share1_reg_reg[86] ,
    \share1_reg[95]_i_2_0 ,
    Q,
    \ciphertext_reg[55] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[85] ,
    \share1_reg_reg[87] ,
    \share1_reg_reg[81] ,
    \share2_reg_reg[126] ,
    \share1_reg_reg[80] ,
    \share1_reg_reg[80]_0 ,
    \share1_reg_reg[87]_0 ,
    \share1_reg_reg[81]_0 ,
    \share1_reg_reg[81]_1 ,
    \share1_reg_reg[82] ,
    \share1_reg_reg[85]_0 ,
    \share1_reg_reg[86]_0 ,
    \share1_reg_reg[87]_1 );
  output \share2_reg_reg[18] ;
  output [1:0]\share2_reg_reg[23] ;
  output [3:0]mix_cols_share1;
  output \share2_reg_reg[17] ;
  output [1:0]post_linear_share1;
  output \share2_reg_reg[19] ;
  output \round_ctr_reg[2] ;
  output \share2_reg_reg[107] ;
  output \share2_reg_reg[21] ;
  output \share2_reg_reg[20] ;
  output \share2_reg_reg[108] ;
  output \share2_reg_reg[22] ;
  output \share2_reg_reg[22]_0 ;
  output \share2_reg_reg[23]_0 ;
  output \share2_reg_reg[16] ;
  output [0:0]xtime_return26_in;
  output \share2_reg_reg[55] ;
  output \share2_reg_reg[54] ;
  output [5:0]sel;
  output [5:0]D;
  input [7:0]\share1_reg[95]_i_2 ;
  input \share1_reg[74]_i_2 ;
  input \share1_reg[90]_i_2 ;
  input \share1_reg[83]_i_2 ;
  input \share1_reg[83]_i_2_0 ;
  input \share1_reg[91]_i_2 ;
  input \share1_reg[69]_i_5 ;
  input \share1_reg[84]_i_2 ;
  input \share1_reg[84]_i_2_0 ;
  input \share1_reg[93]_i_2 ;
  input \share1_reg[71]_i_5 ;
  input \share1_reg_reg[86] ;
  input \share1_reg[95]_i_2_0 ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[55] ;
  input [5:0]key_IBUF;
  input [5:0]plaintext_IBUF;
  input [5:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[85] ;
  input \share1_reg_reg[87] ;
  input \share1_reg_reg[81] ;
  input [3:0]\share2_reg_reg[126] ;
  input \share1_reg_reg[80] ;
  input \share1_reg_reg[80]_0 ;
  input [5:0]\share1_reg_reg[87]_0 ;
  input \share1_reg_reg[81]_0 ;
  input \share1_reg_reg[81]_1 ;
  input \share1_reg_reg[82] ;
  input \share1_reg_reg[85]_0 ;
  input \share1_reg_reg[86]_0 ;
  input \share1_reg_reg[87]_1 ;

  wire [5:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[55] ;
  wire [5:0]key_IBUF;
  wire [5:0]mask_in_IBUF;
  wire [3:0]mix_cols_share1;
  wire [5:0]plaintext_IBUF;
  wire [1:0]post_linear_share1;
  wire \round_ctr_reg[2] ;
  wire [5:0]sel;
  wire \share1_reg[69]_i_5 ;
  wire \share1_reg[71]_i_5 ;
  wire \share1_reg[74]_i_2 ;
  wire \share1_reg[83]_i_2 ;
  wire \share1_reg[83]_i_2_0 ;
  wire \share1_reg[84]_i_2 ;
  wire \share1_reg[84]_i_2_0 ;
  wire \share1_reg[90]_i_2 ;
  wire \share1_reg[91]_i_2 ;
  wire \share1_reg[93]_i_2 ;
  wire [7:0]\share1_reg[95]_i_2 ;
  wire \share1_reg[95]_i_2_0 ;
  wire \share1_reg_reg[80] ;
  wire \share1_reg_reg[80]_0 ;
  wire \share1_reg_reg[81] ;
  wire \share1_reg_reg[81]_0 ;
  wire \share1_reg_reg[81]_1 ;
  wire \share1_reg_reg[82] ;
  wire [1:0]\share1_reg_reg[85] ;
  wire \share1_reg_reg[85]_0 ;
  wire \share1_reg_reg[86] ;
  wire \share1_reg_reg[86]_0 ;
  wire \share1_reg_reg[87] ;
  wire [5:0]\share1_reg_reg[87]_0 ;
  wire \share1_reg_reg[87]_1 ;
  wire \share2_reg_reg[107] ;
  wire \share2_reg_reg[108] ;
  wire [3:0]\share2_reg_reg[126] ;
  wire \share2_reg_reg[16] ;
  wire \share2_reg_reg[17] ;
  wire \share2_reg_reg[18] ;
  wire \share2_reg_reg[19] ;
  wire \share2_reg_reg[20] ;
  wire \share2_reg_reg[21] ;
  wire \share2_reg_reg[22] ;
  wire \share2_reg_reg[22]_0 ;
  wire [1:0]\share2_reg_reg[23] ;
  wire \share2_reg_reg[23]_0 ;
  wire \share2_reg_reg[54] ;
  wire \share2_reg_reg[55] ;
  wire [0:0]xtime_return26_in;

  sbox u_sbox_core
       (.D(D),
        .Q(Q),
        .\ciphertext_reg[55] (\ciphertext_reg[55] ),
        .key_IBUF(key_IBUF),
        .mask_in_IBUF(mask_in_IBUF),
        .mix_cols_share1(mix_cols_share1),
        .plaintext_IBUF(plaintext_IBUF),
        .post_linear_share1(post_linear_share1),
        .\round_ctr_reg[2] (\round_ctr_reg[2] ),
        .\share1_reg[69]_i_5 (\share1_reg[69]_i_5 ),
        .\share1_reg[71]_i_5 (\share1_reg[71]_i_5 ),
        .\share1_reg[74]_i_2 (\share1_reg[74]_i_2 ),
        .\share1_reg[83]_i_2 (\share1_reg[83]_i_2 ),
        .\share1_reg[83]_i_2_0 (\share1_reg[83]_i_2_0 ),
        .\share1_reg[84]_i_2 (\share1_reg[84]_i_2 ),
        .\share1_reg[84]_i_2_0 (\share1_reg[84]_i_2_0 ),
        .\share1_reg[90]_i_2 (\share1_reg[90]_i_2 ),
        .\share1_reg[91]_i_2 (\share1_reg[91]_i_2 ),
        .\share1_reg[93]_i_2 (\share1_reg[93]_i_2 ),
        .\share1_reg[95]_i_2 (\share1_reg[95]_i_2 ),
        .\share1_reg[95]_i_2_0 (\share1_reg[95]_i_2_0 ),
        .\share1_reg_reg[80] (\share1_reg_reg[80] ),
        .\share1_reg_reg[80]_0 (\share1_reg_reg[80]_0 ),
        .\share1_reg_reg[81] (\share1_reg_reg[81] ),
        .\share1_reg_reg[81]_0 (\share1_reg_reg[81]_0 ),
        .\share1_reg_reg[81]_1 (\share1_reg_reg[81]_1 ),
        .\share1_reg_reg[82] (\share1_reg_reg[82] ),
        .\share1_reg_reg[85] (\share1_reg_reg[85] ),
        .\share1_reg_reg[85]_0 (\share1_reg_reg[85]_0 ),
        .\share1_reg_reg[86] (\share1_reg_reg[86] ),
        .\share1_reg_reg[86]_0 (\share1_reg_reg[86]_0 ),
        .\share1_reg_reg[87] (\share1_reg_reg[87] ),
        .\share1_reg_reg[87]_0 (\share1_reg_reg[87]_0 ),
        .\share1_reg_reg[87]_1 (\share1_reg_reg[87]_1 ),
        .\share2_reg_reg[107] (\share2_reg_reg[107] ),
        .\share2_reg_reg[108] (\share2_reg_reg[108] ),
        .\share2_reg_reg[126] (\share2_reg_reg[126] ),
        .\share2_reg_reg[16] (\share2_reg_reg[16] ),
        .\share2_reg_reg[17] (\share2_reg_reg[17] ),
        .\share2_reg_reg[18] (\share2_reg_reg[18] ),
        .\share2_reg_reg[19] (\share2_reg_reg[19] ),
        .\share2_reg_reg[20] (\share2_reg_reg[20] ),
        .\share2_reg_reg[21] (\share2_reg_reg[21] ),
        .\share2_reg_reg[21]_0 (\share2_reg_reg[23] [0]),
        .\share2_reg_reg[22] (\share2_reg_reg[22] ),
        .\share2_reg_reg[22]_0 (\share2_reg_reg[22]_0 ),
        .\share2_reg_reg[23] (\share2_reg_reg[23] [1]),
        .\share2_reg_reg[23]_0 (\share2_reg_reg[23]_0 ),
        .\share2_reg_reg[48] (sel[0]),
        .\share2_reg_reg[49] (sel[1]),
        .\share2_reg_reg[50] (sel[2]),
        .\share2_reg_reg[51] (sel[3]),
        .\share2_reg_reg[52] (sel[4]),
        .\share2_reg_reg[53] (sel[5]),
        .\share2_reg_reg[54] (\share2_reg_reg[54] ),
        .\share2_reg_reg[55] (\share2_reg_reg[55] ),
        .xtime_return26_in(xtime_return26_in));
endmodule

(* ORIG_REF_NAME = "masked_sbox" *) 
module masked_sbox_2
   (mix_cols_share1,
    \share2_reg_reg[127] ,
    \share2_reg_reg[121] ,
    \share2_reg_reg[124] ,
    \share2_reg_reg[126] ,
    \share2_reg_reg[31] ,
    \share2_reg_reg[30] ,
    sel,
    D,
    \share2_reg_reg[123] ,
    sub_bytes_share1,
    \share1_reg_reg[25] ,
    \share1_reg_reg[28] ,
    \share1_reg[6]_i_2 ,
    \share1_reg[6]_i_2_0 ,
    \share1_reg[7]_i_2 ,
    Q,
    \ciphertext_reg[31] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[24] ,
    \share1_reg_reg[25]_0 ,
    \share1_reg_reg[26] ,
    \share1_reg_reg[25]_1 ,
    \share1_reg_reg[24]_0 ,
    \share1_reg_reg[31] ,
    \share1_reg_reg[27] ,
    \share1_reg_reg[27]_0 ,
    \share1_reg_reg[28]_0 ,
    \share1_reg_reg[24]_1 );
  output [4:0]mix_cols_share1;
  output [3:0]\share2_reg_reg[127] ;
  output \share2_reg_reg[121] ;
  output \share2_reg_reg[124] ;
  output \share2_reg_reg[126] ;
  output \share2_reg_reg[31] ;
  output \share2_reg_reg[30] ;
  output [5:0]sel;
  output [7:0]D;
  output \share2_reg_reg[123] ;
  input [9:0]sub_bytes_share1;
  input \share1_reg_reg[25] ;
  input \share1_reg_reg[28] ;
  input \share1_reg[6]_i_2 ;
  input \share1_reg[6]_i_2_0 ;
  input \share1_reg[7]_i_2 ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[31] ;
  input [7:0]key_IBUF;
  input [7:0]plaintext_IBUF;
  input [7:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[24] ;
  input \share1_reg_reg[25]_0 ;
  input \share1_reg_reg[26] ;
  input \share1_reg_reg[25]_1 ;
  input [7:0]\share1_reg_reg[24]_0 ;
  input [4:0]\share1_reg_reg[31] ;
  input \share1_reg_reg[27] ;
  input \share1_reg_reg[27]_0 ;
  input \share1_reg_reg[28]_0 ;
  input [1:0]\share1_reg_reg[24]_1 ;

  wire [7:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[31] ;
  wire [7:0]key_IBUF;
  wire [7:0]mask_in_IBUF;
  wire [4:0]mix_cols_share1;
  wire [7:0]plaintext_IBUF;
  wire [5:0]sel;
  wire \share1_reg[6]_i_2 ;
  wire \share1_reg[6]_i_2_0 ;
  wire \share1_reg[7]_i_2 ;
  wire [1:0]\share1_reg_reg[24] ;
  wire [7:0]\share1_reg_reg[24]_0 ;
  wire [1:0]\share1_reg_reg[24]_1 ;
  wire \share1_reg_reg[25] ;
  wire \share1_reg_reg[25]_0 ;
  wire \share1_reg_reg[25]_1 ;
  wire \share1_reg_reg[26] ;
  wire \share1_reg_reg[27] ;
  wire \share1_reg_reg[27]_0 ;
  wire \share1_reg_reg[28] ;
  wire \share1_reg_reg[28]_0 ;
  wire [4:0]\share1_reg_reg[31] ;
  wire \share2_reg_reg[121] ;
  wire \share2_reg_reg[123] ;
  wire \share2_reg_reg[124] ;
  wire \share2_reg_reg[126] ;
  wire [3:0]\share2_reg_reg[127] ;
  wire \share2_reg_reg[30] ;
  wire \share2_reg_reg[31] ;
  wire [9:0]sub_bytes_share1;

  sbox_26 u_sbox_core
       (.D(D),
        .Q(Q),
        .\ciphertext_reg[31] (\ciphertext_reg[31] ),
        .key_IBUF(key_IBUF),
        .mask_in_IBUF(mask_in_IBUF),
        .mix_cols_share1(mix_cols_share1),
        .plaintext_IBUF(plaintext_IBUF),
        .\share1_reg[6]_i_2 (\share1_reg[6]_i_2 ),
        .\share1_reg[6]_i_2_0 (\share1_reg[6]_i_2_0 ),
        .\share1_reg[7]_i_2 (\share1_reg[7]_i_2 ),
        .\share1_reg_reg[24] (\share1_reg_reg[24] ),
        .\share1_reg_reg[24]_0 (\share1_reg_reg[24]_0 ),
        .\share1_reg_reg[24]_1 (\share1_reg_reg[24]_1 ),
        .\share1_reg_reg[25] (\share1_reg_reg[25] ),
        .\share1_reg_reg[25]_0 (\share1_reg_reg[25]_0 ),
        .\share1_reg_reg[25]_1 (\share1_reg_reg[25]_1 ),
        .\share1_reg_reg[26] (\share1_reg_reg[26] ),
        .\share1_reg_reg[27] (\share1_reg_reg[27] ),
        .\share1_reg_reg[27]_0 (\share1_reg_reg[27]_0 ),
        .\share1_reg_reg[28] (\share1_reg_reg[28] ),
        .\share1_reg_reg[28]_0 (\share1_reg_reg[28]_0 ),
        .\share1_reg_reg[31] (\share1_reg_reg[31] ),
        .\share2_reg_reg[121] (\share2_reg_reg[121] ),
        .\share2_reg_reg[123] (\share2_reg_reg[123] ),
        .\share2_reg_reg[124] (\share2_reg_reg[124] ),
        .\share2_reg_reg[125] (\share2_reg_reg[127] [2:0]),
        .\share2_reg_reg[126] (\share2_reg_reg[126] ),
        .\share2_reg_reg[127] (\share2_reg_reg[127] [3]),
        .\share2_reg_reg[24] (sel[0]),
        .\share2_reg_reg[25] (sel[1]),
        .\share2_reg_reg[26] (sel[2]),
        .\share2_reg_reg[27] (sel[3]),
        .\share2_reg_reg[28] (sel[4]),
        .\share2_reg_reg[29] (sel[5]),
        .\share2_reg_reg[30] (\share2_reg_reg[30] ),
        .\share2_reg_reg[31] (\share2_reg_reg[31] ),
        .sub_bytes_share1(sub_bytes_share1));
endmodule

(* ORIG_REF_NAME = "masked_sbox" *) 
module masked_sbox_3
   (post_linear_share1,
    \share2_reg_reg[113] ,
    sub_bytes_share1,
    mix_cols_share1,
    \share2_reg_reg[113]_0 ,
    \share2_reg_reg[115] ,
    \share2_reg_reg[115]_0 ,
    \share2_reg_reg[116] ,
    \share2_reg_reg[116]_0 ,
    \share2_reg_reg[118] ,
    \share2_reg_reg[23] ,
    \share2_reg_reg[22] ,
    sel,
    D,
    \share1_reg_reg[48] ,
    \share1_reg[49]_i_2 ,
    \share1_reg[49]_i_2_0 ,
    \share1_reg_reg[55] ,
    \share1_reg[51]_i_2 ,
    \share1_reg[51]_i_2_0 ,
    \share1_reg[58]_i_2 ,
    \share1_reg[52]_i_2 ,
    \share1_reg[52]_i_2_0 ,
    \share1_reg[60]_i_2 ,
    \share1_reg[61]_i_2 ,
    \share1_reg[62]_i_2 ,
    \share1_reg_reg[54] ,
    \share1_reg[63]_i_2 ,
    Q,
    \ciphertext_reg[23] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[48]_0 ,
    \share1_reg_reg[54]_0 ,
    \share1_reg_reg[48]_1 ,
    \share1_reg_reg[55]_0 ,
    \share1_reg_reg[50] ,
    \share1_reg_reg[53] ,
    \share1_reg_reg[54]_1 ,
    \share1_reg_reg[55]_1 );
  output [2:0]post_linear_share1;
  output \share2_reg_reg[113] ;
  output [3:0]sub_bytes_share1;
  output [4:0]mix_cols_share1;
  output \share2_reg_reg[113]_0 ;
  output \share2_reg_reg[115] ;
  output \share2_reg_reg[115]_0 ;
  output \share2_reg_reg[116] ;
  output \share2_reg_reg[116]_0 ;
  output \share2_reg_reg[118] ;
  output \share2_reg_reg[23] ;
  output \share2_reg_reg[22] ;
  output [5:0]sel;
  output [4:0]D;
  input \share1_reg_reg[48] ;
  input \share1_reg[49]_i_2 ;
  input \share1_reg[49]_i_2_0 ;
  input [11:0]\share1_reg_reg[55] ;
  input \share1_reg[51]_i_2 ;
  input \share1_reg[51]_i_2_0 ;
  input \share1_reg[58]_i_2 ;
  input \share1_reg[52]_i_2 ;
  input \share1_reg[52]_i_2_0 ;
  input \share1_reg[60]_i_2 ;
  input \share1_reg[61]_i_2 ;
  input \share1_reg[62]_i_2 ;
  input \share1_reg_reg[54] ;
  input \share1_reg[63]_i_2 ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[23] ;
  input [4:0]key_IBUF;
  input [4:0]plaintext_IBUF;
  input [4:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[48]_0 ;
  input \share1_reg_reg[54]_0 ;
  input \share1_reg_reg[48]_1 ;
  input [4:0]\share1_reg_reg[55]_0 ;
  input \share1_reg_reg[50] ;
  input \share1_reg_reg[53] ;
  input \share1_reg_reg[54]_1 ;
  input \share1_reg_reg[55]_1 ;

  wire [4:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[23] ;
  wire [4:0]key_IBUF;
  wire [4:0]mask_in_IBUF;
  wire [4:0]mix_cols_share1;
  wire [4:0]plaintext_IBUF;
  wire [2:0]post_linear_share1;
  wire [5:0]sel;
  wire \share1_reg[49]_i_2 ;
  wire \share1_reg[49]_i_2_0 ;
  wire \share1_reg[51]_i_2 ;
  wire \share1_reg[51]_i_2_0 ;
  wire \share1_reg[52]_i_2 ;
  wire \share1_reg[52]_i_2_0 ;
  wire \share1_reg[58]_i_2 ;
  wire \share1_reg[60]_i_2 ;
  wire \share1_reg[61]_i_2 ;
  wire \share1_reg[62]_i_2 ;
  wire \share1_reg[63]_i_2 ;
  wire \share1_reg_reg[48] ;
  wire [1:0]\share1_reg_reg[48]_0 ;
  wire \share1_reg_reg[48]_1 ;
  wire \share1_reg_reg[50] ;
  wire \share1_reg_reg[53] ;
  wire \share1_reg_reg[54] ;
  wire \share1_reg_reg[54]_0 ;
  wire \share1_reg_reg[54]_1 ;
  wire [11:0]\share1_reg_reg[55] ;
  wire [4:0]\share1_reg_reg[55]_0 ;
  wire \share1_reg_reg[55]_1 ;
  wire \share2_reg_reg[113] ;
  wire \share2_reg_reg[113]_0 ;
  wire \share2_reg_reg[115] ;
  wire \share2_reg_reg[115]_0 ;
  wire \share2_reg_reg[116] ;
  wire \share2_reg_reg[116]_0 ;
  wire \share2_reg_reg[118] ;
  wire \share2_reg_reg[22] ;
  wire \share2_reg_reg[23] ;
  wire [3:0]sub_bytes_share1;

  sbox_25 u_sbox_core
       (.D(D),
        .Q(Q),
        .\ciphertext_reg[23] (\ciphertext_reg[23] ),
        .key_IBUF(key_IBUF),
        .mask_in_IBUF(mask_in_IBUF),
        .mix_cols_share1(mix_cols_share1),
        .plaintext_IBUF(plaintext_IBUF),
        .post_linear_share1(post_linear_share1),
        .\share1_reg[49]_i_2 (\share1_reg[49]_i_2 ),
        .\share1_reg[49]_i_2_0 (\share1_reg[49]_i_2_0 ),
        .\share1_reg[51]_i_2 (\share1_reg[51]_i_2 ),
        .\share1_reg[51]_i_2_0 (\share1_reg[51]_i_2_0 ),
        .\share1_reg[52]_i_2 (\share1_reg[52]_i_2 ),
        .\share1_reg[52]_i_2_0 (\share1_reg[52]_i_2_0 ),
        .\share1_reg[58]_i_2 (\share1_reg[58]_i_2 ),
        .\share1_reg[60]_i_2 (\share1_reg[60]_i_2 ),
        .\share1_reg[61]_i_2 (\share1_reg[61]_i_2 ),
        .\share1_reg[62]_i_2 (\share1_reg[62]_i_2 ),
        .\share1_reg[63]_i_2 (\share1_reg[63]_i_2 ),
        .\share1_reg_reg[48] (\share1_reg_reg[48] ),
        .\share1_reg_reg[48]_0 (\share1_reg_reg[48]_0 ),
        .\share1_reg_reg[48]_1 (\share1_reg_reg[48]_1 ),
        .\share1_reg_reg[50] (\share1_reg_reg[50] ),
        .\share1_reg_reg[53] (\share1_reg_reg[53] ),
        .\share1_reg_reg[54] (\share1_reg_reg[54] ),
        .\share1_reg_reg[54]_0 (\share1_reg_reg[54]_0 ),
        .\share1_reg_reg[54]_1 (\share1_reg_reg[54]_1 ),
        .\share1_reg_reg[55] (\share1_reg_reg[55] ),
        .\share1_reg_reg[55]_0 (\share1_reg_reg[55]_0 ),
        .\share1_reg_reg[55]_1 (\share1_reg_reg[55]_1 ),
        .\share2_reg_reg[112] (sub_bytes_share1[0]),
        .\share2_reg_reg[113] (\share2_reg_reg[113] ),
        .\share2_reg_reg[113]_0 (\share2_reg_reg[113]_0 ),
        .\share2_reg_reg[114] (sub_bytes_share1[1]),
        .\share2_reg_reg[115] (\share2_reg_reg[115] ),
        .\share2_reg_reg[115]_0 (\share2_reg_reg[115]_0 ),
        .\share2_reg_reg[116] (\share2_reg_reg[116] ),
        .\share2_reg_reg[116]_0 (\share2_reg_reg[116]_0 ),
        .\share2_reg_reg[117] (sub_bytes_share1[2]),
        .\share2_reg_reg[118] (\share2_reg_reg[118] ),
        .\share2_reg_reg[119] (sub_bytes_share1[3]),
        .\share2_reg_reg[16] (sel[0]),
        .\share2_reg_reg[17] (sel[1]),
        .\share2_reg_reg[18] (sel[2]),
        .\share2_reg_reg[19] (sel[3]),
        .\share2_reg_reg[20] (sel[4]),
        .\share2_reg_reg[21] (sel[5]),
        .\share2_reg_reg[22] (\share2_reg_reg[22] ),
        .\share2_reg_reg[23] (\share2_reg_reg[23] ));
endmodule

(* ORIG_REF_NAME = "masked_sbox" *) 
module masked_sbox_4
   (\share2_reg_reg[57] ,
    sub_bytes_share1,
    \share2_reg_reg[59] ,
    \share2_reg_reg[60] ,
    \share2_reg_reg[107] ,
    \share2_reg_reg[15] ,
    \share2_reg_reg[14] ,
    sel,
    D,
    \share2_reg_reg[105] ,
    \share2_reg_reg[108] ,
    \share2_reg_reg[110] ,
    \share1_reg[81]_i_2 ,
    \share1_reg[81]_i_2_0 ,
    \share1_reg[83]_i_5 ,
    \share1_reg[83]_i_5_0 ,
    \share1_reg[84]_i_5 ,
    \share1_reg_reg[77] ,
    Q,
    \ciphertext_reg[15] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[72] ,
    \share1_reg_reg[73] ,
    \share1_reg_reg[73]_0 ,
    \share1_reg_reg[73]_1 ,
    \share1_reg_reg[79] ,
    \share1_reg_reg[72]_0 ,
    \share1_reg_reg[72]_1 ,
    \share1_reg_reg[74] ,
    \share1_reg_reg[74]_0 ,
    \share1_reg_reg[75] ,
    \share1_reg_reg[76] ,
    \share1_reg_reg[78] ,
    \share1_reg_reg[77]_0 ,
    \share1_reg_reg[78]_0 ,
    \share1_reg_reg[78]_1 ,
    \share1_reg_reg[79]_0 ,
    \share1_reg_reg[79]_1 );
  output \share2_reg_reg[57] ;
  output [3:0]sub_bytes_share1;
  output \share2_reg_reg[59] ;
  output \share2_reg_reg[60] ;
  output \share2_reg_reg[107] ;
  output \share2_reg_reg[15] ;
  output \share2_reg_reg[14] ;
  output [5:0]sel;
  output [7:0]D;
  output \share2_reg_reg[105] ;
  output \share2_reg_reg[108] ;
  output \share2_reg_reg[110] ;
  input \share1_reg[81]_i_2 ;
  input \share1_reg[81]_i_2_0 ;
  input \share1_reg[83]_i_5 ;
  input \share1_reg[83]_i_5_0 ;
  input \share1_reg[84]_i_5 ;
  input \share1_reg_reg[77] ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[15] ;
  input [7:0]key_IBUF;
  input [7:0]plaintext_IBUF;
  input [7:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[72] ;
  input \share1_reg_reg[73] ;
  input \share1_reg_reg[73]_0 ;
  input \share1_reg_reg[73]_1 ;
  input [7:0]\share1_reg_reg[79] ;
  input \share1_reg_reg[72]_0 ;
  input \share1_reg_reg[72]_1 ;
  input \share1_reg_reg[74] ;
  input \share1_reg_reg[74]_0 ;
  input \share1_reg_reg[75] ;
  input \share1_reg_reg[76] ;
  input [2:0]\share1_reg_reg[78] ;
  input \share1_reg_reg[77]_0 ;
  input \share1_reg_reg[78]_0 ;
  input \share1_reg_reg[78]_1 ;
  input \share1_reg_reg[79]_0 ;
  input \share1_reg_reg[79]_1 ;

  wire [7:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[15] ;
  wire [7:0]key_IBUF;
  wire [7:0]mask_in_IBUF;
  wire [7:0]plaintext_IBUF;
  wire [5:0]sel;
  wire \share1_reg[81]_i_2 ;
  wire \share1_reg[81]_i_2_0 ;
  wire \share1_reg[83]_i_5 ;
  wire \share1_reg[83]_i_5_0 ;
  wire \share1_reg[84]_i_5 ;
  wire [1:0]\share1_reg_reg[72] ;
  wire \share1_reg_reg[72]_0 ;
  wire \share1_reg_reg[72]_1 ;
  wire \share1_reg_reg[73] ;
  wire \share1_reg_reg[73]_0 ;
  wire \share1_reg_reg[73]_1 ;
  wire \share1_reg_reg[74] ;
  wire \share1_reg_reg[74]_0 ;
  wire \share1_reg_reg[75] ;
  wire \share1_reg_reg[76] ;
  wire \share1_reg_reg[77] ;
  wire \share1_reg_reg[77]_0 ;
  wire [2:0]\share1_reg_reg[78] ;
  wire \share1_reg_reg[78]_0 ;
  wire \share1_reg_reg[78]_1 ;
  wire [7:0]\share1_reg_reg[79] ;
  wire \share1_reg_reg[79]_0 ;
  wire \share1_reg_reg[79]_1 ;
  wire \share2_reg_reg[105] ;
  wire \share2_reg_reg[107] ;
  wire \share2_reg_reg[108] ;
  wire \share2_reg_reg[110] ;
  wire \share2_reg_reg[14] ;
  wire \share2_reg_reg[15] ;
  wire \share2_reg_reg[57] ;
  wire \share2_reg_reg[59] ;
  wire \share2_reg_reg[60] ;
  wire [3:0]sub_bytes_share1;

  sbox_24 u_sbox_core
       (.D(D),
        .Q(Q),
        .\ciphertext_reg[15] (\ciphertext_reg[15] ),
        .key_IBUF(key_IBUF),
        .mask_in_IBUF(mask_in_IBUF),
        .plaintext_IBUF(plaintext_IBUF),
        .\share1_reg[81]_i_2 (\share1_reg[81]_i_2 ),
        .\share1_reg[81]_i_2_0 (\share1_reg[81]_i_2_0 ),
        .\share1_reg[83]_i_5 (\share1_reg[83]_i_5 ),
        .\share1_reg[83]_i_5_0 (\share1_reg[83]_i_5_0 ),
        .\share1_reg[84]_i_5 (\share1_reg[84]_i_5 ),
        .\share1_reg_reg[72] (\share1_reg_reg[72] ),
        .\share1_reg_reg[72]_0 (\share1_reg_reg[72]_0 ),
        .\share1_reg_reg[72]_1 (\share1_reg_reg[72]_1 ),
        .\share1_reg_reg[73] (\share1_reg_reg[73] ),
        .\share1_reg_reg[73]_0 (\share1_reg_reg[73]_0 ),
        .\share1_reg_reg[73]_1 (\share1_reg_reg[73]_1 ),
        .\share1_reg_reg[74] (\share1_reg_reg[74] ),
        .\share1_reg_reg[74]_0 (\share1_reg_reg[74]_0 ),
        .\share1_reg_reg[75] (\share1_reg_reg[75] ),
        .\share1_reg_reg[76] (\share1_reg_reg[76] ),
        .\share1_reg_reg[77] (\share1_reg_reg[77] ),
        .\share1_reg_reg[77]_0 (\share1_reg_reg[77]_0 ),
        .\share1_reg_reg[78] (\share1_reg_reg[78] ),
        .\share1_reg_reg[78]_0 (\share1_reg_reg[78]_0 ),
        .\share1_reg_reg[78]_1 (\share1_reg_reg[78]_1 ),
        .\share1_reg_reg[79] (\share1_reg_reg[79] ),
        .\share1_reg_reg[79]_0 (\share1_reg_reg[79]_0 ),
        .\share1_reg_reg[79]_1 (\share1_reg_reg[79]_1 ),
        .\share2_reg_reg[105] (\share2_reg_reg[105] ),
        .\share2_reg_reg[107] (\share2_reg_reg[107] ),
        .\share2_reg_reg[108] (\share2_reg_reg[108] ),
        .\share2_reg_reg[10] (sel[2]),
        .\share2_reg_reg[110] (\share2_reg_reg[110] ),
        .\share2_reg_reg[111] (sub_bytes_share1[3]),
        .\share2_reg_reg[11] (sel[3]),
        .\share2_reg_reg[12] (sel[4]),
        .\share2_reg_reg[13] (sel[5]),
        .\share2_reg_reg[14] (\share2_reg_reg[14] ),
        .\share2_reg_reg[15] (\share2_reg_reg[15] ),
        .\share2_reg_reg[57] (\share2_reg_reg[57] ),
        .\share2_reg_reg[59] (\share2_reg_reg[59] ),
        .\share2_reg_reg[60] (\share2_reg_reg[60] ),
        .\share2_reg_reg[8] (sel[0]),
        .\share2_reg_reg[9] (sel[1]),
        .sub_bytes_share1(sub_bytes_share1[2:0]));
endmodule

(* ORIG_REF_NAME = "masked_sbox" *) 
module masked_sbox_5
   (post_linear_share1,
    \share2_reg_reg[97] ,
    \share2_reg_reg[103] ,
    mix_cols_share1,
    \share2_reg_reg[103]_0 ,
    \share2_reg_reg[99] ,
    \share2_reg_reg[103]_1 ,
    \share2_reg_reg[100] ,
    \share2_reg_reg[103]_2 ,
    \share2_reg_reg[102] ,
    \share2_reg_reg[7] ,
    \share2_reg_reg[6] ,
    sel,
    \share1_reg[103]_i_2 ,
    \share1_reg[97]_i_2 ,
    \share1_reg[97]_i_2_0 ,
    \share1_reg[97]_i_2_1 ,
    sub_bytes_share1,
    \share1_reg[96]_i_2 ,
    \share1_reg[98]_i_2 ,
    \share1_reg[99]_i_2 ,
    \share1_reg[99]_i_2_0 ,
    \share1_reg[99]_i_2_1 ,
    \share1_reg[100]_i_2 ,
    \share1_reg[100]_i_2_0 ,
    \share1_reg[100]_i_2_1 ,
    \share1_reg[101]_i_2 ,
    \share1_reg[102]_i_2 ,
    \share1_reg[102]_i_2_0 ,
    \share1_reg[102]_i_2_1 ,
    \share1_reg[103]_i_2_0 ,
    \share1_reg[110]_i_2 ,
    Q,
    \ciphertext_reg[7] );
  output [7:0]post_linear_share1;
  output \share2_reg_reg[97] ;
  output [3:0]\share2_reg_reg[103] ;
  output [4:0]mix_cols_share1;
  output \share2_reg_reg[103]_0 ;
  output \share2_reg_reg[99] ;
  output \share2_reg_reg[103]_1 ;
  output \share2_reg_reg[100] ;
  output \share2_reg_reg[103]_2 ;
  output \share2_reg_reg[102] ;
  output \share2_reg_reg[7] ;
  output \share2_reg_reg[6] ;
  output [5:0]sel;
  input \share1_reg[103]_i_2 ;
  input \share1_reg[97]_i_2 ;
  input \share1_reg[97]_i_2_0 ;
  input \share1_reg[97]_i_2_1 ;
  input [11:0]sub_bytes_share1;
  input \share1_reg[96]_i_2 ;
  input \share1_reg[98]_i_2 ;
  input \share1_reg[99]_i_2 ;
  input \share1_reg[99]_i_2_0 ;
  input \share1_reg[99]_i_2_1 ;
  input \share1_reg[100]_i_2 ;
  input \share1_reg[100]_i_2_0 ;
  input \share1_reg[100]_i_2_1 ;
  input \share1_reg[101]_i_2 ;
  input \share1_reg[102]_i_2 ;
  input \share1_reg[102]_i_2_0 ;
  input \share1_reg[102]_i_2_1 ;
  input \share1_reg[103]_i_2_0 ;
  input \share1_reg[110]_i_2 ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[7] ;

  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[7] ;
  wire [4:0]mix_cols_share1;
  wire [7:0]post_linear_share1;
  wire [5:0]sel;
  wire \share1_reg[100]_i_2 ;
  wire \share1_reg[100]_i_2_0 ;
  wire \share1_reg[100]_i_2_1 ;
  wire \share1_reg[101]_i_2 ;
  wire \share1_reg[102]_i_2 ;
  wire \share1_reg[102]_i_2_0 ;
  wire \share1_reg[102]_i_2_1 ;
  wire \share1_reg[103]_i_2 ;
  wire \share1_reg[103]_i_2_0 ;
  wire \share1_reg[110]_i_2 ;
  wire \share1_reg[96]_i_2 ;
  wire \share1_reg[97]_i_2 ;
  wire \share1_reg[97]_i_2_0 ;
  wire \share1_reg[97]_i_2_1 ;
  wire \share1_reg[98]_i_2 ;
  wire \share1_reg[99]_i_2 ;
  wire \share1_reg[99]_i_2_0 ;
  wire \share1_reg[99]_i_2_1 ;
  wire \share2_reg_reg[100] ;
  wire \share2_reg_reg[102] ;
  wire [3:0]\share2_reg_reg[103] ;
  wire \share2_reg_reg[103]_0 ;
  wire \share2_reg_reg[103]_1 ;
  wire \share2_reg_reg[103]_2 ;
  wire \share2_reg_reg[6] ;
  wire \share2_reg_reg[7] ;
  wire \share2_reg_reg[97] ;
  wire \share2_reg_reg[99] ;
  wire [11:0]sub_bytes_share1;

  sbox_23 u_sbox_core
       (.Q(Q),
        .\ciphertext_reg[7] (\ciphertext_reg[7] ),
        .mix_cols_share1(mix_cols_share1),
        .post_linear_share1(post_linear_share1),
        .\share1_reg[100]_i_2 (\share1_reg[100]_i_2 ),
        .\share1_reg[100]_i_2_0 (\share1_reg[100]_i_2_0 ),
        .\share1_reg[100]_i_2_1 (\share1_reg[100]_i_2_1 ),
        .\share1_reg[101]_i_2 (\share1_reg[101]_i_2 ),
        .\share1_reg[102]_i_2 (\share1_reg[102]_i_2 ),
        .\share1_reg[102]_i_2_0 (\share1_reg[102]_i_2_0 ),
        .\share1_reg[102]_i_2_1 (\share1_reg[102]_i_2_1 ),
        .\share1_reg[103]_i_2 (\share1_reg[103]_i_2 ),
        .\share1_reg[103]_i_2_0 (\share1_reg[103]_i_2_0 ),
        .\share1_reg[110]_i_2 (\share1_reg[110]_i_2 ),
        .\share1_reg[96]_i_2 (\share1_reg[96]_i_2 ),
        .\share1_reg[97]_i_2 (\share1_reg[97]_i_2 ),
        .\share1_reg[97]_i_2_0 (\share1_reg[97]_i_2_0 ),
        .\share1_reg[97]_i_2_1 (\share1_reg[97]_i_2_1 ),
        .\share1_reg[98]_i_2 (\share1_reg[98]_i_2 ),
        .\share1_reg[99]_i_2 (\share1_reg[99]_i_2 ),
        .\share1_reg[99]_i_2_0 (\share1_reg[99]_i_2_0 ),
        .\share1_reg[99]_i_2_1 (\share1_reg[99]_i_2_1 ),
        .\share2_reg_reg[0] (sel[0]),
        .\share2_reg_reg[100] (\share2_reg_reg[100] ),
        .\share2_reg_reg[101] (\share2_reg_reg[103] [2]),
        .\share2_reg_reg[102] (\share2_reg_reg[102] ),
        .\share2_reg_reg[103] (\share2_reg_reg[103] [3]),
        .\share2_reg_reg[103]_0 (\share2_reg_reg[103]_0 ),
        .\share2_reg_reg[103]_1 (\share2_reg_reg[103]_1 ),
        .\share2_reg_reg[103]_2 (\share2_reg_reg[103]_2 ),
        .\share2_reg_reg[1] (sel[1]),
        .\share2_reg_reg[2] (sel[2]),
        .\share2_reg_reg[3] (sel[3]),
        .\share2_reg_reg[4] (sel[4]),
        .\share2_reg_reg[5] (sel[5]),
        .\share2_reg_reg[6] (\share2_reg_reg[6] ),
        .\share2_reg_reg[7] (\share2_reg_reg[7] ),
        .\share2_reg_reg[96] (\share2_reg_reg[103] [0]),
        .\share2_reg_reg[97] (\share2_reg_reg[97] ),
        .\share2_reg_reg[98] (\share2_reg_reg[103] [1]),
        .\share2_reg_reg[99] (\share2_reg_reg[99] ),
        .sub_bytes_share1(sub_bytes_share1));
endmodule

(* ORIG_REF_NAME = "masked_sbox" *) 
module masked_sbox_6
   (\share2_reg_reg[87] ,
    sub_bytes_share1,
    \share2_reg_reg[81] ,
    post_linear_share1,
    \share2_reg_reg[7] ,
    \share2_reg_reg[119] ,
    \share2_reg_reg[118] ,
    \share2_reg_reg[87]_0 ,
    \share2_reg_reg[83] ,
    \share2_reg_reg[87]_1 ,
    \share2_reg_reg[84] ,
    \share2_reg_reg[86] ,
    sel,
    D,
    \share1_reg_reg[23] ,
    \share1_reg[25]_i_2 ,
    \share1_reg_reg[16] ,
    \share1_reg[17]_i_2 ,
    Q,
    \share1_reg[26]_i_2 ,
    \share1_reg[27]_i_2 ,
    \share1_reg[19]_i_2 ,
    \share1_reg[28]_i_2 ,
    \share1_reg[28]_i_2_0 ,
    \share1_reg[20]_i_2 ,
    \share1_reg[29]_i_2 ,
    \share1_reg[30]_i_2 ,
    \share1_reg_reg[22] ,
    \share1_reg[31]_i_2 ,
    \ciphertext_reg[119] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[16]_0 ,
    \share1_reg_reg[16]_1 ,
    \share1_reg_reg[23]_0 ,
    \share1_reg_reg[18] ,
    \share1_reg_reg[21] ,
    \share1_reg_reg[22]_0 ,
    \share1_reg_reg[23]_1 );
  output \share2_reg_reg[87] ;
  output [3:0]sub_bytes_share1;
  output \share2_reg_reg[81] ;
  output [2:0]post_linear_share1;
  output [4:0]\share2_reg_reg[7] ;
  output \share2_reg_reg[119] ;
  output \share2_reg_reg[118] ;
  output \share2_reg_reg[87]_0 ;
  output \share2_reg_reg[83] ;
  output \share2_reg_reg[87]_1 ;
  output \share2_reg_reg[84] ;
  output \share2_reg_reg[86] ;
  output [5:0]sel;
  output [4:0]D;
  input [11:0]\share1_reg_reg[23] ;
  input \share1_reg[25]_i_2 ;
  input \share1_reg_reg[16] ;
  input \share1_reg[17]_i_2 ;
  input [15:0]Q;
  input \share1_reg[26]_i_2 ;
  input \share1_reg[27]_i_2 ;
  input \share1_reg[19]_i_2 ;
  input \share1_reg[28]_i_2 ;
  input \share1_reg[28]_i_2_0 ;
  input \share1_reg[20]_i_2 ;
  input \share1_reg[29]_i_2 ;
  input \share1_reg[30]_i_2 ;
  input \share1_reg_reg[22] ;
  input \share1_reg[31]_i_2 ;
  input [7:0]\ciphertext_reg[119] ;
  input [4:0]key_IBUF;
  input [4:0]plaintext_IBUF;
  input [4:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[16]_0 ;
  input \share1_reg_reg[16]_1 ;
  input [4:0]\share1_reg_reg[23]_0 ;
  input \share1_reg_reg[18] ;
  input \share1_reg_reg[21] ;
  input \share1_reg_reg[22]_0 ;
  input \share1_reg_reg[23]_1 ;

  wire [4:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[119] ;
  wire [4:0]key_IBUF;
  wire [4:0]mask_in_IBUF;
  wire [4:0]plaintext_IBUF;
  wire [2:0]post_linear_share1;
  wire [5:0]sel;
  wire \share1_reg[17]_i_2 ;
  wire \share1_reg[19]_i_2 ;
  wire \share1_reg[20]_i_2 ;
  wire \share1_reg[25]_i_2 ;
  wire \share1_reg[26]_i_2 ;
  wire \share1_reg[27]_i_2 ;
  wire \share1_reg[28]_i_2 ;
  wire \share1_reg[28]_i_2_0 ;
  wire \share1_reg[29]_i_2 ;
  wire \share1_reg[30]_i_2 ;
  wire \share1_reg[31]_i_2 ;
  wire \share1_reg_reg[16] ;
  wire [1:0]\share1_reg_reg[16]_0 ;
  wire \share1_reg_reg[16]_1 ;
  wire \share1_reg_reg[18] ;
  wire \share1_reg_reg[21] ;
  wire \share1_reg_reg[22] ;
  wire \share1_reg_reg[22]_0 ;
  wire [11:0]\share1_reg_reg[23] ;
  wire [4:0]\share1_reg_reg[23]_0 ;
  wire \share1_reg_reg[23]_1 ;
  wire \share2_reg_reg[118] ;
  wire \share2_reg_reg[119] ;
  wire [4:0]\share2_reg_reg[7] ;
  wire \share2_reg_reg[81] ;
  wire \share2_reg_reg[83] ;
  wire \share2_reg_reg[84] ;
  wire \share2_reg_reg[86] ;
  wire \share2_reg_reg[87] ;
  wire \share2_reg_reg[87]_0 ;
  wire \share2_reg_reg[87]_1 ;
  wire [3:0]sub_bytes_share1;

  sbox_22 u_sbox_core
       (.D(D),
        .Q(Q),
        .\ciphertext_reg[119] (\ciphertext_reg[119] ),
        .key_IBUF(key_IBUF),
        .mask_in_IBUF(mask_in_IBUF),
        .plaintext_IBUF(plaintext_IBUF),
        .post_linear_share1(post_linear_share1),
        .\share1_reg[17]_i_2 (\share1_reg[17]_i_2 ),
        .\share1_reg[19]_i_2 (\share1_reg[19]_i_2 ),
        .\share1_reg[20]_i_2 (\share1_reg[20]_i_2 ),
        .\share1_reg[25]_i_2 (\share1_reg[25]_i_2 ),
        .\share1_reg[26]_i_2 (\share1_reg[26]_i_2 ),
        .\share1_reg[27]_i_2 (\share1_reg[27]_i_2 ),
        .\share1_reg[28]_i_2 (\share1_reg[28]_i_2 ),
        .\share1_reg[28]_i_2_0 (\share1_reg[28]_i_2_0 ),
        .\share1_reg[29]_i_2 (\share1_reg[29]_i_2 ),
        .\share1_reg[30]_i_2 (\share1_reg[30]_i_2 ),
        .\share1_reg[31]_i_2 (\share1_reg[31]_i_2 ),
        .\share1_reg_reg[16] (\share1_reg_reg[16] ),
        .\share1_reg_reg[16]_0 (\share1_reg_reg[16]_0 ),
        .\share1_reg_reg[16]_1 (\share1_reg_reg[16]_1 ),
        .\share1_reg_reg[18] (\share1_reg_reg[18] ),
        .\share1_reg_reg[21] (\share1_reg_reg[21] ),
        .\share1_reg_reg[22] (\share1_reg_reg[22] ),
        .\share1_reg_reg[22]_0 (\share1_reg_reg[22]_0 ),
        .\share1_reg_reg[23] (\share1_reg_reg[23] ),
        .\share1_reg_reg[23]_0 (\share1_reg_reg[23]_0 ),
        .\share1_reg_reg[23]_1 (\share1_reg_reg[23]_1 ),
        .\share2_reg_reg[112] (sel[0]),
        .\share2_reg_reg[113] (sel[1]),
        .\share2_reg_reg[114] (sel[2]),
        .\share2_reg_reg[115] (sel[3]),
        .\share2_reg_reg[116] (sel[4]),
        .\share2_reg_reg[117] (sel[5]),
        .\share2_reg_reg[118] (\share2_reg_reg[118] ),
        .\share2_reg_reg[119] (\share2_reg_reg[119] ),
        .\share2_reg_reg[7] (\share2_reg_reg[7] ),
        .\share2_reg_reg[80] (sub_bytes_share1[0]),
        .\share2_reg_reg[81] (\share2_reg_reg[81] ),
        .\share2_reg_reg[82] (sub_bytes_share1[1]),
        .\share2_reg_reg[83] (\share2_reg_reg[83] ),
        .\share2_reg_reg[84] (\share2_reg_reg[84] ),
        .\share2_reg_reg[85] (sub_bytes_share1[2]),
        .\share2_reg_reg[86] (\share2_reg_reg[86] ),
        .\share2_reg_reg[87] (\share2_reg_reg[87] ),
        .\share2_reg_reg[87]_0 (sub_bytes_share1[3]),
        .\share2_reg_reg[87]_1 (\share2_reg_reg[87]_0 ),
        .\share2_reg_reg[87]_2 (\share2_reg_reg[87]_1 ));
endmodule

(* ORIG_REF_NAME = "masked_sbox" *) 
module masked_sbox_7
   (post_linear_share1,
    \share2_reg_reg[73] ,
    \round_ctr_reg[2] ,
    \share2_reg_reg[33] ,
    \share2_reg_reg[79] ,
    \share2_reg_reg[111] ,
    \share2_reg_reg[110] ,
    \share2_reg_reg[75] ,
    \share2_reg_reg[35] ,
    \share2_reg_reg[76] ,
    \share2_reg_reg[36] ,
    sel,
    \share2_reg_reg[78] ,
    \share1_reg[41]_i_2 ,
    \share1_reg[41]_i_2_0 ,
    \share1_reg[49]_i_3 ,
    \share1_reg[49]_i_3_0 ,
    Q,
    \share1_reg[43]_i_2 ,
    \share1_reg[51]_i_3 ,
    \share1_reg[51]_i_3_0 ,
    \share1_reg[44]_i_2 ,
    \share1_reg[52]_i_3 ,
    \share1_reg[52]_i_3_0 ,
    \ciphertext_reg[111] ,
    \share1_reg[113]_i_3 );
  output [2:0]post_linear_share1;
  output \share2_reg_reg[73] ;
  output \round_ctr_reg[2] ;
  output \share2_reg_reg[33] ;
  output [3:0]\share2_reg_reg[79] ;
  output \share2_reg_reg[111] ;
  output \share2_reg_reg[110] ;
  output \share2_reg_reg[75] ;
  output \share2_reg_reg[35] ;
  output \share2_reg_reg[76] ;
  output \share2_reg_reg[36] ;
  output [5:0]sel;
  output \share2_reg_reg[78] ;
  input [2:0]\share1_reg[41]_i_2 ;
  input \share1_reg[41]_i_2_0 ;
  input \share1_reg[49]_i_3 ;
  input \share1_reg[49]_i_3_0 ;
  input [15:0]Q;
  input \share1_reg[43]_i_2 ;
  input \share1_reg[51]_i_3 ;
  input \share1_reg[51]_i_3_0 ;
  input \share1_reg[44]_i_2 ;
  input \share1_reg[52]_i_3 ;
  input \share1_reg[52]_i_3_0 ;
  input [7:0]\ciphertext_reg[111] ;
  input [3:0]\share1_reg[113]_i_3 ;

  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[111] ;
  wire [2:0]post_linear_share1;
  wire \round_ctr_reg[2] ;
  wire [5:0]sel;
  wire [3:0]\share1_reg[113]_i_3 ;
  wire [2:0]\share1_reg[41]_i_2 ;
  wire \share1_reg[41]_i_2_0 ;
  wire \share1_reg[43]_i_2 ;
  wire \share1_reg[44]_i_2 ;
  wire \share1_reg[49]_i_3 ;
  wire \share1_reg[49]_i_3_0 ;
  wire \share1_reg[51]_i_3 ;
  wire \share1_reg[51]_i_3_0 ;
  wire \share1_reg[52]_i_3 ;
  wire \share1_reg[52]_i_3_0 ;
  wire \share2_reg_reg[110] ;
  wire \share2_reg_reg[111] ;
  wire \share2_reg_reg[33] ;
  wire \share2_reg_reg[35] ;
  wire \share2_reg_reg[36] ;
  wire \share2_reg_reg[73] ;
  wire \share2_reg_reg[75] ;
  wire \share2_reg_reg[76] ;
  wire \share2_reg_reg[78] ;
  wire [3:0]\share2_reg_reg[79] ;

  sbox_21 u_sbox_core
       (.Q(Q),
        .\ciphertext_reg[111] (\ciphertext_reg[111] ),
        .post_linear_share1(post_linear_share1),
        .\round_ctr_reg[2] (\round_ctr_reg[2] ),
        .\share1_reg[113]_i_3 (\share1_reg[113]_i_3 ),
        .\share1_reg[41]_i_2 (\share1_reg[41]_i_2 ),
        .\share1_reg[41]_i_2_0 (\share1_reg[41]_i_2_0 ),
        .\share1_reg[43]_i_2 (\share1_reg[43]_i_2 ),
        .\share1_reg[44]_i_2 (\share1_reg[44]_i_2 ),
        .\share1_reg[49]_i_3 (\share1_reg[49]_i_3 ),
        .\share1_reg[49]_i_3_0 (\share1_reg[49]_i_3_0 ),
        .\share1_reg[51]_i_3 (\share1_reg[51]_i_3 ),
        .\share1_reg[51]_i_3_0 (\share1_reg[51]_i_3_0 ),
        .\share1_reg[52]_i_3 (\share1_reg[52]_i_3 ),
        .\share1_reg[52]_i_3_0 (\share1_reg[52]_i_3_0 ),
        .\share2_reg_reg[104] (sel[0]),
        .\share2_reg_reg[105] (sel[1]),
        .\share2_reg_reg[106] (sel[2]),
        .\share2_reg_reg[107] (sel[3]),
        .\share2_reg_reg[108] (sel[4]),
        .\share2_reg_reg[109] (sel[5]),
        .\share2_reg_reg[110] (\share2_reg_reg[110] ),
        .\share2_reg_reg[111] (\share2_reg_reg[111] ),
        .\share2_reg_reg[33] (\share2_reg_reg[33] ),
        .\share2_reg_reg[35] (\share2_reg_reg[35] ),
        .\share2_reg_reg[36] (\share2_reg_reg[36] ),
        .\share2_reg_reg[73] (\share2_reg_reg[73] ),
        .\share2_reg_reg[75] (\share2_reg_reg[75] ),
        .\share2_reg_reg[76] (\share2_reg_reg[76] ),
        .\share2_reg_reg[77] (\share2_reg_reg[79] [2:0]),
        .\share2_reg_reg[78] (\share2_reg_reg[78] ),
        .\share2_reg_reg[79] (\share2_reg_reg[79] [3]));
endmodule

(* ORIG_REF_NAME = "masked_sbox" *) 
module masked_sbox_8
   (post_linear_share1,
    \share2_reg_reg[65] ,
    \share2_reg_reg[17] ,
    sub_bytes_share1,
    \share2_reg_reg[103] ,
    \share2_reg_reg[102] ,
    \share2_reg_reg[65]_0 ,
    \share2_reg_reg[67] ,
    \share2_reg_reg[19] ,
    \share2_reg_reg[68] ,
    \share2_reg_reg[20] ,
    sel,
    D,
    \share2_reg_reg[70] ,
    \share1_reg_reg[64] ,
    \share1_reg[65]_i_2 ,
    xtime_return21_in,
    \share1_reg[65]_i_2_0 ,
    \share1_reg[73]_i_2 ,
    Q,
    \share1_reg[67]_i_2 ,
    \share1_reg[67]_i_2_0 ,
    \share1_reg[75]_i_2 ,
    \share1_reg[68]_i_2 ,
    \share1_reg[68]_i_2_0 ,
    \share1_reg[76]_i_2 ,
    \ciphertext_reg[103] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[64]_0 ,
    \share1_reg_reg[64]_1 ,
    \share1_reg_reg[64]_2 ,
    \share1_reg_reg[64]_3 ,
    \share1_reg_reg[64]_4 );
  output [2:0]post_linear_share1;
  output \share2_reg_reg[65] ;
  output \share2_reg_reg[17] ;
  output [3:0]sub_bytes_share1;
  output \share2_reg_reg[103] ;
  output \share2_reg_reg[102] ;
  output \share2_reg_reg[65]_0 ;
  output \share2_reg_reg[67] ;
  output \share2_reg_reg[19] ;
  output \share2_reg_reg[68] ;
  output \share2_reg_reg[20] ;
  output [5:0]sel;
  output [0:0]D;
  output \share2_reg_reg[70] ;
  input \share1_reg_reg[64] ;
  input \share1_reg[65]_i_2 ;
  input [2:0]xtime_return21_in;
  input \share1_reg[65]_i_2_0 ;
  input \share1_reg[73]_i_2 ;
  input [15:0]Q;
  input \share1_reg[67]_i_2 ;
  input \share1_reg[67]_i_2_0 ;
  input \share1_reg[75]_i_2 ;
  input \share1_reg[68]_i_2 ;
  input \share1_reg[68]_i_2_0 ;
  input \share1_reg[76]_i_2 ;
  input [7:0]\ciphertext_reg[103] ;
  input [0:0]key_IBUF;
  input [0:0]plaintext_IBUF;
  input [0:0]mask_in_IBUF;
  input [0:0]\share1_reg_reg[64]_0 ;
  input \share1_reg_reg[64]_1 ;
  input \share1_reg_reg[64]_2 ;
  input [0:0]\share1_reg_reg[64]_3 ;
  input [0:0]\share1_reg_reg[64]_4 ;

  wire [0:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[103] ;
  wire [0:0]key_IBUF;
  wire [0:0]mask_in_IBUF;
  wire [0:0]plaintext_IBUF;
  wire [2:0]post_linear_share1;
  wire [5:0]sel;
  wire \share1_reg[65]_i_2 ;
  wire \share1_reg[65]_i_2_0 ;
  wire \share1_reg[67]_i_2 ;
  wire \share1_reg[67]_i_2_0 ;
  wire \share1_reg[68]_i_2 ;
  wire \share1_reg[68]_i_2_0 ;
  wire \share1_reg[73]_i_2 ;
  wire \share1_reg[75]_i_2 ;
  wire \share1_reg[76]_i_2 ;
  wire \share1_reg_reg[64] ;
  wire [0:0]\share1_reg_reg[64]_0 ;
  wire \share1_reg_reg[64]_1 ;
  wire \share1_reg_reg[64]_2 ;
  wire [0:0]\share1_reg_reg[64]_3 ;
  wire [0:0]\share1_reg_reg[64]_4 ;
  wire \share2_reg_reg[102] ;
  wire \share2_reg_reg[103] ;
  wire \share2_reg_reg[17] ;
  wire \share2_reg_reg[19] ;
  wire \share2_reg_reg[20] ;
  wire \share2_reg_reg[65] ;
  wire \share2_reg_reg[65]_0 ;
  wire \share2_reg_reg[67] ;
  wire \share2_reg_reg[68] ;
  wire \share2_reg_reg[70] ;
  wire [3:0]sub_bytes_share1;
  wire [2:0]xtime_return21_in;

  sbox_20 u_sbox_core
       (.D(D),
        .Q(Q),
        .\ciphertext_reg[103] (\ciphertext_reg[103] ),
        .key_IBUF(key_IBUF),
        .mask_in_IBUF(mask_in_IBUF),
        .plaintext_IBUF(plaintext_IBUF),
        .post_linear_share1(post_linear_share1),
        .\share1_reg[65]_i_2 (\share1_reg[65]_i_2 ),
        .\share1_reg[65]_i_2_0 (\share1_reg[65]_i_2_0 ),
        .\share1_reg[67]_i_2 (\share1_reg[67]_i_2 ),
        .\share1_reg[67]_i_2_0 (\share1_reg[67]_i_2_0 ),
        .\share1_reg[68]_i_2 (\share1_reg[68]_i_2 ),
        .\share1_reg[68]_i_2_0 (\share1_reg[68]_i_2_0 ),
        .\share1_reg[73]_i_2 (\share1_reg[73]_i_2 ),
        .\share1_reg[75]_i_2 (\share1_reg[75]_i_2 ),
        .\share1_reg[76]_i_2 (\share1_reg[76]_i_2 ),
        .\share1_reg_reg[64] (\share1_reg_reg[64] ),
        .\share1_reg_reg[64]_0 (\share1_reg_reg[64]_0 ),
        .\share1_reg_reg[64]_1 (\share1_reg_reg[64]_1 ),
        .\share1_reg_reg[64]_2 (\share1_reg_reg[64]_2 ),
        .\share1_reg_reg[64]_3 (\share1_reg_reg[64]_3 ),
        .\share1_reg_reg[64]_4 (\share1_reg_reg[64]_4 ),
        .\share2_reg_reg[100] (sel[4]),
        .\share2_reg_reg[101] (sel[5]),
        .\share2_reg_reg[102] (\share2_reg_reg[102] ),
        .\share2_reg_reg[103] (\share2_reg_reg[103] ),
        .\share2_reg_reg[17] (\share2_reg_reg[17] ),
        .\share2_reg_reg[19] (\share2_reg_reg[19] ),
        .\share2_reg_reg[20] (\share2_reg_reg[20] ),
        .\share2_reg_reg[65] (\share2_reg_reg[65] ),
        .\share2_reg_reg[65]_0 (\share2_reg_reg[65]_0 ),
        .\share2_reg_reg[67] (\share2_reg_reg[67] ),
        .\share2_reg_reg[68] (\share2_reg_reg[68] ),
        .\share2_reg_reg[70] (\share2_reg_reg[70] ),
        .\share2_reg_reg[96] (sel[0]),
        .\share2_reg_reg[97] (sel[1]),
        .\share2_reg_reg[98] (sel[2]),
        .\share2_reg_reg[99] (sel[3]),
        .sub_bytes_share1(sub_bytes_share1),
        .xtime_return21_in(xtime_return21_in));
endmodule

(* ORIG_REF_NAME = "masked_sbox" *) 
module masked_sbox_9
   (post_linear_share1,
    \share2_reg_reg[61] ,
    \share2_reg_reg[56] ,
    \share2_reg_reg[57] ,
    xtime_return21_in,
    \share2_reg_reg[58] ,
    \share2_reg_reg[60] ,
    \share2_reg_reg[61]_0 ,
    \share2_reg_reg[62] ,
    \share2_reg_reg[62]_0 ,
    \share2_reg_reg[63] ,
    \share2_reg_reg[95] ,
    \share2_reg_reg[94] ,
    \share2_reg_reg[59] ,
    sel,
    D,
    \share1_reg[71]_i_2 ,
    \share1_reg_reg[90] ,
    xtime_return26_in,
    \share1_reg[66]_i_2 ,
    \share1_reg[89]_i_2 ,
    \share1_reg[89]_i_2_0 ,
    \share1_reg[74]_i_2 ,
    \share1_reg[69]_i_2 ,
    \share1_reg[77]_i_2 ,
    \share1_reg[70]_i_2 ,
    \share1_reg[70]_i_2_0 ,
    \share1_reg[70]_i_2_1 ,
    \share1_reg[71]_i_2_0 ,
    Q,
    \ciphertext_reg[95] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[93] ,
    \share1_reg_reg[95] ,
    \share1_reg_reg[91] ,
    mix_cols_share1,
    \share1_reg_reg[95]_0 ,
    \share1_reg_reg[91]_0 ,
    \share1_reg_reg[92] );
  output [5:0]post_linear_share1;
  output [0:0]\share2_reg_reg[61] ;
  output \share2_reg_reg[56] ;
  output \share2_reg_reg[57] ;
  output [2:0]xtime_return21_in;
  output \share2_reg_reg[58] ;
  output \share2_reg_reg[60] ;
  output \share2_reg_reg[61]_0 ;
  output \share2_reg_reg[62] ;
  output \share2_reg_reg[62]_0 ;
  output \share2_reg_reg[63] ;
  output \share2_reg_reg[95] ;
  output \share2_reg_reg[94] ;
  output \share2_reg_reg[59] ;
  output [5:0]sel;
  output [5:0]D;
  input [7:0]\share1_reg[71]_i_2 ;
  input \share1_reg_reg[90] ;
  input [0:0]xtime_return26_in;
  input \share1_reg[66]_i_2 ;
  input \share1_reg[89]_i_2 ;
  input \share1_reg[89]_i_2_0 ;
  input \share1_reg[74]_i_2 ;
  input \share1_reg[69]_i_2 ;
  input \share1_reg[77]_i_2 ;
  input \share1_reg[70]_i_2 ;
  input \share1_reg[70]_i_2_0 ;
  input \share1_reg[70]_i_2_1 ;
  input \share1_reg[71]_i_2_0 ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[95] ;
  input [5:0]key_IBUF;
  input [5:0]plaintext_IBUF;
  input [5:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[93] ;
  input \share1_reg_reg[95] ;
  input \share1_reg_reg[91] ;
  input [3:0]mix_cols_share1;
  input [5:0]\share1_reg_reg[95]_0 ;
  input \share1_reg_reg[91]_0 ;
  input \share1_reg_reg[92] ;

  wire [5:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[95] ;
  wire [5:0]key_IBUF;
  wire [5:0]mask_in_IBUF;
  wire [3:0]mix_cols_share1;
  wire [5:0]plaintext_IBUF;
  wire [5:0]post_linear_share1;
  wire [5:0]sel;
  wire \share1_reg[66]_i_2 ;
  wire \share1_reg[69]_i_2 ;
  wire \share1_reg[70]_i_2 ;
  wire \share1_reg[70]_i_2_0 ;
  wire \share1_reg[70]_i_2_1 ;
  wire [7:0]\share1_reg[71]_i_2 ;
  wire \share1_reg[71]_i_2_0 ;
  wire \share1_reg[74]_i_2 ;
  wire \share1_reg[77]_i_2 ;
  wire \share1_reg[89]_i_2 ;
  wire \share1_reg[89]_i_2_0 ;
  wire \share1_reg_reg[90] ;
  wire \share1_reg_reg[91] ;
  wire \share1_reg_reg[91]_0 ;
  wire \share1_reg_reg[92] ;
  wire [1:0]\share1_reg_reg[93] ;
  wire \share1_reg_reg[95] ;
  wire [5:0]\share1_reg_reg[95]_0 ;
  wire \share2_reg_reg[56] ;
  wire \share2_reg_reg[57] ;
  wire \share2_reg_reg[58] ;
  wire \share2_reg_reg[59] ;
  wire \share2_reg_reg[60] ;
  wire [0:0]\share2_reg_reg[61] ;
  wire \share2_reg_reg[61]_0 ;
  wire \share2_reg_reg[62] ;
  wire \share2_reg_reg[62]_0 ;
  wire \share2_reg_reg[63] ;
  wire \share2_reg_reg[94] ;
  wire \share2_reg_reg[95] ;
  wire [2:0]xtime_return21_in;
  wire [0:0]xtime_return26_in;

  sbox_19 u_sbox_core
       (.D(D),
        .Q(Q),
        .\ciphertext_reg[95] (\ciphertext_reg[95] ),
        .key_IBUF(key_IBUF),
        .mask_in_IBUF(mask_in_IBUF),
        .mix_cols_share1(mix_cols_share1),
        .plaintext_IBUF(plaintext_IBUF),
        .post_linear_share1(post_linear_share1),
        .\share1_reg[66]_i_2 (\share1_reg[66]_i_2 ),
        .\share1_reg[69]_i_2 (\share1_reg[69]_i_2 ),
        .\share1_reg[70]_i_2 (\share1_reg[70]_i_2 ),
        .\share1_reg[70]_i_2_0 (\share1_reg[70]_i_2_0 ),
        .\share1_reg[70]_i_2_1 (\share1_reg[70]_i_2_1 ),
        .\share1_reg[71]_i_2 (\share1_reg[71]_i_2 ),
        .\share1_reg[71]_i_2_0 (\share1_reg[71]_i_2_0 ),
        .\share1_reg[74]_i_2 (\share1_reg[74]_i_2 ),
        .\share1_reg[77]_i_2 (\share1_reg[77]_i_2 ),
        .\share1_reg[89]_i_2 (\share1_reg[89]_i_2 ),
        .\share1_reg[89]_i_2_0 (\share1_reg[89]_i_2_0 ),
        .\share1_reg_reg[90] (\share1_reg_reg[90] ),
        .\share1_reg_reg[91] (\share1_reg_reg[91] ),
        .\share1_reg_reg[91]_0 (\share1_reg_reg[91]_0 ),
        .\share1_reg_reg[92] (\share1_reg_reg[92] ),
        .\share1_reg_reg[93] (\share1_reg_reg[93] ),
        .\share1_reg_reg[95] (\share1_reg_reg[95] ),
        .\share1_reg_reg[95]_0 (\share1_reg_reg[95]_0 ),
        .\share2_reg_reg[56] (\share2_reg_reg[56] ),
        .\share2_reg_reg[57] (\share2_reg_reg[57] ),
        .\share2_reg_reg[58] (\share2_reg_reg[58] ),
        .\share2_reg_reg[59] (\share2_reg_reg[59] ),
        .\share2_reg_reg[60] (\share2_reg_reg[60] ),
        .\share2_reg_reg[61] (\share2_reg_reg[61] ),
        .\share2_reg_reg[61]_0 (\share2_reg_reg[61]_0 ),
        .\share2_reg_reg[62] (\share2_reg_reg[62] ),
        .\share2_reg_reg[62]_0 (\share2_reg_reg[62]_0 ),
        .\share2_reg_reg[63] (\share2_reg_reg[63] ),
        .\share2_reg_reg[88] (sel[0]),
        .\share2_reg_reg[89] (sel[1]),
        .\share2_reg_reg[90] (sel[2]),
        .\share2_reg_reg[91] (sel[3]),
        .\share2_reg_reg[92] (sel[4]),
        .\share2_reg_reg[93] (sel[5]),
        .\share2_reg_reg[94] (\share2_reg_reg[94] ),
        .\share2_reg_reg[95] (\share2_reg_reg[95] ),
        .xtime_return21_in(xtime_return21_in),
        .xtime_return26_in(xtime_return26_in));
endmodule

module masked_sub_bytes
   (post_linear_share1,
    \round_ctr_reg[2] ,
    ciphertext0,
    \round_ctr_reg[2]_0 ,
    D,
    Q,
    \ciphertext_reg[127] ,
    \share2_reg_reg[126] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[85] ,
    \share1_reg_reg[87] ,
    \share1_reg_reg[81] ,
    \share1_reg_reg[127] ,
    \share1_reg_reg[95] ,
    \share1_reg_reg[60] );
  output [33:0]post_linear_share1;
  output \round_ctr_reg[2] ;
  output [127:0]ciphertext0;
  output \round_ctr_reg[2]_0 ;
  output [93:0]D;
  input [127:0]Q;
  input [127:0]\ciphertext_reg[127] ;
  input [3:0]\share2_reg_reg[126] ;
  input [93:0]key_IBUF;
  input [93:0]plaintext_IBUF;
  input [93:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[85] ;
  input \share1_reg_reg[87] ;
  input \share1_reg_reg[81] ;
  input [20:0]\share1_reg_reg[127] ;
  input [68:0]\share1_reg_reg[95] ;
  input [4:0]\share1_reg_reg[60] ;

  wire [93:0]D;
  wire [127:0]Q;
  wire [127:0]ciphertext0;
  wire [127:0]\ciphertext_reg[127] ;
  wire \gen_masked_sbox[0].u_masked_sbox_n_0 ;
  wire \gen_masked_sbox[0].u_masked_sbox_n_24 ;
  wire \gen_masked_sbox[0].u_masked_sbox_n_25 ;
  wire \gen_masked_sbox[0].u_masked_sbox_n_26 ;
  wire \gen_masked_sbox[0].u_masked_sbox_n_7 ;
  wire \gen_masked_sbox[0].u_masked_sbox_n_8 ;
  wire \gen_masked_sbox[0].u_masked_sbox_n_9 ;
  wire \gen_masked_sbox[10].u_masked_sbox_n_0 ;
  wire \gen_masked_sbox[10].u_masked_sbox_n_31 ;
  wire \gen_masked_sbox[10].u_masked_sbox_n_32 ;
  wire \gen_masked_sbox[10].u_masked_sbox_n_33 ;
  wire \gen_masked_sbox[10].u_masked_sbox_n_5 ;
  wire \gen_masked_sbox[10].u_masked_sbox_n_6 ;
  wire \gen_masked_sbox[10].u_masked_sbox_n_7 ;
  wire \gen_masked_sbox[10].u_masked_sbox_n_8 ;
  wire \gen_masked_sbox[10].u_masked_sbox_n_9 ;
  wire \gen_masked_sbox[11].u_masked_sbox_n_10 ;
  wire \gen_masked_sbox[11].u_masked_sbox_n_32 ;
  wire \gen_masked_sbox[11].u_masked_sbox_n_33 ;
  wire \gen_masked_sbox[11].u_masked_sbox_n_4 ;
  wire \gen_masked_sbox[11].u_masked_sbox_n_5 ;
  wire \gen_masked_sbox[11].u_masked_sbox_n_6 ;
  wire \gen_masked_sbox[11].u_masked_sbox_n_7 ;
  wire \gen_masked_sbox[11].u_masked_sbox_n_8 ;
  wire \gen_masked_sbox[11].u_masked_sbox_n_9 ;
  wire \gen_masked_sbox[12].u_masked_sbox_n_10 ;
  wire \gen_masked_sbox[12].u_masked_sbox_n_11 ;
  wire \gen_masked_sbox[12].u_masked_sbox_n_28 ;
  wire \gen_masked_sbox[12].u_masked_sbox_n_9 ;
  wire \gen_masked_sbox[13].u_masked_sbox_n_13 ;
  wire \gen_masked_sbox[13].u_masked_sbox_n_14 ;
  wire \gen_masked_sbox[13].u_masked_sbox_n_15 ;
  wire \gen_masked_sbox[13].u_masked_sbox_n_16 ;
  wire \gen_masked_sbox[13].u_masked_sbox_n_17 ;
  wire \gen_masked_sbox[13].u_masked_sbox_n_18 ;
  wire \gen_masked_sbox[13].u_masked_sbox_n_3 ;
  wire \gen_masked_sbox[14].u_masked_sbox_n_0 ;
  wire \gen_masked_sbox[14].u_masked_sbox_n_24 ;
  wire \gen_masked_sbox[14].u_masked_sbox_n_25 ;
  wire \gen_masked_sbox[14].u_masked_sbox_n_26 ;
  wire \gen_masked_sbox[14].u_masked_sbox_n_5 ;
  wire \gen_masked_sbox[14].u_masked_sbox_n_6 ;
  wire \gen_masked_sbox[14].u_masked_sbox_n_7 ;
  wire \gen_masked_sbox[15].u_masked_sbox_n_18 ;
  wire \gen_masked_sbox[15].u_masked_sbox_n_19 ;
  wire \gen_masked_sbox[15].u_masked_sbox_n_20 ;
  wire \gen_masked_sbox[15].u_masked_sbox_n_21 ;
  wire \gen_masked_sbox[15].u_masked_sbox_n_22 ;
  wire \gen_masked_sbox[15].u_masked_sbox_n_23 ;
  wire \gen_masked_sbox[15].u_masked_sbox_n_8 ;
  wire \gen_masked_sbox[1].u_masked_sbox_n_0 ;
  wire \gen_masked_sbox[1].u_masked_sbox_n_16 ;
  wire \gen_masked_sbox[1].u_masked_sbox_n_17 ;
  wire \gen_masked_sbox[1].u_masked_sbox_n_18 ;
  wire \gen_masked_sbox[1].u_masked_sbox_n_19 ;
  wire \gen_masked_sbox[1].u_masked_sbox_n_20 ;
  wire \gen_masked_sbox[1].u_masked_sbox_n_5 ;
  wire \gen_masked_sbox[2].u_masked_sbox_n_12 ;
  wire \gen_masked_sbox[2].u_masked_sbox_n_13 ;
  wire \gen_masked_sbox[2].u_masked_sbox_n_14 ;
  wire \gen_masked_sbox[2].u_masked_sbox_n_15 ;
  wire \gen_masked_sbox[2].u_masked_sbox_n_22 ;
  wire \gen_masked_sbox[2].u_masked_sbox_n_3 ;
  wire \gen_masked_sbox[2].u_masked_sbox_n_4 ;
  wire \gen_masked_sbox[2].u_masked_sbox_n_5 ;
  wire \gen_masked_sbox[3].u_masked_sbox_n_11 ;
  wire \gen_masked_sbox[3].u_masked_sbox_n_12 ;
  wire \gen_masked_sbox[3].u_masked_sbox_n_13 ;
  wire \gen_masked_sbox[3].u_masked_sbox_n_14 ;
  wire \gen_masked_sbox[3].u_masked_sbox_n_15 ;
  wire \gen_masked_sbox[3].u_masked_sbox_n_23 ;
  wire \gen_masked_sbox[3].u_masked_sbox_n_3 ;
  wire \gen_masked_sbox[3].u_masked_sbox_n_4 ;
  wire \gen_masked_sbox[4].u_masked_sbox_n_12 ;
  wire \gen_masked_sbox[4].u_masked_sbox_n_13 ;
  wire \gen_masked_sbox[4].u_masked_sbox_n_14 ;
  wire \gen_masked_sbox[4].u_masked_sbox_n_15 ;
  wire \gen_masked_sbox[4].u_masked_sbox_n_16 ;
  wire \gen_masked_sbox[4].u_masked_sbox_n_17 ;
  wire \gen_masked_sbox[4].u_masked_sbox_n_20 ;
  wire \gen_masked_sbox[4].u_masked_sbox_n_7 ;
  wire \gen_masked_sbox[4].u_masked_sbox_n_8 ;
  wire \gen_masked_sbox[5].u_masked_sbox_n_0 ;
  wire \gen_masked_sbox[5].u_masked_sbox_n_10 ;
  wire \gen_masked_sbox[5].u_masked_sbox_n_11 ;
  wire \gen_masked_sbox[5].u_masked_sbox_n_12 ;
  wire \gen_masked_sbox[5].u_masked_sbox_n_13 ;
  wire \gen_masked_sbox[5].u_masked_sbox_n_14 ;
  wire \gen_masked_sbox[5].u_masked_sbox_n_15 ;
  wire \gen_masked_sbox[5].u_masked_sbox_n_16 ;
  wire \gen_masked_sbox[5].u_masked_sbox_n_17 ;
  wire \gen_masked_sbox[5].u_masked_sbox_n_18 ;
  wire \gen_masked_sbox[5].u_masked_sbox_n_8 ;
  wire \gen_masked_sbox[5].u_masked_sbox_n_9 ;
  wire \gen_masked_sbox[6].u_masked_sbox_n_21 ;
  wire \gen_masked_sbox[6].u_masked_sbox_n_3 ;
  wire \gen_masked_sbox[6].u_masked_sbox_n_4 ;
  wire \gen_masked_sbox[6].u_masked_sbox_n_5 ;
  wire \gen_masked_sbox[6].u_masked_sbox_n_6 ;
  wire \gen_masked_sbox[6].u_masked_sbox_n_7 ;
  wire \gen_masked_sbox[6].u_masked_sbox_n_8 ;
  wire \gen_masked_sbox[7].u_masked_sbox_n_0 ;
  wire \gen_masked_sbox[7].u_masked_sbox_n_10 ;
  wire \gen_masked_sbox[7].u_masked_sbox_n_33 ;
  wire \gen_masked_sbox[7].u_masked_sbox_n_34 ;
  wire \gen_masked_sbox[7].u_masked_sbox_n_5 ;
  wire \gen_masked_sbox[7].u_masked_sbox_n_6 ;
  wire \gen_masked_sbox[7].u_masked_sbox_n_7 ;
  wire \gen_masked_sbox[7].u_masked_sbox_n_8 ;
  wire \gen_masked_sbox[7].u_masked_sbox_n_9 ;
  wire \gen_masked_sbox[8].u_masked_sbox_n_10 ;
  wire \gen_masked_sbox[8].u_masked_sbox_n_11 ;
  wire \gen_masked_sbox[8].u_masked_sbox_n_28 ;
  wire \gen_masked_sbox[8].u_masked_sbox_n_9 ;
  wire \gen_masked_sbox[9].u_masked_sbox_n_0 ;
  wire \gen_masked_sbox[9].u_masked_sbox_n_10 ;
  wire \gen_masked_sbox[9].u_masked_sbox_n_12 ;
  wire \gen_masked_sbox[9].u_masked_sbox_n_13 ;
  wire \gen_masked_sbox[9].u_masked_sbox_n_14 ;
  wire \gen_masked_sbox[9].u_masked_sbox_n_15 ;
  wire \gen_masked_sbox[9].u_masked_sbox_n_16 ;
  wire \gen_masked_sbox[9].u_masked_sbox_n_17 ;
  wire \gen_masked_sbox[9].u_masked_sbox_n_18 ;
  wire \gen_masked_sbox[9].u_masked_sbox_n_19 ;
  wire \gen_masked_sbox[9].u_masked_sbox_n_7 ;
  wire [93:0]key_IBUF;
  wire [93:0]mask_in_IBUF;
  wire [111:0]mix_cols_share1;
  wire [93:0]plaintext_IBUF;
  wire [33:0]post_linear_share1;
  wire \round_ctr_reg[2] ;
  wire \round_ctr_reg[2]_0 ;
  wire [20:0]\share1_reg_reg[127] ;
  wire [4:0]\share1_reg_reg[60] ;
  wire \share1_reg_reg[81] ;
  wire [1:0]\share1_reg_reg[85] ;
  wire \share1_reg_reg[87] ;
  wire [68:0]\share1_reg_reg[95] ;
  wire [3:0]\share2_reg_reg[126] ;
  wire [127:0]sub_bytes_share1;
  wire [4:1]\u_mc_share1/xtime_return21_in ;
  wire [1:1]\u_mc_share1/xtime_return26_in ;

  masked_sbox \gen_masked_sbox[0].u_masked_sbox 
       (.D(D[93:86]),
        .Q({Q[127:120],Q[95:88]}),
        .\ciphertext_reg[127] (\ciphertext_reg[127] [127:120]),
        .key_IBUF(key_IBUF[93:86]),
        .mask_in_IBUF(mask_in_IBUF[93:86]),
        .plaintext_IBUF(plaintext_IBUF[93:86]),
        .sel(ciphertext0[125:120]),
        .\share1_reg[100]_i_3 (\gen_masked_sbox[5].u_masked_sbox_n_13 ),
        .\share1_reg[97]_i_3 (\gen_masked_sbox[5].u_masked_sbox_n_8 ),
        .\share1_reg[99]_i_3 (\gen_masked_sbox[5].u_masked_sbox_n_10 ),
        .\share1_reg_reg[120] (\gen_masked_sbox[10].u_masked_sbox_n_9 ),
        .\share1_reg_reg[121] (\share1_reg_reg[81] ),
        .\share1_reg_reg[121]_0 (\round_ctr_reg[2] ),
        .\share1_reg_reg[121]_1 (\gen_masked_sbox[5].u_masked_sbox_n_9 ),
        .\share1_reg_reg[122] (\gen_masked_sbox[10].u_masked_sbox_n_0 ),
        .\share1_reg_reg[123] (\gen_masked_sbox[5].u_masked_sbox_n_11 ),
        .\share1_reg_reg[124] (\gen_masked_sbox[5].u_masked_sbox_n_14 ),
        .\share1_reg_reg[125] (\share1_reg_reg[85] ),
        .\share1_reg_reg[125]_0 (\gen_masked_sbox[10].u_masked_sbox_n_5 ),
        .\share1_reg_reg[126] (\gen_masked_sbox[5].u_masked_sbox_n_16 ),
        .\share1_reg_reg[126]_0 (\gen_masked_sbox[10].u_masked_sbox_n_6 ),
        .\share1_reg_reg[127] (\share1_reg_reg[87] ),
        .\share1_reg_reg[127]_0 ({sub_bytes_share1[87],sub_bytes_share1[85],sub_bytes_share1[82],sub_bytes_share1[80]}),
        .\share1_reg_reg[127]_1 (\share1_reg_reg[127] [20:13]),
        .\share1_reg_reg[127]_2 (\gen_masked_sbox[10].u_masked_sbox_n_8 ),
        .\share2_reg_reg[126] (ciphertext0[126]),
        .\share2_reg_reg[127] (ciphertext0[127]),
        .\share2_reg_reg[49] (\gen_masked_sbox[0].u_masked_sbox_n_0 ),
        .\share2_reg_reg[51] (\gen_masked_sbox[0].u_masked_sbox_n_7 ),
        .\share2_reg_reg[52] (\gen_masked_sbox[0].u_masked_sbox_n_8 ),
        .\share2_reg_reg[89] (\gen_masked_sbox[0].u_masked_sbox_n_24 ),
        .\share2_reg_reg[91] (\gen_masked_sbox[0].u_masked_sbox_n_9 ),
        .\share2_reg_reg[92] (\gen_masked_sbox[0].u_masked_sbox_n_25 ),
        .\share2_reg_reg[94] (\gen_masked_sbox[0].u_masked_sbox_n_26 ),
        .sub_bytes_share1({sub_bytes_share1[127],sub_bytes_share1[125],sub_bytes_share1[122],sub_bytes_share1[120]}));
  masked_sbox_0 \gen_masked_sbox[10].u_masked_sbox 
       (.D(D[85:73]),
        .Q({Q[47:40],Q[15:8]}),
        .\ciphertext_reg[47] (\ciphertext_reg[127] [47:40]),
        .key_IBUF(key_IBUF[85:73]),
        .mask_in_IBUF(mask_in_IBUF[85:73]),
        .mix_cols_share1({mix_cols_share1[111:109],mix_cols_share1[106],mix_cols_share1[104]}),
        .plaintext_IBUF(plaintext_IBUF[85:73]),
        .sel(ciphertext0[45:40]),
        .\share1_reg[126]_i_2 (\gen_masked_sbox[15].u_masked_sbox_n_23 ),
        .\share1_reg_reg[105] (\gen_masked_sbox[5].u_masked_sbox_n_8 ),
        .\share1_reg_reg[105]_0 (\gen_masked_sbox[15].u_masked_sbox_n_18 ),
        .\share1_reg_reg[107] (\gen_masked_sbox[5].u_masked_sbox_n_10 ),
        .\share1_reg_reg[107]_0 (\gen_masked_sbox[15].u_masked_sbox_n_20 ),
        .\share1_reg_reg[108] (\gen_masked_sbox[5].u_masked_sbox_n_13 ),
        .\share1_reg_reg[108]_0 (\gen_masked_sbox[15].u_masked_sbox_n_22 ),
        .\share1_reg_reg[109] (\share1_reg_reg[85] ),
        .\share1_reg_reg[111] (\share1_reg_reg[87] ),
        .\share1_reg_reg[114] (\share1_reg_reg[81] ),
        .\share1_reg_reg[118] (\gen_masked_sbox[5].u_masked_sbox_n_16 ),
        .\share1_reg_reg[118]_0 (\round_ctr_reg[2] ),
        .\share1_reg_reg[118]_1 (\gen_masked_sbox[0].u_masked_sbox_n_26 ),
        .\share1_reg_reg[119] ({sub_bytes_share1[127],sub_bytes_share1[125],sub_bytes_share1[122],sub_bytes_share1[120],sub_bytes_share1[87],sub_bytes_share1[85],sub_bytes_share1[82],sub_bytes_share1[80],sub_bytes_share1[7],sub_bytes_share1[5],sub_bytes_share1[2],sub_bytes_share1[0]}),
        .\share1_reg_reg[119]_0 (\share1_reg_reg[127] [12:0]),
        .\share2_reg_reg[10] (\gen_masked_sbox[10].u_masked_sbox_n_0 ),
        .\share2_reg_reg[11] (\gen_masked_sbox[10].u_masked_sbox_n_32 ),
        .\share2_reg_reg[12] (\gen_masked_sbox[10].u_masked_sbox_n_33 ),
        .\share2_reg_reg[13] (\gen_masked_sbox[10].u_masked_sbox_n_5 ),
        .\share2_reg_reg[14] (\gen_masked_sbox[10].u_masked_sbox_n_6 ),
        .\share2_reg_reg[14]_0 (\gen_masked_sbox[10].u_masked_sbox_n_7 ),
        .\share2_reg_reg[15] (\gen_masked_sbox[10].u_masked_sbox_n_8 ),
        .\share2_reg_reg[46] (ciphertext0[46]),
        .\share2_reg_reg[47] (ciphertext0[47]),
        .\share2_reg_reg[8] (\gen_masked_sbox[10].u_masked_sbox_n_9 ),
        .\share2_reg_reg[9] (\gen_masked_sbox[10].u_masked_sbox_n_31 ),
        .sub_bytes_share1({sub_bytes_share1[47],sub_bytes_share1[45],sub_bytes_share1[42],sub_bytes_share1[40]}));
  masked_sbox_1 \gen_masked_sbox[11].u_masked_sbox 
       (.D(D[12:0]),
        .Q({Q[39:32],Q[7:0]}),
        .\ciphertext_reg[39] (\ciphertext_reg[127] [39:32]),
        .key_IBUF(key_IBUF[12:0]),
        .mask_in_IBUF(mask_in_IBUF[12:0]),
        .mix_cols_share1({mix_cols_share1[7:5],mix_cols_share1[2],mix_cols_share1[0]}),
        .plaintext_IBUF(plaintext_IBUF[12:0]),
        .sel(ciphertext0[37:32]),
        .\share1_reg[1]_i_2 (\gen_masked_sbox[6].u_masked_sbox_n_3 ),
        .\share1_reg[1]_i_2_0 (\gen_masked_sbox[12].u_masked_sbox_n_9 ),
        .\share1_reg[1]_i_2_1 (\gen_masked_sbox[1].u_masked_sbox_n_5 ),
        .\share1_reg[22]_i_2 (\gen_masked_sbox[12].u_masked_sbox_n_11 ),
        .\share1_reg[3]_i_2 (\gen_masked_sbox[6].u_masked_sbox_n_5 ),
        .\share1_reg[3]_i_2_0 (\gen_masked_sbox[1].u_masked_sbox_n_17 ),
        .\share1_reg[4]_i_2 (\gen_masked_sbox[6].u_masked_sbox_n_7 ),
        .\share1_reg[4]_i_2_0 (\gen_masked_sbox[12].u_masked_sbox_n_10 ),
        .\share1_reg[4]_i_2_1 (\gen_masked_sbox[1].u_masked_sbox_n_19 ),
        .\share1_reg_reg[14] (\gen_masked_sbox[6].u_masked_sbox_n_21 ),
        .\share1_reg_reg[14]_0 (\share1_reg_reg[81] ),
        .\share1_reg_reg[14]_1 (\gen_masked_sbox[1].u_masked_sbox_n_20 ),
        .\share1_reg_reg[15] ({sub_bytes_share1[119],sub_bytes_share1[117],sub_bytes_share1[114],sub_bytes_share1[112],sub_bytes_share1[79],sub_bytes_share1[77],sub_bytes_share1[74],sub_bytes_share1[72],sub_bytes_share1[31],sub_bytes_share1[29],sub_bytes_share1[26],sub_bytes_share1[24]}),
        .\share1_reg_reg[15]_0 (\share1_reg_reg[95] [12:0]),
        .\share1_reg_reg[4] (\gen_masked_sbox[12].u_masked_sbox_n_28 ),
        .\share1_reg_reg[5] (\share1_reg_reg[85] ),
        .\share1_reg_reg[7] (\share1_reg_reg[87] ),
        .\share1_reg_reg[8] (\round_ctr_reg[2] ),
        .\share2_reg_reg[0] (\gen_masked_sbox[11].u_masked_sbox_n_10 ),
        .\share2_reg_reg[1] (\gen_masked_sbox[11].u_masked_sbox_n_32 ),
        .\share2_reg_reg[2] (\gen_masked_sbox[11].u_masked_sbox_n_5 ),
        .\share2_reg_reg[38] (ciphertext0[38]),
        .\share2_reg_reg[39] (ciphertext0[39]),
        .\share2_reg_reg[3] (\gen_masked_sbox[11].u_masked_sbox_n_4 ),
        .\share2_reg_reg[4] (\gen_masked_sbox[11].u_masked_sbox_n_33 ),
        .\share2_reg_reg[5] (\gen_masked_sbox[11].u_masked_sbox_n_6 ),
        .\share2_reg_reg[6] (\gen_masked_sbox[11].u_masked_sbox_n_7 ),
        .\share2_reg_reg[6]_0 (\gen_masked_sbox[11].u_masked_sbox_n_8 ),
        .\share2_reg_reg[7] (\gen_masked_sbox[11].u_masked_sbox_n_9 ),
        .sub_bytes_share1({sub_bytes_share1[39],sub_bytes_share1[37],sub_bytes_share1[34],sub_bytes_share1[32]}));
  masked_sbox_2 \gen_masked_sbox[12].u_masked_sbox 
       (.D(D[25:18]),
        .Q({Q[127:120],Q[31:24]}),
        .\ciphertext_reg[31] (\ciphertext_reg[127] [31:24]),
        .key_IBUF(key_IBUF[25:18]),
        .mask_in_IBUF(mask_in_IBUF[25:18]),
        .mix_cols_share1({mix_cols_share1[7:5],mix_cols_share1[2],mix_cols_share1[0]}),
        .plaintext_IBUF(plaintext_IBUF[25:18]),
        .sel(ciphertext0[29:24]),
        .\share1_reg[6]_i_2 (\gen_masked_sbox[1].u_masked_sbox_n_20 ),
        .\share1_reg[6]_i_2_0 (\gen_masked_sbox[6].u_masked_sbox_n_21 ),
        .\share1_reg[7]_i_2 (\gen_masked_sbox[11].u_masked_sbox_n_8 ),
        .\share1_reg_reg[24] (\share1_reg_reg[85] ),
        .\share1_reg_reg[24]_0 ({\share1_reg_reg[95] [62],\share1_reg_reg[95] [24:18]}),
        .\share1_reg_reg[24]_1 (\share1_reg_reg[60] [1:0]),
        .\share1_reg_reg[25] (\gen_masked_sbox[11].u_masked_sbox_n_32 ),
        .\share1_reg_reg[25]_0 (\share1_reg_reg[81] ),
        .\share1_reg_reg[25]_1 (\gen_masked_sbox[1].u_masked_sbox_n_0 ),
        .\share1_reg_reg[26] (\round_ctr_reg[2] ),
        .\share1_reg_reg[27] (\gen_masked_sbox[11].u_masked_sbox_n_4 ),
        .\share1_reg_reg[27]_0 (\gen_masked_sbox[1].u_masked_sbox_n_16 ),
        .\share1_reg_reg[28] (\gen_masked_sbox[11].u_masked_sbox_n_33 ),
        .\share1_reg_reg[28]_0 (\gen_masked_sbox[1].u_masked_sbox_n_18 ),
        .\share1_reg_reg[31] ({mix_cols_share1[31:29],mix_cols_share1[26],mix_cols_share1[24]}),
        .\share2_reg_reg[121] (\gen_masked_sbox[12].u_masked_sbox_n_9 ),
        .\share2_reg_reg[123] (\gen_masked_sbox[12].u_masked_sbox_n_28 ),
        .\share2_reg_reg[124] (\gen_masked_sbox[12].u_masked_sbox_n_10 ),
        .\share2_reg_reg[126] (\gen_masked_sbox[12].u_masked_sbox_n_11 ),
        .\share2_reg_reg[127] ({sub_bytes_share1[31],sub_bytes_share1[29],sub_bytes_share1[26],sub_bytes_share1[24]}),
        .\share2_reg_reg[30] (ciphertext0[30]),
        .\share2_reg_reg[31] (ciphertext0[31]),
        .sub_bytes_share1({sub_bytes_share1[119],sub_bytes_share1[117],sub_bytes_share1[114],sub_bytes_share1[112],sub_bytes_share1[79],sub_bytes_share1[77],sub_bytes_share1[74],sub_bytes_share1[72],sub_bytes_share1[39],sub_bytes_share1[37]}));
  masked_sbox_3 \gen_masked_sbox[13].u_masked_sbox 
       (.D(D[43:39]),
        .Q({Q[119:112],Q[23:16]}),
        .\ciphertext_reg[23] (\ciphertext_reg[127] [23:16]),
        .key_IBUF(key_IBUF[43:39]),
        .mask_in_IBUF(mask_in_IBUF[43:39]),
        .mix_cols_share1({mix_cols_share1[63:61],mix_cols_share1[58],mix_cols_share1[56]}),
        .plaintext_IBUF(plaintext_IBUF[43:39]),
        .post_linear_share1(post_linear_share1[11:9]),
        .sel(ciphertext0[21:16]),
        .\share1_reg[49]_i_2 (\gen_masked_sbox[2].u_masked_sbox_n_3 ),
        .\share1_reg[49]_i_2_0 (\gen_masked_sbox[2].u_masked_sbox_n_5 ),
        .\share1_reg[51]_i_2 (\gen_masked_sbox[2].u_masked_sbox_n_12 ),
        .\share1_reg[51]_i_2_0 (\gen_masked_sbox[2].u_masked_sbox_n_13 ),
        .\share1_reg[52]_i_2 (\gen_masked_sbox[2].u_masked_sbox_n_14 ),
        .\share1_reg[52]_i_2_0 (\gen_masked_sbox[2].u_masked_sbox_n_15 ),
        .\share1_reg[58]_i_2 (\gen_masked_sbox[8].u_masked_sbox_n_9 ),
        .\share1_reg[60]_i_2 (\gen_masked_sbox[8].u_masked_sbox_n_28 ),
        .\share1_reg[61]_i_2 (\gen_masked_sbox[8].u_masked_sbox_n_10 ),
        .\share1_reg[62]_i_2 (\gen_masked_sbox[7].u_masked_sbox_n_8 ),
        .\share1_reg[63]_i_2 (\gen_masked_sbox[8].u_masked_sbox_n_11 ),
        .\share1_reg_reg[48] (\round_ctr_reg[2] ),
        .\share1_reg_reg[48]_0 (\share1_reg_reg[85] ),
        .\share1_reg_reg[48]_1 (\gen_masked_sbox[7].u_masked_sbox_n_10 ),
        .\share1_reg_reg[50] (\gen_masked_sbox[7].u_masked_sbox_n_0 ),
        .\share1_reg_reg[53] (\gen_masked_sbox[7].u_masked_sbox_n_5 ),
        .\share1_reg_reg[54] (\gen_masked_sbox[2].u_masked_sbox_n_22 ),
        .\share1_reg_reg[54]_0 (\share1_reg_reg[87] ),
        .\share1_reg_reg[54]_1 (\gen_masked_sbox[7].u_masked_sbox_n_7 ),
        .\share1_reg_reg[55] ({sub_bytes_share1[111],sub_bytes_share1[109],sub_bytes_share1[106],sub_bytes_share1[104],sub_bytes_share1[71],sub_bytes_share1[69],sub_bytes_share1[66],sub_bytes_share1[64:63],sub_bytes_share1[61],sub_bytes_share1[58],sub_bytes_share1[56]}),
        .\share1_reg_reg[55]_0 (\share1_reg_reg[95] [42:38]),
        .\share1_reg_reg[55]_1 (\gen_masked_sbox[7].u_masked_sbox_n_9 ),
        .\share2_reg_reg[113] (\gen_masked_sbox[13].u_masked_sbox_n_3 ),
        .\share2_reg_reg[113]_0 (\gen_masked_sbox[13].u_masked_sbox_n_13 ),
        .\share2_reg_reg[115] (\gen_masked_sbox[13].u_masked_sbox_n_14 ),
        .\share2_reg_reg[115]_0 (\gen_masked_sbox[13].u_masked_sbox_n_15 ),
        .\share2_reg_reg[116] (\gen_masked_sbox[13].u_masked_sbox_n_16 ),
        .\share2_reg_reg[116]_0 (\gen_masked_sbox[13].u_masked_sbox_n_17 ),
        .\share2_reg_reg[118] (\gen_masked_sbox[13].u_masked_sbox_n_18 ),
        .\share2_reg_reg[22] (ciphertext0[22]),
        .\share2_reg_reg[23] (ciphertext0[23]),
        .sub_bytes_share1({sub_bytes_share1[23],sub_bytes_share1[21],sub_bytes_share1[18],sub_bytes_share1[16]}));
  masked_sbox_4 \gen_masked_sbox[14].u_masked_sbox 
       (.D(D[60:53]),
        .Q({Q[111:104],Q[15:8]}),
        .\ciphertext_reg[15] (\ciphertext_reg[127] [15:8]),
        .key_IBUF(key_IBUF[60:53]),
        .mask_in_IBUF(mask_in_IBUF[60:53]),
        .plaintext_IBUF(plaintext_IBUF[60:53]),
        .sel(ciphertext0[13:8]),
        .\share1_reg[81]_i_2 (\gen_masked_sbox[4].u_masked_sbox_n_8 ),
        .\share1_reg[81]_i_2_0 (\gen_masked_sbox[3].u_masked_sbox_n_3 ),
        .\share1_reg[83]_i_5 (\gen_masked_sbox[4].u_masked_sbox_n_20 ),
        .\share1_reg[83]_i_5_0 (\gen_masked_sbox[3].u_masked_sbox_n_12 ),
        .\share1_reg[84]_i_5 (\gen_masked_sbox[4].u_masked_sbox_n_13 ),
        .\share1_reg_reg[72] (\share1_reg_reg[85] ),
        .\share1_reg_reg[72]_0 (\gen_masked_sbox[9].u_masked_sbox_n_19 ),
        .\share1_reg_reg[72]_1 (\gen_masked_sbox[4].u_masked_sbox_n_7 ),
        .\share1_reg_reg[73] (\share1_reg_reg[81] ),
        .\share1_reg_reg[73]_0 (\round_ctr_reg[2] ),
        .\share1_reg_reg[73]_1 (\gen_masked_sbox[3].u_masked_sbox_n_4 ),
        .\share1_reg_reg[74] (\gen_masked_sbox[9].u_masked_sbox_n_0 ),
        .\share1_reg_reg[74]_0 (\gen_masked_sbox[4].u_masked_sbox_n_12 ),
        .\share1_reg_reg[75] (\gen_masked_sbox[3].u_masked_sbox_n_13 ),
        .\share1_reg_reg[76] (\gen_masked_sbox[3].u_masked_sbox_n_15 ),
        .\share1_reg_reg[77] (\gen_masked_sbox[3].u_masked_sbox_n_14 ),
        .\share1_reg_reg[77]_0 (\gen_masked_sbox[4].u_masked_sbox_n_14 ),
        .\share1_reg_reg[78] ({sub_bytes_share1[101],sub_bytes_share1[55],sub_bytes_share1[53]}),
        .\share1_reg_reg[78]_0 (\gen_masked_sbox[9].u_masked_sbox_n_17 ),
        .\share1_reg_reg[78]_1 (\gen_masked_sbox[4].u_masked_sbox_n_16 ),
        .\share1_reg_reg[79] (\share1_reg_reg[95] [55:48]),
        .\share1_reg_reg[79]_0 (\gen_masked_sbox[3].u_masked_sbox_n_23 ),
        .\share1_reg_reg[79]_1 (\gen_masked_sbox[4].u_masked_sbox_n_17 ),
        .\share2_reg_reg[105] (\gen_masked_sbox[14].u_masked_sbox_n_24 ),
        .\share2_reg_reg[107] (\gen_masked_sbox[14].u_masked_sbox_n_7 ),
        .\share2_reg_reg[108] (\gen_masked_sbox[14].u_masked_sbox_n_25 ),
        .\share2_reg_reg[110] (\gen_masked_sbox[14].u_masked_sbox_n_26 ),
        .\share2_reg_reg[14] (ciphertext0[14]),
        .\share2_reg_reg[15] (ciphertext0[15]),
        .\share2_reg_reg[57] (\gen_masked_sbox[14].u_masked_sbox_n_0 ),
        .\share2_reg_reg[59] (\gen_masked_sbox[14].u_masked_sbox_n_5 ),
        .\share2_reg_reg[60] (\gen_masked_sbox[14].u_masked_sbox_n_6 ),
        .sub_bytes_share1({sub_bytes_share1[15],sub_bytes_share1[13],sub_bytes_share1[10],sub_bytes_share1[8]}));
  masked_sbox_5 \gen_masked_sbox[15].u_masked_sbox 
       (.Q({Q[103:96],Q[7:0]}),
        .\ciphertext_reg[7] (\ciphertext_reg[127] [7:0]),
        .mix_cols_share1({mix_cols_share1[111:109],mix_cols_share1[106],mix_cols_share1[104]}),
        .post_linear_share1(post_linear_share1[30:23]),
        .sel(ciphertext0[5:0]),
        .\share1_reg[100]_i_2 (\gen_masked_sbox[10].u_masked_sbox_n_33 ),
        .\share1_reg[100]_i_2_0 (\gen_masked_sbox[0].u_masked_sbox_n_8 ),
        .\share1_reg[100]_i_2_1 (\gen_masked_sbox[0].u_masked_sbox_n_25 ),
        .\share1_reg[101]_i_2 (\gen_masked_sbox[5].u_masked_sbox_n_12 ),
        .\share1_reg[102]_i_2 (\gen_masked_sbox[10].u_masked_sbox_n_7 ),
        .\share1_reg[102]_i_2_0 (\gen_masked_sbox[5].u_masked_sbox_n_15 ),
        .\share1_reg[102]_i_2_1 (\gen_masked_sbox[0].u_masked_sbox_n_26 ),
        .\share1_reg[103]_i_2 (\round_ctr_reg[2] ),
        .\share1_reg[103]_i_2_0 (\gen_masked_sbox[5].u_masked_sbox_n_17 ),
        .\share1_reg[110]_i_2 (\gen_masked_sbox[5].u_masked_sbox_n_16 ),
        .\share1_reg[96]_i_2 (\gen_masked_sbox[5].u_masked_sbox_n_18 ),
        .\share1_reg[97]_i_2 (\gen_masked_sbox[10].u_masked_sbox_n_31 ),
        .\share1_reg[97]_i_2_0 (\gen_masked_sbox[0].u_masked_sbox_n_0 ),
        .\share1_reg[97]_i_2_1 (\gen_masked_sbox[0].u_masked_sbox_n_24 ),
        .\share1_reg[98]_i_2 (\gen_masked_sbox[5].u_masked_sbox_n_0 ),
        .\share1_reg[99]_i_2 (\gen_masked_sbox[10].u_masked_sbox_n_32 ),
        .\share1_reg[99]_i_2_0 (\gen_masked_sbox[0].u_masked_sbox_n_7 ),
        .\share1_reg[99]_i_2_1 (\gen_masked_sbox[0].u_masked_sbox_n_9 ),
        .\share2_reg_reg[100] (\gen_masked_sbox[15].u_masked_sbox_n_21 ),
        .\share2_reg_reg[102] (\gen_masked_sbox[15].u_masked_sbox_n_23 ),
        .\share2_reg_reg[103] ({sub_bytes_share1[7],sub_bytes_share1[5],sub_bytes_share1[2],sub_bytes_share1[0]}),
        .\share2_reg_reg[103]_0 (\gen_masked_sbox[15].u_masked_sbox_n_18 ),
        .\share2_reg_reg[103]_1 (\gen_masked_sbox[15].u_masked_sbox_n_20 ),
        .\share2_reg_reg[103]_2 (\gen_masked_sbox[15].u_masked_sbox_n_22 ),
        .\share2_reg_reg[6] (ciphertext0[6]),
        .\share2_reg_reg[7] (ciphertext0[7]),
        .\share2_reg_reg[97] (\gen_masked_sbox[15].u_masked_sbox_n_8 ),
        .\share2_reg_reg[99] (\gen_masked_sbox[15].u_masked_sbox_n_19 ),
        .sub_bytes_share1({sub_bytes_share1[127],sub_bytes_share1[125],sub_bytes_share1[122],sub_bytes_share1[120],sub_bytes_share1[87],sub_bytes_share1[85],sub_bytes_share1[82],sub_bytes_share1[80],sub_bytes_share1[47],sub_bytes_share1[45],sub_bytes_share1[42],sub_bytes_share1[40]}));
  masked_sbox_6 \gen_masked_sbox[1].u_masked_sbox 
       (.D(D[17:13]),
        .Q({Q[119:112],Q[87:80]}),
        .\ciphertext_reg[119] (\ciphertext_reg[127] [119:112]),
        .key_IBUF(key_IBUF[17:13]),
        .mask_in_IBUF(mask_in_IBUF[17:13]),
        .plaintext_IBUF(plaintext_IBUF[17:13]),
        .post_linear_share1(post_linear_share1[5:3]),
        .sel(ciphertext0[117:112]),
        .\share1_reg[17]_i_2 (\gen_masked_sbox[6].u_masked_sbox_n_4 ),
        .\share1_reg[19]_i_2 (\gen_masked_sbox[6].u_masked_sbox_n_6 ),
        .\share1_reg[20]_i_2 (\gen_masked_sbox[6].u_masked_sbox_n_8 ),
        .\share1_reg[25]_i_2 (\gen_masked_sbox[6].u_masked_sbox_n_3 ),
        .\share1_reg[26]_i_2 (\gen_masked_sbox[12].u_masked_sbox_n_9 ),
        .\share1_reg[27]_i_2 (\gen_masked_sbox[6].u_masked_sbox_n_5 ),
        .\share1_reg[28]_i_2 (\gen_masked_sbox[12].u_masked_sbox_n_28 ),
        .\share1_reg[28]_i_2_0 (\gen_masked_sbox[6].u_masked_sbox_n_7 ),
        .\share1_reg[29]_i_2 (\gen_masked_sbox[12].u_masked_sbox_n_10 ),
        .\share1_reg[30]_i_2 (\gen_masked_sbox[11].u_masked_sbox_n_8 ),
        .\share1_reg[31]_i_2 (\gen_masked_sbox[12].u_masked_sbox_n_11 ),
        .\share1_reg_reg[16] (\round_ctr_reg[2] ),
        .\share1_reg_reg[16]_0 (\share1_reg_reg[85] ),
        .\share1_reg_reg[16]_1 (\gen_masked_sbox[11].u_masked_sbox_n_10 ),
        .\share1_reg_reg[18] (\gen_masked_sbox[11].u_masked_sbox_n_5 ),
        .\share1_reg_reg[21] (\gen_masked_sbox[11].u_masked_sbox_n_6 ),
        .\share1_reg_reg[22] (\gen_masked_sbox[6].u_masked_sbox_n_21 ),
        .\share1_reg_reg[22]_0 (\gen_masked_sbox[11].u_masked_sbox_n_7 ),
        .\share1_reg_reg[23] ({sub_bytes_share1[79],sub_bytes_share1[77],sub_bytes_share1[74],sub_bytes_share1[72],sub_bytes_share1[39],sub_bytes_share1[37],sub_bytes_share1[34],sub_bytes_share1[32:31],sub_bytes_share1[29],sub_bytes_share1[26],sub_bytes_share1[24]}),
        .\share1_reg_reg[23]_0 (\share1_reg_reg[95] [17:13]),
        .\share1_reg_reg[23]_1 (\gen_masked_sbox[11].u_masked_sbox_n_9 ),
        .\share2_reg_reg[118] (ciphertext0[118]),
        .\share2_reg_reg[119] (ciphertext0[119]),
        .\share2_reg_reg[7] ({mix_cols_share1[31:29],mix_cols_share1[26],mix_cols_share1[24]}),
        .\share2_reg_reg[81] (\gen_masked_sbox[1].u_masked_sbox_n_5 ),
        .\share2_reg_reg[83] (\gen_masked_sbox[1].u_masked_sbox_n_17 ),
        .\share2_reg_reg[84] (\gen_masked_sbox[1].u_masked_sbox_n_19 ),
        .\share2_reg_reg[86] (\gen_masked_sbox[1].u_masked_sbox_n_20 ),
        .\share2_reg_reg[87] (\gen_masked_sbox[1].u_masked_sbox_n_0 ),
        .\share2_reg_reg[87]_0 (\gen_masked_sbox[1].u_masked_sbox_n_16 ),
        .\share2_reg_reg[87]_1 (\gen_masked_sbox[1].u_masked_sbox_n_18 ),
        .sub_bytes_share1({sub_bytes_share1[119],sub_bytes_share1[117],sub_bytes_share1[114],sub_bytes_share1[112]}));
  masked_sbox_7 \gen_masked_sbox[2].u_masked_sbox 
       (.Q({Q[111:104],Q[79:72]}),
        .\ciphertext_reg[111] (\ciphertext_reg[127] [111:104]),
        .post_linear_share1(post_linear_share1[8:6]),
        .\round_ctr_reg[2] (\gen_masked_sbox[2].u_masked_sbox_n_4 ),
        .sel(ciphertext0[109:104]),
        .\share1_reg[113]_i_3 (\share2_reg_reg[126] ),
        .\share1_reg[41]_i_2 ({sub_bytes_share1[71],sub_bytes_share1[66],sub_bytes_share1[64]}),
        .\share1_reg[41]_i_2_0 (\gen_masked_sbox[13].u_masked_sbox_n_3 ),
        .\share1_reg[43]_i_2 (\gen_masked_sbox[13].u_masked_sbox_n_14 ),
        .\share1_reg[44]_i_2 (\gen_masked_sbox[13].u_masked_sbox_n_16 ),
        .\share1_reg[49]_i_3 (\gen_masked_sbox[7].u_masked_sbox_n_33 ),
        .\share1_reg[49]_i_3_0 (\gen_masked_sbox[8].u_masked_sbox_n_9 ),
        .\share1_reg[51]_i_3 (\gen_masked_sbox[7].u_masked_sbox_n_6 ),
        .\share1_reg[51]_i_3_0 (\gen_masked_sbox[8].u_masked_sbox_n_28 ),
        .\share1_reg[52]_i_3 (\gen_masked_sbox[7].u_masked_sbox_n_34 ),
        .\share1_reg[52]_i_3_0 (\gen_masked_sbox[8].u_masked_sbox_n_10 ),
        .\share2_reg_reg[110] (ciphertext0[110]),
        .\share2_reg_reg[111] (ciphertext0[111]),
        .\share2_reg_reg[33] (\gen_masked_sbox[2].u_masked_sbox_n_5 ),
        .\share2_reg_reg[35] (\gen_masked_sbox[2].u_masked_sbox_n_13 ),
        .\share2_reg_reg[36] (\gen_masked_sbox[2].u_masked_sbox_n_15 ),
        .\share2_reg_reg[73] (\gen_masked_sbox[2].u_masked_sbox_n_3 ),
        .\share2_reg_reg[75] (\gen_masked_sbox[2].u_masked_sbox_n_12 ),
        .\share2_reg_reg[76] (\gen_masked_sbox[2].u_masked_sbox_n_14 ),
        .\share2_reg_reg[78] (\gen_masked_sbox[2].u_masked_sbox_n_22 ),
        .\share2_reg_reg[79] ({sub_bytes_share1[111],sub_bytes_share1[109],sub_bytes_share1[106],sub_bytes_share1[104]}));
  masked_sbox_8 \gen_masked_sbox[3].u_masked_sbox 
       (.D(D[52]),
        .Q({Q[103:96],Q[71:64]}),
        .\ciphertext_reg[103] (\ciphertext_reg[127] [103:96]),
        .key_IBUF(key_IBUF[52]),
        .mask_in_IBUF(mask_in_IBUF[52]),
        .plaintext_IBUF(plaintext_IBUF[52]),
        .post_linear_share1({post_linear_share1[15:14],post_linear_share1[12]}),
        .sel(ciphertext0[101:96]),
        .\share1_reg[65]_i_2 (\gen_masked_sbox[4].u_masked_sbox_n_8 ),
        .\share1_reg[65]_i_2_0 (\gen_masked_sbox[14].u_masked_sbox_n_24 ),
        .\share1_reg[67]_i_2 (\gen_masked_sbox[4].u_masked_sbox_n_20 ),
        .\share1_reg[67]_i_2_0 (\gen_masked_sbox[14].u_masked_sbox_n_7 ),
        .\share1_reg[68]_i_2 (\gen_masked_sbox[4].u_masked_sbox_n_13 ),
        .\share1_reg[68]_i_2_0 (\gen_masked_sbox[14].u_masked_sbox_n_25 ),
        .\share1_reg[73]_i_2 (\gen_masked_sbox[9].u_masked_sbox_n_7 ),
        .\share1_reg[75]_i_2 (\gen_masked_sbox[9].u_masked_sbox_n_10 ),
        .\share1_reg[76]_i_2 (\gen_masked_sbox[9].u_masked_sbox_n_14 ),
        .\share1_reg_reg[64] (\round_ctr_reg[2] ),
        .\share1_reg_reg[64]_0 (\share1_reg_reg[85] [0]),
        .\share1_reg_reg[64]_1 (\share1_reg_reg[87] ),
        .\share1_reg_reg[64]_2 (\gen_masked_sbox[9].u_masked_sbox_n_19 ),
        .\share1_reg_reg[64]_3 (sub_bytes_share1[8]),
        .\share1_reg_reg[64]_4 (\share1_reg_reg[95] [47]),
        .\share2_reg_reg[102] (ciphertext0[102]),
        .\share2_reg_reg[103] (ciphertext0[103]),
        .\share2_reg_reg[17] (\gen_masked_sbox[3].u_masked_sbox_n_4 ),
        .\share2_reg_reg[19] (\gen_masked_sbox[3].u_masked_sbox_n_13 ),
        .\share2_reg_reg[20] (\gen_masked_sbox[3].u_masked_sbox_n_15 ),
        .\share2_reg_reg[65] (\gen_masked_sbox[3].u_masked_sbox_n_3 ),
        .\share2_reg_reg[65]_0 (\gen_masked_sbox[3].u_masked_sbox_n_11 ),
        .\share2_reg_reg[67] (\gen_masked_sbox[3].u_masked_sbox_n_12 ),
        .\share2_reg_reg[68] (\gen_masked_sbox[3].u_masked_sbox_n_14 ),
        .\share2_reg_reg[70] (\gen_masked_sbox[3].u_masked_sbox_n_23 ),
        .sub_bytes_share1({sub_bytes_share1[103],sub_bytes_share1[101],sub_bytes_share1[98],sub_bytes_share1[96]}),
        .xtime_return21_in({\u_mc_share1/xtime_return21_in [4:3],\u_mc_share1/xtime_return21_in [1]}));
  masked_sbox_9 \gen_masked_sbox[4].u_masked_sbox 
       (.D(D[72:67]),
        .Q({Q[95:88],Q[63:56]}),
        .\ciphertext_reg[95] (\ciphertext_reg[127] [95:88]),
        .key_IBUF(key_IBUF[72:67]),
        .mask_in_IBUF(mask_in_IBUF[72:67]),
        .mix_cols_share1({mix_cols_share1[95:93],mix_cols_share1[90]}),
        .plaintext_IBUF(plaintext_IBUF[72:67]),
        .post_linear_share1({post_linear_share1[22:21],post_linear_share1[18:16],post_linear_share1[13]}),
        .sel(ciphertext0[93:88]),
        .\share1_reg[66]_i_2 (\gen_masked_sbox[9].u_masked_sbox_n_0 ),
        .\share1_reg[69]_i_2 (\gen_masked_sbox[9].u_masked_sbox_n_13 ),
        .\share1_reg[70]_i_2 (\gen_masked_sbox[3].u_masked_sbox_n_23 ),
        .\share1_reg[70]_i_2_0 (\gen_masked_sbox[9].u_masked_sbox_n_16 ),
        .\share1_reg[70]_i_2_1 (\gen_masked_sbox[14].u_masked_sbox_n_26 ),
        .\share1_reg[71]_i_2 ({sub_bytes_share1[103],sub_bytes_share1[101],sub_bytes_share1[98],sub_bytes_share1[96],sub_bytes_share1[15],sub_bytes_share1[13],sub_bytes_share1[10],sub_bytes_share1[8]}),
        .\share1_reg[71]_i_2_0 (\gen_masked_sbox[9].u_masked_sbox_n_18 ),
        .\share1_reg[74]_i_2 (\gen_masked_sbox[14].u_masked_sbox_n_24 ),
        .\share1_reg[77]_i_2 (\gen_masked_sbox[14].u_masked_sbox_n_25 ),
        .\share1_reg[89]_i_2 (\gen_masked_sbox[9].u_masked_sbox_n_7 ),
        .\share1_reg[89]_i_2_0 (\gen_masked_sbox[3].u_masked_sbox_n_11 ),
        .\share1_reg_reg[90] (\round_ctr_reg[2] ),
        .\share1_reg_reg[91] (\share1_reg_reg[81] ),
        .\share1_reg_reg[91]_0 (\gen_masked_sbox[9].u_masked_sbox_n_12 ),
        .\share1_reg_reg[92] (\gen_masked_sbox[9].u_masked_sbox_n_15 ),
        .\share1_reg_reg[93] (\share1_reg_reg[85] ),
        .\share1_reg_reg[95] (\share1_reg_reg[87] ),
        .\share1_reg_reg[95]_0 (\share1_reg_reg[95] [68:63]),
        .\share2_reg_reg[56] (\gen_masked_sbox[4].u_masked_sbox_n_7 ),
        .\share2_reg_reg[57] (\gen_masked_sbox[4].u_masked_sbox_n_8 ),
        .\share2_reg_reg[58] (\gen_masked_sbox[4].u_masked_sbox_n_12 ),
        .\share2_reg_reg[59] (\gen_masked_sbox[4].u_masked_sbox_n_20 ),
        .\share2_reg_reg[60] (\gen_masked_sbox[4].u_masked_sbox_n_13 ),
        .\share2_reg_reg[61] (sub_bytes_share1[93]),
        .\share2_reg_reg[61]_0 (\gen_masked_sbox[4].u_masked_sbox_n_14 ),
        .\share2_reg_reg[62] (\gen_masked_sbox[4].u_masked_sbox_n_15 ),
        .\share2_reg_reg[62]_0 (\gen_masked_sbox[4].u_masked_sbox_n_16 ),
        .\share2_reg_reg[63] (\gen_masked_sbox[4].u_masked_sbox_n_17 ),
        .\share2_reg_reg[94] (ciphertext0[94]),
        .\share2_reg_reg[95] (ciphertext0[95]),
        .xtime_return21_in({\u_mc_share1/xtime_return21_in [4:3],\u_mc_share1/xtime_return21_in [1]}),
        .xtime_return26_in(\u_mc_share1/xtime_return26_in ));
  masked_sbox_10 \gen_masked_sbox[5].u_masked_sbox 
       (.Q({Q[87:80],Q[55:48]}),
        .\ciphertext_reg[87] (\ciphertext_reg[127] [87:80]),
        .post_linear_share1(post_linear_share1[33:31]),
        .sel(ciphertext0[85:80]),
        .\share1_reg[101]_i_3 (\gen_masked_sbox[0].u_masked_sbox_n_25 ),
        .\share1_reg[103]_i_3 (\gen_masked_sbox[0].u_masked_sbox_n_26 ),
        .\share1_reg[113]_i_2 (\gen_masked_sbox[2].u_masked_sbox_n_4 ),
        .\share1_reg[115]_i_2 (\gen_masked_sbox[0].u_masked_sbox_n_9 ),
        .\share1_reg[116]_i_2 (\gen_masked_sbox[10].u_masked_sbox_n_32 ),
        .\share1_reg[121]_i_2 (\gen_masked_sbox[10].u_masked_sbox_n_31 ),
        .\share1_reg[121]_i_2_0 (\gen_masked_sbox[15].u_masked_sbox_n_8 ),
        .\share1_reg[123]_i_2 (\gen_masked_sbox[15].u_masked_sbox_n_19 ),
        .\share1_reg[124]_i_2 (\gen_masked_sbox[10].u_masked_sbox_n_33 ),
        .\share1_reg[124]_i_2_0 (\gen_masked_sbox[15].u_masked_sbox_n_21 ),
        .\share1_reg[96]_i_3 ({sub_bytes_share1[127],sub_bytes_share1[125],sub_bytes_share1[47],sub_bytes_share1[42],sub_bytes_share1[40]}),
        .\share1_reg[98]_i_3 (\gen_masked_sbox[0].u_masked_sbox_n_24 ),
        .\share2_reg_reg[11] (\gen_masked_sbox[5].u_masked_sbox_n_11 ),
        .\share2_reg_reg[12] (\gen_masked_sbox[5].u_masked_sbox_n_14 ),
        .\share2_reg_reg[48] (\gen_masked_sbox[5].u_masked_sbox_n_18 ),
        .\share2_reg_reg[49] (\gen_masked_sbox[5].u_masked_sbox_n_8 ),
        .\share2_reg_reg[50] (\gen_masked_sbox[5].u_masked_sbox_n_0 ),
        .\share2_reg_reg[51] (\gen_masked_sbox[5].u_masked_sbox_n_10 ),
        .\share2_reg_reg[52] (\gen_masked_sbox[5].u_masked_sbox_n_13 ),
        .\share2_reg_reg[53] (\gen_masked_sbox[5].u_masked_sbox_n_12 ),
        .\share2_reg_reg[54] (\gen_masked_sbox[5].u_masked_sbox_n_15 ),
        .\share2_reg_reg[54]_0 (\gen_masked_sbox[5].u_masked_sbox_n_16 ),
        .\share2_reg_reg[55] (\gen_masked_sbox[5].u_masked_sbox_n_17 ),
        .\share2_reg_reg[86] (ciphertext0[86]),
        .\share2_reg_reg[87] (ciphertext0[87]),
        .\share2_reg_reg[9] (\gen_masked_sbox[5].u_masked_sbox_n_9 ),
        .sub_bytes_share1({sub_bytes_share1[87],sub_bytes_share1[85],sub_bytes_share1[82],sub_bytes_share1[80]}));
  masked_sbox_11 \gen_masked_sbox[6].u_masked_sbox 
       (.Q({Q[79:72],Q[47:40]}),
        .\ciphertext_reg[79] (\ciphertext_reg[127] [79:72]),
        .post_linear_share1(post_linear_share1[2:0]),
        .sel(ciphertext0[77:72]),
        .\share1_reg[11]_i_2 (\gen_masked_sbox[1].u_masked_sbox_n_17 ),
        .\share1_reg[12]_i_2 (\round_ctr_reg[2] ),
        .\share1_reg[12]_i_2_0 (\gen_masked_sbox[11].u_masked_sbox_n_4 ),
        .\share1_reg[12]_i_2_1 (\gen_masked_sbox[1].u_masked_sbox_n_19 ),
        .\share1_reg[17]_i_3 (\gen_masked_sbox[11].u_masked_sbox_n_32 ),
        .\share1_reg[17]_i_3_0 (\gen_masked_sbox[12].u_masked_sbox_n_9 ),
        .\share1_reg[19]_i_3 (\gen_masked_sbox[12].u_masked_sbox_n_28 ),
        .\share1_reg[20]_i_3 (\gen_masked_sbox[11].u_masked_sbox_n_33 ),
        .\share1_reg[20]_i_3_0 (\gen_masked_sbox[12].u_masked_sbox_n_10 ),
        .\share1_reg[9]_i_2 (\gen_masked_sbox[1].u_masked_sbox_n_5 ),
        .\share2_reg_reg[1] (\gen_masked_sbox[6].u_masked_sbox_n_4 ),
        .\share2_reg_reg[3] (\gen_masked_sbox[6].u_masked_sbox_n_6 ),
        .\share2_reg_reg[41] (\gen_masked_sbox[6].u_masked_sbox_n_3 ),
        .\share2_reg_reg[43] (\gen_masked_sbox[6].u_masked_sbox_n_5 ),
        .\share2_reg_reg[44] (\gen_masked_sbox[6].u_masked_sbox_n_7 ),
        .\share2_reg_reg[46] (\gen_masked_sbox[6].u_masked_sbox_n_21 ),
        .\share2_reg_reg[47] ({sub_bytes_share1[79],sub_bytes_share1[77],sub_bytes_share1[74],sub_bytes_share1[72]}),
        .\share2_reg_reg[4] (\gen_masked_sbox[6].u_masked_sbox_n_8 ),
        .\share2_reg_reg[78] (ciphertext0[78]),
        .\share2_reg_reg[79] (ciphertext0[79]),
        .sub_bytes_share1({sub_bytes_share1[39],sub_bytes_share1[34],sub_bytes_share1[32]}));
  masked_sbox_12 \gen_masked_sbox[7].u_masked_sbox 
       (.D(D[38:26]),
        .Q({Q[71:64],Q[39:32]}),
        .\ciphertext_reg[71] (\ciphertext_reg[127] [71:64]),
        .key_IBUF(key_IBUF[38:26]),
        .mask_in_IBUF(mask_in_IBUF[38:26]),
        .mix_cols_share1({mix_cols_share1[39:37],mix_cols_share1[34],mix_cols_share1[32]}),
        .plaintext_IBUF(plaintext_IBUF[38:26]),
        .\round_ctr_reg[2] (\round_ctr_reg[2] ),
        .sel(ciphertext0[69:64]),
        .\share1_reg[33]_i_2 (\gen_masked_sbox[13].u_masked_sbox_n_3 ),
        .\share1_reg[35]_i_2 (\gen_masked_sbox[2].u_masked_sbox_n_12 ),
        .\share1_reg[35]_i_2_0 (\gen_masked_sbox[13].u_masked_sbox_n_14 ),
        .\share1_reg[36]_i_2 (\gen_masked_sbox[13].u_masked_sbox_n_16 ),
        .\share1_reg[50]_i_2 (\gen_masked_sbox[2].u_masked_sbox_n_3 ),
        .\share1_reg[53]_i_2 (\gen_masked_sbox[2].u_masked_sbox_n_14 ),
        .\share1_reg[54]_i_2 (\gen_masked_sbox[8].u_masked_sbox_n_11 ),
        .\share1_reg_reg[33] (\gen_masked_sbox[8].u_masked_sbox_n_9 ),
        .\share1_reg_reg[35] (\gen_masked_sbox[8].u_masked_sbox_n_28 ),
        .\share1_reg_reg[36] (\gen_masked_sbox[8].u_masked_sbox_n_10 ),
        .\share1_reg_reg[39] (\share1_reg_reg[81] ),
        .\share1_reg_reg[45] (\share1_reg_reg[85] ),
        .\share1_reg_reg[46] (\gen_masked_sbox[2].u_masked_sbox_n_22 ),
        .\share1_reg_reg[46]_0 (\gen_masked_sbox[13].u_masked_sbox_n_18 ),
        .\share1_reg_reg[47] (\share1_reg_reg[87] ),
        .\share1_reg_reg[47]_0 (\share1_reg_reg[95] [37:25]),
        .\share2_reg_reg[32] (\gen_masked_sbox[7].u_masked_sbox_n_10 ),
        .\share2_reg_reg[33] (\gen_masked_sbox[7].u_masked_sbox_n_33 ),
        .\share2_reg_reg[34] (\gen_masked_sbox[7].u_masked_sbox_n_0 ),
        .\share2_reg_reg[35] (\gen_masked_sbox[7].u_masked_sbox_n_6 ),
        .\share2_reg_reg[36] (\gen_masked_sbox[7].u_masked_sbox_n_34 ),
        .\share2_reg_reg[37] (\gen_masked_sbox[7].u_masked_sbox_n_5 ),
        .\share2_reg_reg[38] (\gen_masked_sbox[7].u_masked_sbox_n_7 ),
        .\share2_reg_reg[38]_0 (\gen_masked_sbox[7].u_masked_sbox_n_8 ),
        .\share2_reg_reg[39] ({sub_bytes_share1[71],sub_bytes_share1[69],sub_bytes_share1[66],sub_bytes_share1[64]}),
        .\share2_reg_reg[39]_0 (\gen_masked_sbox[7].u_masked_sbox_n_9 ),
        .\share2_reg_reg[70] (ciphertext0[70]),
        .\share2_reg_reg[71] (ciphertext0[71]),
        .\share2_reg_reg[94] (\share2_reg_reg[126] ),
        .sub_bytes_share1({sub_bytes_share1[111],sub_bytes_share1[109],sub_bytes_share1[106],sub_bytes_share1[104],sub_bytes_share1[63],sub_bytes_share1[61],sub_bytes_share1[58],sub_bytes_share1[56],sub_bytes_share1[23],sub_bytes_share1[21],sub_bytes_share1[18],sub_bytes_share1[16]}));
  masked_sbox_13 \gen_masked_sbox[8].u_masked_sbox 
       (.D(D[51:44]),
        .Q({Q[63:56],Q[31:24]}),
        .\ciphertext_reg[63] (\ciphertext_reg[127] [63:56]),
        .key_IBUF(key_IBUF[51:44]),
        .mask_in_IBUF(mask_in_IBUF[51:44]),
        .mix_cols_share1({mix_cols_share1[39:37],mix_cols_share1[34],mix_cols_share1[32]}),
        .plaintext_IBUF(plaintext_IBUF[51:44]),
        .sel(ciphertext0[61:56]),
        .\share1_reg[38]_i_2 (\gen_masked_sbox[13].u_masked_sbox_n_18 ),
        .\share1_reg[38]_i_2_0 (\gen_masked_sbox[2].u_masked_sbox_n_22 ),
        .\share1_reg[39]_i_2 ({sub_bytes_share1[111],sub_bytes_share1[109],sub_bytes_share1[106],sub_bytes_share1[104],sub_bytes_share1[71],sub_bytes_share1[69],sub_bytes_share1[23],sub_bytes_share1[21],sub_bytes_share1[18],sub_bytes_share1[16]}),
        .\share1_reg[39]_i_2_0 (\gen_masked_sbox[7].u_masked_sbox_n_8 ),
        .\share1_reg_reg[57] (\gen_masked_sbox[7].u_masked_sbox_n_33 ),
        .\share1_reg_reg[57]_0 (\share1_reg_reg[85] ),
        .\share1_reg_reg[57]_1 (\round_ctr_reg[2] ),
        .\share1_reg_reg[57]_2 (\gen_masked_sbox[13].u_masked_sbox_n_13 ),
        .\share1_reg_reg[59] (\gen_masked_sbox[7].u_masked_sbox_n_6 ),
        .\share1_reg_reg[59]_0 (\gen_masked_sbox[13].u_masked_sbox_n_15 ),
        .\share1_reg_reg[60] (\gen_masked_sbox[7].u_masked_sbox_n_34 ),
        .\share1_reg_reg[60]_0 ({\share1_reg_reg[95] [65:62],\share1_reg_reg[95] [46:43]}),
        .\share1_reg_reg[60]_1 (\share1_reg_reg[60] [4:1]),
        .\share1_reg_reg[60]_2 (\gen_masked_sbox[13].u_masked_sbox_n_17 ),
        .\share1_reg_reg[63] (\share1_reg_reg[87] ),
        .\share1_reg_reg[63]_0 ({mix_cols_share1[63:61],mix_cols_share1[58],mix_cols_share1[56]}),
        .\share2_reg_reg[25] (\gen_masked_sbox[8].u_masked_sbox_n_9 ),
        .\share2_reg_reg[27] (\gen_masked_sbox[8].u_masked_sbox_n_28 ),
        .\share2_reg_reg[28] (\gen_masked_sbox[8].u_masked_sbox_n_10 ),
        .\share2_reg_reg[30] (\gen_masked_sbox[8].u_masked_sbox_n_11 ),
        .\share2_reg_reg[62] (ciphertext0[62]),
        .\share2_reg_reg[63] (ciphertext0[63]),
        .sub_bytes_share1({sub_bytes_share1[63],sub_bytes_share1[61],sub_bytes_share1[58],sub_bytes_share1[56]}));
  masked_sbox_14 \gen_masked_sbox[9].u_masked_sbox 
       (.D(D[66:61]),
        .Q({Q[55:48],Q[23:16]}),
        .\ciphertext_reg[55] (\ciphertext_reg[127] [55:48]),
        .key_IBUF(key_IBUF[66:61]),
        .mask_in_IBUF(mask_in_IBUF[66:61]),
        .mix_cols_share1({mix_cols_share1[95:93],mix_cols_share1[90]}),
        .plaintext_IBUF(plaintext_IBUF[66:61]),
        .post_linear_share1(post_linear_share1[20:19]),
        .\round_ctr_reg[2] (\round_ctr_reg[2]_0 ),
        .sel(ciphertext0[53:48]),
        .\share1_reg[69]_i_5 (\gen_masked_sbox[3].u_masked_sbox_n_14 ),
        .\share1_reg[71]_i_5 (\gen_masked_sbox[3].u_masked_sbox_n_23 ),
        .\share1_reg[74]_i_2 (\gen_masked_sbox[3].u_masked_sbox_n_3 ),
        .\share1_reg[83]_i_2 (\gen_masked_sbox[14].u_masked_sbox_n_7 ),
        .\share1_reg[83]_i_2_0 (\gen_masked_sbox[14].u_masked_sbox_n_5 ),
        .\share1_reg[84]_i_2 (\gen_masked_sbox[14].u_masked_sbox_n_25 ),
        .\share1_reg[84]_i_2_0 (\gen_masked_sbox[14].u_masked_sbox_n_6 ),
        .\share1_reg[90]_i_2 (\gen_masked_sbox[4].u_masked_sbox_n_8 ),
        .\share1_reg[91]_i_2 (\gen_masked_sbox[3].u_masked_sbox_n_12 ),
        .\share1_reg[93]_i_2 (\gen_masked_sbox[4].u_masked_sbox_n_13 ),
        .\share1_reg[95]_i_2 ({sub_bytes_share1[103],sub_bytes_share1[101],sub_bytes_share1[98],sub_bytes_share1[93],sub_bytes_share1[15],sub_bytes_share1[13],sub_bytes_share1[10],sub_bytes_share1[8]}),
        .\share1_reg[95]_i_2_0 (\gen_masked_sbox[4].u_masked_sbox_n_15 ),
        .\share1_reg_reg[80] (\round_ctr_reg[2] ),
        .\share1_reg_reg[80]_0 (\gen_masked_sbox[4].u_masked_sbox_n_7 ),
        .\share1_reg_reg[81] (\share1_reg_reg[81] ),
        .\share1_reg_reg[81]_0 (\gen_masked_sbox[14].u_masked_sbox_n_24 ),
        .\share1_reg_reg[81]_1 (\gen_masked_sbox[14].u_masked_sbox_n_0 ),
        .\share1_reg_reg[82] (\gen_masked_sbox[4].u_masked_sbox_n_12 ),
        .\share1_reg_reg[85] (\share1_reg_reg[85] ),
        .\share1_reg_reg[85]_0 (\gen_masked_sbox[4].u_masked_sbox_n_14 ),
        .\share1_reg_reg[86] (\gen_masked_sbox[14].u_masked_sbox_n_26 ),
        .\share1_reg_reg[86]_0 (\gen_masked_sbox[4].u_masked_sbox_n_16 ),
        .\share1_reg_reg[87] (\share1_reg_reg[87] ),
        .\share1_reg_reg[87]_0 (\share1_reg_reg[95] [61:56]),
        .\share1_reg_reg[87]_1 (\gen_masked_sbox[4].u_masked_sbox_n_17 ),
        .\share2_reg_reg[107] (\gen_masked_sbox[9].u_masked_sbox_n_12 ),
        .\share2_reg_reg[108] (\gen_masked_sbox[9].u_masked_sbox_n_15 ),
        .\share2_reg_reg[126] (\share2_reg_reg[126] ),
        .\share2_reg_reg[16] (\gen_masked_sbox[9].u_masked_sbox_n_19 ),
        .\share2_reg_reg[17] (\gen_masked_sbox[9].u_masked_sbox_n_7 ),
        .\share2_reg_reg[18] (\gen_masked_sbox[9].u_masked_sbox_n_0 ),
        .\share2_reg_reg[19] (\gen_masked_sbox[9].u_masked_sbox_n_10 ),
        .\share2_reg_reg[20] (\gen_masked_sbox[9].u_masked_sbox_n_14 ),
        .\share2_reg_reg[21] (\gen_masked_sbox[9].u_masked_sbox_n_13 ),
        .\share2_reg_reg[22] (\gen_masked_sbox[9].u_masked_sbox_n_16 ),
        .\share2_reg_reg[22]_0 (\gen_masked_sbox[9].u_masked_sbox_n_17 ),
        .\share2_reg_reg[23] ({sub_bytes_share1[55],sub_bytes_share1[53]}),
        .\share2_reg_reg[23]_0 (\gen_masked_sbox[9].u_masked_sbox_n_18 ),
        .\share2_reg_reg[54] (ciphertext0[54]),
        .\share2_reg_reg[55] (ciphertext0[55]),
        .xtime_return26_in(\u_mc_share1/xtime_return26_in ));
endmodule

module sbox
   (\share2_reg_reg[18] ,
    mix_cols_share1,
    \share2_reg_reg[17] ,
    post_linear_share1,
    \share2_reg_reg[19] ,
    \round_ctr_reg[2] ,
    \share2_reg_reg[23] ,
    \share2_reg_reg[107] ,
    \share2_reg_reg[21] ,
    \share2_reg_reg[21]_0 ,
    \share2_reg_reg[20] ,
    \share2_reg_reg[108] ,
    \share2_reg_reg[22] ,
    \share2_reg_reg[22]_0 ,
    \share2_reg_reg[23]_0 ,
    \share2_reg_reg[16] ,
    xtime_return26_in,
    \share2_reg_reg[55] ,
    \share2_reg_reg[54] ,
    \share2_reg_reg[53] ,
    \share2_reg_reg[52] ,
    \share2_reg_reg[51] ,
    \share2_reg_reg[50] ,
    \share2_reg_reg[49] ,
    \share2_reg_reg[48] ,
    D,
    \share1_reg[74]_i_2 ,
    \share1_reg[90]_i_2 ,
    \share1_reg[95]_i_2 ,
    \share1_reg[83]_i_2 ,
    \share1_reg[83]_i_2_0 ,
    \share1_reg[91]_i_2 ,
    \share1_reg[69]_i_5 ,
    \share1_reg[84]_i_2 ,
    \share1_reg[84]_i_2_0 ,
    \share1_reg[93]_i_2 ,
    \share1_reg[71]_i_5 ,
    \share1_reg_reg[86] ,
    \share1_reg[95]_i_2_0 ,
    Q,
    \ciphertext_reg[55] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[85] ,
    \share1_reg_reg[87] ,
    \share1_reg_reg[81] ,
    \share2_reg_reg[126] ,
    \share1_reg_reg[80] ,
    \share1_reg_reg[80]_0 ,
    \share1_reg_reg[87]_0 ,
    \share1_reg_reg[81]_0 ,
    \share1_reg_reg[81]_1 ,
    \share1_reg_reg[82] ,
    \share1_reg_reg[85]_0 ,
    \share1_reg_reg[86]_0 ,
    \share1_reg_reg[87]_1 );
  output \share2_reg_reg[18] ;
  output [3:0]mix_cols_share1;
  output \share2_reg_reg[17] ;
  output [1:0]post_linear_share1;
  output \share2_reg_reg[19] ;
  output \round_ctr_reg[2] ;
  output \share2_reg_reg[23] ;
  output \share2_reg_reg[107] ;
  output \share2_reg_reg[21] ;
  output \share2_reg_reg[21]_0 ;
  output \share2_reg_reg[20] ;
  output \share2_reg_reg[108] ;
  output \share2_reg_reg[22] ;
  output \share2_reg_reg[22]_0 ;
  output \share2_reg_reg[23]_0 ;
  output \share2_reg_reg[16] ;
  output [0:0]xtime_return26_in;
  output \share2_reg_reg[55] ;
  output \share2_reg_reg[54] ;
  output \share2_reg_reg[53] ;
  output \share2_reg_reg[52] ;
  output \share2_reg_reg[51] ;
  output \share2_reg_reg[50] ;
  output \share2_reg_reg[49] ;
  output \share2_reg_reg[48] ;
  output [5:0]D;
  input \share1_reg[74]_i_2 ;
  input \share1_reg[90]_i_2 ;
  input [7:0]\share1_reg[95]_i_2 ;
  input \share1_reg[83]_i_2 ;
  input \share1_reg[83]_i_2_0 ;
  input \share1_reg[91]_i_2 ;
  input \share1_reg[69]_i_5 ;
  input \share1_reg[84]_i_2 ;
  input \share1_reg[84]_i_2_0 ;
  input \share1_reg[93]_i_2 ;
  input \share1_reg[71]_i_5 ;
  input \share1_reg_reg[86] ;
  input \share1_reg[95]_i_2_0 ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[55] ;
  input [5:0]key_IBUF;
  input [5:0]plaintext_IBUF;
  input [5:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[85] ;
  input \share1_reg_reg[87] ;
  input \share1_reg_reg[81] ;
  input [3:0]\share2_reg_reg[126] ;
  input \share1_reg_reg[80] ;
  input \share1_reg_reg[80]_0 ;
  input [5:0]\share1_reg_reg[87]_0 ;
  input \share1_reg_reg[81]_0 ;
  input \share1_reg_reg[81]_1 ;
  input \share1_reg_reg[82] ;
  input \share1_reg_reg[85]_0 ;
  input \share1_reg_reg[86]_0 ;
  input \share1_reg_reg[87]_1 ;

  wire [5:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[55] ;
  wire g0_b0__8_n_0;
  wire g0_b1__8_n_0;
  wire g0_b2__8_n_0;
  wire g0_b3__8_n_0;
  wire g0_b4__8_n_0;
  wire g0_b5__8_n_0;
  wire g0_b6__8_n_0;
  wire g0_b7__8_n_0;
  wire g1_b0__8_n_0;
  wire g1_b1__8_n_0;
  wire g1_b2__8_n_0;
  wire g1_b3__8_n_0;
  wire g1_b4__8_n_0;
  wire g1_b5__8_n_0;
  wire g1_b6__8_n_0;
  wire g1_b7__8_n_0;
  wire g2_b0__8_n_0;
  wire g2_b1__8_n_0;
  wire g2_b2__8_n_0;
  wire g2_b3__8_n_0;
  wire g2_b4__8_n_0;
  wire g2_b5__8_n_0;
  wire g2_b6__8_n_0;
  wire g2_b7__8_n_0;
  wire g3_b0__8_n_0;
  wire g3_b1__8_n_0;
  wire g3_b2__8_n_0;
  wire g3_b3__8_n_0;
  wire g3_b4__8_n_0;
  wire g3_b5__8_n_0;
  wire g3_b6__8_n_0;
  wire g3_b7__8_n_0;
  wire [5:0]key_IBUF;
  wire [5:0]mask_in_IBUF;
  wire [3:0]mix_cols_share1;
  wire [5:0]plaintext_IBUF;
  wire [1:0]post_linear_share1;
  wire [87:80]round_ark_share1;
  wire \round_ctr_reg[2] ;
  wire \share1_reg[69]_i_5 ;
  wire \share1_reg[71]_i_5 ;
  wire \share1_reg[74]_i_2 ;
  wire \share1_reg[80]_i_7_n_0 ;
  wire \share1_reg[82]_i_10_n_0 ;
  wire \share1_reg[82]_i_8_n_0 ;
  wire \share1_reg[83]_i_2 ;
  wire \share1_reg[83]_i_2_0 ;
  wire \share1_reg[84]_i_2 ;
  wire \share1_reg[84]_i_2_0 ;
  wire \share1_reg[85]_i_8_n_0 ;
  wire \share1_reg[86]_i_8_n_0 ;
  wire \share1_reg[87]_i_10_n_0 ;
  wire \share1_reg[87]_i_8_n_0 ;
  wire \share1_reg[90]_i_2 ;
  wire \share1_reg[91]_i_2 ;
  wire \share1_reg[92]_i_9_n_0 ;
  wire \share1_reg[93]_i_2 ;
  wire [7:0]\share1_reg[95]_i_2 ;
  wire \share1_reg[95]_i_2_0 ;
  wire \share1_reg_reg[80] ;
  wire \share1_reg_reg[80]_0 ;
  wire \share1_reg_reg[81] ;
  wire \share1_reg_reg[81]_0 ;
  wire \share1_reg_reg[81]_1 ;
  wire \share1_reg_reg[82] ;
  wire [1:0]\share1_reg_reg[85] ;
  wire \share1_reg_reg[85]_0 ;
  wire \share1_reg_reg[86] ;
  wire \share1_reg_reg[86]_0 ;
  wire \share1_reg_reg[87] ;
  wire [5:0]\share1_reg_reg[87]_0 ;
  wire \share1_reg_reg[87]_1 ;
  wire \share2_reg_reg[107] ;
  wire \share2_reg_reg[108] ;
  wire [3:0]\share2_reg_reg[126] ;
  wire \share2_reg_reg[16] ;
  wire \share2_reg_reg[17] ;
  wire \share2_reg_reg[18] ;
  wire \share2_reg_reg[19] ;
  wire \share2_reg_reg[20] ;
  wire \share2_reg_reg[21] ;
  wire \share2_reg_reg[21]_0 ;
  wire \share2_reg_reg[22] ;
  wire \share2_reg_reg[22]_0 ;
  wire \share2_reg_reg[23] ;
  wire \share2_reg_reg[23]_0 ;
  wire \share2_reg_reg[48] ;
  wire \share2_reg_reg[49] ;
  wire \share2_reg_reg[50] ;
  wire \share2_reg_reg[51] ;
  wire \share2_reg_reg[52] ;
  wire \share2_reg_reg[53] ;
  wire \share2_reg_reg[54] ;
  wire \share2_reg_reg[55] ;
  wire [50:48]sub_bytes_share1;
  wire [0:0]xtime_return26_in;

  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[54]_i_1 
       (.I0(Q[14]),
        .I1(\ciphertext_reg[55] [6]),
        .O(\share2_reg_reg[54] ));
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[55]_i_1 
       (.I0(Q[15]),
        .I1(\ciphertext_reg[55] [7]),
        .O(\share2_reg_reg[55] ));
  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g0_b0__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__8_i_1
       (.I0(Q[8]),
        .I1(\ciphertext_reg[55] [0]),
        .O(\share2_reg_reg[48] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__8_i_2
       (.I0(Q[9]),
        .I1(\ciphertext_reg[55] [1]),
        .O(\share2_reg_reg[49] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__8_i_3
       (.I0(Q[10]),
        .I1(\ciphertext_reg[55] [2]),
        .O(\share2_reg_reg[50] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__8_i_4
       (.I0(Q[11]),
        .I1(\ciphertext_reg[55] [3]),
        .O(\share2_reg_reg[51] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__8_i_5
       (.I0(Q[12]),
        .I1(\ciphertext_reg[55] [4]),
        .O(\share2_reg_reg[52] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__8_i_6
       (.I0(Q[13]),
        .I1(\ciphertext_reg[55] [5]),
        .O(\share2_reg_reg[53] ));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g0_b1__8_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g0_b2__8_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g0_b3__8_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g0_b4__8_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g0_b5__8_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g0_b6__8_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g0_b7__8_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g1_b0__8_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g1_b1__8_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g1_b2__8_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g1_b3__8_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g1_b4__8_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g1_b5__8_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g1_b6__8_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g1_b7__8_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g2_b0__8_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g2_b1__8_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g2_b2__8_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g2_b3__8_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g2_b4__8_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g2_b5__8_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g2_b6__8_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g2_b7__8_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g3_b0__8_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g3_b1__8_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g3_b2__8_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g3_b3__8_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g3_b4__8_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g3_b5__8_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g3_b6__8_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__8
       (.I0(\share2_reg_reg[48] ),
        .I1(\share2_reg_reg[49] ),
        .I2(\share2_reg_reg[50] ),
        .I3(\share2_reg_reg[51] ),
        .I4(\share2_reg_reg[52] ),
        .I5(\share2_reg_reg[53] ),
        .O(g3_b7__8_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[69]_i_6 
       (.I0(\share2_reg_reg[21]_0 ),
        .I1(\share1_reg[69]_i_5 ),
        .O(\share2_reg_reg[21] ));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[70]_i_6 
       (.I0(\share2_reg_reg[22]_0 ),
        .I1(\share1_reg[95]_i_2 [6]),
        .O(\share2_reg_reg[22] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[71]_i_6 
       (.I0(\share2_reg_reg[23] ),
        .I1(\share1_reg[71]_i_5 ),
        .O(\share2_reg_reg[23]_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[72]_i_3 
       (.I0(sub_bytes_share1[48]),
        .I1(\share1_reg[95]_i_2 [7]),
        .O(\share2_reg_reg[16] ));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[74]_i_3 
       (.I0(sub_bytes_share1[50]),
        .I1(\share1_reg[74]_i_2 ),
        .O(\share2_reg_reg[18] ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[80]_i_1 
       (.I0(key_IBUF[0]),
        .I1(plaintext_IBUF[0]),
        .I2(mask_in_IBUF[0]),
        .I3(\share1_reg_reg[85] [0]),
        .I4(round_ark_share1[80]),
        .I5(\share1_reg_reg[87] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[80]_i_2 
       (.I0(sub_bytes_share1[48]),
        .I1(\share1_reg_reg[80] ),
        .I2(\share1_reg[95]_i_2 [0]),
        .I3(\share1_reg_reg[80]_0 ),
        .I4(\share2_reg_reg[23] ),
        .I5(\share1_reg_reg[87]_0 [0]),
        .O(round_ark_share1[80]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[80]_i_3 
       (.I0(Q[0]),
        .I1(\share1_reg[80]_i_7_n_0 ),
        .I2(\share2_reg_reg[55] ),
        .I3(g2_b0__8_n_0),
        .I4(\share2_reg_reg[54] ),
        .I5(g3_b0__8_n_0),
        .O(sub_bytes_share1[48]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[80]_i_7 
       (.I0(g1_b0__8_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[55] [6]),
        .I3(g0_b0__8_n_0),
        .O(\share1_reg[80]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[81]_i_1 
       (.I0(key_IBUF[1]),
        .I1(plaintext_IBUF[1]),
        .I2(mask_in_IBUF[1]),
        .I3(\share1_reg_reg[85] [0]),
        .I4(round_ark_share1[81]),
        .I5(\share1_reg_reg[81] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[81]_i_2 
       (.I0(\share2_reg_reg[17] ),
        .I1(\share1_reg_reg[80] ),
        .I2(\share1_reg_reg[81]_0 ),
        .I3(\share1_reg_reg[81]_1 ),
        .I4(xtime_return26_in),
        .I5(\share1_reg_reg[87]_0 [1]),
        .O(round_ark_share1[81]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[81]_i_5 
       (.I0(\share2_reg_reg[23] ),
        .I1(sub_bytes_share1[48]),
        .O(xtime_return26_in));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[82]_i_1 
       (.I0(key_IBUF[2]),
        .I1(plaintext_IBUF[2]),
        .I2(mask_in_IBUF[2]),
        .I3(\share1_reg_reg[85] [0]),
        .I4(round_ark_share1[82]),
        .I5(\share1_reg_reg[87] ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[82]_i_10 
       (.I0(g1_b1__8_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[55] [6]),
        .I3(g0_b1__8_n_0),
        .O(\share1_reg[82]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[82]_i_2 
       (.I0(sub_bytes_share1[50]),
        .I1(\share1_reg_reg[80] ),
        .I2(\share1_reg[95]_i_2 [1]),
        .I3(\share1_reg_reg[82] ),
        .I4(\share2_reg_reg[17] ),
        .I5(\share1_reg_reg[87]_0 [2]),
        .O(round_ark_share1[82]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[82]_i_3 
       (.I0(Q[2]),
        .I1(\share1_reg[82]_i_8_n_0 ),
        .I2(\share2_reg_reg[55] ),
        .I3(g2_b2__8_n_0),
        .I4(\share2_reg_reg[54] ),
        .I5(g3_b2__8_n_0),
        .O(sub_bytes_share1[50]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[82]_i_6 
       (.I0(Q[1]),
        .I1(\share1_reg[82]_i_10_n_0 ),
        .I2(\share2_reg_reg[55] ),
        .I3(g2_b1__8_n_0),
        .I4(\share2_reg_reg[54] ),
        .I5(g3_b1__8_n_0),
        .O(\share2_reg_reg[17] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[82]_i_8 
       (.I0(g1_b2__8_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[55] [6]),
        .I3(g0_b2__8_n_0),
        .O(\share1_reg[82]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[83]_i_5 
       (.I0(\share2_reg_reg[19] ),
        .I1(\round_ctr_reg[2] ),
        .I2(\share1_reg[83]_i_2 ),
        .I3(\share1_reg[83]_i_2_0 ),
        .I4(\share2_reg_reg[23] ),
        .I5(sub_bytes_share1[50]),
        .O(post_linear_share1[0]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[84]_i_5 
       (.I0(\share2_reg_reg[20] ),
        .I1(\round_ctr_reg[2] ),
        .I2(\share1_reg[84]_i_2 ),
        .I3(\share1_reg[84]_i_2_0 ),
        .I4(\share2_reg_reg[23] ),
        .I5(\share2_reg_reg[19] ),
        .O(post_linear_share1[1]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[85]_i_1 
       (.I0(key_IBUF[3]),
        .I1(plaintext_IBUF[3]),
        .I2(mask_in_IBUF[3]),
        .I3(\share1_reg_reg[85] [0]),
        .I4(round_ark_share1[85]),
        .I5(\share1_reg_reg[85] [1]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[85]_i_2 
       (.I0(\share2_reg_reg[21]_0 ),
        .I1(\share1_reg_reg[80] ),
        .I2(\share1_reg[95]_i_2 [2]),
        .I3(\share1_reg_reg[85]_0 ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share1_reg_reg[87]_0 [3]),
        .O(round_ark_share1[85]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[85]_i_5 
       (.I0(Q[4]),
        .I1(\share1_reg[85]_i_8_n_0 ),
        .I2(\share2_reg_reg[55] ),
        .I3(g2_b4__8_n_0),
        .I4(\share2_reg_reg[54] ),
        .I5(g3_b4__8_n_0),
        .O(\share2_reg_reg[20] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[85]_i_8 
       (.I0(g1_b4__8_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[55] [6]),
        .I3(g0_b4__8_n_0),
        .O(\share1_reg[85]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[86]_i_1 
       (.I0(key_IBUF[4]),
        .I1(plaintext_IBUF[4]),
        .I2(mask_in_IBUF[4]),
        .I3(\share1_reg_reg[85] [0]),
        .I4(round_ark_share1[86]),
        .I5(\share1_reg_reg[81] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[86]_i_2 
       (.I0(\share2_reg_reg[22]_0 ),
        .I1(\share1_reg_reg[80] ),
        .I2(\share1_reg_reg[86] ),
        .I3(\share1_reg_reg[86]_0 ),
        .I4(\share2_reg_reg[21]_0 ),
        .I5(\share1_reg_reg[87]_0 [4]),
        .O(round_ark_share1[86]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[86]_i_5 
       (.I0(Q[5]),
        .I1(\share1_reg[86]_i_8_n_0 ),
        .I2(\share2_reg_reg[55] ),
        .I3(g2_b5__8_n_0),
        .I4(\share2_reg_reg[54] ),
        .I5(g3_b5__8_n_0),
        .O(\share2_reg_reg[21]_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[86]_i_8 
       (.I0(g1_b5__8_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[55] [6]),
        .I3(g0_b5__8_n_0),
        .O(\share1_reg[86]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[87]_i_1 
       (.I0(key_IBUF[5]),
        .I1(plaintext_IBUF[5]),
        .I2(mask_in_IBUF[5]),
        .I3(\share1_reg_reg[85] [0]),
        .I4(round_ark_share1[87]),
        .I5(\share1_reg_reg[87] ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[87]_i_10 
       (.I0(g1_b6__8_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[55] [6]),
        .I3(g0_b6__8_n_0),
        .O(\share1_reg[87]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[87]_i_2 
       (.I0(\share2_reg_reg[23] ),
        .I1(\share1_reg_reg[80] ),
        .I2(\share1_reg[95]_i_2 [3]),
        .I3(\share1_reg_reg[87]_1 ),
        .I4(\share2_reg_reg[22]_0 ),
        .I5(\share1_reg_reg[87]_0 [5]),
        .O(round_ark_share1[87]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[87]_i_3 
       (.I0(Q[7]),
        .I1(\share1_reg[87]_i_8_n_0 ),
        .I2(\share2_reg_reg[55] ),
        .I3(g2_b7__8_n_0),
        .I4(\share2_reg_reg[54] ),
        .I5(g3_b7__8_n_0),
        .O(\share2_reg_reg[23] ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[87]_i_6 
       (.I0(Q[6]),
        .I1(\share1_reg[87]_i_10_n_0 ),
        .I2(\share2_reg_reg[55] ),
        .I3(g2_b6__8_n_0),
        .I4(\share2_reg_reg[54] ),
        .I5(g3_b6__8_n_0),
        .O(\share2_reg_reg[22]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[87]_i_8 
       (.I0(g1_b7__8_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[55] [6]),
        .I3(g0_b7__8_n_0),
        .O(\share1_reg[87]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[90]_i_3 
       (.I0(\share1_reg[90]_i_2 ),
        .I1(\share2_reg_reg[17] ),
        .I2(sub_bytes_share1[50]),
        .I3(\share1_reg[95]_i_2 [5]),
        .I4(\share1_reg[95]_i_2 [1]),
        .O(mix_cols_share1[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[91]_i_4 
       (.I0(\share1_reg[83]_i_2 ),
        .I1(\share1_reg[91]_i_2 ),
        .I2(\share2_reg_reg[19] ),
        .I3(\share2_reg_reg[23] ),
        .I4(sub_bytes_share1[50]),
        .O(\share2_reg_reg[107] ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[92]_i_5 
       (.I0(\share1_reg[84]_i_2 ),
        .I1(\share1_reg[69]_i_5 ),
        .I2(\share2_reg_reg[20] ),
        .I3(\share2_reg_reg[23] ),
        .I4(\share2_reg_reg[19] ),
        .O(\share2_reg_reg[108] ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[92]_i_8 
       (.I0(Q[3]),
        .I1(\share1_reg[92]_i_9_n_0 ),
        .I2(\share2_reg_reg[55] ),
        .I3(g2_b3__8_n_0),
        .I4(\share2_reg_reg[54] ),
        .I5(g3_b3__8_n_0),
        .O(\share2_reg_reg[19] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[92]_i_9 
       (.I0(g1_b3__8_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[55] [6]),
        .I3(g0_b3__8_n_0),
        .O(\share1_reg[92]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[93]_i_4 
       (.I0(\share1_reg[93]_i_2 ),
        .I1(\share2_reg_reg[20] ),
        .I2(\share2_reg_reg[21]_0 ),
        .I3(\share1_reg[95]_i_2 [6]),
        .I4(\share1_reg[95]_i_2 [2]),
        .O(mix_cols_share1[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[94]_i_4 
       (.I0(\share1_reg[95]_i_2 [4]),
        .I1(\share2_reg_reg[21]_0 ),
        .I2(\share2_reg_reg[22]_0 ),
        .I3(\share1_reg[71]_i_5 ),
        .I4(\share1_reg_reg[86] ),
        .O(mix_cols_share1[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[95]_i_4 
       (.I0(\share1_reg[95]_i_2_0 ),
        .I1(\share2_reg_reg[22]_0 ),
        .I2(\share2_reg_reg[23] ),
        .I3(\share1_reg[95]_i_2 [7]),
        .I4(\share1_reg[95]_i_2 [3]),
        .O(mix_cols_share1[3]));
  LUT4 #(
    .INIT(16'h1000)) 
    \share2_reg[127]_i_3 
       (.I0(\share2_reg_reg[126] [2]),
        .I1(\share2_reg_reg[126] [0]),
        .I2(\share2_reg_reg[126] [3]),
        .I3(\share2_reg_reg[126] [1]),
        .O(\round_ctr_reg[2] ));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_15
   (mix_cols_share1,
    sub_bytes_share1,
    \share2_reg_reg[25] ,
    \share2_reg_reg[28] ,
    \share2_reg_reg[30] ,
    \share2_reg_reg[63] ,
    \share2_reg_reg[62] ,
    \share2_reg_reg[61] ,
    \share2_reg_reg[60] ,
    \share2_reg_reg[59] ,
    \share2_reg_reg[58] ,
    \share2_reg_reg[57] ,
    \share2_reg_reg[56] ,
    D,
    \share2_reg_reg[27] ,
    \share1_reg[39]_i_2 ,
    \share1_reg_reg[57] ,
    \share1_reg_reg[60] ,
    \share1_reg[38]_i_2 ,
    \share1_reg[38]_i_2_0 ,
    \share1_reg[39]_i_2_0 ,
    Q,
    \ciphertext_reg[63] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[57]_0 ,
    \share1_reg_reg[63] ,
    \share1_reg_reg[57]_1 ,
    \share1_reg_reg[57]_2 ,
    \share1_reg_reg[60]_0 ,
    \share1_reg_reg[63]_0 ,
    \share1_reg_reg[60]_1 ,
    \share1_reg_reg[59] ,
    \share1_reg_reg[59]_0 ,
    \share1_reg_reg[60]_2 );
  output [4:0]mix_cols_share1;
  output [3:0]sub_bytes_share1;
  output \share2_reg_reg[25] ;
  output \share2_reg_reg[28] ;
  output \share2_reg_reg[30] ;
  output \share2_reg_reg[63] ;
  output \share2_reg_reg[62] ;
  output \share2_reg_reg[61] ;
  output \share2_reg_reg[60] ;
  output \share2_reg_reg[59] ;
  output \share2_reg_reg[58] ;
  output \share2_reg_reg[57] ;
  output \share2_reg_reg[56] ;
  output [7:0]D;
  output \share2_reg_reg[27] ;
  input [9:0]\share1_reg[39]_i_2 ;
  input \share1_reg_reg[57] ;
  input \share1_reg_reg[60] ;
  input \share1_reg[38]_i_2 ;
  input \share1_reg[38]_i_2_0 ;
  input \share1_reg[39]_i_2_0 ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[63] ;
  input [7:0]key_IBUF;
  input [7:0]plaintext_IBUF;
  input [7:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[57]_0 ;
  input \share1_reg_reg[63] ;
  input \share1_reg_reg[57]_1 ;
  input \share1_reg_reg[57]_2 ;
  input [7:0]\share1_reg_reg[60]_0 ;
  input [4:0]\share1_reg_reg[63]_0 ;
  input [3:0]\share1_reg_reg[60]_1 ;
  input \share1_reg_reg[59] ;
  input \share1_reg_reg[59]_0 ;
  input \share1_reg_reg[60]_2 ;

  wire [7:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[63] ;
  wire g0_b0__7_n_0;
  wire g0_b1__7_n_0;
  wire g0_b2__7_n_0;
  wire g0_b3__7_n_0;
  wire g0_b4__7_n_0;
  wire g0_b5__7_n_0;
  wire g0_b6__7_n_0;
  wire g0_b7__7_n_0;
  wire g1_b0__7_n_0;
  wire g1_b1__7_n_0;
  wire g1_b2__7_n_0;
  wire g1_b3__7_n_0;
  wire g1_b4__7_n_0;
  wire g1_b5__7_n_0;
  wire g1_b6__7_n_0;
  wire g1_b7__7_n_0;
  wire g2_b0__7_n_0;
  wire g2_b1__7_n_0;
  wire g2_b2__7_n_0;
  wire g2_b3__7_n_0;
  wire g2_b4__7_n_0;
  wire g2_b5__7_n_0;
  wire g2_b6__7_n_0;
  wire g2_b7__7_n_0;
  wire g3_b0__7_n_0;
  wire g3_b1__7_n_0;
  wire g3_b2__7_n_0;
  wire g3_b3__7_n_0;
  wire g3_b4__7_n_0;
  wire g3_b5__7_n_0;
  wire g3_b6__7_n_0;
  wire g3_b7__7_n_0;
  wire [7:0]key_IBUF;
  wire [7:0]mask_in_IBUF;
  wire [4:0]mix_cols_share1;
  wire [7:0]plaintext_IBUF;
  wire [63:56]round_ark_share1;
  wire \share1_reg[38]_i_2 ;
  wire \share1_reg[38]_i_2_0 ;
  wire [9:0]\share1_reg[39]_i_2 ;
  wire \share1_reg[39]_i_2_0 ;
  wire \share1_reg[56]_i_5_n_0 ;
  wire \share1_reg[57]_i_7_n_0 ;
  wire \share1_reg[58]_i_5_n_0 ;
  wire \share1_reg[59]_i_6_n_0 ;
  wire \share1_reg[60]_i_6_n_0 ;
  wire \share1_reg[61]_i_6_n_0 ;
  wire \share1_reg[62]_i_6_n_0 ;
  wire \share1_reg[63]_i_6_n_0 ;
  wire \share1_reg_reg[57] ;
  wire [1:0]\share1_reg_reg[57]_0 ;
  wire \share1_reg_reg[57]_1 ;
  wire \share1_reg_reg[57]_2 ;
  wire \share1_reg_reg[59] ;
  wire \share1_reg_reg[59]_0 ;
  wire \share1_reg_reg[60] ;
  wire [7:0]\share1_reg_reg[60]_0 ;
  wire [3:0]\share1_reg_reg[60]_1 ;
  wire \share1_reg_reg[60]_2 ;
  wire \share1_reg_reg[63] ;
  wire [4:0]\share1_reg_reg[63]_0 ;
  wire \share2_reg_reg[25] ;
  wire \share2_reg_reg[27] ;
  wire \share2_reg_reg[28] ;
  wire \share2_reg_reg[30] ;
  wire \share2_reg_reg[56] ;
  wire \share2_reg_reg[57] ;
  wire \share2_reg_reg[58] ;
  wire \share2_reg_reg[59] ;
  wire \share2_reg_reg[60] ;
  wire \share2_reg_reg[61] ;
  wire \share2_reg_reg[62] ;
  wire \share2_reg_reg[63] ;
  wire [3:0]sub_bytes_share1;

  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[62]_i_1 
       (.I0(Q[14]),
        .I1(\ciphertext_reg[63] [6]),
        .O(\share2_reg_reg[62] ));
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[63]_i_1 
       (.I0(Q[15]),
        .I1(\ciphertext_reg[63] [7]),
        .O(\share2_reg_reg[63] ));
  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g0_b0__7_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__7_i_1
       (.I0(Q[8]),
        .I1(\ciphertext_reg[63] [0]),
        .O(\share2_reg_reg[56] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__7_i_2
       (.I0(Q[9]),
        .I1(\ciphertext_reg[63] [1]),
        .O(\share2_reg_reg[57] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__7_i_3
       (.I0(Q[10]),
        .I1(\ciphertext_reg[63] [2]),
        .O(\share2_reg_reg[58] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__7_i_4
       (.I0(Q[11]),
        .I1(\ciphertext_reg[63] [3]),
        .O(\share2_reg_reg[59] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__7_i_5
       (.I0(Q[12]),
        .I1(\ciphertext_reg[63] [4]),
        .O(\share2_reg_reg[60] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__7_i_6
       (.I0(Q[13]),
        .I1(\ciphertext_reg[63] [5]),
        .O(\share2_reg_reg[61] ));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g0_b1__7_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g0_b2__7_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g0_b3__7_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g0_b4__7_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g0_b5__7_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g0_b6__7_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g0_b7__7_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g1_b0__7_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g1_b1__7_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g1_b2__7_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g1_b3__7_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g1_b4__7_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g1_b5__7_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g1_b6__7_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g1_b7__7_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g2_b0__7_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g2_b1__7_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g2_b2__7_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g2_b3__7_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g2_b4__7_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g2_b5__7_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g2_b6__7_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g2_b7__7_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g3_b0__7_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g3_b1__7_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g3_b2__7_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g3_b3__7_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g3_b4__7_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g3_b5__7_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g3_b6__7_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__7
       (.I0(\share2_reg_reg[56] ),
        .I1(\share2_reg_reg[57] ),
        .I2(\share2_reg_reg[58] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share2_reg_reg[60] ),
        .I5(\share2_reg_reg[61] ),
        .O(g3_b7__7_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[32]_i_4 
       (.I0(sub_bytes_share1[0]),
        .I1(\share1_reg[39]_i_2 [0]),
        .I2(sub_bytes_share1[3]),
        .I3(\share1_reg[39]_i_2 [5]),
        .I4(\share1_reg[39]_i_2 [6]),
        .O(mix_cols_share1[0]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[34]_i_4 
       (.I0(sub_bytes_share1[1]),
        .I1(\share1_reg[39]_i_2 [1]),
        .I2(\share2_reg_reg[25] ),
        .I3(\share1_reg_reg[57] ),
        .I4(\share1_reg[39]_i_2 [7]),
        .O(mix_cols_share1[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[37]_i_3 
       (.I0(sub_bytes_share1[2]),
        .I1(\share1_reg[39]_i_2 [2]),
        .I2(\share2_reg_reg[28] ),
        .I3(\share1_reg_reg[60] ),
        .I4(\share1_reg[39]_i_2 [8]),
        .O(mix_cols_share1[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[38]_i_3 
       (.I0(\share2_reg_reg[30] ),
        .I1(\share1_reg[38]_i_2 ),
        .I2(sub_bytes_share1[2]),
        .I3(\share1_reg[39]_i_2 [4]),
        .I4(\share1_reg[38]_i_2_0 ),
        .O(mix_cols_share1[3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[39]_i_3 
       (.I0(sub_bytes_share1[3]),
        .I1(\share1_reg[39]_i_2 [3]),
        .I2(\share2_reg_reg[30] ),
        .I3(\share1_reg[39]_i_2_0 ),
        .I4(\share1_reg[39]_i_2 [9]),
        .O(mix_cols_share1[4]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[56]_i_1 
       (.I0(key_IBUF[0]),
        .I1(plaintext_IBUF[0]),
        .I2(mask_in_IBUF[0]),
        .I3(\share1_reg_reg[57]_0 [0]),
        .I4(round_ark_share1[56]),
        .I5(\share1_reg_reg[63] ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h96999666)) 
    \share1_reg[56]_i_2 
       (.I0(\share1_reg_reg[60]_0 [4]),
        .I1(\share1_reg_reg[60]_1 [0]),
        .I2(sub_bytes_share1[0]),
        .I3(\share1_reg_reg[57]_1 ),
        .I4(\share1_reg_reg[63]_0 [0]),
        .O(round_ark_share1[56]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[56]_i_3 
       (.I0(Q[0]),
        .I1(\share1_reg[56]_i_5_n_0 ),
        .I2(\share2_reg_reg[63] ),
        .I3(g2_b0__7_n_0),
        .I4(\share2_reg_reg[62] ),
        .I5(g3_b0__7_n_0),
        .O(sub_bytes_share1[0]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[56]_i_5 
       (.I0(g1_b0__7_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[63] [6]),
        .I3(g0_b0__7_n_0),
        .O(\share1_reg[56]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[57]_i_1 
       (.I0(key_IBUF[1]),
        .I1(plaintext_IBUF[1]),
        .I2(mask_in_IBUF[1]),
        .I3(\share1_reg_reg[57]_0 [0]),
        .I4(round_ark_share1[57]),
        .I5(\share1_reg_reg[57]_0 [1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h74478BB8)) 
    \share1_reg[57]_i_2 
       (.I0(\share2_reg_reg[25] ),
        .I1(\share1_reg_reg[57]_1 ),
        .I2(\share1_reg_reg[57] ),
        .I3(\share1_reg_reg[57]_2 ),
        .I4(\share1_reg_reg[60]_0 [0]),
        .O(round_ark_share1[57]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[57]_i_3 
       (.I0(Q[1]),
        .I1(\share1_reg[57]_i_7_n_0 ),
        .I2(\share2_reg_reg[63] ),
        .I3(g2_b1__7_n_0),
        .I4(\share2_reg_reg[62] ),
        .I5(g3_b1__7_n_0),
        .O(\share2_reg_reg[25] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[57]_i_7 
       (.I0(g1_b1__7_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[63] [6]),
        .I3(g0_b1__7_n_0),
        .O(\share1_reg[57]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[58]_i_1 
       (.I0(key_IBUF[2]),
        .I1(plaintext_IBUF[2]),
        .I2(mask_in_IBUF[2]),
        .I3(\share1_reg_reg[57]_0 [0]),
        .I4(round_ark_share1[58]),
        .I5(\share1_reg_reg[63] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h96999666)) 
    \share1_reg[58]_i_2 
       (.I0(\share1_reg_reg[60]_0 [5]),
        .I1(\share1_reg_reg[60]_1 [1]),
        .I2(sub_bytes_share1[1]),
        .I3(\share1_reg_reg[57]_1 ),
        .I4(\share1_reg_reg[63]_0 [1]),
        .O(round_ark_share1[58]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[58]_i_3 
       (.I0(Q[2]),
        .I1(\share1_reg[58]_i_5_n_0 ),
        .I2(\share2_reg_reg[63] ),
        .I3(g2_b2__7_n_0),
        .I4(\share2_reg_reg[62] ),
        .I5(g3_b2__7_n_0),
        .O(sub_bytes_share1[1]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[58]_i_5 
       (.I0(g1_b2__7_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[63] [6]),
        .I3(g0_b2__7_n_0),
        .O(\share1_reg[58]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[59]_i_1 
       (.I0(key_IBUF[3]),
        .I1(plaintext_IBUF[3]),
        .I2(mask_in_IBUF[3]),
        .I3(\share1_reg_reg[57]_0 [0]),
        .I4(round_ark_share1[59]),
        .I5(\share1_reg_reg[57]_0 [1]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h9666969996999666)) 
    \share1_reg[59]_i_2 
       (.I0(\share1_reg_reg[60]_0 [6]),
        .I1(\share1_reg_reg[60]_1 [2]),
        .I2(\share2_reg_reg[27] ),
        .I3(\share1_reg_reg[57]_1 ),
        .I4(\share1_reg_reg[59] ),
        .I5(\share1_reg_reg[59]_0 ),
        .O(round_ark_share1[59]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[59]_i_3 
       (.I0(Q[3]),
        .I1(\share1_reg[59]_i_6_n_0 ),
        .I2(\share2_reg_reg[63] ),
        .I3(g2_b3__7_n_0),
        .I4(\share2_reg_reg[62] ),
        .I5(g3_b3__7_n_0),
        .O(\share2_reg_reg[27] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[59]_i_6 
       (.I0(g1_b3__7_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[63] [6]),
        .I3(g0_b3__7_n_0),
        .O(\share1_reg[59]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[60]_i_1 
       (.I0(key_IBUF[4]),
        .I1(plaintext_IBUF[4]),
        .I2(mask_in_IBUF[4]),
        .I3(\share1_reg_reg[57]_0 [0]),
        .I4(round_ark_share1[60]),
        .I5(\share1_reg_reg[57]_0 [1]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h9666969996999666)) 
    \share1_reg[60]_i_2 
       (.I0(\share1_reg_reg[60]_0 [7]),
        .I1(\share1_reg_reg[60]_1 [3]),
        .I2(\share2_reg_reg[28] ),
        .I3(\share1_reg_reg[57]_1 ),
        .I4(\share1_reg_reg[60] ),
        .I5(\share1_reg_reg[60]_2 ),
        .O(round_ark_share1[60]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[60]_i_3 
       (.I0(Q[4]),
        .I1(\share1_reg[60]_i_6_n_0 ),
        .I2(\share2_reg_reg[63] ),
        .I3(g2_b4__7_n_0),
        .I4(\share2_reg_reg[62] ),
        .I5(g3_b4__7_n_0),
        .O(\share2_reg_reg[28] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[60]_i_6 
       (.I0(g1_b4__7_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[63] [6]),
        .I3(g0_b4__7_n_0),
        .O(\share1_reg[60]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[61]_i_1 
       (.I0(key_IBUF[5]),
        .I1(plaintext_IBUF[5]),
        .I2(mask_in_IBUF[5]),
        .I3(\share1_reg_reg[57]_0 [0]),
        .I4(round_ark_share1[61]),
        .I5(\share1_reg_reg[57]_0 [1]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[61]_i_2 
       (.I0(sub_bytes_share1[2]),
        .I1(\share1_reg_reg[57]_1 ),
        .I2(\share1_reg_reg[63]_0 [2]),
        .I3(\share1_reg_reg[60]_0 [1]),
        .O(round_ark_share1[61]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[61]_i_3 
       (.I0(Q[5]),
        .I1(\share1_reg[61]_i_6_n_0 ),
        .I2(\share2_reg_reg[63] ),
        .I3(g2_b5__7_n_0),
        .I4(\share2_reg_reg[62] ),
        .I5(g3_b5__7_n_0),
        .O(sub_bytes_share1[2]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[61]_i_6 
       (.I0(g1_b5__7_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[63] [6]),
        .I3(g0_b5__7_n_0),
        .O(\share1_reg[61]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[62]_i_1 
       (.I0(key_IBUF[6]),
        .I1(plaintext_IBUF[6]),
        .I2(mask_in_IBUF[6]),
        .I3(\share1_reg_reg[57]_0 [0]),
        .I4(round_ark_share1[62]),
        .I5(\share1_reg_reg[57]_0 [1]),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[62]_i_2 
       (.I0(\share2_reg_reg[30] ),
        .I1(\share1_reg_reg[57]_1 ),
        .I2(\share1_reg_reg[63]_0 [3]),
        .I3(\share1_reg_reg[60]_0 [2]),
        .O(round_ark_share1[62]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[62]_i_3 
       (.I0(Q[6]),
        .I1(\share1_reg[62]_i_6_n_0 ),
        .I2(\share2_reg_reg[63] ),
        .I3(g2_b6__7_n_0),
        .I4(\share2_reg_reg[62] ),
        .I5(g3_b6__7_n_0),
        .O(\share2_reg_reg[30] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[62]_i_6 
       (.I0(g1_b6__7_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[63] [6]),
        .I3(g0_b6__7_n_0),
        .O(\share1_reg[62]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[63]_i_1 
       (.I0(key_IBUF[7]),
        .I1(plaintext_IBUF[7]),
        .I2(mask_in_IBUF[7]),
        .I3(\share1_reg_reg[57]_0 [0]),
        .I4(round_ark_share1[63]),
        .I5(\share1_reg_reg[63] ),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[63]_i_2 
       (.I0(sub_bytes_share1[3]),
        .I1(\share1_reg_reg[57]_1 ),
        .I2(\share1_reg_reg[63]_0 [4]),
        .I3(\share1_reg_reg[60]_0 [3]),
        .O(round_ark_share1[63]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[63]_i_3 
       (.I0(Q[7]),
        .I1(\share1_reg[63]_i_6_n_0 ),
        .I2(\share2_reg_reg[63] ),
        .I3(g2_b7__7_n_0),
        .I4(\share2_reg_reg[62] ),
        .I5(g3_b7__7_n_0),
        .O(sub_bytes_share1[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[63]_i_6 
       (.I0(g1_b7__7_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[63] [6]),
        .I3(g0_b7__7_n_0),
        .O(\share1_reg[63]_i_6_n_0 ));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_16
   (\share2_reg_reg[34] ,
    \share2_reg_reg[34]_0 ,
    \share2_reg_reg[39] ,
    \share2_reg_reg[32] ,
    \share2_reg_reg[37] ,
    \share2_reg_reg[37]_0 ,
    \share2_reg_reg[35] ,
    \share2_reg_reg[38] ,
    \share2_reg_reg[38]_0 ,
    \share2_reg_reg[39]_0 ,
    \share2_reg_reg[32]_0 ,
    \share2_reg_reg[71] ,
    \share2_reg_reg[70] ,
    \share2_reg_reg[69] ,
    \share2_reg_reg[68] ,
    \share2_reg_reg[67] ,
    \share2_reg_reg[66] ,
    \share2_reg_reg[65] ,
    \share2_reg_reg[64] ,
    D,
    \round_ctr_reg[2] ,
    \share2_reg_reg[33] ,
    \share2_reg_reg[36] ,
    \share1_reg[50]_i_2 ,
    sub_bytes_share1,
    \share1_reg[33]_i_2_0 ,
    \share1_reg[35]_i_2_0 ,
    \share1_reg[35]_i_2_1 ,
    \share1_reg[53]_i_2 ,
    \share1_reg_reg[35] ,
    \share1_reg[36]_i_2_0 ,
    \share1_reg[54]_i_2 ,
    \share1_reg_reg[46] ,
    Q,
    \ciphertext_reg[71] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[45] ,
    \share1_reg_reg[39] ,
    \share1_reg_reg[47] ,
    \share2_reg_reg[94] ,
    \share1_reg_reg[47]_0 ,
    mix_cols_share1,
    \share1_reg_reg[33] ,
    \share1_reg_reg[36] ,
    \share1_reg_reg[46]_0 );
  output \share2_reg_reg[34] ;
  output \share2_reg_reg[34]_0 ;
  output \share2_reg_reg[39] ;
  output \share2_reg_reg[32] ;
  output \share2_reg_reg[37] ;
  output \share2_reg_reg[37]_0 ;
  output \share2_reg_reg[35] ;
  output \share2_reg_reg[38] ;
  output \share2_reg_reg[38]_0 ;
  output \share2_reg_reg[39]_0 ;
  output \share2_reg_reg[32]_0 ;
  output \share2_reg_reg[71] ;
  output \share2_reg_reg[70] ;
  output \share2_reg_reg[69] ;
  output \share2_reg_reg[68] ;
  output \share2_reg_reg[67] ;
  output \share2_reg_reg[66] ;
  output \share2_reg_reg[65] ;
  output \share2_reg_reg[64] ;
  output [12:0]D;
  output \round_ctr_reg[2] ;
  output \share2_reg_reg[33] ;
  output \share2_reg_reg[36] ;
  input \share1_reg[50]_i_2 ;
  input [11:0]sub_bytes_share1;
  input \share1_reg[33]_i_2_0 ;
  input \share1_reg[35]_i_2_0 ;
  input \share1_reg[35]_i_2_1 ;
  input \share1_reg[53]_i_2 ;
  input \share1_reg_reg[35] ;
  input \share1_reg[36]_i_2_0 ;
  input \share1_reg[54]_i_2 ;
  input \share1_reg_reg[46] ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[71] ;
  input [12:0]key_IBUF;
  input [12:0]plaintext_IBUF;
  input [12:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[45] ;
  input \share1_reg_reg[39] ;
  input \share1_reg_reg[47] ;
  input [3:0]\share2_reg_reg[94] ;
  input [12:0]\share1_reg_reg[47]_0 ;
  input [4:0]mix_cols_share1;
  input \share1_reg_reg[33] ;
  input \share1_reg_reg[36] ;
  input \share1_reg_reg[46]_0 ;

  wire [12:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[71] ;
  wire g0_b0__6_n_0;
  wire g0_b1__6_n_0;
  wire g0_b2__6_n_0;
  wire g0_b3__6_n_0;
  wire g0_b4__6_n_0;
  wire g0_b5__6_n_0;
  wire g0_b6__6_n_0;
  wire g0_b7__6_n_0;
  wire g1_b0__6_n_0;
  wire g1_b1__6_n_0;
  wire g1_b2__6_n_0;
  wire g1_b3__6_n_0;
  wire g1_b4__6_n_0;
  wire g1_b5__6_n_0;
  wire g1_b6__6_n_0;
  wire g1_b7__6_n_0;
  wire g2_b0__6_n_0;
  wire g2_b1__6_n_0;
  wire g2_b2__6_n_0;
  wire g2_b3__6_n_0;
  wire g2_b4__6_n_0;
  wire g2_b5__6_n_0;
  wire g2_b6__6_n_0;
  wire g2_b7__6_n_0;
  wire g3_b0__6_n_0;
  wire g3_b1__6_n_0;
  wire g3_b2__6_n_0;
  wire g3_b3__6_n_0;
  wire g3_b4__6_n_0;
  wire g3_b5__6_n_0;
  wire g3_b6__6_n_0;
  wire g3_b7__6_n_0;
  wire [12:0]key_IBUF;
  wire [12:0]mask_in_IBUF;
  wire [4:0]mix_cols_share1;
  wire [12:0]plaintext_IBUF;
  wire [47:32]round_ark_share1;
  wire \round_ctr_reg[2] ;
  wire \share1_reg[32]_i_5_n_0 ;
  wire \share1_reg[33]_i_2_0 ;
  wire \share1_reg[33]_i_3_n_0 ;
  wire \share1_reg[34]_i_5_n_0 ;
  wire \share1_reg[35]_i_2_0 ;
  wire \share1_reg[35]_i_2_1 ;
  wire \share1_reg[35]_i_3_n_0 ;
  wire \share1_reg[36]_i_2_0 ;
  wire \share1_reg[36]_i_3_n_0 ;
  wire \share1_reg[40]_i_4_n_0 ;
  wire \share1_reg[46]_i_4_n_0 ;
  wire \share1_reg[47]_i_4_n_0 ;
  wire \share1_reg[50]_i_2 ;
  wire \share1_reg[53]_i_2 ;
  wire \share1_reg[54]_i_2 ;
  wire \share1_reg[57]_i_8_n_0 ;
  wire \share1_reg[59]_i_7_n_0 ;
  wire \share1_reg[60]_i_7_n_0 ;
  wire \share1_reg_reg[33] ;
  wire \share1_reg_reg[35] ;
  wire \share1_reg_reg[36] ;
  wire \share1_reg_reg[39] ;
  wire [1:0]\share1_reg_reg[45] ;
  wire \share1_reg_reg[46] ;
  wire \share1_reg_reg[46]_0 ;
  wire \share1_reg_reg[47] ;
  wire [12:0]\share1_reg_reg[47]_0 ;
  wire \share2_reg_reg[32] ;
  wire \share2_reg_reg[32]_0 ;
  wire \share2_reg_reg[33] ;
  wire \share2_reg_reg[34] ;
  wire \share2_reg_reg[34]_0 ;
  wire \share2_reg_reg[35] ;
  wire \share2_reg_reg[36] ;
  wire \share2_reg_reg[37] ;
  wire \share2_reg_reg[37]_0 ;
  wire \share2_reg_reg[38] ;
  wire \share2_reg_reg[38]_0 ;
  wire \share2_reg_reg[39] ;
  wire \share2_reg_reg[39]_0 ;
  wire \share2_reg_reg[64] ;
  wire \share2_reg_reg[65] ;
  wire \share2_reg_reg[66] ;
  wire \share2_reg_reg[67] ;
  wire \share2_reg_reg[68] ;
  wire \share2_reg_reg[69] ;
  wire \share2_reg_reg[70] ;
  wire \share2_reg_reg[71] ;
  wire [3:0]\share2_reg_reg[94] ;
  wire [11:0]sub_bytes_share1;

  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[70]_i_1 
       (.I0(Q[14]),
        .I1(\ciphertext_reg[71] [6]),
        .O(\share2_reg_reg[70] ));
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[71]_i_1 
       (.I0(Q[15]),
        .I1(\ciphertext_reg[71] [7]),
        .O(\share2_reg_reg[71] ));
  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g0_b0__6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__6_i_1
       (.I0(Q[8]),
        .I1(\ciphertext_reg[71] [0]),
        .O(\share2_reg_reg[64] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__6_i_2
       (.I0(Q[9]),
        .I1(\ciphertext_reg[71] [1]),
        .O(\share2_reg_reg[65] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__6_i_3
       (.I0(Q[10]),
        .I1(\ciphertext_reg[71] [2]),
        .O(\share2_reg_reg[66] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__6_i_4
       (.I0(Q[11]),
        .I1(\ciphertext_reg[71] [3]),
        .O(\share2_reg_reg[67] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__6_i_5
       (.I0(Q[12]),
        .I1(\ciphertext_reg[71] [4]),
        .O(\share2_reg_reg[68] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__6_i_6
       (.I0(Q[13]),
        .I1(\ciphertext_reg[71] [5]),
        .O(\share2_reg_reg[69] ));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g0_b1__6_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g0_b2__6_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g0_b3__6_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g0_b4__6_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g0_b5__6_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g0_b6__6_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g0_b7__6_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g1_b0__6_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g1_b1__6_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g1_b2__6_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g1_b3__6_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g1_b4__6_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g1_b5__6_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g1_b6__6_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g1_b7__6_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g2_b0__6_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g2_b1__6_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g2_b2__6_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g2_b3__6_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g2_b4__6_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g2_b5__6_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g2_b6__6_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g2_b7__6_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g3_b0__6_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g3_b1__6_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g3_b2__6_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g3_b3__6_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g3_b4__6_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g3_b5__6_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g3_b6__6_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__6
       (.I0(\share2_reg_reg[64] ),
        .I1(\share2_reg_reg[65] ),
        .I2(\share2_reg_reg[66] ),
        .I3(\share2_reg_reg[67] ),
        .I4(\share2_reg_reg[68] ),
        .I5(\share2_reg_reg[69] ),
        .O(g3_b7__6_n_0));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[32]_i_1 
       (.I0(key_IBUF[0]),
        .I1(plaintext_IBUF[0]),
        .I2(mask_in_IBUF[0]),
        .I3(\share1_reg_reg[45] [0]),
        .I4(round_ark_share1[32]),
        .I5(\share1_reg_reg[39] ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[32]_i_2 
       (.I0(\share2_reg_reg[32] ),
        .I1(\round_ctr_reg[2] ),
        .I2(mix_cols_share1[0]),
        .I3(\share1_reg_reg[47]_0 [0]),
        .O(round_ark_share1[32]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[32]_i_3 
       (.I0(Q[0]),
        .I1(\share1_reg[32]_i_5_n_0 ),
        .I2(\share2_reg_reg[71] ),
        .I3(g2_b0__6_n_0),
        .I4(\share2_reg_reg[70] ),
        .I5(g3_b0__6_n_0),
        .O(\share2_reg_reg[32] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[32]_i_5 
       (.I0(g1_b0__6_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[71] [6]),
        .I3(g0_b0__6_n_0),
        .O(\share1_reg[32]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[33]_i_1 
       (.I0(key_IBUF[1]),
        .I1(plaintext_IBUF[1]),
        .I2(mask_in_IBUF[1]),
        .I3(\share1_reg_reg[45] [0]),
        .I4(round_ark_share1[33]),
        .I5(\share1_reg_reg[39] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h74478BB8)) 
    \share1_reg[33]_i_2 
       (.I0(\share2_reg_reg[33] ),
        .I1(\round_ctr_reg[2] ),
        .I2(\share1_reg_reg[33] ),
        .I3(\share1_reg[33]_i_3_n_0 ),
        .I4(\share1_reg_reg[47]_0 [1]),
        .O(round_ark_share1[33]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share1_reg[33]_i_3 
       (.I0(\share1_reg[50]_i_2 ),
        .I1(\share2_reg_reg[39] ),
        .I2(\share2_reg_reg[32] ),
        .I3(sub_bytes_share1[7]),
        .I4(sub_bytes_share1[4]),
        .I5(\share1_reg[33]_i_2_0 ),
        .O(\share1_reg[33]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[34]_i_1 
       (.I0(key_IBUF[2]),
        .I1(plaintext_IBUF[2]),
        .I2(mask_in_IBUF[2]),
        .I3(\share1_reg_reg[45] [0]),
        .I4(round_ark_share1[34]),
        .I5(\share1_reg_reg[39] ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[34]_i_2 
       (.I0(\share2_reg_reg[34]_0 ),
        .I1(\round_ctr_reg[2] ),
        .I2(mix_cols_share1[1]),
        .I3(\share1_reg_reg[47]_0 [2]),
        .O(round_ark_share1[34]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[34]_i_3 
       (.I0(Q[2]),
        .I1(\share1_reg[34]_i_5_n_0 ),
        .I2(\share2_reg_reg[71] ),
        .I3(g2_b2__6_n_0),
        .I4(\share2_reg_reg[70] ),
        .I5(g3_b2__6_n_0),
        .O(\share2_reg_reg[34]_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[34]_i_5 
       (.I0(g1_b2__6_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[71] [6]),
        .I3(g0_b2__6_n_0),
        .O(\share1_reg[34]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[35]_i_1 
       (.I0(key_IBUF[3]),
        .I1(plaintext_IBUF[3]),
        .I2(mask_in_IBUF[3]),
        .I3(\share1_reg_reg[45] [0]),
        .I4(round_ark_share1[35]),
        .I5(\share1_reg_reg[39] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h74478BB8)) 
    \share1_reg[35]_i_2 
       (.I0(\share2_reg_reg[35] ),
        .I1(\round_ctr_reg[2] ),
        .I2(\share1_reg_reg[35] ),
        .I3(\share1_reg[35]_i_3_n_0 ),
        .I4(\share1_reg_reg[47]_0 [3]),
        .O(round_ark_share1[35]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share1_reg[35]_i_3 
       (.I0(\share1_reg[35]_i_2_0 ),
        .I1(\share2_reg_reg[39] ),
        .I2(\share2_reg_reg[34]_0 ),
        .I3(sub_bytes_share1[7]),
        .I4(sub_bytes_share1[5]),
        .I5(\share1_reg[35]_i_2_1 ),
        .O(\share1_reg[35]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[36]_i_1 
       (.I0(key_IBUF[4]),
        .I1(plaintext_IBUF[4]),
        .I2(mask_in_IBUF[4]),
        .I3(\share1_reg_reg[45] [0]),
        .I4(round_ark_share1[36]),
        .I5(\share1_reg_reg[39] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h74478BB8)) 
    \share1_reg[36]_i_2 
       (.I0(\share2_reg_reg[36] ),
        .I1(\round_ctr_reg[2] ),
        .I2(\share1_reg_reg[36] ),
        .I3(\share1_reg[36]_i_3_n_0 ),
        .I4(\share1_reg_reg[47]_0 [4]),
        .O(round_ark_share1[36]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share1_reg[36]_i_3 
       (.I0(\share1_reg[53]_i_2 ),
        .I1(\share2_reg_reg[39] ),
        .I2(\share2_reg_reg[35] ),
        .I3(sub_bytes_share1[7]),
        .I4(\share1_reg_reg[35] ),
        .I5(\share1_reg[36]_i_2_0 ),
        .O(\share1_reg[36]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[37]_i_1 
       (.I0(key_IBUF[5]),
        .I1(plaintext_IBUF[5]),
        .I2(mask_in_IBUF[5]),
        .I3(\share1_reg_reg[45] [0]),
        .I4(round_ark_share1[37]),
        .I5(\share1_reg_reg[39] ),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[37]_i_2 
       (.I0(\share2_reg_reg[37]_0 ),
        .I1(\round_ctr_reg[2] ),
        .I2(mix_cols_share1[2]),
        .I3(\share1_reg_reg[47]_0 [5]),
        .O(round_ark_share1[37]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[38]_i_1 
       (.I0(key_IBUF[6]),
        .I1(plaintext_IBUF[6]),
        .I2(mask_in_IBUF[6]),
        .I3(\share1_reg_reg[45] [0]),
        .I4(round_ark_share1[38]),
        .I5(\share1_reg_reg[39] ),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[38]_i_2 
       (.I0(\share2_reg_reg[38]_0 ),
        .I1(\round_ctr_reg[2] ),
        .I2(mix_cols_share1[3]),
        .I3(\share1_reg_reg[47]_0 [6]),
        .O(round_ark_share1[38]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[39]_i_1 
       (.I0(key_IBUF[7]),
        .I1(plaintext_IBUF[7]),
        .I2(mask_in_IBUF[7]),
        .I3(\share1_reg_reg[45] [0]),
        .I4(round_ark_share1[39]),
        .I5(\share1_reg_reg[39] ),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[39]_i_2 
       (.I0(\share2_reg_reg[39] ),
        .I1(\round_ctr_reg[2] ),
        .I2(mix_cols_share1[4]),
        .I3(\share1_reg_reg[47]_0 [7]),
        .O(round_ark_share1[39]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[40]_i_1 
       (.I0(key_IBUF[8]),
        .I1(plaintext_IBUF[8]),
        .I2(mask_in_IBUF[8]),
        .I3(\share1_reg_reg[45] [0]),
        .I4(round_ark_share1[40]),
        .I5(\share1_reg_reg[47] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[40]_i_2 
       (.I0(sub_bytes_share1[8]),
        .I1(\round_ctr_reg[2] ),
        .I2(\share2_reg_reg[39] ),
        .I3(\share2_reg_reg[32]_0 ),
        .I4(sub_bytes_share1[0]),
        .I5(\share1_reg_reg[47]_0 [8]),
        .O(round_ark_share1[40]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[40]_i_3 
       (.I0(Q[7]),
        .I1(\share1_reg[40]_i_4_n_0 ),
        .I2(\share2_reg_reg[71] ),
        .I3(g2_b7__6_n_0),
        .I4(\share2_reg_reg[70] ),
        .I5(g3_b7__6_n_0),
        .O(\share2_reg_reg[39] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[40]_i_4 
       (.I0(g1_b7__6_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[71] [6]),
        .I3(g0_b7__6_n_0),
        .O(\share1_reg[40]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[42]_i_1 
       (.I0(key_IBUF[9]),
        .I1(plaintext_IBUF[9]),
        .I2(mask_in_IBUF[9]),
        .I3(\share1_reg_reg[45] [0]),
        .I4(round_ark_share1[42]),
        .I5(\share1_reg_reg[47] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[42]_i_2 
       (.I0(sub_bytes_share1[9]),
        .I1(\round_ctr_reg[2] ),
        .I2(\share2_reg_reg[33] ),
        .I3(\share2_reg_reg[34] ),
        .I4(sub_bytes_share1[1]),
        .I5(\share1_reg_reg[47]_0 [9]),
        .O(round_ark_share1[42]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[45]_i_1 
       (.I0(key_IBUF[10]),
        .I1(plaintext_IBUF[10]),
        .I2(mask_in_IBUF[10]),
        .I3(\share1_reg_reg[45] [0]),
        .I4(round_ark_share1[45]),
        .I5(\share1_reg_reg[45] [1]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[45]_i_2 
       (.I0(sub_bytes_share1[10]),
        .I1(\round_ctr_reg[2] ),
        .I2(\share2_reg_reg[36] ),
        .I3(\share2_reg_reg[37] ),
        .I4(sub_bytes_share1[2]),
        .I5(\share1_reg_reg[47]_0 [10]),
        .O(round_ark_share1[45]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[46]_i_1 
       (.I0(key_IBUF[11]),
        .I1(plaintext_IBUF[11]),
        .I2(mask_in_IBUF[11]),
        .I3(\share1_reg_reg[45] [0]),
        .I4(round_ark_share1[46]),
        .I5(\share1_reg_reg[45] [1]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[46]_i_2 
       (.I0(\share1_reg_reg[46] ),
        .I1(\round_ctr_reg[2] ),
        .I2(\share2_reg_reg[37]_0 ),
        .I3(\share2_reg_reg[38] ),
        .I4(\share1_reg_reg[46]_0 ),
        .I5(\share1_reg_reg[47]_0 [11]),
        .O(round_ark_share1[46]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[46]_i_3 
       (.I0(Q[5]),
        .I1(\share1_reg[46]_i_4_n_0 ),
        .I2(\share2_reg_reg[71] ),
        .I3(g2_b5__6_n_0),
        .I4(\share2_reg_reg[70] ),
        .I5(g3_b5__6_n_0),
        .O(\share2_reg_reg[37]_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[46]_i_4 
       (.I0(g1_b5__6_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[71] [6]),
        .I3(g0_b5__6_n_0),
        .O(\share1_reg[46]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[47]_i_1 
       (.I0(key_IBUF[12]),
        .I1(plaintext_IBUF[12]),
        .I2(mask_in_IBUF[12]),
        .I3(\share1_reg_reg[45] [0]),
        .I4(round_ark_share1[47]),
        .I5(\share1_reg_reg[47] ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[47]_i_2 
       (.I0(sub_bytes_share1[11]),
        .I1(\round_ctr_reg[2] ),
        .I2(\share2_reg_reg[38]_0 ),
        .I3(\share2_reg_reg[39]_0 ),
        .I4(sub_bytes_share1[3]),
        .I5(\share1_reg_reg[47]_0 [12]),
        .O(round_ark_share1[47]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[47]_i_3 
       (.I0(Q[6]),
        .I1(\share1_reg[47]_i_4_n_0 ),
        .I2(\share2_reg_reg[71] ),
        .I3(g2_b6__6_n_0),
        .I4(\share2_reg_reg[70] ),
        .I5(g3_b6__6_n_0),
        .O(\share2_reg_reg[38]_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[47]_i_4 
       (.I0(g1_b6__6_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[71] [6]),
        .I3(g0_b6__6_n_0),
        .O(\share1_reg[47]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[48]_i_5 
       (.I0(\share2_reg_reg[32] ),
        .I1(sub_bytes_share1[11]),
        .I2(sub_bytes_share1[4]),
        .O(\share2_reg_reg[32]_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[50]_i_5 
       (.I0(\share2_reg_reg[34]_0 ),
        .I1(\share1_reg[50]_i_2 ),
        .I2(sub_bytes_share1[5]),
        .O(\share2_reg_reg[34] ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[53]_i_4 
       (.I0(\share2_reg_reg[37]_0 ),
        .I1(\share1_reg[53]_i_2 ),
        .I2(sub_bytes_share1[6]),
        .O(\share2_reg_reg[37] ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[54]_i_4 
       (.I0(\share2_reg_reg[38]_0 ),
        .I1(sub_bytes_share1[10]),
        .I2(\share1_reg[54]_i_2 ),
        .O(\share2_reg_reg[38] ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[55]_i_5 
       (.I0(\share2_reg_reg[39] ),
        .I1(\share1_reg_reg[46] ),
        .I2(sub_bytes_share1[7]),
        .O(\share2_reg_reg[39]_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[57]_i_4 
       (.I0(Q[1]),
        .I1(\share1_reg[57]_i_8_n_0 ),
        .I2(\share2_reg_reg[71] ),
        .I3(g2_b1__6_n_0),
        .I4(\share2_reg_reg[70] ),
        .I5(g3_b1__6_n_0),
        .O(\share2_reg_reg[33] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[57]_i_8 
       (.I0(g1_b1__6_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[71] [6]),
        .I3(g0_b1__6_n_0),
        .O(\share1_reg[57]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[59]_i_4 
       (.I0(Q[3]),
        .I1(\share1_reg[59]_i_7_n_0 ),
        .I2(\share2_reg_reg[71] ),
        .I3(g2_b3__6_n_0),
        .I4(\share2_reg_reg[70] ),
        .I5(g3_b3__6_n_0),
        .O(\share2_reg_reg[35] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[59]_i_7 
       (.I0(g1_b3__6_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[71] [6]),
        .I3(g0_b3__6_n_0),
        .O(\share1_reg[59]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[60]_i_4 
       (.I0(Q[4]),
        .I1(\share1_reg[60]_i_7_n_0 ),
        .I2(\share2_reg_reg[71] ),
        .I3(g2_b4__6_n_0),
        .I4(\share2_reg_reg[70] ),
        .I5(g3_b4__6_n_0),
        .O(\share2_reg_reg[36] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[60]_i_7 
       (.I0(g1_b4__6_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[71] [6]),
        .I3(g0_b4__6_n_0),
        .O(\share1_reg[60]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h1000)) 
    \share2_reg[94]_i_2 
       (.I0(\share2_reg_reg[94] [2]),
        .I1(\share2_reg_reg[94] [0]),
        .I2(\share2_reg_reg[94] [3]),
        .I3(\share2_reg_reg[94] [1]),
        .O(\round_ctr_reg[2] ));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_17
   (post_linear_share1,
    \share2_reg_reg[41] ,
    \share2_reg_reg[1] ,
    \share2_reg_reg[43] ,
    \share2_reg_reg[3] ,
    \share2_reg_reg[44] ,
    \share2_reg_reg[4] ,
    \share2_reg_reg[47] ,
    \share2_reg_reg[45] ,
    \share2_reg_reg[79] ,
    \share2_reg_reg[78] ,
    \share2_reg_reg[77] ,
    \share2_reg_reg[76] ,
    \share2_reg_reg[75] ,
    \share2_reg_reg[74] ,
    \share2_reg_reg[73] ,
    \share2_reg_reg[72] ,
    \share2_reg_reg[46] ,
    \share1_reg[12]_i_2 ,
    sub_bytes_share1,
    \share1_reg[9]_i_2 ,
    \share1_reg[11]_i_2 ,
    \share1_reg[12]_i_2_0 ,
    \share1_reg[12]_i_2_1 ,
    \share1_reg[17]_i_3 ,
    \share1_reg[17]_i_3_0 ,
    Q,
    \share1_reg[19]_i_3 ,
    \share1_reg[20]_i_3 ,
    \share1_reg[20]_i_3_0 ,
    \ciphertext_reg[79] );
  output [2:0]post_linear_share1;
  output \share2_reg_reg[41] ;
  output \share2_reg_reg[1] ;
  output \share2_reg_reg[43] ;
  output \share2_reg_reg[3] ;
  output \share2_reg_reg[44] ;
  output \share2_reg_reg[4] ;
  output \share2_reg_reg[47] ;
  output [2:0]\share2_reg_reg[45] ;
  output \share2_reg_reg[79] ;
  output \share2_reg_reg[78] ;
  output \share2_reg_reg[77] ;
  output \share2_reg_reg[76] ;
  output \share2_reg_reg[75] ;
  output \share2_reg_reg[74] ;
  output \share2_reg_reg[73] ;
  output \share2_reg_reg[72] ;
  output \share2_reg_reg[46] ;
  input \share1_reg[12]_i_2 ;
  input [2:0]sub_bytes_share1;
  input \share1_reg[9]_i_2 ;
  input \share1_reg[11]_i_2 ;
  input \share1_reg[12]_i_2_0 ;
  input \share1_reg[12]_i_2_1 ;
  input \share1_reg[17]_i_3 ;
  input \share1_reg[17]_i_3_0 ;
  input [15:0]Q;
  input \share1_reg[19]_i_3 ;
  input \share1_reg[20]_i_3 ;
  input \share1_reg[20]_i_3_0 ;
  input [7:0]\ciphertext_reg[79] ;

  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[79] ;
  wire g0_b0__5_n_0;
  wire g0_b1__5_n_0;
  wire g0_b2__5_n_0;
  wire g0_b3__5_n_0;
  wire g0_b4__5_n_0;
  wire g0_b5__5_n_0;
  wire g0_b6__5_n_0;
  wire g0_b7__5_n_0;
  wire g1_b0__5_n_0;
  wire g1_b1__5_n_0;
  wire g1_b2__5_n_0;
  wire g1_b3__5_n_0;
  wire g1_b4__5_n_0;
  wire g1_b5__5_n_0;
  wire g1_b6__5_n_0;
  wire g1_b7__5_n_0;
  wire g2_b0__5_n_0;
  wire g2_b1__5_n_0;
  wire g2_b2__5_n_0;
  wire g2_b3__5_n_0;
  wire g2_b4__5_n_0;
  wire g2_b5__5_n_0;
  wire g2_b6__5_n_0;
  wire g2_b7__5_n_0;
  wire g3_b0__5_n_0;
  wire g3_b1__5_n_0;
  wire g3_b2__5_n_0;
  wire g3_b3__5_n_0;
  wire g3_b4__5_n_0;
  wire g3_b5__5_n_0;
  wire g3_b6__5_n_0;
  wire g3_b7__5_n_0;
  wire [2:0]post_linear_share1;
  wire \share1_reg[11]_i_2 ;
  wire \share1_reg[12]_i_2 ;
  wire \share1_reg[12]_i_2_0 ;
  wire \share1_reg[12]_i_2_1 ;
  wire \share1_reg[16]_i_8_n_0 ;
  wire \share1_reg[17]_i_3 ;
  wire \share1_reg[17]_i_3_0 ;
  wire \share1_reg[18]_i_10_n_0 ;
  wire \share1_reg[19]_i_3 ;
  wire \share1_reg[20]_i_3 ;
  wire \share1_reg[20]_i_3_0 ;
  wire \share1_reg[21]_i_8_n_0 ;
  wire \share1_reg[22]_i_8_n_0 ;
  wire \share1_reg[23]_i_10_n_0 ;
  wire \share1_reg[25]_i_10_n_0 ;
  wire \share1_reg[27]_i_10_n_0 ;
  wire \share1_reg[28]_i_12_n_0 ;
  wire \share1_reg[9]_i_2 ;
  wire \share2_reg_reg[1] ;
  wire \share2_reg_reg[3] ;
  wire \share2_reg_reg[41] ;
  wire \share2_reg_reg[43] ;
  wire \share2_reg_reg[44] ;
  wire [2:0]\share2_reg_reg[45] ;
  wire \share2_reg_reg[46] ;
  wire \share2_reg_reg[47] ;
  wire \share2_reg_reg[4] ;
  wire \share2_reg_reg[72] ;
  wire \share2_reg_reg[73] ;
  wire \share2_reg_reg[74] ;
  wire \share2_reg_reg[75] ;
  wire \share2_reg_reg[76] ;
  wire \share2_reg_reg[77] ;
  wire \share2_reg_reg[78] ;
  wire \share2_reg_reg[79] ;
  wire [2:0]sub_bytes_share1;

  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[78]_i_1 
       (.I0(Q[14]),
        .I1(\ciphertext_reg[79] [6]),
        .O(\share2_reg_reg[78] ));
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[79]_i_1 
       (.I0(Q[15]),
        .I1(\ciphertext_reg[79] [7]),
        .O(\share2_reg_reg[79] ));
  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g0_b0__5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__5_i_1
       (.I0(Q[8]),
        .I1(\ciphertext_reg[79] [0]),
        .O(\share2_reg_reg[72] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__5_i_2
       (.I0(Q[9]),
        .I1(\ciphertext_reg[79] [1]),
        .O(\share2_reg_reg[73] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__5_i_3
       (.I0(Q[10]),
        .I1(\ciphertext_reg[79] [2]),
        .O(\share2_reg_reg[74] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__5_i_4
       (.I0(Q[11]),
        .I1(\ciphertext_reg[79] [3]),
        .O(\share2_reg_reg[75] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__5_i_5
       (.I0(Q[12]),
        .I1(\ciphertext_reg[79] [4]),
        .O(\share2_reg_reg[76] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__5_i_6
       (.I0(Q[13]),
        .I1(\ciphertext_reg[79] [5]),
        .O(\share2_reg_reg[77] ));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g0_b1__5_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g0_b2__5_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g0_b3__5_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g0_b4__5_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g0_b5__5_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g0_b6__5_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g0_b7__5_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g1_b0__5_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g1_b1__5_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g1_b2__5_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g1_b3__5_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g1_b4__5_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g1_b5__5_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g1_b6__5_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g1_b7__5_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g2_b0__5_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g2_b1__5_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g2_b2__5_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g2_b3__5_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g2_b4__5_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g2_b5__5_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g2_b6__5_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g2_b7__5_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g3_b0__5_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g3_b1__5_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g3_b2__5_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g3_b3__5_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g3_b4__5_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g3_b5__5_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g3_b6__5_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__5
       (.I0(\share2_reg_reg[72] ),
        .I1(\share2_reg_reg[73] ),
        .I2(\share2_reg_reg[74] ),
        .I3(\share2_reg_reg[75] ),
        .I4(\share2_reg_reg[76] ),
        .I5(\share2_reg_reg[77] ),
        .O(g3_b7__5_n_0));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[11]_i_3 
       (.I0(\share2_reg_reg[43] ),
        .I1(\share1_reg[12]_i_2 ),
        .I2(sub_bytes_share1[1]),
        .I3(sub_bytes_share1[2]),
        .I4(\share2_reg_reg[3] ),
        .I5(\share1_reg[11]_i_2 ),
        .O(post_linear_share1[1]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[12]_i_3 
       (.I0(\share2_reg_reg[44] ),
        .I1(\share1_reg[12]_i_2 ),
        .I2(\share1_reg[12]_i_2_0 ),
        .I3(sub_bytes_share1[2]),
        .I4(\share2_reg_reg[4] ),
        .I5(\share1_reg[12]_i_2_1 ),
        .O(post_linear_share1[2]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[16]_i_5 
       (.I0(Q[0]),
        .I1(\share1_reg[16]_i_8_n_0 ),
        .I2(\share2_reg_reg[79] ),
        .I3(g2_b0__5_n_0),
        .I4(\share2_reg_reg[78] ),
        .I5(g3_b0__5_n_0),
        .O(\share2_reg_reg[45] [0]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[16]_i_8 
       (.I0(g1_b0__5_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[79] [6]),
        .I3(g0_b0__5_n_0),
        .O(\share1_reg[16]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[17]_i_4 
       (.I0(\share1_reg[17]_i_3 ),
        .I1(\share2_reg_reg[47] ),
        .I2(\share2_reg_reg[45] [0]),
        .I3(\share1_reg[17]_i_3_0 ),
        .O(\share2_reg_reg[1] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[18]_i_10 
       (.I0(g1_b2__5_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[79] [6]),
        .I3(g0_b2__5_n_0),
        .O(\share1_reg[18]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[18]_i_6 
       (.I0(Q[2]),
        .I1(\share1_reg[18]_i_10_n_0 ),
        .I2(\share2_reg_reg[79] ),
        .I3(g2_b2__5_n_0),
        .I4(\share2_reg_reg[78] ),
        .I5(g3_b2__5_n_0),
        .O(\share2_reg_reg[45] [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[19]_i_4 
       (.I0(\share1_reg[12]_i_2_0 ),
        .I1(\share2_reg_reg[47] ),
        .I2(\share2_reg_reg[45] [1]),
        .I3(\share1_reg[19]_i_3 ),
        .O(\share2_reg_reg[3] ));
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[20]_i_4 
       (.I0(\share1_reg[20]_i_3 ),
        .I1(\share2_reg_reg[47] ),
        .I2(\share2_reg_reg[43] ),
        .I3(\share1_reg[20]_i_3_0 ),
        .O(\share2_reg_reg[4] ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[21]_i_5 
       (.I0(Q[5]),
        .I1(\share1_reg[21]_i_8_n_0 ),
        .I2(\share2_reg_reg[79] ),
        .I3(g2_b5__5_n_0),
        .I4(\share2_reg_reg[78] ),
        .I5(g3_b5__5_n_0),
        .O(\share2_reg_reg[45] [2]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[21]_i_8 
       (.I0(g1_b5__5_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[79] [6]),
        .I3(g0_b5__5_n_0),
        .O(\share1_reg[21]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[22]_i_5 
       (.I0(Q[6]),
        .I1(\share1_reg[22]_i_8_n_0 ),
        .I2(\share2_reg_reg[79] ),
        .I3(g2_b6__5_n_0),
        .I4(\share2_reg_reg[78] ),
        .I5(g3_b6__5_n_0),
        .O(\share2_reg_reg[46] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[22]_i_8 
       (.I0(g1_b6__5_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[79] [6]),
        .I3(g0_b6__5_n_0),
        .O(\share1_reg[22]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[23]_i_10 
       (.I0(g1_b7__5_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[79] [6]),
        .I3(g0_b7__5_n_0),
        .O(\share1_reg[23]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[23]_i_6 
       (.I0(Q[7]),
        .I1(\share1_reg[23]_i_10_n_0 ),
        .I2(\share2_reg_reg[79] ),
        .I3(g2_b7__5_n_0),
        .I4(\share2_reg_reg[78] ),
        .I5(g3_b7__5_n_0),
        .O(\share2_reg_reg[47] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[25]_i_10 
       (.I0(g1_b1__5_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[79] [6]),
        .I3(g0_b1__5_n_0),
        .O(\share1_reg[25]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[25]_i_9 
       (.I0(Q[1]),
        .I1(\share1_reg[25]_i_10_n_0 ),
        .I2(\share2_reg_reg[79] ),
        .I3(g2_b1__5_n_0),
        .I4(\share2_reg_reg[78] ),
        .I5(g3_b1__5_n_0),
        .O(\share2_reg_reg[41] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[27]_i_10 
       (.I0(g1_b3__5_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[79] [6]),
        .I3(g0_b3__5_n_0),
        .O(\share1_reg[27]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[27]_i_9 
       (.I0(Q[3]),
        .I1(\share1_reg[27]_i_10_n_0 ),
        .I2(\share2_reg_reg[79] ),
        .I3(g2_b3__5_n_0),
        .I4(\share2_reg_reg[78] ),
        .I5(g3_b3__5_n_0),
        .O(\share2_reg_reg[43] ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[28]_i_10 
       (.I0(Q[4]),
        .I1(\share1_reg[28]_i_12_n_0 ),
        .I2(\share2_reg_reg[79] ),
        .I3(g2_b4__5_n_0),
        .I4(\share2_reg_reg[78] ),
        .I5(g3_b4__5_n_0),
        .O(\share2_reg_reg[44] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[28]_i_12 
       (.I0(g1_b4__5_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[79] [6]),
        .I3(g0_b4__5_n_0),
        .O(\share1_reg[28]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[9]_i_3 
       (.I0(\share2_reg_reg[41] ),
        .I1(\share1_reg[12]_i_2 ),
        .I2(sub_bytes_share1[0]),
        .I3(sub_bytes_share1[2]),
        .I4(\share2_reg_reg[1] ),
        .I5(\share1_reg[9]_i_2 ),
        .O(post_linear_share1[0]));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_18
   (\share2_reg_reg[50] ,
    sub_bytes_share1,
    post_linear_share1,
    \share2_reg_reg[49] ,
    \share2_reg_reg[9] ,
    \share2_reg_reg[51] ,
    \share2_reg_reg[11] ,
    \share2_reg_reg[53] ,
    \share2_reg_reg[52] ,
    \share2_reg_reg[12] ,
    \share2_reg_reg[54] ,
    \share2_reg_reg[54]_0 ,
    \share2_reg_reg[55] ,
    \share2_reg_reg[48] ,
    \share2_reg_reg[87] ,
    \share2_reg_reg[86] ,
    \share2_reg_reg[85] ,
    \share2_reg_reg[84] ,
    \share2_reg_reg[83] ,
    \share2_reg_reg[82] ,
    \share2_reg_reg[81] ,
    \share2_reg_reg[80] ,
    \share1_reg[98]_i_3 ,
    \share1_reg[113]_i_2 ,
    \share1_reg[96]_i_3 ,
    \share1_reg[115]_i_2 ,
    \share1_reg[101]_i_3 ,
    \share1_reg[116]_i_2 ,
    \share1_reg[103]_i_3 ,
    \share1_reg[121]_i_2 ,
    \share1_reg[121]_i_2_0 ,
    Q,
    \share1_reg[123]_i_2 ,
    \share1_reg[124]_i_2 ,
    \share1_reg[124]_i_2_0 ,
    \ciphertext_reg[87] );
  output \share2_reg_reg[50] ;
  output [3:0]sub_bytes_share1;
  output [2:0]post_linear_share1;
  output \share2_reg_reg[49] ;
  output \share2_reg_reg[9] ;
  output \share2_reg_reg[51] ;
  output \share2_reg_reg[11] ;
  output \share2_reg_reg[53] ;
  output \share2_reg_reg[52] ;
  output \share2_reg_reg[12] ;
  output \share2_reg_reg[54] ;
  output \share2_reg_reg[54]_0 ;
  output \share2_reg_reg[55] ;
  output \share2_reg_reg[48] ;
  output \share2_reg_reg[87] ;
  output \share2_reg_reg[86] ;
  output \share2_reg_reg[85] ;
  output \share2_reg_reg[84] ;
  output \share2_reg_reg[83] ;
  output \share2_reg_reg[82] ;
  output \share2_reg_reg[81] ;
  output \share2_reg_reg[80] ;
  input \share1_reg[98]_i_3 ;
  input \share1_reg[113]_i_2 ;
  input [4:0]\share1_reg[96]_i_3 ;
  input \share1_reg[115]_i_2 ;
  input \share1_reg[101]_i_3 ;
  input \share1_reg[116]_i_2 ;
  input \share1_reg[103]_i_3 ;
  input \share1_reg[121]_i_2 ;
  input \share1_reg[121]_i_2_0 ;
  input [15:0]Q;
  input \share1_reg[123]_i_2 ;
  input \share1_reg[124]_i_2 ;
  input \share1_reg[124]_i_2_0 ;
  input [7:0]\ciphertext_reg[87] ;

  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[87] ;
  wire g0_b0__4_n_0;
  wire g0_b1__4_n_0;
  wire g0_b2__4_n_0;
  wire g0_b3__4_n_0;
  wire g0_b4__4_n_0;
  wire g0_b5__4_n_0;
  wire g0_b6__4_n_0;
  wire g0_b7__4_n_0;
  wire g1_b0__4_n_0;
  wire g1_b1__4_n_0;
  wire g1_b2__4_n_0;
  wire g1_b3__4_n_0;
  wire g1_b4__4_n_0;
  wire g1_b5__4_n_0;
  wire g1_b6__4_n_0;
  wire g1_b7__4_n_0;
  wire g2_b0__4_n_0;
  wire g2_b1__4_n_0;
  wire g2_b2__4_n_0;
  wire g2_b3__4_n_0;
  wire g2_b4__4_n_0;
  wire g2_b5__4_n_0;
  wire g2_b6__4_n_0;
  wire g2_b7__4_n_0;
  wire g3_b0__4_n_0;
  wire g3_b1__4_n_0;
  wire g3_b2__4_n_0;
  wire g3_b3__4_n_0;
  wire g3_b4__4_n_0;
  wire g3_b5__4_n_0;
  wire g3_b6__4_n_0;
  wire g3_b7__4_n_0;
  wire [2:0]post_linear_share1;
  wire \share1_reg[101]_i_3 ;
  wire \share1_reg[103]_i_3 ;
  wire \share1_reg[105]_i_5_n_0 ;
  wire \share1_reg[107]_i_7_n_0 ;
  wire \share1_reg[108]_i_5_n_0 ;
  wire \share1_reg[113]_i_2 ;
  wire \share1_reg[115]_i_2 ;
  wire \share1_reg[116]_i_2 ;
  wire \share1_reg[120]_i_7_n_0 ;
  wire \share1_reg[121]_i_2 ;
  wire \share1_reg[121]_i_2_0 ;
  wire \share1_reg[122]_i_9_n_0 ;
  wire \share1_reg[123]_i_2 ;
  wire \share1_reg[124]_i_2 ;
  wire \share1_reg[124]_i_2_0 ;
  wire \share1_reg[125]_i_7_n_0 ;
  wire \share1_reg[126]_i_7_n_0 ;
  wire \share1_reg[127]_i_9_n_0 ;
  wire [4:0]\share1_reg[96]_i_3 ;
  wire \share1_reg[98]_i_3 ;
  wire \share2_reg_reg[11] ;
  wire \share2_reg_reg[12] ;
  wire \share2_reg_reg[48] ;
  wire \share2_reg_reg[49] ;
  wire \share2_reg_reg[50] ;
  wire \share2_reg_reg[51] ;
  wire \share2_reg_reg[52] ;
  wire \share2_reg_reg[53] ;
  wire \share2_reg_reg[54] ;
  wire \share2_reg_reg[54]_0 ;
  wire \share2_reg_reg[55] ;
  wire \share2_reg_reg[80] ;
  wire \share2_reg_reg[81] ;
  wire \share2_reg_reg[82] ;
  wire \share2_reg_reg[83] ;
  wire \share2_reg_reg[84] ;
  wire \share2_reg_reg[85] ;
  wire \share2_reg_reg[86] ;
  wire \share2_reg_reg[87] ;
  wire \share2_reg_reg[9] ;
  wire [3:0]sub_bytes_share1;

  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[86]_i_1 
       (.I0(Q[14]),
        .I1(\ciphertext_reg[87] [6]),
        .O(\share2_reg_reg[86] ));
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[87]_i_1 
       (.I0(Q[15]),
        .I1(\ciphertext_reg[87] [7]),
        .O(\share2_reg_reg[87] ));
  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g0_b0__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__4_i_1
       (.I0(Q[8]),
        .I1(\ciphertext_reg[87] [0]),
        .O(\share2_reg_reg[80] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__4_i_2
       (.I0(Q[9]),
        .I1(\ciphertext_reg[87] [1]),
        .O(\share2_reg_reg[81] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__4_i_3
       (.I0(Q[10]),
        .I1(\ciphertext_reg[87] [2]),
        .O(\share2_reg_reg[82] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__4_i_4
       (.I0(Q[11]),
        .I1(\ciphertext_reg[87] [3]),
        .O(\share2_reg_reg[83] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__4_i_5
       (.I0(Q[12]),
        .I1(\ciphertext_reg[87] [4]),
        .O(\share2_reg_reg[84] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__4_i_6
       (.I0(Q[13]),
        .I1(\ciphertext_reg[87] [5]),
        .O(\share2_reg_reg[85] ));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g0_b1__4_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g0_b2__4_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g0_b3__4_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g0_b4__4_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g0_b5__4_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g0_b6__4_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g0_b7__4_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g1_b0__4_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g1_b1__4_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g1_b2__4_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g1_b3__4_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g1_b4__4_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g1_b5__4_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g1_b6__4_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g1_b7__4_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g2_b0__4_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g2_b1__4_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g2_b2__4_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g2_b3__4_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g2_b4__4_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g2_b5__4_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g2_b6__4_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g2_b7__4_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g3_b0__4_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g3_b1__4_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g3_b2__4_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g3_b3__4_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g3_b4__4_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g3_b5__4_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g3_b6__4_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__4
       (.I0(\share2_reg_reg[80] ),
        .I1(\share2_reg_reg[81] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[83] ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share2_reg_reg[85] ),
        .O(g3_b7__4_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[101]_i_4 
       (.I0(sub_bytes_share1[2]),
        .I1(\share1_reg[101]_i_3 ),
        .O(\share2_reg_reg[53] ));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[102]_i_4 
       (.I0(\share2_reg_reg[54]_0 ),
        .I1(\share1_reg[96]_i_3 [3]),
        .O(\share2_reg_reg[54] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[103]_i_4 
       (.I0(sub_bytes_share1[3]),
        .I1(\share1_reg[103]_i_3 ),
        .O(\share2_reg_reg[55] ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[105]_i_3 
       (.I0(Q[1]),
        .I1(\share1_reg[105]_i_5_n_0 ),
        .I2(\share2_reg_reg[87] ),
        .I3(g2_b1__4_n_0),
        .I4(\share2_reg_reg[86] ),
        .I5(g3_b1__4_n_0),
        .O(\share2_reg_reg[49] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[105]_i_5 
       (.I0(g1_b1__4_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[87] [6]),
        .I3(g0_b1__4_n_0),
        .O(\share1_reg[105]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[107]_i_4 
       (.I0(Q[3]),
        .I1(\share1_reg[107]_i_7_n_0 ),
        .I2(\share2_reg_reg[87] ),
        .I3(g2_b3__4_n_0),
        .I4(\share2_reg_reg[86] ),
        .I5(g3_b3__4_n_0),
        .O(\share2_reg_reg[51] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[107]_i_7 
       (.I0(g1_b3__4_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[87] [6]),
        .I3(g0_b3__4_n_0),
        .O(\share1_reg[107]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[108]_i_3 
       (.I0(Q[4]),
        .I1(\share1_reg[108]_i_5_n_0 ),
        .I2(\share2_reg_reg[87] ),
        .I3(g2_b4__4_n_0),
        .I4(\share2_reg_reg[86] ),
        .I5(g3_b4__4_n_0),
        .O(\share2_reg_reg[52] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[108]_i_5 
       (.I0(g1_b4__4_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[87] [6]),
        .I3(g0_b4__4_n_0),
        .O(\share1_reg[108]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[113]_i_3 
       (.I0(\share2_reg_reg[49] ),
        .I1(\share1_reg[113]_i_2 ),
        .I2(\share1_reg[98]_i_3 ),
        .I3(\share2_reg_reg[9] ),
        .I4(\share1_reg[96]_i_3 [2]),
        .I5(\share1_reg[96]_i_3 [0]),
        .O(post_linear_share1[0]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[115]_i_3 
       (.I0(\share2_reg_reg[51] ),
        .I1(\share1_reg[113]_i_2 ),
        .I2(\share1_reg[115]_i_2 ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share1_reg[96]_i_3 [2]),
        .I5(\share1_reg[96]_i_3 [1]),
        .O(post_linear_share1[1]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[116]_i_3 
       (.I0(\share2_reg_reg[52] ),
        .I1(\share1_reg[113]_i_2 ),
        .I2(\share1_reg[101]_i_3 ),
        .I3(\share2_reg_reg[12] ),
        .I4(\share1_reg[96]_i_3 [2]),
        .I5(\share1_reg[116]_i_2 ),
        .O(post_linear_share1[2]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[120]_i_4 
       (.I0(Q[0]),
        .I1(\share1_reg[120]_i_7_n_0 ),
        .I2(\share2_reg_reg[87] ),
        .I3(g2_b0__4_n_0),
        .I4(\share2_reg_reg[86] ),
        .I5(g3_b0__4_n_0),
        .O(sub_bytes_share1[0]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[120]_i_7 
       (.I0(g1_b0__4_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[87] [6]),
        .I3(g0_b0__4_n_0),
        .O(\share1_reg[120]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[121]_i_4 
       (.I0(\share1_reg[121]_i_2 ),
        .I1(sub_bytes_share1[3]),
        .I2(sub_bytes_share1[0]),
        .I3(\share1_reg[121]_i_2_0 ),
        .O(\share2_reg_reg[9] ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[122]_i_5 
       (.I0(Q[2]),
        .I1(\share1_reg[122]_i_9_n_0 ),
        .I2(\share2_reg_reg[87] ),
        .I3(g2_b2__4_n_0),
        .I4(\share2_reg_reg[86] ),
        .I5(g3_b2__4_n_0),
        .O(sub_bytes_share1[1]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[122]_i_9 
       (.I0(g1_b2__4_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[87] [6]),
        .I3(g0_b2__4_n_0),
        .O(\share1_reg[122]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[123]_i_5 
       (.I0(\share1_reg[116]_i_2 ),
        .I1(sub_bytes_share1[3]),
        .I2(sub_bytes_share1[1]),
        .I3(\share1_reg[123]_i_2 ),
        .O(\share2_reg_reg[11] ));
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[124]_i_4 
       (.I0(\share1_reg[124]_i_2 ),
        .I1(sub_bytes_share1[3]),
        .I2(\share2_reg_reg[51] ),
        .I3(\share1_reg[124]_i_2_0 ),
        .O(\share2_reg_reg[12] ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[125]_i_4 
       (.I0(Q[5]),
        .I1(\share1_reg[125]_i_7_n_0 ),
        .I2(\share2_reg_reg[87] ),
        .I3(g2_b5__4_n_0),
        .I4(\share2_reg_reg[86] ),
        .I5(g3_b5__4_n_0),
        .O(sub_bytes_share1[2]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[125]_i_7 
       (.I0(g1_b5__4_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[87] [6]),
        .I3(g0_b5__4_n_0),
        .O(\share1_reg[125]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[126]_i_4 
       (.I0(Q[6]),
        .I1(\share1_reg[126]_i_7_n_0 ),
        .I2(\share2_reg_reg[87] ),
        .I3(g2_b6__4_n_0),
        .I4(\share2_reg_reg[86] ),
        .I5(g3_b6__4_n_0),
        .O(\share2_reg_reg[54]_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[126]_i_7 
       (.I0(g1_b6__4_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[87] [6]),
        .I3(g0_b6__4_n_0),
        .O(\share1_reg[126]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[127]_i_5 
       (.I0(Q[7]),
        .I1(\share1_reg[127]_i_9_n_0 ),
        .I2(\share2_reg_reg[87] ),
        .I3(g2_b7__4_n_0),
        .I4(\share2_reg_reg[86] ),
        .I5(g3_b7__4_n_0),
        .O(sub_bytes_share1[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[127]_i_9 
       (.I0(g1_b7__4_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[87] [6]),
        .I3(g0_b7__4_n_0),
        .O(\share1_reg[127]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[96]_i_4 
       (.I0(sub_bytes_share1[0]),
        .I1(\share1_reg[96]_i_3 [4]),
        .O(\share2_reg_reg[48] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[98]_i_4 
       (.I0(sub_bytes_share1[1]),
        .I1(\share1_reg[98]_i_3 ),
        .O(\share2_reg_reg[50] ));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_19
   (post_linear_share1,
    \share2_reg_reg[56] ,
    \share2_reg_reg[57] ,
    xtime_return21_in,
    \share2_reg_reg[58] ,
    \share2_reg_reg[61] ,
    \share2_reg_reg[60] ,
    \share2_reg_reg[61]_0 ,
    \share2_reg_reg[62] ,
    \share2_reg_reg[62]_0 ,
    \share2_reg_reg[63] ,
    \share2_reg_reg[95] ,
    \share2_reg_reg[94] ,
    \share2_reg_reg[59] ,
    \share2_reg_reg[93] ,
    \share2_reg_reg[92] ,
    \share2_reg_reg[91] ,
    \share2_reg_reg[90] ,
    \share2_reg_reg[89] ,
    \share2_reg_reg[88] ,
    D,
    \share1_reg_reg[90] ,
    xtime_return26_in,
    \share1_reg[71]_i_2 ,
    \share1_reg[66]_i_2 ,
    \share1_reg[89]_i_2 ,
    \share1_reg[89]_i_2_0 ,
    \share1_reg[74]_i_2 ,
    \share1_reg[69]_i_2 ,
    \share1_reg[77]_i_2 ,
    \share1_reg[70]_i_2 ,
    \share1_reg[70]_i_2_0 ,
    \share1_reg[70]_i_2_1 ,
    \share1_reg[71]_i_2_0 ,
    Q,
    \ciphertext_reg[95] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[93] ,
    \share1_reg_reg[95] ,
    \share1_reg_reg[91] ,
    mix_cols_share1,
    \share1_reg_reg[95]_0 ,
    \share1_reg_reg[91]_0 ,
    \share1_reg_reg[92] );
  output [5:0]post_linear_share1;
  output \share2_reg_reg[56] ;
  output \share2_reg_reg[57] ;
  output [2:0]xtime_return21_in;
  output \share2_reg_reg[58] ;
  output \share2_reg_reg[61] ;
  output \share2_reg_reg[60] ;
  output \share2_reg_reg[61]_0 ;
  output \share2_reg_reg[62] ;
  output \share2_reg_reg[62]_0 ;
  output \share2_reg_reg[63] ;
  output \share2_reg_reg[95] ;
  output \share2_reg_reg[94] ;
  output \share2_reg_reg[59] ;
  output \share2_reg_reg[93] ;
  output \share2_reg_reg[92] ;
  output \share2_reg_reg[91] ;
  output \share2_reg_reg[90] ;
  output \share2_reg_reg[89] ;
  output \share2_reg_reg[88] ;
  output [5:0]D;
  input \share1_reg_reg[90] ;
  input [0:0]xtime_return26_in;
  input [7:0]\share1_reg[71]_i_2 ;
  input \share1_reg[66]_i_2 ;
  input \share1_reg[89]_i_2 ;
  input \share1_reg[89]_i_2_0 ;
  input \share1_reg[74]_i_2 ;
  input \share1_reg[69]_i_2 ;
  input \share1_reg[77]_i_2 ;
  input \share1_reg[70]_i_2 ;
  input \share1_reg[70]_i_2_0 ;
  input \share1_reg[70]_i_2_1 ;
  input \share1_reg[71]_i_2_0 ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[95] ;
  input [5:0]key_IBUF;
  input [5:0]plaintext_IBUF;
  input [5:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[93] ;
  input \share1_reg_reg[95] ;
  input \share1_reg_reg[91] ;
  input [3:0]mix_cols_share1;
  input [5:0]\share1_reg_reg[95]_0 ;
  input \share1_reg_reg[91]_0 ;
  input \share1_reg_reg[92] ;

  wire [5:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[95] ;
  wire g0_b0__3_n_0;
  wire g0_b1__3_n_0;
  wire g0_b2__3_n_0;
  wire g0_b3__3_n_0;
  wire g0_b4__3_n_0;
  wire g0_b5__3_n_0;
  wire g0_b6__3_n_0;
  wire g0_b7__3_n_0;
  wire g1_b0__3_n_0;
  wire g1_b1__3_n_0;
  wire g1_b2__3_n_0;
  wire g1_b3__3_n_0;
  wire g1_b4__3_n_0;
  wire g1_b5__3_n_0;
  wire g1_b6__3_n_0;
  wire g1_b7__3_n_0;
  wire g2_b0__3_n_0;
  wire g2_b1__3_n_0;
  wire g2_b2__3_n_0;
  wire g2_b3__3_n_0;
  wire g2_b4__3_n_0;
  wire g2_b5__3_n_0;
  wire g2_b6__3_n_0;
  wire g2_b7__3_n_0;
  wire g3_b0__3_n_0;
  wire g3_b1__3_n_0;
  wire g3_b2__3_n_0;
  wire g3_b3__3_n_0;
  wire g3_b4__3_n_0;
  wire g3_b5__3_n_0;
  wire g3_b6__3_n_0;
  wire g3_b7__3_n_0;
  wire [5:0]key_IBUF;
  wire [5:0]mask_in_IBUF;
  wire [3:0]mix_cols_share1;
  wire [5:0]plaintext_IBUF;
  wire [5:0]post_linear_share1;
  wire [95:90]round_ark_share1;
  wire \share1_reg[66]_i_2 ;
  wire \share1_reg[69]_i_2 ;
  wire \share1_reg[70]_i_2 ;
  wire \share1_reg[70]_i_2_0 ;
  wire \share1_reg[70]_i_2_1 ;
  wire [7:0]\share1_reg[71]_i_2 ;
  wire \share1_reg[71]_i_2_0 ;
  wire \share1_reg[74]_i_2 ;
  wire \share1_reg[77]_i_2 ;
  wire \share1_reg[88]_i_5_n_0 ;
  wire \share1_reg[89]_i_2 ;
  wire \share1_reg[89]_i_2_0 ;
  wire \share1_reg[90]_i_6_n_0 ;
  wire \share1_reg[91]_i_5_n_0 ;
  wire \share1_reg[92]_i_6_n_0 ;
  wire \share1_reg[92]_i_7_n_0 ;
  wire \share1_reg[93]_i_5_n_0 ;
  wire \share1_reg[94]_i_5_n_0 ;
  wire \share1_reg[95]_i_5_n_0 ;
  wire \share1_reg_reg[90] ;
  wire \share1_reg_reg[91] ;
  wire \share1_reg_reg[91]_0 ;
  wire \share1_reg_reg[92] ;
  wire [1:0]\share1_reg_reg[93] ;
  wire \share1_reg_reg[95] ;
  wire [5:0]\share1_reg_reg[95]_0 ;
  wire \share2_reg_reg[56] ;
  wire \share2_reg_reg[57] ;
  wire \share2_reg_reg[58] ;
  wire \share2_reg_reg[59] ;
  wire \share2_reg_reg[60] ;
  wire \share2_reg_reg[61] ;
  wire \share2_reg_reg[61]_0 ;
  wire \share2_reg_reg[62] ;
  wire \share2_reg_reg[62]_0 ;
  wire \share2_reg_reg[63] ;
  wire \share2_reg_reg[88] ;
  wire \share2_reg_reg[89] ;
  wire \share2_reg_reg[90] ;
  wire \share2_reg_reg[91] ;
  wire \share2_reg_reg[92] ;
  wire \share2_reg_reg[93] ;
  wire \share2_reg_reg[94] ;
  wire \share2_reg_reg[95] ;
  wire [95:88]sub_bytes_share1;
  wire [2:0]xtime_return21_in;
  wire [0:0]xtime_return26_in;

  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[94]_i_1 
       (.I0(Q[14]),
        .I1(\ciphertext_reg[95] [6]),
        .O(\share2_reg_reg[94] ));
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[95]_i_1 
       (.I0(Q[15]),
        .I1(\ciphertext_reg[95] [7]),
        .O(\share2_reg_reg[95] ));
  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g0_b0__3_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__3_i_1
       (.I0(Q[8]),
        .I1(\ciphertext_reg[95] [0]),
        .O(\share2_reg_reg[88] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__3_i_2
       (.I0(Q[9]),
        .I1(\ciphertext_reg[95] [1]),
        .O(\share2_reg_reg[89] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__3_i_3
       (.I0(Q[10]),
        .I1(\ciphertext_reg[95] [2]),
        .O(\share2_reg_reg[90] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__3_i_4
       (.I0(Q[11]),
        .I1(\ciphertext_reg[95] [3]),
        .O(\share2_reg_reg[91] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__3_i_5
       (.I0(Q[12]),
        .I1(\ciphertext_reg[95] [4]),
        .O(\share2_reg_reg[92] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__3_i_6
       (.I0(Q[13]),
        .I1(\ciphertext_reg[95] [5]),
        .O(\share2_reg_reg[93] ));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g0_b1__3_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g0_b2__3_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g0_b3__3_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g0_b4__3_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g0_b5__3_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g0_b6__3_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g0_b7__3_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g1_b0__3_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g1_b1__3_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g1_b2__3_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g1_b3__3_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g1_b4__3_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g1_b5__3_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g1_b6__3_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g1_b7__3_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g2_b0__3_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g2_b1__3_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g2_b2__3_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g2_b3__3_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g2_b4__3_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g2_b5__3_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g2_b6__3_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g2_b7__3_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g3_b0__3_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g3_b1__3_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g3_b2__3_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g3_b3__3_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g3_b4__3_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g3_b5__3_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g3_b6__3_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__3
       (.I0(\share2_reg_reg[88] ),
        .I1(\share2_reg_reg[89] ),
        .I2(\share2_reg_reg[90] ),
        .I3(\share2_reg_reg[91] ),
        .I4(\share2_reg_reg[92] ),
        .I5(\share2_reg_reg[93] ),
        .O(g3_b7__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[64]_i_4 
       (.I0(sub_bytes_share1[95]),
        .I1(sub_bytes_share1[88]),
        .O(xtime_return21_in[0]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[66]_i_5 
       (.I0(\share1_reg[71]_i_2 [5]),
        .I1(\share1_reg_reg[90] ),
        .I2(sub_bytes_share1[90]),
        .I3(\share2_reg_reg[57] ),
        .I4(\share1_reg[66]_i_2 ),
        .I5(\share1_reg[71]_i_2 [1]),
        .O(post_linear_share1[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[67]_i_6 
       (.I0(sub_bytes_share1[95]),
        .I1(sub_bytes_share1[90]),
        .O(xtime_return21_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[68]_i_6 
       (.I0(sub_bytes_share1[95]),
        .I1(\share2_reg_reg[59] ),
        .O(xtime_return21_in[2]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[69]_i_5 
       (.I0(\share1_reg[71]_i_2 [6]),
        .I1(\share1_reg_reg[90] ),
        .I2(\share2_reg_reg[61] ),
        .I3(\share2_reg_reg[60] ),
        .I4(\share1_reg[69]_i_2 ),
        .I5(\share1_reg[71]_i_2 [2]),
        .O(post_linear_share1[1]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[70]_i_5 
       (.I0(\share1_reg[70]_i_2 ),
        .I1(\share1_reg_reg[90] ),
        .I2(\share2_reg_reg[62] ),
        .I3(\share2_reg_reg[61] ),
        .I4(\share1_reg[70]_i_2_0 ),
        .I5(\share1_reg[70]_i_2_1 ),
        .O(post_linear_share1[2]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[71]_i_5 
       (.I0(\share1_reg[71]_i_2 [7]),
        .I1(\share1_reg_reg[90] ),
        .I2(sub_bytes_share1[95]),
        .I3(\share2_reg_reg[62] ),
        .I4(\share1_reg[71]_i_2_0 ),
        .I5(\share1_reg[71]_i_2 [3]),
        .O(post_linear_share1[3]));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[80]_i_5 
       (.I0(sub_bytes_share1[88]),
        .I1(\share1_reg[71]_i_2 [4]),
        .I2(\share1_reg[71]_i_2 [3]),
        .O(\share2_reg_reg[56] ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[82]_i_5 
       (.I0(sub_bytes_share1[90]),
        .I1(\share1_reg[71]_i_2 [5]),
        .I2(\share1_reg[74]_i_2 ),
        .O(\share2_reg_reg[58] ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[85]_i_4 
       (.I0(\share2_reg_reg[61] ),
        .I1(\share1_reg[71]_i_2 [6]),
        .I2(\share1_reg[77]_i_2 ),
        .O(\share2_reg_reg[61]_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[86]_i_4 
       (.I0(\share2_reg_reg[62] ),
        .I1(\share1_reg[70]_i_2 ),
        .I2(\share1_reg[71]_i_2 [2]),
        .O(\share2_reg_reg[62]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[87]_i_5 
       (.I0(sub_bytes_share1[95]),
        .I1(\share1_reg[71]_i_2 [7]),
        .I2(\share1_reg[70]_i_2_1 ),
        .O(\share2_reg_reg[63] ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[88]_i_3 
       (.I0(sub_bytes_share1[88]),
        .I1(\share1_reg_reg[90] ),
        .I2(sub_bytes_share1[95]),
        .I3(xtime_return26_in),
        .I4(\share1_reg[71]_i_2 [4]),
        .I5(\share1_reg[71]_i_2 [0]),
        .O(post_linear_share1[4]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[88]_i_4 
       (.I0(Q[0]),
        .I1(\share1_reg[88]_i_5_n_0 ),
        .I2(\share2_reg_reg[95] ),
        .I3(g2_b0__3_n_0),
        .I4(\share2_reg_reg[94] ),
        .I5(g3_b0__3_n_0),
        .O(sub_bytes_share1[88]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[88]_i_5 
       (.I0(g1_b0__3_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[95] [6]),
        .I3(g0_b0__3_n_0),
        .O(\share1_reg[88]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[89]_i_3 
       (.I0(\share2_reg_reg[57] ),
        .I1(\share1_reg_reg[90] ),
        .I2(xtime_return21_in[0]),
        .I3(xtime_return26_in),
        .I4(\share1_reg[89]_i_2 ),
        .I5(\share1_reg[89]_i_2_0 ),
        .O(post_linear_share1[5]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[90]_i_1 
       (.I0(key_IBUF[0]),
        .I1(plaintext_IBUF[0]),
        .I2(mask_in_IBUF[0]),
        .I3(\share1_reg_reg[93] [0]),
        .I4(round_ark_share1[90]),
        .I5(\share1_reg_reg[95] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[90]_i_2 
       (.I0(sub_bytes_share1[90]),
        .I1(\share1_reg_reg[90] ),
        .I2(mix_cols_share1[0]),
        .I3(\share1_reg_reg[95]_0 [0]),
        .O(round_ark_share1[90]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[90]_i_4 
       (.I0(Q[1]),
        .I1(\share1_reg[90]_i_6_n_0 ),
        .I2(\share2_reg_reg[95] ),
        .I3(g2_b1__3_n_0),
        .I4(\share2_reg_reg[94] ),
        .I5(g3_b1__3_n_0),
        .O(\share2_reg_reg[57] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[90]_i_6 
       (.I0(g1_b1__3_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[95] [6]),
        .I3(g0_b1__3_n_0),
        .O(\share1_reg[90]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[91]_i_1 
       (.I0(key_IBUF[1]),
        .I1(plaintext_IBUF[1]),
        .I2(mask_in_IBUF[1]),
        .I3(\share1_reg_reg[93] [0]),
        .I4(round_ark_share1[91]),
        .I5(\share1_reg_reg[91] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[91]_i_2 
       (.I0(\share2_reg_reg[59] ),
        .I1(\share1_reg_reg[90] ),
        .I2(sub_bytes_share1[90]),
        .I3(sub_bytes_share1[95]),
        .I4(\share1_reg_reg[91]_0 ),
        .I5(\share1_reg_reg[95]_0 [1]),
        .O(round_ark_share1[91]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[91]_i_3 
       (.I0(Q[2]),
        .I1(\share1_reg[91]_i_5_n_0 ),
        .I2(\share2_reg_reg[95] ),
        .I3(g2_b2__3_n_0),
        .I4(\share2_reg_reg[94] ),
        .I5(g3_b2__3_n_0),
        .O(sub_bytes_share1[90]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[91]_i_5 
       (.I0(g1_b2__3_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[95] [6]),
        .I3(g0_b2__3_n_0),
        .O(\share1_reg[91]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[92]_i_1 
       (.I0(key_IBUF[2]),
        .I1(plaintext_IBUF[2]),
        .I2(mask_in_IBUF[2]),
        .I3(\share1_reg_reg[93] [0]),
        .I4(round_ark_share1[92]),
        .I5(\share1_reg_reg[91] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[92]_i_2 
       (.I0(\share2_reg_reg[60] ),
        .I1(\share1_reg_reg[90] ),
        .I2(\share2_reg_reg[59] ),
        .I3(sub_bytes_share1[95]),
        .I4(\share1_reg_reg[92] ),
        .I5(\share1_reg_reg[95]_0 [2]),
        .O(round_ark_share1[92]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[92]_i_3 
       (.I0(Q[4]),
        .I1(\share1_reg[92]_i_6_n_0 ),
        .I2(\share2_reg_reg[95] ),
        .I3(g2_b4__3_n_0),
        .I4(\share2_reg_reg[94] ),
        .I5(g3_b4__3_n_0),
        .O(\share2_reg_reg[60] ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[92]_i_4 
       (.I0(Q[3]),
        .I1(\share1_reg[92]_i_7_n_0 ),
        .I2(\share2_reg_reg[95] ),
        .I3(g2_b3__3_n_0),
        .I4(\share2_reg_reg[94] ),
        .I5(g3_b3__3_n_0),
        .O(\share2_reg_reg[59] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[92]_i_6 
       (.I0(g1_b4__3_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[95] [6]),
        .I3(g0_b4__3_n_0),
        .O(\share1_reg[92]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[92]_i_7 
       (.I0(g1_b3__3_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[95] [6]),
        .I3(g0_b3__3_n_0),
        .O(\share1_reg[92]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[93]_i_1 
       (.I0(key_IBUF[3]),
        .I1(plaintext_IBUF[3]),
        .I2(mask_in_IBUF[3]),
        .I3(\share1_reg_reg[93] [0]),
        .I4(round_ark_share1[93]),
        .I5(\share1_reg_reg[93] [1]),
        .O(D[3]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[93]_i_2 
       (.I0(\share2_reg_reg[61] ),
        .I1(\share1_reg_reg[90] ),
        .I2(mix_cols_share1[1]),
        .I3(\share1_reg_reg[95]_0 [3]),
        .O(round_ark_share1[93]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[93]_i_3 
       (.I0(Q[5]),
        .I1(\share1_reg[93]_i_5_n_0 ),
        .I2(\share2_reg_reg[95] ),
        .I3(g2_b5__3_n_0),
        .I4(\share2_reg_reg[94] ),
        .I5(g3_b5__3_n_0),
        .O(\share2_reg_reg[61] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[93]_i_5 
       (.I0(g1_b5__3_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[95] [6]),
        .I3(g0_b5__3_n_0),
        .O(\share1_reg[93]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[94]_i_1 
       (.I0(key_IBUF[4]),
        .I1(plaintext_IBUF[4]),
        .I2(mask_in_IBUF[4]),
        .I3(\share1_reg_reg[93] [0]),
        .I4(round_ark_share1[94]),
        .I5(\share1_reg_reg[91] ),
        .O(D[4]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[94]_i_2 
       (.I0(\share2_reg_reg[62] ),
        .I1(\share1_reg_reg[90] ),
        .I2(mix_cols_share1[2]),
        .I3(\share1_reg_reg[95]_0 [4]),
        .O(round_ark_share1[94]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[94]_i_3 
       (.I0(Q[6]),
        .I1(\share1_reg[94]_i_5_n_0 ),
        .I2(\share2_reg_reg[95] ),
        .I3(g2_b6__3_n_0),
        .I4(\share2_reg_reg[94] ),
        .I5(g3_b6__3_n_0),
        .O(\share2_reg_reg[62] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[94]_i_5 
       (.I0(g1_b6__3_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[95] [6]),
        .I3(g0_b6__3_n_0),
        .O(\share1_reg[94]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[95]_i_1 
       (.I0(key_IBUF[5]),
        .I1(plaintext_IBUF[5]),
        .I2(mask_in_IBUF[5]),
        .I3(\share1_reg_reg[93] [0]),
        .I4(round_ark_share1[95]),
        .I5(\share1_reg_reg[95] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[95]_i_2 
       (.I0(sub_bytes_share1[95]),
        .I1(\share1_reg_reg[90] ),
        .I2(mix_cols_share1[3]),
        .I3(\share1_reg_reg[95]_0 [5]),
        .O(round_ark_share1[95]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[95]_i_3 
       (.I0(Q[7]),
        .I1(\share1_reg[95]_i_5_n_0 ),
        .I2(\share2_reg_reg[95] ),
        .I3(g2_b7__3_n_0),
        .I4(\share2_reg_reg[94] ),
        .I5(g3_b7__3_n_0),
        .O(sub_bytes_share1[95]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[95]_i_5 
       (.I0(g1_b7__3_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[95] [6]),
        .I3(g0_b7__3_n_0),
        .O(\share1_reg[95]_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_20
   (post_linear_share1,
    \share2_reg_reg[65] ,
    \share2_reg_reg[17] ,
    sub_bytes_share1,
    \share2_reg_reg[103] ,
    \share2_reg_reg[102] ,
    \share2_reg_reg[65]_0 ,
    \share2_reg_reg[67] ,
    \share2_reg_reg[19] ,
    \share2_reg_reg[68] ,
    \share2_reg_reg[20] ,
    \share2_reg_reg[101] ,
    \share2_reg_reg[100] ,
    \share2_reg_reg[99] ,
    \share2_reg_reg[98] ,
    \share2_reg_reg[97] ,
    \share2_reg_reg[96] ,
    D,
    \share2_reg_reg[70] ,
    \share1_reg_reg[64] ,
    \share1_reg[65]_i_2 ,
    xtime_return21_in,
    \share1_reg[65]_i_2_0 ,
    \share1_reg[73]_i_2 ,
    Q,
    \share1_reg[67]_i_2 ,
    \share1_reg[67]_i_2_0 ,
    \share1_reg[75]_i_2 ,
    \share1_reg[68]_i_2 ,
    \share1_reg[68]_i_2_0 ,
    \share1_reg[76]_i_2 ,
    \ciphertext_reg[103] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[64]_0 ,
    \share1_reg_reg[64]_1 ,
    \share1_reg_reg[64]_2 ,
    \share1_reg_reg[64]_3 ,
    \share1_reg_reg[64]_4 );
  output [2:0]post_linear_share1;
  output \share2_reg_reg[65] ;
  output \share2_reg_reg[17] ;
  output [3:0]sub_bytes_share1;
  output \share2_reg_reg[103] ;
  output \share2_reg_reg[102] ;
  output \share2_reg_reg[65]_0 ;
  output \share2_reg_reg[67] ;
  output \share2_reg_reg[19] ;
  output \share2_reg_reg[68] ;
  output \share2_reg_reg[20] ;
  output \share2_reg_reg[101] ;
  output \share2_reg_reg[100] ;
  output \share2_reg_reg[99] ;
  output \share2_reg_reg[98] ;
  output \share2_reg_reg[97] ;
  output \share2_reg_reg[96] ;
  output [0:0]D;
  output \share2_reg_reg[70] ;
  input \share1_reg_reg[64] ;
  input \share1_reg[65]_i_2 ;
  input [2:0]xtime_return21_in;
  input \share1_reg[65]_i_2_0 ;
  input \share1_reg[73]_i_2 ;
  input [15:0]Q;
  input \share1_reg[67]_i_2 ;
  input \share1_reg[67]_i_2_0 ;
  input \share1_reg[75]_i_2 ;
  input \share1_reg[68]_i_2 ;
  input \share1_reg[68]_i_2_0 ;
  input \share1_reg[76]_i_2 ;
  input [7:0]\ciphertext_reg[103] ;
  input [0:0]key_IBUF;
  input [0:0]plaintext_IBUF;
  input [0:0]mask_in_IBUF;
  input [0:0]\share1_reg_reg[64]_0 ;
  input \share1_reg_reg[64]_1 ;
  input \share1_reg_reg[64]_2 ;
  input [0:0]\share1_reg_reg[64]_3 ;
  input [0:0]\share1_reg_reg[64]_4 ;

  wire [0:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[103] ;
  wire g0_b0__2_n_0;
  wire g0_b1__2_n_0;
  wire g0_b2__2_n_0;
  wire g0_b3__2_n_0;
  wire g0_b4__2_n_0;
  wire g0_b5__2_n_0;
  wire g0_b6__2_n_0;
  wire g0_b7__2_n_0;
  wire g1_b0__2_n_0;
  wire g1_b1__2_n_0;
  wire g1_b2__2_n_0;
  wire g1_b3__2_n_0;
  wire g1_b4__2_n_0;
  wire g1_b5__2_n_0;
  wire g1_b6__2_n_0;
  wire g1_b7__2_n_0;
  wire g2_b0__2_n_0;
  wire g2_b1__2_n_0;
  wire g2_b2__2_n_0;
  wire g2_b3__2_n_0;
  wire g2_b4__2_n_0;
  wire g2_b5__2_n_0;
  wire g2_b6__2_n_0;
  wire g2_b7__2_n_0;
  wire g3_b0__2_n_0;
  wire g3_b1__2_n_0;
  wire g3_b2__2_n_0;
  wire g3_b3__2_n_0;
  wire g3_b4__2_n_0;
  wire g3_b5__2_n_0;
  wire g3_b6__2_n_0;
  wire g3_b7__2_n_0;
  wire [0:0]key_IBUF;
  wire [0:0]mask_in_IBUF;
  wire [0:0]plaintext_IBUF;
  wire [2:0]post_linear_share1;
  wire [64:64]round_ark_share1;
  wire \share1_reg[64]_i_6_n_0 ;
  wire \share1_reg[65]_i_2 ;
  wire \share1_reg[65]_i_2_0 ;
  wire \share1_reg[67]_i_2 ;
  wire \share1_reg[67]_i_2_0 ;
  wire \share1_reg[68]_i_2 ;
  wire \share1_reg[68]_i_2_0 ;
  wire \share1_reg[73]_i_2 ;
  wire \share1_reg[75]_i_2 ;
  wire \share1_reg[76]_i_2 ;
  wire \share1_reg[77]_i_5_n_0 ;
  wire \share1_reg[78]_i_5_n_0 ;
  wire \share1_reg[79]_i_5_n_0 ;
  wire \share1_reg[81]_i_9_n_0 ;
  wire \share1_reg[90]_i_7_n_0 ;
  wire \share1_reg[91]_i_7_n_0 ;
  wire \share1_reg[95]_i_7_n_0 ;
  wire \share1_reg_reg[64] ;
  wire [0:0]\share1_reg_reg[64]_0 ;
  wire \share1_reg_reg[64]_1 ;
  wire \share1_reg_reg[64]_2 ;
  wire [0:0]\share1_reg_reg[64]_3 ;
  wire [0:0]\share1_reg_reg[64]_4 ;
  wire \share2_reg_reg[100] ;
  wire \share2_reg_reg[101] ;
  wire \share2_reg_reg[102] ;
  wire \share2_reg_reg[103] ;
  wire \share2_reg_reg[17] ;
  wire \share2_reg_reg[19] ;
  wire \share2_reg_reg[20] ;
  wire \share2_reg_reg[65] ;
  wire \share2_reg_reg[65]_0 ;
  wire \share2_reg_reg[67] ;
  wire \share2_reg_reg[68] ;
  wire \share2_reg_reg[70] ;
  wire \share2_reg_reg[96] ;
  wire \share2_reg_reg[97] ;
  wire \share2_reg_reg[98] ;
  wire \share2_reg_reg[99] ;
  wire [3:0]sub_bytes_share1;
  wire [2:0]xtime_return21_in;

  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[102]_i_1 
       (.I0(Q[14]),
        .I1(\ciphertext_reg[103] [6]),
        .O(\share2_reg_reg[102] ));
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[103]_i_1 
       (.I0(Q[15]),
        .I1(\ciphertext_reg[103] [7]),
        .O(\share2_reg_reg[103] ));
  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g0_b0__2_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__2_i_1
       (.I0(Q[8]),
        .I1(\ciphertext_reg[103] [0]),
        .O(\share2_reg_reg[96] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__2_i_2
       (.I0(Q[9]),
        .I1(\ciphertext_reg[103] [1]),
        .O(\share2_reg_reg[97] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__2_i_3
       (.I0(Q[10]),
        .I1(\ciphertext_reg[103] [2]),
        .O(\share2_reg_reg[98] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__2_i_4
       (.I0(Q[11]),
        .I1(\ciphertext_reg[103] [3]),
        .O(\share2_reg_reg[99] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__2_i_5
       (.I0(Q[12]),
        .I1(\ciphertext_reg[103] [4]),
        .O(\share2_reg_reg[100] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__2_i_6
       (.I0(Q[13]),
        .I1(\ciphertext_reg[103] [5]),
        .O(\share2_reg_reg[101] ));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g0_b1__2_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g0_b2__2_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g0_b3__2_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g0_b4__2_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g0_b5__2_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g0_b6__2_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g0_b7__2_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g1_b0__2_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g1_b1__2_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g1_b2__2_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g1_b3__2_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g1_b4__2_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g1_b5__2_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g1_b6__2_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g1_b7__2_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g2_b0__2_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g2_b1__2_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g2_b2__2_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g2_b3__2_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g2_b4__2_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g2_b5__2_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g2_b6__2_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g2_b7__2_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g3_b0__2_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g3_b1__2_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g3_b2__2_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g3_b3__2_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g3_b4__2_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g3_b5__2_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g3_b6__2_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__2
       (.I0(\share2_reg_reg[96] ),
        .I1(\share2_reg_reg[97] ),
        .I2(\share2_reg_reg[98] ),
        .I3(\share2_reg_reg[99] ),
        .I4(\share2_reg_reg[100] ),
        .I5(\share2_reg_reg[101] ),
        .O(g3_b7__2_n_0));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[64]_i_1 
       (.I0(key_IBUF),
        .I1(plaintext_IBUF),
        .I2(mask_in_IBUF),
        .I3(\share1_reg_reg[64]_0 ),
        .I4(round_ark_share1),
        .I5(\share1_reg_reg[64]_1 ),
        .O(D));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[64]_i_2 
       (.I0(sub_bytes_share1[0]),
        .I1(\share1_reg_reg[64] ),
        .I2(xtime_return21_in[0]),
        .I3(\share1_reg_reg[64]_2 ),
        .I4(\share1_reg_reg[64]_3 ),
        .I5(\share1_reg_reg[64]_4 ),
        .O(round_ark_share1));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[64]_i_3 
       (.I0(Q[0]),
        .I1(\share1_reg[64]_i_6_n_0 ),
        .I2(\share2_reg_reg[103] ),
        .I3(g2_b0__2_n_0),
        .I4(\share2_reg_reg[102] ),
        .I5(g3_b0__2_n_0),
        .O(sub_bytes_share1[0]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[64]_i_6 
       (.I0(g1_b0__2_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[103] [6]),
        .I3(g0_b0__2_n_0),
        .O(\share1_reg[64]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[65]_i_5 
       (.I0(\share2_reg_reg[65] ),
        .I1(\share1_reg_reg[64] ),
        .I2(\share1_reg[65]_i_2 ),
        .I3(xtime_return21_in[0]),
        .I4(\share2_reg_reg[17] ),
        .I5(\share1_reg[65]_i_2_0 ),
        .O(post_linear_share1[0]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[67]_i_5 
       (.I0(\share2_reg_reg[67] ),
        .I1(\share1_reg_reg[64] ),
        .I2(\share1_reg[67]_i_2 ),
        .I3(xtime_return21_in[1]),
        .I4(\share2_reg_reg[19] ),
        .I5(\share1_reg[67]_i_2_0 ),
        .O(post_linear_share1[1]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[68]_i_5 
       (.I0(\share2_reg_reg[68] ),
        .I1(\share1_reg_reg[64] ),
        .I2(\share1_reg[68]_i_2 ),
        .I3(xtime_return21_in[2]),
        .I4(\share2_reg_reg[20] ),
        .I5(\share1_reg[68]_i_2_0 ),
        .O(post_linear_share1[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[73]_i_3 
       (.I0(\share1_reg[73]_i_2 ),
        .I1(sub_bytes_share1[0]),
        .I2(sub_bytes_share1[3]),
        .O(\share2_reg_reg[17] ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[75]_i_4 
       (.I0(\share1_reg[75]_i_2 ),
        .I1(sub_bytes_share1[1]),
        .I2(sub_bytes_share1[3]),
        .O(\share2_reg_reg[19] ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[76]_i_4 
       (.I0(\share1_reg[76]_i_2 ),
        .I1(\share2_reg_reg[67] ),
        .I2(sub_bytes_share1[3]),
        .O(\share2_reg_reg[20] ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[77]_i_3 
       (.I0(Q[4]),
        .I1(\share1_reg[77]_i_5_n_0 ),
        .I2(\share2_reg_reg[103] ),
        .I3(g2_b4__2_n_0),
        .I4(\share2_reg_reg[102] ),
        .I5(g3_b4__2_n_0),
        .O(\share2_reg_reg[68] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[77]_i_5 
       (.I0(g1_b4__2_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[103] [6]),
        .I3(g0_b4__2_n_0),
        .O(\share1_reg[77]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[78]_i_3 
       (.I0(Q[5]),
        .I1(\share1_reg[78]_i_5_n_0 ),
        .I2(\share2_reg_reg[103] ),
        .I3(g2_b5__2_n_0),
        .I4(\share2_reg_reg[102] ),
        .I5(g3_b5__2_n_0),
        .O(sub_bytes_share1[2]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[78]_i_5 
       (.I0(g1_b5__2_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[103] [6]),
        .I3(g0_b5__2_n_0),
        .O(\share1_reg[78]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[79]_i_3 
       (.I0(Q[6]),
        .I1(\share1_reg[79]_i_5_n_0 ),
        .I2(\share2_reg_reg[103] ),
        .I3(g2_b6__2_n_0),
        .I4(\share2_reg_reg[102] ),
        .I5(g3_b6__2_n_0),
        .O(\share2_reg_reg[70] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[79]_i_5 
       (.I0(g1_b6__2_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[103] [6]),
        .I3(g0_b6__2_n_0),
        .O(\share1_reg[79]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[81]_i_8 
       (.I0(Q[1]),
        .I1(\share1_reg[81]_i_9_n_0 ),
        .I2(\share2_reg_reg[103] ),
        .I3(g2_b1__2_n_0),
        .I4(\share2_reg_reg[102] ),
        .I5(g3_b1__2_n_0),
        .O(\share2_reg_reg[65] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[81]_i_9 
       (.I0(g1_b1__2_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[103] [6]),
        .I3(g0_b1__2_n_0),
        .O(\share1_reg[81]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[89]_i_4 
       (.I0(\share2_reg_reg[65] ),
        .I1(\share1_reg[65]_i_2_0 ),
        .O(\share2_reg_reg[65]_0 ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[90]_i_5 
       (.I0(Q[2]),
        .I1(\share1_reg[90]_i_7_n_0 ),
        .I2(\share2_reg_reg[103] ),
        .I3(g2_b2__2_n_0),
        .I4(\share2_reg_reg[102] ),
        .I5(g3_b2__2_n_0),
        .O(sub_bytes_share1[1]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[90]_i_7 
       (.I0(g1_b2__2_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[103] [6]),
        .I3(g0_b2__2_n_0),
        .O(\share1_reg[90]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[91]_i_6 
       (.I0(Q[3]),
        .I1(\share1_reg[91]_i_7_n_0 ),
        .I2(\share2_reg_reg[103] ),
        .I3(g2_b3__2_n_0),
        .I4(\share2_reg_reg[102] ),
        .I5(g3_b3__2_n_0),
        .O(\share2_reg_reg[67] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[91]_i_7 
       (.I0(g1_b3__2_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[103] [6]),
        .I3(g0_b3__2_n_0),
        .O(\share1_reg[91]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[95]_i_6 
       (.I0(Q[7]),
        .I1(\share1_reg[95]_i_7_n_0 ),
        .I2(\share2_reg_reg[103] ),
        .I3(g2_b7__2_n_0),
        .I4(\share2_reg_reg[102] ),
        .I5(g3_b7__2_n_0),
        .O(sub_bytes_share1[3]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[95]_i_7 
       (.I0(g1_b7__2_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[103] [6]),
        .I3(g0_b7__2_n_0),
        .O(\share1_reg[95]_i_7_n_0 ));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_21
   (post_linear_share1,
    \share2_reg_reg[73] ,
    \round_ctr_reg[2] ,
    \share2_reg_reg[33] ,
    \share2_reg_reg[79] ,
    \share2_reg_reg[77] ,
    \share2_reg_reg[111] ,
    \share2_reg_reg[110] ,
    \share2_reg_reg[75] ,
    \share2_reg_reg[35] ,
    \share2_reg_reg[76] ,
    \share2_reg_reg[36] ,
    \share2_reg_reg[109] ,
    \share2_reg_reg[108] ,
    \share2_reg_reg[107] ,
    \share2_reg_reg[106] ,
    \share2_reg_reg[105] ,
    \share2_reg_reg[104] ,
    \share2_reg_reg[78] ,
    \share1_reg[41]_i_2 ,
    \share1_reg[41]_i_2_0 ,
    \share1_reg[49]_i_3 ,
    \share1_reg[49]_i_3_0 ,
    Q,
    \share1_reg[43]_i_2 ,
    \share1_reg[51]_i_3 ,
    \share1_reg[51]_i_3_0 ,
    \share1_reg[44]_i_2 ,
    \share1_reg[52]_i_3 ,
    \share1_reg[52]_i_3_0 ,
    \ciphertext_reg[111] ,
    \share1_reg[113]_i_3 );
  output [2:0]post_linear_share1;
  output \share2_reg_reg[73] ;
  output \round_ctr_reg[2] ;
  output \share2_reg_reg[33] ;
  output \share2_reg_reg[79] ;
  output [2:0]\share2_reg_reg[77] ;
  output \share2_reg_reg[111] ;
  output \share2_reg_reg[110] ;
  output \share2_reg_reg[75] ;
  output \share2_reg_reg[35] ;
  output \share2_reg_reg[76] ;
  output \share2_reg_reg[36] ;
  output \share2_reg_reg[109] ;
  output \share2_reg_reg[108] ;
  output \share2_reg_reg[107] ;
  output \share2_reg_reg[106] ;
  output \share2_reg_reg[105] ;
  output \share2_reg_reg[104] ;
  output \share2_reg_reg[78] ;
  input [2:0]\share1_reg[41]_i_2 ;
  input \share1_reg[41]_i_2_0 ;
  input \share1_reg[49]_i_3 ;
  input \share1_reg[49]_i_3_0 ;
  input [15:0]Q;
  input \share1_reg[43]_i_2 ;
  input \share1_reg[51]_i_3 ;
  input \share1_reg[51]_i_3_0 ;
  input \share1_reg[44]_i_2 ;
  input \share1_reg[52]_i_3 ;
  input \share1_reg[52]_i_3_0 ;
  input [7:0]\ciphertext_reg[111] ;
  input [3:0]\share1_reg[113]_i_3 ;

  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[111] ;
  wire g0_b0__1_n_0;
  wire g0_b1__1_n_0;
  wire g0_b2__1_n_0;
  wire g0_b3__1_n_0;
  wire g0_b4__1_n_0;
  wire g0_b5__1_n_0;
  wire g0_b6__1_n_0;
  wire g0_b7__1_n_0;
  wire g1_b0__1_n_0;
  wire g1_b1__1_n_0;
  wire g1_b2__1_n_0;
  wire g1_b3__1_n_0;
  wire g1_b4__1_n_0;
  wire g1_b5__1_n_0;
  wire g1_b6__1_n_0;
  wire g1_b7__1_n_0;
  wire g2_b0__1_n_0;
  wire g2_b1__1_n_0;
  wire g2_b2__1_n_0;
  wire g2_b3__1_n_0;
  wire g2_b4__1_n_0;
  wire g2_b5__1_n_0;
  wire g2_b6__1_n_0;
  wire g2_b7__1_n_0;
  wire g3_b0__1_n_0;
  wire g3_b1__1_n_0;
  wire g3_b2__1_n_0;
  wire g3_b3__1_n_0;
  wire g3_b4__1_n_0;
  wire g3_b5__1_n_0;
  wire g3_b6__1_n_0;
  wire g3_b7__1_n_0;
  wire [2:0]post_linear_share1;
  wire \round_ctr_reg[2] ;
  wire [3:0]\share1_reg[113]_i_3 ;
  wire [2:0]\share1_reg[41]_i_2 ;
  wire \share1_reg[41]_i_2_0 ;
  wire \share1_reg[43]_i_2 ;
  wire \share1_reg[44]_i_2 ;
  wire \share1_reg[48]_i_7_n_0 ;
  wire \share1_reg[49]_i_3 ;
  wire \share1_reg[49]_i_3_0 ;
  wire \share1_reg[50]_i_8_n_0 ;
  wire \share1_reg[51]_i_3 ;
  wire \share1_reg[51]_i_3_0 ;
  wire \share1_reg[52]_i_3 ;
  wire \share1_reg[52]_i_3_0 ;
  wire \share1_reg[53]_i_6_n_0 ;
  wire \share1_reg[54]_i_6_n_0 ;
  wire \share1_reg[55]_i_8_n_0 ;
  wire \share1_reg[57]_i_13_n_0 ;
  wire \share1_reg[59]_i_9_n_0 ;
  wire \share1_reg[60]_i_10_n_0 ;
  wire \share2_reg_reg[104] ;
  wire \share2_reg_reg[105] ;
  wire \share2_reg_reg[106] ;
  wire \share2_reg_reg[107] ;
  wire \share2_reg_reg[108] ;
  wire \share2_reg_reg[109] ;
  wire \share2_reg_reg[110] ;
  wire \share2_reg_reg[111] ;
  wire \share2_reg_reg[33] ;
  wire \share2_reg_reg[35] ;
  wire \share2_reg_reg[36] ;
  wire \share2_reg_reg[73] ;
  wire \share2_reg_reg[75] ;
  wire \share2_reg_reg[76] ;
  wire [2:0]\share2_reg_reg[77] ;
  wire \share2_reg_reg[78] ;
  wire \share2_reg_reg[79] ;

  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[110]_i_1 
       (.I0(Q[14]),
        .I1(\ciphertext_reg[111] [6]),
        .O(\share2_reg_reg[110] ));
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[111]_i_1 
       (.I0(Q[15]),
        .I1(\ciphertext_reg[111] [7]),
        .O(\share2_reg_reg[111] ));
  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g0_b0__1_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__1_i_1
       (.I0(Q[8]),
        .I1(\ciphertext_reg[111] [0]),
        .O(\share2_reg_reg[104] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__1_i_2
       (.I0(Q[9]),
        .I1(\ciphertext_reg[111] [1]),
        .O(\share2_reg_reg[105] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__1_i_3
       (.I0(Q[10]),
        .I1(\ciphertext_reg[111] [2]),
        .O(\share2_reg_reg[106] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__1_i_4
       (.I0(Q[11]),
        .I1(\ciphertext_reg[111] [3]),
        .O(\share2_reg_reg[107] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__1_i_5
       (.I0(Q[12]),
        .I1(\ciphertext_reg[111] [4]),
        .O(\share2_reg_reg[108] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__1_i_6
       (.I0(Q[13]),
        .I1(\ciphertext_reg[111] [5]),
        .O(\share2_reg_reg[109] ));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g0_b1__1_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g0_b2__1_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g0_b3__1_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g0_b4__1_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g0_b5__1_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g0_b6__1_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g0_b7__1_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g1_b0__1_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g1_b1__1_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g1_b2__1_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g1_b3__1_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g1_b4__1_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g1_b5__1_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g1_b6__1_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g1_b7__1_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g2_b0__1_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g2_b1__1_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g2_b2__1_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g2_b3__1_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g2_b4__1_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g2_b5__1_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g2_b6__1_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g2_b7__1_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g3_b0__1_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g3_b1__1_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g3_b2__1_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g3_b3__1_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g3_b4__1_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g3_b5__1_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g3_b6__1_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__1
       (.I0(\share2_reg_reg[104] ),
        .I1(\share2_reg_reg[105] ),
        .I2(\share2_reg_reg[106] ),
        .I3(\share2_reg_reg[107] ),
        .I4(\share2_reg_reg[108] ),
        .I5(\share2_reg_reg[109] ),
        .O(g3_b7__1_n_0));
  LUT4 #(
    .INIT(16'h1000)) 
    \share1_reg[116]_i_4 
       (.I0(\share1_reg[113]_i_3 [2]),
        .I1(\share1_reg[113]_i_3 [0]),
        .I2(\share1_reg[113]_i_3 [3]),
        .I3(\share1_reg[113]_i_3 [1]),
        .O(\round_ctr_reg[2] ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[41]_i_3 
       (.I0(\share2_reg_reg[73] ),
        .I1(\round_ctr_reg[2] ),
        .I2(\share1_reg[41]_i_2 [0]),
        .I3(\share1_reg[41]_i_2 [2]),
        .I4(\share2_reg_reg[33] ),
        .I5(\share1_reg[41]_i_2_0 ),
        .O(post_linear_share1[0]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[43]_i_3 
       (.I0(\share2_reg_reg[75] ),
        .I1(\round_ctr_reg[2] ),
        .I2(\share1_reg[41]_i_2 [1]),
        .I3(\share1_reg[41]_i_2 [2]),
        .I4(\share2_reg_reg[35] ),
        .I5(\share1_reg[43]_i_2 ),
        .O(post_linear_share1[1]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[44]_i_3 
       (.I0(\share2_reg_reg[76] ),
        .I1(\round_ctr_reg[2] ),
        .I2(\share1_reg[51]_i_3 ),
        .I3(\share1_reg[41]_i_2 [2]),
        .I4(\share2_reg_reg[36] ),
        .I5(\share1_reg[44]_i_2 ),
        .O(post_linear_share1[2]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[48]_i_4 
       (.I0(Q[0]),
        .I1(\share1_reg[48]_i_7_n_0 ),
        .I2(\share2_reg_reg[111] ),
        .I3(g2_b0__1_n_0),
        .I4(\share2_reg_reg[110] ),
        .I5(g3_b0__1_n_0),
        .O(\share2_reg_reg[77] [0]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[48]_i_7 
       (.I0(g1_b0__1_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[111] [6]),
        .I3(g0_b0__1_n_0),
        .O(\share1_reg[48]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[49]_i_4 
       (.I0(\share1_reg[49]_i_3 ),
        .I1(\share2_reg_reg[79] ),
        .I2(\share2_reg_reg[77] [0]),
        .I3(\share1_reg[49]_i_3_0 ),
        .O(\share2_reg_reg[33] ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[50]_i_4 
       (.I0(Q[2]),
        .I1(\share1_reg[50]_i_8_n_0 ),
        .I2(\share2_reg_reg[111] ),
        .I3(g2_b2__1_n_0),
        .I4(\share2_reg_reg[110] ),
        .I5(g3_b2__1_n_0),
        .O(\share2_reg_reg[77] [1]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[50]_i_8 
       (.I0(g1_b2__1_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[111] [6]),
        .I3(g0_b2__1_n_0),
        .O(\share1_reg[50]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[51]_i_4 
       (.I0(\share1_reg[51]_i_3 ),
        .I1(\share2_reg_reg[79] ),
        .I2(\share2_reg_reg[77] [1]),
        .I3(\share1_reg[51]_i_3_0 ),
        .O(\share2_reg_reg[35] ));
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[52]_i_4 
       (.I0(\share1_reg[52]_i_3 ),
        .I1(\share2_reg_reg[79] ),
        .I2(\share2_reg_reg[75] ),
        .I3(\share1_reg[52]_i_3_0 ),
        .O(\share2_reg_reg[36] ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[53]_i_3 
       (.I0(Q[5]),
        .I1(\share1_reg[53]_i_6_n_0 ),
        .I2(\share2_reg_reg[111] ),
        .I3(g2_b5__1_n_0),
        .I4(\share2_reg_reg[110] ),
        .I5(g3_b5__1_n_0),
        .O(\share2_reg_reg[77] [2]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[53]_i_6 
       (.I0(g1_b5__1_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[111] [6]),
        .I3(g0_b5__1_n_0),
        .O(\share1_reg[53]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[54]_i_3 
       (.I0(Q[6]),
        .I1(\share1_reg[54]_i_6_n_0 ),
        .I2(\share2_reg_reg[111] ),
        .I3(g2_b6__1_n_0),
        .I4(\share2_reg_reg[110] ),
        .I5(g3_b6__1_n_0),
        .O(\share2_reg_reg[78] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[54]_i_6 
       (.I0(g1_b6__1_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[111] [6]),
        .I3(g0_b6__1_n_0),
        .O(\share1_reg[54]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[55]_i_4 
       (.I0(Q[7]),
        .I1(\share1_reg[55]_i_8_n_0 ),
        .I2(\share2_reg_reg[111] ),
        .I3(g2_b7__1_n_0),
        .I4(\share2_reg_reg[110] ),
        .I5(g3_b7__1_n_0),
        .O(\share2_reg_reg[79] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[55]_i_8 
       (.I0(g1_b7__1_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[111] [6]),
        .I3(g0_b7__1_n_0),
        .O(\share1_reg[55]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[57]_i_13 
       (.I0(g1_b1__1_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[111] [6]),
        .I3(g0_b1__1_n_0),
        .O(\share1_reg[57]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[57]_i_9 
       (.I0(Q[1]),
        .I1(\share1_reg[57]_i_13_n_0 ),
        .I2(\share2_reg_reg[111] ),
        .I3(g2_b1__1_n_0),
        .I4(\share2_reg_reg[110] ),
        .I5(g3_b1__1_n_0),
        .O(\share2_reg_reg[73] ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[59]_i_8 
       (.I0(Q[3]),
        .I1(\share1_reg[59]_i_9_n_0 ),
        .I2(\share2_reg_reg[111] ),
        .I3(g2_b3__1_n_0),
        .I4(\share2_reg_reg[110] ),
        .I5(g3_b3__1_n_0),
        .O(\share2_reg_reg[75] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[59]_i_9 
       (.I0(g1_b3__1_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[111] [6]),
        .I3(g0_b3__1_n_0),
        .O(\share1_reg[59]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[60]_i_10 
       (.I0(g1_b4__1_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[111] [6]),
        .I3(g0_b4__1_n_0),
        .O(\share1_reg[60]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[60]_i_8 
       (.I0(Q[4]),
        .I1(\share1_reg[60]_i_10_n_0 ),
        .I2(\share2_reg_reg[111] ),
        .I3(g2_b4__1_n_0),
        .I4(\share2_reg_reg[110] ),
        .I5(g3_b4__1_n_0),
        .O(\share2_reg_reg[76] ));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_22
   (\share2_reg_reg[87] ,
    \share2_reg_reg[87]_0 ,
    \share2_reg_reg[80] ,
    \share2_reg_reg[81] ,
    post_linear_share1,
    \share2_reg_reg[7] ,
    \share2_reg_reg[119] ,
    \share2_reg_reg[118] ,
    \share2_reg_reg[82] ,
    \share2_reg_reg[87]_1 ,
    \share2_reg_reg[83] ,
    \share2_reg_reg[87]_2 ,
    \share2_reg_reg[84] ,
    \share2_reg_reg[85] ,
    \share2_reg_reg[86] ,
    \share2_reg_reg[117] ,
    \share2_reg_reg[116] ,
    \share2_reg_reg[115] ,
    \share2_reg_reg[114] ,
    \share2_reg_reg[113] ,
    \share2_reg_reg[112] ,
    D,
    \share1_reg_reg[23] ,
    \share1_reg[25]_i_2 ,
    \share1_reg_reg[16] ,
    \share1_reg[17]_i_2 ,
    Q,
    \share1_reg[26]_i_2 ,
    \share1_reg[27]_i_2 ,
    \share1_reg[19]_i_2 ,
    \share1_reg[28]_i_2 ,
    \share1_reg[28]_i_2_0 ,
    \share1_reg[20]_i_2 ,
    \share1_reg[29]_i_2 ,
    \share1_reg[30]_i_2 ,
    \share1_reg_reg[22] ,
    \share1_reg[31]_i_2 ,
    \ciphertext_reg[119] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[16]_0 ,
    \share1_reg_reg[16]_1 ,
    \share1_reg_reg[23]_0 ,
    \share1_reg_reg[18] ,
    \share1_reg_reg[21] ,
    \share1_reg_reg[22]_0 ,
    \share1_reg_reg[23]_1 );
  output \share2_reg_reg[87] ;
  output \share2_reg_reg[87]_0 ;
  output \share2_reg_reg[80] ;
  output \share2_reg_reg[81] ;
  output [2:0]post_linear_share1;
  output [4:0]\share2_reg_reg[7] ;
  output \share2_reg_reg[119] ;
  output \share2_reg_reg[118] ;
  output \share2_reg_reg[82] ;
  output \share2_reg_reg[87]_1 ;
  output \share2_reg_reg[83] ;
  output \share2_reg_reg[87]_2 ;
  output \share2_reg_reg[84] ;
  output \share2_reg_reg[85] ;
  output \share2_reg_reg[86] ;
  output \share2_reg_reg[117] ;
  output \share2_reg_reg[116] ;
  output \share2_reg_reg[115] ;
  output \share2_reg_reg[114] ;
  output \share2_reg_reg[113] ;
  output \share2_reg_reg[112] ;
  output [4:0]D;
  input [11:0]\share1_reg_reg[23] ;
  input \share1_reg[25]_i_2 ;
  input \share1_reg_reg[16] ;
  input \share1_reg[17]_i_2 ;
  input [15:0]Q;
  input \share1_reg[26]_i_2 ;
  input \share1_reg[27]_i_2 ;
  input \share1_reg[19]_i_2 ;
  input \share1_reg[28]_i_2 ;
  input \share1_reg[28]_i_2_0 ;
  input \share1_reg[20]_i_2 ;
  input \share1_reg[29]_i_2 ;
  input \share1_reg[30]_i_2 ;
  input \share1_reg_reg[22] ;
  input \share1_reg[31]_i_2 ;
  input [7:0]\ciphertext_reg[119] ;
  input [4:0]key_IBUF;
  input [4:0]plaintext_IBUF;
  input [4:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[16]_0 ;
  input \share1_reg_reg[16]_1 ;
  input [4:0]\share1_reg_reg[23]_0 ;
  input \share1_reg_reg[18] ;
  input \share1_reg_reg[21] ;
  input \share1_reg_reg[22]_0 ;
  input \share1_reg_reg[23]_1 ;

  wire [4:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[119] ;
  wire g0_b0__0_n_0;
  wire g0_b1__0_n_0;
  wire g0_b2__0_n_0;
  wire g0_b3__0_n_0;
  wire g0_b4__0_n_0;
  wire g0_b5__0_n_0;
  wire g0_b6__0_n_0;
  wire g0_b7__0_n_0;
  wire g1_b0__0_n_0;
  wire g1_b1__0_n_0;
  wire g1_b2__0_n_0;
  wire g1_b3__0_n_0;
  wire g1_b4__0_n_0;
  wire g1_b5__0_n_0;
  wire g1_b6__0_n_0;
  wire g1_b7__0_n_0;
  wire g2_b0__0_n_0;
  wire g2_b1__0_n_0;
  wire g2_b2__0_n_0;
  wire g2_b3__0_n_0;
  wire g2_b4__0_n_0;
  wire g2_b5__0_n_0;
  wire g2_b6__0_n_0;
  wire g2_b7__0_n_0;
  wire g3_b0__0_n_0;
  wire g3_b1__0_n_0;
  wire g3_b2__0_n_0;
  wire g3_b3__0_n_0;
  wire g3_b4__0_n_0;
  wire g3_b5__0_n_0;
  wire g3_b6__0_n_0;
  wire g3_b7__0_n_0;
  wire [4:0]key_IBUF;
  wire [4:0]mask_in_IBUF;
  wire [4:0]plaintext_IBUF;
  wire [2:0]post_linear_share1;
  wire [23:16]round_ark_share1;
  wire \share1_reg[16]_i_7_n_0 ;
  wire \share1_reg[17]_i_2 ;
  wire \share1_reg[18]_i_8_n_0 ;
  wire \share1_reg[18]_i_9_n_0 ;
  wire \share1_reg[19]_i_2 ;
  wire \share1_reg[20]_i_2 ;
  wire \share1_reg[21]_i_7_n_0 ;
  wire \share1_reg[22]_i_7_n_0 ;
  wire \share1_reg[23]_i_8_n_0 ;
  wire \share1_reg[23]_i_9_n_0 ;
  wire \share1_reg[25]_i_2 ;
  wire \share1_reg[26]_i_2 ;
  wire \share1_reg[27]_i_2 ;
  wire \share1_reg[28]_i_11_n_0 ;
  wire \share1_reg[28]_i_2 ;
  wire \share1_reg[28]_i_2_0 ;
  wire \share1_reg[29]_i_2 ;
  wire \share1_reg[30]_i_2 ;
  wire \share1_reg[31]_i_2 ;
  wire \share1_reg_reg[16] ;
  wire [1:0]\share1_reg_reg[16]_0 ;
  wire \share1_reg_reg[16]_1 ;
  wire \share1_reg_reg[18] ;
  wire \share1_reg_reg[21] ;
  wire \share1_reg_reg[22] ;
  wire \share1_reg_reg[22]_0 ;
  wire [11:0]\share1_reg_reg[23] ;
  wire [4:0]\share1_reg_reg[23]_0 ;
  wire \share1_reg_reg[23]_1 ;
  wire \share2_reg_reg[112] ;
  wire \share2_reg_reg[113] ;
  wire \share2_reg_reg[114] ;
  wire \share2_reg_reg[115] ;
  wire \share2_reg_reg[116] ;
  wire \share2_reg_reg[117] ;
  wire \share2_reg_reg[118] ;
  wire \share2_reg_reg[119] ;
  wire [4:0]\share2_reg_reg[7] ;
  wire \share2_reg_reg[80] ;
  wire \share2_reg_reg[81] ;
  wire \share2_reg_reg[82] ;
  wire \share2_reg_reg[83] ;
  wire \share2_reg_reg[84] ;
  wire \share2_reg_reg[85] ;
  wire \share2_reg_reg[86] ;
  wire \share2_reg_reg[87] ;
  wire \share2_reg_reg[87]_0 ;
  wire \share2_reg_reg[87]_1 ;
  wire \share2_reg_reg[87]_2 ;

  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[118]_i_1 
       (.I0(Q[14]),
        .I1(\ciphertext_reg[119] [6]),
        .O(\share2_reg_reg[118] ));
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[119]_i_1 
       (.I0(Q[15]),
        .I1(\ciphertext_reg[119] [7]),
        .O(\share2_reg_reg[119] ));
  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g0_b0__0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__0_i_1
       (.I0(Q[8]),
        .I1(\ciphertext_reg[119] [0]),
        .O(\share2_reg_reg[112] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__0_i_2
       (.I0(Q[9]),
        .I1(\ciphertext_reg[119] [1]),
        .O(\share2_reg_reg[113] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__0_i_3
       (.I0(Q[10]),
        .I1(\ciphertext_reg[119] [2]),
        .O(\share2_reg_reg[114] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__0_i_4
       (.I0(Q[11]),
        .I1(\ciphertext_reg[119] [3]),
        .O(\share2_reg_reg[115] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__0_i_5
       (.I0(Q[12]),
        .I1(\ciphertext_reg[119] [4]),
        .O(\share2_reg_reg[116] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__0_i_6
       (.I0(Q[13]),
        .I1(\ciphertext_reg[119] [5]),
        .O(\share2_reg_reg[117] ));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g0_b1__0_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g0_b2__0_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g0_b3__0_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g0_b4__0_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g0_b5__0_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g0_b6__0_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g0_b7__0_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g1_b0__0_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g1_b1__0_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g1_b2__0_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g1_b3__0_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g1_b4__0_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g1_b5__0_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g1_b6__0_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g1_b7__0_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g2_b0__0_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g2_b1__0_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g2_b2__0_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g2_b3__0_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g2_b4__0_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g2_b5__0_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g2_b6__0_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g2_b7__0_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g3_b0__0_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g3_b1__0_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g3_b2__0_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g3_b3__0_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g3_b4__0_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g3_b5__0_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g3_b6__0_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__0
       (.I0(\share2_reg_reg[112] ),
        .I1(\share2_reg_reg[113] ),
        .I2(\share2_reg_reg[114] ),
        .I3(\share2_reg_reg[115] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share2_reg_reg[117] ),
        .O(g3_b7__0_n_0));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[16]_i_1 
       (.I0(key_IBUF[0]),
        .I1(plaintext_IBUF[0]),
        .I2(mask_in_IBUF[0]),
        .I3(\share1_reg_reg[16]_0 [0]),
        .I4(round_ark_share1[16]),
        .I5(\share1_reg_reg[16]_0 [1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[16]_i_2 
       (.I0(\share2_reg_reg[80] ),
        .I1(\share1_reg_reg[16] ),
        .I2(\share2_reg_reg[87]_0 ),
        .I3(\share1_reg_reg[16]_1 ),
        .I4(\share1_reg_reg[23] [8]),
        .I5(\share1_reg_reg[23]_0 [0]),
        .O(round_ark_share1[16]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[16]_i_3 
       (.I0(Q[0]),
        .I1(\share1_reg[16]_i_7_n_0 ),
        .I2(\share2_reg_reg[119] ),
        .I3(g2_b0__0_n_0),
        .I4(\share2_reg_reg[118] ),
        .I5(g3_b0__0_n_0),
        .O(\share2_reg_reg[80] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[16]_i_7 
       (.I0(g1_b0__0_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[119] [6]),
        .I3(g0_b0__0_n_0),
        .O(\share1_reg[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[17]_i_3 
       (.I0(\share2_reg_reg[81] ),
        .I1(\share1_reg_reg[16] ),
        .I2(\share2_reg_reg[80] ),
        .I3(\share2_reg_reg[87]_0 ),
        .I4(\share1_reg[17]_i_2 ),
        .I5(\share1_reg[25]_i_2 ),
        .O(post_linear_share1[0]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[18]_i_1 
       (.I0(key_IBUF[1]),
        .I1(plaintext_IBUF[1]),
        .I2(mask_in_IBUF[1]),
        .I3(\share1_reg_reg[16]_0 [0]),
        .I4(round_ark_share1[18]),
        .I5(\share1_reg_reg[16]_0 [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[18]_i_2 
       (.I0(\share2_reg_reg[82] ),
        .I1(\share1_reg_reg[16] ),
        .I2(\share2_reg_reg[81] ),
        .I3(\share1_reg_reg[18] ),
        .I4(\share1_reg_reg[23] [9]),
        .I5(\share1_reg_reg[23]_0 [1]),
        .O(round_ark_share1[18]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[18]_i_3 
       (.I0(Q[2]),
        .I1(\share1_reg[18]_i_8_n_0 ),
        .I2(\share2_reg_reg[119] ),
        .I3(g2_b2__0_n_0),
        .I4(\share2_reg_reg[118] ),
        .I5(g3_b2__0_n_0),
        .O(\share2_reg_reg[82] ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[18]_i_4 
       (.I0(Q[1]),
        .I1(\share1_reg[18]_i_9_n_0 ),
        .I2(\share2_reg_reg[119] ),
        .I3(g2_b1__0_n_0),
        .I4(\share2_reg_reg[118] ),
        .I5(g3_b1__0_n_0),
        .O(\share2_reg_reg[81] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[18]_i_8 
       (.I0(g1_b2__0_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[119] [6]),
        .I3(g0_b2__0_n_0),
        .O(\share1_reg[18]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[18]_i_9 
       (.I0(g1_b1__0_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[119] [6]),
        .I3(g0_b1__0_n_0),
        .O(\share1_reg[18]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[19]_i_3 
       (.I0(\share2_reg_reg[83] ),
        .I1(\share1_reg_reg[16] ),
        .I2(\share2_reg_reg[82] ),
        .I3(\share2_reg_reg[87]_0 ),
        .I4(\share1_reg[19]_i_2 ),
        .I5(\share1_reg[27]_i_2 ),
        .O(post_linear_share1[1]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[20]_i_3 
       (.I0(\share2_reg_reg[84] ),
        .I1(\share1_reg_reg[16] ),
        .I2(\share2_reg_reg[83] ),
        .I3(\share2_reg_reg[87]_0 ),
        .I4(\share1_reg[20]_i_2 ),
        .I5(\share1_reg[28]_i_2_0 ),
        .O(post_linear_share1[2]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[21]_i_1 
       (.I0(key_IBUF[2]),
        .I1(plaintext_IBUF[2]),
        .I2(mask_in_IBUF[2]),
        .I3(\share1_reg_reg[16]_0 [0]),
        .I4(round_ark_share1[21]),
        .I5(\share1_reg_reg[16]_0 [1]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[21]_i_2 
       (.I0(\share2_reg_reg[85] ),
        .I1(\share1_reg_reg[16] ),
        .I2(\share2_reg_reg[84] ),
        .I3(\share1_reg_reg[21] ),
        .I4(\share1_reg_reg[23] [10]),
        .I5(\share1_reg_reg[23]_0 [2]),
        .O(round_ark_share1[21]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[21]_i_3 
       (.I0(Q[4]),
        .I1(\share1_reg[21]_i_7_n_0 ),
        .I2(\share2_reg_reg[119] ),
        .I3(g2_b4__0_n_0),
        .I4(\share2_reg_reg[118] ),
        .I5(g3_b4__0_n_0),
        .O(\share2_reg_reg[84] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[21]_i_7 
       (.I0(g1_b4__0_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[119] [6]),
        .I3(g0_b4__0_n_0),
        .O(\share1_reg[21]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[22]_i_1 
       (.I0(key_IBUF[3]),
        .I1(plaintext_IBUF[3]),
        .I2(mask_in_IBUF[3]),
        .I3(\share1_reg_reg[16]_0 [0]),
        .I4(round_ark_share1[22]),
        .I5(\share1_reg_reg[16]_0 [1]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[22]_i_2 
       (.I0(\share2_reg_reg[86] ),
        .I1(\share1_reg_reg[16] ),
        .I2(\share2_reg_reg[85] ),
        .I3(\share1_reg_reg[22]_0 ),
        .I4(\share1_reg_reg[22] ),
        .I5(\share1_reg_reg[23]_0 [3]),
        .O(round_ark_share1[22]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[22]_i_3 
       (.I0(Q[5]),
        .I1(\share1_reg[22]_i_7_n_0 ),
        .I2(\share2_reg_reg[119] ),
        .I3(g2_b5__0_n_0),
        .I4(\share2_reg_reg[118] ),
        .I5(g3_b5__0_n_0),
        .O(\share2_reg_reg[85] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[22]_i_7 
       (.I0(g1_b5__0_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[119] [6]),
        .I3(g0_b5__0_n_0),
        .O(\share1_reg[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[23]_i_1 
       (.I0(key_IBUF[4]),
        .I1(plaintext_IBUF[4]),
        .I2(mask_in_IBUF[4]),
        .I3(\share1_reg_reg[16]_0 [0]),
        .I4(round_ark_share1[23]),
        .I5(\share1_reg_reg[16]_0 [1]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[23]_i_2 
       (.I0(\share2_reg_reg[87]_0 ),
        .I1(\share1_reg_reg[16] ),
        .I2(\share2_reg_reg[86] ),
        .I3(\share1_reg_reg[23]_1 ),
        .I4(\share1_reg_reg[23] [11]),
        .I5(\share1_reg_reg[23]_0 [4]),
        .O(round_ark_share1[23]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[23]_i_3 
       (.I0(Q[7]),
        .I1(\share1_reg[23]_i_8_n_0 ),
        .I2(\share2_reg_reg[119] ),
        .I3(g2_b7__0_n_0),
        .I4(\share2_reg_reg[118] ),
        .I5(g3_b7__0_n_0),
        .O(\share2_reg_reg[87]_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[23]_i_4 
       (.I0(Q[6]),
        .I1(\share1_reg[23]_i_9_n_0 ),
        .I2(\share2_reg_reg[119] ),
        .I3(g2_b6__0_n_0),
        .I4(\share2_reg_reg[118] ),
        .I5(g3_b6__0_n_0),
        .O(\share2_reg_reg[86] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[23]_i_8 
       (.I0(g1_b7__0_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[119] [6]),
        .I3(g0_b7__0_n_0),
        .O(\share1_reg[23]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[23]_i_9 
       (.I0(g1_b6__0_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[119] [6]),
        .I3(g0_b6__0_n_0),
        .O(\share1_reg[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[24]_i_4 
       (.I0(\share1_reg_reg[23] [4]),
        .I1(\share1_reg_reg[23] [8]),
        .I2(\share2_reg_reg[80] ),
        .I3(\share1_reg_reg[23] [3]),
        .I4(\share2_reg_reg[87]_0 ),
        .O(\share2_reg_reg[7] [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share1_reg[25]_i_5 
       (.I0(\share2_reg_reg[87]_0 ),
        .I1(\share2_reg_reg[80] ),
        .I2(\share1_reg_reg[23] [3]),
        .I3(\share1_reg_reg[23] [0]),
        .I4(\share2_reg_reg[81] ),
        .I5(\share1_reg[25]_i_2 ),
        .O(\share2_reg_reg[87] ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[26]_i_4 
       (.I0(\share1_reg_reg[23] [5]),
        .I1(\share1_reg_reg[23] [9]),
        .I2(\share2_reg_reg[82] ),
        .I3(\share1_reg[26]_i_2 ),
        .I4(\share2_reg_reg[81] ),
        .O(\share2_reg_reg[7] [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share1_reg[27]_i_5 
       (.I0(\share2_reg_reg[87]_0 ),
        .I1(\share2_reg_reg[82] ),
        .I2(\share1_reg_reg[23] [3]),
        .I3(\share1_reg_reg[23] [1]),
        .I4(\share2_reg_reg[83] ),
        .I5(\share1_reg[27]_i_2 ),
        .O(\share2_reg_reg[87]_1 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[28]_i_11 
       (.I0(g1_b3__0_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[119] [6]),
        .I3(g0_b3__0_n_0),
        .O(\share1_reg[28]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share1_reg[28]_i_5 
       (.I0(\share2_reg_reg[87]_0 ),
        .I1(\share2_reg_reg[83] ),
        .I2(\share1_reg_reg[23] [3]),
        .I3(\share1_reg[28]_i_2 ),
        .I4(\share2_reg_reg[84] ),
        .I5(\share1_reg[28]_i_2_0 ),
        .O(\share2_reg_reg[87]_2 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[28]_i_9 
       (.I0(Q[3]),
        .I1(\share1_reg[28]_i_11_n_0 ),
        .I2(\share2_reg_reg[119] ),
        .I3(g2_b3__0_n_0),
        .I4(\share2_reg_reg[118] ),
        .I5(g3_b3__0_n_0),
        .O(\share2_reg_reg[83] ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[29]_i_4 
       (.I0(\share1_reg_reg[23] [6]),
        .I1(\share1_reg_reg[23] [10]),
        .I2(\share2_reg_reg[85] ),
        .I3(\share1_reg[29]_i_2 ),
        .I4(\share2_reg_reg[84] ),
        .O(\share2_reg_reg[7] [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[30]_i_4 
       (.I0(\share1_reg[30]_i_2 ),
        .I1(\share1_reg_reg[22] ),
        .I2(\share2_reg_reg[86] ),
        .I3(\share1_reg_reg[23] [2]),
        .I4(\share2_reg_reg[85] ),
        .O(\share2_reg_reg[7] [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[31]_i_4 
       (.I0(\share1_reg_reg[23] [7]),
        .I1(\share1_reg_reg[23] [11]),
        .I2(\share2_reg_reg[87]_0 ),
        .I3(\share1_reg[31]_i_2 ),
        .I4(\share2_reg_reg[86] ),
        .O(\share2_reg_reg[7] [4]));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_23
   (post_linear_share1,
    \share2_reg_reg[97] ,
    \share2_reg_reg[96] ,
    \share2_reg_reg[103] ,
    mix_cols_share1,
    \share2_reg_reg[98] ,
    \share2_reg_reg[103]_0 ,
    \share2_reg_reg[99] ,
    \share2_reg_reg[103]_1 ,
    \share2_reg_reg[100] ,
    \share2_reg_reg[101] ,
    \share2_reg_reg[103]_2 ,
    \share2_reg_reg[102] ,
    \share2_reg_reg[7] ,
    \share2_reg_reg[6] ,
    \share2_reg_reg[5] ,
    \share2_reg_reg[4] ,
    \share2_reg_reg[3] ,
    \share2_reg_reg[2] ,
    \share2_reg_reg[1] ,
    \share2_reg_reg[0] ,
    \share1_reg[103]_i_2 ,
    \share1_reg[97]_i_2 ,
    \share1_reg[97]_i_2_0 ,
    \share1_reg[97]_i_2_1 ,
    sub_bytes_share1,
    \share1_reg[96]_i_2 ,
    \share1_reg[98]_i_2 ,
    \share1_reg[99]_i_2 ,
    \share1_reg[99]_i_2_0 ,
    \share1_reg[99]_i_2_1 ,
    \share1_reg[100]_i_2 ,
    \share1_reg[100]_i_2_0 ,
    \share1_reg[100]_i_2_1 ,
    \share1_reg[101]_i_2 ,
    \share1_reg[102]_i_2 ,
    \share1_reg[102]_i_2_0 ,
    \share1_reg[102]_i_2_1 ,
    \share1_reg[103]_i_2_0 ,
    \share1_reg[110]_i_2 ,
    Q,
    \ciphertext_reg[7] );
  output [7:0]post_linear_share1;
  output \share2_reg_reg[97] ;
  output \share2_reg_reg[96] ;
  output \share2_reg_reg[103] ;
  output [4:0]mix_cols_share1;
  output \share2_reg_reg[98] ;
  output \share2_reg_reg[103]_0 ;
  output \share2_reg_reg[99] ;
  output \share2_reg_reg[103]_1 ;
  output \share2_reg_reg[100] ;
  output \share2_reg_reg[101] ;
  output \share2_reg_reg[103]_2 ;
  output \share2_reg_reg[102] ;
  output \share2_reg_reg[7] ;
  output \share2_reg_reg[6] ;
  output \share2_reg_reg[5] ;
  output \share2_reg_reg[4] ;
  output \share2_reg_reg[3] ;
  output \share2_reg_reg[2] ;
  output \share2_reg_reg[1] ;
  output \share2_reg_reg[0] ;
  input \share1_reg[103]_i_2 ;
  input \share1_reg[97]_i_2 ;
  input \share1_reg[97]_i_2_0 ;
  input \share1_reg[97]_i_2_1 ;
  input [11:0]sub_bytes_share1;
  input \share1_reg[96]_i_2 ;
  input \share1_reg[98]_i_2 ;
  input \share1_reg[99]_i_2 ;
  input \share1_reg[99]_i_2_0 ;
  input \share1_reg[99]_i_2_1 ;
  input \share1_reg[100]_i_2 ;
  input \share1_reg[100]_i_2_0 ;
  input \share1_reg[100]_i_2_1 ;
  input \share1_reg[101]_i_2 ;
  input \share1_reg[102]_i_2 ;
  input \share1_reg[102]_i_2_0 ;
  input \share1_reg[102]_i_2_1 ;
  input \share1_reg[103]_i_2_0 ;
  input \share1_reg[110]_i_2 ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[7] ;

  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[7] ;
  wire g0_b0__14_n_0;
  wire g0_b1__14_n_0;
  wire g0_b2__14_n_0;
  wire g0_b3__14_n_0;
  wire g0_b4__14_n_0;
  wire g0_b5__14_n_0;
  wire g0_b6__14_n_0;
  wire g0_b7__14_n_0;
  wire g1_b0__14_n_0;
  wire g1_b1__14_n_0;
  wire g1_b2__14_n_0;
  wire g1_b3__14_n_0;
  wire g1_b4__14_n_0;
  wire g1_b5__14_n_0;
  wire g1_b6__14_n_0;
  wire g1_b7__14_n_0;
  wire g2_b0__14_n_0;
  wire g2_b1__14_n_0;
  wire g2_b2__14_n_0;
  wire g2_b3__14_n_0;
  wire g2_b4__14_n_0;
  wire g2_b5__14_n_0;
  wire g2_b6__14_n_0;
  wire g2_b7__14_n_0;
  wire g3_b0__14_n_0;
  wire g3_b1__14_n_0;
  wire g3_b2__14_n_0;
  wire g3_b3__14_n_0;
  wire g3_b4__14_n_0;
  wire g3_b5__14_n_0;
  wire g3_b6__14_n_0;
  wire g3_b7__14_n_0;
  wire [4:0]mix_cols_share1;
  wire [7:0]post_linear_share1;
  wire \share1_reg[100]_i_2 ;
  wire \share1_reg[100]_i_2_0 ;
  wire \share1_reg[100]_i_2_1 ;
  wire \share1_reg[101]_i_2 ;
  wire \share1_reg[102]_i_2 ;
  wire \share1_reg[102]_i_2_0 ;
  wire \share1_reg[102]_i_2_1 ;
  wire \share1_reg[103]_i_2 ;
  wire \share1_reg[103]_i_2_0 ;
  wire \share1_reg[110]_i_2 ;
  wire \share1_reg[120]_i_9_n_0 ;
  wire \share1_reg[121]_i_6_n_0 ;
  wire \share1_reg[122]_i_11_n_0 ;
  wire \share1_reg[123]_i_8_n_0 ;
  wire \share1_reg[124]_i_6_n_0 ;
  wire \share1_reg[125]_i_9_n_0 ;
  wire \share1_reg[126]_i_9_n_0 ;
  wire \share1_reg[127]_i_11_n_0 ;
  wire \share1_reg[96]_i_2 ;
  wire \share1_reg[97]_i_2 ;
  wire \share1_reg[97]_i_2_0 ;
  wire \share1_reg[97]_i_2_1 ;
  wire \share1_reg[98]_i_2 ;
  wire \share1_reg[99]_i_2 ;
  wire \share1_reg[99]_i_2_0 ;
  wire \share1_reg[99]_i_2_1 ;
  wire \share2_reg_reg[0] ;
  wire \share2_reg_reg[100] ;
  wire \share2_reg_reg[101] ;
  wire \share2_reg_reg[102] ;
  wire \share2_reg_reg[103] ;
  wire \share2_reg_reg[103]_0 ;
  wire \share2_reg_reg[103]_1 ;
  wire \share2_reg_reg[103]_2 ;
  wire \share2_reg_reg[1] ;
  wire \share2_reg_reg[2] ;
  wire \share2_reg_reg[3] ;
  wire \share2_reg_reg[4] ;
  wire \share2_reg_reg[5] ;
  wire \share2_reg_reg[6] ;
  wire \share2_reg_reg[7] ;
  wire \share2_reg_reg[96] ;
  wire \share2_reg_reg[97] ;
  wire \share2_reg_reg[98] ;
  wire \share2_reg_reg[99] ;
  wire [11:0]sub_bytes_share1;
  wire [4:1]\u_mc_share1/xtime_return32_in ;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[6]_i_1 
       (.I0(Q[6]),
        .I1(\ciphertext_reg[7] [6]),
        .O(\share2_reg_reg[6] ));
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[7]_i_1 
       (.I0(Q[7]),
        .I1(\ciphertext_reg[7] [7]),
        .O(\share2_reg_reg[7] ));
  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g0_b0__14_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__14_i_1
       (.I0(Q[0]),
        .I1(\ciphertext_reg[7] [0]),
        .O(\share2_reg_reg[0] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__14_i_2
       (.I0(Q[1]),
        .I1(\ciphertext_reg[7] [1]),
        .O(\share2_reg_reg[1] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__14_i_3
       (.I0(Q[2]),
        .I1(\ciphertext_reg[7] [2]),
        .O(\share2_reg_reg[2] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__14_i_4
       (.I0(Q[3]),
        .I1(\ciphertext_reg[7] [3]),
        .O(\share2_reg_reg[3] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__14_i_5
       (.I0(Q[4]),
        .I1(\ciphertext_reg[7] [4]),
        .O(\share2_reg_reg[4] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__14_i_6
       (.I0(Q[5]),
        .I1(\ciphertext_reg[7] [5]),
        .O(\share2_reg_reg[5] ));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g0_b1__14_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g0_b2__14_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g0_b3__14_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g0_b4__14_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g0_b5__14_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g0_b6__14_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g0_b7__14_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g1_b0__14_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g1_b1__14_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g1_b2__14_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g1_b3__14_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g1_b4__14_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g1_b5__14_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g1_b6__14_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g1_b7__14_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g2_b0__14_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g2_b1__14_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g2_b2__14_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g2_b3__14_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g2_b4__14_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g2_b5__14_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g2_b6__14_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g2_b7__14_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g3_b0__14_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g3_b1__14_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g3_b2__14_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g3_b3__14_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g3_b4__14_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g3_b5__14_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g3_b6__14_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__14
       (.I0(\share2_reg_reg[0] ),
        .I1(\share2_reg_reg[1] ),
        .I2(\share2_reg_reg[2] ),
        .I3(\share2_reg_reg[3] ),
        .I4(\share2_reg_reg[4] ),
        .I5(\share2_reg_reg[5] ),
        .O(g3_b7__14_n_0));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[100]_i_3 
       (.I0(\share2_reg_reg[100] ),
        .I1(\share1_reg[103]_i_2 ),
        .I2(\u_mc_share1/xtime_return32_in [4]),
        .I3(\share1_reg[100]_i_2 ),
        .I4(\share1_reg[100]_i_2_0 ),
        .I5(\share1_reg[100]_i_2_1 ),
        .O(post_linear_share1[4]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[100]_i_4 
       (.I0(\share2_reg_reg[103] ),
        .I1(\share2_reg_reg[99] ),
        .O(\u_mc_share1/xtime_return32_in [4]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[101]_i_3 
       (.I0(\share2_reg_reg[101] ),
        .I1(\share1_reg[103]_i_2 ),
        .I2(\share2_reg_reg[100] ),
        .I3(sub_bytes_share1[2]),
        .I4(\share1_reg[101]_i_2 ),
        .I5(sub_bytes_share1[10]),
        .O(post_linear_share1[5]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[102]_i_3 
       (.I0(\share2_reg_reg[102] ),
        .I1(\share1_reg[103]_i_2 ),
        .I2(\share2_reg_reg[101] ),
        .I3(\share1_reg[102]_i_2 ),
        .I4(\share1_reg[102]_i_2_0 ),
        .I5(\share1_reg[102]_i_2_1 ),
        .O(post_linear_share1[6]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[103]_i_3 
       (.I0(\share2_reg_reg[103] ),
        .I1(\share1_reg[103]_i_2 ),
        .I2(\share2_reg_reg[102] ),
        .I3(sub_bytes_share1[3]),
        .I4(\share1_reg[103]_i_2_0 ),
        .I5(sub_bytes_share1[11]),
        .O(post_linear_share1[7]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[104]_i_4 
       (.I0(sub_bytes_share1[4]),
        .I1(sub_bytes_share1[8]),
        .I2(sub_bytes_share1[3]),
        .I3(\share2_reg_reg[96] ),
        .I4(\share2_reg_reg[103] ),
        .O(mix_cols_share1[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share1_reg[105]_i_4 
       (.I0(\share2_reg_reg[103] ),
        .I1(\share2_reg_reg[96] ),
        .I2(\share2_reg_reg[97] ),
        .I3(sub_bytes_share1[3]),
        .I4(sub_bytes_share1[0]),
        .I5(\share1_reg[97]_i_2_1 ),
        .O(\share2_reg_reg[103]_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[106]_i_4 
       (.I0(sub_bytes_share1[5]),
        .I1(sub_bytes_share1[9]),
        .I2(\share1_reg[97]_i_2 ),
        .I3(\share2_reg_reg[98] ),
        .I4(\share2_reg_reg[97] ),
        .O(mix_cols_share1[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share1_reg[107]_i_5 
       (.I0(\share2_reg_reg[103] ),
        .I1(\share2_reg_reg[98] ),
        .I2(\share2_reg_reg[99] ),
        .I3(sub_bytes_share1[3]),
        .I4(sub_bytes_share1[1]),
        .I5(\share1_reg[99]_i_2_1 ),
        .O(\share2_reg_reg[103]_1 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share1_reg[108]_i_4 
       (.I0(\share2_reg_reg[103] ),
        .I1(\share2_reg_reg[99] ),
        .I2(\share2_reg_reg[100] ),
        .I3(sub_bytes_share1[3]),
        .I4(\share1_reg[99]_i_2 ),
        .I5(\share1_reg[100]_i_2_1 ),
        .O(\share2_reg_reg[103]_2 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[109]_i_3 
       (.I0(sub_bytes_share1[6]),
        .I1(sub_bytes_share1[10]),
        .I2(\share1_reg[100]_i_2 ),
        .I3(\share2_reg_reg[101] ),
        .I4(\share2_reg_reg[100] ),
        .O(mix_cols_share1[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[110]_i_3 
       (.I0(\share1_reg[110]_i_2 ),
        .I1(\share1_reg[102]_i_2_1 ),
        .I2(sub_bytes_share1[2]),
        .I3(\share2_reg_reg[102] ),
        .I4(\share2_reg_reg[101] ),
        .O(mix_cols_share1[3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[111]_i_3 
       (.I0(sub_bytes_share1[7]),
        .I1(sub_bytes_share1[11]),
        .I2(\share1_reg[102]_i_2 ),
        .I3(\share2_reg_reg[103] ),
        .I4(\share2_reg_reg[102] ),
        .O(mix_cols_share1[4]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[120]_i_8 
       (.I0(Q[8]),
        .I1(\share1_reg[120]_i_9_n_0 ),
        .I2(\share2_reg_reg[7] ),
        .I3(g2_b0__14_n_0),
        .I4(\share2_reg_reg[6] ),
        .I5(g3_b0__14_n_0),
        .O(\share2_reg_reg[96] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[120]_i_9 
       (.I0(g1_b0__14_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[7] [6]),
        .I3(g0_b0__14_n_0),
        .O(\share1_reg[120]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[121]_i_5 
       (.I0(Q[9]),
        .I1(\share1_reg[121]_i_6_n_0 ),
        .I2(\share2_reg_reg[7] ),
        .I3(g2_b1__14_n_0),
        .I4(\share2_reg_reg[6] ),
        .I5(g3_b1__14_n_0),
        .O(\share2_reg_reg[97] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[121]_i_6 
       (.I0(g1_b1__14_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[7] [6]),
        .I3(g0_b1__14_n_0),
        .O(\share1_reg[121]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[122]_i_10 
       (.I0(Q[10]),
        .I1(\share1_reg[122]_i_11_n_0 ),
        .I2(\share2_reg_reg[7] ),
        .I3(g2_b2__14_n_0),
        .I4(\share2_reg_reg[6] ),
        .I5(g3_b2__14_n_0),
        .O(\share2_reg_reg[98] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[122]_i_11 
       (.I0(g1_b2__14_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[7] [6]),
        .I3(g0_b2__14_n_0),
        .O(\share1_reg[122]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[123]_i_7 
       (.I0(Q[11]),
        .I1(\share1_reg[123]_i_8_n_0 ),
        .I2(\share2_reg_reg[7] ),
        .I3(g2_b3__14_n_0),
        .I4(\share2_reg_reg[6] ),
        .I5(g3_b3__14_n_0),
        .O(\share2_reg_reg[99] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[123]_i_8 
       (.I0(g1_b3__14_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[7] [6]),
        .I3(g0_b3__14_n_0),
        .O(\share1_reg[123]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[124]_i_5 
       (.I0(Q[12]),
        .I1(\share1_reg[124]_i_6_n_0 ),
        .I2(\share2_reg_reg[7] ),
        .I3(g2_b4__14_n_0),
        .I4(\share2_reg_reg[6] ),
        .I5(g3_b4__14_n_0),
        .O(\share2_reg_reg[100] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[124]_i_6 
       (.I0(g1_b4__14_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[7] [6]),
        .I3(g0_b4__14_n_0),
        .O(\share1_reg[124]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[125]_i_8 
       (.I0(Q[13]),
        .I1(\share1_reg[125]_i_9_n_0 ),
        .I2(\share2_reg_reg[7] ),
        .I3(g2_b5__14_n_0),
        .I4(\share2_reg_reg[6] ),
        .I5(g3_b5__14_n_0),
        .O(\share2_reg_reg[101] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[125]_i_9 
       (.I0(g1_b5__14_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[7] [6]),
        .I3(g0_b5__14_n_0),
        .O(\share1_reg[125]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[126]_i_8 
       (.I0(Q[14]),
        .I1(\share1_reg[126]_i_9_n_0 ),
        .I2(\share2_reg_reg[7] ),
        .I3(g2_b6__14_n_0),
        .I4(\share2_reg_reg[6] ),
        .I5(g3_b6__14_n_0),
        .O(\share2_reg_reg[102] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[126]_i_9 
       (.I0(g1_b6__14_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[7] [6]),
        .I3(g0_b6__14_n_0),
        .O(\share1_reg[126]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[127]_i_10 
       (.I0(Q[15]),
        .I1(\share1_reg[127]_i_11_n_0 ),
        .I2(\share2_reg_reg[7] ),
        .I3(g2_b7__14_n_0),
        .I4(\share2_reg_reg[6] ),
        .I5(g3_b7__14_n_0),
        .O(\share2_reg_reg[103] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[127]_i_11 
       (.I0(g1_b7__14_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[7] [6]),
        .I3(g0_b7__14_n_0),
        .O(\share1_reg[127]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[96]_i_3 
       (.I0(\share2_reg_reg[96] ),
        .I1(\share1_reg[103]_i_2 ),
        .I2(\share2_reg_reg[103] ),
        .I3(sub_bytes_share1[0]),
        .I4(\share1_reg[96]_i_2 ),
        .I5(sub_bytes_share1[8]),
        .O(post_linear_share1[0]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[97]_i_3 
       (.I0(\share2_reg_reg[97] ),
        .I1(\share1_reg[103]_i_2 ),
        .I2(\u_mc_share1/xtime_return32_in [1]),
        .I3(\share1_reg[97]_i_2 ),
        .I4(\share1_reg[97]_i_2_0 ),
        .I5(\share1_reg[97]_i_2_1 ),
        .O(post_linear_share1[1]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[97]_i_4 
       (.I0(\share2_reg_reg[103] ),
        .I1(\share2_reg_reg[96] ),
        .O(\u_mc_share1/xtime_return32_in [1]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[98]_i_3 
       (.I0(\share2_reg_reg[98] ),
        .I1(\share1_reg[103]_i_2 ),
        .I2(\share2_reg_reg[97] ),
        .I3(sub_bytes_share1[1]),
        .I4(\share1_reg[98]_i_2 ),
        .I5(sub_bytes_share1[9]),
        .O(post_linear_share1[2]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[99]_i_3 
       (.I0(\share2_reg_reg[99] ),
        .I1(\share1_reg[103]_i_2 ),
        .I2(\u_mc_share1/xtime_return32_in [3]),
        .I3(\share1_reg[99]_i_2 ),
        .I4(\share1_reg[99]_i_2_0 ),
        .I5(\share1_reg[99]_i_2_1 ),
        .O(post_linear_share1[3]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[99]_i_4 
       (.I0(\share2_reg_reg[103] ),
        .I1(\share2_reg_reg[98] ),
        .O(\u_mc_share1/xtime_return32_in [3]));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_24
   (\share2_reg_reg[57] ,
    \share2_reg_reg[111] ,
    sub_bytes_share1,
    \share2_reg_reg[59] ,
    \share2_reg_reg[60] ,
    \share2_reg_reg[107] ,
    \share2_reg_reg[15] ,
    \share2_reg_reg[14] ,
    \share2_reg_reg[13] ,
    \share2_reg_reg[12] ,
    \share2_reg_reg[11] ,
    \share2_reg_reg[10] ,
    \share2_reg_reg[9] ,
    \share2_reg_reg[8] ,
    D,
    \share2_reg_reg[105] ,
    \share2_reg_reg[108] ,
    \share2_reg_reg[110] ,
    \share1_reg[81]_i_2 ,
    \share1_reg[81]_i_2_0 ,
    \share1_reg[83]_i_5 ,
    \share1_reg[83]_i_5_0 ,
    \share1_reg[84]_i_5 ,
    \share1_reg_reg[77] ,
    Q,
    \ciphertext_reg[15] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[72] ,
    \share1_reg_reg[73] ,
    \share1_reg_reg[73]_0 ,
    \share1_reg_reg[73]_1 ,
    \share1_reg_reg[79] ,
    \share1_reg_reg[72]_0 ,
    \share1_reg_reg[72]_1 ,
    \share1_reg_reg[74] ,
    \share1_reg_reg[74]_0 ,
    \share1_reg_reg[75] ,
    \share1_reg_reg[76] ,
    \share1_reg_reg[78] ,
    \share1_reg_reg[77]_0 ,
    \share1_reg_reg[78]_0 ,
    \share1_reg_reg[78]_1 ,
    \share1_reg_reg[79]_0 ,
    \share1_reg_reg[79]_1 );
  output \share2_reg_reg[57] ;
  output \share2_reg_reg[111] ;
  output [2:0]sub_bytes_share1;
  output \share2_reg_reg[59] ;
  output \share2_reg_reg[60] ;
  output \share2_reg_reg[107] ;
  output \share2_reg_reg[15] ;
  output \share2_reg_reg[14] ;
  output \share2_reg_reg[13] ;
  output \share2_reg_reg[12] ;
  output \share2_reg_reg[11] ;
  output \share2_reg_reg[10] ;
  output \share2_reg_reg[9] ;
  output \share2_reg_reg[8] ;
  output [7:0]D;
  output \share2_reg_reg[105] ;
  output \share2_reg_reg[108] ;
  output \share2_reg_reg[110] ;
  input \share1_reg[81]_i_2 ;
  input \share1_reg[81]_i_2_0 ;
  input \share1_reg[83]_i_5 ;
  input \share1_reg[83]_i_5_0 ;
  input \share1_reg[84]_i_5 ;
  input \share1_reg_reg[77] ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[15] ;
  input [7:0]key_IBUF;
  input [7:0]plaintext_IBUF;
  input [7:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[72] ;
  input \share1_reg_reg[73] ;
  input \share1_reg_reg[73]_0 ;
  input \share1_reg_reg[73]_1 ;
  input [7:0]\share1_reg_reg[79] ;
  input \share1_reg_reg[72]_0 ;
  input \share1_reg_reg[72]_1 ;
  input \share1_reg_reg[74] ;
  input \share1_reg_reg[74]_0 ;
  input \share1_reg_reg[75] ;
  input \share1_reg_reg[76] ;
  input [2:0]\share1_reg_reg[78] ;
  input \share1_reg_reg[77]_0 ;
  input \share1_reg_reg[78]_0 ;
  input \share1_reg_reg[78]_1 ;
  input \share1_reg_reg[79]_0 ;
  input \share1_reg_reg[79]_1 ;

  wire [7:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[15] ;
  wire g0_b0__13_n_0;
  wire g0_b1__13_n_0;
  wire g0_b2__13_n_0;
  wire g0_b3__13_n_0;
  wire g0_b4__13_n_0;
  wire g0_b5__13_n_0;
  wire g0_b6__13_n_0;
  wire g0_b7__13_n_0;
  wire g1_b0__13_n_0;
  wire g1_b1__13_n_0;
  wire g1_b2__13_n_0;
  wire g1_b3__13_n_0;
  wire g1_b4__13_n_0;
  wire g1_b5__13_n_0;
  wire g1_b6__13_n_0;
  wire g1_b7__13_n_0;
  wire g2_b0__13_n_0;
  wire g2_b1__13_n_0;
  wire g2_b2__13_n_0;
  wire g2_b3__13_n_0;
  wire g2_b4__13_n_0;
  wire g2_b5__13_n_0;
  wire g2_b6__13_n_0;
  wire g2_b7__13_n_0;
  wire g3_b0__13_n_0;
  wire g3_b1__13_n_0;
  wire g3_b2__13_n_0;
  wire g3_b3__13_n_0;
  wire g3_b4__13_n_0;
  wire g3_b5__13_n_0;
  wire g3_b6__13_n_0;
  wire g3_b7__13_n_0;
  wire [7:0]key_IBUF;
  wire [7:0]mask_in_IBUF;
  wire [7:0]plaintext_IBUF;
  wire [79:72]round_ark_share1;
  wire \share1_reg[75]_i_7_n_0 ;
  wire \share1_reg[76]_i_7_n_0 ;
  wire \share1_reg[80]_i_8_n_0 ;
  wire \share1_reg[81]_i_2 ;
  wire \share1_reg[81]_i_2_0 ;
  wire \share1_reg[81]_i_7_n_0 ;
  wire \share1_reg[82]_i_9_n_0 ;
  wire \share1_reg[83]_i_5 ;
  wire \share1_reg[83]_i_5_0 ;
  wire \share1_reg[84]_i_5 ;
  wire \share1_reg[85]_i_7_n_0 ;
  wire \share1_reg[86]_i_7_n_0 ;
  wire \share1_reg[87]_i_9_n_0 ;
  wire [1:0]\share1_reg_reg[72] ;
  wire \share1_reg_reg[72]_0 ;
  wire \share1_reg_reg[72]_1 ;
  wire \share1_reg_reg[73] ;
  wire \share1_reg_reg[73]_0 ;
  wire \share1_reg_reg[73]_1 ;
  wire \share1_reg_reg[74] ;
  wire \share1_reg_reg[74]_0 ;
  wire \share1_reg_reg[75] ;
  wire \share1_reg_reg[76] ;
  wire \share1_reg_reg[77] ;
  wire \share1_reg_reg[77]_0 ;
  wire [2:0]\share1_reg_reg[78] ;
  wire \share1_reg_reg[78]_0 ;
  wire \share1_reg_reg[78]_1 ;
  wire [7:0]\share1_reg_reg[79] ;
  wire \share1_reg_reg[79]_0 ;
  wire \share1_reg_reg[79]_1 ;
  wire \share2_reg_reg[105] ;
  wire \share2_reg_reg[107] ;
  wire \share2_reg_reg[108] ;
  wire \share2_reg_reg[10] ;
  wire \share2_reg_reg[110] ;
  wire \share2_reg_reg[111] ;
  wire \share2_reg_reg[11] ;
  wire \share2_reg_reg[12] ;
  wire \share2_reg_reg[13] ;
  wire \share2_reg_reg[14] ;
  wire \share2_reg_reg[15] ;
  wire \share2_reg_reg[57] ;
  wire \share2_reg_reg[59] ;
  wire \share2_reg_reg[60] ;
  wire \share2_reg_reg[8] ;
  wire \share2_reg_reg[9] ;
  wire [2:0]sub_bytes_share1;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[14]_i_1 
       (.I0(Q[6]),
        .I1(\ciphertext_reg[15] [6]),
        .O(\share2_reg_reg[14] ));
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[15]_i_1 
       (.I0(Q[7]),
        .I1(\ciphertext_reg[15] [7]),
        .O(\share2_reg_reg[15] ));
  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g0_b0__13_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__13_i_1
       (.I0(Q[0]),
        .I1(\ciphertext_reg[15] [0]),
        .O(\share2_reg_reg[8] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__13_i_2
       (.I0(Q[1]),
        .I1(\ciphertext_reg[15] [1]),
        .O(\share2_reg_reg[9] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__13_i_3
       (.I0(Q[2]),
        .I1(\ciphertext_reg[15] [2]),
        .O(\share2_reg_reg[10] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__13_i_4
       (.I0(Q[3]),
        .I1(\ciphertext_reg[15] [3]),
        .O(\share2_reg_reg[11] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__13_i_5
       (.I0(Q[4]),
        .I1(\ciphertext_reg[15] [4]),
        .O(\share2_reg_reg[12] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__13_i_6
       (.I0(Q[5]),
        .I1(\ciphertext_reg[15] [5]),
        .O(\share2_reg_reg[13] ));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g0_b1__13_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g0_b2__13_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g0_b3__13_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g0_b4__13_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g0_b5__13_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g0_b6__13_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g0_b7__13_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g1_b0__13_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g1_b1__13_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g1_b2__13_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g1_b3__13_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g1_b4__13_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g1_b5__13_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g1_b6__13_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g1_b7__13_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g2_b0__13_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g2_b1__13_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g2_b2__13_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g2_b3__13_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g2_b4__13_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g2_b5__13_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g2_b6__13_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g2_b7__13_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g3_b0__13_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g3_b1__13_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g3_b2__13_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g3_b3__13_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g3_b4__13_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g3_b5__13_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g3_b6__13_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__13
       (.I0(\share2_reg_reg[8] ),
        .I1(\share2_reg_reg[9] ),
        .I2(\share2_reg_reg[10] ),
        .I3(\share2_reg_reg[11] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share2_reg_reg[13] ),
        .O(g3_b7__13_n_0));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[72]_i_1 
       (.I0(key_IBUF[0]),
        .I1(plaintext_IBUF[0]),
        .I2(mask_in_IBUF[0]),
        .I3(\share1_reg_reg[72] [0]),
        .I4(round_ark_share1[72]),
        .I5(\share1_reg_reg[72] [1]),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h74478BB8)) 
    \share1_reg[72]_i_2 
       (.I0(sub_bytes_share1[0]),
        .I1(\share1_reg_reg[73]_0 ),
        .I2(\share1_reg_reg[72]_0 ),
        .I3(\share1_reg_reg[72]_1 ),
        .I4(\share1_reg_reg[79] [0]),
        .O(round_ark_share1[72]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[73]_i_1 
       (.I0(key_IBUF[1]),
        .I1(plaintext_IBUF[1]),
        .I2(mask_in_IBUF[1]),
        .I3(\share1_reg_reg[72] [0]),
        .I4(round_ark_share1[73]),
        .I5(\share1_reg_reg[73] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h74478BB8)) 
    \share1_reg[73]_i_2 
       (.I0(\share2_reg_reg[105] ),
        .I1(\share1_reg_reg[73]_0 ),
        .I2(\share1_reg_reg[73]_1 ),
        .I3(\share2_reg_reg[57] ),
        .I4(\share1_reg_reg[79] [1]),
        .O(round_ark_share1[73]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[74]_i_1 
       (.I0(key_IBUF[2]),
        .I1(plaintext_IBUF[2]),
        .I2(mask_in_IBUF[2]),
        .I3(\share1_reg_reg[72] [0]),
        .I4(round_ark_share1[74]),
        .I5(\share1_reg_reg[72] [1]),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h74478BB8)) 
    \share1_reg[74]_i_2 
       (.I0(sub_bytes_share1[1]),
        .I1(\share1_reg_reg[73]_0 ),
        .I2(\share1_reg_reg[74] ),
        .I3(\share1_reg_reg[74]_0 ),
        .I4(\share1_reg_reg[79] [2]),
        .O(round_ark_share1[74]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[75]_i_1 
       (.I0(key_IBUF[3]),
        .I1(plaintext_IBUF[3]),
        .I2(mask_in_IBUF[3]),
        .I3(\share1_reg_reg[72] [0]),
        .I4(round_ark_share1[75]),
        .I5(\share1_reg_reg[73] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h74478BB8)) 
    \share1_reg[75]_i_2 
       (.I0(\share2_reg_reg[107] ),
        .I1(\share1_reg_reg[73]_0 ),
        .I2(\share1_reg_reg[75] ),
        .I3(\share2_reg_reg[59] ),
        .I4(\share1_reg_reg[79] [3]),
        .O(round_ark_share1[75]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[75]_i_3 
       (.I0(Q[11]),
        .I1(\share1_reg[75]_i_7_n_0 ),
        .I2(\share2_reg_reg[15] ),
        .I3(g2_b3__13_n_0),
        .I4(\share2_reg_reg[14] ),
        .I5(g3_b3__13_n_0),
        .O(\share2_reg_reg[107] ));
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[75]_i_5 
       (.I0(\share1_reg[83]_i_5 ),
        .I1(\share1_reg[83]_i_5_0 ),
        .I2(\share2_reg_reg[111] ),
        .I3(sub_bytes_share1[1]),
        .O(\share2_reg_reg[59] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[75]_i_7 
       (.I0(g1_b3__13_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[15] [6]),
        .I3(g0_b3__13_n_0),
        .O(\share1_reg[75]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[76]_i_1 
       (.I0(key_IBUF[4]),
        .I1(plaintext_IBUF[4]),
        .I2(mask_in_IBUF[4]),
        .I3(\share1_reg_reg[72] [0]),
        .I4(round_ark_share1[76]),
        .I5(\share1_reg_reg[73] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h74478BB8)) 
    \share1_reg[76]_i_2 
       (.I0(\share2_reg_reg[108] ),
        .I1(\share1_reg_reg[73]_0 ),
        .I2(\share1_reg_reg[76] ),
        .I3(\share2_reg_reg[60] ),
        .I4(\share1_reg_reg[79] [4]),
        .O(round_ark_share1[76]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[76]_i_3 
       (.I0(Q[12]),
        .I1(\share1_reg[76]_i_7_n_0 ),
        .I2(\share2_reg_reg[15] ),
        .I3(g2_b4__13_n_0),
        .I4(\share2_reg_reg[14] ),
        .I5(g3_b4__13_n_0),
        .O(\share2_reg_reg[108] ));
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[76]_i_5 
       (.I0(\share1_reg[84]_i_5 ),
        .I1(\share1_reg_reg[77] ),
        .I2(\share2_reg_reg[111] ),
        .I3(\share2_reg_reg[107] ),
        .O(\share2_reg_reg[60] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[76]_i_7 
       (.I0(g1_b4__13_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[15] [6]),
        .I3(g0_b4__13_n_0),
        .O(\share1_reg[76]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[77]_i_1 
       (.I0(key_IBUF[5]),
        .I1(plaintext_IBUF[5]),
        .I2(mask_in_IBUF[5]),
        .I3(\share1_reg_reg[72] [0]),
        .I4(round_ark_share1[77]),
        .I5(\share1_reg_reg[72] [1]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[77]_i_2 
       (.I0(sub_bytes_share1[2]),
        .I1(\share1_reg_reg[73]_0 ),
        .I2(\share1_reg_reg[77] ),
        .I3(\share1_reg_reg[78] [0]),
        .I4(\share1_reg_reg[77]_0 ),
        .I5(\share1_reg_reg[79] [5]),
        .O(round_ark_share1[77]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[78]_i_1 
       (.I0(key_IBUF[6]),
        .I1(plaintext_IBUF[6]),
        .I2(mask_in_IBUF[6]),
        .I3(\share1_reg_reg[72] [0]),
        .I4(round_ark_share1[78]),
        .I5(\share1_reg_reg[73] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[78]_i_2 
       (.I0(\share2_reg_reg[110] ),
        .I1(\share1_reg_reg[73]_0 ),
        .I2(\share1_reg_reg[78] [2]),
        .I3(\share1_reg_reg[78]_0 ),
        .I4(\share1_reg_reg[78]_1 ),
        .I5(\share1_reg_reg[79] [6]),
        .O(round_ark_share1[78]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[79]_i_1 
       (.I0(key_IBUF[7]),
        .I1(plaintext_IBUF[7]),
        .I2(mask_in_IBUF[7]),
        .I3(\share1_reg_reg[72] [0]),
        .I4(round_ark_share1[79]),
        .I5(\share1_reg_reg[72] [1]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[79]_i_2 
       (.I0(\share2_reg_reg[111] ),
        .I1(\share1_reg_reg[73]_0 ),
        .I2(\share1_reg_reg[79]_0 ),
        .I3(\share1_reg_reg[78] [1]),
        .I4(\share1_reg_reg[79]_1 ),
        .I5(\share1_reg_reg[79] [7]),
        .O(round_ark_share1[79]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[80]_i_4 
       (.I0(Q[8]),
        .I1(\share1_reg[80]_i_8_n_0 ),
        .I2(\share2_reg_reg[15] ),
        .I3(g2_b0__13_n_0),
        .I4(\share2_reg_reg[14] ),
        .I5(g3_b0__13_n_0),
        .O(sub_bytes_share1[0]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[80]_i_8 
       (.I0(g1_b0__13_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[15] [6]),
        .I3(g0_b0__13_n_0),
        .O(\share1_reg[80]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[81]_i_3 
       (.I0(Q[9]),
        .I1(\share1_reg[81]_i_7_n_0 ),
        .I2(\share2_reg_reg[15] ),
        .I3(g2_b1__13_n_0),
        .I4(\share2_reg_reg[14] ),
        .I5(g3_b1__13_n_0),
        .O(\share2_reg_reg[105] ));
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[81]_i_4 
       (.I0(\share1_reg[81]_i_2 ),
        .I1(\share1_reg[81]_i_2_0 ),
        .I2(\share2_reg_reg[111] ),
        .I3(sub_bytes_share1[0]),
        .O(\share2_reg_reg[57] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[81]_i_7 
       (.I0(g1_b1__13_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[15] [6]),
        .I3(g0_b1__13_n_0),
        .O(\share1_reg[81]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[82]_i_4 
       (.I0(Q[10]),
        .I1(\share1_reg[82]_i_9_n_0 ),
        .I2(\share2_reg_reg[15] ),
        .I3(g2_b2__13_n_0),
        .I4(\share2_reg_reg[14] ),
        .I5(g3_b2__13_n_0),
        .O(sub_bytes_share1[1]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[82]_i_9 
       (.I0(g1_b2__13_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[15] [6]),
        .I3(g0_b2__13_n_0),
        .O(\share1_reg[82]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[85]_i_3 
       (.I0(Q[13]),
        .I1(\share1_reg[85]_i_7_n_0 ),
        .I2(\share2_reg_reg[15] ),
        .I3(g2_b5__13_n_0),
        .I4(\share2_reg_reg[14] ),
        .I5(g3_b5__13_n_0),
        .O(sub_bytes_share1[2]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[85]_i_7 
       (.I0(g1_b5__13_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[15] [6]),
        .I3(g0_b5__13_n_0),
        .O(\share1_reg[85]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[86]_i_3 
       (.I0(Q[14]),
        .I1(\share1_reg[86]_i_7_n_0 ),
        .I2(\share2_reg_reg[15] ),
        .I3(g2_b6__13_n_0),
        .I4(\share2_reg_reg[14] ),
        .I5(g3_b6__13_n_0),
        .O(\share2_reg_reg[110] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[86]_i_7 
       (.I0(g1_b6__13_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[15] [6]),
        .I3(g0_b6__13_n_0),
        .O(\share1_reg[86]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[87]_i_4 
       (.I0(Q[15]),
        .I1(\share1_reg[87]_i_9_n_0 ),
        .I2(\share2_reg_reg[15] ),
        .I3(g2_b7__13_n_0),
        .I4(\share2_reg_reg[14] ),
        .I5(g3_b7__13_n_0),
        .O(\share2_reg_reg[111] ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[87]_i_9 
       (.I0(g1_b7__13_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[15] [6]),
        .I3(g0_b7__13_n_0),
        .O(\share1_reg[87]_i_9_n_0 ));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_25
   (post_linear_share1,
    \share2_reg_reg[113] ,
    \share2_reg_reg[119] ,
    \share2_reg_reg[112] ,
    mix_cols_share1,
    \share2_reg_reg[113]_0 ,
    \share2_reg_reg[115] ,
    \share2_reg_reg[114] ,
    \share2_reg_reg[115]_0 ,
    \share2_reg_reg[116] ,
    \share2_reg_reg[116]_0 ,
    \share2_reg_reg[117] ,
    \share2_reg_reg[118] ,
    \share2_reg_reg[23] ,
    \share2_reg_reg[22] ,
    \share2_reg_reg[21] ,
    \share2_reg_reg[20] ,
    \share2_reg_reg[19] ,
    \share2_reg_reg[18] ,
    \share2_reg_reg[17] ,
    \share2_reg_reg[16] ,
    D,
    \share1_reg_reg[48] ,
    \share1_reg[49]_i_2 ,
    \share1_reg[49]_i_2_0 ,
    \share1_reg_reg[55] ,
    \share1_reg[51]_i_2 ,
    \share1_reg[51]_i_2_0 ,
    \share1_reg[58]_i_2 ,
    \share1_reg[52]_i_2 ,
    \share1_reg[52]_i_2_0 ,
    \share1_reg[60]_i_2 ,
    \share1_reg[61]_i_2 ,
    \share1_reg[62]_i_2 ,
    \share1_reg_reg[54] ,
    \share1_reg[63]_i_2 ,
    Q,
    \ciphertext_reg[23] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[48]_0 ,
    \share1_reg_reg[54]_0 ,
    \share1_reg_reg[48]_1 ,
    \share1_reg_reg[55]_0 ,
    \share1_reg_reg[50] ,
    \share1_reg_reg[53] ,
    \share1_reg_reg[54]_1 ,
    \share1_reg_reg[55]_1 );
  output [2:0]post_linear_share1;
  output \share2_reg_reg[113] ;
  output \share2_reg_reg[119] ;
  output \share2_reg_reg[112] ;
  output [4:0]mix_cols_share1;
  output \share2_reg_reg[113]_0 ;
  output \share2_reg_reg[115] ;
  output \share2_reg_reg[114] ;
  output \share2_reg_reg[115]_0 ;
  output \share2_reg_reg[116] ;
  output \share2_reg_reg[116]_0 ;
  output \share2_reg_reg[117] ;
  output \share2_reg_reg[118] ;
  output \share2_reg_reg[23] ;
  output \share2_reg_reg[22] ;
  output \share2_reg_reg[21] ;
  output \share2_reg_reg[20] ;
  output \share2_reg_reg[19] ;
  output \share2_reg_reg[18] ;
  output \share2_reg_reg[17] ;
  output \share2_reg_reg[16] ;
  output [4:0]D;
  input \share1_reg_reg[48] ;
  input \share1_reg[49]_i_2 ;
  input \share1_reg[49]_i_2_0 ;
  input [11:0]\share1_reg_reg[55] ;
  input \share1_reg[51]_i_2 ;
  input \share1_reg[51]_i_2_0 ;
  input \share1_reg[58]_i_2 ;
  input \share1_reg[52]_i_2 ;
  input \share1_reg[52]_i_2_0 ;
  input \share1_reg[60]_i_2 ;
  input \share1_reg[61]_i_2 ;
  input \share1_reg[62]_i_2 ;
  input \share1_reg_reg[54] ;
  input \share1_reg[63]_i_2 ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[23] ;
  input [4:0]key_IBUF;
  input [4:0]plaintext_IBUF;
  input [4:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[48]_0 ;
  input \share1_reg_reg[54]_0 ;
  input \share1_reg_reg[48]_1 ;
  input [4:0]\share1_reg_reg[55]_0 ;
  input \share1_reg_reg[50] ;
  input \share1_reg_reg[53] ;
  input \share1_reg_reg[54]_1 ;
  input \share1_reg_reg[55]_1 ;

  wire [4:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[23] ;
  wire g0_b0__12_n_0;
  wire g0_b1__12_n_0;
  wire g0_b2__12_n_0;
  wire g0_b3__12_n_0;
  wire g0_b4__12_n_0;
  wire g0_b5__12_n_0;
  wire g0_b6__12_n_0;
  wire g0_b7__12_n_0;
  wire g1_b0__12_n_0;
  wire g1_b1__12_n_0;
  wire g1_b2__12_n_0;
  wire g1_b3__12_n_0;
  wire g1_b4__12_n_0;
  wire g1_b5__12_n_0;
  wire g1_b6__12_n_0;
  wire g1_b7__12_n_0;
  wire g2_b0__12_n_0;
  wire g2_b1__12_n_0;
  wire g2_b2__12_n_0;
  wire g2_b3__12_n_0;
  wire g2_b4__12_n_0;
  wire g2_b5__12_n_0;
  wire g2_b6__12_n_0;
  wire g2_b7__12_n_0;
  wire g3_b0__12_n_0;
  wire g3_b1__12_n_0;
  wire g3_b2__12_n_0;
  wire g3_b3__12_n_0;
  wire g3_b4__12_n_0;
  wire g3_b5__12_n_0;
  wire g3_b6__12_n_0;
  wire g3_b7__12_n_0;
  wire [4:0]key_IBUF;
  wire [4:0]mask_in_IBUF;
  wire [4:0]mix_cols_share1;
  wire [4:0]plaintext_IBUF;
  wire [2:0]post_linear_share1;
  wire [55:48]round_ark_share1;
  wire \share1_reg[48]_i_6_n_0 ;
  wire \share1_reg[49]_i_2 ;
  wire \share1_reg[49]_i_2_0 ;
  wire \share1_reg[50]_i_7_n_0 ;
  wire \share1_reg[50]_i_9_n_0 ;
  wire \share1_reg[51]_i_2 ;
  wire \share1_reg[51]_i_2_0 ;
  wire \share1_reg[52]_i_2 ;
  wire \share1_reg[52]_i_2_0 ;
  wire \share1_reg[53]_i_7_n_0 ;
  wire \share1_reg[54]_i_7_n_0 ;
  wire \share1_reg[55]_i_7_n_0 ;
  wire \share1_reg[55]_i_9_n_0 ;
  wire \share1_reg[58]_i_2 ;
  wire \share1_reg[60]_i_11_n_0 ;
  wire \share1_reg[60]_i_2 ;
  wire \share1_reg[61]_i_2 ;
  wire \share1_reg[62]_i_2 ;
  wire \share1_reg[63]_i_2 ;
  wire \share1_reg_reg[48] ;
  wire [1:0]\share1_reg_reg[48]_0 ;
  wire \share1_reg_reg[48]_1 ;
  wire \share1_reg_reg[50] ;
  wire \share1_reg_reg[53] ;
  wire \share1_reg_reg[54] ;
  wire \share1_reg_reg[54]_0 ;
  wire \share1_reg_reg[54]_1 ;
  wire [11:0]\share1_reg_reg[55] ;
  wire [4:0]\share1_reg_reg[55]_0 ;
  wire \share1_reg_reg[55]_1 ;
  wire \share2_reg_reg[112] ;
  wire \share2_reg_reg[113] ;
  wire \share2_reg_reg[113]_0 ;
  wire \share2_reg_reg[114] ;
  wire \share2_reg_reg[115] ;
  wire \share2_reg_reg[115]_0 ;
  wire \share2_reg_reg[116] ;
  wire \share2_reg_reg[116]_0 ;
  wire \share2_reg_reg[117] ;
  wire \share2_reg_reg[118] ;
  wire \share2_reg_reg[119] ;
  wire \share2_reg_reg[16] ;
  wire \share2_reg_reg[17] ;
  wire \share2_reg_reg[18] ;
  wire \share2_reg_reg[19] ;
  wire \share2_reg_reg[20] ;
  wire \share2_reg_reg[21] ;
  wire \share2_reg_reg[22] ;
  wire \share2_reg_reg[23] ;

  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[22]_i_1 
       (.I0(Q[6]),
        .I1(\ciphertext_reg[23] [6]),
        .O(\share2_reg_reg[22] ));
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[23]_i_1 
       (.I0(Q[7]),
        .I1(\ciphertext_reg[23] [7]),
        .O(\share2_reg_reg[23] ));
  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g0_b0__12_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__12_i_1
       (.I0(Q[0]),
        .I1(\ciphertext_reg[23] [0]),
        .O(\share2_reg_reg[16] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__12_i_2
       (.I0(Q[1]),
        .I1(\ciphertext_reg[23] [1]),
        .O(\share2_reg_reg[17] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__12_i_3
       (.I0(Q[2]),
        .I1(\ciphertext_reg[23] [2]),
        .O(\share2_reg_reg[18] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__12_i_4
       (.I0(Q[3]),
        .I1(\ciphertext_reg[23] [3]),
        .O(\share2_reg_reg[19] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__12_i_5
       (.I0(Q[4]),
        .I1(\ciphertext_reg[23] [4]),
        .O(\share2_reg_reg[20] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__12_i_6
       (.I0(Q[5]),
        .I1(\ciphertext_reg[23] [5]),
        .O(\share2_reg_reg[21] ));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g0_b1__12_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g0_b2__12_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g0_b3__12_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g0_b4__12_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g0_b5__12_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g0_b6__12_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g0_b7__12_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g1_b0__12_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g1_b1__12_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g1_b2__12_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g1_b3__12_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g1_b4__12_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g1_b5__12_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g1_b6__12_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g1_b7__12_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g2_b0__12_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g2_b1__12_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g2_b2__12_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g2_b3__12_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g2_b4__12_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g2_b5__12_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g2_b6__12_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g2_b7__12_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g3_b0__12_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g3_b1__12_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g3_b2__12_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g3_b3__12_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g3_b4__12_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g3_b5__12_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g3_b6__12_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__12
       (.I0(\share2_reg_reg[16] ),
        .I1(\share2_reg_reg[17] ),
        .I2(\share2_reg_reg[18] ),
        .I3(\share2_reg_reg[19] ),
        .I4(\share2_reg_reg[20] ),
        .I5(\share2_reg_reg[21] ),
        .O(g3_b7__12_n_0));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[48]_i_1 
       (.I0(key_IBUF[0]),
        .I1(plaintext_IBUF[0]),
        .I2(mask_in_IBUF[0]),
        .I3(\share1_reg_reg[48]_0 [0]),
        .I4(round_ark_share1[48]),
        .I5(\share1_reg_reg[48]_0 [1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[48]_i_2 
       (.I0(\share2_reg_reg[112] ),
        .I1(\share1_reg_reg[48] ),
        .I2(\share1_reg_reg[55] [8]),
        .I3(\share1_reg_reg[48]_1 ),
        .I4(\share2_reg_reg[119] ),
        .I5(\share1_reg_reg[55]_0 [0]),
        .O(round_ark_share1[48]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[48]_i_3 
       (.I0(Q[8]),
        .I1(\share1_reg[48]_i_6_n_0 ),
        .I2(\share2_reg_reg[23] ),
        .I3(g2_b0__12_n_0),
        .I4(\share2_reg_reg[22] ),
        .I5(g3_b0__12_n_0),
        .O(\share2_reg_reg[112] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[48]_i_6 
       (.I0(g1_b0__12_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[23] [6]),
        .I3(g0_b0__12_n_0),
        .O(\share1_reg[48]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[49]_i_3 
       (.I0(\share2_reg_reg[113] ),
        .I1(\share1_reg_reg[48] ),
        .I2(\share1_reg[49]_i_2 ),
        .I3(\share1_reg[49]_i_2_0 ),
        .I4(\share2_reg_reg[119] ),
        .I5(\share2_reg_reg[112] ),
        .O(post_linear_share1[0]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[50]_i_1 
       (.I0(key_IBUF[1]),
        .I1(plaintext_IBUF[1]),
        .I2(mask_in_IBUF[1]),
        .I3(\share1_reg_reg[48]_0 [0]),
        .I4(round_ark_share1[50]),
        .I5(\share1_reg_reg[48]_0 [1]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[50]_i_2 
       (.I0(\share2_reg_reg[114] ),
        .I1(\share1_reg_reg[48] ),
        .I2(\share1_reg_reg[55] [9]),
        .I3(\share1_reg_reg[50] ),
        .I4(\share2_reg_reg[113] ),
        .I5(\share1_reg_reg[55]_0 [1]),
        .O(round_ark_share1[50]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[50]_i_3 
       (.I0(Q[10]),
        .I1(\share1_reg[50]_i_7_n_0 ),
        .I2(\share2_reg_reg[23] ),
        .I3(g2_b2__12_n_0),
        .I4(\share2_reg_reg[22] ),
        .I5(g3_b2__12_n_0),
        .O(\share2_reg_reg[114] ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[50]_i_6 
       (.I0(Q[9]),
        .I1(\share1_reg[50]_i_9_n_0 ),
        .I2(\share2_reg_reg[23] ),
        .I3(g2_b1__12_n_0),
        .I4(\share2_reg_reg[22] ),
        .I5(g3_b1__12_n_0),
        .O(\share2_reg_reg[113] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[50]_i_7 
       (.I0(g1_b2__12_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[23] [6]),
        .I3(g0_b2__12_n_0),
        .O(\share1_reg[50]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[50]_i_9 
       (.I0(g1_b1__12_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[23] [6]),
        .I3(g0_b1__12_n_0),
        .O(\share1_reg[50]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[51]_i_3 
       (.I0(\share2_reg_reg[115] ),
        .I1(\share1_reg_reg[48] ),
        .I2(\share1_reg[51]_i_2 ),
        .I3(\share1_reg[51]_i_2_0 ),
        .I4(\share2_reg_reg[119] ),
        .I5(\share2_reg_reg[114] ),
        .O(post_linear_share1[1]));
  LUT6 #(
    .INIT(64'h8BB8B88BB88B8BB8)) 
    \share1_reg[52]_i_3 
       (.I0(\share2_reg_reg[116] ),
        .I1(\share1_reg_reg[48] ),
        .I2(\share1_reg[52]_i_2 ),
        .I3(\share1_reg[52]_i_2_0 ),
        .I4(\share2_reg_reg[119] ),
        .I5(\share2_reg_reg[115] ),
        .O(post_linear_share1[2]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[53]_i_1 
       (.I0(key_IBUF[2]),
        .I1(plaintext_IBUF[2]),
        .I2(mask_in_IBUF[2]),
        .I3(\share1_reg_reg[48]_0 [0]),
        .I4(round_ark_share1[53]),
        .I5(\share1_reg_reg[48]_0 [1]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[53]_i_2 
       (.I0(\share2_reg_reg[117] ),
        .I1(\share1_reg_reg[48] ),
        .I2(\share1_reg_reg[55] [10]),
        .I3(\share1_reg_reg[53] ),
        .I4(\share2_reg_reg[116] ),
        .I5(\share1_reg_reg[55]_0 [2]),
        .O(round_ark_share1[53]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[53]_i_5 
       (.I0(Q[12]),
        .I1(\share1_reg[53]_i_7_n_0 ),
        .I2(\share2_reg_reg[23] ),
        .I3(g2_b4__12_n_0),
        .I4(\share2_reg_reg[22] ),
        .I5(g3_b4__12_n_0),
        .O(\share2_reg_reg[116] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[53]_i_7 
       (.I0(g1_b4__12_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[23] [6]),
        .I3(g0_b4__12_n_0),
        .O(\share1_reg[53]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[54]_i_1 
       (.I0(key_IBUF[3]),
        .I1(plaintext_IBUF[3]),
        .I2(mask_in_IBUF[3]),
        .I3(\share1_reg_reg[48]_0 [0]),
        .I4(round_ark_share1[54]),
        .I5(\share1_reg_reg[54]_0 ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[54]_i_2 
       (.I0(\share2_reg_reg[118] ),
        .I1(\share1_reg_reg[48] ),
        .I2(\share1_reg_reg[54] ),
        .I3(\share1_reg_reg[54]_1 ),
        .I4(\share2_reg_reg[117] ),
        .I5(\share1_reg_reg[55]_0 [3]),
        .O(round_ark_share1[54]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[54]_i_5 
       (.I0(Q[13]),
        .I1(\share1_reg[54]_i_7_n_0 ),
        .I2(\share2_reg_reg[23] ),
        .I3(g2_b5__12_n_0),
        .I4(\share2_reg_reg[22] ),
        .I5(g3_b5__12_n_0),
        .O(\share2_reg_reg[117] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[54]_i_7 
       (.I0(g1_b5__12_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[23] [6]),
        .I3(g0_b5__12_n_0),
        .O(\share1_reg[54]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[55]_i_1 
       (.I0(key_IBUF[4]),
        .I1(plaintext_IBUF[4]),
        .I2(mask_in_IBUF[4]),
        .I3(\share1_reg_reg[48]_0 [0]),
        .I4(round_ark_share1[55]),
        .I5(\share1_reg_reg[48]_0 [1]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[55]_i_2 
       (.I0(\share2_reg_reg[119] ),
        .I1(\share1_reg_reg[48] ),
        .I2(\share1_reg_reg[55] [11]),
        .I3(\share1_reg_reg[55]_1 ),
        .I4(\share2_reg_reg[118] ),
        .I5(\share1_reg_reg[55]_0 [4]),
        .O(round_ark_share1[55]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[55]_i_3 
       (.I0(Q[15]),
        .I1(\share1_reg[55]_i_7_n_0 ),
        .I2(\share2_reg_reg[23] ),
        .I3(g2_b7__12_n_0),
        .I4(\share2_reg_reg[22] ),
        .I5(g3_b7__12_n_0),
        .O(\share2_reg_reg[119] ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[55]_i_6 
       (.I0(Q[14]),
        .I1(\share1_reg[55]_i_9_n_0 ),
        .I2(\share2_reg_reg[23] ),
        .I3(g2_b6__12_n_0),
        .I4(\share2_reg_reg[22] ),
        .I5(g3_b6__12_n_0),
        .O(\share2_reg_reg[118] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[55]_i_7 
       (.I0(g1_b7__12_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[23] [6]),
        .I3(g0_b7__12_n_0),
        .O(\share1_reg[55]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[55]_i_9 
       (.I0(g1_b6__12_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[23] [6]),
        .I3(g0_b6__12_n_0),
        .O(\share1_reg[55]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[56]_i_4 
       (.I0(\share1_reg_reg[55] [4]),
        .I1(\share2_reg_reg[119] ),
        .I2(\share1_reg_reg[55] [3]),
        .I3(\share1_reg_reg[55] [8]),
        .I4(\share2_reg_reg[112] ),
        .O(mix_cols_share1[0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share1_reg[57]_i_5 
       (.I0(\share2_reg_reg[113] ),
        .I1(\share1_reg[49]_i_2 ),
        .I2(\share1_reg_reg[55] [3]),
        .I3(\share1_reg_reg[55] [0]),
        .I4(\share2_reg_reg[119] ),
        .I5(\share2_reg_reg[112] ),
        .O(\share2_reg_reg[113]_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[58]_i_4 
       (.I0(\share1_reg_reg[55] [5]),
        .I1(\share2_reg_reg[113] ),
        .I2(\share1_reg[58]_i_2 ),
        .I3(\share1_reg_reg[55] [9]),
        .I4(\share2_reg_reg[114] ),
        .O(mix_cols_share1[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share1_reg[59]_i_5 
       (.I0(\share2_reg_reg[115] ),
        .I1(\share1_reg[51]_i_2 ),
        .I2(\share1_reg_reg[55] [3]),
        .I3(\share1_reg_reg[55] [1]),
        .I4(\share2_reg_reg[119] ),
        .I5(\share2_reg_reg[114] ),
        .O(\share2_reg_reg[115]_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[60]_i_11 
       (.I0(g1_b3__12_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[23] [6]),
        .I3(g0_b3__12_n_0),
        .O(\share1_reg[60]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share1_reg[60]_i_5 
       (.I0(\share2_reg_reg[116] ),
        .I1(\share1_reg[52]_i_2 ),
        .I2(\share1_reg_reg[55] [3]),
        .I3(\share1_reg[60]_i_2 ),
        .I4(\share2_reg_reg[119] ),
        .I5(\share2_reg_reg[115] ),
        .O(\share2_reg_reg[116]_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[60]_i_9 
       (.I0(Q[11]),
        .I1(\share1_reg[60]_i_11_n_0 ),
        .I2(\share2_reg_reg[23] ),
        .I3(g2_b3__12_n_0),
        .I4(\share2_reg_reg[22] ),
        .I5(g3_b3__12_n_0),
        .O(\share2_reg_reg[115] ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[61]_i_4 
       (.I0(\share1_reg_reg[55] [6]),
        .I1(\share2_reg_reg[116] ),
        .I2(\share1_reg[61]_i_2 ),
        .I3(\share1_reg_reg[55] [10]),
        .I4(\share2_reg_reg[117] ),
        .O(mix_cols_share1[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[62]_i_4 
       (.I0(\share1_reg[62]_i_2 ),
        .I1(\share2_reg_reg[117] ),
        .I2(\share1_reg_reg[55] [2]),
        .I3(\share1_reg_reg[54] ),
        .I4(\share2_reg_reg[118] ),
        .O(mix_cols_share1[3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[63]_i_4 
       (.I0(\share1_reg_reg[55] [7]),
        .I1(\share2_reg_reg[118] ),
        .I2(\share1_reg[63]_i_2 ),
        .I3(\share1_reg_reg[55] [11]),
        .I4(\share2_reg_reg[119] ),
        .O(mix_cols_share1[4]));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_26
   (mix_cols_share1,
    \share2_reg_reg[127] ,
    \share2_reg_reg[125] ,
    \share2_reg_reg[121] ,
    \share2_reg_reg[124] ,
    \share2_reg_reg[126] ,
    \share2_reg_reg[31] ,
    \share2_reg_reg[30] ,
    \share2_reg_reg[29] ,
    \share2_reg_reg[28] ,
    \share2_reg_reg[27] ,
    \share2_reg_reg[26] ,
    \share2_reg_reg[25] ,
    \share2_reg_reg[24] ,
    D,
    \share2_reg_reg[123] ,
    sub_bytes_share1,
    \share1_reg_reg[25] ,
    \share1_reg_reg[28] ,
    \share1_reg[6]_i_2 ,
    \share1_reg[6]_i_2_0 ,
    \share1_reg[7]_i_2 ,
    Q,
    \ciphertext_reg[31] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[24] ,
    \share1_reg_reg[25]_0 ,
    \share1_reg_reg[26] ,
    \share1_reg_reg[25]_1 ,
    \share1_reg_reg[24]_0 ,
    \share1_reg_reg[31] ,
    \share1_reg_reg[27] ,
    \share1_reg_reg[27]_0 ,
    \share1_reg_reg[28]_0 ,
    \share1_reg_reg[24]_1 );
  output [4:0]mix_cols_share1;
  output \share2_reg_reg[127] ;
  output [2:0]\share2_reg_reg[125] ;
  output \share2_reg_reg[121] ;
  output \share2_reg_reg[124] ;
  output \share2_reg_reg[126] ;
  output \share2_reg_reg[31] ;
  output \share2_reg_reg[30] ;
  output \share2_reg_reg[29] ;
  output \share2_reg_reg[28] ;
  output \share2_reg_reg[27] ;
  output \share2_reg_reg[26] ;
  output \share2_reg_reg[25] ;
  output \share2_reg_reg[24] ;
  output [7:0]D;
  output \share2_reg_reg[123] ;
  input [9:0]sub_bytes_share1;
  input \share1_reg_reg[25] ;
  input \share1_reg_reg[28] ;
  input \share1_reg[6]_i_2 ;
  input \share1_reg[6]_i_2_0 ;
  input \share1_reg[7]_i_2 ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[31] ;
  input [7:0]key_IBUF;
  input [7:0]plaintext_IBUF;
  input [7:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[24] ;
  input \share1_reg_reg[25]_0 ;
  input \share1_reg_reg[26] ;
  input \share1_reg_reg[25]_1 ;
  input [7:0]\share1_reg_reg[24]_0 ;
  input [4:0]\share1_reg_reg[31] ;
  input \share1_reg_reg[27] ;
  input \share1_reg_reg[27]_0 ;
  input \share1_reg_reg[28]_0 ;
  input [1:0]\share1_reg_reg[24]_1 ;

  wire [7:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[31] ;
  wire g0_b0__11_n_0;
  wire g0_b1__11_n_0;
  wire g0_b2__11_n_0;
  wire g0_b3__11_n_0;
  wire g0_b4__11_n_0;
  wire g0_b5__11_n_0;
  wire g0_b6__11_n_0;
  wire g0_b7__11_n_0;
  wire g1_b0__11_n_0;
  wire g1_b1__11_n_0;
  wire g1_b2__11_n_0;
  wire g1_b3__11_n_0;
  wire g1_b4__11_n_0;
  wire g1_b5__11_n_0;
  wire g1_b6__11_n_0;
  wire g1_b7__11_n_0;
  wire g2_b0__11_n_0;
  wire g2_b1__11_n_0;
  wire g2_b2__11_n_0;
  wire g2_b3__11_n_0;
  wire g2_b4__11_n_0;
  wire g2_b5__11_n_0;
  wire g2_b6__11_n_0;
  wire g2_b7__11_n_0;
  wire g3_b0__11_n_0;
  wire g3_b1__11_n_0;
  wire g3_b2__11_n_0;
  wire g3_b3__11_n_0;
  wire g3_b4__11_n_0;
  wire g3_b5__11_n_0;
  wire g3_b6__11_n_0;
  wire g3_b7__11_n_0;
  wire [7:0]key_IBUF;
  wire [7:0]mask_in_IBUF;
  wire [4:0]mix_cols_share1;
  wire [7:0]plaintext_IBUF;
  wire [31:24]round_ark_share1;
  wire \share1_reg[24]_i_5_n_0 ;
  wire \share1_reg[25]_i_7_n_0 ;
  wire \share1_reg[26]_i_6_n_0 ;
  wire \share1_reg[27]_i_7_n_0 ;
  wire \share1_reg[28]_i_7_n_0 ;
  wire \share1_reg[29]_i_6_n_0 ;
  wire \share1_reg[30]_i_6_n_0 ;
  wire \share1_reg[31]_i_6_n_0 ;
  wire \share1_reg[6]_i_2 ;
  wire \share1_reg[6]_i_2_0 ;
  wire \share1_reg[7]_i_2 ;
  wire [1:0]\share1_reg_reg[24] ;
  wire [7:0]\share1_reg_reg[24]_0 ;
  wire [1:0]\share1_reg_reg[24]_1 ;
  wire \share1_reg_reg[25] ;
  wire \share1_reg_reg[25]_0 ;
  wire \share1_reg_reg[25]_1 ;
  wire \share1_reg_reg[26] ;
  wire \share1_reg_reg[27] ;
  wire \share1_reg_reg[27]_0 ;
  wire \share1_reg_reg[28] ;
  wire \share1_reg_reg[28]_0 ;
  wire [4:0]\share1_reg_reg[31] ;
  wire \share2_reg_reg[121] ;
  wire \share2_reg_reg[123] ;
  wire \share2_reg_reg[124] ;
  wire [2:0]\share2_reg_reg[125] ;
  wire \share2_reg_reg[126] ;
  wire \share2_reg_reg[127] ;
  wire \share2_reg_reg[24] ;
  wire \share2_reg_reg[25] ;
  wire \share2_reg_reg[26] ;
  wire \share2_reg_reg[27] ;
  wire \share2_reg_reg[28] ;
  wire \share2_reg_reg[29] ;
  wire \share2_reg_reg[30] ;
  wire \share2_reg_reg[31] ;
  wire [9:0]sub_bytes_share1;

  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[30]_i_1 
       (.I0(Q[6]),
        .I1(\ciphertext_reg[31] [6]),
        .O(\share2_reg_reg[30] ));
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[31]_i_1 
       (.I0(Q[7]),
        .I1(\ciphertext_reg[31] [7]),
        .O(\share2_reg_reg[31] ));
  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g0_b0__11_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__11_i_1
       (.I0(Q[0]),
        .I1(\ciphertext_reg[31] [0]),
        .O(\share2_reg_reg[24] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__11_i_2
       (.I0(Q[1]),
        .I1(\ciphertext_reg[31] [1]),
        .O(\share2_reg_reg[25] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__11_i_3
       (.I0(Q[2]),
        .I1(\ciphertext_reg[31] [2]),
        .O(\share2_reg_reg[26] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__11_i_4
       (.I0(Q[3]),
        .I1(\ciphertext_reg[31] [3]),
        .O(\share2_reg_reg[27] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__11_i_5
       (.I0(Q[4]),
        .I1(\ciphertext_reg[31] [4]),
        .O(\share2_reg_reg[28] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__11_i_6
       (.I0(Q[5]),
        .I1(\ciphertext_reg[31] [5]),
        .O(\share2_reg_reg[29] ));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g0_b1__11_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g0_b2__11_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g0_b3__11_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g0_b4__11_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g0_b5__11_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g0_b6__11_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g0_b7__11_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g1_b0__11_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g1_b1__11_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g1_b2__11_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g1_b3__11_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g1_b4__11_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g1_b5__11_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g1_b6__11_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g1_b7__11_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g2_b0__11_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g2_b1__11_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g2_b2__11_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g2_b3__11_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g2_b4__11_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g2_b5__11_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g2_b6__11_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g2_b7__11_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g3_b0__11_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g3_b1__11_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g3_b2__11_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g3_b3__11_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g3_b4__11_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g3_b5__11_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g3_b6__11_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__11
       (.I0(\share2_reg_reg[24] ),
        .I1(\share2_reg_reg[25] ),
        .I2(\share2_reg_reg[26] ),
        .I3(\share2_reg_reg[27] ),
        .I4(\share2_reg_reg[28] ),
        .I5(\share2_reg_reg[29] ),
        .O(g3_b7__11_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[0]_i_4 
       (.I0(\share2_reg_reg[127] ),
        .I1(sub_bytes_share1[1]),
        .I2(sub_bytes_share1[6]),
        .I3(\share2_reg_reg[125] [0]),
        .I4(sub_bytes_share1[2]),
        .O(mix_cols_share1[0]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[24]_i_1 
       (.I0(key_IBUF[0]),
        .I1(plaintext_IBUF[0]),
        .I2(mask_in_IBUF[0]),
        .I3(\share1_reg_reg[24] [0]),
        .I4(round_ark_share1[24]),
        .I5(\share1_reg_reg[24] [1]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h6996696969969696)) 
    \share1_reg[24]_i_2 
       (.I0(\share1_reg_reg[24]_1 [1]),
        .I1(\share1_reg_reg[24]_0 [7]),
        .I2(\share1_reg_reg[24]_1 [0]),
        .I3(\share2_reg_reg[125] [0]),
        .I4(\share1_reg_reg[26] ),
        .I5(\share1_reg_reg[31] [0]),
        .O(round_ark_share1[24]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[24]_i_3 
       (.I0(Q[8]),
        .I1(\share1_reg[24]_i_5_n_0 ),
        .I2(\share2_reg_reg[31] ),
        .I3(g2_b0__11_n_0),
        .I4(\share2_reg_reg[30] ),
        .I5(g3_b0__11_n_0),
        .O(\share2_reg_reg[125] [0]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[24]_i_5 
       (.I0(g1_b0__11_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[31] [6]),
        .I3(g0_b0__11_n_0),
        .O(\share1_reg[24]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[25]_i_1 
       (.I0(key_IBUF[1]),
        .I1(plaintext_IBUF[1]),
        .I2(mask_in_IBUF[1]),
        .I3(\share1_reg_reg[24] [0]),
        .I4(round_ark_share1[25]),
        .I5(\share1_reg_reg[25]_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h74478BB8)) 
    \share1_reg[25]_i_2 
       (.I0(\share2_reg_reg[121] ),
        .I1(\share1_reg_reg[26] ),
        .I2(\share1_reg_reg[25] ),
        .I3(\share1_reg_reg[25]_1 ),
        .I4(\share1_reg_reg[24]_0 [0]),
        .O(round_ark_share1[25]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[25]_i_3 
       (.I0(Q[9]),
        .I1(\share1_reg[25]_i_7_n_0 ),
        .I2(\share2_reg_reg[31] ),
        .I3(g2_b1__11_n_0),
        .I4(\share2_reg_reg[30] ),
        .I5(g3_b1__11_n_0),
        .O(\share2_reg_reg[121] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[25]_i_7 
       (.I0(g1_b1__11_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[31] [6]),
        .I3(g0_b1__11_n_0),
        .O(\share1_reg[25]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[26]_i_1 
       (.I0(key_IBUF[2]),
        .I1(plaintext_IBUF[2]),
        .I2(mask_in_IBUF[2]),
        .I3(\share1_reg_reg[24] [0]),
        .I4(round_ark_share1[26]),
        .I5(\share1_reg_reg[24] [1]),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[26]_i_2 
       (.I0(\share2_reg_reg[125] [1]),
        .I1(\share1_reg_reg[26] ),
        .I2(\share1_reg_reg[31] [1]),
        .I3(\share1_reg_reg[24]_0 [1]),
        .O(round_ark_share1[26]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[26]_i_3 
       (.I0(Q[10]),
        .I1(\share1_reg[26]_i_6_n_0 ),
        .I2(\share2_reg_reg[31] ),
        .I3(g2_b2__11_n_0),
        .I4(\share2_reg_reg[30] ),
        .I5(g3_b2__11_n_0),
        .O(\share2_reg_reg[125] [1]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[26]_i_6 
       (.I0(g1_b2__11_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[31] [6]),
        .I3(g0_b2__11_n_0),
        .O(\share1_reg[26]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[27]_i_1 
       (.I0(key_IBUF[3]),
        .I1(plaintext_IBUF[3]),
        .I2(mask_in_IBUF[3]),
        .I3(\share1_reg_reg[24] [0]),
        .I4(round_ark_share1[27]),
        .I5(\share1_reg_reg[25]_0 ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h74478BB8)) 
    \share1_reg[27]_i_2 
       (.I0(\share2_reg_reg[123] ),
        .I1(\share1_reg_reg[26] ),
        .I2(\share1_reg_reg[27] ),
        .I3(\share1_reg_reg[27]_0 ),
        .I4(\share1_reg_reg[24]_0 [2]),
        .O(round_ark_share1[27]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[27]_i_3 
       (.I0(Q[11]),
        .I1(\share1_reg[27]_i_7_n_0 ),
        .I2(\share2_reg_reg[31] ),
        .I3(g2_b3__11_n_0),
        .I4(\share2_reg_reg[30] ),
        .I5(g3_b3__11_n_0),
        .O(\share2_reg_reg[123] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[27]_i_7 
       (.I0(g1_b3__11_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[31] [6]),
        .I3(g0_b3__11_n_0),
        .O(\share1_reg[27]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[28]_i_1 
       (.I0(key_IBUF[4]),
        .I1(plaintext_IBUF[4]),
        .I2(mask_in_IBUF[4]),
        .I3(\share1_reg_reg[24] [0]),
        .I4(round_ark_share1[28]),
        .I5(\share1_reg_reg[25]_0 ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h74478BB8)) 
    \share1_reg[28]_i_2 
       (.I0(\share2_reg_reg[124] ),
        .I1(\share1_reg_reg[26] ),
        .I2(\share1_reg_reg[28] ),
        .I3(\share1_reg_reg[28]_0 ),
        .I4(\share1_reg_reg[24]_0 [3]),
        .O(round_ark_share1[28]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[28]_i_3 
       (.I0(Q[12]),
        .I1(\share1_reg[28]_i_7_n_0 ),
        .I2(\share2_reg_reg[31] ),
        .I3(g2_b4__11_n_0),
        .I4(\share2_reg_reg[30] ),
        .I5(g3_b4__11_n_0),
        .O(\share2_reg_reg[124] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[28]_i_7 
       (.I0(g1_b4__11_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[31] [6]),
        .I3(g0_b4__11_n_0),
        .O(\share1_reg[28]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[29]_i_1 
       (.I0(key_IBUF[5]),
        .I1(plaintext_IBUF[5]),
        .I2(mask_in_IBUF[5]),
        .I3(\share1_reg_reg[24] [0]),
        .I4(round_ark_share1[29]),
        .I5(\share1_reg_reg[24] [1]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[29]_i_2 
       (.I0(\share2_reg_reg[125] [2]),
        .I1(\share1_reg_reg[26] ),
        .I2(\share1_reg_reg[31] [2]),
        .I3(\share1_reg_reg[24]_0 [4]),
        .O(round_ark_share1[29]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[29]_i_3 
       (.I0(Q[13]),
        .I1(\share1_reg[29]_i_6_n_0 ),
        .I2(\share2_reg_reg[31] ),
        .I3(g2_b5__11_n_0),
        .I4(\share2_reg_reg[30] ),
        .I5(g3_b5__11_n_0),
        .O(\share2_reg_reg[125] [2]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[29]_i_6 
       (.I0(g1_b5__11_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[31] [6]),
        .I3(g0_b5__11_n_0),
        .O(\share1_reg[29]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[2]_i_4 
       (.I0(\share2_reg_reg[121] ),
        .I1(\share1_reg_reg[25] ),
        .I2(sub_bytes_share1[7]),
        .I3(\share2_reg_reg[125] [1]),
        .I4(sub_bytes_share1[3]),
        .O(mix_cols_share1[1]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[30]_i_1 
       (.I0(key_IBUF[6]),
        .I1(plaintext_IBUF[6]),
        .I2(mask_in_IBUF[6]),
        .I3(\share1_reg_reg[24] [0]),
        .I4(round_ark_share1[30]),
        .I5(\share1_reg_reg[25]_0 ),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[30]_i_2 
       (.I0(\share2_reg_reg[126] ),
        .I1(\share1_reg_reg[26] ),
        .I2(\share1_reg_reg[31] [3]),
        .I3(\share1_reg_reg[24]_0 [5]),
        .O(round_ark_share1[30]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[30]_i_3 
       (.I0(Q[14]),
        .I1(\share1_reg[30]_i_6_n_0 ),
        .I2(\share2_reg_reg[31] ),
        .I3(g2_b6__11_n_0),
        .I4(\share2_reg_reg[30] ),
        .I5(g3_b6__11_n_0),
        .O(\share2_reg_reg[126] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[30]_i_6 
       (.I0(g1_b6__11_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[31] [6]),
        .I3(g0_b6__11_n_0),
        .O(\share1_reg[30]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[31]_i_1 
       (.I0(key_IBUF[7]),
        .I1(plaintext_IBUF[7]),
        .I2(mask_in_IBUF[7]),
        .I3(\share1_reg_reg[24] [0]),
        .I4(round_ark_share1[31]),
        .I5(\share1_reg_reg[24] [1]),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[31]_i_2 
       (.I0(\share2_reg_reg[127] ),
        .I1(\share1_reg_reg[26] ),
        .I2(\share1_reg_reg[31] [4]),
        .I3(\share1_reg_reg[24]_0 [6]),
        .O(round_ark_share1[31]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[31]_i_3 
       (.I0(Q[15]),
        .I1(\share1_reg[31]_i_6_n_0 ),
        .I2(\share2_reg_reg[31] ),
        .I3(g2_b7__11_n_0),
        .I4(\share2_reg_reg[30] ),
        .I5(g3_b7__11_n_0),
        .O(\share2_reg_reg[127] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[31]_i_6 
       (.I0(g1_b7__11_n_0),
        .I1(Q[6]),
        .I2(\ciphertext_reg[31] [6]),
        .I3(g0_b7__11_n_0),
        .O(\share1_reg[31]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[5]_i_3 
       (.I0(\share2_reg_reg[124] ),
        .I1(\share1_reg_reg[28] ),
        .I2(sub_bytes_share1[8]),
        .I3(\share2_reg_reg[125] [2]),
        .I4(sub_bytes_share1[4]),
        .O(mix_cols_share1[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[6]_i_3 
       (.I0(\share2_reg_reg[125] [2]),
        .I1(sub_bytes_share1[0]),
        .I2(\share1_reg[6]_i_2 ),
        .I3(\share2_reg_reg[126] ),
        .I4(\share1_reg[6]_i_2_0 ),
        .O(mix_cols_share1[3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[7]_i_3 
       (.I0(\share2_reg_reg[126] ),
        .I1(\share1_reg[7]_i_2 ),
        .I2(sub_bytes_share1[9]),
        .I3(\share2_reg_reg[127] ),
        .I4(sub_bytes_share1[5]),
        .O(mix_cols_share1[4]));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_27
   (\share2_reg_reg[7] ,
    \share2_reg_reg[0] ,
    \share2_reg_reg[2] ,
    \share2_reg_reg[3] ,
    \share2_reg_reg[2]_0 ,
    \share2_reg_reg[5] ,
    \share2_reg_reg[5]_0 ,
    \share2_reg_reg[6] ,
    \share2_reg_reg[6]_0 ,
    \share2_reg_reg[7]_0 ,
    \share2_reg_reg[0]_0 ,
    \share2_reg_reg[39] ,
    \share2_reg_reg[38] ,
    \share2_reg_reg[37] ,
    \share2_reg_reg[36] ,
    \share2_reg_reg[35] ,
    \share2_reg_reg[34] ,
    \share2_reg_reg[33] ,
    \share2_reg_reg[32] ,
    D,
    \share2_reg_reg[1] ,
    \share2_reg_reg[4] ,
    \share1_reg[1]_i_2_0 ,
    \share1_reg[1]_i_2_1 ,
    \share1_reg[1]_i_2_2 ,
    \share1_reg[3]_i_2_0 ,
    \share1_reg_reg[4] ,
    \share1_reg[3]_i_2_1 ,
    \share1_reg[4]_i_2_0 ,
    \share1_reg[4]_i_2_1 ,
    \share1_reg[4]_i_2_2 ,
    \share1_reg_reg[15] ,
    \share1_reg[22]_i_2 ,
    \share1_reg_reg[14] ,
    Q,
    \ciphertext_reg[39] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[5] ,
    \share1_reg_reg[7] ,
    \share1_reg_reg[14]_0 ,
    \share1_reg_reg[8] ,
    mix_cols_share1,
    \share1_reg_reg[15]_0 ,
    \share1_reg_reg[14]_1 );
  output \share2_reg_reg[7] ;
  output \share2_reg_reg[0] ;
  output \share2_reg_reg[2] ;
  output \share2_reg_reg[3] ;
  output \share2_reg_reg[2]_0 ;
  output \share2_reg_reg[5] ;
  output \share2_reg_reg[5]_0 ;
  output \share2_reg_reg[6] ;
  output \share2_reg_reg[6]_0 ;
  output \share2_reg_reg[7]_0 ;
  output \share2_reg_reg[0]_0 ;
  output \share2_reg_reg[39] ;
  output \share2_reg_reg[38] ;
  output \share2_reg_reg[37] ;
  output \share2_reg_reg[36] ;
  output \share2_reg_reg[35] ;
  output \share2_reg_reg[34] ;
  output \share2_reg_reg[33] ;
  output \share2_reg_reg[32] ;
  output [12:0]D;
  output \share2_reg_reg[1] ;
  output \share2_reg_reg[4] ;
  input \share1_reg[1]_i_2_0 ;
  input \share1_reg[1]_i_2_1 ;
  input \share1_reg[1]_i_2_2 ;
  input \share1_reg[3]_i_2_0 ;
  input \share1_reg_reg[4] ;
  input \share1_reg[3]_i_2_1 ;
  input \share1_reg[4]_i_2_0 ;
  input \share1_reg[4]_i_2_1 ;
  input \share1_reg[4]_i_2_2 ;
  input [11:0]\share1_reg_reg[15] ;
  input \share1_reg[22]_i_2 ;
  input \share1_reg_reg[14] ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[39] ;
  input [12:0]key_IBUF;
  input [12:0]plaintext_IBUF;
  input [12:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[5] ;
  input \share1_reg_reg[7] ;
  input \share1_reg_reg[14]_0 ;
  input \share1_reg_reg[8] ;
  input [4:0]mix_cols_share1;
  input [12:0]\share1_reg_reg[15]_0 ;
  input \share1_reg_reg[14]_1 ;

  wire [12:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[39] ;
  wire g0_b0__10_n_0;
  wire g0_b1__10_n_0;
  wire g0_b2__10_n_0;
  wire g0_b3__10_n_0;
  wire g0_b4__10_n_0;
  wire g0_b5__10_n_0;
  wire g0_b6__10_n_0;
  wire g0_b7__10_n_0;
  wire g1_b0__10_n_0;
  wire g1_b1__10_n_0;
  wire g1_b2__10_n_0;
  wire g1_b3__10_n_0;
  wire g1_b4__10_n_0;
  wire g1_b5__10_n_0;
  wire g1_b6__10_n_0;
  wire g1_b7__10_n_0;
  wire g2_b0__10_n_0;
  wire g2_b1__10_n_0;
  wire g2_b2__10_n_0;
  wire g2_b3__10_n_0;
  wire g2_b4__10_n_0;
  wire g2_b5__10_n_0;
  wire g2_b6__10_n_0;
  wire g2_b7__10_n_0;
  wire g3_b0__10_n_0;
  wire g3_b1__10_n_0;
  wire g3_b2__10_n_0;
  wire g3_b3__10_n_0;
  wire g3_b4__10_n_0;
  wire g3_b5__10_n_0;
  wire g3_b6__10_n_0;
  wire g3_b7__10_n_0;
  wire [12:0]key_IBUF;
  wire [12:0]mask_in_IBUF;
  wire [4:0]mix_cols_share1;
  wire [12:0]plaintext_IBUF;
  wire [15:0]round_ark_share1;
  wire \share1_reg[0]_i_6_n_0 ;
  wire \share1_reg[14]_i_5_n_0 ;
  wire \share1_reg[15]_i_5_n_0 ;
  wire \share1_reg[1]_i_2_0 ;
  wire \share1_reg[1]_i_2_1 ;
  wire \share1_reg[1]_i_2_2 ;
  wire \share1_reg[1]_i_3_n_0 ;
  wire \share1_reg[22]_i_2 ;
  wire \share1_reg[25]_i_8_n_0 ;
  wire \share1_reg[27]_i_8_n_0 ;
  wire \share1_reg[28]_i_8_n_0 ;
  wire \share1_reg[2]_i_6_n_0 ;
  wire \share1_reg[3]_i_2_0 ;
  wire \share1_reg[3]_i_2_1 ;
  wire \share1_reg[3]_i_3_n_0 ;
  wire \share1_reg[4]_i_2_0 ;
  wire \share1_reg[4]_i_2_1 ;
  wire \share1_reg[4]_i_2_2 ;
  wire \share1_reg[4]_i_3_n_0 ;
  wire \share1_reg[8]_i_5_n_0 ;
  wire \share1_reg_reg[14] ;
  wire \share1_reg_reg[14]_0 ;
  wire \share1_reg_reg[14]_1 ;
  wire [11:0]\share1_reg_reg[15] ;
  wire [12:0]\share1_reg_reg[15]_0 ;
  wire \share1_reg_reg[4] ;
  wire [1:0]\share1_reg_reg[5] ;
  wire \share1_reg_reg[7] ;
  wire \share1_reg_reg[8] ;
  wire \share2_reg_reg[0] ;
  wire \share2_reg_reg[0]_0 ;
  wire \share2_reg_reg[1] ;
  wire \share2_reg_reg[2] ;
  wire \share2_reg_reg[2]_0 ;
  wire \share2_reg_reg[32] ;
  wire \share2_reg_reg[33] ;
  wire \share2_reg_reg[34] ;
  wire \share2_reg_reg[35] ;
  wire \share2_reg_reg[36] ;
  wire \share2_reg_reg[37] ;
  wire \share2_reg_reg[38] ;
  wire \share2_reg_reg[39] ;
  wire \share2_reg_reg[3] ;
  wire \share2_reg_reg[4] ;
  wire \share2_reg_reg[5] ;
  wire \share2_reg_reg[5]_0 ;
  wire \share2_reg_reg[6] ;
  wire \share2_reg_reg[6]_0 ;
  wire \share2_reg_reg[7] ;
  wire \share2_reg_reg[7]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[38]_i_1 
       (.I0(Q[14]),
        .I1(\ciphertext_reg[39] [6]),
        .O(\share2_reg_reg[38] ));
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[39]_i_1 
       (.I0(Q[15]),
        .I1(\ciphertext_reg[39] [7]),
        .O(\share2_reg_reg[39] ));
  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g0_b0__10_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__10_i_1
       (.I0(Q[8]),
        .I1(\ciphertext_reg[39] [0]),
        .O(\share2_reg_reg[32] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__10_i_2
       (.I0(Q[9]),
        .I1(\ciphertext_reg[39] [1]),
        .O(\share2_reg_reg[33] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__10_i_3
       (.I0(Q[10]),
        .I1(\ciphertext_reg[39] [2]),
        .O(\share2_reg_reg[34] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__10_i_4
       (.I0(Q[11]),
        .I1(\ciphertext_reg[39] [3]),
        .O(\share2_reg_reg[35] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__10_i_5
       (.I0(Q[12]),
        .I1(\ciphertext_reg[39] [4]),
        .O(\share2_reg_reg[36] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__10_i_6
       (.I0(Q[13]),
        .I1(\ciphertext_reg[39] [5]),
        .O(\share2_reg_reg[37] ));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g0_b1__10_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g0_b2__10_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g0_b3__10_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g0_b4__10_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g0_b5__10_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g0_b6__10_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g0_b7__10_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g1_b0__10_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g1_b1__10_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g1_b2__10_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g1_b3__10_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g1_b4__10_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g1_b5__10_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g1_b6__10_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g1_b7__10_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g2_b0__10_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g2_b1__10_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g2_b2__10_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g2_b3__10_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g2_b4__10_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g2_b5__10_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g2_b6__10_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g2_b7__10_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g3_b0__10_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g3_b1__10_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g3_b2__10_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g3_b3__10_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g3_b4__10_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g3_b5__10_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g3_b6__10_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__10
       (.I0(\share2_reg_reg[32] ),
        .I1(\share2_reg_reg[33] ),
        .I2(\share2_reg_reg[34] ),
        .I3(\share2_reg_reg[35] ),
        .I4(\share2_reg_reg[36] ),
        .I5(\share2_reg_reg[37] ),
        .O(g3_b7__10_n_0));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[0]_i_1 
       (.I0(key_IBUF[0]),
        .I1(plaintext_IBUF[0]),
        .I2(mask_in_IBUF[0]),
        .I3(\share1_reg_reg[5] [0]),
        .I4(round_ark_share1[0]),
        .I5(\share1_reg_reg[7] ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[0]_i_2 
       (.I0(\share2_reg_reg[0] ),
        .I1(\share1_reg_reg[8] ),
        .I2(mix_cols_share1[0]),
        .I3(\share1_reg_reg[15]_0 [0]),
        .O(round_ark_share1[0]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[0]_i_3 
       (.I0(Q[0]),
        .I1(\share1_reg[0]_i_6_n_0 ),
        .I2(\share2_reg_reg[39] ),
        .I3(g2_b0__10_n_0),
        .I4(\share2_reg_reg[38] ),
        .I5(g3_b0__10_n_0),
        .O(\share2_reg_reg[0] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[0]_i_6 
       (.I0(g1_b0__10_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[39] [6]),
        .I3(g0_b0__10_n_0),
        .O(\share1_reg[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[10]_i_1 
       (.I0(key_IBUF[9]),
        .I1(plaintext_IBUF[9]),
        .I2(mask_in_IBUF[9]),
        .I3(\share1_reg_reg[5] [0]),
        .I4(round_ark_share1[10]),
        .I5(\share1_reg_reg[5] [1]),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[10]_i_2 
       (.I0(\share1_reg_reg[15] [5]),
        .I1(\share1_reg_reg[8] ),
        .I2(\share2_reg_reg[1] ),
        .I3(\share2_reg_reg[2]_0 ),
        .I4(\share1_reg_reg[15] [9]),
        .I5(\share1_reg_reg[15]_0 [9]),
        .O(round_ark_share1[10]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[13]_i_1 
       (.I0(key_IBUF[10]),
        .I1(plaintext_IBUF[10]),
        .I2(mask_in_IBUF[10]),
        .I3(\share1_reg_reg[5] [0]),
        .I4(round_ark_share1[13]),
        .I5(\share1_reg_reg[5] [1]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[13]_i_2 
       (.I0(\share1_reg_reg[15] [6]),
        .I1(\share1_reg_reg[8] ),
        .I2(\share2_reg_reg[4] ),
        .I3(\share2_reg_reg[5] ),
        .I4(\share1_reg_reg[15] [10]),
        .I5(\share1_reg_reg[15]_0 [10]),
        .O(round_ark_share1[13]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[14]_i_1 
       (.I0(key_IBUF[11]),
        .I1(plaintext_IBUF[11]),
        .I2(mask_in_IBUF[11]),
        .I3(\share1_reg_reg[5] [0]),
        .I4(round_ark_share1[14]),
        .I5(\share1_reg_reg[14]_0 ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[14]_i_2 
       (.I0(\share1_reg_reg[14] ),
        .I1(\share1_reg_reg[8] ),
        .I2(\share2_reg_reg[5]_0 ),
        .I3(\share2_reg_reg[6] ),
        .I4(\share1_reg_reg[14]_1 ),
        .I5(\share1_reg_reg[15]_0 [11]),
        .O(round_ark_share1[14]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[14]_i_3 
       (.I0(Q[5]),
        .I1(\share1_reg[14]_i_5_n_0 ),
        .I2(\share2_reg_reg[39] ),
        .I3(g2_b5__10_n_0),
        .I4(\share2_reg_reg[38] ),
        .I5(g3_b5__10_n_0),
        .O(\share2_reg_reg[5]_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[14]_i_5 
       (.I0(g1_b5__10_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[39] [6]),
        .I3(g0_b5__10_n_0),
        .O(\share1_reg[14]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[15]_i_1 
       (.I0(key_IBUF[12]),
        .I1(plaintext_IBUF[12]),
        .I2(mask_in_IBUF[12]),
        .I3(\share1_reg_reg[5] [0]),
        .I4(round_ark_share1[15]),
        .I5(\share1_reg_reg[5] [1]),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[15]_i_2 
       (.I0(\share1_reg_reg[15] [7]),
        .I1(\share1_reg_reg[8] ),
        .I2(\share2_reg_reg[6]_0 ),
        .I3(\share2_reg_reg[7]_0 ),
        .I4(\share1_reg_reg[15] [11]),
        .I5(\share1_reg_reg[15]_0 [12]),
        .O(round_ark_share1[15]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[15]_i_3 
       (.I0(Q[6]),
        .I1(\share1_reg[15]_i_5_n_0 ),
        .I2(\share2_reg_reg[39] ),
        .I3(g2_b6__10_n_0),
        .I4(\share2_reg_reg[38] ),
        .I5(g3_b6__10_n_0),
        .O(\share2_reg_reg[6]_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[15]_i_5 
       (.I0(g1_b6__10_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[39] [6]),
        .I3(g0_b6__10_n_0),
        .O(\share1_reg[15]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[16]_i_4 
       (.I0(\share2_reg_reg[0] ),
        .I1(\share1_reg_reg[15] [7]),
        .I2(\share1_reg_reg[15] [0]),
        .O(\share2_reg_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[18]_i_5 
       (.I0(\share2_reg_reg[2] ),
        .I1(\share1_reg[1]_i_2_0 ),
        .I2(\share1_reg_reg[15] [1]),
        .O(\share2_reg_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[1]_i_1 
       (.I0(key_IBUF[1]),
        .I1(plaintext_IBUF[1]),
        .I2(mask_in_IBUF[1]),
        .I3(\share1_reg_reg[5] [0]),
        .I4(round_ark_share1[1]),
        .I5(\share1_reg_reg[7] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[1]_i_2 
       (.I0(\share2_reg_reg[1] ),
        .I1(\share1_reg_reg[8] ),
        .I2(\share1_reg_reg[15] [0]),
        .I3(\share1_reg_reg[15] [3]),
        .I4(\share1_reg[1]_i_3_n_0 ),
        .I5(\share1_reg_reg[15]_0 [1]),
        .O(round_ark_share1[1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[1]_i_3 
       (.I0(\share1_reg[1]_i_2_0 ),
        .I1(\share1_reg[1]_i_2_1 ),
        .I2(\share1_reg[1]_i_2_2 ),
        .I3(\share2_reg_reg[7] ),
        .I4(\share2_reg_reg[0] ),
        .O(\share1_reg[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[21]_i_4 
       (.I0(\share2_reg_reg[5]_0 ),
        .I1(\share1_reg[4]_i_2_0 ),
        .I2(\share1_reg_reg[15] [2]),
        .O(\share2_reg_reg[5] ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[22]_i_4 
       (.I0(\share2_reg_reg[6]_0 ),
        .I1(\share1_reg_reg[15] [6]),
        .I2(\share1_reg[22]_i_2 ),
        .O(\share2_reg_reg[6] ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[23]_i_5 
       (.I0(\share2_reg_reg[7] ),
        .I1(\share1_reg_reg[14] ),
        .I2(\share1_reg_reg[15] [3]),
        .O(\share2_reg_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[25]_i_4 
       (.I0(Q[1]),
        .I1(\share1_reg[25]_i_8_n_0 ),
        .I2(\share2_reg_reg[39] ),
        .I3(g2_b1__10_n_0),
        .I4(\share2_reg_reg[38] ),
        .I5(g3_b1__10_n_0),
        .O(\share2_reg_reg[1] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[25]_i_8 
       (.I0(g1_b1__10_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[39] [6]),
        .I3(g0_b1__10_n_0),
        .O(\share1_reg[25]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[27]_i_4 
       (.I0(Q[3]),
        .I1(\share1_reg[27]_i_8_n_0 ),
        .I2(\share2_reg_reg[39] ),
        .I3(g2_b3__10_n_0),
        .I4(\share2_reg_reg[38] ),
        .I5(g3_b3__10_n_0),
        .O(\share2_reg_reg[3] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[27]_i_8 
       (.I0(g1_b3__10_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[39] [6]),
        .I3(g0_b3__10_n_0),
        .O(\share1_reg[27]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[28]_i_4 
       (.I0(Q[4]),
        .I1(\share1_reg[28]_i_8_n_0 ),
        .I2(\share2_reg_reg[39] ),
        .I3(g2_b4__10_n_0),
        .I4(\share2_reg_reg[38] ),
        .I5(g3_b4__10_n_0),
        .O(\share2_reg_reg[4] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[28]_i_8 
       (.I0(g1_b4__10_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[39] [6]),
        .I3(g0_b4__10_n_0),
        .O(\share1_reg[28]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[2]_i_1 
       (.I0(key_IBUF[2]),
        .I1(plaintext_IBUF[2]),
        .I2(mask_in_IBUF[2]),
        .I3(\share1_reg_reg[5] [0]),
        .I4(round_ark_share1[2]),
        .I5(\share1_reg_reg[7] ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[2]_i_2 
       (.I0(\share2_reg_reg[2] ),
        .I1(\share1_reg_reg[8] ),
        .I2(mix_cols_share1[1]),
        .I3(\share1_reg_reg[15]_0 [2]),
        .O(round_ark_share1[2]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[2]_i_3 
       (.I0(Q[2]),
        .I1(\share1_reg[2]_i_6_n_0 ),
        .I2(\share2_reg_reg[39] ),
        .I3(g2_b2__10_n_0),
        .I4(\share2_reg_reg[38] ),
        .I5(g3_b2__10_n_0),
        .O(\share2_reg_reg[2] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[2]_i_6 
       (.I0(g1_b2__10_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[39] [6]),
        .I3(g0_b2__10_n_0),
        .O(\share1_reg[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[3]_i_1 
       (.I0(key_IBUF[3]),
        .I1(plaintext_IBUF[3]),
        .I2(mask_in_IBUF[3]),
        .I3(\share1_reg_reg[5] [0]),
        .I4(round_ark_share1[3]),
        .I5(\share1_reg_reg[7] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[3]_i_2 
       (.I0(\share2_reg_reg[3] ),
        .I1(\share1_reg_reg[8] ),
        .I2(\share1_reg_reg[15] [1]),
        .I3(\share1_reg_reg[15] [3]),
        .I4(\share1_reg[3]_i_3_n_0 ),
        .I5(\share1_reg_reg[15]_0 [3]),
        .O(round_ark_share1[3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[3]_i_3 
       (.I0(\share1_reg[3]_i_2_0 ),
        .I1(\share1_reg_reg[4] ),
        .I2(\share1_reg[3]_i_2_1 ),
        .I3(\share2_reg_reg[7] ),
        .I4(\share2_reg_reg[2] ),
        .O(\share1_reg[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[4]_i_1 
       (.I0(key_IBUF[4]),
        .I1(plaintext_IBUF[4]),
        .I2(mask_in_IBUF[4]),
        .I3(\share1_reg_reg[5] [0]),
        .I4(round_ark_share1[4]),
        .I5(\share1_reg_reg[7] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[4]_i_2 
       (.I0(\share2_reg_reg[4] ),
        .I1(\share1_reg_reg[8] ),
        .I2(\share1_reg_reg[4] ),
        .I3(\share1_reg_reg[15] [3]),
        .I4(\share1_reg[4]_i_3_n_0 ),
        .I5(\share1_reg_reg[15]_0 [4]),
        .O(round_ark_share1[4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[4]_i_3 
       (.I0(\share1_reg[4]_i_2_0 ),
        .I1(\share1_reg[4]_i_2_1 ),
        .I2(\share1_reg[4]_i_2_2 ),
        .I3(\share2_reg_reg[7] ),
        .I4(\share2_reg_reg[3] ),
        .O(\share1_reg[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[5]_i_1 
       (.I0(key_IBUF[5]),
        .I1(plaintext_IBUF[5]),
        .I2(mask_in_IBUF[5]),
        .I3(\share1_reg_reg[5] [0]),
        .I4(round_ark_share1[5]),
        .I5(\share1_reg_reg[5] [1]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[5]_i_2 
       (.I0(\share2_reg_reg[5]_0 ),
        .I1(\share1_reg_reg[8] ),
        .I2(mix_cols_share1[2]),
        .I3(\share1_reg_reg[15]_0 [5]),
        .O(round_ark_share1[5]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[6]_i_1 
       (.I0(key_IBUF[6]),
        .I1(plaintext_IBUF[6]),
        .I2(mask_in_IBUF[6]),
        .I3(\share1_reg_reg[5] [0]),
        .I4(round_ark_share1[6]),
        .I5(\share1_reg_reg[7] ),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[6]_i_2 
       (.I0(\share2_reg_reg[6]_0 ),
        .I1(\share1_reg_reg[8] ),
        .I2(mix_cols_share1[3]),
        .I3(\share1_reg_reg[15]_0 [6]),
        .O(round_ark_share1[6]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[7]_i_1 
       (.I0(key_IBUF[7]),
        .I1(plaintext_IBUF[7]),
        .I2(mask_in_IBUF[7]),
        .I3(\share1_reg_reg[5] [0]),
        .I4(round_ark_share1[7]),
        .I5(\share1_reg_reg[7] ),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[7]_i_2 
       (.I0(\share2_reg_reg[7] ),
        .I1(\share1_reg_reg[8] ),
        .I2(mix_cols_share1[4]),
        .I3(\share1_reg_reg[15]_0 [7]),
        .O(round_ark_share1[7]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[8]_i_1 
       (.I0(key_IBUF[8]),
        .I1(plaintext_IBUF[8]),
        .I2(mask_in_IBUF[8]),
        .I3(\share1_reg_reg[5] [0]),
        .I4(round_ark_share1[8]),
        .I5(\share1_reg_reg[5] [1]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[8]_i_2 
       (.I0(\share1_reg_reg[15] [4]),
        .I1(\share1_reg_reg[8] ),
        .I2(\share2_reg_reg[7] ),
        .I3(\share2_reg_reg[0]_0 ),
        .I4(\share1_reg_reg[15] [8]),
        .I5(\share1_reg_reg[15]_0 [8]),
        .O(round_ark_share1[8]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[8]_i_3 
       (.I0(Q[7]),
        .I1(\share1_reg[8]_i_5_n_0 ),
        .I2(\share2_reg_reg[39] ),
        .I3(g2_b7__10_n_0),
        .I4(\share2_reg_reg[38] ),
        .I5(g3_b7__10_n_0),
        .O(\share2_reg_reg[7] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[8]_i_5 
       (.I0(g1_b7__10_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[39] [6]),
        .I3(g0_b7__10_n_0),
        .O(\share1_reg[8]_i_5_n_0 ));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_28
   (\share2_reg_reg[10] ,
    sub_bytes_share1,
    \share2_reg_reg[13] ,
    \share2_reg_reg[14] ,
    \share2_reg_reg[14]_0 ,
    \share2_reg_reg[15] ,
    \share2_reg_reg[8] ,
    \share2_reg_reg[47] ,
    \share2_reg_reg[46] ,
    \share2_reg_reg[45] ,
    \share2_reg_reg[44] ,
    \share2_reg_reg[43] ,
    \share2_reg_reg[42] ,
    \share2_reg_reg[41] ,
    \share2_reg_reg[40] ,
    D,
    \share2_reg_reg[9] ,
    \share2_reg_reg[11] ,
    \share2_reg_reg[12] ,
    \share1_reg_reg[105] ,
    \share1_reg_reg[119] ,
    \share1_reg_reg[108] ,
    \share1_reg[126]_i_2 ,
    \share1_reg_reg[118] ,
    Q,
    \ciphertext_reg[47] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[109] ,
    \share1_reg_reg[111] ,
    \share1_reg_reg[114] ,
    \share1_reg_reg[118]_0 ,
    \share1_reg_reg[119]_0 ,
    mix_cols_share1,
    \share1_reg_reg[105]_0 ,
    \share1_reg_reg[107] ,
    \share1_reg_reg[107]_0 ,
    \share1_reg_reg[108]_0 ,
    \share1_reg_reg[118]_1 );
  output \share2_reg_reg[10] ;
  output [3:0]sub_bytes_share1;
  output \share2_reg_reg[13] ;
  output \share2_reg_reg[14] ;
  output \share2_reg_reg[14]_0 ;
  output \share2_reg_reg[15] ;
  output \share2_reg_reg[8] ;
  output \share2_reg_reg[47] ;
  output \share2_reg_reg[46] ;
  output \share2_reg_reg[45] ;
  output \share2_reg_reg[44] ;
  output \share2_reg_reg[43] ;
  output \share2_reg_reg[42] ;
  output \share2_reg_reg[41] ;
  output \share2_reg_reg[40] ;
  output [12:0]D;
  output \share2_reg_reg[9] ;
  output \share2_reg_reg[11] ;
  output \share2_reg_reg[12] ;
  input \share1_reg_reg[105] ;
  input [11:0]\share1_reg_reg[119] ;
  input \share1_reg_reg[108] ;
  input \share1_reg[126]_i_2 ;
  input \share1_reg_reg[118] ;
  input [15:0]Q;
  input [7:0]\ciphertext_reg[47] ;
  input [12:0]key_IBUF;
  input [12:0]plaintext_IBUF;
  input [12:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[109] ;
  input \share1_reg_reg[111] ;
  input \share1_reg_reg[114] ;
  input \share1_reg_reg[118]_0 ;
  input [12:0]\share1_reg_reg[119]_0 ;
  input [4:0]mix_cols_share1;
  input \share1_reg_reg[105]_0 ;
  input \share1_reg_reg[107] ;
  input \share1_reg_reg[107]_0 ;
  input \share1_reg_reg[108]_0 ;
  input \share1_reg_reg[118]_1 ;

  wire [12:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[47] ;
  wire g0_b0__9_n_0;
  wire g0_b1__9_n_0;
  wire g0_b2__9_n_0;
  wire g0_b3__9_n_0;
  wire g0_b4__9_n_0;
  wire g0_b5__9_n_0;
  wire g0_b6__9_n_0;
  wire g0_b7__9_n_0;
  wire g1_b0__9_n_0;
  wire g1_b1__9_n_0;
  wire g1_b2__9_n_0;
  wire g1_b3__9_n_0;
  wire g1_b4__9_n_0;
  wire g1_b5__9_n_0;
  wire g1_b6__9_n_0;
  wire g1_b7__9_n_0;
  wire g2_b0__9_n_0;
  wire g2_b1__9_n_0;
  wire g2_b2__9_n_0;
  wire g2_b3__9_n_0;
  wire g2_b4__9_n_0;
  wire g2_b5__9_n_0;
  wire g2_b6__9_n_0;
  wire g2_b7__9_n_0;
  wire g3_b0__9_n_0;
  wire g3_b1__9_n_0;
  wire g3_b2__9_n_0;
  wire g3_b3__9_n_0;
  wire g3_b4__9_n_0;
  wire g3_b5__9_n_0;
  wire g3_b6__9_n_0;
  wire g3_b7__9_n_0;
  wire [12:0]key_IBUF;
  wire [12:0]mask_in_IBUF;
  wire [4:0]mix_cols_share1;
  wire [12:0]plaintext_IBUF;
  wire [119:104]round_ark_share1;
  wire \share1_reg[104]_i_5_n_0 ;
  wire \share1_reg[106]_i_5_n_0 ;
  wire \share1_reg[107]_i_6_n_0 ;
  wire \share1_reg[112]_i_4_n_0 ;
  wire \share1_reg[114]_i_4_n_0 ;
  wire \share1_reg[117]_i_4_n_0 ;
  wire \share1_reg[118]_i_4_n_0 ;
  wire \share1_reg[119]_i_4_n_0 ;
  wire \share1_reg[126]_i_2 ;
  wire \share1_reg_reg[105] ;
  wire \share1_reg_reg[105]_0 ;
  wire \share1_reg_reg[107] ;
  wire \share1_reg_reg[107]_0 ;
  wire \share1_reg_reg[108] ;
  wire \share1_reg_reg[108]_0 ;
  wire [1:0]\share1_reg_reg[109] ;
  wire \share1_reg_reg[111] ;
  wire \share1_reg_reg[114] ;
  wire \share1_reg_reg[118] ;
  wire \share1_reg_reg[118]_0 ;
  wire \share1_reg_reg[118]_1 ;
  wire [11:0]\share1_reg_reg[119] ;
  wire [12:0]\share1_reg_reg[119]_0 ;
  wire \share2_reg_reg[10] ;
  wire \share2_reg_reg[11] ;
  wire \share2_reg_reg[12] ;
  wire \share2_reg_reg[13] ;
  wire \share2_reg_reg[14] ;
  wire \share2_reg_reg[14]_0 ;
  wire \share2_reg_reg[15] ;
  wire \share2_reg_reg[40] ;
  wire \share2_reg_reg[41] ;
  wire \share2_reg_reg[42] ;
  wire \share2_reg_reg[43] ;
  wire \share2_reg_reg[44] ;
  wire \share2_reg_reg[45] ;
  wire \share2_reg_reg[46] ;
  wire \share2_reg_reg[47] ;
  wire \share2_reg_reg[8] ;
  wire \share2_reg_reg[9] ;
  wire [3:0]sub_bytes_share1;

  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[46]_i_1 
       (.I0(Q[14]),
        .I1(\ciphertext_reg[47] [6]),
        .O(\share2_reg_reg[46] ));
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[47]_i_1 
       (.I0(Q[15]),
        .I1(\ciphertext_reg[47] [7]),
        .O(\share2_reg_reg[47] ));
  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g0_b0__9_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__9_i_1
       (.I0(Q[8]),
        .I1(\ciphertext_reg[47] [0]),
        .O(\share2_reg_reg[40] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__9_i_2
       (.I0(Q[9]),
        .I1(\ciphertext_reg[47] [1]),
        .O(\share2_reg_reg[41] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__9_i_3
       (.I0(Q[10]),
        .I1(\ciphertext_reg[47] [2]),
        .O(\share2_reg_reg[42] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__9_i_4
       (.I0(Q[11]),
        .I1(\ciphertext_reg[47] [3]),
        .O(\share2_reg_reg[43] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__9_i_5
       (.I0(Q[12]),
        .I1(\ciphertext_reg[47] [4]),
        .O(\share2_reg_reg[44] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0__9_i_6
       (.I0(Q[13]),
        .I1(\ciphertext_reg[47] [5]),
        .O(\share2_reg_reg[45] ));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g0_b1__9_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g0_b2__9_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g0_b3__9_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g0_b4__9_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g0_b5__9_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g0_b6__9_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g0_b7__9_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g1_b0__9_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g1_b1__9_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g1_b2__9_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g1_b3__9_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g1_b4__9_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g1_b5__9_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g1_b6__9_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g1_b7__9_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g2_b0__9_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g2_b1__9_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g2_b2__9_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g2_b3__9_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g2_b4__9_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g2_b5__9_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g2_b6__9_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g2_b7__9_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g3_b0__9_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g3_b1__9_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g3_b2__9_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g3_b3__9_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g3_b4__9_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g3_b5__9_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g3_b6__9_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__9
       (.I0(\share2_reg_reg[40] ),
        .I1(\share2_reg_reg[41] ),
        .I2(\share2_reg_reg[42] ),
        .I3(\share2_reg_reg[43] ),
        .I4(\share2_reg_reg[44] ),
        .I5(\share2_reg_reg[45] ),
        .O(g3_b7__9_n_0));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[104]_i_1 
       (.I0(key_IBUF[0]),
        .I1(plaintext_IBUF[0]),
        .I2(mask_in_IBUF[0]),
        .I3(\share1_reg_reg[109] [0]),
        .I4(round_ark_share1[104]),
        .I5(\share1_reg_reg[111] ),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[104]_i_2 
       (.I0(sub_bytes_share1[0]),
        .I1(\share1_reg_reg[118]_0 ),
        .I2(mix_cols_share1[0]),
        .I3(\share1_reg_reg[119]_0 [0]),
        .O(round_ark_share1[104]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[104]_i_3 
       (.I0(Q[0]),
        .I1(\share1_reg[104]_i_5_n_0 ),
        .I2(\share2_reg_reg[47] ),
        .I3(g2_b0__9_n_0),
        .I4(\share2_reg_reg[46] ),
        .I5(g3_b0__9_n_0),
        .O(sub_bytes_share1[0]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[104]_i_5 
       (.I0(g1_b0__9_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[47] [6]),
        .I3(g0_b0__9_n_0),
        .O(\share1_reg[104]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[105]_i_1 
       (.I0(key_IBUF[1]),
        .I1(plaintext_IBUF[1]),
        .I2(mask_in_IBUF[1]),
        .I3(\share1_reg_reg[109] [0]),
        .I4(round_ark_share1[105]),
        .I5(\share1_reg_reg[111] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h74478BB8)) 
    \share1_reg[105]_i_2 
       (.I0(\share2_reg_reg[9] ),
        .I1(\share1_reg_reg[118]_0 ),
        .I2(\share1_reg_reg[105] ),
        .I3(\share1_reg_reg[105]_0 ),
        .I4(\share1_reg_reg[119]_0 [1]),
        .O(round_ark_share1[105]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[106]_i_1 
       (.I0(key_IBUF[2]),
        .I1(plaintext_IBUF[2]),
        .I2(mask_in_IBUF[2]),
        .I3(\share1_reg_reg[109] [0]),
        .I4(round_ark_share1[106]),
        .I5(\share1_reg_reg[111] ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[106]_i_2 
       (.I0(sub_bytes_share1[1]),
        .I1(\share1_reg_reg[118]_0 ),
        .I2(mix_cols_share1[1]),
        .I3(\share1_reg_reg[119]_0 [2]),
        .O(round_ark_share1[106]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[106]_i_3 
       (.I0(Q[2]),
        .I1(\share1_reg[106]_i_5_n_0 ),
        .I2(\share2_reg_reg[47] ),
        .I3(g2_b2__9_n_0),
        .I4(\share2_reg_reg[46] ),
        .I5(g3_b2__9_n_0),
        .O(sub_bytes_share1[1]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[106]_i_5 
       (.I0(g1_b2__9_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[47] [6]),
        .I3(g0_b2__9_n_0),
        .O(\share1_reg[106]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[107]_i_1 
       (.I0(key_IBUF[3]),
        .I1(plaintext_IBUF[3]),
        .I2(mask_in_IBUF[3]),
        .I3(\share1_reg_reg[109] [0]),
        .I4(round_ark_share1[107]),
        .I5(\share1_reg_reg[111] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h74478BB8)) 
    \share1_reg[107]_i_2 
       (.I0(\share2_reg_reg[11] ),
        .I1(\share1_reg_reg[118]_0 ),
        .I2(\share1_reg_reg[107] ),
        .I3(\share1_reg_reg[107]_0 ),
        .I4(\share1_reg_reg[119]_0 [3]),
        .O(round_ark_share1[107]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[107]_i_3 
       (.I0(Q[3]),
        .I1(\share1_reg[107]_i_6_n_0 ),
        .I2(\share2_reg_reg[47] ),
        .I3(g2_b3__9_n_0),
        .I4(\share2_reg_reg[46] ),
        .I5(g3_b3__9_n_0),
        .O(\share2_reg_reg[11] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[107]_i_6 
       (.I0(g1_b3__9_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[47] [6]),
        .I3(g0_b3__9_n_0),
        .O(\share1_reg[107]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[108]_i_1 
       (.I0(key_IBUF[4]),
        .I1(plaintext_IBUF[4]),
        .I2(mask_in_IBUF[4]),
        .I3(\share1_reg_reg[109] [0]),
        .I4(round_ark_share1[108]),
        .I5(\share1_reg_reg[111] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h74478BB8)) 
    \share1_reg[108]_i_2 
       (.I0(\share2_reg_reg[12] ),
        .I1(\share1_reg_reg[118]_0 ),
        .I2(\share1_reg_reg[108] ),
        .I3(\share1_reg_reg[108]_0 ),
        .I4(\share1_reg_reg[119]_0 [4]),
        .O(round_ark_share1[108]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[109]_i_1 
       (.I0(key_IBUF[5]),
        .I1(plaintext_IBUF[5]),
        .I2(mask_in_IBUF[5]),
        .I3(\share1_reg_reg[109] [0]),
        .I4(round_ark_share1[109]),
        .I5(\share1_reg_reg[109] [1]),
        .O(D[5]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[109]_i_2 
       (.I0(sub_bytes_share1[2]),
        .I1(\share1_reg_reg[118]_0 ),
        .I2(mix_cols_share1[2]),
        .I3(\share1_reg_reg[119]_0 [5]),
        .O(round_ark_share1[109]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[110]_i_1 
       (.I0(key_IBUF[6]),
        .I1(plaintext_IBUF[6]),
        .I2(mask_in_IBUF[6]),
        .I3(\share1_reg_reg[109] [0]),
        .I4(round_ark_share1[110]),
        .I5(\share1_reg_reg[114] ),
        .O(D[6]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[110]_i_2 
       (.I0(\share2_reg_reg[14]_0 ),
        .I1(\share1_reg_reg[118]_0 ),
        .I2(mix_cols_share1[3]),
        .I3(\share1_reg_reg[119]_0 [6]),
        .O(round_ark_share1[110]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[111]_i_1 
       (.I0(key_IBUF[7]),
        .I1(plaintext_IBUF[7]),
        .I2(mask_in_IBUF[7]),
        .I3(\share1_reg_reg[109] [0]),
        .I4(round_ark_share1[111]),
        .I5(\share1_reg_reg[111] ),
        .O(D[7]));
  LUT4 #(
    .INIT(16'h47B8)) 
    \share1_reg[111]_i_2 
       (.I0(sub_bytes_share1[3]),
        .I1(\share1_reg_reg[118]_0 ),
        .I2(mix_cols_share1[4]),
        .I3(\share1_reg_reg[119]_0 [7]),
        .O(round_ark_share1[111]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[112]_i_1 
       (.I0(key_IBUF[8]),
        .I1(plaintext_IBUF[8]),
        .I2(mask_in_IBUF[8]),
        .I3(\share1_reg_reg[109] [0]),
        .I4(round_ark_share1[112]),
        .I5(\share1_reg_reg[114] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[112]_i_2 
       (.I0(\share1_reg_reg[119] [4]),
        .I1(\share1_reg_reg[118]_0 ),
        .I2(\share1_reg_reg[119] [8]),
        .I3(\share2_reg_reg[8] ),
        .I4(sub_bytes_share1[3]),
        .I5(\share1_reg_reg[119]_0 [8]),
        .O(round_ark_share1[112]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[112]_i_3 
       (.I0(Q[7]),
        .I1(\share1_reg[112]_i_4_n_0 ),
        .I2(\share2_reg_reg[47] ),
        .I3(g2_b7__9_n_0),
        .I4(\share2_reg_reg[46] ),
        .I5(g3_b7__9_n_0),
        .O(sub_bytes_share1[3]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[112]_i_4 
       (.I0(g1_b7__9_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[47] [6]),
        .I3(g0_b7__9_n_0),
        .O(\share1_reg[112]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[114]_i_1 
       (.I0(key_IBUF[9]),
        .I1(plaintext_IBUF[9]),
        .I2(mask_in_IBUF[9]),
        .I3(\share1_reg_reg[109] [0]),
        .I4(round_ark_share1[114]),
        .I5(\share1_reg_reg[114] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[114]_i_2 
       (.I0(\share1_reg_reg[119] [5]),
        .I1(\share1_reg_reg[118]_0 ),
        .I2(\share1_reg_reg[119] [9]),
        .I3(\share2_reg_reg[10] ),
        .I4(\share2_reg_reg[9] ),
        .I5(\share1_reg_reg[119]_0 [9]),
        .O(round_ark_share1[114]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[114]_i_3 
       (.I0(Q[1]),
        .I1(\share1_reg[114]_i_4_n_0 ),
        .I2(\share2_reg_reg[47] ),
        .I3(g2_b1__9_n_0),
        .I4(\share2_reg_reg[46] ),
        .I5(g3_b1__9_n_0),
        .O(\share2_reg_reg[9] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[114]_i_4 
       (.I0(g1_b1__9_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[47] [6]),
        .I3(g0_b1__9_n_0),
        .O(\share1_reg[114]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[117]_i_1 
       (.I0(key_IBUF[10]),
        .I1(plaintext_IBUF[10]),
        .I2(mask_in_IBUF[10]),
        .I3(\share1_reg_reg[109] [0]),
        .I4(round_ark_share1[117]),
        .I5(\share1_reg_reg[114] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[117]_i_2 
       (.I0(\share1_reg_reg[119] [6]),
        .I1(\share1_reg_reg[118]_0 ),
        .I2(\share1_reg_reg[119] [10]),
        .I3(\share2_reg_reg[13] ),
        .I4(\share2_reg_reg[12] ),
        .I5(\share1_reg_reg[119]_0 [10]),
        .O(round_ark_share1[117]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[117]_i_3 
       (.I0(Q[4]),
        .I1(\share1_reg[117]_i_4_n_0 ),
        .I2(\share2_reg_reg[47] ),
        .I3(g2_b4__9_n_0),
        .I4(\share2_reg_reg[46] ),
        .I5(g3_b4__9_n_0),
        .O(\share2_reg_reg[12] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[117]_i_4 
       (.I0(g1_b4__9_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[47] [6]),
        .I3(g0_b4__9_n_0),
        .O(\share1_reg[117]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[118]_i_1 
       (.I0(key_IBUF[11]),
        .I1(plaintext_IBUF[11]),
        .I2(mask_in_IBUF[11]),
        .I3(\share1_reg_reg[109] [0]),
        .I4(round_ark_share1[118]),
        .I5(\share1_reg_reg[109] [1]),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[118]_i_2 
       (.I0(\share1_reg_reg[118] ),
        .I1(\share1_reg_reg[118]_0 ),
        .I2(\share1_reg_reg[118]_1 ),
        .I3(\share2_reg_reg[14] ),
        .I4(sub_bytes_share1[2]),
        .I5(\share1_reg_reg[119]_0 [11]),
        .O(round_ark_share1[118]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[118]_i_3 
       (.I0(Q[5]),
        .I1(\share1_reg[118]_i_4_n_0 ),
        .I2(\share2_reg_reg[47] ),
        .I3(g2_b5__9_n_0),
        .I4(\share2_reg_reg[46] ),
        .I5(g3_b5__9_n_0),
        .O(sub_bytes_share1[2]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[118]_i_4 
       (.I0(g1_b5__9_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[47] [6]),
        .I3(g0_b5__9_n_0),
        .O(\share1_reg[118]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[119]_i_1 
       (.I0(key_IBUF[12]),
        .I1(plaintext_IBUF[12]),
        .I2(mask_in_IBUF[12]),
        .I3(\share1_reg_reg[109] [0]),
        .I4(round_ark_share1[119]),
        .I5(\share1_reg_reg[111] ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[119]_i_2 
       (.I0(\share1_reg_reg[119] [7]),
        .I1(\share1_reg_reg[118]_0 ),
        .I2(\share1_reg_reg[119] [11]),
        .I3(\share2_reg_reg[15] ),
        .I4(\share2_reg_reg[14]_0 ),
        .I5(\share1_reg_reg[119]_0 [12]),
        .O(round_ark_share1[119]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[119]_i_3 
       (.I0(Q[6]),
        .I1(\share1_reg[119]_i_4_n_0 ),
        .I2(\share2_reg_reg[47] ),
        .I3(g2_b6__9_n_0),
        .I4(\share2_reg_reg[46] ),
        .I5(g3_b6__9_n_0),
        .O(\share2_reg_reg[14]_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[119]_i_4 
       (.I0(g1_b6__9_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[47] [6]),
        .I3(g0_b6__9_n_0),
        .O(\share1_reg[119]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[120]_i_5 
       (.I0(sub_bytes_share1[0]),
        .I1(\share1_reg_reg[119] [7]),
        .I2(\share1_reg_reg[119] [0]),
        .O(\share2_reg_reg[8] ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[122]_i_6 
       (.I0(sub_bytes_share1[1]),
        .I1(\share1_reg_reg[105] ),
        .I2(\share1_reg_reg[119] [1]),
        .O(\share2_reg_reg[10] ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[125]_i_5 
       (.I0(sub_bytes_share1[2]),
        .I1(\share1_reg_reg[108] ),
        .I2(\share1_reg_reg[119] [2]),
        .O(\share2_reg_reg[13] ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[126]_i_5 
       (.I0(\share2_reg_reg[14]_0 ),
        .I1(\share1_reg_reg[119] [6]),
        .I2(\share1_reg[126]_i_2 ),
        .O(\share2_reg_reg[14] ));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[127]_i_6 
       (.I0(sub_bytes_share1[3]),
        .I1(\share1_reg_reg[118] ),
        .I2(\share1_reg_reg[119] [3]),
        .O(\share2_reg_reg[15] ));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_29
   (\share2_reg_reg[49] ,
    sub_bytes_share1,
    \share2_reg_reg[127] ,
    \share2_reg_reg[126] ,
    \share2_reg_reg[51] ,
    \share2_reg_reg[52] ,
    \share2_reg_reg[91] ,
    \share2_reg_reg[125] ,
    \share2_reg_reg[124] ,
    \share2_reg_reg[123] ,
    \share2_reg_reg[122] ,
    \share2_reg_reg[121] ,
    \share2_reg_reg[120] ,
    D,
    \share2_reg_reg[89] ,
    \share2_reg_reg[92] ,
    \share2_reg_reg[94] ,
    \share1_reg[97]_i_3 ,
    Q,
    \share1_reg[99]_i_3 ,
    \share1_reg[100]_i_3 ,
    \ciphertext_reg[127] ,
    key_IBUF,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[125] ,
    \share1_reg_reg[127] ,
    \share1_reg_reg[121] ,
    \share1_reg_reg[121]_0 ,
    \share1_reg_reg[127]_0 ,
    \share1_reg_reg[120] ,
    \share1_reg_reg[127]_1 ,
    \share1_reg_reg[121]_1 ,
    \share1_reg_reg[122] ,
    \share1_reg_reg[123] ,
    \share1_reg_reg[124] ,
    \share1_reg_reg[125]_0 ,
    \share1_reg_reg[126] ,
    \share1_reg_reg[126]_0 ,
    \share1_reg_reg[127]_2 );
  output \share2_reg_reg[49] ;
  output [3:0]sub_bytes_share1;
  output \share2_reg_reg[127] ;
  output \share2_reg_reg[126] ;
  output \share2_reg_reg[51] ;
  output \share2_reg_reg[52] ;
  output \share2_reg_reg[91] ;
  output \share2_reg_reg[125] ;
  output \share2_reg_reg[124] ;
  output \share2_reg_reg[123] ;
  output \share2_reg_reg[122] ;
  output \share2_reg_reg[121] ;
  output \share2_reg_reg[120] ;
  output [7:0]D;
  output \share2_reg_reg[89] ;
  output \share2_reg_reg[92] ;
  output \share2_reg_reg[94] ;
  input \share1_reg[97]_i_3 ;
  input [15:0]Q;
  input \share1_reg[99]_i_3 ;
  input \share1_reg[100]_i_3 ;
  input [7:0]\ciphertext_reg[127] ;
  input [7:0]key_IBUF;
  input [7:0]plaintext_IBUF;
  input [7:0]mask_in_IBUF;
  input [1:0]\share1_reg_reg[125] ;
  input \share1_reg_reg[127] ;
  input \share1_reg_reg[121] ;
  input \share1_reg_reg[121]_0 ;
  input [3:0]\share1_reg_reg[127]_0 ;
  input \share1_reg_reg[120] ;
  input [7:0]\share1_reg_reg[127]_1 ;
  input \share1_reg_reg[121]_1 ;
  input \share1_reg_reg[122] ;
  input \share1_reg_reg[123] ;
  input \share1_reg_reg[124] ;
  input \share1_reg_reg[125]_0 ;
  input \share1_reg_reg[126] ;
  input \share1_reg_reg[126]_0 ;
  input \share1_reg_reg[127]_2 ;

  wire [7:0]D;
  wire [15:0]Q;
  wire [7:0]\ciphertext_reg[127] ;
  wire g0_b0_n_0;
  wire g0_b1_n_0;
  wire g0_b2_n_0;
  wire g0_b3_n_0;
  wire g0_b4_n_0;
  wire g0_b5_n_0;
  wire g0_b6_n_0;
  wire g0_b7_n_0;
  wire g1_b0_n_0;
  wire g1_b1_n_0;
  wire g1_b2_n_0;
  wire g1_b3_n_0;
  wire g1_b4_n_0;
  wire g1_b5_n_0;
  wire g1_b6_n_0;
  wire g1_b7_n_0;
  wire g2_b0_n_0;
  wire g2_b1_n_0;
  wire g2_b2_n_0;
  wire g2_b3_n_0;
  wire g2_b4_n_0;
  wire g2_b5_n_0;
  wire g2_b6_n_0;
  wire g2_b7_n_0;
  wire g3_b0_n_0;
  wire g3_b1_n_0;
  wire g3_b2_n_0;
  wire g3_b3_n_0;
  wire g3_b4_n_0;
  wire g3_b5_n_0;
  wire g3_b6_n_0;
  wire g3_b7_n_0;
  wire [7:0]key_IBUF;
  wire [7:0]mask_in_IBUF;
  wire [7:0]plaintext_IBUF;
  wire [127:120]round_ark_share1;
  wire \share1_reg[100]_i_3 ;
  wire \share1_reg[120]_i_6_n_0 ;
  wire \share1_reg[122]_i_7_n_0 ;
  wire \share1_reg[122]_i_8_n_0 ;
  wire \share1_reg[123]_i_6_n_0 ;
  wire \share1_reg[125]_i_6_n_0 ;
  wire \share1_reg[126]_i_6_n_0 ;
  wire \share1_reg[127]_i_7_n_0 ;
  wire \share1_reg[127]_i_8_n_0 ;
  wire \share1_reg[97]_i_3 ;
  wire \share1_reg[99]_i_3 ;
  wire \share1_reg_reg[120] ;
  wire \share1_reg_reg[121] ;
  wire \share1_reg_reg[121]_0 ;
  wire \share1_reg_reg[121]_1 ;
  wire \share1_reg_reg[122] ;
  wire \share1_reg_reg[123] ;
  wire \share1_reg_reg[124] ;
  wire [1:0]\share1_reg_reg[125] ;
  wire \share1_reg_reg[125]_0 ;
  wire \share1_reg_reg[126] ;
  wire \share1_reg_reg[126]_0 ;
  wire \share1_reg_reg[127] ;
  wire [3:0]\share1_reg_reg[127]_0 ;
  wire [7:0]\share1_reg_reg[127]_1 ;
  wire \share1_reg_reg[127]_2 ;
  wire \share2_reg_reg[120] ;
  wire \share2_reg_reg[121] ;
  wire \share2_reg_reg[122] ;
  wire \share2_reg_reg[123] ;
  wire \share2_reg_reg[124] ;
  wire \share2_reg_reg[125] ;
  wire \share2_reg_reg[126] ;
  wire \share2_reg_reg[127] ;
  wire \share2_reg_reg[49] ;
  wire \share2_reg_reg[51] ;
  wire \share2_reg_reg[52] ;
  wire \share2_reg_reg[89] ;
  wire \share2_reg_reg[91] ;
  wire \share2_reg_reg[92] ;
  wire \share2_reg_reg[94] ;
  wire [3:0]sub_bytes_share1;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[126]_i_1 
       (.I0(Q[14]),
        .I1(\ciphertext_reg[127] [6]),
        .O(\share2_reg_reg[126] ));
  LUT2 #(
    .INIT(4'h6)) 
    \ciphertext[127]_i_1 
       (.I0(Q[15]),
        .I1(\ciphertext_reg[127] [7]),
        .O(\share2_reg_reg[127] ));
  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g0_b0_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0_i_1
       (.I0(Q[8]),
        .I1(\ciphertext_reg[127] [0]),
        .O(\share2_reg_reg[120] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0_i_2
       (.I0(Q[9]),
        .I1(\ciphertext_reg[127] [1]),
        .O(\share2_reg_reg[121] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0_i_3
       (.I0(Q[10]),
        .I1(\ciphertext_reg[127] [2]),
        .O(\share2_reg_reg[122] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0_i_4
       (.I0(Q[11]),
        .I1(\ciphertext_reg[127] [3]),
        .O(\share2_reg_reg[123] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0_i_5
       (.I0(Q[12]),
        .I1(\ciphertext_reg[127] [4]),
        .O(\share2_reg_reg[124] ));
  LUT2 #(
    .INIT(4'h6)) 
    g0_b0_i_6
       (.I0(Q[13]),
        .I1(\ciphertext_reg[127] [5]),
        .O(\share2_reg_reg[125] ));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g0_b1_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g0_b2_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g0_b3_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g0_b4_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g0_b5_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g0_b6_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g0_b7_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g1_b0_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g1_b1_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g1_b2_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g1_b3_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g1_b4_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g1_b5_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g1_b6_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g1_b7_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g2_b0_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g2_b1_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g2_b2_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g2_b3_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g2_b4_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g2_b5_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g2_b6_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g2_b7_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g3_b0_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g3_b1_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g3_b2_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g3_b3_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g3_b4_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g3_b5_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g3_b6_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7
       (.I0(\share2_reg_reg[120] ),
        .I1(\share2_reg_reg[121] ),
        .I2(\share2_reg_reg[122] ),
        .I3(\share2_reg_reg[123] ),
        .I4(\share2_reg_reg[124] ),
        .I5(\share2_reg_reg[125] ),
        .O(g3_b7_n_0));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[120]_i_1 
       (.I0(key_IBUF[0]),
        .I1(plaintext_IBUF[0]),
        .I2(mask_in_IBUF[0]),
        .I3(\share1_reg_reg[125] [0]),
        .I4(round_ark_share1[120]),
        .I5(\share1_reg_reg[127] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[120]_i_2 
       (.I0(sub_bytes_share1[0]),
        .I1(\share1_reg_reg[121]_0 ),
        .I2(sub_bytes_share1[3]),
        .I3(\share1_reg_reg[127]_0 [0]),
        .I4(\share1_reg_reg[120] ),
        .I5(\share1_reg_reg[127]_1 [0]),
        .O(round_ark_share1[120]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[120]_i_3 
       (.I0(Q[0]),
        .I1(\share1_reg[120]_i_6_n_0 ),
        .I2(\share2_reg_reg[127] ),
        .I3(g2_b0_n_0),
        .I4(\share2_reg_reg[126] ),
        .I5(g3_b0_n_0),
        .O(sub_bytes_share1[0]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[120]_i_6 
       (.I0(g1_b0_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[127] [6]),
        .I3(g0_b0_n_0),
        .O(\share1_reg[120]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[121]_i_1 
       (.I0(key_IBUF[1]),
        .I1(plaintext_IBUF[1]),
        .I2(mask_in_IBUF[1]),
        .I3(\share1_reg_reg[125] [0]),
        .I4(round_ark_share1[121]),
        .I5(\share1_reg_reg[121] ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h74478BB8)) 
    \share1_reg[121]_i_2 
       (.I0(\share2_reg_reg[89] ),
        .I1(\share1_reg_reg[121]_0 ),
        .I2(\share2_reg_reg[49] ),
        .I3(\share1_reg_reg[121]_1 ),
        .I4(\share1_reg_reg[127]_1 [1]),
        .O(round_ark_share1[121]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[121]_i_3 
       (.I0(\share1_reg[97]_i_3 ),
        .I1(sub_bytes_share1[0]),
        .I2(sub_bytes_share1[3]),
        .O(\share2_reg_reg[49] ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[122]_i_1 
       (.I0(key_IBUF[2]),
        .I1(plaintext_IBUF[2]),
        .I2(mask_in_IBUF[2]),
        .I3(\share1_reg_reg[125] [0]),
        .I4(round_ark_share1[122]),
        .I5(\share1_reg_reg[127] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[122]_i_2 
       (.I0(sub_bytes_share1[1]),
        .I1(\share1_reg_reg[121]_0 ),
        .I2(\share2_reg_reg[89] ),
        .I3(\share1_reg_reg[127]_0 [1]),
        .I4(\share1_reg_reg[122] ),
        .I5(\share1_reg_reg[127]_1 [2]),
        .O(round_ark_share1[122]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[122]_i_3 
       (.I0(Q[2]),
        .I1(\share1_reg[122]_i_7_n_0 ),
        .I2(\share2_reg_reg[127] ),
        .I3(g2_b2_n_0),
        .I4(\share2_reg_reg[126] ),
        .I5(g3_b2_n_0),
        .O(sub_bytes_share1[1]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[122]_i_4 
       (.I0(Q[1]),
        .I1(\share1_reg[122]_i_8_n_0 ),
        .I2(\share2_reg_reg[127] ),
        .I3(g2_b1_n_0),
        .I4(\share2_reg_reg[126] ),
        .I5(g3_b1_n_0),
        .O(\share2_reg_reg[89] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[122]_i_7 
       (.I0(g1_b2_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[127] [6]),
        .I3(g0_b2_n_0),
        .O(\share1_reg[122]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[122]_i_8 
       (.I0(g1_b1_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[127] [6]),
        .I3(g0_b1_n_0),
        .O(\share1_reg[122]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[123]_i_1 
       (.I0(key_IBUF[3]),
        .I1(plaintext_IBUF[3]),
        .I2(mask_in_IBUF[3]),
        .I3(\share1_reg_reg[125] [0]),
        .I4(round_ark_share1[123]),
        .I5(\share1_reg_reg[121] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h74478BB8)) 
    \share1_reg[123]_i_2 
       (.I0(\share2_reg_reg[91] ),
        .I1(\share1_reg_reg[121]_0 ),
        .I2(\share2_reg_reg[51] ),
        .I3(\share1_reg_reg[123] ),
        .I4(\share1_reg_reg[127]_1 [3]),
        .O(round_ark_share1[123]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[123]_i_3 
       (.I0(Q[3]),
        .I1(\share1_reg[123]_i_6_n_0 ),
        .I2(\share2_reg_reg[127] ),
        .I3(g2_b3_n_0),
        .I4(\share2_reg_reg[126] ),
        .I5(g3_b3_n_0),
        .O(\share2_reg_reg[91] ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[123]_i_4 
       (.I0(\share1_reg[99]_i_3 ),
        .I1(sub_bytes_share1[1]),
        .I2(sub_bytes_share1[3]),
        .O(\share2_reg_reg[51] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[123]_i_6 
       (.I0(g1_b3_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[127] [6]),
        .I3(g0_b3_n_0),
        .O(\share1_reg[123]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[124]_i_1 
       (.I0(key_IBUF[4]),
        .I1(plaintext_IBUF[4]),
        .I2(mask_in_IBUF[4]),
        .I3(\share1_reg_reg[125] [0]),
        .I4(round_ark_share1[124]),
        .I5(\share1_reg_reg[121] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h74478BB8)) 
    \share1_reg[124]_i_2 
       (.I0(\share2_reg_reg[92] ),
        .I1(\share1_reg_reg[121]_0 ),
        .I2(\share2_reg_reg[52] ),
        .I3(\share1_reg_reg[124] ),
        .I4(\share1_reg_reg[127]_1 [4]),
        .O(round_ark_share1[124]));
  LUT3 #(
    .INIT(8'h96)) 
    \share1_reg[124]_i_3 
       (.I0(\share1_reg[100]_i_3 ),
        .I1(\share2_reg_reg[91] ),
        .I2(sub_bytes_share1[3]),
        .O(\share2_reg_reg[52] ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[125]_i_1 
       (.I0(key_IBUF[5]),
        .I1(plaintext_IBUF[5]),
        .I2(mask_in_IBUF[5]),
        .I3(\share1_reg_reg[125] [0]),
        .I4(round_ark_share1[125]),
        .I5(\share1_reg_reg[125] [1]),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[125]_i_2 
       (.I0(sub_bytes_share1[2]),
        .I1(\share1_reg_reg[121]_0 ),
        .I2(\share2_reg_reg[92] ),
        .I3(\share1_reg_reg[127]_0 [2]),
        .I4(\share1_reg_reg[125]_0 ),
        .I5(\share1_reg_reg[127]_1 [5]),
        .O(round_ark_share1[125]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[125]_i_3 
       (.I0(Q[4]),
        .I1(\share1_reg[125]_i_6_n_0 ),
        .I2(\share2_reg_reg[127] ),
        .I3(g2_b4_n_0),
        .I4(\share2_reg_reg[126] ),
        .I5(g3_b4_n_0),
        .O(\share2_reg_reg[92] ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[125]_i_6 
       (.I0(g1_b4_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[127] [6]),
        .I3(g0_b4_n_0),
        .O(\share1_reg[125]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[126]_i_1 
       (.I0(key_IBUF[6]),
        .I1(plaintext_IBUF[6]),
        .I2(mask_in_IBUF[6]),
        .I3(\share1_reg_reg[125] [0]),
        .I4(round_ark_share1[126]),
        .I5(\share1_reg_reg[125] [1]),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[126]_i_2 
       (.I0(\share2_reg_reg[94] ),
        .I1(\share1_reg_reg[121]_0 ),
        .I2(sub_bytes_share1[2]),
        .I3(\share1_reg_reg[126] ),
        .I4(\share1_reg_reg[126]_0 ),
        .I5(\share1_reg_reg[127]_1 [6]),
        .O(round_ark_share1[126]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[126]_i_3 
       (.I0(Q[5]),
        .I1(\share1_reg[126]_i_6_n_0 ),
        .I2(\share2_reg_reg[127] ),
        .I3(g2_b5_n_0),
        .I4(\share2_reg_reg[126] ),
        .I5(g3_b5_n_0),
        .O(sub_bytes_share1[2]));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[126]_i_6 
       (.I0(g1_b5_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[127] [6]),
        .I3(g0_b5_n_0),
        .O(\share1_reg[126]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[127]_i_1 
       (.I0(key_IBUF[7]),
        .I1(plaintext_IBUF[7]),
        .I2(mask_in_IBUF[7]),
        .I3(\share1_reg_reg[125] [0]),
        .I4(round_ark_share1[127]),
        .I5(\share1_reg_reg[127] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h47747447B88B8BB8)) 
    \share1_reg[127]_i_2 
       (.I0(sub_bytes_share1[3]),
        .I1(\share1_reg_reg[121]_0 ),
        .I2(\share2_reg_reg[94] ),
        .I3(\share1_reg_reg[127]_0 [3]),
        .I4(\share1_reg_reg[127]_2 ),
        .I5(\share1_reg_reg[127]_1 [7]),
        .O(round_ark_share1[127]));
  LUT6 #(
    .INIT(64'h565656A6A6A656A6)) 
    \share1_reg[127]_i_3 
       (.I0(Q[7]),
        .I1(\share1_reg[127]_i_7_n_0 ),
        .I2(\share2_reg_reg[127] ),
        .I3(g2_b7_n_0),
        .I4(\share2_reg_reg[126] ),
        .I5(g3_b7_n_0),
        .O(sub_bytes_share1[3]));
  LUT6 #(
    .INIT(64'hA9A9A9595959A959)) 
    \share1_reg[127]_i_4 
       (.I0(Q[6]),
        .I1(\share1_reg[127]_i_8_n_0 ),
        .I2(\share2_reg_reg[127] ),
        .I3(g2_b6_n_0),
        .I4(\share2_reg_reg[126] ),
        .I5(g3_b6_n_0),
        .O(\share2_reg_reg[94] ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[127]_i_7 
       (.I0(g1_b7_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[127] [6]),
        .I3(g0_b7_n_0),
        .O(\share1_reg[127]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hEB28)) 
    \share1_reg[127]_i_8 
       (.I0(g1_b6_n_0),
        .I1(Q[14]),
        .I2(\ciphertext_reg[127] [6]),
        .I3(g0_b6_n_0),
        .O(\share1_reg[127]_i_8_n_0 ));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_30
   (D,
    \key_reg_reg[127] ,
    \round_ctr_reg[2] ,
    \round_ctr_reg[2]_0 ,
    \FSM_onehot_current_state_reg[0] ,
    key_IBUF,
    Q,
    \key_reg_reg[28] ,
    \key_reg_reg[63] ,
    \key_reg_reg[63]_0 ,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[88] ,
    \share1_reg_reg[89] ,
    post_linear_share1);
  output [31:0]D;
  output [7:0]\key_reg_reg[127] ;
  output \round_ctr_reg[2] ;
  output [16:0]\round_ctr_reg[2]_0 ;
  output [1:0]\FSM_onehot_current_state_reg[0] ;
  input [31:0]key_IBUF;
  input [0:0]Q;
  input \key_reg_reg[28] ;
  input [39:0]\key_reg_reg[63] ;
  input [3:0]\key_reg_reg[63]_0 ;
  input [1:0]plaintext_IBUF;
  input [1:0]mask_in_IBUF;
  input \share1_reg_reg[88] ;
  input \share1_reg_reg[89] ;
  input [1:0]post_linear_share1;

  wire [31:0]D;
  wire [1:0]\FSM_onehot_current_state_reg[0] ;
  wire [0:0]Q;
  wire g0_b0__18_n_0;
  wire g0_b1__18_n_0;
  wire g0_b2__18_n_0;
  wire g0_b3__18_n_0;
  wire g0_b4__18_n_0;
  wire g0_b5__18_n_0;
  wire g0_b6__18_n_0;
  wire g0_b7__18_n_0;
  wire g1_b0__18_n_0;
  wire g1_b1__18_n_0;
  wire g1_b2__18_n_0;
  wire g1_b3__18_n_0;
  wire g1_b4__18_n_0;
  wire g1_b5__18_n_0;
  wire g1_b6__18_n_0;
  wire g1_b7__18_n_0;
  wire g2_b0__18_n_0;
  wire g2_b1__18_n_0;
  wire g2_b2__18_n_0;
  wire g2_b3__18_n_0;
  wire g2_b4__18_n_0;
  wire g2_b5__18_n_0;
  wire g2_b6__18_n_0;
  wire g2_b7__18_n_0;
  wire g3_b0__18_n_0;
  wire g3_b1__18_n_0;
  wire g3_b2__18_n_0;
  wire g3_b3__18_n_0;
  wire g3_b4__18_n_0;
  wire g3_b5__18_n_0;
  wire g3_b6__18_n_0;
  wire g3_b7__18_n_0;
  wire [31:0]key_IBUF;
  wire \key_reg[25]_i_3_n_0 ;
  wire \key_reg[25]_i_4_n_0 ;
  wire \key_reg[26]_i_3_n_0 ;
  wire \key_reg[27]_i_3_n_0 ;
  wire \key_reg[28]_i_3_n_0 ;
  wire \key_reg[29]_i_3_n_0 ;
  wire \key_reg[30]_i_3_n_0 ;
  wire \key_reg[31]_i_3_n_0 ;
  wire \key_reg_reg[120]_i_4_n_0 ;
  wire \key_reg_reg[120]_i_5_n_0 ;
  wire \key_reg_reg[126]_i_4_n_0 ;
  wire \key_reg_reg[126]_i_5_n_0 ;
  wire [7:0]\key_reg_reg[127] ;
  wire \key_reg_reg[26]_i_4_n_0 ;
  wire \key_reg_reg[26]_i_5_n_0 ;
  wire \key_reg_reg[27]_i_4_n_0 ;
  wire \key_reg_reg[27]_i_5_n_0 ;
  wire \key_reg_reg[28] ;
  wire \key_reg_reg[28]_i_4_n_0 ;
  wire \key_reg_reg[28]_i_5_n_0 ;
  wire [39:0]\key_reg_reg[63] ;
  wire [3:0]\key_reg_reg[63]_0 ;
  wire [1:0]mask_in_IBUF;
  wire [89:89]next_round_key;
  wire [1:0]plaintext_IBUF;
  wire [1:0]post_linear_share1;
  wire [89:88]round_ark_share1;
  wire \round_ctr_reg[2] ;
  wire [16:0]\round_ctr_reg[2]_0 ;
  wire \share1_reg[57]_i_12_n_0 ;
  wire \share1_reg[61]_i_9_n_0 ;
  wire \share1_reg[62]_i_7_n_0 ;
  wire \share1_reg[63]_i_9_n_0 ;
  wire \share1_reg_reg[57]_i_10_n_0 ;
  wire \share1_reg_reg[57]_i_11_n_0 ;
  wire \share1_reg_reg[61]_i_7_n_0 ;
  wire \share1_reg_reg[61]_i_8_n_0 ;
  wire \share1_reg_reg[63]_i_7_n_0 ;
  wire \share1_reg_reg[63]_i_8_n_0 ;
  wire \share1_reg_reg[88] ;
  wire \share1_reg_reg[89] ;
  wire [31:24]sub_rot_w3;

  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g0_b0__18_n_0));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g0_b1__18_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g0_b2__18_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g0_b3__18_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g0_b4__18_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g0_b5__18_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g0_b6__18_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g0_b7__18_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g1_b0__18_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g1_b1__18_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g1_b2__18_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g1_b3__18_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g1_b4__18_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g1_b5__18_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g1_b6__18_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g1_b7__18_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g2_b0__18_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g2_b1__18_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g2_b2__18_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g2_b3__18_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g2_b4__18_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g2_b5__18_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g2_b6__18_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g2_b7__18_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g3_b0__18_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g3_b1__18_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g3_b2__18_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g3_b3__18_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g3_b4__18_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g3_b5__18_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g3_b6__18_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__18
       (.I0(\key_reg_reg[63] [0]),
        .I1(\key_reg_reg[63] [1]),
        .I2(\key_reg_reg[63] [2]),
        .I3(\key_reg_reg[63] [3]),
        .I4(\key_reg_reg[63] [4]),
        .I5(\key_reg_reg[63] [5]),
        .O(g3_b7__18_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    \key_reg[120]_i_1 
       (.I0(key_IBUF[24]),
        .I1(Q),
        .I2(\key_reg_reg[127] [0]),
        .I3(\key_reg_reg[28] ),
        .O(D[24]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h66666966)) 
    \key_reg[120]_i_2 
       (.I0(sub_rot_w3[24]),
        .I1(\key_reg_reg[63] [32]),
        .I2(\key_reg_reg[63]_0 [1]),
        .I3(\key_reg_reg[63]_0 [0]),
        .I4(\key_reg_reg[63]_0 [2]),
        .O(\key_reg_reg[127] [0]));
  LUT4 #(
    .INIT(16'hF888)) 
    \key_reg[121]_i_1 
       (.I0(key_IBUF[25]),
        .I1(Q),
        .I2(\key_reg_reg[127] [1]),
        .I3(\key_reg_reg[28] ),
        .O(D[25]));
  LUT6 #(
    .INIT(64'h6666666666999666)) 
    \key_reg[121]_i_2 
       (.I0(sub_rot_w3[25]),
        .I1(\key_reg_reg[63] [33]),
        .I2(\key_reg_reg[63]_0 [3]),
        .I3(\key_reg_reg[63]_0 [0]),
        .I4(\key_reg_reg[63]_0 [1]),
        .I5(\key_reg_reg[63]_0 [2]),
        .O(\key_reg_reg[127] [1]));
  LUT4 #(
    .INIT(16'hF888)) 
    \key_reg[122]_i_1 
       (.I0(key_IBUF[26]),
        .I1(Q),
        .I2(\key_reg_reg[127] [2]),
        .I3(\key_reg_reg[28] ),
        .O(D[26]));
  LUT6 #(
    .INIT(64'h6666666669966666)) 
    \key_reg[122]_i_2 
       (.I0(sub_rot_w3[26]),
        .I1(\key_reg_reg[63] [34]),
        .I2(\key_reg_reg[63]_0 [3]),
        .I3(\key_reg_reg[63]_0 [0]),
        .I4(\key_reg_reg[63]_0 [1]),
        .I5(\key_reg_reg[63]_0 [2]),
        .O(\key_reg_reg[127] [2]));
  LUT4 #(
    .INIT(16'hF888)) 
    \key_reg[123]_i_1 
       (.I0(key_IBUF[27]),
        .I1(Q),
        .I2(\key_reg_reg[127] [3]),
        .I3(\key_reg_reg[28] ),
        .O(D[27]));
  LUT6 #(
    .INIT(64'h6666666666966966)) 
    \key_reg[123]_i_2 
       (.I0(sub_rot_w3[27]),
        .I1(\key_reg_reg[63] [35]),
        .I2(\key_reg_reg[63]_0 [3]),
        .I3(\key_reg_reg[63]_0 [2]),
        .I4(\key_reg_reg[63]_0 [0]),
        .I5(\key_reg_reg[63]_0 [1]),
        .O(\key_reg_reg[127] [3]));
  LUT4 #(
    .INIT(16'hF888)) 
    \key_reg[124]_i_1 
       (.I0(key_IBUF[28]),
        .I1(Q),
        .I2(\key_reg_reg[127] [4]),
        .I3(\key_reg_reg[28] ),
        .O(D[28]));
  LUT6 #(
    .INIT(64'h6666699666966666)) 
    \key_reg[124]_i_2 
       (.I0(sub_rot_w3[28]),
        .I1(\key_reg_reg[63] [36]),
        .I2(\key_reg_reg[63]_0 [3]),
        .I3(\key_reg_reg[63]_0 [2]),
        .I4(\key_reg_reg[63]_0 [1]),
        .I5(\key_reg_reg[63]_0 [0]),
        .O(\key_reg_reg[127] [4]));
  LUT4 #(
    .INIT(16'hF888)) 
    \key_reg[125]_i_1 
       (.I0(key_IBUF[29]),
        .I1(Q),
        .I2(\key_reg_reg[127] [5]),
        .I3(\key_reg_reg[28] ),
        .O(D[29]));
  LUT6 #(
    .INIT(64'h6666699666666666)) 
    \key_reg[125]_i_2 
       (.I0(sub_rot_w3[29]),
        .I1(\key_reg_reg[63] [37]),
        .I2(\key_reg_reg[63]_0 [3]),
        .I3(\key_reg_reg[63]_0 [2]),
        .I4(\key_reg_reg[63]_0 [0]),
        .I5(\key_reg_reg[63]_0 [1]),
        .O(\key_reg_reg[127] [5]));
  LUT4 #(
    .INIT(16'hF888)) 
    \key_reg[126]_i_1 
       (.I0(key_IBUF[30]),
        .I1(Q),
        .I2(\key_reg_reg[127] [6]),
        .I3(\key_reg_reg[28] ),
        .O(D[30]));
  LUT6 #(
    .INIT(64'h6666666696666666)) 
    \key_reg[126]_i_2 
       (.I0(sub_rot_w3[30]),
        .I1(\key_reg_reg[63] [38]),
        .I2(\key_reg_reg[63]_0 [1]),
        .I3(\key_reg_reg[63]_0 [0]),
        .I4(\key_reg_reg[63]_0 [2]),
        .I5(\key_reg_reg[63]_0 [3]),
        .O(\key_reg_reg[127] [6]));
  LUT4 #(
    .INIT(16'hF888)) 
    \key_reg[127]_i_1 
       (.I0(key_IBUF[31]),
        .I1(Q),
        .I2(\key_reg_reg[127] [7]),
        .I3(\key_reg_reg[28] ),
        .O(D[31]));
  LUT6 #(
    .INIT(64'h6666666666666696)) 
    \key_reg[127]_i_2 
       (.I0(sub_rot_w3[31]),
        .I1(\key_reg_reg[63] [39]),
        .I2(\key_reg_reg[63]_0 [3]),
        .I3(\key_reg_reg[63]_0 [2]),
        .I4(\key_reg_reg[63]_0 [1]),
        .I5(\key_reg_reg[63]_0 [0]),
        .O(\key_reg_reg[127] [7]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[24]_i_1 
       (.I0(key_IBUF[0]),
        .I1(Q),
        .I2(\key_reg_reg[63] [16]),
        .I3(\round_ctr_reg[2] ),
        .I4(\key_reg_reg[63] [8]),
        .I5(\key_reg_reg[28] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[25]_i_1 
       (.I0(key_IBUF[1]),
        .I1(Q),
        .I2(\key_reg_reg[63] [17]),
        .I3(next_round_key),
        .I4(\key_reg_reg[63] [9]),
        .I5(\key_reg_reg[28] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h1DE2E21DE21D1DE2)) 
    \key_reg[25]_i_2 
       (.I0(\key_reg[25]_i_3_n_0 ),
        .I1(\key_reg_reg[63]_0 [3]),
        .I2(\key_reg[25]_i_4_n_0 ),
        .I3(\key_reg_reg[63] [33]),
        .I4(sub_rot_w3[25]),
        .I5(\key_reg_reg[63] [25]),
        .O(next_round_key));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \key_reg[25]_i_3 
       (.I0(\key_reg_reg[63]_0 [0]),
        .I1(\key_reg_reg[63]_0 [1]),
        .I2(\key_reg_reg[63]_0 [2]),
        .O(\key_reg[25]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \key_reg[25]_i_4 
       (.I0(\key_reg_reg[63]_0 [0]),
        .I1(\key_reg_reg[63]_0 [1]),
        .I2(\key_reg_reg[63]_0 [2]),
        .O(\key_reg[25]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF999F666F000F000)) 
    \key_reg[26]_i_1 
       (.I0(\round_ctr_reg[2]_0 [11]),
        .I1(\key_reg_reg[63] [18]),
        .I2(key_IBUF[2]),
        .I3(Q),
        .I4(\key_reg_reg[63] [10]),
        .I5(\key_reg_reg[28] ),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \key_reg[26]_i_2 
       (.I0(\key_reg[26]_i_3_n_0 ),
        .I1(\key_reg_reg[26]_i_4_n_0 ),
        .I2(\key_reg_reg[63] [7]),
        .I3(\key_reg_reg[26]_i_5_n_0 ),
        .I4(\key_reg_reg[63] [26]),
        .O(\round_ctr_reg[2]_0 [11]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFBBF0440)) 
    \key_reg[26]_i_3 
       (.I0(\key_reg_reg[63]_0 [2]),
        .I1(\key_reg_reg[63]_0 [1]),
        .I2(\key_reg_reg[63]_0 [0]),
        .I3(\key_reg_reg[63]_0 [3]),
        .I4(\key_reg_reg[63] [34]),
        .O(\key_reg[26]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF999F666F000F000)) 
    \key_reg[27]_i_1 
       (.I0(\round_ctr_reg[2]_0 [12]),
        .I1(\key_reg_reg[63] [19]),
        .I2(key_IBUF[3]),
        .I3(Q),
        .I4(\key_reg_reg[63] [11]),
        .I5(\key_reg_reg[28] ),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \key_reg[27]_i_2 
       (.I0(\key_reg[27]_i_3_n_0 ),
        .I1(\key_reg_reg[27]_i_4_n_0 ),
        .I2(\key_reg_reg[63] [7]),
        .I3(\key_reg_reg[27]_i_5_n_0 ),
        .I4(\key_reg_reg[63] [27]),
        .O(\round_ctr_reg[2]_0 [12]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFBEF0410)) 
    \key_reg[27]_i_3 
       (.I0(\key_reg_reg[63]_0 [1]),
        .I1(\key_reg_reg[63]_0 [0]),
        .I2(\key_reg_reg[63]_0 [2]),
        .I3(\key_reg_reg[63]_0 [3]),
        .I4(\key_reg_reg[63] [35]),
        .O(\key_reg[27]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF999F666F000F000)) 
    \key_reg[28]_i_1 
       (.I0(\round_ctr_reg[2]_0 [13]),
        .I1(\key_reg_reg[63] [20]),
        .I2(key_IBUF[4]),
        .I3(Q),
        .I4(\key_reg_reg[63] [12]),
        .I5(\key_reg_reg[28] ),
        .O(D[4]));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \key_reg[28]_i_2 
       (.I0(\key_reg[28]_i_3_n_0 ),
        .I1(\key_reg_reg[28]_i_4_n_0 ),
        .I2(\key_reg_reg[63] [7]),
        .I3(\key_reg_reg[28]_i_5_n_0 ),
        .I4(\key_reg_reg[63] [28]),
        .O(\round_ctr_reg[2]_0 [13]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hF9DF0620)) 
    \key_reg[28]_i_3 
       (.I0(\key_reg_reg[63]_0 [0]),
        .I1(\key_reg_reg[63]_0 [1]),
        .I2(\key_reg_reg[63]_0 [2]),
        .I3(\key_reg_reg[63]_0 [3]),
        .I4(\key_reg_reg[63] [36]),
        .O(\key_reg[28]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[29]_i_1 
       (.I0(key_IBUF[5]),
        .I1(Q),
        .I2(\key_reg_reg[63] [21]),
        .I3(\round_ctr_reg[2]_0 [14]),
        .I4(\key_reg_reg[63] [13]),
        .I5(\key_reg_reg[28] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'hD72828D728D7D728)) 
    \key_reg[29]_i_2 
       (.I0(\key_reg[29]_i_3_n_0 ),
        .I1(\key_reg_reg[63]_0 [2]),
        .I2(\key_reg_reg[63]_0 [3]),
        .I3(\key_reg_reg[63] [37]),
        .I4(sub_rot_w3[29]),
        .I5(\key_reg_reg[63] [29]),
        .O(\round_ctr_reg[2]_0 [14]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \key_reg[29]_i_3 
       (.I0(\key_reg_reg[63]_0 [1]),
        .I1(\key_reg_reg[63]_0 [0]),
        .O(\key_reg[29]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[30]_i_1 
       (.I0(key_IBUF[6]),
        .I1(Q),
        .I2(\key_reg_reg[63] [22]),
        .I3(\round_ctr_reg[2]_0 [15]),
        .I4(\key_reg_reg[63] [14]),
        .I5(\key_reg_reg[28] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'hBF4040BF40BFBF40)) 
    \key_reg[30]_i_2 
       (.I0(\key_reg_reg[63]_0 [3]),
        .I1(\key_reg_reg[63]_0 [2]),
        .I2(\key_reg[30]_i_3_n_0 ),
        .I3(\key_reg_reg[63] [38]),
        .I4(sub_rot_w3[30]),
        .I5(\key_reg_reg[63] [30]),
        .O(\round_ctr_reg[2]_0 [15]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \key_reg[30]_i_3 
       (.I0(\key_reg_reg[63]_0 [1]),
        .I1(\key_reg_reg[63]_0 [0]),
        .O(\key_reg[30]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[31]_i_1 
       (.I0(key_IBUF[7]),
        .I1(Q),
        .I2(\key_reg_reg[63] [23]),
        .I3(\round_ctr_reg[2]_0 [16]),
        .I4(\key_reg_reg[63] [15]),
        .I5(\key_reg_reg[28] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'hDF2020DF20DFDF20)) 
    \key_reg[31]_i_2 
       (.I0(\key_reg[31]_i_3_n_0 ),
        .I1(\key_reg_reg[63]_0 [2]),
        .I2(\key_reg_reg[63]_0 [3]),
        .I3(\key_reg_reg[63] [39]),
        .I4(sub_rot_w3[31]),
        .I5(\key_reg_reg[63] [31]),
        .O(\round_ctr_reg[2]_0 [16]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \key_reg[31]_i_3 
       (.I0(\key_reg_reg[63]_0 [1]),
        .I1(\key_reg_reg[63]_0 [0]),
        .O(\key_reg[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[56]_i_1 
       (.I0(key_IBUF[8]),
        .I1(Q),
        .I2(\round_ctr_reg[2] ),
        .I3(\key_reg_reg[63] [16]),
        .I4(\key_reg_reg[28] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[57]_i_1 
       (.I0(key_IBUF[9]),
        .I1(Q),
        .I2(\key_reg_reg[63] [25]),
        .I3(\key_reg_reg[127] [1]),
        .I4(\key_reg_reg[63] [17]),
        .I5(\key_reg_reg[28] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[58]_i_1 
       (.I0(key_IBUF[10]),
        .I1(Q),
        .I2(\key_reg_reg[63] [26]),
        .I3(\key_reg_reg[127] [2]),
        .I4(\key_reg_reg[63] [18]),
        .I5(\key_reg_reg[28] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[59]_i_1 
       (.I0(key_IBUF[11]),
        .I1(Q),
        .I2(\key_reg_reg[63] [27]),
        .I3(\key_reg_reg[127] [3]),
        .I4(\key_reg_reg[63] [19]),
        .I5(\key_reg_reg[28] ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[60]_i_1 
       (.I0(key_IBUF[12]),
        .I1(Q),
        .I2(\key_reg_reg[63] [28]),
        .I3(\key_reg_reg[127] [4]),
        .I4(\key_reg_reg[63] [20]),
        .I5(\key_reg_reg[28] ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[61]_i_1 
       (.I0(key_IBUF[13]),
        .I1(Q),
        .I2(\key_reg_reg[63] [29]),
        .I3(\key_reg_reg[127] [5]),
        .I4(\key_reg_reg[63] [21]),
        .I5(\key_reg_reg[28] ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[62]_i_1 
       (.I0(key_IBUF[14]),
        .I1(Q),
        .I2(\key_reg_reg[63] [30]),
        .I3(\key_reg_reg[127] [6]),
        .I4(\key_reg_reg[63] [22]),
        .I5(\key_reg_reg[28] ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[63]_i_1 
       (.I0(key_IBUF[15]),
        .I1(Q),
        .I2(\key_reg_reg[63] [31]),
        .I3(\key_reg_reg[127] [7]),
        .I4(\key_reg_reg[63] [23]),
        .I5(\key_reg_reg[28] ),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    \key_reg[88]_i_1 
       (.I0(key_IBUF[16]),
        .I1(Q),
        .I2(\round_ctr_reg[2] ),
        .I3(\key_reg_reg[28] ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hFB0404FB04FBFB04)) 
    \key_reg[88]_i_2 
       (.I0(\key_reg_reg[63]_0 [2]),
        .I1(\key_reg_reg[63]_0 [0]),
        .I2(\key_reg_reg[63]_0 [1]),
        .I3(\key_reg_reg[63] [32]),
        .I4(sub_rot_w3[24]),
        .I5(\key_reg_reg[63] [24]),
        .O(\round_ctr_reg[2] ));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[89]_i_1 
       (.I0(key_IBUF[17]),
        .I1(Q),
        .I2(\key_reg_reg[127] [1]),
        .I3(\key_reg_reg[63] [25]),
        .I4(\key_reg_reg[28] ),
        .O(D[17]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[90]_i_1 
       (.I0(key_IBUF[18]),
        .I1(Q),
        .I2(\key_reg_reg[127] [2]),
        .I3(\key_reg_reg[63] [26]),
        .I4(\key_reg_reg[28] ),
        .O(D[18]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[91]_i_1 
       (.I0(key_IBUF[19]),
        .I1(Q),
        .I2(\key_reg_reg[127] [3]),
        .I3(\key_reg_reg[63] [27]),
        .I4(\key_reg_reg[28] ),
        .O(D[19]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[92]_i_1 
       (.I0(key_IBUF[20]),
        .I1(Q),
        .I2(\key_reg_reg[127] [4]),
        .I3(\key_reg_reg[63] [28]),
        .I4(\key_reg_reg[28] ),
        .O(D[20]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[93]_i_1 
       (.I0(key_IBUF[21]),
        .I1(Q),
        .I2(\key_reg_reg[127] [5]),
        .I3(\key_reg_reg[63] [29]),
        .I4(\key_reg_reg[28] ),
        .O(D[21]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[94]_i_1 
       (.I0(key_IBUF[22]),
        .I1(Q),
        .I2(\key_reg_reg[127] [6]),
        .I3(\key_reg_reg[63] [30]),
        .I4(\key_reg_reg[28] ),
        .O(D[22]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[95]_i_1 
       (.I0(key_IBUF[23]),
        .I1(Q),
        .I2(\key_reg_reg[127] [7]),
        .I3(\key_reg_reg[63] [31]),
        .I4(\key_reg_reg[28] ),
        .O(D[23]));
  MUXF8 \key_reg_reg[120]_i_3 
       (.I0(\key_reg_reg[120]_i_4_n_0 ),
        .I1(\key_reg_reg[120]_i_5_n_0 ),
        .O(sub_rot_w3[24]),
        .S(\key_reg_reg[63] [7]));
  MUXF7 \key_reg_reg[120]_i_4 
       (.I0(g0_b0__18_n_0),
        .I1(g1_b0__18_n_0),
        .O(\key_reg_reg[120]_i_4_n_0 ),
        .S(\key_reg_reg[63] [6]));
  MUXF7 \key_reg_reg[120]_i_5 
       (.I0(g2_b0__18_n_0),
        .I1(g3_b0__18_n_0),
        .O(\key_reg_reg[120]_i_5_n_0 ),
        .S(\key_reg_reg[63] [6]));
  MUXF8 \key_reg_reg[121]_i_3 
       (.I0(\share1_reg_reg[57]_i_10_n_0 ),
        .I1(\share1_reg_reg[57]_i_11_n_0 ),
        .O(sub_rot_w3[25]),
        .S(\key_reg_reg[63] [7]));
  MUXF8 \key_reg_reg[122]_i_3 
       (.I0(\key_reg_reg[26]_i_5_n_0 ),
        .I1(\key_reg_reg[26]_i_4_n_0 ),
        .O(sub_rot_w3[26]),
        .S(\key_reg_reg[63] [7]));
  MUXF8 \key_reg_reg[123]_i_3 
       (.I0(\key_reg_reg[27]_i_5_n_0 ),
        .I1(\key_reg_reg[27]_i_4_n_0 ),
        .O(sub_rot_w3[27]),
        .S(\key_reg_reg[63] [7]));
  MUXF8 \key_reg_reg[124]_i_3 
       (.I0(\key_reg_reg[28]_i_5_n_0 ),
        .I1(\key_reg_reg[28]_i_4_n_0 ),
        .O(sub_rot_w3[28]),
        .S(\key_reg_reg[63] [7]));
  MUXF8 \key_reg_reg[125]_i_3 
       (.I0(\share1_reg_reg[61]_i_7_n_0 ),
        .I1(\share1_reg_reg[61]_i_8_n_0 ),
        .O(sub_rot_w3[29]),
        .S(\key_reg_reg[63] [7]));
  MUXF8 \key_reg_reg[126]_i_3 
       (.I0(\key_reg_reg[126]_i_4_n_0 ),
        .I1(\key_reg_reg[126]_i_5_n_0 ),
        .O(sub_rot_w3[30]),
        .S(\key_reg_reg[63] [7]));
  MUXF7 \key_reg_reg[126]_i_4 
       (.I0(g0_b6__18_n_0),
        .I1(g1_b6__18_n_0),
        .O(\key_reg_reg[126]_i_4_n_0 ),
        .S(\key_reg_reg[63] [6]));
  MUXF7 \key_reg_reg[126]_i_5 
       (.I0(g2_b6__18_n_0),
        .I1(g3_b6__18_n_0),
        .O(\key_reg_reg[126]_i_5_n_0 ),
        .S(\key_reg_reg[63] [6]));
  MUXF8 \key_reg_reg[127]_i_3 
       (.I0(\share1_reg_reg[63]_i_7_n_0 ),
        .I1(\share1_reg_reg[63]_i_8_n_0 ),
        .O(sub_rot_w3[31]),
        .S(\key_reg_reg[63] [7]));
  MUXF7 \key_reg_reg[26]_i_4 
       (.I0(g2_b2__18_n_0),
        .I1(g3_b2__18_n_0),
        .O(\key_reg_reg[26]_i_4_n_0 ),
        .S(\key_reg_reg[63] [6]));
  MUXF7 \key_reg_reg[26]_i_5 
       (.I0(g0_b2__18_n_0),
        .I1(g1_b2__18_n_0),
        .O(\key_reg_reg[26]_i_5_n_0 ),
        .S(\key_reg_reg[63] [6]));
  MUXF7 \key_reg_reg[27]_i_4 
       (.I0(g2_b3__18_n_0),
        .I1(g3_b3__18_n_0),
        .O(\key_reg_reg[27]_i_4_n_0 ),
        .S(\key_reg_reg[63] [6]));
  MUXF7 \key_reg_reg[27]_i_5 
       (.I0(g0_b3__18_n_0),
        .I1(g1_b3__18_n_0),
        .O(\key_reg_reg[27]_i_5_n_0 ),
        .S(\key_reg_reg[63] [6]));
  MUXF7 \key_reg_reg[28]_i_4 
       (.I0(g2_b4__18_n_0),
        .I1(g3_b4__18_n_0),
        .O(\key_reg_reg[28]_i_4_n_0 ),
        .S(\key_reg_reg[63] [6]));
  MUXF7 \key_reg_reg[28]_i_5 
       (.I0(g0_b4__18_n_0),
        .I1(g1_b4__18_n_0),
        .O(\key_reg_reg[28]_i_5_n_0 ),
        .S(\key_reg_reg[63] [6]));
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[25]_i_6 
       (.I0(\key_reg_reg[63] [17]),
        .I1(\key_reg_reg[127] [1]),
        .I2(\key_reg_reg[63] [25]),
        .I3(\key_reg_reg[63] [9]),
        .O(\round_ctr_reg[2]_0 [0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[26]_i_5 
       (.I0(\key_reg_reg[63] [18]),
        .I1(\key_reg_reg[127] [2]),
        .I2(\key_reg_reg[63] [26]),
        .I3(\key_reg_reg[63] [10]),
        .O(\round_ctr_reg[2]_0 [1]));
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[27]_i_6 
       (.I0(\key_reg_reg[63] [19]),
        .I1(\key_reg_reg[127] [3]),
        .I2(\key_reg_reg[63] [27]),
        .I3(\key_reg_reg[63] [11]),
        .O(\round_ctr_reg[2]_0 [2]));
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[28]_i_6 
       (.I0(\key_reg_reg[63] [20]),
        .I1(\key_reg_reg[127] [4]),
        .I2(\key_reg_reg[63] [28]),
        .I3(\key_reg_reg[63] [12]),
        .O(\round_ctr_reg[2]_0 [3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[29]_i_5 
       (.I0(\key_reg_reg[63] [21]),
        .I1(\key_reg_reg[127] [5]),
        .I2(\key_reg_reg[63] [29]),
        .I3(\key_reg_reg[63] [13]),
        .O(\round_ctr_reg[2]_0 [4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[30]_i_5 
       (.I0(\key_reg_reg[63] [22]),
        .I1(\key_reg_reg[127] [6]),
        .I2(\key_reg_reg[63] [30]),
        .I3(\key_reg_reg[63] [14]),
        .O(\round_ctr_reg[2]_0 [5]));
  LUT4 #(
    .INIT(16'h6996)) 
    \share1_reg[31]_i_5 
       (.I0(\key_reg_reg[63] [23]),
        .I1(\key_reg_reg[127] [7]),
        .I2(\key_reg_reg[63] [31]),
        .I3(\key_reg_reg[63] [15]),
        .O(\round_ctr_reg[2]_0 [6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hEBFB1404)) 
    \share1_reg[57]_i_12 
       (.I0(\key_reg_reg[63]_0 [2]),
        .I1(\key_reg_reg[63]_0 [1]),
        .I2(\key_reg_reg[63]_0 [0]),
        .I3(\key_reg_reg[63]_0 [3]),
        .I4(\key_reg_reg[63] [33]),
        .O(\share1_reg[57]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \share1_reg[57]_i_6 
       (.I0(\key_reg_reg[63] [25]),
        .I1(\share1_reg_reg[57]_i_10_n_0 ),
        .I2(\key_reg_reg[63] [7]),
        .I3(\share1_reg_reg[57]_i_11_n_0 ),
        .I4(\share1_reg[57]_i_12_n_0 ),
        .I5(\key_reg_reg[63] [17]),
        .O(\round_ctr_reg[2]_0 [7]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \share1_reg[61]_i_5 
       (.I0(\key_reg_reg[63] [29]),
        .I1(\share1_reg_reg[61]_i_7_n_0 ),
        .I2(\key_reg_reg[63] [7]),
        .I3(\share1_reg_reg[61]_i_8_n_0 ),
        .I4(\share1_reg[61]_i_9_n_0 ),
        .I5(\key_reg_reg[63] [21]),
        .O(\round_ctr_reg[2]_0 [8]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFDDF0220)) 
    \share1_reg[61]_i_9 
       (.I0(\key_reg_reg[63]_0 [1]),
        .I1(\key_reg_reg[63]_0 [0]),
        .I2(\key_reg_reg[63]_0 [2]),
        .I3(\key_reg_reg[63]_0 [3]),
        .I4(\key_reg_reg[63] [37]),
        .O(\share1_reg[61]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h6969966996966996)) 
    \share1_reg[62]_i_5 
       (.I0(\key_reg_reg[63] [30]),
        .I1(sub_rot_w3[30]),
        .I2(\key_reg_reg[63] [38]),
        .I3(\share1_reg[62]_i_7_n_0 ),
        .I4(\key_reg_reg[63]_0 [3]),
        .I5(\key_reg_reg[63] [22]),
        .O(\round_ctr_reg[2]_0 [9]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \share1_reg[62]_i_7 
       (.I0(\key_reg_reg[63]_0 [2]),
        .I1(\key_reg_reg[63]_0 [0]),
        .I2(\key_reg_reg[63]_0 [1]),
        .O(\share1_reg[62]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \share1_reg[63]_i_5 
       (.I0(\key_reg_reg[63] [31]),
        .I1(\share1_reg_reg[63]_i_7_n_0 ),
        .I2(\key_reg_reg[63] [7]),
        .I3(\share1_reg_reg[63]_i_8_n_0 ),
        .I4(\share1_reg[63]_i_9_n_0 ),
        .I5(\key_reg_reg[63] [23]),
        .O(\round_ctr_reg[2]_0 [10]));
  LUT5 #(
    .INIT(32'hFEFF0100)) 
    \share1_reg[63]_i_9 
       (.I0(\key_reg_reg[63]_0 [0]),
        .I1(\key_reg_reg[63]_0 [1]),
        .I2(\key_reg_reg[63]_0 [2]),
        .I3(\key_reg_reg[63]_0 [3]),
        .I4(\key_reg_reg[63] [39]),
        .O(\share1_reg[63]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[88]_i_1 
       (.I0(key_IBUF[16]),
        .I1(plaintext_IBUF[0]),
        .I2(mask_in_IBUF[0]),
        .I3(Q),
        .I4(round_ark_share1[88]),
        .I5(\share1_reg_reg[88] ),
        .O(\FSM_onehot_current_state_reg[0] [0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[88]_i_2 
       (.I0(\round_ctr_reg[2] ),
        .I1(post_linear_share1[0]),
        .O(round_ark_share1[88]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[89]_i_1 
       (.I0(key_IBUF[17]),
        .I1(plaintext_IBUF[1]),
        .I2(mask_in_IBUF[1]),
        .I3(Q),
        .I4(round_ark_share1[89]),
        .I5(\share1_reg_reg[89] ),
        .O(\FSM_onehot_current_state_reg[0] [1]));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[89]_i_2 
       (.I0(next_round_key),
        .I1(post_linear_share1[1]),
        .O(round_ark_share1[89]));
  MUXF7 \share1_reg_reg[57]_i_10 
       (.I0(g0_b1__18_n_0),
        .I1(g1_b1__18_n_0),
        .O(\share1_reg_reg[57]_i_10_n_0 ),
        .S(\key_reg_reg[63] [6]));
  MUXF7 \share1_reg_reg[57]_i_11 
       (.I0(g2_b1__18_n_0),
        .I1(g3_b1__18_n_0),
        .O(\share1_reg_reg[57]_i_11_n_0 ),
        .S(\key_reg_reg[63] [6]));
  MUXF7 \share1_reg_reg[61]_i_7 
       (.I0(g0_b5__18_n_0),
        .I1(g1_b5__18_n_0),
        .O(\share1_reg_reg[61]_i_7_n_0 ),
        .S(\key_reg_reg[63] [6]));
  MUXF7 \share1_reg_reg[61]_i_8 
       (.I0(g2_b5__18_n_0),
        .I1(g3_b5__18_n_0),
        .O(\share1_reg_reg[61]_i_8_n_0 ),
        .S(\key_reg_reg[63] [6]));
  MUXF7 \share1_reg_reg[63]_i_7 
       (.I0(g0_b7__18_n_0),
        .I1(g1_b7__18_n_0),
        .O(\share1_reg_reg[63]_i_7_n_0 ),
        .S(\key_reg_reg[63] [6]));
  MUXF7 \share1_reg_reg[63]_i_8 
       (.I0(g2_b7__18_n_0),
        .I1(g3_b7__18_n_0),
        .O(\share1_reg_reg[63]_i_8_n_0 ),
        .S(\key_reg_reg[63] [6]));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_31
   (D,
    \key_reg_reg[15] ,
    \key_reg_reg[119] ,
    \FSM_onehot_current_state_reg[0] ,
    key_IBUF,
    Q,
    \key_reg_reg[87] ,
    \key_reg_reg[22] ,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[20] ,
    \share1_reg_reg[52] ,
    post_linear_share1);
  output [31:0]D;
  output [4:0]\key_reg_reg[15] ;
  output [15:0]\key_reg_reg[119] ;
  output [10:0]\FSM_onehot_current_state_reg[0] ;
  input [31:0]key_IBUF;
  input [0:0]Q;
  input [39:0]\key_reg_reg[87] ;
  input \key_reg_reg[22] ;
  input [10:0]plaintext_IBUF;
  input [10:0]mask_in_IBUF;
  input \share1_reg_reg[20] ;
  input \share1_reg_reg[52] ;
  input [10:0]post_linear_share1;

  wire [31:0]D;
  wire [10:0]\FSM_onehot_current_state_reg[0] ;
  wire [0:0]Q;
  wire g0_b0__17_n_0;
  wire g0_b1__17_n_0;
  wire g0_b2__17_n_0;
  wire g0_b3__17_n_0;
  wire g0_b4__17_n_0;
  wire g0_b5__17_n_0;
  wire g0_b6__17_n_0;
  wire g0_b7__17_n_0;
  wire g1_b0__17_n_0;
  wire g1_b1__17_n_0;
  wire g1_b2__17_n_0;
  wire g1_b3__17_n_0;
  wire g1_b4__17_n_0;
  wire g1_b5__17_n_0;
  wire g1_b6__17_n_0;
  wire g1_b7__17_n_0;
  wire g2_b0__17_n_0;
  wire g2_b1__17_n_0;
  wire g2_b2__17_n_0;
  wire g2_b3__17_n_0;
  wire g2_b4__17_n_0;
  wire g2_b5__17_n_0;
  wire g2_b6__17_n_0;
  wire g2_b7__17_n_0;
  wire g3_b0__17_n_0;
  wire g3_b1__17_n_0;
  wire g3_b2__17_n_0;
  wire g3_b3__17_n_0;
  wire g3_b4__17_n_0;
  wire g3_b5__17_n_0;
  wire g3_b6__17_n_0;
  wire g3_b7__17_n_0;
  wire [31:0]key_IBUF;
  wire \key_reg_reg[112]_i_3_n_0 ;
  wire \key_reg_reg[112]_i_4_n_0 ;
  wire \key_reg_reg[113]_i_3_n_0 ;
  wire \key_reg_reg[113]_i_4_n_0 ;
  wire \key_reg_reg[114]_i_3_n_0 ;
  wire \key_reg_reg[114]_i_4_n_0 ;
  wire \key_reg_reg[117]_i_3_n_0 ;
  wire \key_reg_reg[117]_i_4_n_0 ;
  wire \key_reg_reg[118]_i_3_n_0 ;
  wire \key_reg_reg[118]_i_4_n_0 ;
  wire [15:0]\key_reg_reg[119] ;
  wire \key_reg_reg[119]_i_3_n_0 ;
  wire \key_reg_reg[119]_i_4_n_0 ;
  wire [4:0]\key_reg_reg[15] ;
  wire \key_reg_reg[22] ;
  wire [39:0]\key_reg_reg[87] ;
  wire [10:0]mask_in_IBUF;
  wire [52:49]next_round_key;
  wire [20:17]p_0_in;
  wire [10:0]plaintext_IBUF;
  wire [10:0]post_linear_share1;
  wire [116:17]round_ark_share1;
  wire \share1_reg_reg[20] ;
  wire \share1_reg_reg[52] ;
  wire \share1_reg_reg[83]_i_3_n_0 ;
  wire \share1_reg_reg[83]_i_4_n_0 ;
  wire \share1_reg_reg[84]_i_3_n_0 ;
  wire \share1_reg_reg[84]_i_4_n_0 ;
  wire [23:16]sub_rot_w3;

  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g0_b0__17_n_0));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g0_b1__17_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g0_b2__17_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g0_b3__17_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g0_b4__17_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g0_b5__17_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g0_b6__17_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g0_b7__17_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g1_b0__17_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g1_b1__17_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g1_b2__17_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g1_b3__17_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g1_b4__17_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g1_b5__17_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g1_b6__17_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g1_b7__17_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g2_b0__17_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g2_b1__17_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g2_b2__17_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g2_b3__17_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g2_b4__17_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g2_b5__17_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g2_b6__17_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g2_b7__17_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g3_b0__17_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g3_b1__17_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g3_b2__17_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g3_b3__17_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g3_b4__17_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g3_b5__17_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g3_b6__17_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__17
       (.I0(\key_reg_reg[87] [0]),
        .I1(\key_reg_reg[87] [1]),
        .I2(\key_reg_reg[87] [2]),
        .I3(\key_reg_reg[87] [3]),
        .I4(\key_reg_reg[87] [4]),
        .I5(\key_reg_reg[87] [5]),
        .O(g3_b7__17_n_0));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[112]_i_1 
       (.I0(key_IBUF[24]),
        .I1(Q),
        .I2(sub_rot_w3[16]),
        .I3(\key_reg_reg[87] [32]),
        .I4(\key_reg_reg[22] ),
        .O(D[24]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[113]_i_1 
       (.I0(key_IBUF[25]),
        .I1(Q),
        .I2(sub_rot_w3[17]),
        .I3(\key_reg_reg[87] [33]),
        .I4(\key_reg_reg[22] ),
        .O(D[25]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[114]_i_1 
       (.I0(key_IBUF[26]),
        .I1(Q),
        .I2(sub_rot_w3[18]),
        .I3(\key_reg_reg[87] [34]),
        .I4(\key_reg_reg[22] ),
        .O(D[26]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[115]_i_1 
       (.I0(key_IBUF[27]),
        .I1(Q),
        .I2(sub_rot_w3[19]),
        .I3(\key_reg_reg[87] [35]),
        .I4(\key_reg_reg[22] ),
        .O(D[27]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[116]_i_1 
       (.I0(key_IBUF[28]),
        .I1(Q),
        .I2(sub_rot_w3[20]),
        .I3(\key_reg_reg[87] [36]),
        .I4(\key_reg_reg[22] ),
        .O(D[28]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[117]_i_1 
       (.I0(key_IBUF[29]),
        .I1(Q),
        .I2(sub_rot_w3[21]),
        .I3(\key_reg_reg[87] [37]),
        .I4(\key_reg_reg[22] ),
        .O(D[29]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[118]_i_1 
       (.I0(key_IBUF[30]),
        .I1(Q),
        .I2(sub_rot_w3[22]),
        .I3(\key_reg_reg[87] [38]),
        .I4(\key_reg_reg[22] ),
        .O(D[30]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[119]_i_1 
       (.I0(key_IBUF[31]),
        .I1(Q),
        .I2(sub_rot_w3[23]),
        .I3(\key_reg_reg[87] [39]),
        .I4(\key_reg_reg[22] ),
        .O(D[31]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[16]_i_1 
       (.I0(key_IBUF[0]),
        .I1(Q),
        .I2(\key_reg_reg[119] [5]),
        .I3(\key_reg_reg[87] [8]),
        .I4(\key_reg_reg[22] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[16]_i_2 
       (.I0(\key_reg_reg[87] [24]),
        .I1(\key_reg_reg[112]_i_3_n_0 ),
        .I2(\key_reg_reg[87] [7]),
        .I3(\key_reg_reg[112]_i_4_n_0 ),
        .I4(\key_reg_reg[87] [32]),
        .I5(\key_reg_reg[87] [16]),
        .O(\key_reg_reg[119] [5]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[17]_i_1 
       (.I0(key_IBUF[1]),
        .I1(Q),
        .I2(next_round_key[49]),
        .I3(\key_reg_reg[87] [9]),
        .I4(\key_reg_reg[22] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[17]_i_2 
       (.I0(\key_reg_reg[87] [25]),
        .I1(\key_reg_reg[113]_i_3_n_0 ),
        .I2(\key_reg_reg[87] [7]),
        .I3(\key_reg_reg[113]_i_4_n_0 ),
        .I4(\key_reg_reg[87] [33]),
        .I5(\key_reg_reg[87] [17]),
        .O(next_round_key[49]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[18]_i_1 
       (.I0(key_IBUF[2]),
        .I1(Q),
        .I2(\key_reg_reg[119] [6]),
        .I3(\key_reg_reg[87] [10]),
        .I4(\key_reg_reg[22] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[18]_i_2 
       (.I0(\key_reg_reg[87] [26]),
        .I1(\key_reg_reg[114]_i_3_n_0 ),
        .I2(\key_reg_reg[87] [7]),
        .I3(\key_reg_reg[114]_i_4_n_0 ),
        .I4(\key_reg_reg[87] [34]),
        .I5(\key_reg_reg[87] [18]),
        .O(\key_reg_reg[119] [6]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[19]_i_1 
       (.I0(key_IBUF[3]),
        .I1(Q),
        .I2(next_round_key[51]),
        .I3(\key_reg_reg[87] [11]),
        .I4(\key_reg_reg[22] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[19]_i_2 
       (.I0(\key_reg_reg[87] [27]),
        .I1(\share1_reg_reg[83]_i_4_n_0 ),
        .I2(\key_reg_reg[87] [7]),
        .I3(\share1_reg_reg[83]_i_3_n_0 ),
        .I4(\key_reg_reg[87] [35]),
        .I5(\key_reg_reg[87] [19]),
        .O(next_round_key[51]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[20]_i_1 
       (.I0(key_IBUF[4]),
        .I1(Q),
        .I2(next_round_key[52]),
        .I3(\key_reg_reg[87] [12]),
        .I4(\key_reg_reg[22] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[20]_i_2 
       (.I0(\key_reg_reg[87] [28]),
        .I1(\share1_reg_reg[84]_i_4_n_0 ),
        .I2(\key_reg_reg[87] [7]),
        .I3(\share1_reg_reg[84]_i_3_n_0 ),
        .I4(\key_reg_reg[87] [36]),
        .I5(\key_reg_reg[87] [20]),
        .O(next_round_key[52]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[21]_i_1 
       (.I0(key_IBUF[5]),
        .I1(Q),
        .I2(\key_reg_reg[119] [7]),
        .I3(\key_reg_reg[87] [13]),
        .I4(\key_reg_reg[22] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[21]_i_2 
       (.I0(\key_reg_reg[87] [29]),
        .I1(\key_reg_reg[117]_i_3_n_0 ),
        .I2(\key_reg_reg[87] [7]),
        .I3(\key_reg_reg[117]_i_4_n_0 ),
        .I4(\key_reg_reg[87] [37]),
        .I5(\key_reg_reg[87] [21]),
        .O(\key_reg_reg[119] [7]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[22]_i_1 
       (.I0(key_IBUF[6]),
        .I1(Q),
        .I2(\key_reg_reg[119] [8]),
        .I3(\key_reg_reg[87] [14]),
        .I4(\key_reg_reg[22] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[22]_i_2 
       (.I0(\key_reg_reg[87] [30]),
        .I1(\key_reg_reg[118]_i_3_n_0 ),
        .I2(\key_reg_reg[87] [7]),
        .I3(\key_reg_reg[118]_i_4_n_0 ),
        .I4(\key_reg_reg[87] [38]),
        .I5(\key_reg_reg[87] [22]),
        .O(\key_reg_reg[119] [8]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[23]_i_1 
       (.I0(key_IBUF[7]),
        .I1(Q),
        .I2(\key_reg_reg[119] [9]),
        .I3(\key_reg_reg[87] [15]),
        .I4(\key_reg_reg[22] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[23]_i_2 
       (.I0(\key_reg_reg[87] [31]),
        .I1(\key_reg_reg[119]_i_3_n_0 ),
        .I2(\key_reg_reg[87] [7]),
        .I3(\key_reg_reg[119]_i_4_n_0 ),
        .I4(\key_reg_reg[87] [39]),
        .I5(\key_reg_reg[87] [23]),
        .O(\key_reg_reg[119] [9]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[48]_i_1 
       (.I0(key_IBUF[8]),
        .I1(Q),
        .I2(\key_reg_reg[87] [24]),
        .I3(\key_reg_reg[15] [0]),
        .I4(\key_reg_reg[87] [16]),
        .I5(\key_reg_reg[22] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[48]_i_2 
       (.I0(\key_reg_reg[112]_i_3_n_0 ),
        .I1(\key_reg_reg[87] [7]),
        .I2(g2_b0__17_n_0),
        .I3(\key_reg_reg[87] [6]),
        .I4(g3_b0__17_n_0),
        .I5(\key_reg_reg[87] [32]),
        .O(\key_reg_reg[15] [0]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[49]_i_1 
       (.I0(key_IBUF[9]),
        .I1(Q),
        .I2(\key_reg_reg[87] [25]),
        .I3(p_0_in[17]),
        .I4(\key_reg_reg[87] [17]),
        .I5(\key_reg_reg[22] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[49]_i_2 
       (.I0(\key_reg_reg[113]_i_3_n_0 ),
        .I1(\key_reg_reg[87] [7]),
        .I2(g2_b1__17_n_0),
        .I3(\key_reg_reg[87] [6]),
        .I4(g3_b1__17_n_0),
        .I5(\key_reg_reg[87] [33]),
        .O(p_0_in[17]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[50]_i_1 
       (.I0(key_IBUF[10]),
        .I1(Q),
        .I2(\key_reg_reg[87] [26]),
        .I3(\key_reg_reg[15] [1]),
        .I4(\key_reg_reg[87] [18]),
        .I5(\key_reg_reg[22] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[50]_i_2 
       (.I0(\key_reg_reg[114]_i_3_n_0 ),
        .I1(\key_reg_reg[87] [7]),
        .I2(g2_b2__17_n_0),
        .I3(\key_reg_reg[87] [6]),
        .I4(g3_b2__17_n_0),
        .I5(\key_reg_reg[87] [34]),
        .O(\key_reg_reg[15] [1]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[51]_i_1 
       (.I0(key_IBUF[11]),
        .I1(Q),
        .I2(\key_reg_reg[87] [27]),
        .I3(p_0_in[19]),
        .I4(\key_reg_reg[87] [19]),
        .I5(\key_reg_reg[22] ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[51]_i_2 
       (.I0(\share1_reg_reg[83]_i_4_n_0 ),
        .I1(\key_reg_reg[87] [7]),
        .I2(g2_b3__17_n_0),
        .I3(\key_reg_reg[87] [6]),
        .I4(g3_b3__17_n_0),
        .I5(\key_reg_reg[87] [35]),
        .O(p_0_in[19]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[52]_i_1 
       (.I0(key_IBUF[12]),
        .I1(Q),
        .I2(\key_reg_reg[87] [28]),
        .I3(p_0_in[20]),
        .I4(\key_reg_reg[87] [20]),
        .I5(\key_reg_reg[22] ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[52]_i_2 
       (.I0(\share1_reg_reg[84]_i_4_n_0 ),
        .I1(\key_reg_reg[87] [7]),
        .I2(g2_b4__17_n_0),
        .I3(\key_reg_reg[87] [6]),
        .I4(g3_b4__17_n_0),
        .I5(\key_reg_reg[87] [36]),
        .O(p_0_in[20]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[53]_i_1 
       (.I0(key_IBUF[13]),
        .I1(Q),
        .I2(\key_reg_reg[87] [29]),
        .I3(\key_reg_reg[15] [2]),
        .I4(\key_reg_reg[87] [21]),
        .I5(\key_reg_reg[22] ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[53]_i_2 
       (.I0(\key_reg_reg[117]_i_3_n_0 ),
        .I1(\key_reg_reg[87] [7]),
        .I2(g2_b5__17_n_0),
        .I3(\key_reg_reg[87] [6]),
        .I4(g3_b5__17_n_0),
        .I5(\key_reg_reg[87] [37]),
        .O(\key_reg_reg[15] [2]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[54]_i_1 
       (.I0(key_IBUF[14]),
        .I1(Q),
        .I2(\key_reg_reg[87] [30]),
        .I3(\key_reg_reg[15] [3]),
        .I4(\key_reg_reg[87] [22]),
        .I5(\key_reg_reg[22] ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[54]_i_2 
       (.I0(\key_reg_reg[118]_i_3_n_0 ),
        .I1(\key_reg_reg[87] [7]),
        .I2(g2_b6__17_n_0),
        .I3(\key_reg_reg[87] [6]),
        .I4(g3_b6__17_n_0),
        .I5(\key_reg_reg[87] [38]),
        .O(\key_reg_reg[15] [3]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[55]_i_1 
       (.I0(key_IBUF[15]),
        .I1(Q),
        .I2(\key_reg_reg[87] [31]),
        .I3(\key_reg_reg[15] [4]),
        .I4(\key_reg_reg[87] [23]),
        .I5(\key_reg_reg[22] ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[55]_i_2 
       (.I0(\key_reg_reg[119]_i_3_n_0 ),
        .I1(\key_reg_reg[87] [7]),
        .I2(g2_b7__17_n_0),
        .I3(\key_reg_reg[87] [6]),
        .I4(g3_b7__17_n_0),
        .I5(\key_reg_reg[87] [39]),
        .O(\key_reg_reg[15] [4]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[80]_i_1 
       (.I0(key_IBUF[16]),
        .I1(Q),
        .I2(\key_reg_reg[87] [32]),
        .I3(sub_rot_w3[16]),
        .I4(\key_reg_reg[87] [24]),
        .I5(\key_reg_reg[22] ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[81]_i_1 
       (.I0(key_IBUF[17]),
        .I1(Q),
        .I2(\key_reg_reg[87] [33]),
        .I3(sub_rot_w3[17]),
        .I4(\key_reg_reg[87] [25]),
        .I5(\key_reg_reg[22] ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[82]_i_1 
       (.I0(key_IBUF[18]),
        .I1(Q),
        .I2(\key_reg_reg[87] [34]),
        .I3(sub_rot_w3[18]),
        .I4(\key_reg_reg[87] [26]),
        .I5(\key_reg_reg[22] ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[83]_i_1 
       (.I0(key_IBUF[19]),
        .I1(Q),
        .I2(\key_reg_reg[87] [35]),
        .I3(sub_rot_w3[19]),
        .I4(\key_reg_reg[87] [27]),
        .I5(\key_reg_reg[22] ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[84]_i_1 
       (.I0(key_IBUF[20]),
        .I1(Q),
        .I2(\key_reg_reg[87] [36]),
        .I3(sub_rot_w3[20]),
        .I4(\key_reg_reg[87] [28]),
        .I5(\key_reg_reg[22] ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[85]_i_1 
       (.I0(key_IBUF[21]),
        .I1(Q),
        .I2(\key_reg_reg[87] [37]),
        .I3(sub_rot_w3[21]),
        .I4(\key_reg_reg[87] [29]),
        .I5(\key_reg_reg[22] ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[86]_i_1 
       (.I0(key_IBUF[22]),
        .I1(Q),
        .I2(\key_reg_reg[87] [38]),
        .I3(sub_rot_w3[22]),
        .I4(\key_reg_reg[87] [30]),
        .I5(\key_reg_reg[22] ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[87]_i_1 
       (.I0(key_IBUF[23]),
        .I1(Q),
        .I2(\key_reg_reg[87] [39]),
        .I3(sub_rot_w3[23]),
        .I4(\key_reg_reg[87] [31]),
        .I5(\key_reg_reg[22] ),
        .O(D[23]));
  MUXF8 \key_reg_reg[112]_i_2 
       (.I0(\key_reg_reg[112]_i_3_n_0 ),
        .I1(\key_reg_reg[112]_i_4_n_0 ),
        .O(sub_rot_w3[16]),
        .S(\key_reg_reg[87] [7]));
  MUXF7 \key_reg_reg[112]_i_3 
       (.I0(g0_b0__17_n_0),
        .I1(g1_b0__17_n_0),
        .O(\key_reg_reg[112]_i_3_n_0 ),
        .S(\key_reg_reg[87] [6]));
  MUXF7 \key_reg_reg[112]_i_4 
       (.I0(g2_b0__17_n_0),
        .I1(g3_b0__17_n_0),
        .O(\key_reg_reg[112]_i_4_n_0 ),
        .S(\key_reg_reg[87] [6]));
  MUXF8 \key_reg_reg[113]_i_2 
       (.I0(\key_reg_reg[113]_i_3_n_0 ),
        .I1(\key_reg_reg[113]_i_4_n_0 ),
        .O(sub_rot_w3[17]),
        .S(\key_reg_reg[87] [7]));
  MUXF7 \key_reg_reg[113]_i_3 
       (.I0(g0_b1__17_n_0),
        .I1(g1_b1__17_n_0),
        .O(\key_reg_reg[113]_i_3_n_0 ),
        .S(\key_reg_reg[87] [6]));
  MUXF7 \key_reg_reg[113]_i_4 
       (.I0(g2_b1__17_n_0),
        .I1(g3_b1__17_n_0),
        .O(\key_reg_reg[113]_i_4_n_0 ),
        .S(\key_reg_reg[87] [6]));
  MUXF8 \key_reg_reg[114]_i_2 
       (.I0(\key_reg_reg[114]_i_3_n_0 ),
        .I1(\key_reg_reg[114]_i_4_n_0 ),
        .O(sub_rot_w3[18]),
        .S(\key_reg_reg[87] [7]));
  MUXF7 \key_reg_reg[114]_i_3 
       (.I0(g0_b2__17_n_0),
        .I1(g1_b2__17_n_0),
        .O(\key_reg_reg[114]_i_3_n_0 ),
        .S(\key_reg_reg[87] [6]));
  MUXF7 \key_reg_reg[114]_i_4 
       (.I0(g2_b2__17_n_0),
        .I1(g3_b2__17_n_0),
        .O(\key_reg_reg[114]_i_4_n_0 ),
        .S(\key_reg_reg[87] [6]));
  MUXF8 \key_reg_reg[115]_i_2 
       (.I0(\share1_reg_reg[83]_i_4_n_0 ),
        .I1(\share1_reg_reg[83]_i_3_n_0 ),
        .O(sub_rot_w3[19]),
        .S(\key_reg_reg[87] [7]));
  MUXF8 \key_reg_reg[116]_i_2 
       (.I0(\share1_reg_reg[84]_i_4_n_0 ),
        .I1(\share1_reg_reg[84]_i_3_n_0 ),
        .O(sub_rot_w3[20]),
        .S(\key_reg_reg[87] [7]));
  MUXF8 \key_reg_reg[117]_i_2 
       (.I0(\key_reg_reg[117]_i_3_n_0 ),
        .I1(\key_reg_reg[117]_i_4_n_0 ),
        .O(sub_rot_w3[21]),
        .S(\key_reg_reg[87] [7]));
  MUXF7 \key_reg_reg[117]_i_3 
       (.I0(g0_b5__17_n_0),
        .I1(g1_b5__17_n_0),
        .O(\key_reg_reg[117]_i_3_n_0 ),
        .S(\key_reg_reg[87] [6]));
  MUXF7 \key_reg_reg[117]_i_4 
       (.I0(g2_b5__17_n_0),
        .I1(g3_b5__17_n_0),
        .O(\key_reg_reg[117]_i_4_n_0 ),
        .S(\key_reg_reg[87] [6]));
  MUXF8 \key_reg_reg[118]_i_2 
       (.I0(\key_reg_reg[118]_i_3_n_0 ),
        .I1(\key_reg_reg[118]_i_4_n_0 ),
        .O(sub_rot_w3[22]),
        .S(\key_reg_reg[87] [7]));
  MUXF7 \key_reg_reg[118]_i_3 
       (.I0(g0_b6__17_n_0),
        .I1(g1_b6__17_n_0),
        .O(\key_reg_reg[118]_i_3_n_0 ),
        .S(\key_reg_reg[87] [6]));
  MUXF7 \key_reg_reg[118]_i_4 
       (.I0(g2_b6__17_n_0),
        .I1(g3_b6__17_n_0),
        .O(\key_reg_reg[118]_i_4_n_0 ),
        .S(\key_reg_reg[87] [6]));
  MUXF8 \key_reg_reg[119]_i_2 
       (.I0(\key_reg_reg[119]_i_3_n_0 ),
        .I1(\key_reg_reg[119]_i_4_n_0 ),
        .O(sub_rot_w3[23]),
        .S(\key_reg_reg[87] [7]));
  MUXF7 \key_reg_reg[119]_i_3 
       (.I0(g0_b7__17_n_0),
        .I1(g1_b7__17_n_0),
        .O(\key_reg_reg[119]_i_3_n_0 ),
        .S(\key_reg_reg[87] [6]));
  MUXF7 \key_reg_reg[119]_i_4 
       (.I0(g2_b7__17_n_0),
        .I1(g3_b7__17_n_0),
        .O(\key_reg_reg[119]_i_4_n_0 ),
        .S(\key_reg_reg[87] [6]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[113]_i_1 
       (.I0(key_IBUF[25]),
        .I1(plaintext_IBUF[8]),
        .I2(mask_in_IBUF[8]),
        .I3(Q),
        .I4(round_ark_share1[113]),
        .I5(\share1_reg_reg[20] ),
        .O(\FSM_onehot_current_state_reg[0] [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[113]_i_2 
       (.I0(p_0_in[17]),
        .I1(post_linear_share1[8]),
        .O(round_ark_share1[113]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[115]_i_1 
       (.I0(key_IBUF[27]),
        .I1(plaintext_IBUF[9]),
        .I2(mask_in_IBUF[9]),
        .I3(Q),
        .I4(round_ark_share1[115]),
        .I5(\share1_reg_reg[20] ),
        .O(\FSM_onehot_current_state_reg[0] [9]));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[115]_i_2 
       (.I0(p_0_in[19]),
        .I1(post_linear_share1[9]),
        .O(round_ark_share1[115]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[116]_i_1 
       (.I0(key_IBUF[28]),
        .I1(plaintext_IBUF[10]),
        .I2(mask_in_IBUF[10]),
        .I3(Q),
        .I4(round_ark_share1[116]),
        .I5(\share1_reg_reg[20] ),
        .O(\FSM_onehot_current_state_reg[0] [10]));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[116]_i_2 
       (.I0(p_0_in[20]),
        .I1(post_linear_share1[10]),
        .O(round_ark_share1[116]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[16]_i_6 
       (.I0(\key_reg_reg[87] [16]),
        .I1(\key_reg_reg[87] [32]),
        .I2(sub_rot_w3[16]),
        .I3(\key_reg_reg[87] [24]),
        .I4(\key_reg_reg[87] [8]),
        .O(\key_reg_reg[119] [0]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[17]_i_1 
       (.I0(key_IBUF[1]),
        .I1(plaintext_IBUF[0]),
        .I2(mask_in_IBUF[0]),
        .I3(Q),
        .I4(round_ark_share1[17]),
        .I5(\share1_reg_reg[20] ),
        .O(\FSM_onehot_current_state_reg[0] [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share1_reg[17]_i_2 
       (.I0(\key_reg_reg[87] [17]),
        .I1(\key_reg_reg[87] [33]),
        .I2(sub_rot_w3[17]),
        .I3(\key_reg_reg[87] [25]),
        .I4(\key_reg_reg[87] [9]),
        .I5(post_linear_share1[0]),
        .O(round_ark_share1[17]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[18]_i_7 
       (.I0(\key_reg_reg[87] [18]),
        .I1(\key_reg_reg[87] [34]),
        .I2(sub_rot_w3[18]),
        .I3(\key_reg_reg[87] [26]),
        .I4(\key_reg_reg[87] [10]),
        .O(\key_reg_reg[119] [1]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[19]_i_1 
       (.I0(key_IBUF[3]),
        .I1(plaintext_IBUF[1]),
        .I2(mask_in_IBUF[1]),
        .I3(Q),
        .I4(round_ark_share1[19]),
        .I5(\share1_reg_reg[20] ),
        .O(\FSM_onehot_current_state_reg[0] [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share1_reg[19]_i_2 
       (.I0(\key_reg_reg[87] [19]),
        .I1(\key_reg_reg[87] [35]),
        .I2(sub_rot_w3[19]),
        .I3(\key_reg_reg[87] [27]),
        .I4(\key_reg_reg[87] [11]),
        .I5(post_linear_share1[1]),
        .O(round_ark_share1[19]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[20]_i_1 
       (.I0(key_IBUF[4]),
        .I1(plaintext_IBUF[2]),
        .I2(mask_in_IBUF[2]),
        .I3(Q),
        .I4(round_ark_share1[20]),
        .I5(\share1_reg_reg[20] ),
        .O(\FSM_onehot_current_state_reg[0] [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share1_reg[20]_i_2 
       (.I0(\key_reg_reg[87] [20]),
        .I1(\key_reg_reg[87] [36]),
        .I2(sub_rot_w3[20]),
        .I3(\key_reg_reg[87] [28]),
        .I4(\key_reg_reg[87] [12]),
        .I5(post_linear_share1[2]),
        .O(round_ark_share1[20]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[21]_i_6 
       (.I0(\key_reg_reg[87] [21]),
        .I1(\key_reg_reg[87] [37]),
        .I2(sub_rot_w3[21]),
        .I3(\key_reg_reg[87] [29]),
        .I4(\key_reg_reg[87] [13]),
        .O(\key_reg_reg[119] [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[22]_i_6 
       (.I0(\key_reg_reg[87] [22]),
        .I1(\key_reg_reg[87] [38]),
        .I2(sub_rot_w3[22]),
        .I3(\key_reg_reg[87] [30]),
        .I4(\key_reg_reg[87] [14]),
        .O(\key_reg_reg[119] [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[23]_i_7 
       (.I0(\key_reg_reg[87] [23]),
        .I1(\key_reg_reg[87] [39]),
        .I2(sub_rot_w3[23]),
        .I3(\key_reg_reg[87] [31]),
        .I4(\key_reg_reg[87] [15]),
        .O(\key_reg_reg[119] [4]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[49]_i_1 
       (.I0(key_IBUF[9]),
        .I1(plaintext_IBUF[3]),
        .I2(mask_in_IBUF[3]),
        .I3(Q),
        .I4(round_ark_share1[49]),
        .I5(\share1_reg_reg[52] ),
        .O(\FSM_onehot_current_state_reg[0] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[49]_i_2 
       (.I0(next_round_key[49]),
        .I1(post_linear_share1[3]),
        .O(round_ark_share1[49]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[51]_i_1 
       (.I0(key_IBUF[11]),
        .I1(plaintext_IBUF[4]),
        .I2(mask_in_IBUF[4]),
        .I3(Q),
        .I4(round_ark_share1[51]),
        .I5(\share1_reg_reg[52] ),
        .O(\FSM_onehot_current_state_reg[0] [4]));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[51]_i_2 
       (.I0(next_round_key[51]),
        .I1(post_linear_share1[4]),
        .O(round_ark_share1[51]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[52]_i_1 
       (.I0(key_IBUF[12]),
        .I1(plaintext_IBUF[5]),
        .I2(mask_in_IBUF[5]),
        .I3(Q),
        .I4(round_ark_share1[52]),
        .I5(\share1_reg_reg[52] ),
        .O(\FSM_onehot_current_state_reg[0] [5]));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[52]_i_2 
       (.I0(next_round_key[52]),
        .I1(post_linear_share1[5]),
        .O(round_ark_share1[52]));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \share1_reg[80]_i_6 
       (.I0(\key_reg_reg[87] [32]),
        .I1(\key_reg_reg[112]_i_4_n_0 ),
        .I2(\key_reg_reg[87] [7]),
        .I3(\key_reg_reg[112]_i_3_n_0 ),
        .I4(\key_reg_reg[87] [24]),
        .O(\key_reg_reg[119] [10]));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \share1_reg[81]_i_6 
       (.I0(\key_reg_reg[87] [33]),
        .I1(\key_reg_reg[113]_i_4_n_0 ),
        .I2(\key_reg_reg[87] [7]),
        .I3(\key_reg_reg[113]_i_3_n_0 ),
        .I4(\key_reg_reg[87] [25]),
        .O(\key_reg_reg[119] [11]));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \share1_reg[82]_i_7 
       (.I0(\key_reg_reg[87] [34]),
        .I1(\key_reg_reg[114]_i_4_n_0 ),
        .I2(\key_reg_reg[87] [7]),
        .I3(\key_reg_reg[114]_i_3_n_0 ),
        .I4(\key_reg_reg[87] [26]),
        .O(\key_reg_reg[119] [12]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[83]_i_1 
       (.I0(key_IBUF[19]),
        .I1(plaintext_IBUF[6]),
        .I2(mask_in_IBUF[6]),
        .I3(Q),
        .I4(round_ark_share1[83]),
        .I5(\share1_reg_reg[20] ),
        .O(\FSM_onehot_current_state_reg[0] [6]));
  LUT6 #(
    .INIT(64'h656A9A959A95656A)) 
    \share1_reg[83]_i_2 
       (.I0(\key_reg_reg[87] [35]),
        .I1(\share1_reg_reg[83]_i_3_n_0 ),
        .I2(\key_reg_reg[87] [7]),
        .I3(\share1_reg_reg[83]_i_4_n_0 ),
        .I4(\key_reg_reg[87] [27]),
        .I5(post_linear_share1[6]),
        .O(round_ark_share1[83]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[84]_i_1 
       (.I0(key_IBUF[20]),
        .I1(plaintext_IBUF[7]),
        .I2(mask_in_IBUF[7]),
        .I3(Q),
        .I4(round_ark_share1[84]),
        .I5(\share1_reg_reg[20] ),
        .O(\FSM_onehot_current_state_reg[0] [7]));
  LUT6 #(
    .INIT(64'h656A9A959A95656A)) 
    \share1_reg[84]_i_2 
       (.I0(\key_reg_reg[87] [36]),
        .I1(\share1_reg_reg[84]_i_3_n_0 ),
        .I2(\key_reg_reg[87] [7]),
        .I3(\share1_reg_reg[84]_i_4_n_0 ),
        .I4(\key_reg_reg[87] [28]),
        .I5(post_linear_share1[7]),
        .O(round_ark_share1[84]));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \share1_reg[85]_i_6 
       (.I0(\key_reg_reg[87] [37]),
        .I1(\key_reg_reg[117]_i_4_n_0 ),
        .I2(\key_reg_reg[87] [7]),
        .I3(\key_reg_reg[117]_i_3_n_0 ),
        .I4(\key_reg_reg[87] [29]),
        .O(\key_reg_reg[119] [13]));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \share1_reg[86]_i_6 
       (.I0(\key_reg_reg[87] [38]),
        .I1(\key_reg_reg[118]_i_4_n_0 ),
        .I2(\key_reg_reg[87] [7]),
        .I3(\key_reg_reg[118]_i_3_n_0 ),
        .I4(\key_reg_reg[87] [30]),
        .O(\key_reg_reg[119] [14]));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \share1_reg[87]_i_7 
       (.I0(\key_reg_reg[87] [39]),
        .I1(\key_reg_reg[119]_i_4_n_0 ),
        .I2(\key_reg_reg[87] [7]),
        .I3(\key_reg_reg[119]_i_3_n_0 ),
        .I4(\key_reg_reg[87] [31]),
        .O(\key_reg_reg[119] [15]));
  MUXF7 \share1_reg_reg[83]_i_3 
       (.I0(g2_b3__17_n_0),
        .I1(g3_b3__17_n_0),
        .O(\share1_reg_reg[83]_i_3_n_0 ),
        .S(\key_reg_reg[87] [6]));
  MUXF7 \share1_reg_reg[83]_i_4 
       (.I0(g0_b3__17_n_0),
        .I1(g1_b3__17_n_0),
        .O(\share1_reg_reg[83]_i_4_n_0 ),
        .S(\key_reg_reg[87] [6]));
  MUXF7 \share1_reg_reg[84]_i_3 
       (.I0(g2_b4__17_n_0),
        .I1(g3_b4__17_n_0),
        .O(\share1_reg_reg[84]_i_3_n_0 ),
        .S(\key_reg_reg[87] [6]));
  MUXF7 \share1_reg_reg[84]_i_4 
       (.I0(g0_b4__17_n_0),
        .I1(g1_b4__17_n_0),
        .O(\share1_reg_reg[84]_i_4_n_0 ),
        .S(\key_reg_reg[87] [6]));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_32
   (D,
    \key_reg_reg[7] ,
    \key_reg_reg[111] ,
    \FSM_onehot_current_state_reg[0] ,
    key_IBUF,
    Q,
    \key_reg_reg[79] ,
    \key_reg_reg[13] ,
    \key_reg_reg[47] ,
    plaintext_IBUF,
    mask_in_IBUF,
    post_linear_share1);
  output [31:0]D;
  output [7:0]\key_reg_reg[7] ;
  output [17:0]\key_reg_reg[111] ;
  output [5:0]\FSM_onehot_current_state_reg[0] ;
  input [31:0]key_IBUF;
  input [0:0]Q;
  input [39:0]\key_reg_reg[79] ;
  input \key_reg_reg[13] ;
  input \key_reg_reg[47] ;
  input [5:0]plaintext_IBUF;
  input [5:0]mask_in_IBUF;
  input [5:0]post_linear_share1;

  wire [31:0]D;
  wire [5:0]\FSM_onehot_current_state_reg[0] ;
  wire [0:0]Q;
  wire g0_b0__16_n_0;
  wire g0_b1__16_n_0;
  wire g0_b2__16_n_0;
  wire g0_b3__16_n_0;
  wire g0_b4__16_n_0;
  wire g0_b5__16_n_0;
  wire g0_b6__16_n_0;
  wire g0_b7__16_n_0;
  wire g1_b0__16_n_0;
  wire g1_b1__16_n_0;
  wire g1_b2__16_n_0;
  wire g1_b3__16_n_0;
  wire g1_b4__16_n_0;
  wire g1_b5__16_n_0;
  wire g1_b6__16_n_0;
  wire g1_b7__16_n_0;
  wire g2_b0__16_n_0;
  wire g2_b1__16_n_0;
  wire g2_b2__16_n_0;
  wire g2_b3__16_n_0;
  wire g2_b4__16_n_0;
  wire g2_b5__16_n_0;
  wire g2_b6__16_n_0;
  wire g2_b7__16_n_0;
  wire g3_b0__16_n_0;
  wire g3_b1__16_n_0;
  wire g3_b2__16_n_0;
  wire g3_b3__16_n_0;
  wire g3_b4__16_n_0;
  wire g3_b5__16_n_0;
  wire g3_b6__16_n_0;
  wire g3_b7__16_n_0;
  wire [31:0]key_IBUF;
  wire \key_reg_reg[104]_i_3_n_0 ;
  wire \key_reg_reg[104]_i_4_n_0 ;
  wire \key_reg_reg[105]_i_3_n_0 ;
  wire \key_reg_reg[105]_i_4_n_0 ;
  wire \key_reg_reg[106]_i_3_n_0 ;
  wire \key_reg_reg[106]_i_4_n_0 ;
  wire \key_reg_reg[107]_i_3_n_0 ;
  wire \key_reg_reg[107]_i_4_n_0 ;
  wire \key_reg_reg[108]_i_3_n_0 ;
  wire \key_reg_reg[108]_i_4_n_0 ;
  wire \key_reg_reg[109]_i_3_n_0 ;
  wire \key_reg_reg[109]_i_4_n_0 ;
  wire \key_reg_reg[110]_i_3_n_0 ;
  wire \key_reg_reg[110]_i_4_n_0 ;
  wire [17:0]\key_reg_reg[111] ;
  wire \key_reg_reg[111]_i_3_n_0 ;
  wire \key_reg_reg[111]_i_4_n_0 ;
  wire \key_reg_reg[13] ;
  wire \key_reg_reg[47] ;
  wire [39:0]\key_reg_reg[79] ;
  wire [7:0]\key_reg_reg[7] ;
  wire [5:0]mask_in_IBUF;
  wire [44:41]next_round_key;
  wire [5:0]plaintext_IBUF;
  wire [5:0]post_linear_share1;
  wire [44:9]round_ark_share1;
  wire [15:8]sub_rot_w3;

  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g0_b0__16_n_0));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g0_b1__16_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g0_b2__16_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g0_b3__16_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g0_b4__16_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g0_b5__16_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g0_b6__16_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g0_b7__16_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g1_b0__16_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g1_b1__16_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g1_b2__16_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g1_b3__16_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g1_b4__16_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g1_b5__16_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g1_b6__16_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g1_b7__16_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g2_b0__16_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g2_b1__16_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g2_b2__16_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g2_b3__16_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g2_b4__16_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g2_b5__16_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g2_b6__16_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g2_b7__16_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g3_b0__16_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g3_b1__16_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g3_b2__16_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g3_b3__16_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g3_b4__16_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g3_b5__16_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g3_b6__16_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__16
       (.I0(\key_reg_reg[79] [0]),
        .I1(\key_reg_reg[79] [1]),
        .I2(\key_reg_reg[79] [2]),
        .I3(\key_reg_reg[79] [3]),
        .I4(\key_reg_reg[79] [4]),
        .I5(\key_reg_reg[79] [5]),
        .O(g3_b7__16_n_0));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[104]_i_1 
       (.I0(key_IBUF[24]),
        .I1(Q),
        .I2(sub_rot_w3[8]),
        .I3(\key_reg_reg[79] [32]),
        .I4(\key_reg_reg[13] ),
        .O(D[24]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[105]_i_1 
       (.I0(key_IBUF[25]),
        .I1(Q),
        .I2(sub_rot_w3[9]),
        .I3(\key_reg_reg[79] [33]),
        .I4(\key_reg_reg[13] ),
        .O(D[25]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[106]_i_1 
       (.I0(key_IBUF[26]),
        .I1(Q),
        .I2(sub_rot_w3[10]),
        .I3(\key_reg_reg[79] [34]),
        .I4(\key_reg_reg[13] ),
        .O(D[26]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[107]_i_1 
       (.I0(key_IBUF[27]),
        .I1(Q),
        .I2(sub_rot_w3[11]),
        .I3(\key_reg_reg[79] [35]),
        .I4(\key_reg_reg[13] ),
        .O(D[27]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[108]_i_1 
       (.I0(key_IBUF[28]),
        .I1(Q),
        .I2(sub_rot_w3[12]),
        .I3(\key_reg_reg[79] [36]),
        .I4(\key_reg_reg[13] ),
        .O(D[28]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[109]_i_1 
       (.I0(key_IBUF[29]),
        .I1(Q),
        .I2(sub_rot_w3[13]),
        .I3(\key_reg_reg[79] [37]),
        .I4(\key_reg_reg[13] ),
        .O(D[29]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[10]_i_1 
       (.I0(key_IBUF[2]),
        .I1(Q),
        .I2(\key_reg_reg[111] [6]),
        .I3(\key_reg_reg[79] [10]),
        .I4(\key_reg_reg[13] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[10]_i_2 
       (.I0(\key_reg_reg[79] [26]),
        .I1(\key_reg_reg[106]_i_3_n_0 ),
        .I2(\key_reg_reg[79] [7]),
        .I3(\key_reg_reg[106]_i_4_n_0 ),
        .I4(\key_reg_reg[79] [34]),
        .I5(\key_reg_reg[79] [18]),
        .O(\key_reg_reg[111] [6]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[110]_i_1 
       (.I0(key_IBUF[30]),
        .I1(Q),
        .I2(sub_rot_w3[14]),
        .I3(\key_reg_reg[79] [38]),
        .I4(\key_reg_reg[47] ),
        .O(D[30]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[111]_i_1 
       (.I0(key_IBUF[31]),
        .I1(Q),
        .I2(sub_rot_w3[15]),
        .I3(\key_reg_reg[79] [39]),
        .I4(\key_reg_reg[47] ),
        .O(D[31]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[11]_i_1 
       (.I0(key_IBUF[3]),
        .I1(Q),
        .I2(next_round_key[43]),
        .I3(\key_reg_reg[79] [11]),
        .I4(\key_reg_reg[13] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[11]_i_2 
       (.I0(\key_reg_reg[79] [27]),
        .I1(\key_reg_reg[107]_i_3_n_0 ),
        .I2(\key_reg_reg[79] [7]),
        .I3(\key_reg_reg[107]_i_4_n_0 ),
        .I4(\key_reg_reg[79] [35]),
        .I5(\key_reg_reg[79] [19]),
        .O(next_round_key[43]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[12]_i_1 
       (.I0(key_IBUF[4]),
        .I1(Q),
        .I2(next_round_key[44]),
        .I3(\key_reg_reg[79] [12]),
        .I4(\key_reg_reg[13] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[12]_i_2 
       (.I0(\key_reg_reg[79] [28]),
        .I1(\key_reg_reg[108]_i_3_n_0 ),
        .I2(\key_reg_reg[79] [7]),
        .I3(\key_reg_reg[108]_i_4_n_0 ),
        .I4(\key_reg_reg[79] [36]),
        .I5(\key_reg_reg[79] [20]),
        .O(next_round_key[44]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[13]_i_1 
       (.I0(key_IBUF[5]),
        .I1(Q),
        .I2(\key_reg_reg[111] [7]),
        .I3(\key_reg_reg[79] [13]),
        .I4(\key_reg_reg[13] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[13]_i_2 
       (.I0(\key_reg_reg[79] [29]),
        .I1(\key_reg_reg[109]_i_3_n_0 ),
        .I2(\key_reg_reg[79] [7]),
        .I3(\key_reg_reg[109]_i_4_n_0 ),
        .I4(\key_reg_reg[79] [37]),
        .I5(\key_reg_reg[79] [21]),
        .O(\key_reg_reg[111] [7]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[14]_i_1 
       (.I0(key_IBUF[6]),
        .I1(Q),
        .I2(\key_reg_reg[111] [8]),
        .I3(\key_reg_reg[79] [14]),
        .I4(\key_reg_reg[47] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[14]_i_2 
       (.I0(\key_reg_reg[79] [30]),
        .I1(\key_reg_reg[110]_i_3_n_0 ),
        .I2(\key_reg_reg[79] [7]),
        .I3(\key_reg_reg[110]_i_4_n_0 ),
        .I4(\key_reg_reg[79] [38]),
        .I5(\key_reg_reg[79] [22]),
        .O(\key_reg_reg[111] [8]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[15]_i_1 
       (.I0(key_IBUF[7]),
        .I1(Q),
        .I2(\key_reg_reg[111] [9]),
        .I3(\key_reg_reg[79] [15]),
        .I4(\key_reg_reg[13] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[15]_i_2 
       (.I0(\key_reg_reg[79] [31]),
        .I1(\key_reg_reg[111]_i_3_n_0 ),
        .I2(\key_reg_reg[79] [7]),
        .I3(\key_reg_reg[111]_i_4_n_0 ),
        .I4(\key_reg_reg[79] [39]),
        .I5(\key_reg_reg[79] [23]),
        .O(\key_reg_reg[111] [9]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[40]_i_1 
       (.I0(key_IBUF[8]),
        .I1(Q),
        .I2(\key_reg_reg[79] [24]),
        .I3(\key_reg_reg[7] [0]),
        .I4(\key_reg_reg[79] [16]),
        .I5(\key_reg_reg[13] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[40]_i_2 
       (.I0(\key_reg_reg[104]_i_3_n_0 ),
        .I1(\key_reg_reg[79] [7]),
        .I2(g2_b0__16_n_0),
        .I3(\key_reg_reg[79] [6]),
        .I4(g3_b0__16_n_0),
        .I5(\key_reg_reg[79] [32]),
        .O(\key_reg_reg[7] [0]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[41]_i_1 
       (.I0(key_IBUF[9]),
        .I1(Q),
        .I2(\key_reg_reg[79] [25]),
        .I3(\key_reg_reg[7] [1]),
        .I4(\key_reg_reg[79] [17]),
        .I5(\key_reg_reg[13] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[41]_i_2 
       (.I0(\key_reg_reg[105]_i_3_n_0 ),
        .I1(\key_reg_reg[79] [7]),
        .I2(g2_b1__16_n_0),
        .I3(\key_reg_reg[79] [6]),
        .I4(g3_b1__16_n_0),
        .I5(\key_reg_reg[79] [33]),
        .O(\key_reg_reg[7] [1]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[42]_i_1 
       (.I0(key_IBUF[10]),
        .I1(Q),
        .I2(\key_reg_reg[79] [26]),
        .I3(\key_reg_reg[7] [2]),
        .I4(\key_reg_reg[79] [18]),
        .I5(\key_reg_reg[13] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[42]_i_2 
       (.I0(\key_reg_reg[106]_i_3_n_0 ),
        .I1(\key_reg_reg[79] [7]),
        .I2(g2_b2__16_n_0),
        .I3(\key_reg_reg[79] [6]),
        .I4(g3_b2__16_n_0),
        .I5(\key_reg_reg[79] [34]),
        .O(\key_reg_reg[7] [2]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[43]_i_1 
       (.I0(key_IBUF[11]),
        .I1(Q),
        .I2(\key_reg_reg[79] [27]),
        .I3(\key_reg_reg[7] [3]),
        .I4(\key_reg_reg[79] [19]),
        .I5(\key_reg_reg[13] ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[43]_i_2 
       (.I0(\key_reg_reg[107]_i_3_n_0 ),
        .I1(\key_reg_reg[79] [7]),
        .I2(g2_b3__16_n_0),
        .I3(\key_reg_reg[79] [6]),
        .I4(g3_b3__16_n_0),
        .I5(\key_reg_reg[79] [35]),
        .O(\key_reg_reg[7] [3]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[44]_i_1 
       (.I0(key_IBUF[12]),
        .I1(Q),
        .I2(\key_reg_reg[79] [28]),
        .I3(\key_reg_reg[7] [4]),
        .I4(\key_reg_reg[79] [20]),
        .I5(\key_reg_reg[13] ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[44]_i_2 
       (.I0(\key_reg_reg[108]_i_3_n_0 ),
        .I1(\key_reg_reg[79] [7]),
        .I2(g2_b4__16_n_0),
        .I3(\key_reg_reg[79] [6]),
        .I4(g3_b4__16_n_0),
        .I5(\key_reg_reg[79] [36]),
        .O(\key_reg_reg[7] [4]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[45]_i_1 
       (.I0(key_IBUF[13]),
        .I1(Q),
        .I2(\key_reg_reg[79] [29]),
        .I3(\key_reg_reg[7] [5]),
        .I4(\key_reg_reg[79] [21]),
        .I5(\key_reg_reg[13] ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[45]_i_2 
       (.I0(\key_reg_reg[109]_i_3_n_0 ),
        .I1(\key_reg_reg[79] [7]),
        .I2(g2_b5__16_n_0),
        .I3(\key_reg_reg[79] [6]),
        .I4(g3_b5__16_n_0),
        .I5(\key_reg_reg[79] [37]),
        .O(\key_reg_reg[7] [5]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[46]_i_1 
       (.I0(key_IBUF[14]),
        .I1(Q),
        .I2(\key_reg_reg[79] [30]),
        .I3(\key_reg_reg[7] [6]),
        .I4(\key_reg_reg[79] [22]),
        .I5(\key_reg_reg[47] ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[46]_i_2 
       (.I0(\key_reg_reg[110]_i_3_n_0 ),
        .I1(\key_reg_reg[79] [7]),
        .I2(g2_b6__16_n_0),
        .I3(\key_reg_reg[79] [6]),
        .I4(g3_b6__16_n_0),
        .I5(\key_reg_reg[79] [38]),
        .O(\key_reg_reg[7] [6]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[47]_i_1 
       (.I0(key_IBUF[15]),
        .I1(Q),
        .I2(\key_reg_reg[79] [31]),
        .I3(\key_reg_reg[7] [7]),
        .I4(\key_reg_reg[79] [23]),
        .I5(\key_reg_reg[47] ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[47]_i_2 
       (.I0(\key_reg_reg[111]_i_3_n_0 ),
        .I1(\key_reg_reg[79] [7]),
        .I2(g2_b7__16_n_0),
        .I3(\key_reg_reg[79] [6]),
        .I4(g3_b7__16_n_0),
        .I5(\key_reg_reg[79] [39]),
        .O(\key_reg_reg[7] [7]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[72]_i_1 
       (.I0(key_IBUF[16]),
        .I1(Q),
        .I2(\key_reg_reg[79] [32]),
        .I3(sub_rot_w3[8]),
        .I4(\key_reg_reg[79] [24]),
        .I5(\key_reg_reg[13] ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[73]_i_1 
       (.I0(key_IBUF[17]),
        .I1(Q),
        .I2(\key_reg_reg[79] [33]),
        .I3(sub_rot_w3[9]),
        .I4(\key_reg_reg[79] [25]),
        .I5(\key_reg_reg[13] ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[74]_i_1 
       (.I0(key_IBUF[18]),
        .I1(Q),
        .I2(\key_reg_reg[79] [34]),
        .I3(sub_rot_w3[10]),
        .I4(\key_reg_reg[79] [26]),
        .I5(\key_reg_reg[13] ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[75]_i_1 
       (.I0(key_IBUF[19]),
        .I1(Q),
        .I2(\key_reg_reg[79] [35]),
        .I3(sub_rot_w3[11]),
        .I4(\key_reg_reg[79] [27]),
        .I5(\key_reg_reg[13] ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[76]_i_1 
       (.I0(key_IBUF[20]),
        .I1(Q),
        .I2(\key_reg_reg[79] [36]),
        .I3(sub_rot_w3[12]),
        .I4(\key_reg_reg[79] [28]),
        .I5(\key_reg_reg[13] ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[77]_i_1 
       (.I0(key_IBUF[21]),
        .I1(Q),
        .I2(\key_reg_reg[79] [37]),
        .I3(sub_rot_w3[13]),
        .I4(\key_reg_reg[79] [29]),
        .I5(\key_reg_reg[13] ),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[78]_i_1 
       (.I0(key_IBUF[22]),
        .I1(Q),
        .I2(\key_reg_reg[79] [38]),
        .I3(sub_rot_w3[14]),
        .I4(\key_reg_reg[79] [30]),
        .I5(\key_reg_reg[47] ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[79]_i_1 
       (.I0(key_IBUF[23]),
        .I1(Q),
        .I2(\key_reg_reg[79] [39]),
        .I3(sub_rot_w3[15]),
        .I4(\key_reg_reg[79] [31]),
        .I5(\key_reg_reg[47] ),
        .O(D[23]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[8]_i_1 
       (.I0(key_IBUF[0]),
        .I1(Q),
        .I2(\key_reg_reg[111] [5]),
        .I3(\key_reg_reg[79] [8]),
        .I4(\key_reg_reg[13] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[8]_i_2 
       (.I0(\key_reg_reg[79] [24]),
        .I1(\key_reg_reg[104]_i_3_n_0 ),
        .I2(\key_reg_reg[79] [7]),
        .I3(\key_reg_reg[104]_i_4_n_0 ),
        .I4(\key_reg_reg[79] [32]),
        .I5(\key_reg_reg[79] [16]),
        .O(\key_reg_reg[111] [5]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[9]_i_1 
       (.I0(key_IBUF[1]),
        .I1(Q),
        .I2(next_round_key[41]),
        .I3(\key_reg_reg[79] [9]),
        .I4(\key_reg_reg[13] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[9]_i_2 
       (.I0(\key_reg_reg[79] [25]),
        .I1(\key_reg_reg[105]_i_3_n_0 ),
        .I2(\key_reg_reg[79] [7]),
        .I3(\key_reg_reg[105]_i_4_n_0 ),
        .I4(\key_reg_reg[79] [33]),
        .I5(\key_reg_reg[79] [17]),
        .O(next_round_key[41]));
  MUXF8 \key_reg_reg[104]_i_2 
       (.I0(\key_reg_reg[104]_i_3_n_0 ),
        .I1(\key_reg_reg[104]_i_4_n_0 ),
        .O(sub_rot_w3[8]),
        .S(\key_reg_reg[79] [7]));
  MUXF7 \key_reg_reg[104]_i_3 
       (.I0(g0_b0__16_n_0),
        .I1(g1_b0__16_n_0),
        .O(\key_reg_reg[104]_i_3_n_0 ),
        .S(\key_reg_reg[79] [6]));
  MUXF7 \key_reg_reg[104]_i_4 
       (.I0(g2_b0__16_n_0),
        .I1(g3_b0__16_n_0),
        .O(\key_reg_reg[104]_i_4_n_0 ),
        .S(\key_reg_reg[79] [6]));
  MUXF8 \key_reg_reg[105]_i_2 
       (.I0(\key_reg_reg[105]_i_3_n_0 ),
        .I1(\key_reg_reg[105]_i_4_n_0 ),
        .O(sub_rot_w3[9]),
        .S(\key_reg_reg[79] [7]));
  MUXF7 \key_reg_reg[105]_i_3 
       (.I0(g0_b1__16_n_0),
        .I1(g1_b1__16_n_0),
        .O(\key_reg_reg[105]_i_3_n_0 ),
        .S(\key_reg_reg[79] [6]));
  MUXF7 \key_reg_reg[105]_i_4 
       (.I0(g2_b1__16_n_0),
        .I1(g3_b1__16_n_0),
        .O(\key_reg_reg[105]_i_4_n_0 ),
        .S(\key_reg_reg[79] [6]));
  MUXF8 \key_reg_reg[106]_i_2 
       (.I0(\key_reg_reg[106]_i_3_n_0 ),
        .I1(\key_reg_reg[106]_i_4_n_0 ),
        .O(sub_rot_w3[10]),
        .S(\key_reg_reg[79] [7]));
  MUXF7 \key_reg_reg[106]_i_3 
       (.I0(g0_b2__16_n_0),
        .I1(g1_b2__16_n_0),
        .O(\key_reg_reg[106]_i_3_n_0 ),
        .S(\key_reg_reg[79] [6]));
  MUXF7 \key_reg_reg[106]_i_4 
       (.I0(g2_b2__16_n_0),
        .I1(g3_b2__16_n_0),
        .O(\key_reg_reg[106]_i_4_n_0 ),
        .S(\key_reg_reg[79] [6]));
  MUXF8 \key_reg_reg[107]_i_2 
       (.I0(\key_reg_reg[107]_i_3_n_0 ),
        .I1(\key_reg_reg[107]_i_4_n_0 ),
        .O(sub_rot_w3[11]),
        .S(\key_reg_reg[79] [7]));
  MUXF7 \key_reg_reg[107]_i_3 
       (.I0(g0_b3__16_n_0),
        .I1(g1_b3__16_n_0),
        .O(\key_reg_reg[107]_i_3_n_0 ),
        .S(\key_reg_reg[79] [6]));
  MUXF7 \key_reg_reg[107]_i_4 
       (.I0(g2_b3__16_n_0),
        .I1(g3_b3__16_n_0),
        .O(\key_reg_reg[107]_i_4_n_0 ),
        .S(\key_reg_reg[79] [6]));
  MUXF8 \key_reg_reg[108]_i_2 
       (.I0(\key_reg_reg[108]_i_3_n_0 ),
        .I1(\key_reg_reg[108]_i_4_n_0 ),
        .O(sub_rot_w3[12]),
        .S(\key_reg_reg[79] [7]));
  MUXF7 \key_reg_reg[108]_i_3 
       (.I0(g0_b4__16_n_0),
        .I1(g1_b4__16_n_0),
        .O(\key_reg_reg[108]_i_3_n_0 ),
        .S(\key_reg_reg[79] [6]));
  MUXF7 \key_reg_reg[108]_i_4 
       (.I0(g2_b4__16_n_0),
        .I1(g3_b4__16_n_0),
        .O(\key_reg_reg[108]_i_4_n_0 ),
        .S(\key_reg_reg[79] [6]));
  MUXF8 \key_reg_reg[109]_i_2 
       (.I0(\key_reg_reg[109]_i_3_n_0 ),
        .I1(\key_reg_reg[109]_i_4_n_0 ),
        .O(sub_rot_w3[13]),
        .S(\key_reg_reg[79] [7]));
  MUXF7 \key_reg_reg[109]_i_3 
       (.I0(g0_b5__16_n_0),
        .I1(g1_b5__16_n_0),
        .O(\key_reg_reg[109]_i_3_n_0 ),
        .S(\key_reg_reg[79] [6]));
  MUXF7 \key_reg_reg[109]_i_4 
       (.I0(g2_b5__16_n_0),
        .I1(g3_b5__16_n_0),
        .O(\key_reg_reg[109]_i_4_n_0 ),
        .S(\key_reg_reg[79] [6]));
  MUXF8 \key_reg_reg[110]_i_2 
       (.I0(\key_reg_reg[110]_i_3_n_0 ),
        .I1(\key_reg_reg[110]_i_4_n_0 ),
        .O(sub_rot_w3[14]),
        .S(\key_reg_reg[79] [7]));
  MUXF7 \key_reg_reg[110]_i_3 
       (.I0(g0_b6__16_n_0),
        .I1(g1_b6__16_n_0),
        .O(\key_reg_reg[110]_i_3_n_0 ),
        .S(\key_reg_reg[79] [6]));
  MUXF7 \key_reg_reg[110]_i_4 
       (.I0(g2_b6__16_n_0),
        .I1(g3_b6__16_n_0),
        .O(\key_reg_reg[110]_i_4_n_0 ),
        .S(\key_reg_reg[79] [6]));
  MUXF8 \key_reg_reg[111]_i_2 
       (.I0(\key_reg_reg[111]_i_3_n_0 ),
        .I1(\key_reg_reg[111]_i_4_n_0 ),
        .O(sub_rot_w3[15]),
        .S(\key_reg_reg[79] [7]));
  MUXF7 \key_reg_reg[111]_i_3 
       (.I0(g0_b7__16_n_0),
        .I1(g1_b7__16_n_0),
        .O(\key_reg_reg[111]_i_3_n_0 ),
        .S(\key_reg_reg[79] [6]));
  MUXF7 \key_reg_reg[111]_i_4 
       (.I0(g2_b7__16_n_0),
        .I1(g3_b7__16_n_0),
        .O(\key_reg_reg[111]_i_4_n_0 ),
        .S(\key_reg_reg[79] [6]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[10]_i_3 
       (.I0(\key_reg_reg[79] [18]),
        .I1(\key_reg_reg[79] [34]),
        .I2(sub_rot_w3[10]),
        .I3(\key_reg_reg[79] [26]),
        .I4(\key_reg_reg[79] [10]),
        .O(\key_reg_reg[111] [1]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[11]_i_1 
       (.I0(key_IBUF[3]),
        .I1(plaintext_IBUF[1]),
        .I2(mask_in_IBUF[1]),
        .I3(Q),
        .I4(round_ark_share1[11]),
        .I5(\key_reg_reg[47] ),
        .O(\FSM_onehot_current_state_reg[0] [1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share1_reg[11]_i_2 
       (.I0(\key_reg_reg[79] [19]),
        .I1(\key_reg_reg[79] [35]),
        .I2(sub_rot_w3[11]),
        .I3(\key_reg_reg[79] [27]),
        .I4(\key_reg_reg[79] [11]),
        .I5(post_linear_share1[1]),
        .O(round_ark_share1[11]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[12]_i_1 
       (.I0(key_IBUF[4]),
        .I1(plaintext_IBUF[2]),
        .I2(mask_in_IBUF[2]),
        .I3(Q),
        .I4(round_ark_share1[12]),
        .I5(\key_reg_reg[47] ),
        .O(\FSM_onehot_current_state_reg[0] [2]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share1_reg[12]_i_2 
       (.I0(\key_reg_reg[79] [20]),
        .I1(\key_reg_reg[79] [36]),
        .I2(sub_rot_w3[12]),
        .I3(\key_reg_reg[79] [28]),
        .I4(\key_reg_reg[79] [12]),
        .I5(post_linear_share1[2]),
        .O(round_ark_share1[12]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[13]_i_3 
       (.I0(\key_reg_reg[79] [21]),
        .I1(\key_reg_reg[79] [37]),
        .I2(sub_rot_w3[13]),
        .I3(\key_reg_reg[79] [29]),
        .I4(\key_reg_reg[79] [13]),
        .O(\key_reg_reg[111] [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[14]_i_4 
       (.I0(\key_reg_reg[79] [22]),
        .I1(\key_reg_reg[79] [38]),
        .I2(sub_rot_w3[14]),
        .I3(\key_reg_reg[79] [30]),
        .I4(\key_reg_reg[79] [14]),
        .O(\key_reg_reg[111] [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[15]_i_4 
       (.I0(\key_reg_reg[79] [23]),
        .I1(\key_reg_reg[79] [39]),
        .I2(sub_rot_w3[15]),
        .I3(\key_reg_reg[79] [31]),
        .I4(\key_reg_reg[79] [15]),
        .O(\key_reg_reg[111] [4]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[41]_i_1 
       (.I0(key_IBUF[9]),
        .I1(plaintext_IBUF[3]),
        .I2(mask_in_IBUF[3]),
        .I3(Q),
        .I4(round_ark_share1[41]),
        .I5(\key_reg_reg[47] ),
        .O(\FSM_onehot_current_state_reg[0] [3]));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[41]_i_2 
       (.I0(next_round_key[41]),
        .I1(post_linear_share1[3]),
        .O(round_ark_share1[41]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[43]_i_1 
       (.I0(key_IBUF[11]),
        .I1(plaintext_IBUF[4]),
        .I2(mask_in_IBUF[4]),
        .I3(Q),
        .I4(round_ark_share1[43]),
        .I5(\key_reg_reg[47] ),
        .O(\FSM_onehot_current_state_reg[0] [4]));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[43]_i_2 
       (.I0(next_round_key[43]),
        .I1(post_linear_share1[4]),
        .O(round_ark_share1[43]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[44]_i_1 
       (.I0(key_IBUF[12]),
        .I1(plaintext_IBUF[5]),
        .I2(mask_in_IBUF[5]),
        .I3(Q),
        .I4(round_ark_share1[44]),
        .I5(\key_reg_reg[47] ),
        .O(\FSM_onehot_current_state_reg[0] [5]));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[44]_i_2 
       (.I0(next_round_key[44]),
        .I1(post_linear_share1[5]),
        .O(round_ark_share1[44]));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \share1_reg[72]_i_4 
       (.I0(\key_reg_reg[79] [32]),
        .I1(\key_reg_reg[104]_i_4_n_0 ),
        .I2(\key_reg_reg[79] [7]),
        .I3(\key_reg_reg[104]_i_3_n_0 ),
        .I4(\key_reg_reg[79] [24]),
        .O(\key_reg_reg[111] [10]));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \share1_reg[73]_i_4 
       (.I0(\key_reg_reg[79] [33]),
        .I1(\key_reg_reg[105]_i_4_n_0 ),
        .I2(\key_reg_reg[79] [7]),
        .I3(\key_reg_reg[105]_i_3_n_0 ),
        .I4(\key_reg_reg[79] [25]),
        .O(\key_reg_reg[111] [11]));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \share1_reg[74]_i_4 
       (.I0(\key_reg_reg[79] [34]),
        .I1(\key_reg_reg[106]_i_4_n_0 ),
        .I2(\key_reg_reg[79] [7]),
        .I3(\key_reg_reg[106]_i_3_n_0 ),
        .I4(\key_reg_reg[79] [26]),
        .O(\key_reg_reg[111] [12]));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \share1_reg[75]_i_6 
       (.I0(\key_reg_reg[79] [35]),
        .I1(\key_reg_reg[107]_i_4_n_0 ),
        .I2(\key_reg_reg[79] [7]),
        .I3(\key_reg_reg[107]_i_3_n_0 ),
        .I4(\key_reg_reg[79] [27]),
        .O(\key_reg_reg[111] [13]));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \share1_reg[76]_i_6 
       (.I0(\key_reg_reg[79] [36]),
        .I1(\key_reg_reg[108]_i_4_n_0 ),
        .I2(\key_reg_reg[79] [7]),
        .I3(\key_reg_reg[108]_i_3_n_0 ),
        .I4(\key_reg_reg[79] [28]),
        .O(\key_reg_reg[111] [14]));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \share1_reg[77]_i_4 
       (.I0(\key_reg_reg[79] [37]),
        .I1(\key_reg_reg[109]_i_4_n_0 ),
        .I2(\key_reg_reg[79] [7]),
        .I3(\key_reg_reg[109]_i_3_n_0 ),
        .I4(\key_reg_reg[79] [29]),
        .O(\key_reg_reg[111] [15]));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \share1_reg[78]_i_4 
       (.I0(\key_reg_reg[79] [38]),
        .I1(\key_reg_reg[110]_i_4_n_0 ),
        .I2(\key_reg_reg[79] [7]),
        .I3(\key_reg_reg[110]_i_3_n_0 ),
        .I4(\key_reg_reg[79] [30]),
        .O(\key_reg_reg[111] [16]));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \share1_reg[79]_i_4 
       (.I0(\key_reg_reg[79] [39]),
        .I1(\key_reg_reg[111]_i_4_n_0 ),
        .I2(\key_reg_reg[79] [7]),
        .I3(\key_reg_reg[111]_i_3_n_0 ),
        .I4(\key_reg_reg[79] [31]),
        .O(\key_reg_reg[111] [17]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[8]_i_4 
       (.I0(\key_reg_reg[79] [16]),
        .I1(\key_reg_reg[79] [32]),
        .I2(sub_rot_w3[8]),
        .I3(\key_reg_reg[79] [24]),
        .I4(\key_reg_reg[79] [8]),
        .O(\key_reg_reg[111] [0]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[9]_i_1 
       (.I0(key_IBUF[1]),
        .I1(plaintext_IBUF[0]),
        .I2(mask_in_IBUF[0]),
        .I3(Q),
        .I4(round_ark_share1[9]),
        .I5(\key_reg_reg[47] ),
        .O(\FSM_onehot_current_state_reg[0] [0]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \share1_reg[9]_i_2 
       (.I0(\key_reg_reg[79] [17]),
        .I1(\key_reg_reg[79] [33]),
        .I2(sub_rot_w3[9]),
        .I3(\key_reg_reg[79] [25]),
        .I4(\key_reg_reg[79] [9]),
        .I5(post_linear_share1[0]),
        .O(round_ark_share1[9]));
endmodule

(* ORIG_REF_NAME = "sbox" *) 
module sbox_33
   (D,
    \key_reg_reg[96] ,
    \FSM_onehot_current_state_reg[0] ,
    key_IBUF,
    Q,
    \key_reg_reg[71] ,
    \key_reg_reg[7] ,
    \key_reg_reg[5] ,
    plaintext_IBUF,
    mask_in_IBUF,
    \share1_reg_reg[102] ,
    post_linear_share1);
  output [31:0]D;
  output [16:0]\key_reg_reg[96] ;
  output [14:0]\FSM_onehot_current_state_reg[0] ;
  input [31:0]key_IBUF;
  input [1:0]Q;
  input [39:0]\key_reg_reg[71] ;
  input \key_reg_reg[7] ;
  input \key_reg_reg[5] ;
  input [14:0]plaintext_IBUF;
  input [14:0]mask_in_IBUF;
  input \share1_reg_reg[102] ;
  input [14:0]post_linear_share1;

  wire [31:0]D;
  wire [14:0]\FSM_onehot_current_state_reg[0] ;
  wire [1:0]Q;
  wire g0_b0__15_n_0;
  wire g0_b1__15_n_0;
  wire g0_b2__15_n_0;
  wire g0_b3__15_n_0;
  wire g0_b4__15_n_0;
  wire g0_b5__15_n_0;
  wire g0_b6__15_n_0;
  wire g0_b7__15_n_0;
  wire g1_b0__15_n_0;
  wire g1_b1__15_n_0;
  wire g1_b2__15_n_0;
  wire g1_b3__15_n_0;
  wire g1_b4__15_n_0;
  wire g1_b5__15_n_0;
  wire g1_b6__15_n_0;
  wire g1_b7__15_n_0;
  wire g2_b0__15_n_0;
  wire g2_b1__15_n_0;
  wire g2_b2__15_n_0;
  wire g2_b3__15_n_0;
  wire g2_b4__15_n_0;
  wire g2_b5__15_n_0;
  wire g2_b6__15_n_0;
  wire g2_b7__15_n_0;
  wire g3_b0__15_n_0;
  wire g3_b1__15_n_0;
  wire g3_b2__15_n_0;
  wire g3_b3__15_n_0;
  wire g3_b4__15_n_0;
  wire g3_b5__15_n_0;
  wire g3_b6__15_n_0;
  wire g3_b7__15_n_0;
  wire [31:0]key_IBUF;
  wire \key_reg_reg[5] ;
  wire [39:0]\key_reg_reg[71] ;
  wire \key_reg_reg[7] ;
  wire [16:0]\key_reg_reg[96] ;
  wire \key_reg_reg[96]_i_3_n_0 ;
  wire \key_reg_reg[96]_i_4_n_0 ;
  wire [14:0]mask_in_IBUF;
  wire [7:0]p_0_in;
  wire [14:0]plaintext_IBUF;
  wire [14:0]post_linear_share1;
  wire [103:65]round_ark_share1;
  wire \share1_reg_reg[102] ;
  wire \share1_reg_reg[65]_i_3_n_0 ;
  wire \share1_reg_reg[65]_i_4_n_0 ;
  wire \share1_reg_reg[66]_i_3_n_0 ;
  wire \share1_reg_reg[66]_i_4_n_0 ;
  wire \share1_reg_reg[67]_i_3_n_0 ;
  wire \share1_reg_reg[67]_i_4_n_0 ;
  wire \share1_reg_reg[68]_i_3_n_0 ;
  wire \share1_reg_reg[68]_i_4_n_0 ;
  wire \share1_reg_reg[69]_i_3_n_0 ;
  wire \share1_reg_reg[69]_i_4_n_0 ;
  wire \share1_reg_reg[70]_i_3_n_0 ;
  wire \share1_reg_reg[70]_i_4_n_0 ;
  wire \share1_reg_reg[71]_i_3_n_0 ;
  wire \share1_reg_reg[71]_i_4_n_0 ;
  wire [7:0]sub_rot_w3;

  LUT6 #(
    .INIT(64'hB14EDE67096C6EED)) 
    g0_b0__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g0_b0__15_n_0));
  LUT6 #(
    .INIT(64'h7BAE007D4C53FC7D)) 
    g0_b1__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g0_b1__15_n_0));
  LUT6 #(
    .INIT(64'hA16387FB3B48B4C6)) 
    g0_b2__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g0_b2__15_n_0));
  LUT6 #(
    .INIT(64'h109020A2193D586A)) 
    g0_b3__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g0_b3__15_n_0));
  LUT6 #(
    .INIT(64'hC2B0F97752B8B11E)) 
    g0_b4__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g0_b4__15_n_0));
  LUT6 #(
    .INIT(64'hF8045F7B6D98DD7F)) 
    g0_b5__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g0_b5__15_n_0));
  LUT6 #(
    .INIT(64'h980A3CC2C2FDB4FF)) 
    g0_b6__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g0_b6__15_n_0));
  LUT6 #(
    .INIT(64'h5CAA2EC7BF977090)) 
    g0_b7__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g0_b7__15_n_0));
  LUT6 #(
    .INIT(64'h68AB4BFA8ACB7A13)) 
    g1_b0__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g1_b0__15_n_0));
  LUT6 #(
    .INIT(64'hE61A4C5E97816F7A)) 
    g1_b1__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g1_b1__15_n_0));
  LUT6 #(
    .INIT(64'h23A869A2A428C424)) 
    g1_b2__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g1_b2__15_n_0));
  LUT6 #(
    .INIT(64'h2568EA2EFFA8527D)) 
    g1_b3__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g1_b3__15_n_0));
  LUT6 #(
    .INIT(64'hF7F17A494CE30F58)) 
    g1_b4__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g1_b4__15_n_0));
  LUT6 #(
    .INIT(64'h6BC2AA4E0D787AA4)) 
    g1_b5__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g1_b5__15_n_0));
  LUT6 #(
    .INIT(64'hE4851B3BF3AB2560)) 
    g1_b6__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g1_b6__15_n_0));
  LUT6 #(
    .INIT(64'hE7BAC28F866AAC82)) 
    g1_b7__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g1_b7__15_n_0));
  LUT6 #(
    .INIT(64'h10BDB210C006EAB5)) 
    g2_b0__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g2_b0__15_n_0));
  LUT6 #(
    .INIT(64'h6A450B2EF33486B4)) 
    g2_b1__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g2_b1__15_n_0));
  LUT6 #(
    .INIT(64'h577D64E03B0C3FFB)) 
    g2_b2__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g2_b2__15_n_0));
  LUT6 #(
    .INIT(64'hE9DA849CF6AC6C1B)) 
    g2_b3__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g2_b3__15_n_0));
  LUT6 #(
    .INIT(64'h2624B286BC48ECB4)) 
    g2_b4__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g2_b4__15_n_0));
  LUT6 #(
    .INIT(64'h7D8DCC4706319E08)) 
    g2_b5__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g2_b5__15_n_0));
  LUT6 #(
    .INIT(64'h3F6BCB91B30DB559)) 
    g2_b6__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g2_b6__15_n_0));
  LUT6 #(
    .INIT(64'h4CB3770196CA0329)) 
    g2_b7__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g2_b7__15_n_0));
  LUT6 #(
    .INIT(64'h4F1EAD396F247A04)) 
    g3_b0__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g3_b0__15_n_0));
  LUT6 #(
    .INIT(64'hC870974094EAD8A9)) 
    g3_b1__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g3_b1__15_n_0));
  LUT6 #(
    .INIT(64'hAC39B6C0D6CE2EFC)) 
    g3_b2__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g3_b2__15_n_0));
  LUT6 #(
    .INIT(64'h4E9DDB76C892FB1B)) 
    g3_b3__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g3_b3__15_n_0));
  LUT6 #(
    .INIT(64'hF210A3AECE472E53)) 
    g3_b4__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g3_b4__15_n_0));
  LUT6 #(
    .INIT(64'h54B248130B4F256F)) 
    g3_b5__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g3_b5__15_n_0));
  LUT6 #(
    .INIT(64'h21E0B83325591782)) 
    g3_b6__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g3_b6__15_n_0));
  LUT6 #(
    .INIT(64'h52379DE7B844E3E1)) 
    g3_b7__15
       (.I0(\key_reg_reg[71] [8]),
        .I1(\key_reg_reg[71] [9]),
        .I2(\key_reg_reg[71] [10]),
        .I3(\key_reg_reg[71] [11]),
        .I4(\key_reg_reg[71] [12]),
        .I5(\key_reg_reg[71] [13]),
        .O(g3_b7__15_n_0));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[0]_i_1 
       (.I0(key_IBUF[0]),
        .I1(Q[0]),
        .I2(\key_reg_reg[96] [8]),
        .I3(\key_reg_reg[71] [0]),
        .I4(\key_reg_reg[7] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[0]_i_2 
       (.I0(\key_reg_reg[71] [24]),
        .I1(\key_reg_reg[96]_i_3_n_0 ),
        .I2(\key_reg_reg[71] [15]),
        .I3(\key_reg_reg[96]_i_4_n_0 ),
        .I4(\key_reg_reg[71] [32]),
        .I5(\key_reg_reg[71] [16]),
        .O(\key_reg_reg[96] [8]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[100]_i_1 
       (.I0(key_IBUF[28]),
        .I1(Q[0]),
        .I2(sub_rot_w3[4]),
        .I3(\key_reg_reg[71] [36]),
        .I4(\key_reg_reg[7] ),
        .O(D[28]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[101]_i_1 
       (.I0(key_IBUF[29]),
        .I1(Q[0]),
        .I2(sub_rot_w3[5]),
        .I3(\key_reg_reg[71] [37]),
        .I4(\key_reg_reg[7] ),
        .O(D[29]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[102]_i_1 
       (.I0(key_IBUF[30]),
        .I1(Q[0]),
        .I2(sub_rot_w3[6]),
        .I3(\key_reg_reg[71] [38]),
        .I4(\key_reg_reg[7] ),
        .O(D[30]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[103]_i_1 
       (.I0(key_IBUF[31]),
        .I1(Q[0]),
        .I2(sub_rot_w3[7]),
        .I3(\key_reg_reg[71] [39]),
        .I4(\key_reg_reg[7] ),
        .O(D[31]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[1]_i_1 
       (.I0(key_IBUF[1]),
        .I1(Q[0]),
        .I2(\key_reg_reg[96] [9]),
        .I3(\key_reg_reg[71] [1]),
        .I4(\key_reg_reg[7] ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[1]_i_2 
       (.I0(\key_reg_reg[71] [25]),
        .I1(\share1_reg_reg[65]_i_4_n_0 ),
        .I2(\key_reg_reg[71] [15]),
        .I3(\share1_reg_reg[65]_i_3_n_0 ),
        .I4(\key_reg_reg[71] [33]),
        .I5(\key_reg_reg[71] [17]),
        .O(\key_reg_reg[96] [9]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[2]_i_1 
       (.I0(key_IBUF[2]),
        .I1(Q[0]),
        .I2(\key_reg_reg[96] [10]),
        .I3(\key_reg_reg[71] [2]),
        .I4(\key_reg_reg[7] ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[2]_i_2 
       (.I0(\key_reg_reg[71] [26]),
        .I1(\share1_reg_reg[66]_i_4_n_0 ),
        .I2(\key_reg_reg[71] [15]),
        .I3(\share1_reg_reg[66]_i_3_n_0 ),
        .I4(\key_reg_reg[71] [34]),
        .I5(\key_reg_reg[71] [18]),
        .O(\key_reg_reg[96] [10]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[32]_i_1 
       (.I0(key_IBUF[8]),
        .I1(Q[0]),
        .I2(\key_reg_reg[71] [24]),
        .I3(p_0_in[0]),
        .I4(\key_reg_reg[71] [16]),
        .I5(\key_reg_reg[7] ),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[32]_i_2 
       (.I0(\key_reg_reg[96]_i_3_n_0 ),
        .I1(\key_reg_reg[71] [15]),
        .I2(g2_b0__15_n_0),
        .I3(\key_reg_reg[71] [14]),
        .I4(g3_b0__15_n_0),
        .I5(\key_reg_reg[71] [32]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[33]_i_1 
       (.I0(key_IBUF[9]),
        .I1(Q[0]),
        .I2(\key_reg_reg[71] [25]),
        .I3(p_0_in[1]),
        .I4(\key_reg_reg[71] [17]),
        .I5(\key_reg_reg[7] ),
        .O(D[9]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[33]_i_2 
       (.I0(\share1_reg_reg[65]_i_4_n_0 ),
        .I1(\key_reg_reg[71] [15]),
        .I2(g2_b1__15_n_0),
        .I3(\key_reg_reg[71] [14]),
        .I4(g3_b1__15_n_0),
        .I5(\key_reg_reg[71] [33]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[34]_i_1 
       (.I0(key_IBUF[10]),
        .I1(Q[0]),
        .I2(\key_reg_reg[71] [26]),
        .I3(p_0_in[2]),
        .I4(\key_reg_reg[71] [18]),
        .I5(\key_reg_reg[7] ),
        .O(D[10]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[34]_i_2 
       (.I0(\share1_reg_reg[66]_i_4_n_0 ),
        .I1(\key_reg_reg[71] [15]),
        .I2(g2_b2__15_n_0),
        .I3(\key_reg_reg[71] [14]),
        .I4(g3_b2__15_n_0),
        .I5(\key_reg_reg[71] [34]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[35]_i_1 
       (.I0(key_IBUF[11]),
        .I1(Q[0]),
        .I2(\key_reg_reg[71] [27]),
        .I3(p_0_in[3]),
        .I4(\key_reg_reg[71] [19]),
        .I5(\key_reg_reg[7] ),
        .O(D[11]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[35]_i_2 
       (.I0(\share1_reg_reg[67]_i_4_n_0 ),
        .I1(\key_reg_reg[71] [15]),
        .I2(g2_b3__15_n_0),
        .I3(\key_reg_reg[71] [14]),
        .I4(g3_b3__15_n_0),
        .I5(\key_reg_reg[71] [35]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[36]_i_1 
       (.I0(key_IBUF[12]),
        .I1(Q[0]),
        .I2(\key_reg_reg[71] [28]),
        .I3(p_0_in[4]),
        .I4(\key_reg_reg[71] [20]),
        .I5(\key_reg_reg[7] ),
        .O(D[12]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[36]_i_2 
       (.I0(\share1_reg_reg[68]_i_4_n_0 ),
        .I1(\key_reg_reg[71] [15]),
        .I2(g2_b4__15_n_0),
        .I3(\key_reg_reg[71] [14]),
        .I4(g3_b4__15_n_0),
        .I5(\key_reg_reg[71] [36]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[37]_i_1 
       (.I0(key_IBUF[13]),
        .I1(Q[0]),
        .I2(\key_reg_reg[71] [29]),
        .I3(p_0_in[5]),
        .I4(\key_reg_reg[71] [21]),
        .I5(\key_reg_reg[7] ),
        .O(D[13]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[37]_i_2 
       (.I0(\share1_reg_reg[69]_i_4_n_0 ),
        .I1(\key_reg_reg[71] [15]),
        .I2(g2_b5__15_n_0),
        .I3(\key_reg_reg[71] [14]),
        .I4(g3_b5__15_n_0),
        .I5(\key_reg_reg[71] [37]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[38]_i_1 
       (.I0(key_IBUF[14]),
        .I1(Q[0]),
        .I2(\key_reg_reg[71] [30]),
        .I3(p_0_in[6]),
        .I4(\key_reg_reg[71] [22]),
        .I5(\key_reg_reg[7] ),
        .O(D[14]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[38]_i_2 
       (.I0(\share1_reg_reg[70]_i_4_n_0 ),
        .I1(\key_reg_reg[71] [15]),
        .I2(g2_b6__15_n_0),
        .I3(\key_reg_reg[71] [14]),
        .I4(g3_b6__15_n_0),
        .I5(\key_reg_reg[71] [38]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[39]_i_1 
       (.I0(key_IBUF[15]),
        .I1(Q[0]),
        .I2(\key_reg_reg[71] [31]),
        .I3(p_0_in[7]),
        .I4(\key_reg_reg[71] [23]),
        .I5(\key_reg_reg[7] ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h111DDD1DEEE222E2)) 
    \key_reg[39]_i_2 
       (.I0(\share1_reg_reg[71]_i_4_n_0 ),
        .I1(\key_reg_reg[71] [15]),
        .I2(g2_b7__15_n_0),
        .I3(\key_reg_reg[71] [14]),
        .I4(g3_b7__15_n_0),
        .I5(\key_reg_reg[71] [39]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[3]_i_1 
       (.I0(key_IBUF[3]),
        .I1(Q[0]),
        .I2(\key_reg_reg[96] [11]),
        .I3(\key_reg_reg[71] [3]),
        .I4(\key_reg_reg[7] ),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[3]_i_2 
       (.I0(\key_reg_reg[71] [27]),
        .I1(\share1_reg_reg[67]_i_4_n_0 ),
        .I2(\key_reg_reg[71] [15]),
        .I3(\share1_reg_reg[67]_i_3_n_0 ),
        .I4(\key_reg_reg[71] [35]),
        .I5(\key_reg_reg[71] [19]),
        .O(\key_reg_reg[96] [11]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[4]_i_1 
       (.I0(key_IBUF[4]),
        .I1(Q[0]),
        .I2(\key_reg_reg[96] [12]),
        .I3(\key_reg_reg[71] [4]),
        .I4(\key_reg_reg[7] ),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[4]_i_2 
       (.I0(\key_reg_reg[71] [28]),
        .I1(\share1_reg_reg[68]_i_4_n_0 ),
        .I2(\key_reg_reg[71] [15]),
        .I3(\share1_reg_reg[68]_i_3_n_0 ),
        .I4(\key_reg_reg[71] [36]),
        .I5(\key_reg_reg[71] [20]),
        .O(\key_reg_reg[96] [12]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[5]_i_1 
       (.I0(key_IBUF[5]),
        .I1(Q[0]),
        .I2(\key_reg_reg[96] [13]),
        .I3(\key_reg_reg[71] [5]),
        .I4(\key_reg_reg[5] ),
        .O(D[5]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[5]_i_2 
       (.I0(\key_reg_reg[71] [29]),
        .I1(\share1_reg_reg[69]_i_4_n_0 ),
        .I2(\key_reg_reg[71] [15]),
        .I3(\share1_reg_reg[69]_i_3_n_0 ),
        .I4(\key_reg_reg[71] [37]),
        .I5(\key_reg_reg[71] [21]),
        .O(\key_reg_reg[96] [13]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[64]_i_1 
       (.I0(key_IBUF[16]),
        .I1(Q[0]),
        .I2(\key_reg_reg[71] [32]),
        .I3(sub_rot_w3[0]),
        .I4(\key_reg_reg[71] [24]),
        .I5(\key_reg_reg[7] ),
        .O(D[16]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[65]_i_1 
       (.I0(key_IBUF[17]),
        .I1(Q[0]),
        .I2(\key_reg_reg[71] [33]),
        .I3(sub_rot_w3[1]),
        .I4(\key_reg_reg[71] [25]),
        .I5(\key_reg_reg[7] ),
        .O(D[17]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[66]_i_1 
       (.I0(key_IBUF[18]),
        .I1(Q[0]),
        .I2(\key_reg_reg[71] [34]),
        .I3(sub_rot_w3[2]),
        .I4(\key_reg_reg[71] [26]),
        .I5(\key_reg_reg[7] ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[67]_i_1 
       (.I0(key_IBUF[19]),
        .I1(Q[0]),
        .I2(\key_reg_reg[71] [35]),
        .I3(sub_rot_w3[3]),
        .I4(\key_reg_reg[71] [27]),
        .I5(\key_reg_reg[7] ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[68]_i_1 
       (.I0(key_IBUF[20]),
        .I1(Q[0]),
        .I2(\key_reg_reg[71] [36]),
        .I3(sub_rot_w3[4]),
        .I4(\key_reg_reg[71] [28]),
        .I5(\key_reg_reg[7] ),
        .O(D[20]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[69]_i_1 
       (.I0(key_IBUF[21]),
        .I1(Q[0]),
        .I2(\key_reg_reg[71] [37]),
        .I3(sub_rot_w3[5]),
        .I4(\key_reg_reg[71] [29]),
        .I5(\key_reg_reg[7] ),
        .O(D[21]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[6]_i_1 
       (.I0(key_IBUF[6]),
        .I1(Q[0]),
        .I2(\key_reg_reg[96] [14]),
        .I3(\key_reg_reg[71] [6]),
        .I4(\key_reg_reg[7] ),
        .O(D[6]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[6]_i_2 
       (.I0(\key_reg_reg[71] [30]),
        .I1(\share1_reg_reg[70]_i_4_n_0 ),
        .I2(\key_reg_reg[71] [15]),
        .I3(\share1_reg_reg[70]_i_3_n_0 ),
        .I4(\key_reg_reg[71] [38]),
        .I5(\key_reg_reg[71] [22]),
        .O(\key_reg_reg[96] [14]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[70]_i_1 
       (.I0(key_IBUF[22]),
        .I1(Q[0]),
        .I2(\key_reg_reg[71] [38]),
        .I3(sub_rot_w3[6]),
        .I4(\key_reg_reg[71] [30]),
        .I5(\key_reg_reg[7] ),
        .O(D[22]));
  LUT6 #(
    .INIT(64'hF88F8FF888888888)) 
    \key_reg[71]_i_1 
       (.I0(key_IBUF[23]),
        .I1(Q[0]),
        .I2(\key_reg_reg[71] [39]),
        .I3(sub_rot_w3[7]),
        .I4(\key_reg_reg[71] [31]),
        .I5(\key_reg_reg[7] ),
        .O(D[23]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[7]_i_1 
       (.I0(key_IBUF[7]),
        .I1(Q[0]),
        .I2(\key_reg_reg[96] [15]),
        .I3(\key_reg_reg[71] [7]),
        .I4(\key_reg_reg[7] ),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h56A6A959A95956A6)) 
    \key_reg[7]_i_2 
       (.I0(\key_reg_reg[71] [31]),
        .I1(\share1_reg_reg[71]_i_4_n_0 ),
        .I2(\key_reg_reg[71] [15]),
        .I3(\share1_reg_reg[71]_i_3_n_0 ),
        .I4(\key_reg_reg[71] [39]),
        .I5(\key_reg_reg[71] [23]),
        .O(\key_reg_reg[96] [15]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[96]_i_1 
       (.I0(key_IBUF[24]),
        .I1(Q[0]),
        .I2(sub_rot_w3[0]),
        .I3(\key_reg_reg[71] [32]),
        .I4(\key_reg_reg[7] ),
        .O(D[24]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[97]_i_1 
       (.I0(key_IBUF[25]),
        .I1(Q[0]),
        .I2(sub_rot_w3[1]),
        .I3(\key_reg_reg[71] [33]),
        .I4(\key_reg_reg[7] ),
        .O(D[25]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[98]_i_1 
       (.I0(key_IBUF[26]),
        .I1(Q[0]),
        .I2(sub_rot_w3[2]),
        .I3(\key_reg_reg[71] [34]),
        .I4(\key_reg_reg[7] ),
        .O(D[26]));
  LUT5 #(
    .INIT(32'h8FF88888)) 
    \key_reg[99]_i_1 
       (.I0(key_IBUF[27]),
        .I1(Q[0]),
        .I2(sub_rot_w3[3]),
        .I3(\key_reg_reg[71] [35]),
        .I4(\key_reg_reg[7] ),
        .O(D[27]));
  MUXF8 \key_reg_reg[100]_i_2 
       (.I0(\share1_reg_reg[68]_i_4_n_0 ),
        .I1(\share1_reg_reg[68]_i_3_n_0 ),
        .O(sub_rot_w3[4]),
        .S(\key_reg_reg[71] [15]));
  MUXF8 \key_reg_reg[101]_i_2 
       (.I0(\share1_reg_reg[69]_i_4_n_0 ),
        .I1(\share1_reg_reg[69]_i_3_n_0 ),
        .O(sub_rot_w3[5]),
        .S(\key_reg_reg[71] [15]));
  MUXF8 \key_reg_reg[102]_i_2 
       (.I0(\share1_reg_reg[70]_i_4_n_0 ),
        .I1(\share1_reg_reg[70]_i_3_n_0 ),
        .O(sub_rot_w3[6]),
        .S(\key_reg_reg[71] [15]));
  MUXF8 \key_reg_reg[103]_i_2 
       (.I0(\share1_reg_reg[71]_i_4_n_0 ),
        .I1(\share1_reg_reg[71]_i_3_n_0 ),
        .O(sub_rot_w3[7]),
        .S(\key_reg_reg[71] [15]));
  MUXF8 \key_reg_reg[96]_i_2 
       (.I0(\key_reg_reg[96]_i_3_n_0 ),
        .I1(\key_reg_reg[96]_i_4_n_0 ),
        .O(sub_rot_w3[0]),
        .S(\key_reg_reg[71] [15]));
  MUXF7 \key_reg_reg[96]_i_3 
       (.I0(g0_b0__15_n_0),
        .I1(g1_b0__15_n_0),
        .O(\key_reg_reg[96]_i_3_n_0 ),
        .S(\key_reg_reg[71] [14]));
  MUXF7 \key_reg_reg[96]_i_4 
       (.I0(g2_b0__15_n_0),
        .I1(g3_b0__15_n_0),
        .O(\key_reg_reg[96]_i_4_n_0 ),
        .S(\key_reg_reg[71] [14]));
  MUXF8 \key_reg_reg[97]_i_2 
       (.I0(\share1_reg_reg[65]_i_4_n_0 ),
        .I1(\share1_reg_reg[65]_i_3_n_0 ),
        .O(sub_rot_w3[1]),
        .S(\key_reg_reg[71] [15]));
  MUXF8 \key_reg_reg[98]_i_2 
       (.I0(\share1_reg_reg[66]_i_4_n_0 ),
        .I1(\share1_reg_reg[66]_i_3_n_0 ),
        .O(sub_rot_w3[2]),
        .S(\key_reg_reg[71] [15]));
  MUXF8 \key_reg_reg[99]_i_2 
       (.I0(\share1_reg_reg[67]_i_4_n_0 ),
        .I1(\share1_reg_reg[67]_i_3_n_0 ),
        .O(sub_rot_w3[3]),
        .S(\key_reg_reg[71] [15]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[0]_i_5 
       (.I0(\key_reg_reg[71] [16]),
        .I1(\key_reg_reg[71] [32]),
        .I2(sub_rot_w3[0]),
        .I3(\key_reg_reg[71] [24]),
        .I4(\key_reg_reg[71] [0]),
        .O(\key_reg_reg[96] [0]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[100]_i_1 
       (.I0(key_IBUF[28]),
        .I1(plaintext_IBUF[11]),
        .I2(mask_in_IBUF[11]),
        .I3(Q[0]),
        .I4(round_ark_share1[100]),
        .I5(\share1_reg_reg[102] ),
        .O(\FSM_onehot_current_state_reg[0] [11]));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[100]_i_2 
       (.I0(p_0_in[4]),
        .I1(post_linear_share1[11]),
        .O(round_ark_share1[100]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[101]_i_1 
       (.I0(key_IBUF[29]),
        .I1(plaintext_IBUF[12]),
        .I2(mask_in_IBUF[12]),
        .I3(Q[0]),
        .I4(round_ark_share1[101]),
        .I5(Q[1]),
        .O(\FSM_onehot_current_state_reg[0] [12]));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[101]_i_2 
       (.I0(p_0_in[5]),
        .I1(post_linear_share1[12]),
        .O(round_ark_share1[101]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[102]_i_1 
       (.I0(key_IBUF[30]),
        .I1(plaintext_IBUF[13]),
        .I2(mask_in_IBUF[13]),
        .I3(Q[0]),
        .I4(round_ark_share1[102]),
        .I5(\share1_reg_reg[102] ),
        .O(\FSM_onehot_current_state_reg[0] [13]));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[102]_i_2 
       (.I0(p_0_in[6]),
        .I1(post_linear_share1[13]),
        .O(round_ark_share1[102]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[103]_i_1 
       (.I0(key_IBUF[31]),
        .I1(plaintext_IBUF[14]),
        .I2(mask_in_IBUF[14]),
        .I3(Q[0]),
        .I4(round_ark_share1[103]),
        .I5(\share1_reg_reg[102] ),
        .O(\FSM_onehot_current_state_reg[0] [14]));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[103]_i_2 
       (.I0(p_0_in[7]),
        .I1(post_linear_share1[14]),
        .O(round_ark_share1[103]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[1]_i_4 
       (.I0(\key_reg_reg[71] [17]),
        .I1(\key_reg_reg[71] [33]),
        .I2(sub_rot_w3[1]),
        .I3(\key_reg_reg[71] [25]),
        .I4(\key_reg_reg[71] [1]),
        .O(\key_reg_reg[96] [1]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[2]_i_5 
       (.I0(\key_reg_reg[71] [18]),
        .I1(\key_reg_reg[71] [34]),
        .I2(sub_rot_w3[2]),
        .I3(\key_reg_reg[71] [26]),
        .I4(\key_reg_reg[71] [2]),
        .O(\key_reg_reg[96] [2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[3]_i_4 
       (.I0(\key_reg_reg[71] [19]),
        .I1(\key_reg_reg[71] [35]),
        .I2(sub_rot_w3[3]),
        .I3(\key_reg_reg[71] [27]),
        .I4(\key_reg_reg[71] [3]),
        .O(\key_reg_reg[96] [3]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[4]_i_4 
       (.I0(\key_reg_reg[71] [20]),
        .I1(\key_reg_reg[71] [36]),
        .I2(sub_rot_w3[4]),
        .I3(\key_reg_reg[71] [28]),
        .I4(\key_reg_reg[71] [4]),
        .O(\key_reg_reg[96] [4]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[5]_i_4 
       (.I0(\key_reg_reg[71] [21]),
        .I1(\key_reg_reg[71] [37]),
        .I2(sub_rot_w3[5]),
        .I3(\key_reg_reg[71] [29]),
        .I4(\key_reg_reg[71] [5]),
        .O(\key_reg_reg[96] [5]));
  LUT5 #(
    .INIT(32'h9A95656A)) 
    \share1_reg[64]_i_5 
       (.I0(\key_reg_reg[71] [32]),
        .I1(\key_reg_reg[96]_i_4_n_0 ),
        .I2(\key_reg_reg[71] [15]),
        .I3(\key_reg_reg[96]_i_3_n_0 ),
        .I4(\key_reg_reg[71] [24]),
        .O(\key_reg_reg[96] [16]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[65]_i_1 
       (.I0(key_IBUF[17]),
        .I1(plaintext_IBUF[0]),
        .I2(mask_in_IBUF[0]),
        .I3(Q[0]),
        .I4(round_ark_share1[65]),
        .I5(\key_reg_reg[7] ),
        .O(\FSM_onehot_current_state_reg[0] [0]));
  LUT6 #(
    .INIT(64'h656A9A959A95656A)) 
    \share1_reg[65]_i_2 
       (.I0(\key_reg_reg[71] [33]),
        .I1(\share1_reg_reg[65]_i_3_n_0 ),
        .I2(\key_reg_reg[71] [15]),
        .I3(\share1_reg_reg[65]_i_4_n_0 ),
        .I4(\key_reg_reg[71] [25]),
        .I5(post_linear_share1[0]),
        .O(round_ark_share1[65]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[66]_i_1 
       (.I0(key_IBUF[18]),
        .I1(plaintext_IBUF[1]),
        .I2(mask_in_IBUF[1]),
        .I3(Q[0]),
        .I4(round_ark_share1[66]),
        .I5(\share1_reg_reg[102] ),
        .O(\FSM_onehot_current_state_reg[0] [1]));
  LUT6 #(
    .INIT(64'h656A9A959A95656A)) 
    \share1_reg[66]_i_2 
       (.I0(\key_reg_reg[71] [34]),
        .I1(\share1_reg_reg[66]_i_3_n_0 ),
        .I2(\key_reg_reg[71] [15]),
        .I3(\share1_reg_reg[66]_i_4_n_0 ),
        .I4(\key_reg_reg[71] [26]),
        .I5(post_linear_share1[1]),
        .O(round_ark_share1[66]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[67]_i_1 
       (.I0(key_IBUF[19]),
        .I1(plaintext_IBUF[2]),
        .I2(mask_in_IBUF[2]),
        .I3(Q[0]),
        .I4(round_ark_share1[67]),
        .I5(\key_reg_reg[7] ),
        .O(\FSM_onehot_current_state_reg[0] [2]));
  LUT6 #(
    .INIT(64'h656A9A959A95656A)) 
    \share1_reg[67]_i_2 
       (.I0(\key_reg_reg[71] [35]),
        .I1(\share1_reg_reg[67]_i_3_n_0 ),
        .I2(\key_reg_reg[71] [15]),
        .I3(\share1_reg_reg[67]_i_4_n_0 ),
        .I4(\key_reg_reg[71] [27]),
        .I5(post_linear_share1[2]),
        .O(round_ark_share1[67]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[68]_i_1 
       (.I0(key_IBUF[20]),
        .I1(plaintext_IBUF[3]),
        .I2(mask_in_IBUF[3]),
        .I3(Q[0]),
        .I4(round_ark_share1[68]),
        .I5(\key_reg_reg[7] ),
        .O(\FSM_onehot_current_state_reg[0] [3]));
  LUT6 #(
    .INIT(64'h656A9A959A95656A)) 
    \share1_reg[68]_i_2 
       (.I0(\key_reg_reg[71] [36]),
        .I1(\share1_reg_reg[68]_i_3_n_0 ),
        .I2(\key_reg_reg[71] [15]),
        .I3(\share1_reg_reg[68]_i_4_n_0 ),
        .I4(\key_reg_reg[71] [28]),
        .I5(post_linear_share1[3]),
        .O(round_ark_share1[68]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[69]_i_1 
       (.I0(key_IBUF[21]),
        .I1(plaintext_IBUF[4]),
        .I2(mask_in_IBUF[4]),
        .I3(Q[0]),
        .I4(round_ark_share1[69]),
        .I5(Q[1]),
        .O(\FSM_onehot_current_state_reg[0] [4]));
  LUT6 #(
    .INIT(64'h656A9A959A95656A)) 
    \share1_reg[69]_i_2 
       (.I0(\key_reg_reg[71] [37]),
        .I1(\share1_reg_reg[69]_i_3_n_0 ),
        .I2(\key_reg_reg[71] [15]),
        .I3(\share1_reg_reg[69]_i_4_n_0 ),
        .I4(\key_reg_reg[71] [29]),
        .I5(post_linear_share1[4]),
        .O(round_ark_share1[69]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[6]_i_4 
       (.I0(\key_reg_reg[71] [22]),
        .I1(\key_reg_reg[71] [38]),
        .I2(sub_rot_w3[6]),
        .I3(\key_reg_reg[71] [30]),
        .I4(\key_reg_reg[71] [6]),
        .O(\key_reg_reg[96] [6]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[70]_i_1 
       (.I0(key_IBUF[22]),
        .I1(plaintext_IBUF[5]),
        .I2(mask_in_IBUF[5]),
        .I3(Q[0]),
        .I4(round_ark_share1[70]),
        .I5(\key_reg_reg[7] ),
        .O(\FSM_onehot_current_state_reg[0] [5]));
  LUT6 #(
    .INIT(64'h656A9A959A95656A)) 
    \share1_reg[70]_i_2 
       (.I0(\key_reg_reg[71] [38]),
        .I1(\share1_reg_reg[70]_i_3_n_0 ),
        .I2(\key_reg_reg[71] [15]),
        .I3(\share1_reg_reg[70]_i_4_n_0 ),
        .I4(\key_reg_reg[71] [30]),
        .I5(post_linear_share1[5]),
        .O(round_ark_share1[70]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[71]_i_1 
       (.I0(key_IBUF[23]),
        .I1(plaintext_IBUF[6]),
        .I2(mask_in_IBUF[6]),
        .I3(Q[0]),
        .I4(round_ark_share1[71]),
        .I5(\share1_reg_reg[102] ),
        .O(\FSM_onehot_current_state_reg[0] [6]));
  LUT6 #(
    .INIT(64'h656A9A959A95656A)) 
    \share1_reg[71]_i_2 
       (.I0(\key_reg_reg[71] [39]),
        .I1(\share1_reg_reg[71]_i_3_n_0 ),
        .I2(\key_reg_reg[71] [15]),
        .I3(\share1_reg_reg[71]_i_4_n_0 ),
        .I4(\key_reg_reg[71] [31]),
        .I5(post_linear_share1[6]),
        .O(round_ark_share1[71]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \share1_reg[7]_i_4 
       (.I0(\key_reg_reg[71] [23]),
        .I1(\key_reg_reg[71] [39]),
        .I2(sub_rot_w3[7]),
        .I3(\key_reg_reg[71] [31]),
        .I4(\key_reg_reg[71] [7]),
        .O(\key_reg_reg[96] [7]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[96]_i_1 
       (.I0(key_IBUF[24]),
        .I1(plaintext_IBUF[7]),
        .I2(mask_in_IBUF[7]),
        .I3(Q[0]),
        .I4(round_ark_share1[96]),
        .I5(\share1_reg_reg[102] ),
        .O(\FSM_onehot_current_state_reg[0] [7]));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[96]_i_2 
       (.I0(p_0_in[0]),
        .I1(post_linear_share1[7]),
        .O(round_ark_share1[96]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[97]_i_1 
       (.I0(key_IBUF[25]),
        .I1(plaintext_IBUF[8]),
        .I2(mask_in_IBUF[8]),
        .I3(Q[0]),
        .I4(round_ark_share1[97]),
        .I5(\share1_reg_reg[102] ),
        .O(\FSM_onehot_current_state_reg[0] [8]));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[97]_i_2 
       (.I0(p_0_in[1]),
        .I1(post_linear_share1[8]),
        .O(round_ark_share1[97]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[98]_i_1 
       (.I0(key_IBUF[26]),
        .I1(plaintext_IBUF[9]),
        .I2(mask_in_IBUF[9]),
        .I3(Q[0]),
        .I4(round_ark_share1[98]),
        .I5(\share1_reg_reg[102] ),
        .O(\FSM_onehot_current_state_reg[0] [9]));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[98]_i_2 
       (.I0(p_0_in[2]),
        .I1(post_linear_share1[9]),
        .O(round_ark_share1[98]));
  LUT6 #(
    .INIT(64'hFFFF960096009600)) 
    \share1_reg[99]_i_1 
       (.I0(key_IBUF[27]),
        .I1(plaintext_IBUF[10]),
        .I2(mask_in_IBUF[10]),
        .I3(Q[0]),
        .I4(round_ark_share1[99]),
        .I5(\share1_reg_reg[102] ),
        .O(\FSM_onehot_current_state_reg[0] [10]));
  LUT2 #(
    .INIT(4'h6)) 
    \share1_reg[99]_i_2 
       (.I0(p_0_in[3]),
        .I1(post_linear_share1[10]),
        .O(round_ark_share1[99]));
  MUXF7 \share1_reg_reg[65]_i_3 
       (.I0(g2_b1__15_n_0),
        .I1(g3_b1__15_n_0),
        .O(\share1_reg_reg[65]_i_3_n_0 ),
        .S(\key_reg_reg[71] [14]));
  MUXF7 \share1_reg_reg[65]_i_4 
       (.I0(g0_b1__15_n_0),
        .I1(g1_b1__15_n_0),
        .O(\share1_reg_reg[65]_i_4_n_0 ),
        .S(\key_reg_reg[71] [14]));
  MUXF7 \share1_reg_reg[66]_i_3 
       (.I0(g2_b2__15_n_0),
        .I1(g3_b2__15_n_0),
        .O(\share1_reg_reg[66]_i_3_n_0 ),
        .S(\key_reg_reg[71] [14]));
  MUXF7 \share1_reg_reg[66]_i_4 
       (.I0(g0_b2__15_n_0),
        .I1(g1_b2__15_n_0),
        .O(\share1_reg_reg[66]_i_4_n_0 ),
        .S(\key_reg_reg[71] [14]));
  MUXF7 \share1_reg_reg[67]_i_3 
       (.I0(g2_b3__15_n_0),
        .I1(g3_b3__15_n_0),
        .O(\share1_reg_reg[67]_i_3_n_0 ),
        .S(\key_reg_reg[71] [14]));
  MUXF7 \share1_reg_reg[67]_i_4 
       (.I0(g0_b3__15_n_0),
        .I1(g1_b3__15_n_0),
        .O(\share1_reg_reg[67]_i_4_n_0 ),
        .S(\key_reg_reg[71] [14]));
  MUXF7 \share1_reg_reg[68]_i_3 
       (.I0(g2_b4__15_n_0),
        .I1(g3_b4__15_n_0),
        .O(\share1_reg_reg[68]_i_3_n_0 ),
        .S(\key_reg_reg[71] [14]));
  MUXF7 \share1_reg_reg[68]_i_4 
       (.I0(g0_b4__15_n_0),
        .I1(g1_b4__15_n_0),
        .O(\share1_reg_reg[68]_i_4_n_0 ),
        .S(\key_reg_reg[71] [14]));
  MUXF7 \share1_reg_reg[69]_i_3 
       (.I0(g2_b5__15_n_0),
        .I1(g3_b5__15_n_0),
        .O(\share1_reg_reg[69]_i_3_n_0 ),
        .S(\key_reg_reg[71] [14]));
  MUXF7 \share1_reg_reg[69]_i_4 
       (.I0(g0_b5__15_n_0),
        .I1(g1_b5__15_n_0),
        .O(\share1_reg_reg[69]_i_4_n_0 ),
        .S(\key_reg_reg[71] [14]));
  MUXF7 \share1_reg_reg[70]_i_3 
       (.I0(g2_b6__15_n_0),
        .I1(g3_b6__15_n_0),
        .O(\share1_reg_reg[70]_i_3_n_0 ),
        .S(\key_reg_reg[71] [14]));
  MUXF7 \share1_reg_reg[70]_i_4 
       (.I0(g0_b6__15_n_0),
        .I1(g1_b6__15_n_0),
        .O(\share1_reg_reg[70]_i_4_n_0 ),
        .S(\key_reg_reg[71] [14]));
  MUXF7 \share1_reg_reg[71]_i_3 
       (.I0(g2_b7__15_n_0),
        .I1(g3_b7__15_n_0),
        .O(\share1_reg_reg[71]_i_3_n_0 ),
        .S(\key_reg_reg[71] [14]));
  MUXF7 \share1_reg_reg[71]_i_4 
       (.I0(g0_b7__15_n_0),
        .I1(g1_b7__15_n_0),
        .O(\share1_reg_reg[71]_i_4_n_0 ),
        .S(\key_reg_reg[71] [14]));
endmodule
