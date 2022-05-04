module compare_22bit(
	input wire clk,
	input wire rst,
	input wire pause,
	input wire compute_flag,
	input wire[13:0] data_in_sad0,
	input wire[13:0] data_in_sad1,
	input wire[13:0] data_in_sad2,
	input wire[13:0] data_in_sad3,
	input wire[13:0] data_in_sad4,
	input wire[13:0] data_in_sad5,
	input wire[13:0] data_in_sad6,
	input wire[13:0] data_in_sad7,
	input wire[13:0] data_in_sad8,
	input wire[13:0] data_in_sad9,
	input wire[13:0] data_in_sad10,
	input wire[13:0] data_in_sad11,
	input wire[13:0] data_in_sad12,
	input wire[13:0] data_in_sad13,
	input wire[13:0] data_in_sad14,
	input wire[13:0] data_in_sad15,
	// output reg [13:0] output_sad,//先用reg，保守点时间划分
	output reg [3:0]global_mv_x,
	output reg [3:0]global_mv_y,
	output reg [13:0]global_min_sad,
output reg finish_a_cur
);
		reg [4:0]clk_index32;
  // reg[13:0] min_sad_onetime;
		reg [3:0]mv_x_onetime;
				reg [3:0]mv_y_onetime;
		reg [13:0]min_sad_onetime;
	// output reg [13:0]global_min_sad;//这里还要用reg么，因为output file是固定时间间隔输出的
	// reg [3:0]before_start;
reg [13:0]tmp0_0;reg [13:0]tmp0_1;reg [13:0]tmp0_2;reg [13:0]tmp0_3;reg [13:0]tmp0_4;reg [13:0]tmp0_5;reg [13:0]tmp0_6;reg [13:0]tmp0_7;
reg [13:0]tmp1_0;reg [13:0]tmp1_1;reg [13:0]tmp1_2;reg [13:0]tmp1_3;
reg [13:0]tmp2_0;reg [13:0]tmp2_1;//里面都是线


reg [3:0]mv_y_tmp0_0;reg [3:0]mv_y_tmp0_1;reg [3:0]mv_y_tmp0_2;reg [3:0]mv_y_tmp0_3;reg [3:0]mv_y_tmp0_4;reg [3:0]mv_y_tmp0_5;reg [3:0]mv_y_tmp0_6;reg [3:0]mv_y_tmp0_7;
reg [3:0]mv_y_tmp1_0;reg [3:0]mv_y_tmp1_1;reg [3:0]mv_y_tmp1_2;reg [3:0]mv_y_tmp1_3;
reg [3:0]mv_y_tmp2_0;reg [3:0]mv_y_tmp2_1;

	// reg start_from_16;
	//要用到if判断，不能组合，always@(*) <=和=不太一样
	always@(*)//这里和组合逻辑？可以用clk么 <=和=不太一样  assign wire * reg
    begin
			if(!pause&&compute_flag==0)//这里要看波形的
			begin
				//第一级
			if(data_in_sad0<data_in_sad1) begin
			tmp0_0=data_in_sad0;
			mv_y_tmp0_0=-8;
			end
			else 
			begin 
			tmp0_0=data_in_sad1;
			mv_y_tmp0_0=-7;
			end

			if(data_in_sad2<data_in_sad3) begin
			tmp0_1=data_in_sad2;
			mv_y_tmp0_1=-6;
			end
			else 
			begin 
			tmp0_1=data_in_sad3;
			mv_y_tmp0_1=-5;
			end

			if(data_in_sad4<data_in_sad5) begin
			tmp0_2=data_in_sad4;
			mv_y_tmp0_2=-4;
			end
			else 
			begin 
			tmp0_2=data_in_sad5;
			mv_y_tmp0_2=-3;
			end

			if(data_in_sad6<data_in_sad7) begin
			tmp0_3=data_in_sad6;
			mv_y_tmp0_3=-2;
			end
			else 
			begin 
			tmp0_3=data_in_sad7;
			mv_y_tmp0_3=-1;
			end

			if(data_in_sad8<data_in_sad9) begin
			tmp0_4=data_in_sad8;
			mv_y_tmp0_4=0;
			end
			else 
			begin 
			tmp0_4=data_in_sad9;
			mv_y_tmp0_4=1;
			end

			if(data_in_sad10<data_in_sad11) begin
			tmp0_5=data_in_sad10;
			mv_y_tmp0_5=2;
			end
			else 
			begin 
			tmp0_5=data_in_sad11;
			mv_y_tmp0_5=3;
			end

			if(data_in_sad12<data_in_sad13) begin
			tmp0_6=data_in_sad12;
			mv_y_tmp0_6=4;
			end
			else 
			begin 
			tmp0_6=data_in_sad13;
			mv_y_tmp0_6=5;
			end

			if(data_in_sad14<data_in_sad15) begin
			tmp0_7=data_in_sad14;
			mv_y_tmp0_7=6;
			end
			else 
			begin 
			tmp0_7=data_in_sad15;
			mv_y_tmp0_7=7;
			end
//第二级

			if(tmp0_0<tmp0_1) begin
				tmp1_0=tmp0_0;
				mv_y_tmp1_0=mv_y_tmp0_0;
			end
			else begin 
				tmp1_0=tmp0_1;
				mv_y_tmp1_0=mv_y_tmp0_1;
			end

			if(tmp0_2<tmp0_3) begin
				tmp1_1=tmp0_2;
				mv_y_tmp1_1=mv_y_tmp0_2;
			end
			else begin 
				tmp1_1=tmp0_3;
				mv_y_tmp1_1=mv_y_tmp0_3;
			end

			if(tmp0_4<tmp0_5) begin
				tmp1_2=tmp0_4;
				mv_y_tmp1_2=mv_y_tmp0_4;
			end
			else begin 
				tmp1_2=tmp0_5;
				mv_y_tmp1_2=mv_y_tmp0_5;
			end

			if(tmp0_6<tmp0_7) begin
				tmp1_3=tmp0_6;
				mv_y_tmp1_3=mv_y_tmp0_6;
			end
			else begin 
				tmp1_3=tmp0_7;
				mv_y_tmp1_3=mv_y_tmp0_7;
			end
//第三级
			if(tmp1_0<tmp1_1) begin
				tmp2_0=tmp1_0;
				mv_y_tmp2_0=mv_y_tmp1_0;
			end
			else begin 
				tmp2_0=tmp1_1;
				mv_y_tmp2_0=mv_y_tmp1_1;
			end
			if(tmp1_2<tmp1_3) begin
				tmp2_1=tmp1_2;
				mv_y_tmp2_1=mv_y_tmp1_2;
			end
			else begin 
				tmp2_1=tmp1_3;
				mv_y_tmp2_1=mv_y_tmp1_3;
			end

//第四级
			if(tmp2_0<tmp2_1) begin
				min_sad_onetime=tmp2_0;
				mv_y_onetime=mv_y_tmp2_0;
			end
			else begin 
				min_sad_onetime=tmp2_1;
				mv_y_onetime=mv_y_tmp2_1;
			end
		end
		end

		always@(posedge clk or negedge rst)
			if(!rst)
				begin
					finish_a_cur<=0;
					global_min_sad<=22'b1111111111111111111111;
				end
			else
					begin
							if(!pause)
									begin
								if(global_min_sad>min_sad_onetime)
								begin
								global_min_sad<=min_sad_onetime;
								global_mv_x<=mv_x_onetime;
								global_mv_y<=mv_y_onetime;
								end
								if(clk_index32==30)//输出最小值
								begin
									finish_a_cur<=1;//拉高
								end
								if(clk_index32==31)//输出最小值
								begin
									finish_a_cur<=0;//拉低
									global_min_sad<=22'b1111111111111111111111;
								end
								if(finish_a_cur==1)
									finish_a_cur<=0;

					end
					else begin global_mv_x<=0;
					finish_a_cur<=0;
					global_min_sad<=22'b1111111111111111111111;
					end
					end

		always@(posedge clk or negedge rst)
			if(!rst)
				begin
					mv_x_onetime<=0;
				end
			else begin
						if(!pause)
							begin
							if(clk_index32%2==0)
								mv_x_onetime<=clk_index32/2-8;
									end
							else mv_x_onetime<=0;
			end

		always@(posedge clk or negedge rst)
			if(!rst)
				begin
					clk_index32<=0;
				end
			else
					begin
						if(!pause)
						begin
								if(clk_index32==31)
									begin
										clk_index32<=0;
									end
								else
									begin
										clk_index32<=clk_index32+1;
									end
					end
					else clk_index32<=0;
					end

	//   always@(posedge clk or negedge rst)
  //   begin
  //     if (!rst)
  //       begin
  //         start_from_16<=0;before_start<=0;finish_a_cur<=0;
  //       end
  //     else
  //       begin
  //         if (before_start==15)//这个8要根据后续的reg数量（流水线级数调整
  //           begin//如果在这里改变start或许会一直检测？
  //           end
  //         else
  //           begin
  //             before_start<= before_start+1;
  //           end
  //       end

  //   end

		
	// always@(posedge clk) //可综合
	// 	begin
	// 		if (before_start==15)
	// 		start_from_16<=1;
	// 	end
endmodule