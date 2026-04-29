FROM node:lts

WORKDIR /usr/api

COPY package.json  package-lock.json ./

RUN npm install

RUN npm global add rimraf

RUN rimraf ./dist

COPY . .

USER non-root CMD ["npm,.", "start:dev"]