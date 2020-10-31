#include <iostream>
#include <conio.h>

using namespace std;
int main() {
	int n,angka[12], kiri, kanan, tengah, temp, key;
	bool ketemu = false;
	
	cout << "masukkan jumlah data : ";
	cin >> n;
	
//input angka 
	for (int i=0;i<n;i++){
		cout <<"angka ke - ["<<i<<"] : ";
		cin >> angka[i];
	}
	
//mengurutkan data 
	for (int i=0; i<n; i++){
		for (int j=0; j<n-i-1;j++){
			if (angka [j]> angka [j+1]){
				temp=angka[j];
				angka[j]=angka [j+1];
				angka [j+1]=temp;
			}
		}
	}
	
//menampilkan data yang sudah diurutkan
cout <<"data yang telah diurutkan adalah : ";
for (int i=0;i<n;i++){
	cout <<angka[i]<<" ";
}
//input data yang telah dicari
cout <<"\n masukkan angka yang dicari : ";
cin >>key;
kiri=0;
kanan=n-1;
while(kiri<=kanan){
	tengah =(kiri+kanan)/2;
	if (key== angka[tengah]){
		ketemu=true;
		break;
	}
	else if (key <angka [tengah]){
		kanan=tengah-1;
	}
	else{
			kiri=tengah+1;
	}
	}
	if (ketemu==true){
		cout <<"angka ditemukan!";
	}else{
		cout <<"angka tidak ditemukan";
	}
	return 0;
}
