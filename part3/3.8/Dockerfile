FROM node:16-alpine as builder

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

FROM nginx:1.19-alpine

COPY --from=builder /usr/src/app/build ./usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]