CREATE USER 'empresa_gerente'@'localhost' IDENTIFIED BY 'password';
GRANT SELECT ON EmpresaDB.* TO 'empresa_gerente'@'localhost';
GRANT INSERT, UPDATE ON equipe, membro, atividade, atividade_projeto TO 'empresa_gerente'@'localhost' IDENTIFIED BY 'password';
FLUSH PRIVILEGES; 