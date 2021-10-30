package main

import "testing"

func TestSum(t *testing.T) {
	sum := Sum(2, 4)
	if sum != 6 {
		t.Fatalf(`Sum(2,4) = %v, want 6`, sum)
	}
}
