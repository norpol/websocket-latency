# Using mhart/alpine-node instead of node:0.10
# because of more up to date dependencies
# (node:0.10 has a two year old Debian Jessie Image)
# and much smaller footprint
FROM mhart/alpine-node:0.10

ENV PORT=8080
WORKDIR /app
COPY . /app
RUN set -e; apk update; apk upgrade; npm install

CMD node app.js
EXPOSE 8080
