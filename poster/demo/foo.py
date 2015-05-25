def main():
	i_0 = 0
	x_0 = 0
	while True:
		_2 = i_0 < 10
		if not _2:
			break
		_4 = x_0 < 100
		x_1 = x_0
		if _4:
			_6 = 3 * i_0
			_7 = x_0 + _6
			x_1 = _7
		_10 = i_0 + 1
		i_0 = _10
		x_0 = x_1
	exit(x_0)

main()
