FROM alpine:latest
MAINTAINER wicac@yahoo.com

RUN apk update && apk add tar gzip
RUN apk add --update nodejs

RUN mkdir -p /apps/oauth-client/views
RUN mkdir -p /apps/oauth-client/public

WORKDIR /apps/oauth-client

COPY views /apps/oauth-client/views
COPY public /apps/oauth-client/public

COPY package.json .
COPY app.js .

RUN npm install --save express
RUN npm install --save express-session
RUN npm install --save ejs

ENTRYPOINT ["node"]
CMD ["app.js"]