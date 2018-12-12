func f_40B0A5() {
	for i := 0; i < 112; i++ {
		for j := 0; j < 112; j++ {
			switch g_5A5BD8[i][j] {
			case 12, 71, 211, 321, 341, 418:
				g_5C3008[i][j] = 1
			case 3, 11, 33, 249, 344, 421:
				g_5C3008[i][j] = 2
			case 255:
				g_5C3008[i][j] = 4
			case 259:
				g_5C3008[i][j] = 5
			}
		}
	}
}
