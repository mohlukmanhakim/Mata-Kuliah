#include <cstdlib>
#include <iostream>

using namespace std;

int main(){
cout << "program untuk mennetukan total pembayaran"<<endl;
cout << "========================================="<<endl;
	float total_harga;
	float total_pembayaran;
	float diskon;
	
cout <<"masukkan total harga barang yang dibeli"<<endl;
cin >> total_harga;

	if(total_harga>500000){
		cout <<"mendapat diskon 10 %"<<endl;
		diskon=total_harga*0.1;
	}else{
		cout <<"mendapat diskon 5 %"<<endl;
		diskon=total_harga*0.05;
}
	total_pembayaran=total_harga-diskon;
	
cout<<"jadi total yang harus dibayarkan adalah"<<total_pembayaran;
}
