package main

import (
	"fmt"
	"log"
	"net/http"

	"ascii-art-dockerize/handlers"
	"ascii-art-dockerize/utils"
)

func main() {
	utils.Banners = [5]string{"standard.txt", "shadow.txt", "thinkertoy.txt", "enigma.txt", "nirvana.txt"}
	// home page route, method : GET
	http.HandleFunc("/", handlers.HomeHandler)
	// ascii-art route, method : POST
	http.HandleFunc("/ascii-art", handlers.AsciiHandler)
	fmt.Println("starting server on port 8080")
	log.Fatal(http.ListenAndServe(":8080", nil))
}
