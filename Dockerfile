  
FROM golang
WORKDIR /go/src/golangFolder
EXPOSE 8080 2345
RUN go get github.com/derekparker/delve/cmd/dlv
ADD . /go/src/golangFolder

CMD ["dlv", "debug", "golangFolder", "--headless", "--listen=:2345", "--api-version=2", "--log"]