# Oracle Golden Gate with Oracle Database 12c on Docker

## Installing Oracle Database 12c
Refer to https://github.com/oracle/docker-images/tree/master/OracleDatabase/SingleInstance
1. Download Oracle DB distributive (linuxamd64_12102_database_1of2.zip and linuxamd64_12102_database_2of2.zip)
2. Put the distributive files into 'docker-images/OracleDatabase/SingleInstance/dockerfiles/12.1.0.2' folder
3. Run from with the cloned above repo ./buildDockerImage.sh -v 12.1.0.2 -e