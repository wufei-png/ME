`include "../pe.v"
`timescale 1ns/1ps
//格式化代码
module pe_tb;
    reg     clock;
    reg rst;

  reg [7:0]data_in_cur0_0;
	reg [7:0]data_in_cur0_1;
	reg [7:0]data_in_cur0_2;
	reg [7:0]data_in_cur0_3;
	reg [7:0]data_in_cur0_4;
	reg [7:0]data_in_cur0_5;
	reg [7:0]data_in_cur0_6;
	reg [7:0]data_in_cur0_7;

	reg [7:0]data_in_ref0;

  reg [7:0]data_in_cur1_0;
	reg [7:0]data_in_cur1_1;
	reg [7:0]data_in_cur1_2;
	reg [7:0]data_in_cur1_3;
	reg [7:0]data_in_cur1_4;
	reg [7:0]data_in_cur1_5;
	reg [7:0]data_in_cur1_6;
	reg [7:0]data_in_cur1_7;

	reg [7:0]data_in_ref1;

  reg [7:0]data_in_cur2_0;
	reg [7:0]data_in_cur2_1;
	reg [7:0]data_in_cur2_2;
	reg [7:0]data_in_cur2_3;
	reg [7:0]data_in_cur2_4;
	reg [7:0]data_in_cur2_5;
	reg [7:0]data_in_cur2_6;
	reg [7:0]data_in_cur2_7;

	reg [7:0]data_in_ref2;

  reg [7:0]data_in_cur3_0;
	reg [7:0]data_in_cur3_1;
	reg [7:0]data_in_cur3_2;
	reg [7:0]data_in_cur3_3;
	reg [7:0]data_in_cur3_4;
	reg [7:0]data_in_cur3_5;
	reg [7:0]data_in_cur3_6;
	reg [7:0]data_in_cur3_7;

	reg [7:0]data_in_ref3;

  reg [7:0]data_in_cur4_0;
	reg [7:0]data_in_cur4_1;
	reg [7:0]data_in_cur4_2;
	reg [7:0]data_in_cur4_3;
	reg [7:0]data_in_cur4_4;
	reg [7:0]data_in_cur4_5;
	reg [7:0]data_in_cur4_6;
	reg [7:0]data_in_cur4_7;

	reg [7:0]data_in_ref4;

  reg [7:0]data_in_cur5_0;
	reg [7:0]data_in_cur5_1;
	reg [7:0]data_in_cur5_2;
	reg [7:0]data_in_cur5_3;
	reg [7:0]data_in_cur5_4;
	reg [7:0]data_in_cur5_5;
	reg [7:0]data_in_cur5_6;
	reg [7:0]data_in_cur5_7;

	reg [7:0]data_in_ref5;

  reg [7:0]data_in_cur6_0;
	reg [7:0]data_in_cur6_1;
	reg [7:0]data_in_cur6_2;
	reg [7:0]data_in_cur6_3;
	reg [7:0]data_in_cur6_4;
	reg [7:0]data_in_cur6_5;
	reg [7:0]data_in_cur6_6;
	reg [7:0]data_in_cur6_7;

	reg [7:0]data_in_ref6;

  reg [7:0]data_in_cur7_0;
	reg [7:0]data_in_cur7_1;
	reg [7:0]data_in_cur7_2;
	reg [7:0]data_in_cur7_3;
	reg [7:0]data_in_cur7_4;
	reg [7:0]data_in_cur7_5;
	reg [7:0]data_in_cur7_6;
	reg [7:0]data_in_cur7_7;

	reg [7:0]data_in_ref7;

  output wire [13:0] result;
integer index=0;
    initial begin
        $display("start a clock pulse");    // 打印开始标记
        $dumpfile("wave.vcd");              // 指定记录模拟波形的文件
        $dumpvars(0, pe_tb);          // 指定记录的模块层级
        clock <= 1; 
        rst<=1;                        // 初始clock信号为1

         data_in_ref0<=8'b0;data_in_ref1<=8'b0;data_in_ref2<=8'b0;data_in_ref3<=8'b0;data_in_ref4<=8'b0;data_in_ref5<=8'b0;data_in_ref6<=8'b0;data_in_ref7<=8'b0;

        data_in_cur0_0<=8'b1;data_in_cur0_1<=8'b1;data_in_cur0_2<=8'b1;data_in_cur0_3<=8'b1;data_in_cur0_4<=8'b1;data_in_cur0_5<=8'b1;data_in_cur0_6<=8'b1;data_in_cur0_7<=8'b1;
        data_in_cur1_0<=8'b1;data_in_cur1_1<=8'b1;data_in_cur1_2<=8'b1;data_in_cur1_3<=8'b1;data_in_cur1_4<=8'b1;data_in_cur1_5<=8'b1;data_in_cur1_6<=8'b1;data_in_cur1_7<=8'b1;
        data_in_cur2_0<=8'b1;data_in_cur2_1<=8'b1;data_in_cur2_2<=8'b1;data_in_cur2_3<=8'b1;data_in_cur2_4<=8'b1;data_in_cur2_5<=8'b1;data_in_cur2_6<=8'b1;data_in_cur2_7<=8'b1;
        data_in_cur3_0<=8'b1;data_in_cur3_1<=8'b1;data_in_cur3_2<=8'b1;data_in_cur3_3<=8'b1;data_in_cur3_4<=8'b1;data_in_cur3_5<=8'b1;data_in_cur3_6<=8'b1;data_in_cur3_7<=8'b1;
        data_in_cur4_0<=8'b1;data_in_cur4_1<=8'b1;data_in_cur4_2<=8'b1;data_in_cur4_3<=8'b1;data_in_cur4_4<=8'b1;data_in_cur4_5<=8'b1;data_in_cur4_6<=8'b1;data_in_cur4_7<=8'b1;
        data_in_cur5_0<=8'b1;data_in_cur5_1<=8'b1;data_in_cur5_2<=8'b1;data_in_cur5_3<=8'b1;data_in_cur5_4<=8'b1;data_in_cur5_5<=8'b1;data_in_cur5_6<=8'b1;data_in_cur5_7<=8'b1;
        data_in_cur6_0<=8'b1;data_in_cur6_1<=8'b1;data_in_cur6_2<=8'b1;data_in_cur6_3<=8'b1;data_in_cur6_4<=8'b1;data_in_cur6_5<=8'b1;data_in_cur6_6<=8'b1;data_in_cur6_7<=8'b1;
        data_in_cur7_0<=8'b1;data_in_cur7_1<=8'b1;data_in_cur7_2<=8'b1;data_in_cur7_3<=8'b1;data_in_cur7_4<=8'b1;data_in_cur7_5<=8'b1;data_in_cur7_6<=8'b1;data_in_cur7_7<=8'b1;
        // #40 rst<=0;
        #60 $finish;                      // 6000个单位时间后结束模拟
    end
    
pe u_pe(
.clk (clock),
.rst (rst),
.data_in_cur0_0 (data_in_cur0_0),
.data_in_cur0_1 (data_in_cur0_1),
.data_in_cur0_2 (data_in_cur0_2),
.data_in_cur0_3 (data_in_cur0_3),
.data_in_cur0_4 (data_in_cur0_4),
.data_in_cur0_5 (data_in_cur0_5),
.data_in_cur0_6 (data_in_cur0_6),
.data_in_cur0_7 (data_in_cur0_7),
.data_in_ref0 (data_in_ref0),

.data_in_cur1_0 (data_in_cur1_0),
.data_in_cur1_1 (data_in_cur1_1),
.data_in_cur1_2 (data_in_cur1_2),
.data_in_cur1_3 (data_in_cur1_3),
.data_in_cur1_4 (data_in_cur1_4),
.data_in_cur1_5 (data_in_cur1_5),
.data_in_cur1_6 (data_in_cur1_6),
.data_in_cur1_7 (data_in_cur1_7),
.data_in_ref1 (data_in_ref1),

.data_in_cur2_0 (data_in_cur2_0),
.data_in_cur2_1 (data_in_cur2_1),
.data_in_cur2_2 (data_in_cur2_2),
.data_in_cur2_3 (data_in_cur2_3),
.data_in_cur2_4 (data_in_cur2_4),
.data_in_cur2_5 (data_in_cur2_5),
.data_in_cur2_6 (data_in_cur2_6),
.data_in_cur2_7 (data_in_cur2_7),
.data_in_ref2 (data_in_ref2),

.data_in_cur3_0 (data_in_cur3_0),
.data_in_cur3_1 (data_in_cur3_1),
.data_in_cur3_2 (data_in_cur3_2),
.data_in_cur3_3 (data_in_cur3_3),
.data_in_cur3_4 (data_in_cur3_4),
.data_in_cur3_5 (data_in_cur3_5),
.data_in_cur3_6 (data_in_cur3_6),
.data_in_cur3_7 (data_in_cur3_7),
.data_in_ref3 (data_in_ref3),

.data_in_cur4_0 (data_in_cur4_0),
.data_in_cur4_1 (data_in_cur4_1),
.data_in_cur4_2 (data_in_cur4_2),
.data_in_cur4_3 (data_in_cur4_3),
.data_in_cur4_4 (data_in_cur4_4),
.data_in_cur4_5 (data_in_cur4_5),
.data_in_cur4_6 (data_in_cur4_6),
.data_in_cur4_7 (data_in_cur4_7),
.data_in_ref4 (data_in_ref4),

.data_in_cur5_0 (data_in_cur5_0),
.data_in_cur5_1 (data_in_cur5_1),
.data_in_cur5_2 (data_in_cur5_2),
.data_in_cur5_3 (data_in_cur5_3),
.data_in_cur5_4 (data_in_cur5_4),
.data_in_cur5_5 (data_in_cur5_5),
.data_in_cur5_6 (data_in_cur5_6),
.data_in_cur5_7 (data_in_cur5_7),
.data_in_ref5 (data_in_ref5),

.data_in_cur6_0 (data_in_cur6_0),
.data_in_cur6_1 (data_in_cur6_1),
.data_in_cur6_2 (data_in_cur6_2),
.data_in_cur6_3 (data_in_cur6_3),
.data_in_cur6_4 (data_in_cur6_4),
.data_in_cur6_5 (data_in_cur6_5),
.data_in_cur6_6 (data_in_cur6_6),
.data_in_cur6_7 (data_in_cur6_7),
.data_in_ref6 (data_in_ref6),

.data_in_cur7_0 (data_in_cur7_0),
.data_in_cur7_1 (data_in_cur7_1),
.data_in_cur7_2 (data_in_cur7_2),
.data_in_cur7_3 (data_in_cur7_3),
.data_in_cur7_4 (data_in_cur7_4),
.data_in_cur7_5 (data_in_cur7_5),
.data_in_cur7_6 (data_in_cur7_6),
.data_in_cur7_7 (data_in_cur7_7),
.data_in_ref7 (data_in_ref7),
.result (result));

    always begin
        #2.5 clock = ~clock;                 // 每20个单位clock取反

    end
    always begin
        if (data_in_ref0==8)data_in_ref0=8'b0;
        #5 data_in_ref0++;
         //#5  data_in_ref0<=0;
                         // 每20个单位clock取反

    end
    always begin
        if (data_in_ref1==8)data_in_ref1=8'b0;
        #5 data_in_ref1++;
         //#5  data_in_ref1<=0;
                         // 每20个单位clock取反

    end
    always begin
        if (data_in_ref2==8)data_in_ref2=8'b0;
        #5 data_in_ref2++;
         //#5  data_in_ref2<=0;
                         // 每20个单位clock取反

    end
    always begin
        if (data_in_ref3==8)data_in_ref3=8'b0;
        #5 data_in_ref3++;
         //#5  data_in_ref3<=0;
                         // 每20个单位clock取反

    end
    always begin
        if (data_in_ref4==8)data_in_ref4=8'b0;
        #5 data_in_ref4++;
         //#5  data_in_ref4<=0;
                         // 每20个单位clock取反

    end

    always begin
        if (data_in_ref5==8)data_in_ref5=8'b0;
        #5 data_in_ref5++;
         //#5  data_in_ref5<=0;
                         // 每20个单位clock取反

    end

    always begin
        if (data_in_ref6==8)data_in_ref6=8'b0;
        #5 data_in_ref6++;
         //#5  data_in_ref6<=0;
    end
    always begin
        if (data_in_ref7==8)data_in_ref7=8'b0;
        #5 data_in_ref7++;
         //#5  data_in_ref7<=0;
                         // 每20个单位clock取反

    end
endmodule