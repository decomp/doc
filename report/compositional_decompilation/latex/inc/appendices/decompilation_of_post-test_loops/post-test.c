#include <stdio.h>

int main(int argc, char **argv) {
	int i, n;

	i = 0;
	n = 1;
	do {
		if (i < 10) {
			i++;
			n *= 2;
		} else {
			i += 3;
			n *= 4;
		}
	} while(i < 15);
	return n%123;
}
