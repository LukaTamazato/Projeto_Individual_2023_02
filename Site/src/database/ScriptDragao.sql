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
titulo varchar(50) unique,
fkUsuario int,
constraint fkTituloUsuario foreign key (fkUsuario)
references usuario(idUsuario)
);
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

-- Inserir dados na tabela 'usuario'
INSERT INTO usuario (nome, email, senha, fkDragao) VALUES 
    ('Alice', 'alice@email.com', 'chave789', 1000),
    ('Bob', 'bob@email.com', 'segredo012', 1001),
    ('Eva', 'eva@email.com', 'acesso345', 1002),
    ('Gabriel', 'gabriel@email.com', '67891234', 1003),
    ('Isabel', 'isabel@email.com', 'confidencial901', 1004),
    ('Fernando', 'fernando@email.com', 'secreto234', 1005),
    ('Julia', 'julia@email.com', '56789123', 1006),
    ('Lucas', 'lucas@email.com', '89011234', 1007),
    ('Mariana', 'mariana@email.com', 'protegido123', 1008),
    ('Nuno', 'nuno@email.com', '45678901', 1009),
    ('Carlos', 'carlos@email.com', '78901234', 1010),
    ('Ana', 'ana@email.com', '01234567', 1011),
    ('Pedro', 'pedro@email.com', '34567890', 1012),
    ('João', 'joao@email.com', '67890123', 1013),
    ('Maria', 'maria@email.com', '90123456', 1014),
    ('Vera', 'vera@email.com', '23456789', 1015),
    ('Ricardo', 'ricardo@email.com', '56789012', 1016),
    ('Sofia', 'sofia@email.com', '89012345', 1017),
    ('Hugo', 'hugo@email.com', '12345678', 1018),
    ('Luisa', 'luisa@email.com', '45678901', 1019),
    ('Daniel', 'daniel@email.com', '78901234', 1020),
    ('Carla', 'carla@email.com', '01234567', 1021),
    ('Miguel', 'miguel@email.com', '34567890', 1022),
    ('Laura', 'laura@email.com', '67890123', 1023),
    ('Amanda', 'amanda@email.com', 'amanda789', 1024),
    ('Bruno', 'bruno@email.com', 'bruno012', 1025),
    ('Catarina', 'catarina@email.com', 'catarina345', 1026),
    ('David', 'david@email.com', 'david678', 1027),
    ('Elisa', 'elisa@email.com', 'elisa901', 1028),
    ('Fábio', 'fabio@email.com', 'fabio234', 1029),
    ('Giovana', 'giovana@email.com', 'giovana567', 1030),
    ('Henrique', 'henrique@email.com', 'henrique890', 1031),
    ('Inês', 'ines@email.com', 'ines123', 1032),
    ('João', 'joao2@email.com', 'joao456', 1033),
    ('Kátia', 'katia@email.com', 'katia789', 1034),
    ('Leandro', 'leandro@email.com', 'leandro012', 1035),
    ('Mariana', 'mariana2@email.com', 'mariana345', 1036),
    ('Nuno', 'nuno2@email.com', 'nuno678', 1037),
    ('Olívia', 'olivia@email.com', 'olivia901', 1038),
    ('Pedro', 'pedro2@email.com', 'pedro234', 1039),
    ('Rita', 'rita@email.com', 'rita567', 1040),
    ('Sérgio', 'sergio@email.com', 'sergio890', 1041),
    ('Tatiane', 'tatiane@email.com', 'tatiane123', 1042),
    ('Ubirajara', 'ubirajara@email.com', 'ubirajara456', 1043),
    ('Viviane', 'viviane@email.com', 'viviane789', 1044),
    ('Wagner', 'wagner@email.com', 'wagner012', 1045),
    ('Xuxa', 'xuxa@email.com', 'xuxa345', 1046),
    ('Yasmin', 'yasmin@email.com', 'yasmin678', 1047),
    ('Zé', 'ze@email.com', 'ze901', 1048),
    ('Ana', 'ana2@email.com', 'ana234', 1049),
    ('Bernardo', 'bernardo@email.com', 'bernardo567', 1050),
    ('Clara', 'clara@email.com', 'clara890', 1051),
    ('Daniel', 'daniel2@email.com', 'daniel123', 1052),
    ('Elaine', 'elaine@email.com', 'elaine456', 1053),
    ('Fernando', 'fernando2@email.com', 'fernando789', 1054),
    ('Gabriela', 'gabriela@email.com', 'gabriela012', 1055),
    ('Henrique', 'henrique2@email.com', 'henrique345', 1056),
    ('Isabela', 'isabela@email.com', 'isabela678', 1057),
    ('João', 'joao3@email.com', 'joao901', 1058),
    ('Kelly', 'kelly@email.com', 'kelly234', 1059),
    ('Lucas', 'lucas2@email.com', 'lucas567', 1060),
    ('Mariana', 'mariana3@email.com', 'mariana890', 1061),
    ('Nuno', 'nuno3@email.com', 'nuno123', 1062),
    ('Oliver', 'oliver@email.com', 'oliver456', 1063),
    ('Priscila', 'priscila@email.com', 'priscila789', 1064),
    ('Rafael', 'rafael@email.com', 'rafael012', 1065),
    ('Sara', 'sara@email.com', 'sara345', 1066),
    ('Tiago', 'tiago@email.com', 'tiago678', 1067),
    ('Ursula', 'ursula@email.com', 'ursula901', 1068),
    ('Vitor', 'vitor@email.com', 'vitor234', 1069),
    ('Wanda', 'wanda@email.com', 'wanda567', 1070),
    ('Xavier', 'xavier@email.com', 'xavier890', 1071),
    ('Yago', 'yago@email.com', 'yago123', 1072),
    ('Zara', 'zara@email.com', 'zara456', 1073),
    ('Zé', 'ze2@email.com', 'ze789', 1074);

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
