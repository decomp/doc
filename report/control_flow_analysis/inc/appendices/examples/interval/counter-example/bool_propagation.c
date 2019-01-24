int B1(void);
int B2(void);
int B3(void);
int B4(void);
int B5(void);
int B6(void);

void f(void) {
	int b1 = B1();
	int b2 = B2();
	if (b1 && b2) {
		B3();
	}
	if (!b1) {
		B4();
	}
	if (b1) {
		B5();
	}
	B6();
}
