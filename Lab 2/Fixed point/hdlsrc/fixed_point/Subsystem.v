// -------------------------------------------------------------
// 
// File Name: hdlsrc\fixed_point\Subsystem.v
// Created: 2023-01-13 06:34:56
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
// Source Path: fixed_point/Subsystem
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
  input   signed [31:0] i_COMPLEX_VALUE_re;  // sfix32_En7
  input   signed [31:0] i_COMPLEX_VALUE_im;  // sfix32_En7
  output  ce_out;
  output  o_VALID;
  output  signed [32:0] o_MAGNITUDE;  // sfix33_En7
  output  signed [15:0] o_PHASE;  // sfix16_En13


  wire enb;
  reg  [0:33] delayMatch_reg;  // ufix1 [34]
  wire [0:33] delayMatch_reg_next;  // ufix1 [34]
  wire i_VALID_1;
  wire signed [63:0] Product_out1;  // sfix64_En14
  wire signed [63:0] Product1_out1;  // sfix64_En14
  wire signed [63:0] Add_out1;  // sfix64_En14
  wire signed [32:0] Sqrt_out1;  // sfix33_En7
  wire signed [31:0] Trigonometric_Function_out1;  // sfix32_En29
  wire signed [15:0] Data_Type_Conversion_out1;  // sfix16_En13
  reg signed [15:0] delayMatch1_reg [0:19];  // sfix16 [20]
  wire signed [15:0] delayMatch1_reg_next [0:19];  // sfix16_En13 [20]
  wire signed [15:0] Data_Type_Conversion_out1_1;  // sfix16_En13


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
        end
      end
    end

  assign i_VALID_1 = delayMatch_reg[33];
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



  assign o_VALID = i_VALID_1;

  assign Product_out1 = i_COMPLEX_VALUE_re * i_COMPLEX_VALUE_re;



  assign Product1_out1 = i_COMPLEX_VALUE_im * i_COMPLEX_VALUE_im;



  assign Add_out1 = Product_out1 + Product1_out1;



  Sqrt u_Sqrt (.clk(clk),
               .reset(reset),
               .enb(clk_enable),
               .din(Add_out1),  // sfix64_En14
               .dout(Sqrt_out1)  // sfix33_En7
               );

  assign o_MAGNITUDE = Sqrt_out1;

  atan2_cordic_nw u_Trigonometric_Function_inst (.clk(clk),
                                                 .reset(reset),
                                                 .enb(clk_enable),
                                                 .y_in(i_COMPLEX_VALUE_im),  // sfix32_En7
                                                 .x_in(i_COMPLEX_VALUE_re),  // sfix32_En7
                                                 .angle(Trigonometric_Function_out1)  // sfix32_En29
                                                 );

  assign Data_Type_Conversion_out1 = Trigonometric_Function_out1[31:16] + $signed({1'b0, Trigonometric_Function_out1[15] & (( ~ Trigonometric_Function_out1[31]) | (|Trigonometric_Function_out1[14:0]))});



  always @(posedge clk or posedge reset)
    begin : delayMatch1_process
      if (reset == 1'b1) begin
        delayMatch1_reg[0] <= 16'sb0000000000000000;
        delayMatch1_reg[1] <= 16'sb0000000000000000;
        delayMatch1_reg[2] <= 16'sb0000000000000000;
        delayMatch1_reg[3] <= 16'sb0000000000000000;
        delayMatch1_reg[4] <= 16'sb0000000000000000;
        delayMatch1_reg[5] <= 16'sb0000000000000000;
        delayMatch1_reg[6] <= 16'sb0000000000000000;
        delayMatch1_reg[7] <= 16'sb0000000000000000;
        delayMatch1_reg[8] <= 16'sb0000000000000000;
        delayMatch1_reg[9] <= 16'sb0000000000000000;
        delayMatch1_reg[10] <= 16'sb0000000000000000;
        delayMatch1_reg[11] <= 16'sb0000000000000000;
        delayMatch1_reg[12] <= 16'sb0000000000000000;
        delayMatch1_reg[13] <= 16'sb0000000000000000;
        delayMatch1_reg[14] <= 16'sb0000000000000000;
        delayMatch1_reg[15] <= 16'sb0000000000000000;
        delayMatch1_reg[16] <= 16'sb0000000000000000;
        delayMatch1_reg[17] <= 16'sb0000000000000000;
        delayMatch1_reg[18] <= 16'sb0000000000000000;
        delayMatch1_reg[19] <= 16'sb0000000000000000;
      end
      else begin
        if (enb) begin
          delayMatch1_reg[0] <= delayMatch1_reg_next[0];
          delayMatch1_reg[1] <= delayMatch1_reg_next[1];
          delayMatch1_reg[2] <= delayMatch1_reg_next[2];
          delayMatch1_reg[3] <= delayMatch1_reg_next[3];
          delayMatch1_reg[4] <= delayMatch1_reg_next[4];
          delayMatch1_reg[5] <= delayMatch1_reg_next[5];
          delayMatch1_reg[6] <= delayMatch1_reg_next[6];
          delayMatch1_reg[7] <= delayMatch1_reg_next[7];
          delayMatch1_reg[8] <= delayMatch1_reg_next[8];
          delayMatch1_reg[9] <= delayMatch1_reg_next[9];
          delayMatch1_reg[10] <= delayMatch1_reg_next[10];
          delayMatch1_reg[11] <= delayMatch1_reg_next[11];
          delayMatch1_reg[12] <= delayMatch1_reg_next[12];
          delayMatch1_reg[13] <= delayMatch1_reg_next[13];
          delayMatch1_reg[14] <= delayMatch1_reg_next[14];
          delayMatch1_reg[15] <= delayMatch1_reg_next[15];
          delayMatch1_reg[16] <= delayMatch1_reg_next[16];
          delayMatch1_reg[17] <= delayMatch1_reg_next[17];
          delayMatch1_reg[18] <= delayMatch1_reg_next[18];
          delayMatch1_reg[19] <= delayMatch1_reg_next[19];
        end
      end
    end

  assign Data_Type_Conversion_out1_1 = delayMatch1_reg[19];
  assign delayMatch1_reg_next[0] = Data_Type_Conversion_out1;
  assign delayMatch1_reg_next[1] = delayMatch1_reg[0];
  assign delayMatch1_reg_next[2] = delayMatch1_reg[1];
  assign delayMatch1_reg_next[3] = delayMatch1_reg[2];
  assign delayMatch1_reg_next[4] = delayMatch1_reg[3];
  assign delayMatch1_reg_next[5] = delayMatch1_reg[4];
  assign delayMatch1_reg_next[6] = delayMatch1_reg[5];
  assign delayMatch1_reg_next[7] = delayMatch1_reg[6];
  assign delayMatch1_reg_next[8] = delayMatch1_reg[7];
  assign delayMatch1_reg_next[9] = delayMatch1_reg[8];
  assign delayMatch1_reg_next[10] = delayMatch1_reg[9];
  assign delayMatch1_reg_next[11] = delayMatch1_reg[10];
  assign delayMatch1_reg_next[12] = delayMatch1_reg[11];
  assign delayMatch1_reg_next[13] = delayMatch1_reg[12];
  assign delayMatch1_reg_next[14] = delayMatch1_reg[13];
  assign delayMatch1_reg_next[15] = delayMatch1_reg[14];
  assign delayMatch1_reg_next[16] = delayMatch1_reg[15];
  assign delayMatch1_reg_next[17] = delayMatch1_reg[16];
  assign delayMatch1_reg_next[18] = delayMatch1_reg[17];
  assign delayMatch1_reg_next[19] = delayMatch1_reg[18];



  assign o_PHASE = Data_Type_Conversion_out1_1;

  assign ce_out = clk_enable;

endmodule  // Subsystem

