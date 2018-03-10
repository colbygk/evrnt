GOPATH=${PWD}:/sdk:/go

apache-thrift:
	go get github.com/apache/thrift/lib/go/thrift

evrnt: src/evrnt/*.go
	go build evrnt

lib: apache-thrift

all: evrnt
