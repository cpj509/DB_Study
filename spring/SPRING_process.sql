--ORA-12516 오류가 발생 할 경우
SELECT * FROM v$resource_limit WHERE resource_name IN ('processes','sessions');

ALTER SYSTEM SET processes = 200 scope=spfile;
show parameter processes;
