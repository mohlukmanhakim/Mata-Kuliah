#include <cstdlib>
#include <iostream>

using namespace std;
float luas (float r, float t) {
float luas;
luas = (2*(3.14*r*r))+((2*3.14*r)*t);
}
int main(){
	float r, t;
	cout << "********Menghitung Luas permukaan Tabung********\n";
	cout << "masukkan jari-jari	 : "; cin >> r;
	cout << "masukkan tinggi		 : "; cin >> t;
	cout << "================================================\n";
	cout << "luas adalah		 : " << luas (r, t);
	cout << "	\n";
	cout << "	\n";
	cout << "	\n";
	cout << "Moh Lukman Hakim\n";
	cout << "do not give up easily\n";
	return 0;
}
