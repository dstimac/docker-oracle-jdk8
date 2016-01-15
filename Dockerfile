FROM mentatlabs/base
MAINTAINER Mentat Labs Ltd "admin@mentat-labs.com"

# Install wget
RUN apt-get update && apt-get install -y wget \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# Install java
ENV DOWNLOAD_URL http://download.oracle.com/otn-pub/java/jdk/8u65-b17/server-jre-8u65-linux-x64.tar.gz
RUN wget -O /opt/java.tar.gz --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" ${DOWNLOAD_URL} \
 && tar zxf /opt/java.tar.gz -C /opt \
 && mv /opt/jdk1.8.0_65/ /opt/jdk \
 && ln -s /opt/jdk/jre/bin/java /usr/bin/java \ 
 && rm /opt/java.tar.gz

ENV JAVA_HOME /opt/jdk
