
alter session set "_ORACLE_SCRIPT"=true; 

CREATE USER airbnb
IDENTIFIED BY airbnb;

GRANT create session, create table, create synonym,
      create view, create sequence
TO    airbnb
WITH ADMIN OPTION;

CREATE USER usertaller2 
IDENTIFIED BY usertaller2;

GRANT create session, create table, create synonym,
      create view, create sequence
TO    usertaller2;
WITH ADMIN OPTION;

-- se corrige el error del espacio en disco del usuario airbnb

grant CONNECT, RESOURCE to airbnb;
grant UNLIMITED TABLESPACE to airbnb;

select * from usuario;