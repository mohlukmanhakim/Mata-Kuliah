#include <cstdlib>
#include <iostream>

using namespace std;

int main()
{
	int total_barang;
	float diskon;
	float total_bayar;
	
	cout<<"masukkan total barang"<<endl;
	cin>>total_barang;
	
	if (total_barang>500000){
		diskon=total_barang*0.1;
		cout <<"anda mendapatkan diskon 10%"<<endl;
	}else{
		diskon=total_barang*0.05;
		cout << "anda mendapatkan diskon 5%"<<endl;
	}
	
	total_bayar=total_barang-diskon;
	
	cout <<"jadi total yang harus dibayarkan adalah ";
	cout << total_bayar;
	return 0;
}
