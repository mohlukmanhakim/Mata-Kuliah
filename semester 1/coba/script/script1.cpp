#include <cstdlib>
#include <iostream>

using namespace std;

int main()
{
	int panjang;
	int lebar;
	float luas;
	
	cout << "masukkan panjang"<<endl;
	cin >>panjang;
	cout << "masukkan lebar"<<endl;
	cin >>lebar;
	
	luas =panjang*lebar;
	
	cout<<"jadi luas persegi panjang adalah ";
	cout<<luas;
	
	return 0;
}
