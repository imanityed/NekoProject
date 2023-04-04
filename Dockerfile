FROM debian:11.6
RUN sed -i 's/deb.debian.org/mirrors.aliyun.com/g' /etc/apt/sources.list&&apt-get update&&apt-get install python2.7-dev -y&&apt-get install libasan5 -y
WORKDIR /app
