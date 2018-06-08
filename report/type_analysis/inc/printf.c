#include <stdio.h>

int f(int y) {
	int x = 321;
	char *s = "foo";
	printf("%s, %d", s, x);
	return x+y;
}
