package main

import (
	"strings"

	"golang.org/x/tour/wc"
)

func WordCount(s string) map[string]int {
	count := make(map[string]int)
	fields := strings.Fields(s)

	for i := 0; i < len(fields); i++ {
		count[fields[i]]++
	}

	return count
}

func main() {
	wc.Test(WordCount)
}
