FROM node:8-alpine

COPY . /workspace
WORKDIR /workspace

RUN npm install
RUN npm run test

EXPOSE 4443:4443

CMD ["npm", "start"]