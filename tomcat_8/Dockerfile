FROM centos:latest

MAINTAINER ganbing87@126.com

ENV TIME_ZONE Asia/Shanghai
ENV JAVA_HOME /usr/jdk1.8.0_131/
ENV PATH $PATH:$JAVA_HOME/bin

COPY ./apache-tomcat-8.0.24.tar.gz /usr/src
COPY ./jdk-8u131-linux-x64.tar.gz /usr/src

RUN set -x \
	\
	&& yum -y update \
	&& tar zxf /usr/src/apache-tomcat-8.0.24.tar.gz -C /usr/local \
	&& rm -rf /usr/src/apache-tomcat-8.0.24.tar.gz \
	&& tar zxf /usr/src/jdk-8u131-linux-x64.tar.gz -C /usr \
	&& rm -rf /usr/src/jdk-8u131-linux-x64.tar.gz \
	&& echo "${TIME_ZONE}" > /etc/timezone \
	&& ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime

COPY ./shutdown.sh /usr/local/apache-tomcat-8.0.24/bin

EXPOSE 8080
ENTRYPOINT /usr/local/apache-tomcat-8.0.24/bin/startup.sh && tail -f /usr/local/apache-tomcat-8.0.24/logs/catalina.out
