FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.liy2stc.mongodb.net
ENV MONGODB_USERNAME ujjwalprakash5_db_user
ENV MONGODB_PASSWORD DtR8lR91w8BrtEJQ

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]