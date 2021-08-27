FROM node:latest AS node
WORKDIR /app

FROM node AS develop
CMD npm run serve

FROM node as build
COPY package*.json ./
RUN npm install
COPY ./ .
RUN npm run build

FROM nginx:latest AS publish
RUN mkdir /usr/share/www
WORKDIR /usr/share/www
COPY /docker/config/nginx /etc/nginx
COPY --from=build /app/dist /usr/share/www/public
RUN rm -rf /etc/nginx/original