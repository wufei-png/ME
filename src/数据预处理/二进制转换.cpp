#include <iostream>

#include <fstream>

#include <sstream>

#include <string>

using namespace std;

long transform(int n)
{
	int result;
	if (n == 0)
		result = 0;
	else if (n / 2 == 0)
		result = 1;
	else result = n % 2 + transform(n / 2) * 10;
	return result;
}
int main()
{
	string line;

	int x, out;

	ifstream ifs("ref_img1.txt");

	if (!ifs) return -1;

	ofstream ofs("ref_img.txt");

	if (!ofs) return -2;

	while (getline(ifs, line))

	{

		istringstream is(line);

		is >> x;
		out = transform(x);

		if (out < 10)  ofs << "0000000" << out << endl;
		else if (out < 100) ofs << "000000" << out << endl;
		else if (out < 1000)  ofs << "00000" << out << endl;
		else if (out < 10000)  ofs << "0000" << out << endl;
		else if (out < 100000)  ofs << "000" << out << endl;
		else if (out < 1000000)  ofs << "00" << out << endl;
		else if (out < 10000000)  ofs << "0" << out << endl;
		else  ofs << out << endl;//²¹Áã²Ù×÷

	}
	ifs.close();

	ofs.close();

	return 0;
}