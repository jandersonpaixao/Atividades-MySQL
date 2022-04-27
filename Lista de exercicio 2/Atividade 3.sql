create database db_farmacia_bem_estar;

use db_farmacia_bem_estar;

#Questão 1 -Crie a tabela tb_categorias e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os produtos.
 create table tb_categorias(
 id_categorias bigint auto_increment,
 tipo varchar(155),
 descricao varchar(155),
 primary key (id_categorias)
 ); 

select * from tb_categorias;

#Questão 2 - Crie a tabela tb_produtos e determine 4 atributos, além da Chave Primária, relevantes aos produtos da farmácia.
create table tb_produtos(
id_produtos bigint auto_increment,
Nome varchar(255),
preco bigint,
fk_tipo bigint,
prescricao varchar(255),
primary key(id_produtos),
foreign key(fk_tipo) references tb_categorias(id_categorias) #Questão 3 - Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.
); 

select * from tb_produtos;


#Questão 4 Insira 5 registros na tabela tb_categorias.
insert into tb_categorias(tipo,descricao) values("Paracetamol","utilizado essencialmente para tratar a febre e a dor leve e moderada");	
insert into tb_categorias(tipo,descricao) values("Analgésico","diminuem ou interrompem as vias de transmissão nervosa");	
insert into tb_categorias(tipo,descricao) values("relaxante","Relaxante muscular");	
insert into tb_categorias(tipo,descricao) values("Anti-inflamatório","Para inflamações");	
insert into tb_categorias(tipo,descricao) values("tarja-preta","Controlado");	


#Questão 5 - Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
insert into tb_produtos(Nome,preco, fk_tipo, prescricao) values("Tylenol",35,1,"Não");
insert into tb_produtos(Nome,preco, fk_tipo, prescricao) values("Advil",25,3,"Não");
insert into tb_produtos(Nome,preco, fk_tipo, prescricao) values("Gelol",60,3,"Não");
insert into tb_produtos(Nome,preco, fk_tipo, prescricao) values("Nimezulida",50,2,"Não");
insert into tb_produtos(Nome,preco, fk_tipo, prescricao) values("Captopril",25,5,"Sim");
insert into tb_produtos(Nome,preco, fk_tipo, prescricao) values("Diazepam",20,5,"sim");
insert into tb_produtos(Nome,preco, fk_tipo, prescricao) values("Dipirona",8,1,"Não");
insert into tb_produtos(Nome,preco, fk_tipo, prescricao) values("Rivotril",55,5,"Sim");



#Questão 6 - Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
select * from tb_produtos where preco >= 50;

#Questão 7 - Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
select * from tb_produtos where preco > 5 and preco < 60;


#Questão 8 - Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
select * from tb_produtos where nome like "%C%";


#Questão 9 - Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
select * from tb_produtos inner join tb_categorias on tb_categorias.id_categorias = tb_produtos.fk_tipo;

#Questão 10 - Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).
select tb_produtos.fk_tipo from tb_produtos inner join tb_categorias on tb_categorias.id_categorias = tb_produtos.fk_tipo where tipo = "tarja-preta";