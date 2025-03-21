MODULE_NAME := $(shell basename $(shell git rev-parse --show-toplevel 2>/dev/null || pwd))

.PHONY: all init clean test

all: init test

init:
	go mod tidy

clean:
	go clean -testcache

test:
	go test ./... -v