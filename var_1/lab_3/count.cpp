#include <iostream>
using namespace std;

int getSize(int number) {
	int counter = 0;
	while (number > 0) {
		counter++;
		number /= 10;
	}
	return counter;
}

int calculate(int m, int n) {
	int sum = 0;
	int numberSize = getSize(m);
	int *numbers = new int[numberSize];
	
	for (int i = numberSize - 1; i >= 0; i--) {
		numbers[i] = m % 10;
		m /= 10;
	}
	
	for (int i = 0; i < n; i++) {
		sum += numbers[i];
	}
	
	return sum;
}
