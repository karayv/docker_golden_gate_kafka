echo "Starting Oracle Golden Gate manager..."

cp /ogg-dist/dirprm/* /opt/oracle/product/ogg/dirprm/

/opt/oracle/product/ogg/ggsci << EOF
    START MGR
    EXIT
EOF

sleep 3