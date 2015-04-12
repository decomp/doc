package main

import "os"

func main() {
	i := 0
	x := 0
	for i < 10 {
		if x < 100 {
			x += 3 * i
		}
		i++
	}
	os.Exit(x)
}
