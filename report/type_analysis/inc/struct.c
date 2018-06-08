#include <stdint.h>
#include <stdio.h>
#include <string.h>

typedef struct {
	int32_t x;
	int8_t y;
	char name[6];
} T;

void g(T ts[], int n) {
	for (int i = 0; i < n; i++) {
		printf(
			"%s (%d, %d)\n",
			ts[i].name,
			ts[i].x,
			ts[i].y
		);
	}
}

void h(T *ts) {
	memset(ts, 0, sizeof(T));
}
