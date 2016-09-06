
    FROM ubuntu:14.04

    RUN echo "deb http://ftp.daumkakao.com/ubuntu trusty main universe" > /etc/apt/sources.list

    RUN apt-get update && apt-get -y upgrade
    # Add oracle java 7 repository
    RUN apt-get -y install software-properties-common
    RUN add-apt-repository ppa:webupd8team/java
    RUN apt-get -y update
    # Install basic packages
    #RUN apt-get -y install git curl build-essential

    # Accept the Oracle Java license
    RUN echo "oracle-java7-installer shared/accepted-oracle-license-v1-1 boolean true" | debconf-set-selections

    # Install Oracle Java
    RUN apt-get -y install oracle-java7-installer
    # Install tomcat
    RUN apt-get -y install tomcat7
    RUN echo "JAVA_HOME=/usr/lib/jvm/java-7-oracle" >> /etc/default/tomcat7

    USER root

    COPY docker-entrypoint.sh /
    RUN chmod 755 /docker-entrypoint.sh
    ENTRYPOINT ["/docker-entrypoint.sh"]

    EXPOSE 8080
    CMD ["catalina.sh","run"]
