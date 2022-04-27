#Atividade1 banco de dados

#Questão 1 - Criar um banco de dados para um serviço de RH.
create database db_fabrica_rh;

use db_fabrica_rh;

#Questão 2 - Criar uma tabela de colaboradores com 5 atributos.
create table tb_colaboradores(
id bigint auto_increment,
nome char(255) not null,
cpf varchar(255) not null,
funcao char(255) not null,
setor char(255) not null,
salario double not null,
primary key (id)
);

#Questão 3 - Inserir 5 dados na tabela.
insert into tb_colaboradores(nome,cpf,funcao,setor,salario) values ("Janderson","1244324-22","Operador1","envase",15000);
insert into tb_colaboradores(nome,cpf,funcao,setor,salario) values ("Kelly","38429887-83","Operador3","Armazem",3000);
insert into tb_colaboradores(nome,cpf,funcao,setor,salario) values ("Geandro","8457822-23","operador2","Preparação",2000);

#Questão 4 - Retornar todes os colaboradores com salário maior que 2000.
select * from tb_colaboradores where salario >  2000;

#Questão 5 - Retornar todes os colaboradores com salário menor que 2000.
select * from tb_colaboradores where salario <  2000;

#Questão 6 - Atualizar um registro da tabela
update tb_colaboradores set salario = 1500 where id = 1;

delete from tb_colaboradores where id = 1;


select * from tb_colaboradores;

