docker run --name kafka01 -d \
-e KAFKA_ADVERTISED_HOST_NAME=kafka01 \
-e KAFKA_BROKER_ID=01 \
-e KAFKA_ZOOKEEPER_CONNECT=zoo \
--network "gg-network" \
wurstmeister/kafka

sleep 3

docker exec kafka01 kafka-topics.sh --create --zookeeper zoo:2181 --replication-factor 1 --partitions 1 --topic OLEG-EMP
docker exec kafka01 kafka-topics.sh --create --zookeeper zoo:2181 --replication-factor 1 --partitions 1 --topic OLEG-DEPT