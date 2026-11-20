FROM node:22-alpine
MAINTAINER "sreeja"
LABEL This is node application
EXPOSE 3000
WORKDIR /app
COPY package*.json
RUN npm install --production
COPY . .
RUN chown -R node:node . /app
USER node
CMD ["node" "app.js"]

