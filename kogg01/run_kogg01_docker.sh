mkdir -p `pwd`/kogg/dirprm

docker run --name kogg01 -d -t --ulimit core=9999999999 --network "gg-network" \
-v `pwd`/kafka/kogg/dirprm:/root/dirprm \
kafka-gg