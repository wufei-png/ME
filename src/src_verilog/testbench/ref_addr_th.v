`timescale 100ps/100ps
module ref_addr_th(data_out1,data_out2,data_out3,data_out4,data_out5,data_out6,data_out7,data_out8,data_out9,
data_out10,data_out11,data_out12,data_out13,data_out14,data_out15,data_out16,data_out17,data_out18,data_out19,
data_out20,data_out21,data_out22,data_out23);
   reg [7:0]mem[79073:0];
output wire[3:0]data_out1;output wire[3:0]data_out2;output wire[3:0]data_out3;output wire[3:0]data_out4;
output wire[3:0]data_out5;output wire[3:0]data_out6;output wire[3:0]data_out7;output wire[3:0]data_out8;
output wire[3:0]data_out9;output wire[3:0]data_out10;output wire[3:0]data_out11;output wire[3:0]data_out12;
output wire[3:0]data_out13;output wire[3:0]data_out14;output wire[3:0]data_out15;output wire[3:0]data_out16;
output wire[3:0]data_out17;output wire[3:0]data_out18;output wire[3:0]data_out19;output wire[3:0]data_out20;
output wire[3:0]data_out21;output wire[3:0]data_out22;output wire[3:0]data_out23;


wire [24:0]ad1
reg clk,rst_n;
wire ber;
   initial begin $readmemb("ref_result176_1.txt",mem);end
   
  initial begin clk=1;rst_n=0;#25 rst_n=~rst_n;end
    always #25 clk=~clk;
assign data_out1=ber ? mem[ad1][3:0]:mem[ad1][7:4];
assign data_out2=ber ? mem[ad1+5'b00001][3:0]:mem[ad1+5'b00001][7:4];
assign data_out3=ber ? mem[ad1+5'b00010][3:0]:mem[ad1+5'b00010][7:4];
assign data_out4=ber ? mem[ad1+5'b00011][3:0]:mem[ad1+5'b00011][7:4];
assign data_out5=ber ? mem[ad1+5'b00100][3:0]:mem[ad1+5'b00100][7:4];
assign data_out6=ber ? mem[ad1+5'b00101][3:0]:mem[ad1+5'b00101][7:4];
assign data_out7=ber ? mem[ad1+5'b00110][3:0]:mem[ad1+5'b00110][7:4];
assign data_out8=ber ? mem[ad1+5'b00111][3:0]:mem[ad1+5'b00111][7:4];
assign data_out9=ber ? mem[ad1+5'b01000][3:0]:mem[ad1+5'b01000][7:4];
assign data_out10=ber ? mem[ad1+5'b01001][3:0]:mem[ad1+5'b01001][7:4];
assign data_out11=ber ? mem[ad1+5'b01010][3:0]:mem[ad1+5'b01010][7:4];
assign data_out12=ber ? mem[ad1+5'b01011][3:0]:mem[ad1+5'b01011][7:4];
assign data_out13=ber ? mem[ad1+5'b01100][3:0]:mem[ad1+5'b01100][7:4];
assign data_out14=ber ? mem[ad1+5'b01101][3:0]:mem[ad1+5'b01101][7:4];
assign data_out15=ber ? mem[ad1+5'b01110][3:0]:mem[ad1+5'b01110][7:4];
assign data_out16=ber ? mem[ad1+5'b01111][3:0]:mem[ad1+5'b01111][7:4];
assign data_out17=ber ? mem[ad1+5'b10000][3:0]:mem[ad1+5'b10000][7:4];
assign data_out18=ber ? mem[ad1+5'b10001][3:0]:mem[ad1+5'b10001][7:4];
assign data_out19=ber ? mem[ad1+5'b10010][3:0]:mem[ad1+5'b10010][7:4];
assign data_out20=ber ? mem[ad1+5'b10011][3:0]:mem[ad1+5'b10011][7:4];
assign data_out21=ber ? mem[ad1+5'b10100][3:0]:mem[ad1+5'b10100][7:4];
assign data_out22=ber ? mem[ad1+5'b10101][3:0]:mem[ad1+5'b10101][7:4];
assign data_out23=ber ? mem[ad1+5'b10110][3:0]:mem[ad1+5'b10110][7:4];

      
endmodule 
