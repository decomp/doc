int f(int n) {
	int sum = 0;
	for (int i = 0; i < n; i++) {
		if (sum < 100) {
			sum += i;
		}
	}
	return sum;
}
