#include <iostream>
using namespace std;

int getSumOfNumber(int number) {
	int sum = 0;
	
	while (number > 0) {
		sum += number % 10;
		number /= 10;
	}
	
	return sum;
}


int getNumber(int m, int n) {
	int sumOfM = getSumOfNumber(m);
	int currentSum = 0;
	int maxNumber = m;
	
	for (int i = m; i <= n; i++) {
		currentSum = getSumOfNumber(i);
		if (currentSum == sumOfM && i > maxNumber) {
			maxNumber = i;
		}
	}
	
	return maxNumber;
}

