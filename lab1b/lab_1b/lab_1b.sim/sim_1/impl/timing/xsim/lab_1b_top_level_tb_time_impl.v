// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (win64) Build 6140274 Thu May 22 00:12:29 MDT 2025
// Date        : Mon Sep 15 17:36:08 2025
// Host        : Chloes_Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file {C:/Users/fulbr/Documents/School
//               Documents/ENEL453_2025/ENEL-453/lab1b/lab_1b/lab_1b.sim/sim_1/impl/timing/xsim/lab_1b_top_level_tb_time_impl.v}
// Design      : lab_1b_top_level
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module digit_multiplexor
   (\q_reg[0] ,
    digit_select,
    d);
  output \q_reg[0] ;
  input [1:0]digit_select;
  input [1:0]d;

  wire [1:0]d;
  wire [1:0]digit_select;
  wire \q_reg[0] ;

  LUT4 #(
    .INIT(16'h0116)) 
    time_digit
       (.I0(digit_select[0]),
        .I1(digit_select[1]),
        .I2(d[1]),
        .I3(d[0]),
        .O(\q_reg[0] ));
endmodule

(* ECO_CHECKSUM = "73bcde24" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module lab_1b_top_level
   (switches_inputs,
    led,
    clk,
    reset,
    CA,
    CB,
    CC,
    CD,
    CE,
    CF,
    CG,
    DP,
    AN1,
    AN2,
    AN3,
    AN4);
  input [15:0]switches_inputs;
  output [15:0]led;
  input clk;
  input reset;
  output CA;
  output CB;
  output CC;
  output CD;
  output CE;
  output CF;
  output CG;
  output DP;
  output AN1;
  output AN2;
  output AN3;
  output AN4;

  wire AN1;
  wire AN1_OBUF;
  wire AN2;
  wire AN2_OBUF;
  wire AN3;
  wire AN3_OBUF;
  wire AN4;
  wire AN4_OBUF;
  wire CA;
  wire CA_OBUF;
  wire CB;
  wire CB_OBUF;
  wire CC;
  wire CC_OBUF;
  wire CD;
  wire CD_OBUF;
  wire CE;
  wire CE_OBUF;
  wire CF;
  wire CF_OBUF;
  wire CG;
  wire CG_OBUF;
  wire DP;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [15:0]led;
  wire [15:0]led_OBUF;
  wire reset;
  wire reset_IBUF;
  wire [15:0]switches_inputs;

initial begin
 $sdf_annotate("lab_1b_top_level_tb_time_impl.sdf",,,,"tool_control");
end
  OBUF AN1_OBUF_inst
       (.I(AN1_OBUF),
        .O(AN1));
  OBUF AN2_OBUF_inst
       (.I(AN2_OBUF),
        .O(AN2));
  OBUF AN3_OBUF_inst
       (.I(AN3_OBUF),
        .O(AN3));
  OBUF AN4_OBUF_inst
       (.I(AN4_OBUF),
        .O(AN4));
  OBUF CA_OBUF_inst
       (.I(CA_OBUF),
        .O(CA));
  OBUF CB_OBUF_inst
       (.I(CB_OBUF),
        .O(CB));
  OBUF CC_OBUF_inst
       (.I(CC_OBUF),
        .O(CC));
  OBUF CD_OBUF_inst
       (.I(CD_OBUF),
        .O(CD));
  OBUF CE_OBUF_inst
       (.I(CE_OBUF),
        .O(CE));
  OBUF CF_OBUF_inst
       (.I(CF_OBUF),
        .O(CF));
  OBUF CG_OBUF_inst
       (.I(CG_OBUF),
        .O(CG));
  OBUF DP_OBUF_inst
       (.I(1'b1),
        .O(DP));
  seven_segment_display_subsystem SEVEN_SEG
       (.AN1_OBUF(AN1_OBUF),
        .AN2_OBUF(AN2_OBUF),
        .AN3_OBUF(AN3_OBUF),
        .AN4_OBUF(AN4_OBUF),
        .CA_OBUF(CA_OBUF),
        .CB_OBUF(CB_OBUF),
        .CC_OBUF(CC_OBUF),
        .CD_OBUF(CD_OBUF),
        .CE_OBUF(CE_OBUF),
        .CF_OBUF(CF_OBUF),
        .CG_OBUF(CG_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .led_OBUF(led_OBUF),
        .reset_IBUF(reset_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[10]_inst 
       (.I(led_OBUF[10]),
        .O(led[10]));
  OBUF \led_OBUF[11]_inst 
       (.I(led_OBUF[11]),
        .O(led[11]));
  OBUF \led_OBUF[12]_inst 
       (.I(led_OBUF[12]),
        .O(led[12]));
  OBUF \led_OBUF[13]_inst 
       (.I(led_OBUF[13]),
        .O(led[13]));
  OBUF \led_OBUF[14]_inst 
       (.I(led_OBUF[14]),
        .O(led[14]));
  OBUF \led_OBUF[15]_inst 
       (.I(led_OBUF[15]),
        .O(led[15]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(led_OBUF[2]),
        .O(led[2]));
  OBUF \led_OBUF[3]_inst 
       (.I(led_OBUF[3]),
        .O(led[3]));
  OBUF \led_OBUF[4]_inst 
       (.I(led_OBUF[4]),
        .O(led[4]));
  OBUF \led_OBUF[5]_inst 
       (.I(led_OBUF[5]),
        .O(led[5]));
  OBUF \led_OBUF[6]_inst 
       (.I(led_OBUF[6]),
        .O(led[6]));
  OBUF \led_OBUF[7]_inst 
       (.I(led_OBUF[7]),
        .O(led[7]));
  OBUF \led_OBUF[8]_inst 
       (.I(led_OBUF[8]),
        .O(led[8]));
  OBUF \led_OBUF[9]_inst 
       (.I(led_OBUF[9]),
        .O(led[9]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  IBUF \switches_inputs_IBUF[0]_inst 
       (.I(switches_inputs[0]),
        .O(led_OBUF[0]));
  IBUF \switches_inputs_IBUF[10]_inst 
       (.I(switches_inputs[10]),
        .O(led_OBUF[10]));
  IBUF \switches_inputs_IBUF[11]_inst 
       (.I(switches_inputs[11]),
        .O(led_OBUF[11]));
  IBUF \switches_inputs_IBUF[12]_inst 
       (.I(switches_inputs[12]),
        .O(led_OBUF[12]));
  IBUF \switches_inputs_IBUF[13]_inst 
       (.I(switches_inputs[13]),
        .O(led_OBUF[13]));
  IBUF \switches_inputs_IBUF[14]_inst 
       (.I(switches_inputs[14]),
        .O(led_OBUF[14]));
  IBUF \switches_inputs_IBUF[15]_inst 
       (.I(switches_inputs[15]),
        .O(led_OBUF[15]));
  IBUF \switches_inputs_IBUF[1]_inst 
       (.I(switches_inputs[1]),
        .O(led_OBUF[1]));
  IBUF \switches_inputs_IBUF[2]_inst 
       (.I(switches_inputs[2]),
        .O(led_OBUF[2]));
  IBUF \switches_inputs_IBUF[3]_inst 
       (.I(switches_inputs[3]),
        .O(led_OBUF[3]));
  IBUF \switches_inputs_IBUF[4]_inst 
       (.I(switches_inputs[4]),
        .O(led_OBUF[4]));
  IBUF \switches_inputs_IBUF[5]_inst 
       (.I(switches_inputs[5]),
        .O(led_OBUF[5]));
  IBUF \switches_inputs_IBUF[6]_inst 
       (.I(switches_inputs[6]),
        .O(led_OBUF[6]));
  IBUF \switches_inputs_IBUF[7]_inst 
       (.I(switches_inputs[7]),
        .O(led_OBUF[7]));
  IBUF \switches_inputs_IBUF[8]_inst 
       (.I(switches_inputs[8]),
        .O(led_OBUF[8]));
  IBUF \switches_inputs_IBUF[9]_inst 
       (.I(switches_inputs[9]),
        .O(led_OBUF[9]));
endmodule

module seven_segment_digit_selector
   (d,
    digit_select,
    CC_OBUF,
    CB_OBUF,
    CD_OBUF,
    CG_OBUF,
    CE_OBUF,
    CF_OBUF,
    CA_OBUF,
    AN4_OBUF,
    AN3_OBUF,
    AN2_OBUF,
    AN1_OBUF,
    reset_IBUF,
    clk_IBUF_BUFG,
    CC,
    led_OBUF);
  output [1:0]d;
  output [1:0]digit_select;
  output CC_OBUF;
  output CB_OBUF;
  output CD_OBUF;
  output CG_OBUF;
  output CE_OBUF;
  output CF_OBUF;
  output CA_OBUF;
  output AN4_OBUF;
  output AN3_OBUF;
  output AN2_OBUF;
  output AN1_OBUF;
  input reset_IBUF;
  input clk_IBUF_BUFG;
  input CC;
  input [15:0]led_OBUF;

  wire AN1_OBUF;
  wire AN2_OBUF;
  wire AN3_OBUF;
  wire AN4_OBUF;
  wire CA_OBUF;
  wire CA_OBUF_inst_i_2_n_0;
  wire CA_OBUF_inst_i_3_n_0;
  wire CA_OBUF_inst_i_4_n_0;
  wire CA_OBUF_inst_i_5_n_0;
  wire CA_OBUF_inst_i_6_n_0;
  wire CA_OBUF_inst_i_7_n_0;
  wire CA_OBUF_inst_i_8_n_0;
  wire CA_OBUF_inst_i_9_n_0;
  wire CB_OBUF;
  wire CB_OBUF_inst_i_2_n_0;
  wire CB_OBUF_inst_i_3_n_0;
  wire CC;
  wire CC_OBUF;
  wire CD_OBUF;
  wire CE_OBUF;
  wire CF_OBUF;
  wire CG_OBUF;
  wire clk_IBUF_BUFG;
  wire \count[0]_i_2_n_0 ;
  wire [16:0]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire [1:0]d;
  wire [1:0]digit_select;
  wire [15:0]led_OBUF;
  wire \q[0]_i_1_n_0 ;
  wire \q[1]_i_1_n_0 ;
  wire \q[2]_i_1_n_0 ;
  wire \q[3]_i_10_n_0 ;
  wire \q[3]_i_11_n_0 ;
  wire \q[3]_i_12_n_0 ;
  wire \q[3]_i_1_n_0 ;
  wire \q[3]_i_2_n_0 ;
  wire \q[3]_i_3_n_0 ;
  wire \q[3]_i_4_n_0 ;
  wire \q[3]_i_5_n_0 ;
  wire \q[3]_i_6_n_0 ;
  wire \q[3]_i_7_n_0 ;
  wire \q[3]_i_8_n_0 ;
  wire \q[3]_i_9_n_0 ;
  wire reset_IBUF;
  wire [2:0]\NLW_count_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_reg[16]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    AN1_OBUF_inst_i_1
       (.I0(digit_select[0]),
        .O(AN1_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    AN2_OBUF_inst_i_1
       (.I0(digit_select[1]),
        .O(AN2_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    AN3_OBUF_inst_i_1
       (.I0(d[1]),
        .O(AN3_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    AN4_OBUF_inst_i_1
       (.I0(d[0]),
        .O(AN4_OBUF));
  LUT4 #(
    .INIT(16'h1001)) 
    CA_OBUF_inst_i_1
       (.I0(CA_OBUF_inst_i_2_n_0),
        .I1(CA_OBUF_inst_i_3_n_0),
        .I2(CA_OBUF_inst_i_4_n_0),
        .I3(CA_OBUF_inst_i_5_n_0),
        .O(CA_OBUF));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0808080)) 
    CA_OBUF_inst_i_2
       (.I0(digit_select[1]),
        .I1(led_OBUF[7]),
        .I2(CC),
        .I3(d[1]),
        .I4(led_OBUF[11]),
        .I5(CA_OBUF_inst_i_6_n_0),
        .O(CA_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    CA_OBUF_inst_i_3
       (.I0(CC),
        .I1(CA_OBUF_inst_i_7_n_0),
        .I2(led_OBUF[9]),
        .I3(d[1]),
        .I4(led_OBUF[13]),
        .I5(d[0]),
        .O(CA_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hAAAAA888A888A888)) 
    CA_OBUF_inst_i_4
       (.I0(CC),
        .I1(CA_OBUF_inst_i_8_n_0),
        .I2(d[1]),
        .I3(led_OBUF[8]),
        .I4(d[0]),
        .I5(led_OBUF[12]),
        .O(CA_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'h00151515FFFFFFFF)) 
    CA_OBUF_inst_i_5
       (.I0(CA_OBUF_inst_i_9_n_0),
        .I1(d[1]),
        .I2(led_OBUF[10]),
        .I3(led_OBUF[14]),
        .I4(d[0]),
        .I5(CC),
        .O(CA_OBUF_inst_i_5_n_0));
  LUT5 #(
    .INIT(32'hF0808080)) 
    CA_OBUF_inst_i_6
       (.I0(led_OBUF[15]),
        .I1(d[0]),
        .I2(CC),
        .I3(led_OBUF[3]),
        .I4(digit_select[0]),
        .O(CA_OBUF_inst_i_6_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    CA_OBUF_inst_i_7
       (.I0(led_OBUF[5]),
        .I1(digit_select[1]),
        .I2(led_OBUF[1]),
        .I3(digit_select[0]),
        .O(CA_OBUF_inst_i_7_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    CA_OBUF_inst_i_8
       (.I0(led_OBUF[4]),
        .I1(digit_select[1]),
        .I2(led_OBUF[0]),
        .I3(digit_select[0]),
        .O(CA_OBUF_inst_i_8_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    CA_OBUF_inst_i_9
       (.I0(led_OBUF[6]),
        .I1(digit_select[1]),
        .I2(led_OBUF[2]),
        .I3(digit_select[0]),
        .O(CA_OBUF_inst_i_9_n_0));
  LUT5 #(
    .INIT(32'h0D0F0600)) 
    CB_OBUF_inst_i_1
       (.I0(CB_OBUF_inst_i_2_n_0),
        .I1(CB_OBUF_inst_i_3_n_0),
        .I2(CA_OBUF_inst_i_5_n_0),
        .I3(CC),
        .I4(CA_OBUF_inst_i_2_n_0),
        .O(CB_OBUF));
  LUT5 #(
    .INIT(32'h00000777)) 
    CB_OBUF_inst_i_2
       (.I0(d[0]),
        .I1(led_OBUF[13]),
        .I2(d[1]),
        .I3(led_OBUF[9]),
        .I4(CA_OBUF_inst_i_7_n_0),
        .O(CB_OBUF_inst_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000777)) 
    CB_OBUF_inst_i_3
       (.I0(led_OBUF[12]),
        .I1(d[0]),
        .I2(led_OBUF[8]),
        .I3(d[1]),
        .I4(CA_OBUF_inst_i_8_n_0),
        .O(CB_OBUF_inst_i_3_n_0));
  LUT5 #(
    .INIT(32'h0F0DC000)) 
    CC_OBUF_inst_i_1
       (.I0(CC),
        .I1(CA_OBUF_inst_i_3_n_0),
        .I2(CA_OBUF_inst_i_5_n_0),
        .I3(CB_OBUF_inst_i_3_n_0),
        .I4(CA_OBUF_inst_i_2_n_0),
        .O(CC_OBUF));
  LUT5 #(
    .INIT(32'h0381210F)) 
    CD_OBUF_inst_i_1
       (.I0(CC),
        .I1(CA_OBUF_inst_i_2_n_0),
        .I2(CA_OBUF_inst_i_5_n_0),
        .I3(CB_OBUF_inst_i_2_n_0),
        .I4(CB_OBUF_inst_i_3_n_0),
        .O(CD_OBUF));
  LUT5 #(
    .INIT(32'hF5550051)) 
    CE_OBUF_inst_i_1
       (.I0(CA_OBUF_inst_i_2_n_0),
        .I1(CC),
        .I2(CB_OBUF_inst_i_2_n_0),
        .I3(CA_OBUF_inst_i_5_n_0),
        .I4(CA_OBUF_inst_i_4_n_0),
        .O(CE_OBUF));
  LUT5 #(
    .INIT(32'h00404044)) 
    CF_OBUF_inst_i_1
       (.I0(CA_OBUF_inst_i_2_n_0),
        .I1(CC),
        .I2(CA_OBUF_inst_i_5_n_0),
        .I3(CB_OBUF_inst_i_3_n_0),
        .I4(CB_OBUF_inst_i_2_n_0),
        .O(CF_OBUF));
  LUT5 #(
    .INIT(32'h0B0BB0B5)) 
    CG_OBUF_inst_i_1
       (.I0(CB_OBUF_inst_i_2_n_0),
        .I1(CC),
        .I2(CA_OBUF_inst_i_5_n_0),
        .I3(CB_OBUF_inst_i_3_n_0),
        .I4(CA_OBUF_inst_i_2_n_0),
        .O(CG_OBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(count_reg[0]),
        .O(\count[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(count_reg[0]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\NLW_count_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({count_reg[3:1],\count[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\NLW_count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S(count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO(\NLW_count_reg[16]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[16]_i_1_O_UNCONNECTED [3:1],\count_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,count_reg[16]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(count_reg[1]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(count_reg[2]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(count_reg[3]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S(count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(reset_IBUF));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S(count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h38B8)) 
    \q[0]_i_1 
       (.I0(d[0]),
        .I1(\q[3]_i_2_n_0 ),
        .I2(digit_select[0]),
        .I3(digit_select[1]),
        .O(\q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h58)) 
    \q[1]_i_1 
       (.I0(\q[3]_i_2_n_0 ),
        .I1(digit_select[0]),
        .I2(digit_select[1]),
        .O(\q[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h7520)) 
    \q[2]_i_1 
       (.I0(\q[3]_i_2_n_0 ),
        .I1(digit_select[0]),
        .I2(digit_select[1]),
        .I3(d[1]),
        .O(\q[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFB8FFB8FFB8)) 
    \q[3]_i_1 
       (.I0(d[1]),
        .I1(\q[3]_i_2_n_0 ),
        .I2(d[0]),
        .I3(reset_IBUF),
        .I4(\q[3]_i_3_n_0 ),
        .I5(\q[3]_i_4_n_0 ),
        .O(\q[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF4)) 
    \q[3]_i_10 
       (.I0(count_reg[10]),
        .I1(count_reg[9]),
        .I2(count_reg[2]),
        .I3(count_reg[8]),
        .O(\q[3]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[3]_i_11 
       (.I0(count_reg[14]),
        .I1(count_reg[13]),
        .I2(count_reg[12]),
        .I3(count_reg[11]),
        .O(\q[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[3]_i_12 
       (.I0(count_reg[9]),
        .I1(count_reg[7]),
        .I2(count_reg[6]),
        .I3(count_reg[3]),
        .O(\q[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \q[3]_i_2 
       (.I0(\q[3]_i_5_n_0 ),
        .I1(\q[3]_i_6_n_0 ),
        .I2(\q[3]_i_7_n_0 ),
        .I3(\q[3]_i_8_n_0 ),
        .I4(\q[3]_i_9_n_0 ),
        .I5(\q[3]_i_10_n_0 ),
        .O(\q[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00010000)) 
    \q[3]_i_3 
       (.I0(count_reg[8]),
        .I1(count_reg[2]),
        .I2(count_reg[15]),
        .I3(count_reg[16]),
        .I4(\q[3]_i_11_n_0 ),
        .O(\q[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \q[3]_i_4 
       (.I0(\q[3]_i_12_n_0 ),
        .I1(digit_select[1]),
        .I2(digit_select[0]),
        .I3(count_reg[1]),
        .I4(count_reg[0]),
        .I5(\q[3]_i_5_n_0 ),
        .O(\q[3]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \q[3]_i_5 
       (.I0(count_reg[10]),
        .I1(count_reg[4]),
        .I2(count_reg[5]),
        .O(\q[3]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \q[3]_i_6 
       (.I0(count_reg[16]),
        .I1(count_reg[14]),
        .I2(count_reg[2]),
        .I3(count_reg[8]),
        .O(\q[3]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    \q[3]_i_7 
       (.I0(count_reg[13]),
        .I1(count_reg[11]),
        .I2(count_reg[5]),
        .O(\q[3]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \q[3]_i_8 
       (.I0(count_reg[6]),
        .I1(count_reg[1]),
        .I2(count_reg[12]),
        .I3(count_reg[7]),
        .O(\q[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hEFEE)) 
    \q[3]_i_9 
       (.I0(count_reg[0]),
        .I1(count_reg[15]),
        .I2(count_reg[4]),
        .I3(count_reg[3]),
        .O(\q[3]_i_9_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[0]_i_1_n_0 ),
        .Q(digit_select[0]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[1]_i_1_n_0 ),
        .Q(digit_select[1]),
        .S(reset_IBUF));
  FDSE #(
    .INIT(1'b1)) 
    \q_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[2]_i_1_n_0 ),
        .Q(d[1]),
        .S(reset_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\q[3]_i_1_n_0 ),
        .Q(d[0]),
        .R(1'b0));
endmodule

module seven_segment_display_subsystem
   (CC_OBUF,
    CB_OBUF,
    CD_OBUF,
    CG_OBUF,
    CE_OBUF,
    CF_OBUF,
    CA_OBUF,
    AN4_OBUF,
    AN3_OBUF,
    AN2_OBUF,
    AN1_OBUF,
    reset_IBUF,
    clk_IBUF_BUFG,
    led_OBUF);
  output CC_OBUF;
  output CB_OBUF;
  output CD_OBUF;
  output CG_OBUF;
  output CE_OBUF;
  output CF_OBUF;
  output CA_OBUF;
  output AN4_OBUF;
  output AN3_OBUF;
  output AN2_OBUF;
  output AN1_OBUF;
  input reset_IBUF;
  input clk_IBUF_BUFG;
  input [15:0]led_OBUF;

  wire AN1_OBUF;
  wire AN2_OBUF;
  wire AN3_OBUF;
  wire AN4_OBUF;
  wire CA_OBUF;
  wire CB_OBUF;
  wire CC_OBUF;
  wire CD_OBUF;
  wire CE_OBUF;
  wire CF_OBUF;
  wire CG_OBUF;
  wire DIGIT_MUX_n_0;
  wire clk_IBUF_BUFG;
  wire [3:0]d;
  wire [1:0]digit_select;
  wire [15:0]led_OBUF;
  wire reset_IBUF;

  digit_multiplexor DIGIT_MUX
       (.d({d[3],d[0]}),
        .digit_select(digit_select),
        .\q_reg[0] (DIGIT_MUX_n_0));
  seven_segment_digit_selector DIGIT_SELECTOR
       (.AN1_OBUF(AN1_OBUF),
        .AN2_OBUF(AN2_OBUF),
        .AN3_OBUF(AN3_OBUF),
        .AN4_OBUF(AN4_OBUF),
        .CA_OBUF(CA_OBUF),
        .CB_OBUF(CB_OBUF),
        .CC(DIGIT_MUX_n_0),
        .CC_OBUF(CC_OBUF),
        .CD_OBUF(CD_OBUF),
        .CE_OBUF(CE_OBUF),
        .CF_OBUF(CF_OBUF),
        .CG_OBUF(CG_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .d({d[3],d[0]}),
        .digit_select(digit_select),
        .led_OBUF(led_OBUF),
        .reset_IBUF(reset_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
