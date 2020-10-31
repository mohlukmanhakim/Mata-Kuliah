#include <cstdlib>
#include <iostream>

using namespace std;

int main()
{
	float alas,tinggi,luas;
	
	cout << "masukkan alas = ";cin >> alas;
	cout << "masukkan tinggi = "; cin>> tinggi;
	luas = (alas*tinggi)/2;
	
	cout << "jadi luas segitiga adalah "<<luas;
	return 0;
}
