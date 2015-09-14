FROM fhisamoto/oracle-java8
MAINTAINER "Fabio Hisamoto" <fhisamoto@gmail.com>

ENV TOMCATVER 7.0.64

RUN (\
  wget -O /tmp/tomcat7.tar.gz http://www.us.apache.org/dist/tomcat/tomcat-7/v${TOMCATVER}/bin/apache-tomcat-${TOMCATVER}.tar.gz && \
  cd /opt && \
  tar zxf /tmp/tomcat7.tar.gz && \
  mv /opt/apache-tomcat* /opt/tomcat && \
  rm /tmp/tomcat7.tar.gz)

COPY srv/etc/service/app/run_app.sh /etc/service/app/run
RUN chmod +x /etc/service/app/run

RUN rm -rf /opt/tomcat/webapps/docs /opt/tomcat/webapps/examples /opt/tomcat/webapps/ROOT
ONBUILD ADD application.war /opt/tomcat/webapps/ROOT.war

WORKDIR /app
EXPOSE 8080
ENTRYPOINT ["/sbin/my_init"]
