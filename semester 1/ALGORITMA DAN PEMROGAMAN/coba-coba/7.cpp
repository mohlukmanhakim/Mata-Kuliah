#include <cstdlib>
#include <iostream>

using namespace std;
//satu dimensi
int main()
{
	int jml_bil,temp;
	cout <<"masukkan bilangan kurang dari 10: ";
	cin>>jml_bil;//sebagai isian array
	
	int bil [jml_bil];
	int i,j;  
	for (i=0;i<jml_bil;i++){
		cout <<"bilangan ke-"<<i+1<<" : ";
		cin >>bil[i];
	}
	
	for (i=0;i<jml_bil-1;i++){
		for(j=i+1;j<jml_bil;j++){
			if (bil[i]>bil[j]){//dari kecil ke besar
				temp=bil[i];
				bil[i]=bil[j];
				bil[j]=temp;
			}
		}
	}
	cout <<"bilangan yang sudah terurut : "<<endl;
	for (i=0;i<jml_bil;i++){
		cout <<"bilangan ke "<<i+1<<" : "<<bil[i]<<endl;
	}
	return 0;
}
