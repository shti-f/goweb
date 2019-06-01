package handler

import (
	"fmt"
	"net/http"
)

// Handler is webhandler
func Handler(writer http.ResponseWriter, request *http.Request) {
	fmt.Fprintf(writer, "Hello World!")
}
