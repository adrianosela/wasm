NAME:=$(shell basename `git rev-parse --show-toplevel`)

build: dep
	GOOS=js GOARCH=wasm go build -o $(NAME).wasm

dep:
	go get -v
