#Atividade 2 Banco de Dados

#Questão 1 - Criar um BD para um e-comerce
create database db_loja_de_roupa;

use db_loja_de_roupa;

#Questao 2 - Criar uma tabela de produtos com 5 atributos.
create table tb_produtos(
id bigint auto_increment,
tamanho varchar(255) not null,
camisa varchar(255),
calca varchar(255),
calcado varchar(255),
descricao varchar(255),
preco double not null,
promocao char not null,
colecao varchar(255),
primary key (id)
);

select * from tb_produtos;

#Questao 3 - Inserir na tabela 8 dados.
insert into tb_produtos(tamanho,camisa,descricao,preco,promocao,colecao,modelo,pagamento) values ("M","Camisa Nike","Camisa da Nike com estampa colorida",29.90,"n","homenagem ao Santa Cruz", "Camisa Manga longa","À vista");

insert into tb_produtos(tamanho,calcado,descricao,preco,promocao,colecao,modelo,pagamento) values ("41","Sapato Addidas","Sapato Addidas duas cores, estampa em serigrafia",700.00,"n","Sapato de linha coleção especial Pelé", "Tênis","Cartão de Crédito");


#Questao 4 - Fazer um SELECT que retorne produtos com valor maior que 500.
select * from tb_produtos where preco > 500;


#Questao 5 - Fazer um SELECT que retorne produtos com valor menor que 500.
select * from tb_produtos where preco < 500;


#Questao 6 - Fazer uma alteração na tabela atravez de uma query de atualização.
update tb_produtos set preco = 35.00 where id= 1;

alter table  tb_produtos add modelo varchar(255);
alter table  tb_produtos add pagameto varchar(255) not null;

alter table tb_produtos change pagameto pagamento varchar(255) not null;