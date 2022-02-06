# Basic dockerfile starting with debian
FROM debian:bullseye
RUN apt-get -y update
RUN apt-get -y install nginx