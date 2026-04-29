FROM node:24-bookworm-slim

WORKDIR /usr/api

COPY package.json  package-lock.json ./

RUN npm install

RUN npx rimraf ./dist

COPY . .

USER non-root CMD ["npm,.", "start:dev"]