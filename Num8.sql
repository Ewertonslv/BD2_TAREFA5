DELIMITER $
CREATE FUNCTION porcentagemFeita(codProjeto INT)
	RETURNS INT
	BEGIN
        DECLARE total INT;
        SET total = (SELECT total count(*) as totalAtividades
                     from projeto p, atividadeProjeto ap
                     where ap.codProjeto = p.codigo and p.codigo = codProjeto;)
		RETURN total;
	END $
DELIMITER ;