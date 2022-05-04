`timescale 1ns/1ps
`include "../wangyulin/cmp.v"
module cmp2output();
	reg clk;
	reg rst;
	reg[21:0] data_in_sad0;
	reg[21:0] data_in_sad1;
	reg[21:0] data_in_sad2;
	reg[21:0] data_in_sad3;
	reg[21:0] data_in_sad4;
	reg[21:0] data_in_sad5;
	reg[21:0] data_in_sad6;
	reg[21:0] data_in_sad7;
	reg[21:0] data_in_sad8;
	reg[21:0] data_in_sad9;
	reg[21:0] data_in_sad10;
	reg[21:0] data_in_sad11;
	reg[21:0] data_in_sad12;
	reg[21:0] data_in_sad13;
	reg[21:0] data_in_sad14;
	reg[21:0] data_in_sad15;
	wire [21:0]sad_tb;
	wire [3:0] finish_a_cur;
	integer fd;
compare_22bit compare_22bit_u(
	.clk (clk),
.rst (rst),
	.data_in_sad0(data_in_sad0),
	.data_in_sad1(data_in_sad1),
	.data_in_sad2(data_in_sad2),
	.data_in_sad3(data_in_sad3),
	.data_in_sad4(data_in_sad4),
	.data_in_sad5(data_in_sad5),
	.data_in_sad6(data_in_sad6),
	.data_in_sad7(data_in_sad7),
	.data_in_sad8(data_in_sad8),
	.data_in_sad9(data_in_sad9),
	.data_in_sad10(data_in_sad10),
	.data_in_sad11(data_in_sad11),
	.data_in_sad12(data_in_sad12),
	.data_in_sad13(data_in_sad13),
	.data_in_sad14(data_in_sad14),
	.data_in_sad15(data_in_sad15),
	.output_sad(sad_tb),
	.clk_index16(finish_a_cur)
);
initial
	begin
	$display("start a clock pulse");    // 打印开始标记
					$dumpfile("wave.vcd");              // 指定记录模拟波形的文件
					$dumpvars(0, cmp2output);          // 指定记录的模块层级
          fd=$fopen("data_out.txt","w");
					clk <= 1; 
					rst<=1;
					#1 rst<=0;                      
					#1 rst<=1;
					#6;
					data_in_sad0<=0;data_in_sad1<=1;data_in_sad2<=2;data_in_sad3<=3;data_in_sad4<=4;data_in_sad5<=5;data_in_sad6<=6;data_in_sad7<=7;
					data_in_sad8<=8;data_in_sad9<=9;data_in_sad10<=10;data_in_sad11<=11;data_in_sad12<=12;data_in_sad13<=13;data_in_sad14<=14;data_in_sad15<=15;
					#5 	data_in_sad0<=2;
					#5 	data_in_sad0<=3;data_in_sad1<=3;
					// #40 rst<=0;
					// #1 rst<=1;
					#280 $finish;   
	end
    always begin
        #2.5 clk = ~clk; 
		end
    always@(posedge clk)//还是* 电路怎么实现
      begin
        if(finish_a_cur==15)//此时的sad_tb是有效的
					$fwrite(fd,"%d\n",sad_tb);
      end
    // always begin
    //     // if (data_in_ref==8)data_in_ref=8'b0;
    //     // #5 data_in_ref++;//两种测试，保险
    //      #5 data_in_ref<=0;
    //                      // 每20个单位clock取反

    // end

endmodule