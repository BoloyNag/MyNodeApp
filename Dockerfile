FROM node:12.18.1

ENV NODE_ENV=production

WORKDIR /app

COPY package.json package.json
COPY package-lock.json package-lock.json


RUN npm install \
    npm install express

COPY . .
EXPOSE 3000
CMD [ "node", "index.js" ]
