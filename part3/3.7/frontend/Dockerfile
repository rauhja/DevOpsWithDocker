FROM node:16-alpine


WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:8080

RUN npm install && \
    npm run build && \
    npm install -g serve && \
    rm -rf node_modules src && \
    npm cache clean --force && \
    addgroup -S appgroup && adduser -S appuser -G appgroup && \
    chown -R appuser:appgroup /usr/src/app

USER appuser

EXPOSE 5678

CMD ["serve", "-s", "-l", "5678", "build"]