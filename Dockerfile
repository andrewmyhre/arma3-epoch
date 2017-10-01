FROM ubuntu

MAINTAINER "Diego Marangoni" <diegomarangoni@me.com>

RUN apt-get update && apt-get install -y lib32gcc1 lib32stdc++6 wget redis-server binutils

VOLUME /arma3
VOLUME /profiles
VOLUME /server

ENV STEAM_USERNAME=username
ENV STEAM_PASSWORD=password
ENV VALIDATE=1

COPY docker-entrypoint.sh /

EXPOSE 2302 2303 2304 2305

ENTRYPOINT ["/docker-entrypoint.sh"]

WORKDIR /arma3