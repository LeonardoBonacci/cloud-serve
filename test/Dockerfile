FROM bitnami/kafka:2.8.0-debian-10-r7

USER root
RUN apt-get -y update && apt-get install -y jq

COPY mytest.sh mytest.sh
RUN chown 777 mytest.sh
RUN chown 777 /mytest.sh
RUN chown -R 777 /opt/bitnami/kafka/bin/

USER 1001

CMD ["/mytest.sh"]
