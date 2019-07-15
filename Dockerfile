FROM node:8-alpine

USER root

RUN mkdir -p /app
RUN chown -R $(whoami) /
COPY . /app
WORKDIR /app

RUN npm install
RUN npm run test

EXPOSE 4443:4443

CMD ["npm", "start"]