/*Crie um gatilho que ao se adicionar um voo, 
seja adicionado +1 voo para o piloto daquele voo.*/
CREATE TRIGGER mais_um_voo
AFTER INSERT ON voo
FOR EACH ROW UPDATE piloto
SET num_voos = num_voos + 1;
 
INSERT INTO piloto(nome, num_voos) VALUES ('JJ', 0);
INSERT INTO voo(piloto, tipo, num_passageiros, distancia) VALUES (1 , 'classico', '10', 100);
 
SET sql_safe_updates = 0;
 
SELECT * FROM piloto;