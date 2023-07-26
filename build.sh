#!/bin/sh

go mod init
export GO111MODULE=on
export GOPROXY=https://goproxy.io,direct
go mod tidy
#go get -d -v ./...
#go install -v ./...
go build -o echo-server
