FROM fhisamoto/oracle-java8

# Activator
RUN \
  curl -O http://downloads.typesafe.com/typesafe-activator/1.3.5/typesafe-activator-1.3.5.zip && \
  unzip typesafe-activator-1.3.5.zip -d / && \
  rm typesafe-activator-1.3.5.zip && \
  chmod a+x activator-dist-1.3.5/activator

ENV PATH $PATH:/activator-dist-1.3.5

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /var/tmp/*

WORKDIR /app