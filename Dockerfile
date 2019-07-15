FROM node:8-alpine

USER root

RUN mkdir -p /app
RUN mkdir -p /.pm2

RUN chown -R jenkins /app
RUN chown -R jenkins /.pm2

COPY . /app
WORKDIR /app

RUN npm install
RUN npm run test

EXPOSE 4443:4443

CMD ["npm", "start"]