FROM node:8-alpine

USER node

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

RUN mkdir -p /app
COPY . /app
WORKDIR /app

RUN npm install
RUN npm run test

EXPOSE 4443:4443

CMD ["npm", "start"]