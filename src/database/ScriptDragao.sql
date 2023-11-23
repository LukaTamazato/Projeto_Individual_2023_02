create database ProjetoIndividual20232;
use ProjetoIndividual20232;

create table dragao(
idDragao int primary key auto_increment,
tipoDragao varchar(10)
)auto_increment = 1000;

create table usuario(
idUsuario int primary key auto_increment,
nome varchar(45),
email varchar(50),
senha varchar(45),
fkDragao int,
constraint fkDragaoUsuario foreign key (fkDragao)
references dragao(idDragao)
);

create table titulo(
idTitulo int primary key auto_increment,
titulo varchar(50),
fkUsuario int,
constraint fkTituloUsuario foreign key (fkUsuario)
references usuario(idUsuario)
);
