/* create database concessionaria;
use concessionaria

 create table fabricante(
	id int not null,
    nome varchar(20) not null,
    primary key(id)
); 

create table cliente(
	id int not null,
    nome varchar(50) not null,
    endereco varchar(50) not null,
    telefone varchar(20),
    primary key(id)
);

create table carro(
	id int not null,
    modelo varchar(20) not null,
    cor varchar(20) not null,
    ano int not null,
    carroceria varchar(20) not null,
    preco double not null,
    opcionais varchar(100),
    idFabricante int,
    idCliente int,
    primary key(id),
    foreign key(idFabricante) references fabricante(id),
    foreign key(idCliente) references cliente(id)
); */

insert into 

insert into fabricante (id, nome)
	values
	("1","BYD"),
	("2","VOLKSWAGEN"),
	("3","NISSAN"),
	("4","AUDI"),
	("5","BMW");

select * from fabricante;        
select * from carro order by modelo asc;
select * from carro order by ano desc;
select * from carro order by 
