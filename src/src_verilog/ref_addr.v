
module ref_addr(rst,clk,ad1,ber,pause_in,pause_out,finish_flag);
   input wire clk,rst;
   output wire [22:0]ad1;
   reg [11:0]vec_x;
   reg[8:0] vec_y;
   input wire pause_in;
  output  reg ber;
  output  wire pause_out;
  output reg   finish_flag;
   
   
   always@(posedge clk or negedge rst)
   begin 
    if(!rst)
        begin 
          finish_flag<=0;
          vec_x<=0;vec_y<=0;ber<=1;
        end
   else  begin 
     if(vec_x==4&&vec_y==270) finish_flag<=1;//vec_x==1,2?
     else if(!pause_in)
     begin
      if(vec_x<3854)//3854or190 //这里确定对不对？
          begin 
            if(ber)
              begin 
                vec_x<=vec_x;ber<=0;
              end
            else begin  
              vec_x<=vec_x+1;
              ber<=1;
                 end 
          end
      else begin  
          if(ber)
            begin 
              vec_x<=vec_x;ber<=0;
            end
          else begin  
            vec_x<=0;vec_y<=vec_y+1;ber<=1;
            end 
     end
   end
   end
 end

assign ad1=2175*vec_x+8*vec_y;//2175or159
assign   pause_out=pause_in;//改这里是puause还是in
endmodule

