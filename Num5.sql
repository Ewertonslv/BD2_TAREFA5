CREATE FUNCTION projetosAtrasados(codProjeto INTEGER) 
RETURNS INTERGER
DECLARE diaAtraso INT
BEGIN
	SELECT dataInicio, dataFim
    FROM projeto 
    WHERE codigo = codProjeto;
	diaAtraso = DATEDIFF(dataFim, dataInicio)
	RETURN diaAtraso;
END;

