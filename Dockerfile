FROM node:18.16.0-alpine

WORKDIR /home/projects/auth-app

COPY . .

CMD npm run start
