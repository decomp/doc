int main(int argc, char **argv) {
	int i, j, x, sum;
	sum = 0;
	for (i = 0; i < 5; i++) {
		for (j = 0; j < 7; j++) {
			if (i < j) {
				sum += i;
			} else {
				sum += j;
			}
		}
	}
	return sum % 256;
}
