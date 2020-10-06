/*Crie e teste o seguinte esquema relacional:
*/
CREATE SEQUENCE s1;

CREATE TABLE t1(
  a INT ( next value for s1),
  b INT,
  PRIMARY KEY (a)
);

INSERT INTO t1(b) VALUES (5), (7);
INSERT INTO t1(b) VALUES (8);
 
SELECT * FROM t1;

-- saida "1" para (a) e "5" para (b)
-- saida "2" para (a) e "7" para (b)
-- saida "3" para (a) e "8" para (b)
