FROM cricketeerone/apache-kafka-connect:latest

# Get curl
RUN apt-get -y update && apt-get install -y \
    ca-certificates \
    curl \
    && rm -rf /var/lib/apt/lists/*

# Install Confluent Hub CLI
RUN mkdir -p /opt/confluent-hub-client \
    && curl "http://client.hub.confluent.io/confluent-hub-client-latest.tar.gz" \
    | tar -xzv -C /opt/confluent-hub-client
ENV PATH="/opt/confluent-hub-client/bin:${PATH}"

# Install Datagen Source Connector binaries
RUN confluent-hub install --no-prompt \
    --component-dir /app/libs --worker-configs /app/resources/connect-distributed.properties -- \
    confluentinc/kafka-connect-datagen:0.5.0

EXPOSE 8083
