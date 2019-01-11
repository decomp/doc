int B1(void);
int B2(void);
int B3(void);
int B4(void);
int B5(void);
int B6(void);
int B7(void);
int B8(void);
int B9(void);
int B10(void);
int B11(void);
int B12(void);
int B13(void);
int B14(void);
int B15(void);

void f(void) {
	int b1 = B1();
	if (b1) {
		int b2 = B2();
		if (b2) {
			B3();
		} else {
			B4();
		}
	}
	B5();
	while (B6()) {
		B12();
		int b14;
		do {
			B13();
			b14 = B14();
		} while(b14);
		B15();
	}
	int b7 = B7();
	if (b7 || B8()) {
		B9();
	}
	B10();
	B11();
}
