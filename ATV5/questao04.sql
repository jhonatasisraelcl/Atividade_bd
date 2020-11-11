/*Faça uma função para calcular quantos dias de atraso tem uma atividade. 
A função retornará negativo se tiver atrasada e positivo se tiver em dia.*/
CREATE OR REPLACE FUNCTION atrasou(codAtividade INTEGER) 
RETURNS INTERVAL 
LANGUAGE 'plpgsql'
AS $$
DECLARE
	fim DATE;
	dataHoje TIMESTAMP;
	diasAtraso INTERVAL;
BEGIN
	SELECT INTO datahoje NOW(); 
	SELECT INTO fim datafim  
    FROM atividade 
    WHERE codigo = codAtividade;
	diasAtraso = fim - dataHoje;
	RETURN diasAtraso;
END;
$$;

SELECT atrasou('1');