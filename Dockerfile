FROM node:8.12-alpine
RUN apk add --no-cache nodejs npm

WORKDIR /app
COPY src/package.json .
RUN npm install

copy /src .

EXPOSE 3000
CMD ["npm","start"]
