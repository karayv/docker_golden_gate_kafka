echo "Running ADD TRANDATA..."
/opt/oracle/product/ogg/ggsci << EOF
    DBLOGIN USERID c##ggs_admin@ORCLPDB1, PASSWORD ggs_admin
    ADD TRANDATA OLEG.DEPT
    ADD TRANDATA OLEG.EMP
    EXIT
EOF
