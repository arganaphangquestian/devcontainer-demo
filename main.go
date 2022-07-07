package main

import (
	"encoding/json"
	"fmt"
	"net/http"
)

const (
	PORT = 8000
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		w.Header().Set("Content-Type", "application/json")
		json.NewEncoder(w).Encode(map[string]string{
			"message": "OK",
		})
	})
	http.ListenAndServe(fmt.Sprintf("0.0.0.0:%d", PORT), nil)
}
