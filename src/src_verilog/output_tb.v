module output_tb(//每个模块延迟多少个周期给拉低
	input wire clk,
	input wire rst,
	input wire [13:0]min_sad0,
	input wire [13:0]min_sad1,
	input wire finish_a_cur0,
	input wire finish_a_cur1,
	input wire [3:0]mv_x0,
	input wire [3:0]mv_y0,
	input wire [3:0]mv_x1,
	input wire [3:0]mv_y1
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
		if(finish_a_cur0==1)begin//mv_x小了1
			// $fwrite(fd,"%s","mv0");
			// $fwrite(fd,"%d",$signed(output1)+1);
			// $fwrite(fd,"%d",$signed(output1)+1);
			// $fwrite(fd,"%s","min_sad0");
			// $fwrite(fd,"%d\n",min_sad0);
			$fwrite(fd,"%s","mv_x:");
			if($signed(mv_x0)+2>8)
			$fwrite(fd,"%d",$signed(mv_x0)-14);//-8 -7 -7 -8//$signed(output1)+1
			else $fwrite(fd,"%d",$signed(mv_x0)+2);
			$fwrite(fd,"\t%s","mv_y:");
			$fwrite(fd,"%d",$signed(mv_y0)+1);
			$fwrite(fd,"\t%s","min_sad:");
			$fwrite(fd,"%d\n",min_sad0);
		end
		if(finish_a_cur1==1)begin
			$fwrite(fd,"%s","mv_x:");
			if($signed(mv_x1)+2>8)
			$fwrite(fd,"%d",$signed(mv_x1)-14);//-8 -7 -7 -8//$signed(output1)+1
			else $fwrite(fd,"%d",$signed(mv_x1)+2);//(output1)+1
			$fwrite(fd,"\t%s","mv_y:");
			$fwrite(fd,"%d",$signed(mv_y1)+1);
			$fwrite(fd,"\t%s","min_sad:");
			$fwrite(fd,"%d\n",min_sad1);
		end
	end
end
endmodule