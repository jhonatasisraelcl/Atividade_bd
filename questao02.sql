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
CREATE SEQUENCE s1;
CREATE TABLE t1 (
   a INT default (NEXT VALUE for s1),
   b INT,
   PRIMARY KEY (a)
);
INSERT INTO t1 (b) VALUES (5), (7);
INSERT INTO t1 (b) VALUES (8);
SELECT * FROM t1;
 
-- saida "1" para (a) e "5" para (b)
-- saida "2" para (a) e "7" para (b)
-- saida "3" para (a) e "8" para (b)
