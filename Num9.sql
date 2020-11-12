CREATE VIEW gerenteSalario AS
select f.nome, d.codigo, f.salario
from departamento d, funcionario f
where f.codigo = d.gerente;

select f.nome, d.descricao
from funcionario f, departamento d, gerenteSalario gs
where f.salario > gs.f.salario 
&& d.codigo = gs.d.codigo 
&& f.depto = d.codigo;