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
			i += 4
			n *= 3
		}
		if !(i < 15) {
			break
		}
	}
	os.Exit(n % 123)
}
