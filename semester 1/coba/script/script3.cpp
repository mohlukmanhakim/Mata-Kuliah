#include <cstdlib>
#include <iostream>

using namespace std;

int main()
{
	int nilai;
	
	cout <<"masukkan nilai siswa "<<endl;
	cin>> nilai;
	
	if (nilai >75 ){
		cout <<"lulus";
	}else{
		cout<< "tidak lulus";
	}
	return 0;
}
