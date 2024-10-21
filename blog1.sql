CREATE DATABASE blog;

USE blog;

CREATE TABLE usuario (
	id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE post (
	id_post INT PRIMARY KEY AUTO_INCREMENT,
    id_usuario INT,
    conteudo TEXT NOT NULL,
    data_post DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
);

-- Inserindo usuários
INSERT INTO usuario (nome, email, senha) VALUES
('Alice Silva', 'alice.silva@exemple.com', 'senha123'),
('Bob Santos', 'bob.santos@exemple.com', 'senha456'),
('Carlos Oliveira', 'carlos.oliveira@exemple.com', 'senha789');

-- Inserindo posts (data_post automática)
INSERT INTO post (id_usuario, conteudo) VALUES
(1, 'Estou animada para compartilhar minhas ideias de projetos.'),
(1, 'Hoje vou falar sobre programação em Python.'),
(2, 'Este é o meu primeiro post sobre BackEnd.'),
(3, 'Hoje compartilho um pouco sobre FrontEnd.');