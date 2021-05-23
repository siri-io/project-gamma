FROM node:10-alpine
RUN mkdir -p /opt/app
WORKDIR /opt/app

ADD .configrc /opt/app/.configrc
ADD babel.config.js /opt/app/babel.config.js
ADD package.json /opt/app/package.json
ADD package-lock.json /opt/app/package-lock.json
ADD assetlinks.json /opt/app/assetlinks.json
ADD assets /opt/app/assets
ADD src /opt/app/src
ADD webpack /opt/app/webpack

RUN npm ci
RUN npm run build:client:prod
RUN npm run build:server:prod

RUN rm -r src assets node_modules

CMD [ "npm", "start" ]
