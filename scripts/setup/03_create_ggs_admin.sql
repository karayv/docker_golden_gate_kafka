alter session set container = ORCLPDB1;
create user ggs_admin identified by ggs_admin;
grant dba to ggs_admin;
grant unlimited tablespace to ggs_admin;
