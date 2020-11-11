CREATE FUNCTION mediaIdadeDepartamento(INTEGER) 
RETURNS INTERGER
    AS $$
BEGIN
		SELECT AVG(AGE(f.dataNasc)) AS idade
		FROM funcionario f
		WHERE f.depto = $1
END;
$$;