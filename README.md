# Oracle Golden Gate with Oracle Database 12c on Docker

## Installing Oracle Database 12c
Refer to https://github.com/oracle/docker-images/tree/master/OracleDatabase/SingleInstance
1. Download Oracle DB distributive (`linuxamd64_12102_database_1of2.zip` and `linuxamd64_12102_database_2of2.zip`)
2. Put the distributive files into `docker-images/OracleDatabase/SingleInstance/dockerfiles/12.1.0.2` folder
3. Run from with the cloned above repo
```
./OracleDatabase/SingleInstance/dockerfiles/buildDockerImage.sh -v 12.1.0.2 -e
```

## Download other Oracle installation packages
* Download `OGG_BigData_Linux_x64_12.3.2.1.0.zip` into `kogg/dist` folder
* Download `123014_fbo_ggs_Linux_x64_shiphome.zip` into `ogg/dist` folder
* Download `jdk-8u171-linux-x64.rpm` into `orakafka/dist` folder
* Download kafka client library with all the dependencies from https://mvnrepository.com/artifact/org.apache.kafka/kafka-clients/ to `orakafka/dist/kafka-clients` folder

## Build and start containers
```
docker-compose build
docker-compose up
```

## Perform checks
Start listening a topic
```
./tools/emp_listen.sh
```

Update EMP table
```
./tools/dummy_update.sh
```

Check messages are coming to the topic.

Start OGG Initial Load
```
./tools/start_initial_load.sh
```