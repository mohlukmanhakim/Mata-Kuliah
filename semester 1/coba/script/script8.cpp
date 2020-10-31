#include <cstdlib>
#include <iostream>

using namespace std;

int main()
{
	int total_barang;
	int hari;
	
	cout <<"masukkan total barang "<<endl;
	cin>>total_barang;
	cout<<"masukkan hari"<<endl;
	cout<< "1. senin"<<endl;
	cout<< "2. selain hari senin"<<endl;
	cin>>hari;
	
	if(hari==1){
		if (total_barang>10000){
			cout<<"anda mendapatkan roti";
		}else{
			cout<<"anda tidak mendapatkan bonus";
		}
	}else{
		if (total_barang>10000){
			cout<<"anda mendapatkan air mineral";
		}else{
			cout<<"tidak mendapatkan bonus";
		}
	}

	return 0;
}
