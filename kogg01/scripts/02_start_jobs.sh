echo "Starting Oracle Golden Gate replicat..."
/kafka/kogg/ggsci << EOF
    START MGR
EOF

sleep 3

/kafka/kogg/ggsci << EOF
    STATUS MANAGER
    ADD REPLICAT riloleg, SPECIALRUN
    ADD REPLICAT rkafka01, EXTTRAIL /kafka/kogg/dirdat/rt
    START rkafka01
    EXIT
EOF

bash