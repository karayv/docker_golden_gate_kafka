mkdir -p db/oradata
mkdir -p db/scripts/setup
mkdir -p db/scripts/startup
mkdir -p db/ogg

docker run --name gg \
-p 1521:1521 -p 5500:5500 \
-e ORACLE_SID=ORCLCDB \
-e ORACLE_PDB=ORCLPDB1 \
-e ORACLE_PWD=test1 \
-e ORACLE_CHARACTERSET=AL32UTF8 \
-v `pwd`/db/scripts/startup:/opt/oracle/scripts/startup \
-v `pwd`/db/oradata:/opt/oracle/oradata \
-v `pwd`/db/scripts/setup:/opt/oracle/scripts/setup \
-v `pwd`/db/ogg:/opt/oracle/product/ogg \
oradb-gg