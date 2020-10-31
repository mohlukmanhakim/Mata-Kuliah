#include <cstdlib>
#include <iostream>

using namespace std;

int main(){
	
int hb;
int bonus;
float hari;

cout << "silahkan masukkan hari"<<endl;
cin >> hari;
cout << "masukkan harga barang" <<endl;
cin >> hb;

if (hari=="senin"){
	if (hb>10000){
		bonus="roti";
	}else{
		bonus="tidak mendapatkan bonus";
	}
}else{
	if (hb>10000){
		bonus="air mineral";
	}else{
		bonus="tidak mendapatkan bonus";
	}
	
cout << bonus;
}

	return 0;
}
