#include <cstdlib>
#include <iostream>

using namespace std;

int main()
{
	int x,y;
	cout<<"masukkan angka pertama: "<<endl;
	cin>>x;
	cout<<"masukkan angka terakhir: "<<endl;
	cin>>y;
	
	while (x<y){
		cout <<x;
		cout <<endl;
		x=x+1;
	}
	return 0;
}
