package main

import "os"

func main() {
	i := 0
	x := 0
	for i < 10 {
		x = x
		if x < 100 {
			x = x + 3*i
		}
		i = i + 1
		x = x
	}
	os.Exit(x)
}
