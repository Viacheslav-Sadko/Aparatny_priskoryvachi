// -------------------------------------------------------------
// 
// File Name: C:\Users\Вячеслав\Desktop\КПІ\Апаратні прискорювачі на мікросхемах 
// програмованої логіки\Лабораторна робота №2\Float point\hdlsrc\float_point\Subsystem.v
// Created: 2023-01-13 06:43:50
// 
// Generated by MATLAB 9.13 and HDL Coder 4.0
// 
// 
// -- -------------------------------------------------------------
// -- Rate and Clocking Details
// -- -------------------------------------------------------------
// Model base rate: 1
// Target subsystem base rate: 1
// 
// 
// Clock Enable  Sample Time
// -- -------------------------------------------------------------
// ce_out        1
// -- -------------------------------------------------------------
// 
// 
// Output Signal                 Clock Enable  Sample Time
// -- -------------------------------------------------------------
// o_VALID                       ce_out        1
// o_MAGNITUDE                   ce_out        1
// o_PHASE                       ce_out        1
// -- -------------------------------------------------------------
// 
// -------------------------------------------------------------


// -------------------------------------------------------------
// 
// Module: Subsystem
// Source Path: float_point/Subsystem
// Hierarchy Level: 0
// 
// -------------------------------------------------------------

`timescale 1 ns / 1 ns

module Subsystem
          (clk,
           reset,
           clk_enable,
           i_VALID,
           i_COMPLEX_VALUE_re,
           i_COMPLEX_VALUE_im,
           ce_out,
           o_VALID,
           o_MAGNITUDE,
           o_PHASE);


  input   clk;
  input   reset;
  input   clk_enable;
  input   i_VALID;
  input   [31:0] i_COMPLEX_VALUE_re;  // single
  input   [31:0] i_COMPLEX_VALUE_im;  // single
  output  ce_out;
  output  o_VALID;
  output  [31:0] o_MAGNITUDE;  // single
  output  [31:0] o_PHASE;  // single


  wire enb;
  reg  [0:46] delayMatch_reg;  // ufix1 [47]
  wire [0:46] delayMatch_reg_next;  // ufix1 [47]
  wire i_VALID_1;
  wire [31:0] Product_out1;  // ufix32
  wire [31:0] Product1_out1;  // ufix32
  wire [31:0] Add_out1;  // ufix32
  wire [31:0] Sqrt_out1;  // ufix32
  wire [31:0] Trigonometric_Function_out1;  // ufix32
  reg [31:0] delayMatch1_reg [0:4];  // ufix32 [5]
  wire [31:0] delayMatch1_reg_next [0:4];  // ufix32 [5]
  wire [31:0] Trigonometric_Function_out1_1;  // ufix32


  assign enb = clk_enable;

  always @(posedge clk or posedge reset)
    begin : delayMatch_process
      if (reset == 1'b1) begin
        delayMatch_reg[0] <= 1'b0;
        delayMatch_reg[1] <= 1'b0;
        delayMatch_reg[2] <= 1'b0;
        delayMatch_reg[3] <= 1'b0;
        delayMatch_reg[4] <= 1'b0;
        delayMatch_reg[5] <= 1'b0;
        delayMatch_reg[6] <= 1'b0;
        delayMatch_reg[7] <= 1'b0;
        delayMatch_reg[8] <= 1'b0;
        delayMatch_reg[9] <= 1'b0;
        delayMatch_reg[10] <= 1'b0;
        delayMatch_reg[11] <= 1'b0;
        delayMatch_reg[12] <= 1'b0;
        delayMatch_reg[13] <= 1'b0;
        delayMatch_reg[14] <= 1'b0;
        delayMatch_reg[15] <= 1'b0;
        delayMatch_reg[16] <= 1'b0;
        delayMatch_reg[17] <= 1'b0;
        delayMatch_reg[18] <= 1'b0;
        delayMatch_reg[19] <= 1'b0;
        delayMatch_reg[20] <= 1'b0;
        delayMatch_reg[21] <= 1'b0;
        delayMatch_reg[22] <= 1'b0;
        delayMatch_reg[23] <= 1'b0;
        delayMatch_reg[24] <= 1'b0;
        delayMatch_reg[25] <= 1'b0;
        delayMatch_reg[26] <= 1'b0;
        delayMatch_reg[27] <= 1'b0;
        delayMatch_reg[28] <= 1'b0;
        delayMatch_reg[29] <= 1'b0;
        delayMatch_reg[30] <= 1'b0;
        delayMatch_reg[31] <= 1'b0;
        delayMatch_reg[32] <= 1'b0;
        delayMatch_reg[33] <= 1'b0;
        delayMatch_reg[34] <= 1'b0;
        delayMatch_reg[35] <= 1'b0;
        delayMatch_reg[36] <= 1'b0;
        delayMatch_reg[37] <= 1'b0;
        delayMatch_reg[38] <= 1'b0;
        delayMatch_reg[39] <= 1'b0;
        delayMatch_reg[40] <= 1'b0;
        delayMatch_reg[41] <= 1'b0;
        delayMatch_reg[42] <= 1'b0;
        delayMatch_reg[43] <= 1'b0;
        delayMatch_reg[44] <= 1'b0;
        delayMatch_reg[45] <= 1'b0;
        delayMatch_reg[46] <= 1'b0;
      end
      else begin
        if (enb) begin
          delayMatch_reg[0] <= delayMatch_reg_next[0];
          delayMatch_reg[1] <= delayMatch_reg_next[1];
          delayMatch_reg[2] <= delayMatch_reg_next[2];
          delayMatch_reg[3] <= delayMatch_reg_next[3];
          delayMatch_reg[4] <= delayMatch_reg_next[4];
          delayMatch_reg[5] <= delayMatch_reg_next[5];
          delayMatch_reg[6] <= delayMatch_reg_next[6];
          delayMatch_reg[7] <= delayMatch_reg_next[7];
          delayMatch_reg[8] <= delayMatch_reg_next[8];
          delayMatch_reg[9] <= delayMatch_reg_next[9];
          delayMatch_reg[10] <= delayMatch_reg_next[10];
          delayMatch_reg[11] <= delayMatch_reg_next[11];
          delayMatch_reg[12] <= delayMatch_reg_next[12];
          delayMatch_reg[13] <= delayMatch_reg_next[13];
          delayMatch_reg[14] <= delayMatch_reg_next[14];
          delayMatch_reg[15] <= delayMatch_reg_next[15];
          delayMatch_reg[16] <= delayMatch_reg_next[16];
          delayMatch_reg[17] <= delayMatch_reg_next[17];
          delayMatch_reg[18] <= delayMatch_reg_next[18];
          delayMatch_reg[19] <= delayMatch_reg_next[19];
          delayMatch_reg[20] <= delayMatch_reg_next[20];
          delayMatch_reg[21] <= delayMatch_reg_next[21];
          delayMatch_reg[22] <= delayMatch_reg_next[22];
          delayMatch_reg[23] <= delayMatch_reg_next[23];
          delayMatch_reg[24] <= delayMatch_reg_next[24];
          delayMatch_reg[25] <= delayMatch_reg_next[25];
          delayMatch_reg[26] <= delayMatch_reg_next[26];
          delayMatch_reg[27] <= delayMatch_reg_next[27];
          delayMatch_reg[28] <= delayMatch_reg_next[28];
          delayMatch_reg[29] <= delayMatch_reg_next[29];
          delayMatch_reg[30] <= delayMatch_reg_next[30];
          delayMatch_reg[31] <= delayMatch_reg_next[31];
          delayMatch_reg[32] <= delayMatch_reg_next[32];
          delayMatch_reg[33] <= delayMatch_reg_next[33];
          delayMatch_reg[34] <= delayMatch_reg_next[34];
          delayMatch_reg[35] <= delayMatch_reg_next[35];
          delayMatch_reg[36] <= delayMatch_reg_next[36];
          delayMatch_reg[37] <= delayMatch_reg_next[37];
          delayMatch_reg[38] <= delayMatch_reg_next[38];
          delayMatch_reg[39] <= delayMatch_reg_next[39];
          delayMatch_reg[40] <= delayMatch_reg_next[40];
          delayMatch_reg[41] <= delayMatch_reg_next[41];
          delayMatch_reg[42] <= delayMatch_reg_next[42];
          delayMatch_reg[43] <= delayMatch_reg_next[43];
          delayMatch_reg[44] <= delayMatch_reg_next[44];
          delayMatch_reg[45] <= delayMatch_reg_next[45];
          delayMatch_reg[46] <= delayMatch_reg_next[46];
        end
      end
    end

  assign i_VALID_1 = delayMatch_reg[46];
  assign delayMatch_reg_next[0] = i_VALID;
  assign delayMatch_reg_next[1] = delayMatch_reg[0];
  assign delayMatch_reg_next[2] = delayMatch_reg[1];
  assign delayMatch_reg_next[3] = delayMatch_reg[2];
  assign delayMatch_reg_next[4] = delayMatch_reg[3];
  assign delayMatch_reg_next[5] = delayMatch_reg[4];
  assign delayMatch_reg_next[6] = delayMatch_reg[5];
  assign delayMatch_reg_next[7] = delayMatch_reg[6];
  assign delayMatch_reg_next[8] = delayMatch_reg[7];
  assign delayMatch_reg_next[9] = delayMatch_reg[8];
  assign delayMatch_reg_next[10] = delayMatch_reg[9];
  assign delayMatch_reg_next[11] = delayMatch_reg[10];
  assign delayMatch_reg_next[12] = delayMatch_reg[11];
  assign delayMatch_reg_next[13] = delayMatch_reg[12];
  assign delayMatch_reg_next[14] = delayMatch_reg[13];
  assign delayMatch_reg_next[15] = delayMatch_reg[14];
  assign delayMatch_reg_next[16] = delayMatch_reg[15];
  assign delayMatch_reg_next[17] = delayMatch_reg[16];
  assign delayMatch_reg_next[18] = delayMatch_reg[17];
  assign delayMatch_reg_next[19] = delayMatch_reg[18];
  assign delayMatch_reg_next[20] = delayMatch_reg[19];
  assign delayMatch_reg_next[21] = delayMatch_reg[20];
  assign delayMatch_reg_next[22] = delayMatch_reg[21];
  assign delayMatch_reg_next[23] = delayMatch_reg[22];
  assign delayMatch_reg_next[24] = delayMatch_reg[23];
  assign delayMatch_reg_next[25] = delayMatch_reg[24];
  assign delayMatch_reg_next[26] = delayMatch_reg[25];
  assign delayMatch_reg_next[27] = delayMatch_reg[26];
  assign delayMatch_reg_next[28] = delayMatch_reg[27];
  assign delayMatch_reg_next[29] = delayMatch_reg[28];
  assign delayMatch_reg_next[30] = delayMatch_reg[29];
  assign delayMatch_reg_next[31] = delayMatch_reg[30];
  assign delayMatch_reg_next[32] = delayMatch_reg[31];
  assign delayMatch_reg_next[33] = delayMatch_reg[32];
  assign delayMatch_reg_next[34] = delayMatch_reg[33];
  assign delayMatch_reg_next[35] = delayMatch_reg[34];
  assign delayMatch_reg_next[36] = delayMatch_reg[35];
  assign delayMatch_reg_next[37] = delayMatch_reg[36];
  assign delayMatch_reg_next[38] = delayMatch_reg[37];
  assign delayMatch_reg_next[39] = delayMatch_reg[38];
  assign delayMatch_reg_next[40] = delayMatch_reg[39];
  assign delayMatch_reg_next[41] = delayMatch_reg[40];
  assign delayMatch_reg_next[42] = delayMatch_reg[41];
  assign delayMatch_reg_next[43] = delayMatch_reg[42];
  assign delayMatch_reg_next[44] = delayMatch_reg[43];
  assign delayMatch_reg_next[45] = delayMatch_reg[44];
  assign delayMatch_reg_next[46] = delayMatch_reg[45];



  assign o_VALID = i_VALID_1;

  nfp_mul_single u_nfp_mul_comp (.clk(clk),
                                 .reset(reset),
                                 .enb(clk_enable),
                                 .nfp_in1(i_COMPLEX_VALUE_re),  // single
                                 .nfp_in2(i_COMPLEX_VALUE_re),  // single
                                 .nfp_out(Product_out1)  // single
                                 );

  nfp_mul_single u_nfp_mul_comp_1 (.clk(clk),
                                   .reset(reset),
                                   .enb(clk_enable),
                                   .nfp_in1(i_COMPLEX_VALUE_im),  // single
                                   .nfp_in2(i_COMPLEX_VALUE_im),  // single
                                   .nfp_out(Product1_out1)  // single
                                   );

  nfp_add_single u_nfp_add_comp (.clk(clk),
                                 .reset(reset),
                                 .enb(clk_enable),
                                 .nfp_in1(Product_out1),  // single
                                 .nfp_in2(Product1_out1),  // single
                                 .nfp_out(Add_out1)  // single
                                 );

  nfp_sqrt_single u_nfp_sqrt_comp (.clk(clk),
                                   .reset(reset),
                                   .enb(clk_enable),
                                   .nfp_in(Add_out1),  // single
                                   .nfp_out(Sqrt_out1)  // single
                                   );

  nfp_atan2_single u_nfp_atan2_comp (.clk(clk),
                                     .reset(reset),
                                     .enb(clk_enable),
                                     .nfp_in1(i_COMPLEX_VALUE_im),  // single
                                     .nfp_in2(i_COMPLEX_VALUE_re),  // single
                                     .nfp_out(Trigonometric_Function_out1)  // single
                                     );

  always @(posedge clk or posedge reset)
    begin : delayMatch1_process
      if (reset == 1'b1) begin
        delayMatch1_reg[0] <= 32'h00000000;
        delayMatch1_reg[1] <= 32'h00000000;
        delayMatch1_reg[2] <= 32'h00000000;
        delayMatch1_reg[3] <= 32'h00000000;
        delayMatch1_reg[4] <= 32'h00000000;
      end
      else begin
        if (enb) begin
          delayMatch1_reg[0] <= delayMatch1_reg_next[0];
          delayMatch1_reg[1] <= delayMatch1_reg_next[1];
          delayMatch1_reg[2] <= delayMatch1_reg_next[2];
          delayMatch1_reg[3] <= delayMatch1_reg_next[3];
          delayMatch1_reg[4] <= delayMatch1_reg_next[4];
        end
      end
    end

  assign Trigonometric_Function_out1_1 = delayMatch1_reg[4];
  assign delayMatch1_reg_next[0] = Trigonometric_Function_out1;
  assign delayMatch1_reg_next[1] = delayMatch1_reg[0];
  assign delayMatch1_reg_next[2] = delayMatch1_reg[1];
  assign delayMatch1_reg_next[3] = delayMatch1_reg[2];
  assign delayMatch1_reg_next[4] = delayMatch1_reg[3];



  assign ce_out = clk_enable;

  assign o_MAGNITUDE = Sqrt_out1;

  assign o_PHASE = Trigonometric_Function_out1_1;

endmodule  // Subsystem

