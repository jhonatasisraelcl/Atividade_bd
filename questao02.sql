/*
02. Crie e teste o seguinte esquema relacional:
 
create sequence s1;
create table t1 (
a int default (next value for s1), 
b int,
primary key (a)
);
 
insert into t1 (b) values (5), (7);
insert into t1 (b) values (8);
 
select * from t1;
*/
CREATE SEQUENCE S1;

CREATE TABLE T1 ( 
  A integer DEFAULT NEXTVAL('s1'), 
	B int, 
	PRIMARY KEY (A)
);

INSERT INTO T1(B) VALUES (5), (7);
INSERT INTO T1 (B) VALUES (8);

SELECT * FROM T1;
