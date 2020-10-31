#include <iostream>
#include <conio.h>
#include <stdio.h>

using namespace std;
int main() {
	cout <<"\nINTERPOLASI SEARCH ";
	cout << "\n============================\n";
	
	int A[10];
	int i,j,k,tkr,low, high, pos , tm;
	
	for (i=0;i<10;i++){
		cout <<"data ke-: "<<i+1<<endl;
		cin >>A [i];
	}
	
	printf("masukkan data yang akan di cari:");
	scanf ("%d",&k);
	
	for (i=0;i<10;i++){
		for (j=i+1;j<10;j++){
			if (A[i]>A[j]){
				tkr=A[i];
				A[i]=A[j];
				A[j]=tkr;
			}
		}
	}
	
	tm =0;
	high=9;
	low=0;
	do{
		pos =((k-A[low])/(A[high]-A[low]))*(high-low)+low;
		
		if (A[pos]==k){
			tm++;
			break;
		}if (A[pos]>k){
			high=pos-1;	
		}else{
			if (A[pos]<k){
				low =pos +1;
			}
		}
	}
	
	while (k>=A[low] && k<= A[high]);
	if (tm >0){
		printf("data %d yang dicari ada dalam array\n",k);
	}else{
		printf("data %d yang tidak ditemukan dalam array\n");
	}
	return 0;
}
