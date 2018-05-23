echo "Installing Oracle Golden Gate..."
unzip /ogg-dist/*.zip -d /ogg-dist/
/ogg-dist/fbo_ggs_Linux_x64_shiphome/Disk1/runInstaller -silent -waitForCompletion -responseFile /ogg-dist/gg-install-config.rsp

/opt/oracle/product/ogg/ggsci << EOF
    CREATE SUBDIRS
    EXIT
EOF
