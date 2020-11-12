DELIMITER $
CREATE FUNCTION totalAtividadesFeita(codMembro INT)
	RETURNS INT
	BEGIN
        DECLARE totalAtividades INT;
        SET totalAtividades = (SELECT totalAtividadesFeita count(*) 
                               from funcionario f, atividadeMembro am 
                               where am.codMembro = f.codigo;
		RETURN totalAtividades;
	END $
DELIMITER ;     