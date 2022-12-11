FROM alpine:latest
RUN apk update && apk add nodejs npm && adduser -D app
RUN mkdir -p /usr/src/app
COPY app.js /usr/src/app

WORKDIR /usr/src/app
RUN npm i express


EXPOSE 3000
USER app
ENTRYPOINT ["node", "app.js"]
