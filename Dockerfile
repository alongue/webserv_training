FROM ubuntu:latest

RUN apt-get update -y && apt-get upgrade -y && \
apt-get install -y systemctl && \
apt-get install -y nginx && \
apt-get install -y vim && \
apt-get install -y curl
RUN mkdir /pages
COPY ./setup.sh /root/
COPY ./nginx.conf /root/
COPY ./pages/* /pages/
RUN /root/setup.sh
