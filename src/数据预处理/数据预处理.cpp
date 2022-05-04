#include <iostream>
#include <fstream>
#include <string>
#include <stdio.h>
#include<vector>
using namespace std;



int main()

{
	int rows=2161, cols=3841;
	int **mem = new int*[rows];    // 申请二维动态数组
	for (int i = 0; i < rows; i++)
		mem[i] = new int[cols];
	ifstream ifs("cur_img4k.txt");
	if (!ifs) return -1;
	ofstream ofs("cur_result4k.txt");
	if (!ofs) return -2;
	cin.rdbuf(ifs.rdbuf());
	for (int i = 1; i <=2160 ; i++)
	{
		for (int n = 1; n <= 3840; n++)
			cin >> mem[i][n];
	}//读到mem中
	
	for (int b = 1; b <= 3840; b++)
	{
		for (int c = 1; c <=8; c++) {
			if (mem[c][b] < 1) ofs << "00000000" << endl;
			else if (mem[c][b] < 10)  ofs << "0000000" << mem[c][b] << endl;
			else if (mem[c][b] < 100) ofs << "000000" << mem[c][b] << endl;
			else if (mem[c][b] < 1000)  ofs << "00000" << mem[c][b] << endl;
			else if (mem[c][b] < 10000)  ofs << "0000" << mem[c][b] << endl;
			else if (mem[c][b] < 100000)  ofs << "000" << mem[c][b] << endl;
			else if (mem[c][b] < 1000000)  ofs << "00" << mem[c][b] << endl;
			else if (mem[c][b] < 10000000)  ofs << "0" << mem[c][b] << endl;
			else  ofs << mem[c][b] << endl;
		}
	}





	ofs.close();
	ifs.close();

	for (int i = 0; i < rows; i++) // 释放动态数组
	{	delete[]mem[i];}
	delete[]mem;


	return 0;

}
//176的数据有209484个,4k有68558400