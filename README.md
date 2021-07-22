```
docker-compose exec kafka \
    bash -c "kafka-topics.sh --list --bootstrap-server kafka:29092"

docker-compose exec kafka \
    bash -c "kafka-console-consumer.sh --topic foo --bootstrap-server kafka:9092 --from-beginning --max-messages=9"
```
