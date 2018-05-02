select p.name, p.display_value from v_$parameter p where p.name = 'enable_goldengate_replication';
alter system set enable_goldengate_replication=true;

alter database add supplemental log data;
alter database force logging;
select supplemental_log_data_min, force_logging from v$database;
alter system switch logfile;
