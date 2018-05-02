echo "Enabling Oracle DB archive mode..."
sqlplus / as sysdba << EOF
    shutdown immediate;
    startup mount;
    alter database archivelog;
    alter database open;
    archive log list;
    exit;
EOF
