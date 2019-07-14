FROM node:8-alpine

USER root

ENV HOME=.
ENV npm_config_cache=npm-cache

RUN mkdir -p /app
COPY . /app
WORKDIR /app

RUN npm install
RUN npm run test

EXPOSE 4443:4443

CMD ["npm", "start"]