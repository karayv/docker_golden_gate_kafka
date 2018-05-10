mkdir -p `pwd`/kogg/dirprm

docker run --name kogg01 -d -t --network "gg-network" \
-v `pwd`/kogg/dirprm:/root/dirprm \
-e LD_LIBRARY_PATH=/usr/lib/jvm/java-8-oracle/jre/lib/amd64/server/ \
-e KAFKA_ZOOKEEPER_CONNECT=zoo \
kafka-gg