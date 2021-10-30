package main

import (
	"fmt"
)

func main() {
	fmt.Println(Sum(3, 4))
}

// Sum calculates the sum of two integers
func Sum(a int, b int) int {
	return a + b
}
