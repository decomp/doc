package main

import "os"

func main() {
	sum := 0
	for i := 0; i < 5; i++ {
		for j := 0; j < 7; j++ {
			if i < j {
				sum += i
			} else {
				sum += j
			}
		}
	}
	os.Exit(sum % 256)
}
