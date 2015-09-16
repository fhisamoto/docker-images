FROM 99taxis/oracle-java8
MAINTAINER "Fabio Hisamoto" <fhisamoto@gmail.com>

COPY srv/etc/service/app/run_app.sh /etc/service/app/run
RUN chmod +x /etc/service/app/run

WORKDIR /app
EXPOSE 9000
ENTRYPOINT ["/sbin/my_init"]

ONBUILD COPY ./stage /app
