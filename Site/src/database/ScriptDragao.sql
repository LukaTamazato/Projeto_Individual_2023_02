-- create database ProjetoIndividual20232;
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


-- Select das dashboards
select tipoDragao, count(tipoDragao)
from dragao where 
	tipoDragao = 'Azul' OR
	tipoDragao = 'Branco' OR
	tipoDragao ='Preto' OR
    tipoDragao = 'Verde' OR
    tipoDragao = 'Vermelho'
group by tipoDragao 
order by tipoDragao;

select * from dragao;
select * from usuario;

select tipoDragao,count(tipoDragao)
from dragao 
group by tipoDragao
order by tipoDragao;

-- Inserir dados na tabela 'dragao'
INSERT INTO dragao (tipoDragao) VALUES 
    ('Vermelho'), ('Azul'), ('Verde'), ('Preto'), ('Branco'),
    ('Ouro'), ('Bronze'), ('Latão'), ('Cobre'), ('Prata'),
    ('Vermelho'), ('Azul'), ('Verde'), ('Preto'), ('Branco'),
    ('Ouro'), ('Bronze'), ('Latão'), ('Cobre'), ('Prata'),
    ('Vermelho'), ('Azul'), ('Verde'), ('Preto'), ('Branco'),
    ('Ouro'), ('Bronze'), ('Latão'), ('Cobre'), ('Prata'),
    ('Vermelho'), ('Azul'), ('Verde'), ('Preto'), ('Branco'),
    ('Ouro'), ('Bronze'), ('Latão'), ('Cobre'), ('Prata'),
    ('Vermelho'), ('Azul'), ('Verde'), ('Preto'), ('Branco'),
    ('Ouro'), ('Bronze'), ('Latão'), ('Cobre'), ('Prata'),
    ('Vermelho'), ('Azul'), ('Verde'), ('Preto'), ('Branco'),
    ('Ouro'), ('Bronze'), ('Latão'), ('Cobre'), ('Prata');

-- Inserir dados na tabela 'usuario'
INSERT INTO usuario (nome, email, senha, fkDragao) VALUES 
    ('Alice', 'alice@email.com', 'senha789', 1000),
    ('Bob', 'bob@email.com', 'senha012', 1001),
    ('Eva', 'eva@email.com', 'senha345', 1002),
    ('Gabriel', 'gabriel@email.com', 'senha678', 1003),
    ('Isabel', 'isabel@email.com', 'senha901', 1004),
    ('Fernando', 'fernando@email.com', 'senha234', 1005),
    ('Julia', 'julia@email.com', 'senha567', 1006),
    ('Lucas', 'lucas@email.com', 'senha890', 1007),
    ('Mariana', 'mariana@email.com', 'senha123', 1008),
    ('Nuno', 'nuno@email.com', 'senha456', 1009),
    ('Carlos', 'carlos@email.com', 'senha789', 1010),
    ('Ana', 'ana@email.com', 'senha012', 1011),
    ('Pedro', 'pedro@email.com', 'senha345', 1012),
    ('João', 'joao@email.com', 'senha678', 1013),
    ('Maria', 'maria@email.com', 'senha901', 1014),
    ('Vera', 'vera@email.com', 'senha234', 1015),
    ('Ricardo', 'ricardo@email.com', 'senha567', 1016),
    ('Sofia', 'sofia@email.com', 'senha890', 1017),
    ('Hugo', 'hugo@email.com', 'senha123', 1018),
    ('Luisa', 'luisa@email.com', 'senha456', 1019),
    ('Daniel', 'daniel@email.com', 'senha789', 1020),
    ('Carla', 'carla@email.com', 'senha012', 1021),
    ('Miguel', 'miguel@email.com', 'senha345', 1022),
    ('Laura', 'laura@email.com', 'senha678', 1023);

-- Inserir dados na tabela 'titulo'
INSERT INTO titulo (titulo, fkUsuario) VALUES 
    ('Mestre das Chamas', 1),
    ('Guardiã do Gelo', 2),
    ('Senhora dos Ventos', 3),
    ('Rei dos Mares', 4),
    ('Rainha dos Bosques', 5),
    ('Mestre dos Relâmpagos', 6),
    ('Guardião das Sombras', 7),
    ('Senhor das Montanhas', 8),
    ('Rainha do Deserto', 9),
    ('Rei dos Céus', 10),
    ('Mestre das Estrelas', 11),
    ('Guardião da Lua', 12),
    ('Senhor dos Abismos', 13),
    ('Rainha das Planícies', 14),
    ('Rei da Aurora', 15),
    ('Mestre das Sombras', 16),
    ('Guardião da Aurora', 17),
    ('Senhor do Trovão', 18),
    ('Rainha da Noite', 19),
    ('Rei do Crepúsculo', 20),
    ('Mestre da Aurora', 21),
    ('Guardião do Crepúsculo', 22),
    ('Conquistador do Desconhecido', 23);
