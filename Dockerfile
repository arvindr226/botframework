FROM node:7-alpine
MAINTAINER Arvind Rawat <arvind.rawat@laitkor.com>

ENV MICROSOFT_APP_ID 007e6a14-0982-4c86-8139-ac9ed44824de
ENV MICROSOFT_APP_PASSWORD E83QXLUo57KUQnYmkoUqYnh

RUN mkdir /app
WORKDIR /app
COPY app.js /app/
COPY package.json /app/
RUN npm install
RUN npm install -g ngrok
CMD ngrok http  127.0.0.1:54764 &
#RUN npm start 
EXPOSE 3978
