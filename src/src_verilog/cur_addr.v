
module cur_addr(rst,clk,ad1,pause_in,pause_out);

   input wire clk,rst;
   output wire [22:0]ad1;
     input wire pause_in;//这里需要用reg pause么
      reg pause;
      output wire pause_out;
   reg [21:0]vec_x;//这里要改么
//第一个clk取得是0的还是1的
   always@(posedge clk or negedge rst)
   begin
 if(!rst)
 begin
       vec_x<=0;
       pause<=0;
   end
   else  begin
   if (!pause_in)
   begin
   if(vec_x<4147167)//这里确定对不对？
    if(vec_x%32==31)
      vec_x<=vec_x+33;
     else
      vec_x<=vec_x+1;
   else  vec_x<=0;
   end
   end
   end
   always@(posedge clk or negedge rst)
   begin
 if(!rst)
 begin
pause<=0;
    end
    else begin
pause<=pause_in;
    end
   end
assign  ad1=2*vec_x+2'b00;
assign   pause_out=pause_in;//改这里是puause还是in
endmodule
    
   
