FROM node:latest

WORKDIR  /app

COPY .  .

RUN npm install
 
COPY . .

CMD [ "node", "index.mjs" ]