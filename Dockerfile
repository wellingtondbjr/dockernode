FROM node:alpine

RUN mkdir -p /src
WORKDIR /usr/app

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]