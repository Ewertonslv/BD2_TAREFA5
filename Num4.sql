CREATE FUNCTION atividadesAtrasadas(codAtividade INTEGER) 
RETURNS INTERGER
DECLARE diaAtraso INT
BEGIN
	SELECT dataInicio, dataConclusao
    FROM Atividade 
    WHERE codigo = codAtividade;
	diaAtraso = DATEDIFF(dataConclusao, dataInicio)
	RETURN diaAtraso;
END;
