/*Crie uma função que recebe o código de um voo e retorna o número de passageiros desse voo.*/
CREATE OR REPLACE FUNCTION boravoar(codVoo CHAR(9)) 
  RETURNS INTEGER 
  LANGUAGE 'plpgsql'
  AS $$
DECLARE
	numPassageiros INTEGER;
BEGIN
	SELECT INTO numPassageiros num_passageiros FROM voo WHERE codigo = codVoo;
	RETURN numPassageiros;
END;
$$;

SELECT boravoar('1');