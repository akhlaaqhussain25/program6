#using node as base image
FROM node:18-slim

#set work dir

WORKDIR /app

#copy project to image

COPY . .

#install dependenices

RUN npm install

#expose port 

EXPOSE 3000

#start server

CMD ["node" , "src/index.js"]


