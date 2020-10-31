#include <cstdlib>
#include <iostream>

using namespace std;

int main()
{
	int x,y;
	
	cout <<"masukkan angka pertama: "<<endl;
	cin >> x;
	cout <<"masukkan angka terakhir: "<<endl;
	cin >>y;
	
	do {
		cout<<x<<endl;
		x=x+1;
	}while (x<y);
	return 0;
}
