#include <cstdlib>
#include <iostream>

using namespace std;

int main()
{
	int alas;
	int tinggi;
	float luas;
	
	cout <<"masukkan alas"<<endl;
	cin >> alas;
	cout <<"masukkan tinggi"<<endl;
	cin >>tinggi;

	luas= (alas*tinggi)/2;
	
	cout <<"jadi luas segitiga adalah ";
	cout <<luas;
	
	return 0;
}
