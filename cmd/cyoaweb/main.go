package main

import (
	"flag"
	"fmt"
)

func main() {
	filename := flag.String("file", "gopher.json", "the file with teh CYOA story")
	flag.Parse()
	fmt.Printf("Using the story in %s\n", *filename)
}
