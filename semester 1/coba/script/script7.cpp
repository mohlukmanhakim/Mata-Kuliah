#include <cstdlib>
#include <iostream>

using namespace std;

int main()
{
	int panjang;
	int lebar;
	int pilihan;
	float hasil;
	
	cout <<"masukkan panjang "<<endl;
	cin>>panjang;
	cout <<"masukkan lebar"<<endl;
	cin>>lebar;
	cout <<"menu pilihan "<<endl;
	cout <<"1. luas"<<endl;
	cout <<"2. keliling"<<endl;
	cin>>pilihan;
	
	if (pilihan==1){
		hasil= panjang*lebar;
	}else{
		hasil= 2*(panjang +lebar);
	}
	
	cout <<"jadi hasilnya adalah ";
	cout <<hasil;
	return 0;
}
