FROM golang:alpine

LABEL maintainer="Philip Winnington"

RUN apk update && apk add --no-cache git

WORKDIR /app

COPY go.mod ./

RUN go mod download

COPY . .

RUN go build cmd/cyoaweb/*.go

EXPOSE 3000

cmd ["./main"]
