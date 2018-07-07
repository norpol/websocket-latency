FROM node:8-alpine

ENV PORT=8080
WORKDIR /app
COPY . /app
RUN set -e; apk update; apk upgrade; yarn install

CMD node app.js
EXPOSE 8080
