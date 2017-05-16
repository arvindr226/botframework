FROM node:7-alpine
MAINTAINER Arvind Rawat <arvind.rawat@laitkor.com>

ENV MICROSOFT_APP_ID $MICROSOFT_APP_ID
ENV MICROSOFT_APP_PASSWORD $MICROSOFT_APP_PASSWORD

RUN mkdir /app
WORKDIR /app
COPY app.js /app/
COPY package.json /app/
RUN npm install
RUN npm install -g ngrok
CMD ngrok http  127.0.0.1:54764 &
#RUN npm start 
EXPOSE 3978
