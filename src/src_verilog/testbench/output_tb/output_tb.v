module output_tb(//每个模块延迟多少个周期给拉低
	input wire clk,
	input wire rst,
	input wire [21:0]min_sad0,
	input wire [21:0]min_sad1,
	input wire finish_a_cur0,
	input wire finish_a_cur1
);

integer fd;
initial
begin
	fd=$fopen("data_out.txt","w");
end


always@(posedge clk or negedge rst)
begin
if(!rst)
begin

	end
	else begin
		if(finish_a_cur0==1)$fwrite(fd,"%d\n",min_sad0);
		if(finish_a_cur1==1)$fwrite(fd,"%d\n",min_sad1);

	end
end
endmodule