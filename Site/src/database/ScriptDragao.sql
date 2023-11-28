create database ProjetoIndividual20232;
use ProjetoIndividual20232;

create table titulo(
idReconhecimento int primary key auto_increment,
reconhecimento varchar(50) unique
);

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
references dragao(idDragao),
fkReconhecimento int,
constraint fkUsuarioTitulo foreign key (fkReconhecimento)
references titulo(idReconhecimento)
)auto_increment = 10000;

-- Inserir dados na tabela 'dragao'
INSERT INTO dragao (tipoDragao) VALUES 
    ('Vermelho'), ('Vermelho'), ('Vermelho'), ('Vermelho'), ('Vermelho'),
    ('Vermelho'), ('Vermelho'), ('Vermelho'), ('Vermelho'),
    ('Preto'), ('Preto'), ('Preto'),
    ('Branco'), ('Branco'), ('Branco'), ('Branco'), ('Branco'),
    ('Azul'), ('Azul'), ('Azul'), ('Azul'), ('Azul'), ('Azul'), ('Azul'), ('Azul'), ('Azul'), ('Azul'),
    ('Verde'), ('Verde'), ('Verde'), ('Verde'), ('Verde'), ('Verde'), ('Verde'),
    ('Ouro'), ('Ouro'), ('Ouro'), ('Ouro'), ('Ouro'), ('Ouro'), ('Ouro'), ('Ouro'), ('Ouro'), ('Ouro'), ('Ouro'), ('Ouro'),
    ('Prata'), ('Prata'), ('Prata'), ('Prata'), ('Prata'), ('Prata'), ('Prata'), ('Prata'),
    ('Latão'), ('Latão'), ('Latão'), ('Latão'), ('Latão'),
    ('Bronze'), ('Bronze'), ('Bronze'), ('Bronze'), ('Bronze'), ('Bronze'), ('Bronze'), ('Bronze'), ('Bronze'),
    ('Cobre'), ('Cobre'), ('Cobre'), ('Cobre'), ('Cobre'), ('Cobre'), ('Cobre');

-- Inserir dados na tabela 'titulo'
INSERT INTO titulo (reconhecimento) VALUES 
    ('Guardião do Fogo'),
    ('Senhor do Gelo'),
    ('Mestre dos Ventos'),
    ('Rainha dos Mares'),
    ('Rei dos Bosques'),
    ('Guardião dos Relâmpagos'),
    ('Senhora das Sombras'),
    ('Mestre das Montanhas'),
    ('Rei do Deserto'),
    ('Rainha dos Céus'),
    ('Guardião das Estrelas'),
    ('Senhor da Lua'),
    ('Mestre dos Abismos'),
    ('Rainha das Planícies'),
    ('Rei da Aurora'),
    ('Guardião das Sombras'),
    ('Senhor das Marés'),
    ('Rainha da Noite'),
    ('Rei do Crepúsculo'),
    ('Mestre da Aurora'),
    ('Guardião do Crepúsculo'),
    ('Conquistador do Desconhecido'),
    ('Protetor do Fogo'),
    ('Comandante do Gelo'),
    ('Explorador dos Ventos'),
    ('Capitão dos Mares'),
    ('Defensor dos Bosques'),
    ('Senhor dos Relâmpagos'),
    ('Guardiã das Sombras'),
    ('Mestra das Montanhas'),
    ('Rei das Areias'),
    ('Rainha do Amanhecer'),
    ('Guarda-estrelas'),
    ('Lunar'),
    ('Explorador dos Abismos'),
    ('Senhor das Planícies'),
    ('Aurora Real'),
    ('Guardião das Trevas'),
    ('Senhor do Trovão'),
    ('Estrela Noturna'),
    ('Capitão do Crepúsculo'),
    ('Mestre Glacial'),
    ('Guardião do Eclipse'),
    ('Desbravador do Desconhecido'),
    ('Guardião da Alvorada'),
    ('Cavaleiro do Vento'),
    ('Imperatriz dos Oceanos'),
    ('Conselheiro da Floresta'),
    ('Sábio do Raio'),
    ('Custódia das Trevas'),
    ('Mestre das Alturas'),
    ('Monarca das Dunas'),
    ('Soberana do Céu'),
    ('Vigilante Estelar'),
    ('Guardião Lunar'),
    ('Abismo Profundo'),
    ('Soberano da Planície'),
    ('Amanhecer Dourado'),
    ('Silhueta Sombria'),
    ('Senhor do Raio'),
    ('Rainha da Escuridão'),
    ('Rei do Luar'),
    ('Mestre do Luar'),
    ('Guardião Celestial'),
    ('Desbravador das Sombras'),
    ('Aurora Dourada'),
    ('Domador de Tempestades'),
    ('Emissário do Ocaso'),
    ('Fera da Meia-noite'),
    ('Guardião do Abismo'),
    ('Herói do Crepúsculo'),
    ('Imperador Celestial'),
    ('Jagunço do Vento'),
    ('Kaiser do Trovão'),
    ('Lorde da Escuridão'),
    ('Mestre da Noite'),
    ('Névoa Matinal'),
    ('Oceano de Estrelas'),
    ('Peregrino Sombrio'),
    ('Rei da Neblina'),
    ('Sombra do Crepúsculo'),
    ('Titã da Escuridão'),
    ('Uivo Noturno'),
    ('Vigia Estelar'),
    ('Warchief do Abismo'),
    ('Xamã da Tempestade'),
    ('Yggdrasil Guardião'),
    ('O Intrépido');


    
-- Inserir dados na tabela 'usuario'
INSERT INTO usuario (nome, email, senha, fkDragao,fkReconhecimento) VALUES 
    ('Alice', 'alice@email.com', 'chave789', 1000,1),
    ('Bob', 'bob@email.com', 'segredo012', 1001,2),
    ('Eva', 'eva@email.com', 'acesso345', 1002,3),
    ('Gabriel', 'gabriel@email.com', '67891234', 1003,3),
    ('Isabel', 'isabel@email.com', 'confidencial901', 1004,4),
    ('Fernando', 'fernando@email.com', 'secreto234', 1005,5),
    ('Julia', 'julia@email.com', '56789123', 1006,6),
    ('Lucas', 'lucas@email.com', '89011234', 1007,7),
    ('Mariana', 'mariana@email.com', 'protegido123', 1008,8),
    ('Nuno', 'nuno@email.com', '45678901', 1009,9),
    ('Carlos', 'carlos@email.com', '78901234', 1010,10),
    ('Ana', 'ana@email.com', '01234567', 1011,11),
    ('Pedro', 'pedro@email.com', '34567890', 1012,12),
    ('João', 'joao@email.com', '67890123', 1013,13),
    ('Maria', 'maria@email.com', '90123456', 1014,14),
    ('Vera', 'vera@email.com', '23456789', 1015,15),
    ('Ricardo', 'ricardo@email.com', '56789012', 1016,16),
    ('Sofia', 'sofia@email.com', '89012345', 1017,17),
    ('Hugo', 'hugo@email.com', '12345678', 1018,18),
    ('Luisa', 'luisa@email.com', '45678901', 1019,19),
    ('Daniel', 'daniel@email.com', '78901234', 1020,20),
    ('Carla', 'carla@email.com', '01234567', 1021,21),
    ('Miguel', 'miguel@email.com', '34567890', 1022,22),
    ('Laura', 'laura@email.com', '67890123', 1023,23),
    ('Amanda', 'amanda@email.com', 'amanda789', 1024,24),
    ('Bruno', 'bruno@email.com', 'bruno012', 1025,25),
    ('Catarina', 'catarina@email.com', 'catarina345', 1026,26),
    ('David', 'david@email.com', 'david678', 1027,27),
    ('Elisa', 'elisa@email.com', 'elisa901', 1028,28),
    ('Fábio', 'fabio@email.com', 'fabio234', 1029,29),
    ('Giovana', 'giovana@email.com', 'giovana567', 1030,30),
    ('Henrique', 'henrique@email.com', 'henrique890', 1031,31),
    ('Inês', 'ines@email.com', 'ines123', 1032,32),
    ('João', 'joao2@email.com', 'joao456', 1033,33),
    ('Kátia', 'katia@email.com', 'katia789', 1034,34),
    ('Leandro', 'leandro@email.com', 'leandro012', 1035,35),
    ('Mariana', 'mariana2@email.com', 'mariana345', 1036,36),
    ('Nuno', 'nuno2@email.com', 'nuno678', 1037,37),
    ('Olívia', 'olivia@email.com', 'olivia901', 1038,38),
    ('Pedro', 'pedro2@email.com', 'pedro234', 1039,39),
    ('Rita', 'rita@email.com', 'rita567', 1040,40),
    ('Sérgio', 'sergio@email.com', 'sergio890', 1041,41),
    ('Tatiane', 'tatiane@email.com', 'tatiane123', 1042,42),
    ('Ubirajara', 'ubirajara@email.com', 'ubirajara456', 1043,43),
    ('Viviane', 'viviane@email.com', 'viviane789', 1044,44),
    ('Wagner', 'wagner@email.com', 'wagner012', 1045,45),
    ('Xuxa', 'xuxa@email.com', 'xuxa345', 1046,46),
    ('Yasmin', 'yasmin@email.com', 'yasmin678', 1047,47),
    ('Zé', 'ze@email.com', 'ze901', 1048,48),
    ('Ana', 'ana2@email.com', 'ana234', 1049,49),
    ('Bernardo', 'bernardo@email.com', 'bernardo567', 1050,50),
    ('Clara', 'clara@email.com', 'clara890', 1051,51),
    ('Daniel', 'daniel2@email.com', 'daniel123', 1052,52),
    ('Elaine', 'elaine@email.com', 'elaine456', 1053,53),
    ('Fernando', 'fernando2@email.com', 'fernando789', 1054,54),
    ('Gabriela', 'gabriela@email.com', 'gabriela012', 1055,55),
    ('Henrique', 'henrique2@email.com', 'henrique345', 1056,55),
    ('Isabela', 'isabela@email.com', 'isabela678', 1057,57),
    ('João', 'joao3@email.com', 'joao901', 1058,58),
    ('Kelly', 'kelly@email.com', 'kelly234', 1059,59),
    ('Lucas', 'lucas2@email.com', 'lucas567', 1060,60),
    ('Mariana', 'mariana3@email.com', 'mariana890', 1061,61),
    ('Nuno', 'nuno3@email.com', 'nuno123', 1062,62),
    ('Oliver', 'oliver@email.com', 'oliver456', 1063,63),
    ('Priscila', 'priscila@email.com', 'priscila789', 1064,64),
    ('Rafael', 'rafael@email.com', 'rafael012', 1065,65),
    ('Sara', 'sara@email.com', 'sara345', 1066,66),
    ('Tiago', 'tiago@email.com', 'tiago678', 1067,67),
    ('Ursula', 'ursula@email.com', 'ursula901', 1068,68),
    ('Vitor', 'vitor@email.com', 'vitor234', 1069,69),
    ('Wanda', 'wanda@email.com', 'wanda567', 1070,70),
    ('Xavier', 'xavier@email.com', 'xavier890', 1071,71),
    ('Yago', 'yago@email.com', 'yago123', 1072,72),
    ('Zara', 'zara@email.com', 'zara456', 1073,73),
    ('Zé', 'ze2@email.com', 'ze789', 1074,74);

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
select * from titulo;


select tipoDragao,count(tipoDragao)
from dragao 
group by tipoDragao
order by tipoDragao;
-- drop database ProjetoIndividual20232;
