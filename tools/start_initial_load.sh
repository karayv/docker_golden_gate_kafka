echo "Starting initial load..."
docker exec -i ogg /opt/oracle/product/ogg/ggsci << EOF
    start eiloleg
EOF
