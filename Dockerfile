FROM ubuntu:18.04

RUN apt-get -y update && apt-get install -y \
    ca-certificates \
    curl \
    && rm -rf /var/lib/apt/lists/*

COPY connector/bootstrap.sh /bootstrap.sh
ENTRYPOINT ["/bootstrap.sh"]
