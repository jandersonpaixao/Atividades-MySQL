
create database db_pizzaria_legal;

use db_pizzaria_legal;

#Questão 1 - Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar as pizzas.
create table tb_categorias(
id bigint auto_increment primary key,
combo varchar(155),
borda_recheada varchar (255)
);

#Questão 2 - Crie a tabela tb_pizzas e determine 4 atributos, além da Chave Primária, relevantes aos produtos da pizzaria.
create table tb_pizzas(
id bigint auto_increment primary key,
tamanho varchar(155),
sabor varchar(155),
valor bigint,
fk_pizzas bigint,
foreign key (fk_pizzas) references tb_categorias(id) #Quetão 3 -Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.
);
alter table tb_pizzas add entrega varchar(255);

#Questão 4 - Insira 5 registros na tabela tb_categorias.
insert into tb_categorias(combo,borda_recheada) values("Sim","Não");
insert into tb_categorias(combo,borda_recheada) values("Não","Sim");
insert into tb_categorias(combo,borda_recheada) values("Sim","Sim");
insert into tb_categorias(combo,borda_recheada) values("Não","Não");
insert into tb_categorias(combo,borda_recheada) values("Especial","Sim");
insert into tb_categorias(combo,borda_recheada) values("Clone","Não");
insert into tb_categorias(combo,borda_recheada) values("Especial","Não");
insert into tb_categorias(combo,borda_recheada) values("Clone","Sim");


select *from tb_categorias;
select *from tb_pizzas;

#Questão 5 - Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
insert into tb_pizzas(tamanho,Sabor,Valor,fk_pizzas,entrega) values("Grande","Marguerita",42.00,5,"Sim");
insert into tb_pizzas(tamanho,Sabor,Valor,fk_pizzas,entrega) values("pequena","Mussarela",18.00,2,"Não");
insert into tb_pizzas(tamanho,Sabor,Valor,fk_pizzas,entrega) values("Grande","Mussarela",47.00,4,"Sim");
insert into tb_pizzas(tamanho,Sabor,Valor,fk_pizzas,entrega) values("Media","Calabresa",32.00,6,"Sim");
insert into tb_pizzas(tamanho,Sabor,Valor,fk_pizzas,entrega) values("pequena","Frango com catupiry",80.00,6,"Sim");
insert into tb_pizzas(tamanho,Sabor,Valor,fk_pizzas,entrega) values("Grande","Quatro queijos",45.00,3,"Não");
insert into tb_pizzas(tamanho,Sabor,Valor,fk_pizzas,entrega) values("Grande","Frango Catupiri",30.00,5,"Não");
insert into tb_pizzas(tamanho,Sabor,Valor,fk_pizzas,entrega) values("Media","mussarela",27.00,4,"Sim");
insert into tb_pizzas(tamanho,Sabor,Valor,fk_pizzas,entrega) values("Grande","Frango Catupiry",55.00,5,"Sim");



#Questão 6 - Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
select * from tb_pizzas where valor > 45;


#Questão 7 - Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
select * from tb_pizzas where valor > 50 and valor < 100;


#Questão 8 - Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
select * from tb_pizzas where Sabor like "%M%" ;

#Questão 9 - Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
select *from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.fk_pizzas;

#Questão 10 - Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
select tb_pizzas.sabor from tb_pizzas inner join tb_categorias on tb_categorias.id = tb_pizzas.fk_pizzas where sabor = "Quatro queijos";

