#include <cstdlib>
#include <iostream>

using namespace std;

int main()
{
	int angka;
	float hasil;
	
	cout <<"masukkan angka "<<endl;
	cin>>angka;
	
	hasil=angka %2;
	
	if (hasil=0){
		cout<<"hasilnya genap";
	}else{
		cout <<"hasilnya ganjil";
	}
	return 0;
}
