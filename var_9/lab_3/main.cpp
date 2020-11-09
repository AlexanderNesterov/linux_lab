#include <stdio.h>
#include <iostream>
#include "count.h"
using namespace std;

int main()
{
	int m, n, k;
	
	cout << "Enter m: ";
	cin >> m;
	cout << "Enter n: ";
	cin >> n;
	
	cout << "Максимальное число: " << getNumber(m, n) << endl;
		
	return 0;
}














