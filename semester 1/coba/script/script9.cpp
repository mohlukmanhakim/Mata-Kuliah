#include <cstdlib>
#include <iostream>

using namespace std;

int main()
{
	int total_kg;
	int pilihan;
	float diskon;
	
	cout <<"masukkan total barang"<<endl;
	cin>>total_kg;
	cout<<"masukkan jenis pengiriman "<<endl;
	cout<<"1. fast (8000/kg)"<<endl;
	cout<<"2. quick (10000/kg)"<<endl;
	cout<<"3. go (4000/kg)"<<endl;
	cin>>pilihan;
	
	if (pilihan==1){
		if(total_kg>10000){
			diskon=total_kg-7000;
		}else{
			diskon=total_kg-0;
		}
	}else if(pilihan==2){
		if (total_kg>10000){
			diskon=total_kg-5000;
		}else{
			diskon=total_kg-0;
		}
	}else{
		diskon=total_kg-0;
	}
	
	cout <<diskon;
	return 0;
}
