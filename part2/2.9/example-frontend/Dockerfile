FROM node:16-alpine

WORKDIR /usr/src/app

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost/api

RUN npm install
RUN npm run build
RUN npm install -g serve

EXPOSE 5678

CMD ["serve", "-s", "-l", "5678", "build"]