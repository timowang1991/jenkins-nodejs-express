FROM node:8-alpine

USER root

RUN mkdir -p /app
RUN mkdir -p /.pm2

RUN chmod -R 777 /app
RUN chmod -R 777 /.pm2

COPY . /app
WORKDIR /app

RUN npm install
RUN npm run test

EXPOSE 4443:4443

CMD ["npm", "start"]