FROM node.js:22-alpine
MAINTAINER sreeja
LABEL this is node.js code
EXPOSE 80
WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY . .
RUN chown -R node:node . ./
USER node
CMD ["node.js" , "app.js"]
