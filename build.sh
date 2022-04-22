#!/bin/bash
set -xe 

# install packages and dependencies
go get github.com/gorilla/mux
go get github.com/gorilla/context
go get github.com/nimajalali/go-force/force
go get github.com/nimajalali/go-force/sobjects


# create the application binary that eb uses
GOOS=linux GOARCH=amd64 go build -o bin/application -ldflags="-s -w"