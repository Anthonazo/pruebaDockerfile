FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y curl
RUN apt-get install -y nginx
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN npm install @angular/cli -g

FROM node:16.14-alpine AS builder
WORKDIR /app
COPY PruebaDockerfile/package.json /app
RUN npm install
COPY . /app
WORKDIR /app/PruebaDockerfile
RUN npm run build

FROM nginx:1.21.0-alpine
COPY --from=builder /app/PruebaDockerfile/dist/prueba-dockerfile /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]