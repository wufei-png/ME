module output_tb_copy(
	//每个模块延迟多少个周期给拉低
);
	reg clk;
	reg rst_n;
	reg [21:0]min_sad0;
	reg [21:0]min_sad1;
	reg[4:0]output_flag;
	reg[3:0]output1;
integer fd;
initial
begin
		$display("start a clock pulse");    // 打印开始标记
					$dumpfile("wave.vcd");              // 指定记录模拟波形的文件
					$dumpvars(0, output_tb_copy);          // 指定记录的模块层级

          fd=$fopen("data_out.txt","w");
					clk <= 1; 
					rst_n<=1;
					output1<=7;
					min_sad0<=0;
					min_sad1<=0;
					#1 rst_n<=0;                      
					#1 rst_n<=1;
					#500 $finish; 
end
    always begin
        #2.5 clk = ~clk; 
		end
always@(posedge clk or negedge rst_n)
begin
if(!rst_n)
begin
	output_flag<=0;
	end

	else begin
		output_flag<=output_flag+1;
		if(output_flag==32)
		output_flag<=0;
	end
end


always@(posedge clk or negedge rst_n)
begin
if(!rst_n)
begin

	end
	else begin
		if(output_flag==15)begin
			$fwrite(fd,"%s","mv0");
			$fwrite(fd,"%d",$signed(output1)+1);
			$fwrite(fd,"%d",$signed(output1)+1);
			$fwrite(fd,"%s","min_sad0");
			$fwrite(fd,"%d\n",min_sad0);
		end
		if(output_flag==31)
		begin
		$fwrite(fd,"%s\n","min_sad1");
		$fwrite(fd,"%d\n",$signed(min_sad1));
		end
	end
end

always@(posedge clk or negedge rst_n)
begin
if(!rst_n)
begin
					min_sad0<=0;
					//min_sad1<=0;
	end
	else begin
min_sad0<=22'b0;
min_sad0[21]<=1;
end
end
always@(posedge clk or negedge rst_n)
begin
if(!rst_n)
begin
					//min_sad0<=0;
					min_sad1<=0;
	end
	else begin
min_sad1<=22'b0111111111111111111111;
end
end
endmodule