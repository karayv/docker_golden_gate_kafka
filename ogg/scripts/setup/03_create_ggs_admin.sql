create user c##ggs_admin identified by ggs_admin container=all;
GRANT CREATE SESSION, CONNECT, RESOURCE, ALTER ANY TABLE, ALTER SYSTEM, SELECT ANY DICTIONARY, SELECT ANY TRANSACTION, DBA to C##GGS_ADMIN container=all;
execute dbms_goldengate_auth.grant_admin_privilege('c##ggs_admin',container=>'all');
