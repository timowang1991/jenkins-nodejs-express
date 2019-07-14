FROM node:8-alpine

COPY . /workspace
WORKDIR /workspace

RUN npm install

EXPOSE 4443

CMD ["npm", "start"]