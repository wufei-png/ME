a='11111010'
a=int(a,2)
print(type(a))
def process(filepath1,filepath2):
  f = open(filepath1,encoding='utf-8')
  with open(filepath2,'w',encoding='utf-8') as f1:
      while True:
        line = f.readline()
        if line:
          # print (line)
            # data_pre=bin(int(data))[2:]
            data_pre=int(line,2)
            # print('line',line,'data_pre',data_pre)
            f1.write(str(data_pre)+'\n')
          # arr[0],'arr[0]',arr[1],'arr[1]')
        else:
          break
  f.close()
  f1.close()
process("./4k/cur_img4k.txt",'./4k/cur_img4k_10.txt')
process("./4k/ref_img4k.txt",'./4k/ref_img4k_10.txt')
process("./4k/cur_result4k.txt",'./4k/cur_result4k_10.txt')
process("./4k/ref_result4k.txt",'./4k/ref_result4k_10.txt')
