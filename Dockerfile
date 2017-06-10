# written by Benoit Sarda
# base for containers - uses supervisor to start multiple services.
#
#   bsarda <b.sarda@free.fr>
#
FROM centos:7
LABEL maintainer "b.sarda@free.fr"

# install packages
RUN yum install -y iproute net-tools && \
	yum install -y curl wget unzip && \
	yum install -y python-setuptools && easy_install supervisor && \
	mkdir -p /var/log/supervisor && \
	mkdir -p /etc/supervisor/conf.d

COPY ["supervisord.conf","/etc/supervisor.conf"]

# default
CMD ["supervisord", "-c", "/etc/supervisor.conf"]
