FROM golang:1.16-alpine

WORKDIR /usr/src/app

COPY . .

RUN go build -o server . && \
    addgroup -S appgroup && adduser -S appuser -G appgroup && \
    chown -R appuser:appgroup /usr/src/app

USER appuser

EXPOSE 8080

CMD ["./server"]