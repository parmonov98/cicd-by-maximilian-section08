FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME orzumurodparmonov
ENV MONGODB_CLUSTER_ADDRESS cluster0.cwd6j.mongodb.net
ENV MONGODB_USERNAME cicd
ENV MONGODB_PASSWORD $nqgd4rWfrm_uJP

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]