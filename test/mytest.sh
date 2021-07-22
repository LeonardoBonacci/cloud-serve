#!/bin/bash

echo "sleep"
sleep 60
echo "eat"

topic=foo

if kafka-topics.sh --list --bootstrap-server kafka:29092 | grep -w $topic; then
    echo "Topic $topic exists."
else
    echo "Topic does not exist. Fail."
    exit 1
fi

echo "repeat"

record=$(kafka-console-consumer.sh --topic foo --bootstrap-server kafka:29092 --from-beginning --max-messages=1 | head -n 1 2>&1)
echo $record
echo $record
echo $record

if $json_string | jq type; then
    echo "Valid JSON"
    exit 0
else
    echo "Failed to parse JSON"
    exit 1
fi
