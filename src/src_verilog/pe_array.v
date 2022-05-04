`include "./pe.v"
module pe_array(
  input wire clk,
  input wire rst,
  input wire [3:0]ref0,
	input wire [3:0]ref1,
	input wire [3:0]ref2,
	input wire [3:0]ref3,
	input wire [3:0]ref4,
	input wire [3:0]ref5,
	input wire [3:0]ref6,
	input wire [3:0]ref7,
  input wire [3:0]ref8,
	input wire [3:0]ref9,
	input wire [3:0]ref10,
	input wire [3:0]ref11,
	input wire [3:0]ref12,
	input wire [3:0]ref13,
	input wire [3:0]ref14,
	input wire [3:0]ref15,
  input wire [3:0]ref16,
	input wire [3:0]ref17,
	input wire [3:0]ref18,
	input wire [3:0]ref19,
	input wire [3:0]ref20,
	input wire [3:0]ref21,
	input wire [3:0]ref22,
input wire compute_flag,
	input wire pause,
	input wire only_read,
// input wire [12:0]clk_index,
// input wire pe_flag,

  input wire [7:0]cur0_0,input wire [7:0]cur0_1,input wire [7:0]cur0_2,input wire [7:0]cur0_3,input wire [7:0]cur0_4,input wire [7:0]cur0_5,
  input wire [7:0]cur0_6,input wire [7:0]cur0_7,

  input wire [7:0]cur1_0,input wire [7:0]cur1_1,input wire [7:0]cur1_2,input wire [7:0]cur1_3,input wire [7:0]cur1_4,input wire [7:0]cur1_5,
  input wire [7:0]cur1_6,input wire [7:0]cur1_7,

  input wire [7:0]cur2_0,input wire [7:0]cur2_1,input wire [7:0]cur2_2,input wire [7:0]cur2_3,input wire [7:0]cur2_4,input wire [7:0]cur2_5,
  input wire [7:0]cur2_6,input wire [7:0]cur2_7,

  input wire [7:0]cur3_0,input wire [7:0]cur3_1,input wire [7:0]cur3_2,input wire [7:0]cur3_3,input wire [7:0]cur3_4,input wire [7:0]cur3_5,
  input wire [7:0]cur3_6,input wire [7:0]cur3_7,

  input wire [7:0]cur4_0,input wire [7:0]cur4_1,input wire [7:0]cur4_2,input wire [7:0]cur4_3,input wire [7:0]cur4_4,input wire [7:0]cur4_5,
  input wire [7:0]cur4_6,input wire [7:0]cur4_7,

  input wire [7:0]cur5_0,input wire [7:0]cur5_1,input wire [7:0]cur5_2,input wire [7:0]cur5_3,input wire [7:0]cur5_4,input wire [7:0]cur5_5,
  input wire [7:0]cur5_6,input wire [7:0]cur5_7,

  input wire [7:0]cur6_0,input wire [7:0]cur6_1,input wire [7:0]cur6_2,input wire [7:0]cur6_3,input wire [7:0]cur6_4,input wire [7:0]cur6_5,
  input wire [7:0]cur6_6,input wire [7:0]cur6_7,

  input wire [7:0]cur7_0,input wire [7:0]cur7_1,input wire [7:0]cur7_2,input wire [7:0]cur7_3,input wire [7:0]cur7_4,input wire [7:0]cur7_5,
  input wire [7:0]cur7_6,input wire [7:0]cur7_7,

  output wire [13:0] result0,output wire [13:0] result1,output wire [13:0] result2,output wire [13:0] result3,output wire [13:0] result4,output wire [13:0] result5,output wire [13:0] result6,output wire [13:0] result7,
output wire [13:0] result8,output wire [13:0] result9,output wire [13:0] result10,output wire [13:0] result11,output wire [13:0] result12,output wire [13:0] result13,output wire [13:0] result14,output wire [13:0] result15
//64个cur input?
);
// reg finish_one;
pe pe_00(
  .clk (clk),
  .rst (rst),
  //全局信号
.compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),

  //全局信号
  .cur0_0 (cur0_0),.cur0_1 (cur0_1),.cur0_2 (cur0_2),.cur0_3 (cur0_3),.cur0_4 (cur0_4),
  .cur0_5 (cur0_5),.cur0_6 (cur0_6),.cur0_7 (cur0_7),.ref0 (ref0),
  .cur1_0 (cur1_0),.cur1_1 (cur1_1),.cur1_2 (cur1_2),.cur1_3 (cur1_3),.cur1_4 (cur1_4),.cur1_5 (cur1_5),.cur1_6 (cur1_6),.cur1_7 (cur1_7),.ref1 (ref1),
  .cur2_0 (cur2_0),.cur2_1 (cur2_1),.cur2_2 (cur2_2),.cur2_3 (cur2_3),.cur2_4 (cur2_4),
  .cur2_5 (cur2_5),.cur2_6 (cur2_6),.cur2_7 (cur2_7),.ref2 (ref2),.cur3_0 (cur3_0),
  .cur3_1 (cur3_1),.cur3_2 (cur3_2),.cur3_3 (cur3_3),.cur3_4 (cur3_4),.cur3_5 (cur3_5),
  .cur3_6 (cur3_6),.cur3_7 (cur3_7),.ref3 (ref3),
  .cur4_0 (cur4_0),.cur4_1 (cur4_1),.cur4_2 (cur4_2),.cur4_3 (cur4_3),.cur4_4 (cur4_4),
  .cur4_5 (cur4_5),.cur4_6 (cur4_6),.cur4_7 (cur4_7),.ref4 (ref4),
  .cur5_0 (cur5_0),.cur5_1 (cur5_1),.cur5_2 (cur5_2),.cur5_3 (cur5_3),.cur5_4 (cur5_4),
  .cur5_5 (cur5_5),.cur5_6 (cur5_6),.cur5_7 (cur5_7),.ref5 (ref5),
  .cur6_0 (cur6_0),.cur6_1 (cur6_1),.cur6_2 (cur6_2),.cur6_3 (cur6_3),.cur6_4 (cur6_4),
  .cur6_5 (cur6_5),.cur6_6 (cur6_6),.cur6_7 (cur6_7),.ref6 (ref6),.cur7_0 (cur7_0),
  .cur7_1 (cur7_1),.cur7_2 (cur7_2),.cur7_3 (cur7_3),.cur7_4 (cur7_4), .cur7_5 (cur7_5),
  .cur7_6 (cur7_6),.cur7_7 (cur7_7),.ref7 (ref7),
  .result (result0));

pe pe_01(
  .clk (clk),
  .rst (rst),
  //全局信号
.compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  //全局信号
  .cur0_0 (cur0_0),.cur0_1 (cur0_1),.cur0_2 (cur0_2),.cur0_3 (cur0_3),.cur0_4 (cur0_4),
  .cur0_5 (cur0_5),.cur0_6 (cur0_6),.cur0_7 (cur0_7),.ref0 (ref1),
  .cur1_0 (cur1_0),.cur1_1 (cur1_1),.cur1_2 (cur1_2),.cur1_3 (cur1_3),.cur1_4 (cur1_4),.cur1_5 (cur1_5),.cur1_6 (cur1_6),.cur1_7 (cur1_7),.ref1 (ref2),
  .cur2_0 (cur2_0),.cur2_1 (cur2_1),.cur2_2 (cur2_2),.cur2_3 (cur2_3),.cur2_4 (cur2_4),
  .cur2_5 (cur2_5),.cur2_6 (cur2_6),.cur2_7 (cur2_7),.ref2 (ref3),.cur3_0 (cur3_0),
  .cur3_1 (cur3_1),.cur3_2 (cur3_2),.cur3_3 (cur3_3),.cur3_4 (cur3_4),.cur3_5 (cur3_5),
  .cur3_6 (cur3_6),.cur3_7 (cur3_7),.ref3 (ref4),
  .cur4_0 (cur4_0),.cur4_1 (cur4_1),.cur4_2 (cur4_2),.cur4_3 (cur4_3),.cur4_4 (cur4_4),
  .cur4_5 (cur4_5),.cur4_6 (cur4_6),.cur4_7 (cur4_7),.ref4 (ref5),
  .cur5_0 (cur5_0),.cur5_1 (cur5_1),.cur5_2 (cur5_2),.cur5_3 (cur5_3),.cur5_4 (cur5_4),
  .cur5_5 (cur5_5),.cur5_6 (cur5_6),.cur5_7 (cur5_7),.ref5 (ref6),
  .cur6_0 (cur6_0),.cur6_1 (cur6_1),.cur6_2 (cur6_2),.cur6_3 (cur6_3),.cur6_4 (cur6_4),
  .cur6_5 (cur6_5),.cur6_6 (cur6_6),.cur6_7 (cur6_7),.ref6 (ref7),.cur7_0 (cur7_0),
  .cur7_1 (cur7_1),.cur7_2 (cur7_2),.cur7_3 (cur7_3),.cur7_4 (cur7_4), .cur7_5 (cur7_5),
  .cur7_6 (cur7_6),.cur7_7 (cur7_7),.ref7 (ref8),
  .result (result1));

pe pe_02(
  .clk (clk),
  .rst (rst),
  //全局信号
.compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  //全局信号
  .cur0_0 (cur0_0),.cur0_1 (cur0_1),.cur0_2 (cur0_2),.cur0_3 (cur0_3),.cur0_4 (cur0_4),
  .cur0_5 (cur0_5),.cur0_6 (cur0_6),.cur0_7 (cur0_7),.ref0 (ref2),
  .cur1_0 (cur1_0),.cur1_1 (cur1_1),.cur1_2 (cur1_2),.cur1_3 (cur1_3),.cur1_4 (cur1_4),.cur1_5 (cur1_5),.cur1_6 (cur1_6),.cur1_7 (cur1_7),.ref1 (ref3),
  .cur2_0 (cur2_0),.cur2_1 (cur2_1),.cur2_2 (cur2_2),.cur2_3 (cur2_3),.cur2_4 (cur2_4),
  .cur2_5 (cur2_5),.cur2_6 (cur2_6),.cur2_7 (cur2_7),.ref2 (ref4),.cur3_0 (cur3_0),
  .cur3_1 (cur3_1),.cur3_2 (cur3_2),.cur3_3 (cur3_3),.cur3_4 (cur3_4),.cur3_5 (cur3_5),
  .cur3_6 (cur3_6),.cur3_7 (cur3_7),.ref3 (ref5),
  .cur4_0 (cur4_0),.cur4_1 (cur4_1),.cur4_2 (cur4_2),.cur4_3 (cur4_3),.cur4_4 (cur4_4),
  .cur4_5 (cur4_5),.cur4_6 (cur4_6),.cur4_7 (cur4_7),.ref4 (ref6),
  .cur5_0 (cur5_0),.cur5_1 (cur5_1),.cur5_2 (cur5_2),.cur5_3 (cur5_3),.cur5_4 (cur5_4),
  .cur5_5 (cur5_5),.cur5_6 (cur5_6),.cur5_7 (cur5_7),.ref5 (ref7),
  .cur6_0 (cur6_0),.cur6_1 (cur6_1),.cur6_2 (cur6_2),.cur6_3 (cur6_3),.cur6_4 (cur6_4),
  .cur6_5 (cur6_5),.cur6_6 (cur6_6),.cur6_7 (cur6_7),.ref6 (ref8),.cur7_0 (cur7_0),
  .cur7_1 (cur7_1),.cur7_2 (cur7_2),.cur7_3 (cur7_3),.cur7_4 (cur7_4), .cur7_5 (cur7_5),
  .cur7_6 (cur7_6),.cur7_7 (cur7_7),.ref7 (ref9),
  .result (result2));


pe pe_03(
  .clk (clk),
  .rst (rst),
  //全局信号
.compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  //全局信号
  .cur0_0 (cur0_0),.cur0_1 (cur0_1),.cur0_2 (cur0_2),.cur0_3 (cur0_3),.cur0_4 (cur0_4),
  .cur0_5 (cur0_5),.cur0_6 (cur0_6),.cur0_7 (cur0_7),.ref0 (ref3),
  .cur1_0 (cur1_0),.cur1_1 (cur1_1),.cur1_2 (cur1_2),.cur1_3 (cur1_3),.cur1_4 (cur1_4),.cur1_5 (cur1_5),.cur1_6 (cur1_6),.cur1_7 (cur1_7),.ref1 (ref4),
  .cur2_0 (cur2_0),.cur2_1 (cur2_1),.cur2_2 (cur2_2),.cur2_3 (cur2_3),.cur2_4 (cur2_4),
  .cur2_5 (cur2_5),.cur2_6 (cur2_6),.cur2_7 (cur2_7),.ref2 (ref5),.cur3_0 (cur3_0),
  .cur3_1 (cur3_1),.cur3_2 (cur3_2),.cur3_3 (cur3_3),.cur3_4 (cur3_4),.cur3_5 (cur3_5),
  .cur3_6 (cur3_6),.cur3_7 (cur3_7),.ref3 (ref6),
  .cur4_0 (cur4_0),.cur4_1 (cur4_1),.cur4_2 (cur4_2),.cur4_3 (cur4_3),.cur4_4 (cur4_4),
  .cur4_5 (cur4_5),.cur4_6 (cur4_6),.cur4_7 (cur4_7),.ref4 (ref7),
  .cur5_0 (cur5_0),.cur5_1 (cur5_1),.cur5_2 (cur5_2),.cur5_3 (cur5_3),.cur5_4 (cur5_4),
  .cur5_5 (cur5_5),.cur5_6 (cur5_6),.cur5_7 (cur5_7),.ref5 (ref8),
  .cur6_0 (cur6_0),.cur6_1 (cur6_1),.cur6_2 (cur6_2),.cur6_3 (cur6_3),.cur6_4 (cur6_4),
  .cur6_5 (cur6_5),.cur6_6 (cur6_6),.cur6_7 (cur6_7),.ref6 (ref9),.cur7_0 (cur7_0),
  .cur7_1 (cur7_1),.cur7_2 (cur7_2),.cur7_3 (cur7_3),.cur7_4 (cur7_4), .cur7_5 (cur7_5),
  .cur7_6 (cur7_6),.cur7_7 (cur7_7),.ref7 (ref10),
  .result (result3));


pe pe_04(
  .clk (clk),
  .rst (rst),
  //全局信号
.compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  //全局信号
  .cur0_0 (cur0_0),.cur0_1 (cur0_1),.cur0_2 (cur0_2),.cur0_3 (cur0_3),.cur0_4 (cur0_4),
  .cur0_5 (cur0_5),.cur0_6 (cur0_6),.cur0_7 (cur0_7),.ref0 (ref4),
  .cur1_0 (cur1_0),.cur1_1 (cur1_1),.cur1_2 (cur1_2),.cur1_3 (cur1_3),.cur1_4 (cur1_4),.cur1_5 (cur1_5),.cur1_6 (cur1_6),.cur1_7 (cur1_7),.ref1 (ref5),
  .cur2_0 (cur2_0),.cur2_1 (cur2_1),.cur2_2 (cur2_2),.cur2_3 (cur2_3),.cur2_4 (cur2_4),
  .cur2_5 (cur2_5),.cur2_6 (cur2_6),.cur2_7 (cur2_7),.ref2 (ref6),.cur3_0 (cur3_0),
  .cur3_1 (cur3_1),.cur3_2 (cur3_2),.cur3_3 (cur3_3),.cur3_4 (cur3_4),.cur3_5 (cur3_5),
  .cur3_6 (cur3_6),.cur3_7 (cur3_7),.ref3 (ref7),
  .cur4_0 (cur4_0),.cur4_1 (cur4_1),.cur4_2 (cur4_2),.cur4_3 (cur4_3),.cur4_4 (cur4_4),
  .cur4_5 (cur4_5),.cur4_6 (cur4_6),.cur4_7 (cur4_7),.ref4 (ref8),
  .cur5_0 (cur5_0),.cur5_1 (cur5_1),.cur5_2 (cur5_2),.cur5_3 (cur5_3),.cur5_4 (cur5_4),
  .cur5_5 (cur5_5),.cur5_6 (cur5_6),.cur5_7 (cur5_7),.ref5 (ref9),
  .cur6_0 (cur6_0),.cur6_1 (cur6_1),.cur6_2 (cur6_2),.cur6_3 (cur6_3),.cur6_4 (cur6_4),
  .cur6_5 (cur6_5),.cur6_6 (cur6_6),.cur6_7 (cur6_7),.ref6 (ref10),.cur7_0 (cur7_0),
  .cur7_1 (cur7_1),.cur7_2 (cur7_2),.cur7_3 (cur7_3),.cur7_4 (cur7_4), .cur7_5 (cur7_5),
  .cur7_6 (cur7_6),.cur7_7 (cur7_7),.ref7 (ref11),
  .result (result4));


pe pe_05(
  .clk (clk),
  .rst (rst),
  //全局信号
.compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  //全局信号
  .cur0_0 (cur0_0),.cur0_1 (cur0_1),.cur0_2 (cur0_2),.cur0_3 (cur0_3),.cur0_4 (cur0_4),
  .cur0_5 (cur0_5),.cur0_6 (cur0_6),.cur0_7 (cur0_7),.ref0 (ref5),
  .cur1_0 (cur1_0),.cur1_1 (cur1_1),.cur1_2 (cur1_2),.cur1_3 (cur1_3),.cur1_4 (cur1_4),.cur1_5 (cur1_5),.cur1_6 (cur1_6),.cur1_7 (cur1_7),.ref1 (ref6),
  .cur2_0 (cur2_0),.cur2_1 (cur2_1),.cur2_2 (cur2_2),.cur2_3 (cur2_3),.cur2_4 (cur2_4),
  .cur2_5 (cur2_5),.cur2_6 (cur2_6),.cur2_7 (cur2_7),.ref2 (ref7),.cur3_0 (cur3_0),
  .cur3_1 (cur3_1),.cur3_2 (cur3_2),.cur3_3 (cur3_3),.cur3_4 (cur3_4),.cur3_5 (cur3_5),
  .cur3_6 (cur3_6),.cur3_7 (cur3_7),.ref3 (ref8),
  .cur4_0 (cur4_0),.cur4_1 (cur4_1),.cur4_2 (cur4_2),.cur4_3 (cur4_3),.cur4_4 (cur4_4),
  .cur4_5 (cur4_5),.cur4_6 (cur4_6),.cur4_7 (cur4_7),.ref4 (ref9),
  .cur5_0 (cur5_0),.cur5_1 (cur5_1),.cur5_2 (cur5_2),.cur5_3 (cur5_3),.cur5_4 (cur5_4),
  .cur5_5 (cur5_5),.cur5_6 (cur5_6),.cur5_7 (cur5_7),.ref5 (ref10),
  .cur6_0 (cur6_0),.cur6_1 (cur6_1),.cur6_2 (cur6_2),.cur6_3 (cur6_3),.cur6_4 (cur6_4),
  .cur6_5 (cur6_5),.cur6_6 (cur6_6),.cur6_7 (cur6_7),.ref6 (ref11),.cur7_0 (cur7_0),
  .cur7_1 (cur7_1),.cur7_2 (cur7_2),.cur7_3 (cur7_3),.cur7_4 (cur7_4), .cur7_5 (cur7_5),
  .cur7_6 (cur7_6),.cur7_7 (cur7_7),.ref7 (ref12),
  .result (result5));



pe pe_06(
  .clk (clk),
  .rst (rst),
  //全局信号
.compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  //全局信号
  .cur0_0 (cur0_0),.cur0_1 (cur0_1),.cur0_2 (cur0_2),.cur0_3 (cur0_3),.cur0_4 (cur0_4),
  .cur0_5 (cur0_5),.cur0_6 (cur0_6),.cur0_7 (cur0_7),.ref0 (ref6),
  .cur1_0 (cur1_0),.cur1_1 (cur1_1),.cur1_2 (cur1_2),.cur1_3 (cur1_3),.cur1_4 (cur1_4),.cur1_5 (cur1_5),.cur1_6 (cur1_6),.cur1_7 (cur1_7),.ref1 (ref7),
  .cur2_0 (cur2_0),.cur2_1 (cur2_1),.cur2_2 (cur2_2),.cur2_3 (cur2_3),.cur2_4 (cur2_4),
  .cur2_5 (cur2_5),.cur2_6 (cur2_6),.cur2_7 (cur2_7),.ref2 (ref8),.cur3_0 (cur3_0),
  .cur3_1 (cur3_1),.cur3_2 (cur3_2),.cur3_3 (cur3_3),.cur3_4 (cur3_4),.cur3_5 (cur3_5),
  .cur3_6 (cur3_6),.cur3_7 (cur3_7),.ref3 (ref9),
  .cur4_0 (cur4_0),.cur4_1 (cur4_1),.cur4_2 (cur4_2),.cur4_3 (cur4_3),.cur4_4 (cur4_4),
  .cur4_5 (cur4_5),.cur4_6 (cur4_6),.cur4_7 (cur4_7),.ref4 (ref10),
  .cur5_0 (cur5_0),.cur5_1 (cur5_1),.cur5_2 (cur5_2),.cur5_3 (cur5_3),.cur5_4 (cur5_4),
  .cur5_5 (cur5_5),.cur5_6 (cur5_6),.cur5_7 (cur5_7),.ref5 (ref11),
  .cur6_0 (cur6_0),.cur6_1 (cur6_1),.cur6_2 (cur6_2),.cur6_3 (cur6_3),.cur6_4 (cur6_4),
  .cur6_5 (cur6_5),.cur6_6 (cur6_6),.cur6_7 (cur6_7),.ref6 (ref12),.cur7_0 (cur7_0),
  .cur7_1 (cur7_1),.cur7_2 (cur7_2),.cur7_3 (cur7_3),.cur7_4 (cur7_4), .cur7_5 (cur7_5),
  .cur7_6 (cur7_6),.cur7_7 (cur7_7),.ref7 (ref13),
  .result (result6));


pe pe_07(
  .clk (clk),
  .rst (rst),
  //全局信号
.compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  //全局信号
  .cur0_0 (cur0_0),.cur0_1 (cur0_1),.cur0_2 (cur0_2),.cur0_3 (cur0_3),.cur0_4 (cur0_4),
  .cur0_5 (cur0_5),.cur0_6 (cur0_6),.cur0_7 (cur0_7),.ref0 (ref7),
  .cur1_0 (cur1_0),.cur1_1 (cur1_1),.cur1_2 (cur1_2),.cur1_3 (cur1_3),.cur1_4 (cur1_4),.cur1_5 (cur1_5),.cur1_6 (cur1_6),.cur1_7 (cur1_7),.ref1 (ref8),
  .cur2_0 (cur2_0),.cur2_1 (cur2_1),.cur2_2 (cur2_2),.cur2_3 (cur2_3),.cur2_4 (cur2_4),
  .cur2_5 (cur2_5),.cur2_6 (cur2_6),.cur2_7 (cur2_7),.ref2 (ref9),.cur3_0 (cur3_0),
  .cur3_1 (cur3_1),.cur3_2 (cur3_2),.cur3_3 (cur3_3),.cur3_4 (cur3_4),.cur3_5 (cur3_5),
  .cur3_6 (cur3_6),.cur3_7 (cur3_7),.ref3 (ref10),
  .cur4_0 (cur4_0),.cur4_1 (cur4_1),.cur4_2 (cur4_2),.cur4_3 (cur4_3),.cur4_4 (cur4_4),
  .cur4_5 (cur4_5),.cur4_6 (cur4_6),.cur4_7 (cur4_7),.ref4 (ref11),
  .cur5_0 (cur5_0),.cur5_1 (cur5_1),.cur5_2 (cur5_2),.cur5_3 (cur5_3),.cur5_4 (cur5_4),
  .cur5_5 (cur5_5),.cur5_6 (cur5_6),.cur5_7 (cur5_7),.ref5 (ref12),
  .cur6_0 (cur6_0),.cur6_1 (cur6_1),.cur6_2 (cur6_2),.cur6_3 (cur6_3),.cur6_4 (cur6_4),
  .cur6_5 (cur6_5),.cur6_6 (cur6_6),.cur6_7 (cur6_7),.ref6 (ref13),.cur7_0 (cur7_0),
  .cur7_1 (cur7_1),.cur7_2 (cur7_2),.cur7_3 (cur7_3),.cur7_4 (cur7_4), .cur7_5 (cur7_5),
  .cur7_6 (cur7_6),.cur7_7 (cur7_7),.ref7 (ref14),
  .result (result7));


pe pe_08(
  .clk (clk),
  .rst (rst),
  //全局信号
.compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  //全局信号
  .cur0_0 (cur0_0),.cur0_1 (cur0_1),.cur0_2 (cur0_2),.cur0_3 (cur0_3),.cur0_4 (cur0_4),
  .cur0_5 (cur0_5),.cur0_6 (cur0_6),.cur0_7 (cur0_7),.ref0 (ref8),
  .cur1_0 (cur1_0),.cur1_1 (cur1_1),.cur1_2 (cur1_2),.cur1_3 (cur1_3),.cur1_4 (cur1_4),.cur1_5 (cur1_5),.cur1_6 (cur1_6),.cur1_7 (cur1_7),.ref1 (ref9),
  .cur2_0 (cur2_0),.cur2_1 (cur2_1),.cur2_2 (cur2_2),.cur2_3 (cur2_3),.cur2_4 (cur2_4),
  .cur2_5 (cur2_5),.cur2_6 (cur2_6),.cur2_7 (cur2_7),.ref2 (ref10),.cur3_0 (cur3_0),
  .cur3_1 (cur3_1),.cur3_2 (cur3_2),.cur3_3 (cur3_3),.cur3_4 (cur3_4),.cur3_5 (cur3_5),
  .cur3_6 (cur3_6),.cur3_7 (cur3_7),.ref3 (ref11),
  .cur4_0 (cur4_0),.cur4_1 (cur4_1),.cur4_2 (cur4_2),.cur4_3 (cur4_3),.cur4_4 (cur4_4),
  .cur4_5 (cur4_5),.cur4_6 (cur4_6),.cur4_7 (cur4_7),.ref4 (ref12),
  .cur5_0 (cur5_0),.cur5_1 (cur5_1),.cur5_2 (cur5_2),.cur5_3 (cur5_3),.cur5_4 (cur5_4),
  .cur5_5 (cur5_5),.cur5_6 (cur5_6),.cur5_7 (cur5_7),.ref5 (ref13),
  .cur6_0 (cur6_0),.cur6_1 (cur6_1),.cur6_2 (cur6_2),.cur6_3 (cur6_3),.cur6_4 (cur6_4),
  .cur6_5 (cur6_5),.cur6_6 (cur6_6),.cur6_7 (cur6_7),.ref6 (ref14),.cur7_0 (cur7_0),
  .cur7_1 (cur7_1),.cur7_2 (cur7_2),.cur7_3 (cur7_3),.cur7_4 (cur7_4), .cur7_5 (cur7_5),
  .cur7_6 (cur7_6),.cur7_7 (cur7_7),.ref7 (ref15),
  .result (result8));


pe pe_09(
  .clk (clk),
  .rst (rst),
  //全局信号
.compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  //全局信号
  .cur0_0 (cur0_0),.cur0_1 (cur0_1),.cur0_2 (cur0_2),.cur0_3 (cur0_3),.cur0_4 (cur0_4),
  .cur0_5 (cur0_5),.cur0_6 (cur0_6),.cur0_7 (cur0_7),.ref0 (ref9),
  .cur1_0 (cur1_0),.cur1_1 (cur1_1),.cur1_2 (cur1_2),.cur1_3 (cur1_3),.cur1_4 (cur1_4),.cur1_5 (cur1_5),.cur1_6 (cur1_6),.cur1_7 (cur1_7),.ref1 (ref10),
  .cur2_0 (cur2_0),.cur2_1 (cur2_1),.cur2_2 (cur2_2),.cur2_3 (cur2_3),.cur2_4 (cur2_4),
  .cur2_5 (cur2_5),.cur2_6 (cur2_6),.cur2_7 (cur2_7),.ref2 (ref11),.cur3_0 (cur3_0),
  .cur3_1 (cur3_1),.cur3_2 (cur3_2),.cur3_3 (cur3_3),.cur3_4 (cur3_4),.cur3_5 (cur3_5),
  .cur3_6 (cur3_6),.cur3_7 (cur3_7),.ref3 (ref12),
  .cur4_0 (cur4_0),.cur4_1 (cur4_1),.cur4_2 (cur4_2),.cur4_3 (cur4_3),.cur4_4 (cur4_4),
  .cur4_5 (cur4_5),.cur4_6 (cur4_6),.cur4_7 (cur4_7),.ref4 (ref13),
  .cur5_0 (cur5_0),.cur5_1 (cur5_1),.cur5_2 (cur5_2),.cur5_3 (cur5_3),.cur5_4 (cur5_4),
  .cur5_5 (cur5_5),.cur5_6 (cur5_6),.cur5_7 (cur5_7),.ref5 (ref14),
  .cur6_0 (cur6_0),.cur6_1 (cur6_1),.cur6_2 (cur6_2),.cur6_3 (cur6_3),.cur6_4 (cur6_4),
  .cur6_5 (cur6_5),.cur6_6 (cur6_6),.cur6_7 (cur6_7),.ref6 (ref15),.cur7_0 (cur7_0),
  .cur7_1 (cur7_1),.cur7_2 (cur7_2),.cur7_3 (cur7_3),.cur7_4 (cur7_4), .cur7_5 (cur7_5),
  .cur7_6 (cur7_6),.cur7_7 (cur7_7),.ref7 (ref16),
  .result (result9));


pe pe_10(
  .clk (clk),
  .rst (rst),
  //全局信号
.compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  //全局信号
  .cur0_0 (cur0_0),.cur0_1 (cur0_1),.cur0_2 (cur0_2),.cur0_3 (cur0_3),.cur0_4 (cur0_4),
  .cur0_5 (cur0_5),.cur0_6 (cur0_6),.cur0_7 (cur0_7),.ref0 (ref10),
  .cur1_0 (cur1_0),.cur1_1 (cur1_1),.cur1_2 (cur1_2),.cur1_3 (cur1_3),.cur1_4 (cur1_4),.cur1_5 (cur1_5),.cur1_6 (cur1_6),.cur1_7 (cur1_7),.ref1 (ref11),
  .cur2_0 (cur2_0),.cur2_1 (cur2_1),.cur2_2 (cur2_2),.cur2_3 (cur2_3),.cur2_4 (cur2_4),
  .cur2_5 (cur2_5),.cur2_6 (cur2_6),.cur2_7 (cur2_7),.ref2 (ref12),.cur3_0 (cur3_0),
  .cur3_1 (cur3_1),.cur3_2 (cur3_2),.cur3_3 (cur3_3),.cur3_4 (cur3_4),.cur3_5 (cur3_5),
  .cur3_6 (cur3_6),.cur3_7 (cur3_7),.ref3 (ref13),
  .cur4_0 (cur4_0),.cur4_1 (cur4_1),.cur4_2 (cur4_2),.cur4_3 (cur4_3),.cur4_4 (cur4_4),
  .cur4_5 (cur4_5),.cur4_6 (cur4_6),.cur4_7 (cur4_7),.ref4 (ref14),
  .cur5_0 (cur5_0),.cur5_1 (cur5_1),.cur5_2 (cur5_2),.cur5_3 (cur5_3),.cur5_4 (cur5_4),
  .cur5_5 (cur5_5),.cur5_6 (cur5_6),.cur5_7 (cur5_7),.ref5 (ref15),
  .cur6_0 (cur6_0),.cur6_1 (cur6_1),.cur6_2 (cur6_2),.cur6_3 (cur6_3),.cur6_4 (cur6_4),
  .cur6_5 (cur6_5),.cur6_6 (cur6_6),.cur6_7 (cur6_7),.ref6 (ref16),.cur7_0 (cur7_0),
  .cur7_1 (cur7_1),.cur7_2 (cur7_2),.cur7_3 (cur7_3),.cur7_4 (cur7_4), .cur7_5 (cur7_5),
  .cur7_6 (cur7_6),.cur7_7 (cur7_7),.ref7 (ref17),
  .result (result10));


pe pe_11(
  .clk (clk),
  .rst (rst),
  //全局信号
.compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  //全局信号
  .cur0_0 (cur0_0),.cur0_1 (cur0_1),.cur0_2 (cur0_2),.cur0_3 (cur0_3),.cur0_4 (cur0_4),
  .cur0_5 (cur0_5),.cur0_6 (cur0_6),.cur0_7 (cur0_7),.ref0 (ref11),
  .cur1_0 (cur1_0),.cur1_1 (cur1_1),.cur1_2 (cur1_2),.cur1_3 (cur1_3),.cur1_4 (cur1_4),.cur1_5 (cur1_5),.cur1_6 (cur1_6),.cur1_7 (cur1_7),.ref1 (ref12),
  .cur2_0 (cur2_0),.cur2_1 (cur2_1),.cur2_2 (cur2_2),.cur2_3 (cur2_3),.cur2_4 (cur2_4),
  .cur2_5 (cur2_5),.cur2_6 (cur2_6),.cur2_7 (cur2_7),.ref2 (ref13),.cur3_0 (cur3_0),
  .cur3_1 (cur3_1),.cur3_2 (cur3_2),.cur3_3 (cur3_3),.cur3_4 (cur3_4),.cur3_5 (cur3_5),
  .cur3_6 (cur3_6),.cur3_7 (cur3_7),.ref3(ref14),
  .cur4_0 (cur4_0),.cur4_1 (cur4_1),.cur4_2 (cur4_2),.cur4_3 (cur4_3),.cur4_4 (cur4_4),
  .cur4_5 (cur4_5),.cur4_6 (cur4_6),.cur4_7 (cur4_7),.ref4 (ref15),
  .cur5_0 (cur5_0),.cur5_1 (cur5_1),.cur5_2 (cur5_2),.cur5_3 (cur5_3),.cur5_4 (cur5_4),
  .cur5_5 (cur5_5),.cur5_6 (cur5_6),.cur5_7 (cur5_7),.ref5 (ref16),
  .cur6_0 (cur6_0),.cur6_1 (cur6_1),.cur6_2 (cur6_2),.cur6_3 (cur6_3),.cur6_4 (cur6_4),
  .cur6_5 (cur6_5),.cur6_6 (cur6_6),.cur6_7 (cur6_7),.ref6 (ref17),.cur7_0 (cur7_0),
  .cur7_1 (cur7_1),.cur7_2 (cur7_2),.cur7_3 (cur7_3),.cur7_4 (cur7_4), .cur7_5 (cur7_5),
  .cur7_6 (cur7_6),.cur7_7 (cur7_7),.ref7 (ref18),
  .result (result11));


pe pe_12(
  .clk (clk),
  .rst (rst),
  //全局信号
.compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  //全局信号
  .cur0_0 (cur0_0),.cur0_1 (cur0_1),.cur0_2 (cur0_2),.cur0_3 (cur0_3),.cur0_4 (cur0_4),
  .cur0_5 (cur0_5),.cur0_6 (cur0_6),.cur0_7 (cur0_7),.ref0 (ref12),
  .cur1_0 (cur1_0),.cur1_1 (cur1_1),.cur1_2 (cur1_2),.cur1_3 (cur1_3),.cur1_4 (cur1_4),.cur1_5 (cur1_5),.cur1_6 (cur1_6),.cur1_7 (cur1_7),.ref1 (ref13),
  .cur2_0 (cur2_0),.cur2_1 (cur2_1),.cur2_2 (cur2_2),.cur2_3 (cur2_3),.cur2_4 (cur2_4),
  .cur2_5 (cur2_5),.cur2_6 (cur2_6),.cur2_7 (cur2_7),.ref2 (ref14),.cur3_0 (cur3_0),
  .cur3_1 (cur3_1),.cur3_2 (cur3_2),.cur3_3 (cur3_3),.cur3_4 (cur3_4),.cur3_5 (cur3_5),
  .cur3_6 (cur3_6),.cur3_7 (cur3_7),.ref3 (ref15),
  .cur4_0 (cur4_0),.cur4_1 (cur4_1),.cur4_2 (cur4_2),.cur4_3 (cur4_3),.cur4_4 (cur4_4),
  .cur4_5 (cur4_5),.cur4_6 (cur4_6),.cur4_7 (cur4_7),.ref4 (ref16),
  .cur5_0 (cur5_0),.cur5_1 (cur5_1),.cur5_2 (cur5_2),.cur5_3 (cur5_3),.cur5_4 (cur5_4),
  .cur5_5 (cur5_5),.cur5_6 (cur5_6),.cur5_7 (cur5_7),.ref5 (ref17),
  .cur6_0 (cur6_0),.cur6_1 (cur6_1),.cur6_2 (cur6_2),.cur6_3 (cur6_3),.cur6_4 (cur6_4),
  .cur6_5 (cur6_5),.cur6_6 (cur6_6),.cur6_7 (cur6_7),.ref6 (ref18),.cur7_0 (cur7_0),
  .cur7_1 (cur7_1),.cur7_2 (cur7_2),.cur7_3 (cur7_3),.cur7_4 (cur7_4), .cur7_5 (cur7_5),
  .cur7_6 (cur7_6),.cur7_7 (cur7_7),.ref7 (ref19),
  .result (result12));


pe pe_13(
  .clk (clk),
  .rst (rst),
  //全局信号
.compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  //全局信号
  .cur0_0 (cur0_0),.cur0_1 (cur0_1),.cur0_2 (cur0_2),.cur0_3 (cur0_3),.cur0_4 (cur0_4),
  .cur0_5 (cur0_5),.cur0_6 (cur0_6),.cur0_7 (cur0_7),.ref0 (ref13),
  .cur1_0 (cur1_0),.cur1_1 (cur1_1),.cur1_2 (cur1_2),.cur1_3 (cur1_3),.cur1_4 (cur1_4),.cur1_5 (cur1_5),.cur1_6 (cur1_6),.cur1_7 (cur1_7),.ref1 (ref14),
  .cur2_0 (cur2_0),.cur2_1 (cur2_1),.cur2_2 (cur2_2),.cur2_3 (cur2_3),.cur2_4 (cur2_4),
  .cur2_5 (cur2_5),.cur2_6 (cur2_6),.cur2_7 (cur2_7),.ref2 (ref15),.cur3_0 (cur3_0),
  .cur3_1 (cur3_1),.cur3_2 (cur3_2),.cur3_3 (cur3_3),.cur3_4 (cur3_4),.cur3_5 (cur3_5),
  .cur3_6 (cur3_6),.cur3_7 (cur3_7),.ref3 (ref16),
  .cur4_0 (cur4_0),.cur4_1 (cur4_1),.cur4_2 (cur4_2),.cur4_3 (cur4_3),.cur4_4 (cur4_4),
  .cur4_5 (cur4_5),.cur4_6 (cur4_6),.cur4_7 (cur4_7),.ref4 (ref17),
  .cur5_0 (cur5_0),.cur5_1 (cur5_1),.cur5_2 (cur5_2),.cur5_3 (cur5_3),.cur5_4 (cur5_4),
  .cur5_5 (cur5_5),.cur5_6 (cur5_6),.cur5_7 (cur5_7),.ref5 (ref18),
  .cur6_0 (cur6_0),.cur6_1 (cur6_1),.cur6_2 (cur6_2),.cur6_3 (cur6_3),.cur6_4 (cur6_4),
  .cur6_5 (cur6_5),.cur6_6 (cur6_6),.cur6_7 (cur6_7),.ref6 (ref19),.cur7_0 (cur7_0),
  .cur7_1 (cur7_1),.cur7_2 (cur7_2),.cur7_3 (cur7_3),.cur7_4 (cur7_4), .cur7_5 (cur7_5),
  .cur7_6 (cur7_6),.cur7_7 (cur7_7),.ref7 (ref20),
  .result (result13));

pe pe_14(
  .clk (clk),
  .rst (rst),
  //全局信号
.compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  //全局信号
  .cur0_0 (cur0_0),.cur0_1 (cur0_1),.cur0_2 (cur0_2),.cur0_3 (cur0_3),.cur0_4 (cur0_4),
  .cur0_5 (cur0_5),.cur0_6 (cur0_6),.cur0_7 (cur0_7),.ref0 (ref14),
  .cur1_0 (cur1_0),.cur1_1 (cur1_1),.cur1_2 (cur1_2),.cur1_3 (cur1_3),.cur1_4 (cur1_4),.cur1_5 (cur1_5),.cur1_6 (cur1_6),.cur1_7 (cur1_7),.ref1 (ref15),
  .cur2_0 (cur2_0),.cur2_1 (cur2_1),.cur2_2 (cur2_2),.cur2_3 (cur2_3),.cur2_4 (cur2_4),
  .cur2_5 (cur2_5),.cur2_6 (cur2_6),.cur2_7 (cur2_7),.ref2 (ref16),.cur3_0 (cur3_0),
  .cur3_1 (cur3_1),.cur3_2 (cur3_2),.cur3_3 (cur3_3),.cur3_4 (cur3_4),.cur3_5 (cur3_5),
  .cur3_6 (cur3_6),.cur3_7 (cur3_7),.ref3 (ref17),
  .cur4_0 (cur4_0),.cur4_1 (cur4_1),.cur4_2 (cur4_2),.cur4_3 (cur4_3),.cur4_4 (cur4_4),
  .cur4_5 (cur4_5),.cur4_6 (cur4_6),.cur4_7 (cur4_7),.ref4 (ref18),
  .cur5_0 (cur5_0),.cur5_1 (cur5_1),.cur5_2 (cur5_2),.cur5_3 (cur5_3),.cur5_4 (cur5_4),
  .cur5_5 (cur5_5),.cur5_6 (cur5_6),.cur5_7 (cur5_7),.ref5 (ref19),
  .cur6_0 (cur6_0),.cur6_1 (cur6_1),.cur6_2 (cur6_2),.cur6_3 (cur6_3),.cur6_4 (cur6_4),
  .cur6_5 (cur6_5),.cur6_6 (cur6_6),.cur6_7 (cur6_7),.ref6 (ref20),.cur7_0 (cur7_0),
  .cur7_1 (cur7_1),.cur7_2 (cur7_2),.cur7_3 (cur7_3),.cur7_4 (cur7_4), .cur7_5 (cur7_5),
  .cur7_6 (cur7_6),.cur7_7 (cur7_7),.ref7 (ref21),
  .result (result14));






pe pe_15(
  .clk (clk),
  .rst (rst),
  //全局信号
.compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  //全局信号
  .cur0_0 (cur0_0),.cur0_1 (cur0_1),.cur0_2 (cur0_2),.cur0_3 (cur0_3),.cur0_4 (cur0_4),
  .cur0_5 (cur0_5),.cur0_6 (cur0_6),.cur0_7 (cur0_7),.ref0 (ref15),
  .cur1_0 (cur1_0),.cur1_1 (cur1_1),.cur1_2 (cur1_2),.cur1_3 (cur1_3),.cur1_4 (cur1_4),.cur1_5 (cur1_5),.cur1_6 (cur1_6),.cur1_7 (cur1_7),.ref1 (ref16),
  .cur2_0 (cur2_0),.cur2_1 (cur2_1),.cur2_2 (cur2_2),.cur2_3 (cur2_3),.cur2_4 (cur2_4),
  .cur2_5 (cur2_5),.cur2_6 (cur2_6),.cur2_7 (cur2_7),.ref2 (ref17),.cur3_0 (cur3_0),
  .cur3_1 (cur3_1),.cur3_2 (cur3_2),.cur3_3 (cur3_3),.cur3_4 (cur3_4),.cur3_5 (cur3_5),
  .cur3_6 (cur3_6),.cur3_7 (cur3_7),.ref3 (ref18),
  .cur4_0 (cur4_0),.cur4_1 (cur4_1),.cur4_2 (cur4_2),.cur4_3 (cur4_3),.cur4_4 (cur4_4),
  .cur4_5 (cur4_5),.cur4_6 (cur4_6),.cur4_7 (cur4_7),.ref4 (ref19),
  .cur5_0 (cur5_0),.cur5_1 (cur5_1),.cur5_2 (cur5_2),.cur5_3 (cur5_3),.cur5_4 (cur5_4),
  .cur5_5 (cur5_5),.cur5_6 (cur5_6),.cur5_7 (cur5_7),.ref5 (ref20),
  .cur6_0 (cur6_0),.cur6_1 (cur6_1),.cur6_2 (cur6_2),.cur6_3 (cur6_3),.cur6_4 (cur6_4),
  .cur6_5 (cur6_5),.cur6_6 (cur6_6),.cur6_7 (cur6_7),.ref6 (ref21),.cur7_0 (cur7_0),
  .cur7_1 (cur7_1),.cur7_2 (cur7_2),.cur7_3 (cur7_3),.cur7_4 (cur7_4), .cur7_5 (cur7_5),
  .cur7_6 (cur7_6),.cur7_7 (cur7_7),.ref7 (ref22),
  .result (result15));
endmodule
