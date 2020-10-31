#include <cstdlib>
#include <iostream>

using namespace std;

int main()
{
	int n1,n2;
	int i;
	
cout <<"masukkan angka pertama"<<endl;
cin>>n1;
cout <<"masukkan angka terakhir"<<endl;
cin>>n2;
for (i=n1;i<n2;i++){
	if (i%2==0){
		cout <<"i bilangan genap.<br>";
	}else{
		cout <<"i bilangan ganjil.<br>";
	}
}	
return 0;
}
