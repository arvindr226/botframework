FROM node:7-alpine
MAINTAINER Arvind Rawat <arvind.rawat@laitkor.com>

ENV MICROSOFT_APP_ID $MICROSOFT_APP_ID
ENV MICROSOFT_APP_PASSWORD $MICROSOFT_APP_PASSWORD

RUN mkdir /app
WORKDIR /app
COPY app.js /app/
COPY package.json /app/
#RUN npm start 
EXPOSE 3978
