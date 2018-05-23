echo "Starting Oracle Golden Gate extract jobs ..."
/opt/oracle/product/ogg/ggsci << EOF
    ADD EXTRACT eiloleg, SOURCEISTABLE
    ADD EXTRACT exol01, INTEGRATED TRANLOG, BEGIN NOW
    ADD EXTTRAIL ./dirdat/lt, EXTRACT exol01
    ADD EXTRACT pol01, EXTTRAILSOURCE ./dirdat/lt
    ADD RMTTRAIL /kogg/dirdat/rt, EXTRACT pol01
    DBLOGIN USERID c##ggs_admin, PASSWORD ggs_admin
    REGISTER EXTRACT exol01 DATABASE CONTAINER (ORCLPDB1)
    REGISTER EXTRACT eiloleg DATABASE CONTAINER (ORCLPDB1)
    CREATE WALLET
    ADD MASTERKEY
    START exol01
    START pol01
    EXIT
EOF
