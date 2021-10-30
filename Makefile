BINARY := "binary"
DOCKER_IMAGE := "image"
VERSION := 1.0.0

all: test build docker

test:
	go test

build:
	mkdir -p bin
	rm -f bin/*
	GOOS=linux go build -o bin/$(BINARY)-$(VERSION)-linux
	GOOS=darwin go build -o bin/$(BINARY)-$(VERSION)-darwin
	GOOS=windows go build -o bin/$(BINARY)-$(VERSION).exe

docker:
	docker build -t $(DOCKER_IMAGE):$(VERSION) --build-arg binary=bin/$(BINARY)-$(VERSION)-linux .

run:
	go run main.go

clean:
	rm -rf bin
