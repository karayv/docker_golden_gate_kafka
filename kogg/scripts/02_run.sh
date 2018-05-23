echo "Starting Oracle Golden Gate replicat..."

cp -r /root/dirprm/* /kogg/dirprm/

/kogg/ggsci << EOF
    START MGR
EOF

sleep 3

/kogg/ggsci << EOF
    STATUS MANAGER
    ADD REPLICAT riloleg, SPECIALRUN
    ADD REPLICAT rkafka01, EXTTRAIL /kogg/dirdat/rt
    START rkafka01
    EXIT
EOF

tail -f /dev/null