module sub(
  input     [7:0] data1,
  input     [7:0] data2,
  input  compute_flag,
  output [7:0]     sub
);

assign sub=(compute_flag==1)?((data1>=data2)?(data1-data2):(data2-data1)):0;//flag==0相当于没有执行减法的过程，减少功耗 这里compute_flag好像不是上一个周期的值 组合逻辑的特点？
endmodule

