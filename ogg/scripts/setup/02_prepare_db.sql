alter system set enable_goldengate_replication=true;
select p.name, p.display_value from v_$parameter p where p.name = 'enable_goldengate_replication';

alter database add supplemental log data;
alter database force logging;
alter system switch logfile;
select supplemental_log_data_min, force_logging from v$database;

