#include <cstdlib>
#include <iostream>

using namespace std;

int main()
{
cout <<"program menentukan total pembayaran"<<endl;
cout <<"==================================="<<endl;
	int menu;
	int total_harga;
	float diskon;
	int total_pembayaran;
	
cout <<"masukkan total harga barang yang dibeli"<<endl;
cin>>total_harga;
cout<<"MENU TRANSAKSI BARANG"<<endl;
cout<<"1.member"<<endl;
cout<<"2.bukan member"<<endl<<endl;
cout<<"silahkan pilih menu 1-2: ";
cin >> menu;
cout<<"____________________________________"<<endl;
cout <<"	"<<endl;

if (menu ==1){
	if(total_harga>500000){
		cout <<"Anda Mendapatkan Diskon 10 %"<<endl;
		diskon=total_harga * 0.1;
	}else{
		cout <<"Anda Mendapatkan Diskon 5 %"<<endl;
		diskon=total_harga * 0.05;
	}
}
else if(menu ==2){
	if(total_harga>1000000){
		cout <<"Anda Mendapatkan Diskon 3 %"<<endl;
		diskon=total_harga * 0.03;
	}else{
		cout <<"Anda Mendapatkan Diskon 2 %"<<endl;
		diskon=total_harga * 0.02;
	}
}
total_pembayaran = total_harga-diskon;
cout <<"Jadi total yang harus dibayarkan adalah:"<<endl;
cout <<total_pembayaran;
	return 0;
}
