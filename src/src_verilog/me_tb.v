`timescale 1ns/1ps
`include "./me.v"
`include "./output_tb.v"
module me_tb(
);
// ref_addr REF_ADDR(.ber(ber),.clk(clk),.rst(rst),.cur_ad(cur_ad),.ad2(ad2),.ad3(ad3),.ad4(ad4),.ad5(ad5),.ad6(ad6),.ad7(ad7),.ad8(ad8),.ad9(ad9),
// .ad10(ad10),.ad11(ad11),.ad12(ad12),.ad13(ad13),.ad14(ad14),.ad15(ad15),.ad16(ad16),.ad17(ad17),.ad18(ad18),.ad19(ad19),.ad20(ad20),
// .ad21(ad21),.ad22(ad22),.ad23(ad23));

wire [22:0]cur_ad;
reg [7:0]mem_cur[8294399:0];
reg [7:0]mem_ref[8384625:0];

wire [22:0]cur_ad1;
wire [15:0]cur1;
wire [15:0]cur2;


wire [22:0]ref_ad;

wire[3:0]ref0;wire[3:0]ref1;wire[3:0]ref2;wire[3:0]ref3;wire[3:0]ref4;
wire[3:0]ref5;wire[3:0]ref6;wire[3:0]ref7;wire[3:0]ref8;
wire[3:0]ref9;wire[3:0]ref10;wire[3:0]ref11;wire[3:0]ref12;
wire[3:0]ref13;wire[3:0]ref14;wire[3:0]ref15;wire[3:0]ref16;
wire[3:0]ref17;wire[3:0]ref18;wire[3:0]ref19;wire[3:0]ref20;
wire[3:0]ref21;wire[3:0]ref22;


wire [13:0]min_sad0;
wire [13:0]min_sad1;
wire finish_a_cur0;
wire finish_a_cur1;
wire [3:0]mv_x0;
wire [3:0]mv_y0;

wire [3:0]mv_x1;
wire [3:0]mv_y1;
  reg clk,rst;
  wire ber;
  wire finish_flag;
   initial begin 
  $display("start a clock pulse");    // 打印开始标记
    // $dumpfile("wave.vcd");              // 指定记录模拟波形的文件
    // $dumpvars(0,me_tb);          // 指定记录的模块层级

    $readmemb("../ME_data_2022/inputs/4k/cur_result4k.txt",mem_cur);
    $readmemb("../ME_data_2022/inputs/4k/ref_result4k.txt",mem_ref);

     //D:\onedrive\OneDrive - sjtu.edu.cn\verilog_files\me_v2\ME_data_2022\inputs\4k\cur_result4k.txt
     clk<=1;
     rst<=1;
    #4  rst<=0;
    #2  rst<=1;

    //  #80000 $finish; 
    while (!finish_flag)
        #0.5;
    $finish;
    $display("finish!");
     end
  
    always #2.5 clk=~clk;


assign cur1={mem_cur[cur_ad],mem_cur[cur_ad+1]};
assign cur2={mem_cur[cur_ad+64],mem_cur[cur_ad+65]};


assign ref0=ber ? mem_ref[ref_ad][3:0]:mem_ref[ref_ad][7:4];
assign ref1=ber ? mem_ref[ref_ad+5'b00001][3:0]:mem_ref[ref_ad+5'b00001][7:4];
assign ref2=ber ? mem_ref[ref_ad+5'b00010][3:0]:mem_ref[ref_ad+5'b00010][7:4];
assign ref3=ber ? mem_ref[ref_ad+5'b00011][3:0]:mem_ref[ref_ad+5'b00011][7:4];
assign ref4=ber ? mem_ref[ref_ad+5'b00100][3:0]:mem_ref[ref_ad+5'b00100][7:4];
assign ref5=ber ? mem_ref[ref_ad+5'b00101][3:0]:mem_ref[ref_ad+5'b00101][7:4];
assign ref6=ber ? mem_ref[ref_ad+5'b00110][3:0]:mem_ref[ref_ad+5'b00110][7:4];
assign ref7=ber ? mem_ref[ref_ad+5'b00111][3:0]:mem_ref[ref_ad+5'b00111][7:4];
assign ref8=ber ? mem_ref[ref_ad+5'b01000][3:0]:mem_ref[ref_ad+5'b01000][7:4];
assign ref9=ber ? mem_ref[ref_ad+5'b01001][3:0]:mem_ref[ref_ad+5'b01001][7:4];
assign ref10=ber ? mem_ref[ref_ad+5'b01010][3:0]:mem_ref[ref_ad+5'b01010][7:4];
assign ref11=ber ? mem_ref[ref_ad+5'b01011][3:0]:mem_ref[ref_ad+5'b01011][7:4];
assign ref12=ber ? mem_ref[ref_ad+5'b01100][3:0]:mem_ref[ref_ad+5'b01100][7:4];
assign ref13=ber ? mem_ref[ref_ad+5'b01101][3:0]:mem_ref[ref_ad+5'b01101][7:4];
assign ref14=ber ? mem_ref[ref_ad+5'b01110][3:0]:mem_ref[ref_ad+5'b01110][7:4];
assign ref15=ber ? mem_ref[ref_ad+5'b01111][3:0]:mem_ref[ref_ad+5'b01111][7:4];
assign ref16=ber ? mem_ref[ref_ad+5'b10000][3:0]:mem_ref[ref_ad+5'b10000][7:4];
assign ref17=ber ? mem_ref[ref_ad+5'b10001][3:0]:mem_ref[ref_ad+5'b10001][7:4];
assign ref18=ber ? mem_ref[ref_ad+5'b10010][3:0]:mem_ref[ref_ad+5'b10010][7:4];
assign ref19=ber ? mem_ref[ref_ad+5'b10011][3:0]:mem_ref[ref_ad+5'b10011][7:4];
assign ref20=ber ? mem_ref[ref_ad+5'b10100][3:0]:mem_ref[ref_ad+5'b10100][7:4];
assign ref21=ber ? mem_ref[ref_ad+5'b10101][3:0]:mem_ref[ref_ad+5'b10101][7:4];
assign ref22=ber ? mem_ref[ref_ad+5'b10110][3:0]:mem_ref[ref_ad+5'b10110][7:4];







me me_tb(
.clk(clk),.rst(rst),.ber(ber),
.finish_flag(finish_flag),
  .cur_ad(cur_ad),
  .ref_ad(ref_ad),

  .cur_input0(cur1),
  .cur_input1(cur2),

  .ref0(ref0),.ref1(ref1),.ref2(ref2),.ref3(ref3),.ref4(ref4),.ref5(ref5),.ref6(ref6),.ref7(ref7),.ref8(ref8),.ref9(ref9),.ref10(ref10),.ref11(ref11),.ref12(ref12),.ref13(ref13),.ref14(ref14),.ref15(ref15),.ref16(ref16),.ref17(ref17),.ref18(ref18),.ref19(ref19),.ref20(ref20),.ref21(ref21),.ref22(ref22),

    .mv_x0(mv_x0),
	  .mv_y0(mv_y0),
    .mv_x1(mv_x1),
	  .mv_y1(mv_y1),
	.min_sad0(min_sad0),
  .min_sad1(min_sad1),//这个只能是wire?
  .finish_a_cur0(finish_a_cur0),
  .finish_a_cur1(finish_a_cur1)
);
output_tb output_tb(
.clk(clk),.rst(rst),
	.min_sad0(min_sad0),
  .min_sad1(min_sad1),
    .mv_x0(mv_x0),
	  .mv_y0(mv_y0),
    .mv_x1(mv_x1),
	  .mv_y1(mv_y1),
  .finish_a_cur0(finish_a_cur0),
  .finish_a_cur1(finish_a_cur1)
);
 

endmodule