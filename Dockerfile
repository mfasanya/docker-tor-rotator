# use the ubuntu base image 12.04
FROM ubuntu:12.04

# make sure the package repository is up to date
RUN apt-get update

# install sys utils
RUN apt-get install -y build-essential
RUN apt-get install -y libevent-dev
RUN apt-get install -y libssl-dev
RUN apt-get install -y htop
RUN apt-get install -y iotop
RUN apt-get install -y tmux
RUN apt-get install -y curl
RUN apt-get install -y g++
RUN apt-get install -y tor
RUN apt-get install -y haproxy

# install haproxy
# ENV HAPROXY_VERSION 1.4.25
# RUN curl http://haproxy.1wt.eu/download/1.4/src/haproxy-${HAPROXY_VERSION}.tar.gz | tar xvjf -C /tmp
# RUN cd /tmp/haproxy-${HAPROXY_VERSION}/ && make TARGET=linux2628 USE_OPENSSL=1 USE_ZLIB=1
# RUN cd /tmp/haproxy-${HAPROXY_VERSION}/ && make install
ADD ./haproxy.conf /etc/default/haproxy.conf

# prepare tor folders
RUN mkdir -p /var/db/tor/1 /var/db/tor/2 /var/db/tor/3 /var/db/tor/4 /var/db/tor/5 /var/db/tor/6 /var/db/tor/7 /var/db/tor/8 /var/db/tor/9 /var/db/tor/10
RUN mkdir -p /var/db/tor/11 /var/db/tor/12 /var/db/tor/13 /var/db/tor/14 /var/db/tor/15 /var/db/tor/16 /var/db/tor/17 /var/db/tor/18 /var/db/tor/19 /var/db/tor/20
RUN mkdir -p /var/db/tor/21 /var/db/tor/22 /var/db/tor/23 /var/db/tor/24 /var/db/tor/25 /var/db/tor/26 /var/db/tor/27 /var/db/tor/28 /var/db/tor/29 /var/db/tor/30
RUN mkdir -p /var/db/tor/31 /var/db/tor/32 /var/db/tor/33 /var/db/tor/34 /var/db/tor/35 /var/db/tor/36 /var/db/tor/37 /var/db/tor/38 /var/db/tor/39 /var/db/tor/40

RUN chmod -R 777 /var/db/tor
RUN chown -R debian-tor:debian-tor /var/db/tor
ADD start.sh /
RUN chmod +x /start.sh

EXPOSE 9100

CMD ["./start.sh"]
