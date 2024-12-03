#include <iostream>
#include <bitset>
#include <sstream>
#include <string>

using namespace std;
int main()
{
	int a = 0;
	int b = 1;
	int c = 0;
	int d = 0;
	for (int i = 1;; i++)
	{
		a = a + i;
		b = b + 3 * i;
		if (i < 20)
		{
			c = a;
			d = b;
		}
		if (20 <= i < 40)
		{
			c = a + b;
			d = a * c;
		}
		if (40 <= i < 60)
		{
			c = a * b;
			d = c * b;
		}
		if (i >= 60)
			break;



		string out;
		stringstream ss;
		ss << std::hex << a;
		ss >> out;

		string out1;
		stringstream ss1;
		ss1 << std::hex << b;
		ss1 >> out1;

		string out2;
		stringstream ss2;
		ss2 << std::hex << c;
		ss2 >> out2;

		string out3;
		stringstream ss3;
		ss3 << std::hex << d;
		ss3 >> out3;

		cout << out << " " << out1;
		cout << " " << out2 << " ";
		cout << out3 <<"                            ";
		cout << a << " " << b;
		cout << " " << c << "  ";
		cout << d << " " <<i<< endl;
	}
}