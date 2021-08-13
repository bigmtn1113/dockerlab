FROM ubuntu:18.04

RUN apt-get -y update && apt-get -y install -q nginx

COPY ./index.html /var/www/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
