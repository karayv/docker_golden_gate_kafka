docker network create gg-network

sh zoo/run_zoo_docker.sh
sh kafka01/run_kafka01_docker.sh

cd kogg01
sh build_kogg01_docker_image.sh
sh run_kogg01_docker.sh
cd ..

cd gg
sh build_gg_docker_image.sh
sh run_gg_docker.sh
cd ..

#docker network connect gg-network zoo
#docker network connect gg-network kafka01
#docker network connect gg-network kogg01
#docker network connect gg-network gg
