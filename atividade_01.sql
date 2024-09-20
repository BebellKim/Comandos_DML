create database empresa;
use empresa;



CREATE TABLE departamento(
codigo_dep int auto_increment primary key,
nome_dep varchar (50)
);

select * from departamento;

CREATE TABLE funcionario(
codigo_fun int auto_increment primary key,
codigo_dep int,
nome_fun varchar (50),
nasc_fun date,
salario_fun decimal,
foreign key (codigo_dep) references departamento (codigo_dep)
);

select * from funcionario;

CREATE TABLE dependente(
codigo_dependente int auto_increment primary key,
codigo_fun int,
nome_dependente varchar (50),
foreign key (codigo_fun) references funcionario (codigo_fun)
);

select * from dependente;