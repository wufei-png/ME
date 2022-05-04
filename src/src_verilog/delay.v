module delay(
  input wire clk,
	input wire rst,

input wire [15:0] cur0,
input wire only_read0,
input wire only_read1,
// input wire cur_pause0,
// input wire cur_pause1,
output wire only_read0_delay,
output wire only_read1_delay,
output wire [15:0] cur0_delay
// output wire cur_pause0_delay,
// output wire cur_pause1_delay
);
reg[15:0] cur0_0;reg[15:0] cur0_1;reg[15:0] cur0_2;reg[15:0] cur0_3;reg[15:0] cur0_4;reg[15:0] cur0_5;reg[15:0] cur0_6;reg[15:0] cur0_7;reg[15:0] cur0_8;reg[15:0] cur0_9;reg[15:0] cur0_10;reg[15:0] cur0_11;reg[15:0] cur0_12;reg[15:0] cur0_13;reg[15:0] cur0_14;reg[15:0] cur0_15;
reg only_read0_0;reg only_read0_1;reg only_read0_2;reg only_read0_3;
reg only_read1_0;reg only_read1_1;reg only_read1_2;reg only_read1_3;//根据波形需要三个delay
reg [2:0]only_read_counter;
reg only_read_init_flag;//前两个周期没有值 确实延迟了两个周期没错
reg cur_pause0_reg;
reg cur_pause1_reg;
always@(posedge clk or negedge rst)
begin
	if (!rst)
		begin
cur0_0<=0;cur0_1<=0;cur0_2<=0;cur0_3<=0;cur0_4<=0;cur0_5<=0;cur0_6<=0;cur0_7<=0;cur0_8<=0;cur0_9<=0;cur0_10<=0;cur0_11<=0;cur0_12<=0;cur0_13<=0;cur0_14<=0;cur0_15<=0;
only_read_counter<=0;
only_read_init_flag<=0;
only_read0_0<=0;only_read0_1<=0;only_read0_2<=0;only_read0_3<=0;
only_read1_0<=0;only_read1_1<=0;only_read1_2<=0;only_read1_3<=0;
// cur_pause0_reg<=0;
// cur_pause1_reg<=0;
		end
	else begin
		if(only_read_counter!=3)
			only_read_counter<=only_read_counter+1;
		else
			only_read_init_flag<=1;
only_read1_3<=only_read1_2;only_read1_2<=only_read1_1;only_read1_1<=only_read1_0;only_read1_0<=only_read1;
only_read0_3<=only_read0_2;only_read0_2<=only_read0_1;only_read0_1<=only_read0_0;only_read0_0<=only_read0;
cur0_15<=cur0_14;
cur0_14<=cur0_13;
cur0_13<=cur0_12;
cur0_12<=cur0_11;
cur0_11<=cur0_10;
cur0_10<=cur0_9;
cur0_9<=cur0_8;
cur0_8<=cur0_7;
cur0_7<=cur0_6;
cur0_6<=cur0_5;
cur0_5<=cur0_4;
cur0_4<=cur0_3;
cur0_3<=cur0_2;
cur0_2<=cur0_1;
cur0_1<=cur0_0;
cur0_0<=cur0;
// cur_pause0_reg<=cur_pause0;
// cur_pause1_reg<=cur_pause1;

  end
	end

  assign cur0_delay=cur0_15;
	assign only_read1_delay=only_read_init_flag ? only_read1_3:1;
	assign only_read0_delay=only_read_init_flag ? only_read0_3:1;
	// assign cur_pause0_delay=cur_pause0_reg;
	// assign cur_pause1_delay=cur_pause1_reg;
  endmodule