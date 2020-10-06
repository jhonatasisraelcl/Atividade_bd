/*Crie um gatilho que ao se adicionar um novo cliente, 
seja criado para ele um cartão de milhagem com 0 milhas.
*/

CREATE TRIGGER cartao_milhas
AFTER INSERT ON passageiro
FOR EACH ROW INSERT INTO milhas(qtde, passageiro) VALUES (0, new.codigo);
SELECT * FROM milhas; 
INSERT INTO passageiro(nome, endereco) VALUES ('Jhonatas Laurentino', 'av das flores');
