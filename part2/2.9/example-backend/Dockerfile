FROM golang:1.16-alpine

WORKDIR /usr/src/app

COPY . .

#ENV REQUEST_ORIGIN=http://localhost:5678

RUN go build

EXPOSE 8080

CMD ["./server"]