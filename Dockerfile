FROM phusion/baseimage:0.9.9
MAINTAINER finalcut bill@rawlinson.us
EXPOSE 80 8500 8083 8080 8880 3305 3306
VOLUME ["/var/www", "/tmp/config"]

ENV DEBIAN_FRONTEND noninteractive
ENV REFRESHED_AT 2014_08_21_1

RUN apt-get update
RUN apt-get install -y wget unzip xsltproc apache2 default-jre joe lsof sudo && apt-get clean

ADD ./build/install/ /tmp/
ADD ./build/service/ /etc/service/
ADD ./build/my_init.d/ /etc/my_init.d/
ADD cf10-linux64.tar.gz /tmp/
ADD neo-runtime.xml /tmp/config
ADD configuration.cfm /tmp/config

RUN chmod -R 755 /etc/service/coldfusion10
RUN chmod 755 /tmp/install-cf10.sh
RUN sudo /tmp/install-cf10.sh
RUN rm /tmp/*.bin
RUN rm /tmp/*.sh
RUN rm /tmp/*.jar
RUN cd /usr/local/bin && \
wget -O virtualhost https://raw.githubusercontent.com/RoverWire/virtualhost/master/virtualhost.sh && \
chmod +x virtualhost && \
wget -O virtualhost-nginx https://raw.githubusercontent.com/RoverWire/virtualhost/master/virtualhost-nginx.sh && \
chmod +x virtualhost-nginx
