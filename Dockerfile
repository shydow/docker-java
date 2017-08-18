FROM ubuntu

RUN \
  apt-get update -y && \
  apt-get install -y software-properties-common && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update -y && \
  apt-get install -y oracle-java8-installer && \
  mkdir /app
  
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

VOLUME /app

EXPOSE 8080

CMD ["bash"]
