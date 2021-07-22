#!/bin/bash

echo "sleep"
sleep 30
echo "eat"

curl -XPUT http://connect:8083/connectors/datagen-src/config -H 'Content-Type: application/json' -d '{
    "connector.class": "io.confluent.kafka.connect.datagen.DatagenConnector",
    "tasks.max": 1,
    "kafka.topic": "foo",
    "schema.string": "{\"name\":\"foo\",\"type\":\"record\",\"fields\":[{\"name\":\"myField1\",\"type\":{\"type\":\"long\",\"arg.properties\":{\"range\":{\"min\":101,\"max\":202}}}},{\"name\":\"myField2\",\"type\":{\"type\":\"string\",\"arg.properties\":{\"regex\":\"foo_[1-9]{0,1}\"}}}]}",
    "key.converter": "org.apache.kafka.connect.storage.StringConverter",
    "value.converter": "org.apache.kafka.connect.json.JsonConverter",
    "max.interval": 1000
}'

echo "repeat"
sleep 30
