-- kill all the other connections so that the database can be dropped.

SELECT pg_terminate_backend(pg_stat_activity.pid)
FROM pg_stat_activity
WHERE pg_stat_activity.datname = 'mysite' 
  AND pid <> pg_backend_pid();

drop database if exists mysite;
create database mysite;