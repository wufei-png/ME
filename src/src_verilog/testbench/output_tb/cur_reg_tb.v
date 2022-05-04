`include "../cur_reg.v"
`timescale 1ns/1ps
module cur_reg_tb;
  reg clk,rst;
reg [31:0]data_input;

// wire [7:0]reg00[长*宽];转化
// reg [7:0]reg00[长][宽];
output reg00[22:0][2]
wire [7:0]reg00;wire [7:0]reg01;wire [7:0]reg02;wire [7:0]reg03;wire [7:0]reg04;wire [7:0]reg05;wire [7:0]reg06;wire [7:0]reg07;

wire [7:0]reg10;wire [7:0]reg11;wire [7:0]reg12;wire [7:0]reg13;wire [7:0]reg14;wire [7:0]reg15;wire [7:0]reg16;wire [7:0]reg17;

wire [7:0]reg20;wire [7:0]reg21;wire [7:0]reg22;wire [7:0]reg23;wire [7:0]reg24;wire [7:0]reg25;wire [7:0]reg26;wire [7:0]reg27;

wire [7:0]reg30;wire [7:0]reg31;wire [7:0]reg32;wire [7:0]reg33;wire [7:0]reg34;wire [7:0]reg35;wire [7:0]reg36;wire [7:0]reg37;

wire [7:0]reg40;wire [7:0]reg41;wire [7:0]reg42;wire [7:0]reg43;wire [7:0]reg44;wire [7:0]reg45;wire [7:0]reg46;wire [7:0]reg47;

wire [7:0]reg50;wire [7:0]reg51;wire [7:0]reg52;wire [7:0]reg53;wire [7:0]reg54;wire [7:0]reg55;wire [7:0]reg56;wire [7:0]reg57;

wire [7:0]reg60;wire [7:0]reg61;wire [7:0]reg62;wire [7:0]reg63;wire [7:0]reg64;wire [7:0]reg65;wire [7:0]reg66;wire [7:0]reg67;

wire [7:0]reg70;wire [7:0]reg71;wire [7:0]reg72;wire [7:0]reg73;wire [7:0]reg74;wire [7:0]reg75;wire [7:0]reg76;wire [7:0]reg77;

initial 
  begin 
    $display("start a clock pulse");    // 打印开始标记
    $dumpfile("wave.vcd");              // 指定记录模拟波形的文件
    $dumpvars(0, cur_reg_tb);          // 指定记录的模块层级
    clk<=1;
    rst<=1; //#50 rst_n=~rst_n;
    data_input<=32'b1;
    #1 rst<=0; 
    #1 rst<=1; 

    #78 data_input<=32'b10;
    #160 $finish; 
  end
  always #2.5 clk=~clk;//??5ns
  // always #200 begin datain_cur0=datain_cur0+1;datain_cur1=datain_cur1+1;
  // datain_cur2=datain_cur2+1;datain_cur3=datain_cur3+1;end
  //????
  cur_reg  cur_reg_u(.clk(clk),.rst(rst),
  .data_input(data_input),
  .reg00(reg00),.reg01(reg01),.reg02(reg02),.reg03(reg03),.reg04(reg04),.reg05(reg05),.reg06(reg06),.reg07(reg07),
  .reg10(reg10),.reg11(reg11),.reg12(reg12),.reg13(reg13),.reg14(reg14),.reg15(reg15),.reg16(reg16),.reg17(reg17),
  .reg20(reg20),.reg21(reg21),.reg22(reg22),.reg23(reg23),.reg24(reg24),.reg25(reg25),.reg26(reg26),.reg27(reg27),
  .reg30(reg30),.reg31(reg31),.reg32(reg32),.reg33(reg33),.reg34(reg34),.reg35(reg35),.reg36(reg36),.reg37(reg37),
  .reg40(reg40),.reg41(reg41),.reg42(reg42),.reg43(reg43),.reg44(reg44),.reg45(reg45),.reg46(reg46),.reg47(reg47),
  .reg50(reg50),.reg51(reg51),.reg52(reg52),.reg53(reg53),.reg54(reg54),.reg55(reg55),.reg56(reg56),.reg57(reg57),
  .reg60(reg60),.reg61(reg61),.reg62(reg62),.reg63(reg63),.reg64(reg64),.reg65(reg65),.reg66(reg66),.reg67(reg67),
  .reg70(reg70),.reg71(reg71),.reg72(reg72),.reg73(reg73),.reg74(reg74),.reg75(reg75),.reg76(reg76),.reg77(reg77)
  );
endmodule
