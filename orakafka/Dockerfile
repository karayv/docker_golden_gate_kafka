FROM oraclelinux

RUN yum update -y
RUN yum install -y unzip

COPY dist/jdk-8u*-linux-x64.rpm .
COPY dist/kafka-clients/* /kafka-libs/

RUN rpm -Uhv jdk-8u*.rpm

ENV JAVA_HOME /usr/java/jdk1.8.0_171-amd64
ENV LD_LIBRARY_PATH $JAVA_HOME/jre/lib/amd64/server/

CMD bash
