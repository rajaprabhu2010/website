FROM ubuntu

Run apt-get update

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Moscow

RUN apt-get install -y apache2

ADD ./index.html /var/www/html

ENTRYPOINT apachectl -D FOREGROUND

ENV name Devops
