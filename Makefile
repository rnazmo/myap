.PHONY: run
run:
	go run ./hello-beep.go ./example.mp3

.PHONY: mod
mod:
	go mod tidy
