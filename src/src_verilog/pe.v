`include "./pe_line.v"
module pe(
  input wire clk,
  input wire rst,
  // input wire [12:0]clk_index,
  input wire compute_flag,
  input wire [7:0]cur0_0,
	input wire [7:0]cur0_1,
	input wire [7:0]cur0_2,
	input wire [7:0]cur0_3,
	input wire [7:0]cur0_4,
	input wire [7:0]cur0_5,
	input wire [7:0]cur0_6,
	input wire [7:0]cur0_7,
// input wire pe_flag,
	input wire [3:0]ref0,

  input wire [7:0]cur1_0,
	input wire [7:0]cur1_1,
	input wire [7:0]cur1_2,
	input wire [7:0]cur1_3,
	input wire [7:0]cur1_4,
	input wire [7:0]cur1_5,
	input wire [7:0]cur1_6,
	input wire [7:0]cur1_7,

	input wire [3:0]ref1,

  input wire [7:0]cur2_0,
	input wire [7:0]cur2_1,
	input wire [7:0]cur2_2,
	input wire [7:0]cur2_3,
	input wire [7:0]cur2_4,
	input wire [7:0]cur2_5,
	input wire [7:0]cur2_6,
	input wire [7:0]cur2_7,

	input wire [3:0]ref2,

  input wire [7:0]cur3_0,
	input wire [7:0]cur3_1,
	input wire [7:0]cur3_2,
	input wire [7:0]cur3_3,
	input wire [7:0]cur3_4,
	input wire [7:0]cur3_5,
	input wire [7:0]cur3_6,
	input wire [7:0]cur3_7,

	input wire [3:0]ref3,

  input wire [7:0]cur4_0,
	input wire [7:0]cur4_1,
	input wire [7:0]cur4_2,
	input wire [7:0]cur4_3,
	input wire [7:0]cur4_4,
	input wire [7:0]cur4_5,
	input wire [7:0]cur4_6,
	input wire [7:0]cur4_7,

	input wire [3:0]ref4,

  input wire [7:0]cur5_0,
	input wire [7:0]cur5_1,
	input wire [7:0]cur5_2,
	input wire [7:0]cur5_3,
	input wire [7:0]cur5_4,
	input wire [7:0]cur5_5,
	input wire [7:0]cur5_6,
	input wire [7:0]cur5_7,

	input wire [3:0]ref5,

  input wire [7:0]cur6_0,
	input wire [7:0]cur6_1,
	input wire [7:0]cur6_2,
	input wire [7:0]cur6_3,
	input wire [7:0]cur6_4,
	input wire [7:0]cur6_5,
	input wire [7:0]cur6_6,
	input wire [7:0]cur6_7,

	input wire [3:0]ref6,

  input wire [7:0]cur7_0,
	input wire [7:0]cur7_1,
	input wire [7:0]cur7_2,
	input wire [7:0]cur7_3,
	input wire [7:0]cur7_4,
	input wire [7:0]cur7_5,
	input wire [7:0]cur7_6,
	input wire [7:0]cur7_7,

	input wire [3:0]ref7,
	input wire pause,
	input wire only_read,
  output reg [13:0] result
);
  wire [10:0] result0;
  wire [10:0] result1;
  wire [10:0] result2;
  wire [10:0] result3;
  wire [10:0] result4;
  wire [10:0] result5;
  wire [10:0] result6;
  wire [10:0] result7;
pe_line  pe_line0(
    .clk     (clk),
.rst     (rst),

    .compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),

    .cur0    (cur0_0),
    .cur1    (cur0_1),
    .cur2    (cur0_2),
    .cur3    (cur0_3),
    .cur4    (cur0_4),
    .cur5    (cur0_5),
    .cur6    (cur0_6),
    .cur7    (cur0_7),
    .ref     (ref0),
    .result_reg    (result0));

pe_line  pe_line1(
    .clk     (clk),
.rst     (rst),

    .compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
    
    .cur0    (cur1_0),
    .cur1    (cur1_1),
    .cur2    (cur1_2),
    .cur3    (cur1_3),
    .cur4    (cur1_4),
    .cur5    (cur1_5),
    .cur6    (cur1_6),
    .cur7    (cur1_7),
    .ref     (ref1),
    .result_reg     (result1));

pe_line  pe_line2(
    .clk     (clk),
.rst     (rst),

    .compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  
    .cur0    (cur2_0),
    .cur1    (cur2_1),
    .cur2    (cur2_2),
    .cur3    (cur2_3),
    .cur4    (cur2_4),
    .cur5    (cur2_5),
    .cur6    (cur2_6),
    .cur7    (cur2_7),
    .ref     (ref2),
    .result_reg     (result2));

pe_line  pe_line3(
    .clk     (clk),
.rst     (rst),

    .compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  
    .cur0    (cur3_0),
    .cur1    (cur3_1),
    .cur2    (cur3_2),
    .cur3    (cur3_3),
    .cur4    (cur3_4),
    .cur5    (cur3_5),
    .cur6    (cur3_6),
    .cur7    (cur3_7),
    .ref     (ref3),
    .result_reg     (result3));

pe_line  pe_line4(
    .clk     (clk),
.rst     (rst),

    .compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  
    .cur0    (cur4_0),
    .cur1    (cur4_1),
    .cur2    (cur4_2),
    .cur3    (cur4_3),
    .cur4    (cur4_4),
    .cur5    (cur4_5),
    .cur6    (cur4_6),
    .cur7    (cur4_7),
    .ref     (ref4),
    .result_reg     (result4));

pe_line  pe_line5(
    .clk     (clk),
.rst     (rst),

    .compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  
    .cur0    (cur5_0),
    .cur1    (cur5_1),
    .cur2    (cur5_2),
    .cur3    (cur5_3),
    .cur4    (cur5_4),
    .cur5    (cur5_5),
    .cur6    (cur5_6),
    .cur7    (cur5_7),
    .ref     (ref5),
    .result_reg     (result5));

pe_line  pe_line6(
    .clk     (clk),
.rst     (rst),

    .compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  
    .cur0    (cur6_0),
    .cur1    (cur6_1),
    .cur2    (cur6_2),
    .cur3    (cur6_3),
    .cur4    (cur6_4),
    .cur5    (cur6_5),
    .cur6    (cur6_6),
    .cur7    (cur6_7),
    .ref     (ref6),
    .result_reg     (result6));

pe_line  pe_line7(
    .clk     (clk),
.rst     (rst),

    .compute_flag      (compute_flag),
.pause(pause),
.only_read(only_read),
  
    .cur0    (cur7_0),
    .cur1    (cur7_1),
    .cur2    (cur7_2),
    .cur3    (cur7_3),
    .cur4    (cur7_4),
    .cur5    (cur7_5),
    .cur6    (cur7_6),
    .cur7    (cur7_7),
    .ref     (ref7),
    .result_reg     (result7));

  always@(posedge clk or negedge rst)
  if(!rst)
  begin
    result<=0;
  end
  else 
    begin
          result<=result0+result1+result2+result3+result4+result5+result6+result7;
		end

endmodule