DELIMITER $$

CREATE FUNCTION idadeFuncionario ( dataNasc DATE)
RETURNS INT

BEGIN

	RETURN 
    (
		SELECT AGE(f.dataNasc)
		FROM funcionario f
		WHERE f.codigo = $1
	);

END; 
$$;