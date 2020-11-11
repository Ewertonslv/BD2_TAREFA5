CREATE OR REPLACE PROCEDURE funcionariosMaisVelhos ()
BEGIN
	SELECT nome 
    FROM funcionario f, mediaIdadeDepartamento
    WHERE idadeFuncionario(f.dataNasc) > mediaIdadeDepartamento
END;
