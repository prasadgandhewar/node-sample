FROM node:8.12-alpine
RUN apk add --no-cache nodejs npm

WORKDIR /app
COPY package.json .
RUN npm install

copy / .

EXPOSE 3000
CMD ["npm","start"]
