CREATE USER 'empresa_admim_local'@'localhost' IDENTIFIED BY 'PASSWORD';
GRANT ALL PRIVILEGES ON 'EmpresaDB'.* TO 'empresa_admim_local'@'localhost';
FLUSH PRIVILEGES;