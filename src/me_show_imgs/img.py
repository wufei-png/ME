import cv2
import numpy as np
print(cv2.__version__)

def save_img(filepath1):
  img=np.zeros((2160,3840))
  f = open(filepath1,encoding='utf-8')
  row_index=0
  row=0
  while True:
        line = f.readline()
        if line:
          # print (line)
            # data_pre=bin(int(data))[2:]
            img[row][row_index]=int(line)
            # print('line',line,'data_pre',data_pre)
          # arr[0],'arr[0]',arr[1],'arr[1]')
            row_index=row_index+1
            if row_index==3840:
              row=row+1
              row_index=0
        else:
          break
  f.close()
  cv2.imwrite(f'cur_img4k_10.jpg',img)
save_img('./4k/cur_img4k_10.txt')
