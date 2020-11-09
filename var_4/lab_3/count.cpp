#include <iostream>
using namespace std;

int getNOD(int m, int n) {
	if (m == n) {
		return m;
	}
	
	while (true) {
		int remains = 0;
		
		if (m > n) {
			remains = m % n;
			if (remains == 0) {
				return n;
			}
			
			m = m / n;
		} else {
			remains = n % m;
			if (remains == 0) {
				return m;
			}
			
			n = n / m;
		}
	}
}

int getNOK(int m, int n) {
	return m * n / getNOD(m, n);
}

int calculate(int m, int n) {
	return getNOK(m, n) - getNOD(m, n);
}

