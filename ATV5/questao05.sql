/*Faça uma função para calcular quantos dias de atraso tem um projeto. 
A função retornará negativo se tiver atrasada e positivo se tiver em dia.
*/
CREATE OR REPLACE FUNCTION questao_5(codProjeto INTEGER) 
RETURNS INTERVAL AS $$
DECLARE
	fim DATE;
	dataHoje TIMESTAMP;
	diasAtraso INTERVAL;
BEGIN
	SELECT INTO datahoje NOW(); 
	SELECT INTO fim datafim FROM projeto WHERE codigo = codProjeto;
	diasAtraso = fim - dataHoje;
	RETURN diasAtraso;
END;
$$ LANGUAGE 'plpgsql';

SELECT questao_5('1');