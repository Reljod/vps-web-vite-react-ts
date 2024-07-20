# syntax=docker/dockerfile:1.7-labs

FROM node:20-alpine as base
WORKDIR /usr/local/app

COPY --exclude=node_modules/ --exclude=dist/ . .

RUN npm install
RUN npm run build

EXPOSE 8080

CMD [ "npm", "run", "start" ]
