FROM node:16-alpine as builder

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm run build

FROM alpine:3.18

RUN apk add --no-cache nodejs npm && \
    npm install -g serve && \
    addgroup -S appgroup && adduser -S appuser -G appgroup

WORKDIR /usr/src/app

COPY --from=builder /usr/src/app/build ./build

RUN chown -R appuser:appgroup /usr/src/app

USER appuser

EXPOSE 5678

CMD ["serve", "-s", "-l", "5678", "build"]