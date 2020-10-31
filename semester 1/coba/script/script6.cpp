#include <cstdlib>
#include <iostream>

using namespace std;

int main()
{
	int total_barang;
	int status;
	float diskon;
	float total_bayar;
	
	cout<<"masukkan total barang "<<endl;
	cin >> total_barang;
	cout <<"menu pilihan "<<endl;
	cout <<"1. member"<<endl;
	cout <<"2. non member"<<endl;
	cin>>status;
	
	if (status==1){
		if(total_barang>500000){
			diskon=total_barang*0.1;
		}else{
			diskon=total_barang*0.05;
		}
		
	}else{
		if(total_barang>1000000){
			diskon=total_barang*0.03;
		}else{
			diskon=total_barang*0.02;
		}
		
	}
	total_bayar=total_barang-diskon;
	
	cout <<"jadi total pembayaran adalah "<<endl;
	cout <<total_bayar;
	return 0;
}
