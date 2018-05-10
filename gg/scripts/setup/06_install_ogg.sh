echo "Installing Oracle Golden Gate..."
~/fbo_ggs_Linux_x64_shiphome/Disk1/runInstaller -silent -waitForCompletion -responseFile `readlink -f ~/gg-install-config.rsp`

/opt/oracle/product/ogg/ggsci << EOF
    CREATE SUBDIRS
    EXIT
EOF

cp ~/dirprm/* /opt/oracle/product/ogg/dirprm/

/opt/oracle/product/ogg/ggsci << EOF
    START MGR
    EXIT
EOF

sleep 3