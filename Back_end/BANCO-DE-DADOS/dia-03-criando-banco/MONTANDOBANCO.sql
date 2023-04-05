--  DROP DATABASE IF EXISTS zoologico;
CREATE DATABASE IF NOT EXISTS zoologico;
USE zoologico;

CREATE TABLE gerente (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL
);

CREATE TABLE cuidador (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    gerente_id INT NOT NULL,
   FOREIGN KEY (gerente_id) REFERENCES gerente (id)
);
CREATE TABLE animal (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    especie  VARCHAR(100) NOT NULL,
    sexo  VARCHAR(100) NOT NULL,
    localizacao  VARCHAR(200) NOT NULL,
    idade INT NOT NULL
);

CREATE TABLE cuidador_gerente (
     cuidador_id INT ,
     animal_id INT ,
   CONSTRAINT PRIMARY KEY(animal_id, cuidador_id),
   FOREIGN KEY (cuidador_id) REFERENCES cuidador (id),
   FOREIGN KEY (animal_id) REFERENCES animal (id)
);
