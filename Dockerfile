FROM node

WORKDIR /app
ADD . /app

RUN npm install && npm run build && npm install http-server -g

EXPOSE 8080

CMD http-server ./build -p 8080
