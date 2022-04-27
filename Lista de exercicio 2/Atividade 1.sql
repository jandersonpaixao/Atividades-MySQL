
create database db_game;

use db_game;

#Questao 1 -Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, relevantes para classificar os personagens do Game Online.
create table tb_classes(
id bigint auto_increment,
classe varchar(255) not null,
descricao varchar(1000),
primary key (id)
);

#questao 4 - Insira 5 registros na tabela tb_classes.
insert tb_classes (classe,descricao) values 
('mago(a/e)','Tem como características principais a Inteligência, que é usado para conjurar suas magias');
insert into tb_classes (classe,descricao) values 
('guerreiro(a/e)','São exímios lutadores marciais, sempre prontos para o combate. Possuem extremas habilidades de combate.' );
insert into tb_classes (classe,descricao) values 
('elfo(a/e)','Eram divindades maiores da natureza e da fertilidade. Os elfos são geralmente mostrados como jovens de grande beleza vivendo entre as florestass' );
insert into tb_classes (classe,descricao) values 
('arqueiro(a/e)','Um arqueiro é um verdadeiro mestre no uso de arco, e nem mesmo um guerreiro muito experiente pode se igualar as suas capacidades.' );
insert into tb_classes (classe,descricao) values 
('ninja','É um agente secreto ou mercenário especializado em artes marciais de guerra não ortodoxas.' );


#Questao 2  - Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, relevantes aos personagens do Game Online.
create table tb_personagens(
id bigint auto_increment,
nome varchar(255) not null,
cidade varchar(255) not null,
ataque int not null,
defesa int not null,
classe_id bigint not null,
primary key(id),
foreign key (classe_id) references tb_classes(id) #Questão 3 - Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.
);

#Questao 5 - Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.
insert into tb_personagens(nome,cidade,ataque,defesa,classe_id) values ("gzzrdwzzd","paulista",5000,5000,1);
insert into tb_personagens(nome,cidade,ataque,defesa,classe_id) values ("thor","asgard",3000,2000,3);
insert into tb_personagens(nome,cidade,ataque,defesa,classe_id) values ("Um maluco no pedaço","pedaço",4000,4000,2);
insert into tb_personagens(nome,cidade,ataque,defesa,classe_id) values ("Homem-aranha","Nova Iorque",2000,4000,4);
insert into tb_personagens(nome,cidade,ataque,defesa,classe_id) values ("Demolidor","Nova Iorque",2500,5000,2);
insert into tb_personagens(nome,cidade,ataque,defesa,classe_id) values ("Chapolin","México",4500,1000,2);
insert into tb_personagens(nome,cidade,ataque,defesa,classe_id) values ("lindinha","Townsville",2000,4500,3);
insert into tb_personagens(nome,cidade,ataque,defesa,classe_id) values ("Ash","pallet",2000,1500,3);

select * from tb_classes;
select * from tb_personagens;

#Questao 6 - Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
select * from tb_personagens where ataque > 2000;

#Questão 7 - Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
select * from tb_personagens where defesa > 1000 and defesa < 2000;

#Questão 8 - Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
select * from tb_personagens where nome like '%C%';

#inner join

#Questão 9 - Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
select tb_personagens.nome, tb_personagens.ataque, tb_classes.classe, tb_classes.descricao from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classe_id;


#Questão 10 - Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
select tb_personagens.nome, tb_classes.classe, tb_classes.descricao from tb_personagens inner join 
tb_classes on tb_classes.id = tb_personagens.classe_id where classe = 'arqueiro(a/e)';

select * from tb_personagens
left join tb_classes on tb_classes.id = tb_personagens.classe_id;

select * from tb_personagens
right join tb_classes on tb_classes.id = tb_personagens.classe_id;

select * from tb_personagens inner join tb_classes on tb_classes.id = tb_personagens.classes;