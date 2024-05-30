FROM golang:1.16-alpine AS builder

WORKDIR /usr/src/app

COPY . .

RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -ldflags '-extldflags "-static"' -o server .

FROM scratch

COPY --from=builder /usr/src/app/server /server

EXPOSE 8080

ENTRYPOINT [ "/server" ]