all:
	make build
	docker build -t "s/echo-server" .
build:
	docker run -it --rm --workdir /go/cmd/app    -v $(PWD)/cmd/echo-server:/go/cmd/app -v $(PWD)/build.sh:/build.sh golang:1.18 /build.sh
	mkdir -p bin
	mv ./cmd/echo-server/echo-server ./bin/echo-server
	chmod +x ./bin/echo-server
