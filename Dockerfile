FROM node:10-alpine
RUN apk add --no-cache git
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
copy . .
RUN npm install
CMD ["node", "index.js"]