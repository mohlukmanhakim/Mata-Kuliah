#include <cstdlib>
#include <iostream>

using namespace std;

int main()
{
	int pilihan;
	int sisi;
	float hasil;
	
	cout <<"pilihan menu persegi "<<endl;
	cout <<"1. luas"<<endl;
	cout <<"2. keliling"<<endl;
	cout <<"=============="<<endl;
	cin >> pilihan;
	cout << "masukkan sisi"<<endl;
	cin>> sisi;
	
	if(pilihan==1){
		hasil=sisi*sisi;
	}else{
		hasil=4*sisi;
	}
	
	cout <<hasil;
	return 0;
}
