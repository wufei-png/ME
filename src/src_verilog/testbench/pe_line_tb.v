`include "../pe_line.v"
`timescale 1ns/1ps
//格式化代码
module pe_line_tb;
    reg     clock;
    reg rst;
    reg [7:0]data_in_cur0;
	reg [7:0]data_in_cur1;
	reg [7:0]data_in_cur2;
	reg [7:0]data_in_cur3;
	reg [7:0]data_in_cur4;
	reg [7:0]data_in_cur5;
	reg [7:0]data_in_cur6;
	reg [7:0]data_in_cur7;
    reg [7:0]data_in_ref;
    wire [10:0]result_reg;
integer index=0;
    initial begin
        $display("start a clock pulse");    // 打印开始标记
        $dumpfile("wave.vcd");              // 指定记录模拟波形的文件
        $dumpvars(0, pe_line_tb);          // 指定记录的模块层级
        clock <= 1; 
        rst<=0;
        #1 rst<=1;                      
         data_in_ref<=8'b0;
        data_in_cur0<=8'b1;data_in_cur1<=8'b1;data_in_cur2<=8'b1;data_in_cur3<=8'b1;data_in_cur4<=8'b1;data_in_cur5<=8'b1;data_in_cur6<=8'b1;data_in_cur7<=8'b1;
        // #40 rst<=0;
        // #1 rst<=1;
        #21800 $finish;                      // 6000个单位时间后结束模拟
    end
    
pe_line u_pe_line(
.clk (clock),
.rst (rst),
.data_in_cur0 (data_in_cur0),
.data_in_cur1 (data_in_cur1),
.data_in_cur2 (data_in_cur2),
.data_in_cur3 (data_in_cur3),
.data_in_cur4 (data_in_cur4),
.data_in_cur5 (data_in_cur5),
.data_in_cur6 (data_in_cur6),
.data_in_cur7 (data_in_cur7),
.data_in_ref (data_in_ref),
.result_reg (result_reg));

    always begin
        #2.5 clock = ~clock;                 // 每20个单位clock取反

    end
    always begin
        // if (data_in_ref==8)data_in_ref=8'b0;
        // #5 data_in_ref++;//两种测试，保险
         #5 data_in_ref<=0;
                         // 每20个单位clock取反

    end
endmodule