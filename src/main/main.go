package main

import (
	"net/http"

	"./handler"
)

func main() {
	http.HandleFunc("/", handler.Handler)
	http.ListenAndServe(":8080", nil)
}
