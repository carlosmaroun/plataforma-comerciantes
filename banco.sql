CREATE DATABASE plataforma_comerciantes;

USE plataforma_comerciantes;

CREATE TABLE comerciantes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    descricao TEXT,
    preco DECIMAL(10,2),
    comerciante_id INT,
    FOREIGN KEY (comerciante_id) REFERENCES comerciantes(id)
);
