#include <cstdlib>
#include <iostream>

using namespace std;
//1 1 1 1 1
int main(int argc, char *argv[])
{
	int x,y;
	
	cout <<"masukkan angka pertama: "<<endl;
	cin>>x;
	cout << "masukkan angka terakhir: "<<endl;
	cin>> y;
	
	while (x<=y){
		cout << 1;
		x=x+1;
		
	}
	
	return 0;
}
