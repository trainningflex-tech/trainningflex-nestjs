FROM node:18.16.0-alpine

WORKDIR /home/projects/auth-app

COPY . .
RUN npm install
RUN npm install bcrypt
CMD npm run start
