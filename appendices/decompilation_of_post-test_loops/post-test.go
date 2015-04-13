package main

import "os"

func main() {
	i := 0
	n := 1
	for {
		if i < 10 {
			i++
			n *= 2
		} else {
			i += 3
			n *= 4
		}
		if !(i < 15) {
			break
		}
	}
	os.Exit(n % 123)
}
