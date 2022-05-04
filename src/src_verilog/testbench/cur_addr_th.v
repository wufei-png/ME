`timescale 100ps/100ps //3840/16整数
module cur_addr_th(data_out1,data_out2,data_out3,data_out4);
   reg [7:0]mem[8294399:0];
  wire [31:0]data_out1;
wire [31:0]data_out2;
    wire [22:0]ad1;

  reg clk,rst_n;
   initial begin $readmemb("cur_result176.txt",mem);end
   
  initial begin clk=1;rst_n=0;#25 rst_n=~rst_n;end
    always #25 clk=~clk;
assign data_out1={mem[ad1],mem[ad1+1],mem[ad1+2],mem[ad1+3]};
 assign data_out2={mem[ad1+64],mem[ad1+65],mem[ad1+66],mem[ad1+67]};

endmodule 
 