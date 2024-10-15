FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME orzumurodparmonov
ENV MONGODB_CLUSTER_ADDRESS cluster0.cwd6j.mongodb.net
ENV MONGODB_USERNAME orzumurodparmonov
ENV MONGODB_PASSWORD orzumurodparmonov

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]