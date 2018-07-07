FROM node:8-alpine

ENV PORT=8080
WORKDIR /app
COPY . /app
RUN set -e; apk upgrade --no-cache; yarn install

CMD node app.js
EXPOSE 8080
