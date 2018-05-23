alter session set container = ORCLPDB1;
create user oleg identified by 123;
grant connect,resource,unlimited tablespace to oleg;
alter user oleg default tablespace users;
alter user oleg temporary tablespace temp;
