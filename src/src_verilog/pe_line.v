`include "./sub.v"

//40个input和10个长度为4的  没区别
//clk_index 一开始不是0
//compute_flag传播延迟
//output reg的嵌套 //output 都是reg么 有必要用两个reg么
//pe line单独一个reg，pe和cmp一个
//115行
//rst unknow files
module pe_line(
  input wire clk,
	input wire rst,
	input wire compute_flag,
// input wire [7:0]cur[8],
  input wire [7:0]cur0,
	input wire [7:0]cur1,
	input wire [7:0]cur2,
	input wire [7:0]cur3,
	input wire [7:0]cur4,
	input wire [7:0]cur5,
	input wire [7:0]cur6,
	input wire [7:0]cur7,
	input wire [3:0]ref,
	output reg [10:0]result_reg,
	// output reg finish_one,
	// input wire [12:0]clk_index,
	input wire pause,
	input wire only_read
	// input wire pe_flag
	//设置一级流水线
);
	reg [7:0]result0_reg;
	reg [7:0]result1_reg;
	reg [7:0]result2_reg;
	reg [7:0]result3_reg;
	reg [7:0]result4_reg;
	reg [7:0]result5_reg;
	reg [7:0]result6_reg;
	reg [7:0]result7_reg;



	wire [7:0]result0;
	wire [7:0]result1;
	wire [7:0]result2;
	wire [7:0]result3;
	wire [7:0]result4;
	wire [7:0]result5;
	wire [7:0]result6;
	wire [7:0]result7;

  reg [7:0]ref0;
	reg [7:0]ref1;
	reg [7:0]ref2;
	reg [7:0]ref3;
	reg [7:0]ref4;
	reg [7:0]ref5;
	reg [7:0]ref6;
	reg [7:0]ref7;
	
	wire [10:0]result;

	sub  sub0(
		.compute_flag      (compute_flag),
    .data1    (cur0),
    .data2   (ref0),
    .sub     (result0));
	
	sub  sub1(
		.compute_flag      (compute_flag),
    .data1    (cur1),
    .data2   (ref1),
    .sub     (result1));	
	sub  sub2(
		.compute_flag      (compute_flag),
    .data1    (cur2),
    .data2   (ref2),
    .sub     (result2));	
	sub  sub3(
		.compute_flag      (compute_flag),
    .data1    (cur3),
    .data2   (ref3),
    .sub     (result3));	
	sub  sub4(
		.compute_flag      (compute_flag),
    .data1    (cur4),
    .data2   (ref4),
    .sub     (result4));	
	sub  sub5(
		.compute_flag      (compute_flag),
    .data1    (cur5),
    .data2   (ref5),
    .sub     (result5));
	sub  sub6(
		.compute_flag      (compute_flag),
    .data1    (cur6),
    .data2   (ref6),
    .sub     (result6));
	sub  sub7(
		.compute_flag      (compute_flag),
    .data1    (cur7),
    .data2   (ref7),
    .sub     (result7));
  always@(posedge clk or negedge rst)
	if (!rst)
	begin
		//{ref7,ref6,ref5,ref4,ref3,ref2,ref1,ref0}<=0;
		result_reg<=0;
		// finish_one<=0;
	end
	else
    begin
				if(!pause)
				begin
			// {ref7,ref6,ref5,ref4,ref3,ref2,ref1,ref0}<={ref6,ref5,ref4,ref3,ref2,ref1,ref0,ref};
			    //       #1cur0[3:0]<=4'b1;                  // 6000个单位时间后结束模拟
          // #1cur0[7:4]<=4'b1; 
					if(compute_flag)
					begin
			ref0<=ref1;
			ref1<=ref2;
			ref2<=ref3;
			ref3<=ref4;
			ref4<=ref5;
			ref5<=ref6;
			ref6<=ref7;
			ref7[3:0]<=ref;
					end
					else
						begin
							ref7[7:4]<=ref;	
						end
		if(!only_read)
		begin
			if(!compute_flag)//gai
			begin
				result_reg<=result;
			end
			else begin 	
				result_reg<=0;
			end
		end

		end
		end
			// assign result0=sub(cur0,ref0);
			// assign result1=sub(cur1,ref1);
			// assign result2=sub(cur2,ref2);
			// assign result3=sub(cur3,ref3);
			// assign result4=sub(cur4,ref4);
			// assign result5=sub(cur5,ref5);
			// assign result6=sub(cur6,ref6);
			// assign result7=sub(cur7,ref7);
			assign result =result0_reg+result1_reg+result2_reg+result3_reg+result4_reg+result5_reg+result6_reg+result7_reg;//compute_flag 0的时候result都是0
  always@(posedge clk or negedge rst)
	if (!rst)
	begin
		result0_reg<=0;result1_reg<=0;result2_reg<=0;result3_reg<=0;result4_reg<=0;result5_reg<=0;result6_reg<=0;result7_reg<=0;
	end
	else
    begin
			result0_reg<=result0;result1_reg<=result1;result2_reg<=result2;result3_reg<=result3;result4_reg<=result4;result5_reg<=result5;result6_reg<=result6;result7_reg<=result7;
		end//gai
endmodule