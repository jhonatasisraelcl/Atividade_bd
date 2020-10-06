/*Crie um gatilho que ao se adicionar um voo, 
seja adicionado +1 voo para o piloto daquele voo.*/

AFTER INSERT ON voo
FOR EACH ROW UPDATE piloto
SET num_voos = num_voos + 1 
WHERE new.piloto = piloto.codigo;

CREATE trigger mais_um_voo
AFTER INSERT ON voo
FOR EACH ROW UPDATEpiloto
SET num_voos = num_voos + 1 
WHERE new.piloto = piloto.codigo;