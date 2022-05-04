`include "./pe_array.v"
`include "./cmp.v"
`include "./cur_reg.v"
`include "./ref_addr.v"
`include "./cur_addr.v"
`include "./delay.v"
//27行的输入输出顺序错了么
//第一个clk就是1了，因为rst的原因 同理delay也只能留15个周期？
module me(
  input wire clk,
	input wire rst,

  input wire [15:0]cur_input0,
  input wire [15:0]cur_input1,

input wire[3:0]ref0,input wire[3:0]ref1,input wire[3:0]ref2,input wire[3:0]ref3,input wire[3:0]ref4,
input wire[3:0]ref5,input wire[3:0]ref6,input wire[3:0]ref7,input wire[3:0]ref8,
input wire[3:0]ref9,input wire[3:0]ref10,input wire[3:0]ref11,input wire[3:0]ref12,
input wire[3:0]ref13,input wire[3:0]ref14,input wire[3:0]ref15,input wire[3:0]ref16,
input wire[3:0]ref17,input wire[3:0]ref18,input wire[3:0]ref19,input wire[3:0]ref20,
input wire[3:0]ref21,input wire[3:0]ref22,
  output reg finish_flag,
  output reg ber,
  output reg [22:0]cur_ad,
  output reg [22:0]ref_ad,
	output reg [13:0]min_sad0,
	output reg [13:0]min_sad1,//这个只能是reg?

  output reg finish_a_cur0,output reg finish_a_cur1,
  output reg [3:0]mv_x0,
  output reg [3:0]mv_y0,
  output reg [3:0]mv_x1,
  output reg [3:0]mv_y1
);
//变量定义
wire finish_flag_wire;
wire [13:0]min_sad0_wire;
wire [13:0]min_sad1_wire;//这个只能是wire?
  wire finish_a_cur0_wire;wire finish_a_cur1_wire;
  wire [3:0]mv_x0_wire;
  wire [3:0]mv_y0_wire;
  wire [3:0]mv_x1_wire;
  wire [3:0]mv_y1_wire;
wire ber_wire;
wire [22:0]cur_ad_wire;
wire [22:0]ref_ad_wire;

wire rst_wire;
// wire clk_wire;
reg rst_reg;
// reg clk_reg;
reg [15:0]cur_input0_reg;
reg [15:0]cur_input1_reg;
wire [15:0] cur_input1_wire;
wire [15:0] cur_input0_wire;

wire[3:0]ref0_wire;wire[3:0]ref1_wire;wire[3:0]ref2_wire;wire[3:0]ref3_wire;wire[3:0]ref4_wire;
wire[3:0]ref5_wire;wire[3:0]ref6_wire;wire[3:0]ref7_wire;wire[3:0]ref8_wire;
wire[3:0]ref9_wire;wire[3:0]ref10_wire;wire[3:0]ref11_wire;wire[3:0]ref12_wire;
wire[3:0]ref13_wire;wire[3:0]ref14_wire;wire[3:0]ref15_wire;wire[3:0]ref16_wire;
wire[3:0]ref17_wire;wire[3:0]ref18_wire;wire[3:0]ref19_wire;wire[3:0]ref20_wire;
wire[3:0]ref21_wire;wire[3:0]ref22_wire;

reg[3:0]ref0_reg;reg[3:0]ref1_reg;reg[3:0]ref2_reg;reg[3:0]ref3_reg;reg[3:0]ref4_reg;
reg[3:0]ref5_reg;reg[3:0]ref6_reg;reg[3:0]ref7_reg;reg[3:0]ref8_reg;
reg[3:0]ref9_reg;reg[3:0]ref10_reg;reg[3:0]ref11_reg;reg[3:0]ref12_reg;
reg[3:0]ref13_reg;reg[3:0]ref14_reg;reg[3:0]ref15_reg;reg[3:0]ref16_reg;
reg[3:0]ref17_reg;reg[3:0]ref18_reg;reg[3:0]ref19_reg;reg[3:0]ref20_reg;
reg[3:0]ref21_reg;reg[3:0]ref22_reg;

// wire cur_pause0_delay;
// wire cur_pause1_delay;
reg [12:0]clk_index0;
reg compute_flag;
// reg pe_flag0;
// reg pe_flag1;
// reg [3:0]pe_count;
reg  [4:0]ber_counter0;
reg  [4:0]ber_counter1;
reg cur_pause0;
reg cur_pause1;
reg cur_pause0_curreg;
reg cur_pause1_curreg;
reg ref_pause;
reg [3:0]ref_pause_counter;
reg only_read0;
reg only_read1;
wire only_read0_delay;
wire only_read1_delay;
wire pause_out_cur_addr;
wire pause_out_ref_addr;
reg init_flag;
reg ber0;
reg ber1;
wire [13:0] result0_0;wire [13:0] result0_1;wire [13:0] result0_2;wire [13:0] result0_3;wire [13:0] result0_4;wire [13:0] result0_5;wire [13:0] result0_6;wire [13:0] result0_7;
wire [13:0] result0_8;wire [13:0] result0_9;wire [13:0] result0_10;wire [13:0] result0_11;wire [13:0] result0_12;wire [13:0] result0_13;wire [13:0] result0_14;wire [13:0] result0_15;

wire [13:0] result1_0;wire [13:0] result1_1;wire [13:0] result1_2;wire [13:0] result1_3;wire [13:0] result1_4;wire [13:0] result1_5;wire [13:0] result1_6;wire [13:0] result1_7;
wire [13:0] result1_8;wire [13:0] result1_9;wire [13:0] result1_10;wire [13:0] result1_11;wire [13:0] result1_12;wire [13:0] result1_13;wire [13:0] result1_14;wire [13:0] result1_15;

    //  input wire pause_in;//这里需要用reg pause么
    //   reg pause;
    //   output wire pause_out;

wire [22:0]ad1;
wire [15:0]cur_input1_delay;

cur_addr cur_addr(
  .pause_in(cur_pause0),
.clk(clk),.rst(rst_wire),
.ad1(cur_ad_wire),
.pause_out(pause_out_cur_addr)
);
  //  input wire pause_in;
  // output  reg ber;
  // output  wire pause_out;
ref_addr ref_addr(
    .pause_in(ref_pause),
    .pause_out(pause_out_ref_addr),
.clk(clk),.rst(rst_wire),
.ad1(ref_ad_wire),
.ber(ber_wire),
.finish_flag(finish_flag_wire)
);
wire [7:0]reg0_00;wire [7:0]reg0_01;wire [7:0]reg0_02;wire [7:0]reg0_03;wire [7:0]reg0_04;wire [7:0]reg0_05;wire [7:0]reg0_06;wire [7:0]reg0_07;
wire [7:0]reg0_10;wire [7:0]reg0_11;wire [7:0]reg0_12;wire [7:0]reg0_13;wire [7:0]reg0_14;wire [7:0]reg0_15;wire [7:0]reg0_16;wire [7:0]reg0_17;
wire [7:0]reg0_20;wire [7:0]reg0_21;wire [7:0]reg0_22;wire [7:0]reg0_23;wire [7:0]reg0_24;wire [7:0]reg0_25;wire [7:0]reg0_26;wire [7:0]reg0_27;
wire [7:0]reg0_30;wire [7:0]reg0_31;wire [7:0]reg0_32;wire [7:0]reg0_33;wire [7:0]reg0_34;wire [7:0]reg0_35;wire [7:0]reg0_36;wire [7:0]reg0_37;
wire [7:0]reg0_40;wire [7:0]reg0_41;wire [7:0]reg0_42;wire [7:0]reg0_43;wire [7:0]reg0_44;wire [7:0]reg0_45;wire [7:0]reg0_46;wire [7:0]reg0_47;
wire [7:0]reg0_50;wire [7:0]reg0_51;wire [7:0]reg0_52;wire [7:0]reg0_53;wire [7:0]reg0_54;wire [7:0]reg0_55;wire [7:0]reg0_56;wire [7:0]reg0_57;
wire [7:0]reg0_60;wire [7:0]reg0_61;wire [7:0]reg0_62;wire [7:0]reg0_63;wire [7:0]reg0_64;wire [7:0]reg0_65;wire [7:0]reg0_66;wire [7:0]reg0_67;
wire [7:0]reg0_70;wire [7:0]reg0_71;wire [7:0]reg0_72;wire [7:0]reg0_73;wire [7:0]reg0_74;wire [7:0]reg0_75;wire [7:0]reg0_76;wire [7:0]reg0_77;

delay delay(
.only_read0(only_read0),
.only_read1(only_read1),
.only_read0_delay(only_read0_delay),
.only_read1_delay(only_read1_delay),
  // .pause_in(pause_out_cur_addr),
  .clk(clk),.rst(rst_wire),
.cur0(cur_input1_wire),
.cur0_delay(cur_input1_delay)
// .cur_pause0(cur_pause0),
// .cur_pause1(cur_pause1),
// .cur_pause0_delay(cur_pause0_delay),
// .cur_pause1_delay(cur_pause1_delay)
);
cur_reg  cur_reg_0(
  .pause_in(cur_pause0_curreg),
  .clk(clk),.rst(rst_wire),
  .data_input(cur_input0_wire),
    .ber(ber0),//????
    .counter(ber_counter0),
  .reg00(reg0_00),.reg01(reg0_01),.reg02(reg0_02),.reg03(reg0_03),.reg04(reg0_04),.reg05(reg0_05),.reg06(reg0_06),.reg07(reg0_07),
  .reg10(reg0_10),.reg11(reg0_11),.reg12(reg0_12),.reg13(reg0_13),.reg14(reg0_14),.reg15(reg0_15),.reg16(reg0_16),.reg17(reg0_17),
  .reg20(reg0_20),.reg21(reg0_21),.reg22(reg0_22),.reg23(reg0_23),.reg24(reg0_24),.reg25(reg0_25),.reg26(reg0_26),.reg27(reg0_27),
  .reg30(reg0_30),.reg31(reg0_31),.reg32(reg0_32),.reg33(reg0_33),.reg34(reg0_34),.reg35(reg0_35),.reg36(reg0_36),.reg37(reg0_37),
  .reg40(reg0_40),.reg41(reg0_41),.reg42(reg0_42),.reg43(reg0_43),.reg44(reg0_44),.reg45(reg0_45),.reg46(reg0_46),.reg47(reg0_47),
  .reg50(reg0_50),.reg51(reg0_51),.reg52(reg0_52),.reg53(reg0_53),.reg54(reg0_54),.reg55(reg0_55),.reg56(reg0_56),.reg57(reg0_57),
  .reg60(reg0_60),.reg61(reg0_61),.reg62(reg0_62),.reg63(reg0_63),.reg64(reg0_64),.reg65(reg0_65),.reg66(reg0_66),.reg67(reg0_67),
  .reg70(reg0_70),.reg71(reg0_71),.reg72(reg0_72),.reg73(reg0_73),.reg74(reg0_74),.reg75(reg0_75),.reg76(reg0_76),.reg77(reg0_77)
  );


wire [7:0]reg1_00;wire [7:0]reg1_01;wire [7:0]reg1_02;wire [7:0]reg1_03;wire [7:0]reg1_04;wire [7:0]reg1_05;wire [7:0]reg1_06;wire [7:0]reg1_07;
wire [7:0]reg1_10;wire [7:0]reg1_11;wire [7:0]reg1_12;wire [7:0]reg1_13;wire [7:0]reg1_14;wire [7:0]reg1_15;wire [7:0]reg1_16;wire [7:0]reg1_17;
wire [7:0]reg1_20;wire [7:0]reg1_21;wire [7:0]reg1_22;wire [7:0]reg1_23;wire [7:0]reg1_24;wire [7:0]reg1_25;wire [7:0]reg1_26;wire [7:0]reg1_27;
wire [7:0]reg1_30;wire [7:0]reg1_31;wire [7:0]reg1_32;wire [7:0]reg1_33;wire [7:0]reg1_34;wire [7:0]reg1_35;wire [7:0]reg1_36;wire [7:0]reg1_37;
wire [7:0]reg1_40;wire [7:0]reg1_41;wire [7:0]reg1_42;wire [7:0]reg1_43;wire [7:0]reg1_44;wire [7:0]reg1_45;wire [7:0]reg1_46;wire [7:0]reg1_47;
wire [7:0]reg1_50;wire [7:0]reg1_51;wire [7:0]reg1_52;wire [7:0]reg1_53;wire [7:0]reg1_54;wire [7:0]reg1_55;wire [7:0]reg1_56;wire [7:0]reg1_57;
wire [7:0]reg1_60;wire [7:0]reg1_61;wire [7:0]reg1_62;wire [7:0]reg1_63;wire [7:0]reg1_64;wire [7:0]reg1_65;wire [7:0]reg1_66;wire [7:0]reg1_67;
wire [7:0]reg1_70;wire [7:0]reg1_71;wire [7:0]reg1_72;wire [7:0]reg1_73;wire [7:0]reg1_74;wire [7:0]reg1_75;wire [7:0]reg1_76;wire [7:0]reg1_77;

cur_reg  cur_reg_1(
  .pause_in(cur_pause1_curreg),
  .clk(clk),.rst(rst_wire),
  .data_input(cur_input1_delay),
      .ber(ber1),//????
    .counter(ber_counter1),
  .reg00(reg1_00),.reg01(reg1_01),.reg02(reg1_02),.reg03(reg1_03),.reg04(reg1_04),.reg05(reg1_05),.reg06(reg1_06),.reg07(reg1_07),
  .reg10(reg1_10),.reg11(reg1_11),.reg12(reg1_12),.reg13(reg1_13),.reg14(reg1_14),.reg15(reg1_15),.reg16(reg1_16),.reg17(reg1_17),
  .reg20(reg1_20),.reg21(reg1_21),.reg22(reg1_22),.reg23(reg1_23),.reg24(reg1_24),.reg25(reg1_25),.reg26(reg1_26),.reg27(reg1_27),
  .reg30(reg1_30),.reg31(reg1_31),.reg32(reg1_32),.reg33(reg1_33),.reg34(reg1_34),.reg35(reg1_35),.reg36(reg1_36),.reg37(reg1_37),
  .reg40(reg1_40),.reg41(reg1_41),.reg42(reg1_42),.reg43(reg1_43),.reg44(reg1_44),.reg45(reg1_45),.reg46(reg1_46),.reg47(reg1_47),
  .reg50(reg1_50),.reg51(reg1_51),.reg52(reg1_52),.reg53(reg1_53),.reg54(reg1_54),.reg55(reg1_55),.reg56(reg1_56),.reg57(reg1_57),
  .reg60(reg1_60),.reg61(reg1_61),.reg62(reg1_62),.reg63(reg1_63),.reg64(reg1_64),.reg65(reg1_65),.reg66(reg1_66),.reg67(reg1_67),
  .reg70(reg1_70),.reg71(reg1_71),.reg72(reg1_72),.reg73(reg1_73),.reg74(reg1_74),.reg75(reg1_75),.reg76(reg1_76),.reg77(reg1_77)
  );




pe_array pe_array0(
    .clk(clk),.rst(rst_wire),
.compute_flag(compute_flag),
.pause(pause_out_ref_addr),
.only_read(only_read0),
  .ref0(ref0_wire),.ref1(ref1_wire),.ref2(ref2_wire),.ref3(ref3_wire),.ref4(ref4_wire),.ref5(ref5_wire),.ref6(ref6_wire),.ref7(ref7_wire),.ref8(ref8_wire),.ref9(ref9_wire),.ref10(ref10_wire),.ref11(ref11_wire),.ref12(ref12_wire),.ref13(ref13_wire),.ref14(ref14_wire),.ref15(ref15_wire),.ref16(ref16_wire),.ref17(ref17_wire),.ref18(ref18_wire),.ref19(ref19_wire),.ref20(ref20_wire),.ref21(ref21_wire),.ref22(ref22_wire),

    .cur0_0(reg0_00),.cur1_0(reg0_01),.cur2_0(reg0_02),.cur3_0(reg0_03),.cur4_0(reg0_04),.cur5_0(reg0_05),.cur6_0(reg0_06),.cur7_0(reg0_07),
    .cur0_1(reg0_10),.cur1_1(reg0_11),.cur2_1(reg0_12),.cur3_1(reg0_13),.cur4_1(reg0_14),.cur5_1(reg0_15),.cur6_1(reg0_16),.cur7_1(reg0_17),
    .cur0_2(reg0_20),.cur1_2(reg0_21),.cur2_2(reg0_22),.cur3_2(reg0_23),.cur4_2(reg0_24),.cur5_2(reg0_25),.cur6_2(reg0_26),.cur7_2(reg0_27),
    .cur0_3(reg0_30),.cur1_3(reg0_31),.cur2_3(reg0_32),.cur3_3(reg0_33),.cur4_3(reg0_34),.cur5_3(reg0_35),.cur6_3(reg0_36),.cur7_3(reg0_37),
    .cur0_4(reg0_40),.cur1_4(reg0_41),.cur2_4(reg0_42),.cur3_4(reg0_43),.cur4_4(reg0_44),.cur5_4(reg0_45),.cur6_4(reg0_46),.cur7_4(reg0_47),
    .cur0_5(reg0_50),.cur1_5(reg0_51),.cur2_5(reg0_52),.cur3_5(reg0_53),.cur4_5(reg0_54),.cur5_5(reg0_55),.cur6_5(reg0_56),.cur7_5(reg0_57),
    .cur0_6(reg0_60),.cur1_6(reg0_61),.cur2_6(reg0_62),.cur3_6(reg0_63),.cur4_6(reg0_64),.cur5_6(reg0_65),.cur6_6(reg0_66),.cur7_6(reg0_67),
    .cur0_7(reg0_70),.cur1_7(reg0_71),.cur2_7(reg0_72),.cur3_7(reg0_73),.cur4_7(reg0_74),.cur5_7(reg0_75),.cur6_7(reg0_76),.cur7_7(reg0_77),
    .result0(result0_0),
    .result1(result0_1),
    .result2(result0_2),
    .result3(result0_3),
    .result4(result0_4),
    .result5(result0_5),
    .result6(result0_6),
    .result7(result0_7),
    .result8(result0_8),
    .result9(result0_9),
    .result10(result0_10),
    .result11(result0_11),
    .result12(result0_12),
    .result13(result0_13),
    .result14(result0_14),
    .result15(result0_15)
);

pe_array pe_array1(
    .clk(clk),.rst(rst_wire),
.compute_flag(compute_flag),
.pause(pause_out_ref_addr),
.only_read(only_read1),
  .ref0(ref0_wire),.ref1(ref1_wire),.ref2(ref2_wire),.ref3(ref3_wire),.ref4(ref4_wire),.ref5(ref5_wire),.ref6(ref6_wire),.ref7(ref7_wire),.ref8(ref8_wire),.ref9(ref9_wire),.ref10(ref10_wire),.ref11(ref11_wire),.ref12(ref12_wire),.ref13(ref13_wire),.ref14(ref14_wire),.ref15(ref15_wire),.ref16(ref16_wire),.ref17(ref17_wire),.ref18(ref18_wire),.ref19(ref19_wire),.ref20(ref20_wire),.ref21(ref21_wire),.ref22(ref22_wire),

    .cur0_0(reg1_00),.cur1_0(reg1_01),.cur2_0(reg1_02),.cur3_0(reg1_03),.cur4_0(reg1_04),.cur5_0(reg1_05),.cur6_0(reg1_06),.cur7_0(reg1_07),
    .cur0_1(reg1_10),.cur1_1(reg1_11),.cur2_1(reg1_12),.cur3_1(reg1_13),.cur4_1(reg1_14),.cur5_1(reg1_15),.cur6_1(reg1_16),.cur7_1(reg1_17),
    .cur0_2(reg1_20),.cur1_2(reg1_21),.cur2_2(reg1_22),.cur3_2(reg1_23),.cur4_2(reg1_24),.cur5_2(reg1_25),.cur6_2(reg1_26),.cur7_2(reg1_27),
    .cur0_3(reg1_30),.cur1_3(reg1_31),.cur2_3(reg1_32),.cur3_3(reg1_33),.cur4_3(reg1_34),.cur5_3(reg1_35),.cur6_3(reg1_36),.cur7_3(reg1_37),
    .cur0_4(reg1_40),.cur1_4(reg1_41),.cur2_4(reg1_42),.cur3_4(reg1_43),.cur4_4(reg1_44),.cur5_4(reg1_45),.cur6_4(reg1_46),.cur7_4(reg1_47),
    .cur0_5(reg1_50),.cur1_5(reg1_51),.cur2_5(reg1_52),.cur3_5(reg1_53),.cur4_5(reg1_54),.cur5_5(reg1_55),.cur6_5(reg1_56),.cur7_5(reg1_57),
    .cur0_6(reg1_60),.cur1_6(reg1_61),.cur2_6(reg1_62),.cur3_6(reg1_63),.cur4_6(reg1_64),.cur5_6(reg1_65),.cur6_6(reg1_66),.cur7_6(reg1_67),
    .cur0_7(reg1_70),.cur1_7(reg1_71),.cur2_7(reg1_72),.cur3_7(reg1_73),.cur4_7(reg1_74),.cur5_7(reg1_75),.cur6_7(reg1_76),.cur7_7(reg1_77),
    .result0(result1_0),
    .result1(result1_1),
    .result2(result1_2),
    .result3(result1_3),
    .result4(result1_4),
    .result5(result1_5),
    .result6(result1_6),
    .result7(result1_7),
    .result8(result1_8),
    .result9(result1_9),
    .result10(result1_10),
    .result11(result1_11),
    .result12(result1_12),
    .result13(result1_13),
    .result14(result1_14),
    .result15(result1_15)
);

compare_22bit compare_22bit_0(
    .clk (clk),
  .rst (rst_wire),
    .compute_flag(compute_flag),
  .pause(only_read0_delay),
    .data_in_sad0(result0_0),
    .data_in_sad1(result0_1),
    .data_in_sad2(result0_2),
    .data_in_sad3(result0_3),
    .data_in_sad4(result0_4),
    .data_in_sad5(result0_5),
    .data_in_sad6(result0_6),
    .data_in_sad7(result0_7),
    .data_in_sad8(result0_8),
    .data_in_sad9(result0_9),
    .data_in_sad10(result0_10),
    .data_in_sad11(result0_11),
    .data_in_sad12(result0_12),
    .data_in_sad13(result0_13),
    .data_in_sad14(result0_14),
    .data_in_sad15(result0_15),
    .global_min_sad(min_sad0_wire),
    .finish_a_cur(finish_a_cur0_wire),
    .global_mv_x(mv_x0_wire),
	  .global_mv_y(mv_y0_wire)
);

compare_22bit compare_22bit_1(
    .clk (clk),
  .rst (rst_wire),
  .compute_flag(compute_flag),
    .pause(only_read1_delay),
    .data_in_sad0(result1_0),
    .data_in_sad1(result1_1),
    .data_in_sad2(result1_2),
    .data_in_sad3(result1_3),
    .data_in_sad4(result1_4),
    .data_in_sad5(result1_5),
    .data_in_sad6(result1_6),
    .data_in_sad7(result1_7),
    .data_in_sad8(result1_8),
    .data_in_sad9(result1_9),
    .data_in_sad10(result1_10),
    .data_in_sad11(result1_11),
    .data_in_sad12(result1_12),
    .data_in_sad13(result1_13),
    .data_in_sad14(result1_14),
    .data_in_sad15(result1_15),
    .global_min_sad(min_sad1_wire),
    .finish_a_cur(finish_a_cur1_wire),
    .global_mv_x(mv_x1_wire),
	  .global_mv_y(mv_y1_wire)
);

always@(posedge clk or negedge rst_wire)
begin
	if (!rst_wire)
		begin
      ref_pause<=1;
      ref_pause_counter<=0;
    end
    else
    		begin
      if(ref_pause_counter!=15)
      ref_pause_counter<=ref_pause_counter+1;
      else ref_pause<=0;
    end
end
always@(posedge clk or negedge rst_wire)
begin
	if (!rst_wire)
		begin
			clk_index0<=0;
      cur_pause0<=0;
      cur_pause1<=1;
      cur_pause0_curreg<=1;
      cur_pause1_curreg<=1;
      init_flag<=1;
      only_read0<=1;
      only_read1<=1;
    end
	else begin
    if(init_flag)
    begin
		if(clk_index0<7728)//3840*2+16+16+14-1   +3?
			begin
        clk_index0<=clk_index0+1;
        // if(clk_index0==0)
        // begin 
        //   cur_pause0<=0;
        // end
        // if(clk_index0==1)
        // begin 
        //   cur_pause0<=0;
        // end
        if(clk_index0==0)
          cur_pause0_curreg<=0;
        if(clk_index0==15)
        begin
          cur_pause1<=0;
          // cur_pause1_curreg<=0;
        end
        if(clk_index0==16)
        begin
          // cur_pause1<=0;
          cur_pause1_curreg<=0;
        end
				if(clk_index0==32)//31?
          only_read0<=0;
        if(clk_index0==48)//46?
          only_read1<=0;
          
        if(clk_index0==7712)//7725-16 -3?
          begin
            cur_pause0<=1;
            // only_read0<=1;
          end

        if(clk_index0==7713)//7725-16 -3?
          begin
            // cur_pause0<=1;
            only_read0<=1;
          end

        if(clk_index0==7714)//7725-16 -3?
          begin
            cur_pause0_curreg<=1;
          end
			end
		else 
			begin
        init_flag<=0;
				clk_index0<=0;
        // cur_pause1<=1;
        // only_read1<=1;
			end
    end
    else begin
      		if(clk_index0<7709)//3840*2+16+14-1
			begin
				clk_index0<=clk_index0+1;

        if (clk_index0==2)
        begin
            cur_pause1<=1;
            only_read1<=1;
        end
        if (clk_index0==3)
        begin
            cur_pause1_curreg<=1;
        end
        if(clk_index0==13)//15-4?
          begin
            only_read0<=0;
            cur_pause0<=0;
          end
        if(clk_index0==15)//15-4?
          begin
            //cur_pause0<=0;
            
            cur_pause0_curreg<=0;
          end
        // if(clk_index0==14)//15-4?
        //   begin
        //     // cur_pause0<=0;
        //     cur_pause0_curreg<=0;
        //   end
        if(clk_index0==29)
        begin
         //cur_pause1<=0;
         only_read1<=0;
        end
        if(clk_index0==29)//15-4?
          begin
            cur_pause1<=0;
          end
        if(clk_index0==31)//15-4?
          begin
            cur_pause1_curreg<=0;
          end
          if(clk_index0==7693)
            begin
            cur_pause0<=1;
          end

        if(clk_index0==7694)
          begin
            only_read0<=1;
          end

        if(clk_index0==7695)
          begin
            cur_pause0_curreg<=1;
          end
			end
		else 
			begin
				clk_index0<=0;
			end
    end
	end
	end


always@(posedge clk or negedge rst_wire)//停顿周期都是偶数，所以不用pause? 需要传递给cmp，因为cmp进来的数据也是一半一半的
begin
	if (!rst_wire)
		begin
			compute_flag<=1;//0
		end
	else begin
compute_flag<=!compute_flag;
	end
	end

// always@(negedge rst_wire)
// begin
// pe_flag0<=1;
// pe_flag1<=0;
// 	end

// always@(posedge clk or negedge rst_wire)
// begin
// 	if (!rst_wire)
// 		begin
// 			pe_count<=0;
// 		end
// 	else begin
//     if(pe_count!=15)
//       pe_count<=pe_count+1;
//     else pe_flag1<=1;
//   end
// 	end

always@(posedge clk or negedge rst_wire)//也受到pause控制
begin
	if (!rst_wire)
		begin
			ber_counter0<=-1;
      ber0<=1;
		end
	else begin
        if(!cur_pause0_curreg)
    begin
    if(ber_counter0!=31)
      ber_counter0<=ber_counter0+1;
    else begin
      ber_counter0<=0;
      ber0<=!ber0;
    end
  end
  else   if(!init_flag)    ber_counter0<=1;
  end
	end

always@(posedge clk or negedge rst_wire)//也受到pause控制
begin
	if (!rst_wire)
		begin
			ber_counter1<=-1;
      ber1<=1;
		end
    else begin 
    if(!cur_pause1_curreg)
    begin
    if(ber_counter1!=31)
      ber_counter1<=ber_counter1+1;
    else begin
      ber_counter1<=0;
     ber1<=!ber1;
    end
  end
  else   if(!init_flag)   ber_counter1<=1;
  end
end

always@(posedge clk or negedge rst_wire)//也受到pause控制
begin
	if (!rst_wire)
		begin
min_sad0<=0;
min_sad1<=0;
finish_a_cur0<=0;
finish_a_cur1<=0;
mv_x0<=0;
mv_y0<=0;
mv_x1<=0;
mv_y1<=0;
ber<=0;
cur_ad<=0;
ref_ad<=0;
finish_flag<=0;
cur_input1_reg<=0;
cur_input0_reg<=0;
ref0_reg<=0;ref1_reg<=0;ref2_reg<=0;ref3_reg<=0;ref4_reg<=0;
ref5_reg<=0;ref6_reg<=0;ref7_reg<=0;ref8_reg<=0;
ref9_reg<=0;ref10_reg<=0;ref11_reg<=0;ref12_reg<=0;
ref13_reg<=0;ref14_reg<=0;ref15_reg<=0;ref16_reg<=0;
ref17_reg<=0;ref18_reg<=0;ref19_reg<=0;ref20_reg<=0;
ref21_reg<=0;ref22_reg<=0;
		end
    else begin 
      finish_flag<=finish_flag_wire;
min_sad0<=min_sad0_wire;
min_sad1<=min_sad1_wire;
finish_a_cur0<=finish_a_cur0_wire;
finish_a_cur1<=finish_a_cur1_wire;
mv_x0<=mv_x0_wire;
mv_y0<=mv_y0_wire;
mv_x1<=mv_x1_wire;
mv_y1<=mv_y1_wire;
ber<=ber_wire;
cur_ad<=cur_ad_wire;
ref_ad<=ref_ad_wire;
cur_input1_reg<=cur_input1;
cur_input0_reg<=cur_input0;

ref0_reg<=ref0;ref1_reg<=ref1;ref2_reg<=ref2;ref3_reg<=ref3;ref4_reg<=ref4;
ref5_reg<=ref5;ref6_reg<=ref6;ref7_reg<=ref7;ref8_reg<=ref8;
ref9_reg<=ref9;ref10_reg<=ref10;ref11_reg<=ref11;ref12_reg<=ref12;
ref13_reg<=ref13;ref14_reg<=ref14;ref15_reg<=ref15;ref16_reg<=ref16;
ref17_reg<=ref17;ref18_reg<=ref18;ref19_reg<=ref19;ref20_reg<=ref20;
ref21_reg<=ref21;ref22_reg<=ref22;

  end
end


			// if(clk_index%7708<=16)//前16个周期要填满数据，不输出结果，实际控制用输出文件来写，前7个周期不写txt
			// // if(!result)
			// 	result_reg<=0;
			// else
// always@(posedge clk)//也受到pause控制
// begin 
// clk_reg<=clk;
// end

always@(posedge clk)//也受到pause控制
begin 
rst_reg<=rst;
end

assign rst_wire=rst_reg;
// assign clk_wire=clk_reg;
assign cur_input1_wire=cur_input1_reg;
assign cur_input0_wire=cur_input0_reg;

assign ref0_wire=ref0_reg; assign ref1_wire=ref1_reg; assign ref2_wire=ref2_reg; assign ref3_wire=ref3_reg; assign ref4_wire=ref4_reg; 
assign ref5_wire=ref5_reg; assign ref6_wire=ref6_reg; assign ref7_wire=ref7_reg; assign ref8_wire=ref8_reg; 
assign ref9_wire=ref9_reg; assign ref10_wire=ref10_reg; assign ref11_wire=ref11_reg; 
assign ref12_wire=ref12_reg; assign ref13_wire=ref13_reg; assign ref14_wire=ref14_reg; 
assign ref15_wire=ref15_reg; 
assign ref16_wire=ref16_reg; assign ref17_wire=ref17_reg; assign ref18_wire=ref18_reg; 
assign ref19_wire=ref19_reg; assign ref20_wire=ref20_reg; assign ref21_wire=ref21_reg; 
assign ref22_wire=ref22_reg;

  endmodule