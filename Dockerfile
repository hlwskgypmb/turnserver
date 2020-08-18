FROM centos:7

ADD libevent-2.0.21-stable.tar.gz /home

ADD turnserver-4.5.1.2.tar.gz /home

ADD turnserver.sh /turnserver.sh

RUN yum update \
	&& yum install -y make gcc cc gcc-c++ wget openssl-devel libevent libevent-devel \
	&& cd /home/libevent-2.0.21-stable \
	&& ./configure \
	&& make \
	&& make install \
	&& cd /home/turnserver-4.5.1.2 \
	&& ./configure \
	&& make \
	&& make install

EXPOSE 3478 3478/udp

ENTRYPOINT ["bash", "/turnserver.sh"]