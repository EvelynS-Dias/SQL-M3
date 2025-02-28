create database Resgate_Animal;

use Resgate_Animal;

create table Animal(
id INTEGER PRIMARY KEY AUTO_INCREMENT,
porte ENUM("Baixo", "Médio", "Grande", "Gigante") NOT NULL,
raça VARCHAR(150) NOT NULL,
genero ENUM("macho", "fêmea") NOT NULL,
espécie ENUM("gato", "cachorro") NOT NULL,
RGA VARCHAR(15) NOT NULL,
idade INTEGER,
status_animal ENUM('saudavel', 'em analise', 'não aprovado', 'em tratamento')
);

CREATE TABLE denuncia (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
    telefone INTEGER,
    descricao TEXT,
    foto BLOB,
    registro_ocorrencia INTEGER
);

CREATE TABLE denuncia_animal (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_denuncia INTEGER,
    FOREIGN KEY (id_denuncia)
		REFERENCES denuncia (id),
        
	id_animal INTEGER,
	FOREIGN KEY (id_animal)
		REFERENCES denuncia (id)
);

create table padrinho(
 id INTEGER PRIMARY KEY AUTO_INCREMENT, 
 nome VARCHAR(150) NOT NULL,
 CPF CHAR(12) UNIQUE NOT NULL,
 RG CHAR(9) UNIQUE NOT NULL,
 telefone INTEGER
)
