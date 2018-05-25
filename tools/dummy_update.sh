echo "Performing dummy update to check live streaming..."
docker exec -i ogg sqlplus OLEG@ORCLPDB1/123 << EOF
    UPDATE OLEG.EMP SET HIREDATE = CURRENT_DATE WHERE EMPNO = 7369;
EOF
