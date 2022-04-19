FROM golang:1.18-alpine AS builder

WORKDIR /usr/src/app

COPY go.mod ./
RUN go mod download && go mod verify

COPY main.go .
RUN go build -v -o /usr/local/bin/app ./...

RUN rm -rf go.mod main.go

FROM hello-world

COPY --from=builder /usr/local/bin/app ./

CMD ["./app"]
