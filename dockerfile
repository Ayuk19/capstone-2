FROM node:18

ARG ENV
ENV NODE_ENV=$ENV

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
