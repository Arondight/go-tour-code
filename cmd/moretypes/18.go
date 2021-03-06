package main

import "golang.org/x/tour/pic"

func Pic(dx, dy int) [][]uint8 {
	s := make([][]uint8, dy)

	for i := 0; i < len(s); i++ {
		s[i] = make([]uint8, dx)

		for j := 0; j < len(s[i]); j++ {
			s[i][j] = uint8((i + j) / 2)
		}
	}

	return s
}

func main() {
	pic.Show(Pic)
}
