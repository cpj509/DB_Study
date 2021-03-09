--USER 만들기
create user jweb IDENTIFIED BY 4321;

--session 권한 부여
grant create session to jweb;

--table, resource 생성 권한 부여
grant create table, resource to jweb;