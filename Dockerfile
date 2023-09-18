#FROM node:14
FROM node:latest

# [Optional] Set the default user. Omit if you want to keep the default as root.
# https://github.com/nodejs/docker-node/blob/main/docs/BestPractices.md#non-root-user
#USER node

WORKDIR /usr/src/app

COPY package.json .
RUN npm install 
COPY . .

EXPOSE 3000

CMD ["node", "index.js"]