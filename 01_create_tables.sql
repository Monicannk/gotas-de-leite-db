CREATE DATABASE IF NOT EXISTS gotas_de_leite;
USE gotas_de_leite;

CREATE TABLE DOADORA (
    id_doadora INT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE,
    data_nascimento DATE NOT NULL,
    telefone VARCHAR(20)
);

CREATE TABLE RECEPTORA (
    id_receptora INT PRIMARY KEY,
    nome_ou_instituicao VARCHAR(120) NOT NULL,
    contato VARCHAR(20),
    prioridade ENUM('Alta','Média','Baixa') DEFAULT 'Média'
);

CREATE TABLE VOLUNTARIO (
    id_voluntario INT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    cnh CHAR(11) NOT NULL UNIQUE,
    telefone VARCHAR(20)
);

CREATE TABLE BANCO_DE_LEITE (
    id_banco INT PRIMARY KEY,
    nome VARCHAR(120) NOT NULL,
    endereco VARCHAR(255),
    capacidade INT
);

CREATE TABLE PEDIDO (
    id_pedido INT PRIMARY KEY,
    data_pedido DATE NOT NULL,
    quantidade_ml INT NOT NULL,
    status VARCHAR(50),
    id_receptora INT NOT NULL,
    FOREIGN KEY (id_receptora) REFERENCES RECEPTORA(id_receptora)
);

CREATE TABLE COLETA (
    id_coleta INT PRIMARY KEY,
    data_hora DATETIME NOT NULL,
    local_coleta VARCHAR(255),
    id_voluntario INT NOT NULL,
    id_doadora INT NOT NULL,
    FOREIGN KEY (id_voluntario) REFERENCES VOLUNTARIO(id_voluntario),
    FOREIGN KEY (id_doadora) REFERENCES DOADORA(id_doadora)
);

CREATE TABLE LOTE (
    id_lote INT PRIMARY KEY,
    codigo_qr VARCHAR(50) UNIQUE,
    data_coleta DATE NOT NULL,
    id_coleta INT NOT NULL,
    FOREIGN KEY (id_coleta) REFERENCES COLETA(id_coleta)
);

CREATE TABLE ANALISE_LABORATORIAL (
    id_analise INT PRIMARY KEY,
    parametro VARCHAR(100),
    valor VARCHAR(100),
    resultado_final VARCHAR(50),
    data_analise DATE,
    id_lote INT NOT NULL,
    FOREIGN KEY (id_lote) REFERENCES LOTE(id_lote)
);

CREATE TABLE ESTOQUE (
    id_estoque INT PRIMARY KEY,
    id_lote INT UNIQUE NOT NULL,
    validade DATE NOT NULL,
    status VARCHAR(50),
    FOREIGN KEY (id_lote) REFERENCES LOTE(id_lote)
);

CREATE TABLE PEDIDO_LOTE (
    id_pedido INT NOT NULL,
    id_lote INT NOT NULL,
    quantidade_utilizada_ml INT NOT NULL,
    PRIMARY KEY (id_pedido, id_lote),
    FOREIGN KEY (id_lote) REFERENCES LOTE(id_lote),
    FOREIGN KEY (id_pedido) REFERENCES PEDIDO(id_pedido)
);
