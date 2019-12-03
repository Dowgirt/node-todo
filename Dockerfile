FROM node:12

LABEL maintainer="Daniel Kopaczel"

WORKDIR /usr/src/app

RUN npm install

COPY . .

EXPOSE 8080

ENTRYPOINT ["node", "server.js"]
