#include <cstdlib>
#include <iostream>

using namespace std;
//2 4 8 16 32
int main()
{
	int x,y;
	
	cout <<"masukkan angka pertama: "<<endl;
	cin>> x;
	cout << "masukkan angka terakhir: " <<endl;
	cin>> y;
	
	while (x<=y){
		cout << x;
		x=x*2;
	}
	
	
	return 0;
}
